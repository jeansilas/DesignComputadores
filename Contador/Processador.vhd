library ieee;
use ieee.std_logic_1164.all;

entity Processador is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port (
          -- entradas
          CLK         : in std_logic;
	        Data_out     : out std_logic_vector((larguraDados-1) downto 0);
	        Data_in      : in std_logic_vector((larguraDados-1) downto 0);
          instruction  : in std_logic_vector(12 downto 0);

          -- saidas
          Rom_address  : out std_logic_vector(8 downto 0);
          Data_address : out std_logic_vector(8 downto 0);
          WR           : out std_logic;
          RD           : out std_logic;

	 
	        --Simulations purpose:
	        RegA: out std_logic_vector(7 downto 0)
	 
  );
end entity;


architecture arquitetura of Processador is

  signal Endereco           : std_logic_vector (8 downto 0);
  signal proxPC             : std_logic_vector (8 downto 0);
  signal PC_entrada         : std_logic_vector(8 downto 0);

  signal MUX_saida          : std_logic_vector (larguraDados-1 downto 0);
  signal REGA_saida         : std_logic_vector (larguraDados-1 downto 0);
  signal ULA_saida          : std_logic_vector (larguraDados-1 downto 0);
  signal MEM_saida          : std_logic_vector (larguraDados-1 downto 0);
  signal DECODER_saida      : std_logic_vector (12 downto 0);
  signal flag_zero_saida    : std_logic;
  signal flag_zero_entrada  : std_logic;
  signal flag_less_saida	  : std_logic;
  signal flag_less_entrada	: std_logic;
  signal MUX_JMP_Sel        : std_logic_vector(1 downto 0);
  signal end_ret            : std_logic_vector( 8 downto 0);
  
  
  alias opcode              : std_logic_vector(3 downto 0) is instruction(12 downto 9); 
  alias controle            : std_logic_vector(12 downto 0) is DECODER_saida;
  alias MUX1                : std_logic_vector(7 downto 0) is instruction(7 downto 0);
  alias ULA_A               : std_logic_vector(7 downto 0) is REGA_saida(larguraDados-1 downto 0);
  alias ULA_B               : std_logic_vector(7 downto 0) is MUX_saida(larguraDados-1 downto 0);
  alias SelULA              : std_logic_vector(1 downto 0) is controle(4 downto 3);
  alias SelMUX              : std_logic is controle(6);
  alias REGA_entrada        : std_logic_vector(7 downto 0) is ULA_saida;
  alias Habilita_A          : std_logic is controle(5);
  alias MEM_leitura         : std_logic is controle(1);
  alias MEM_escrita         : std_logic is controle(0);
  
  alias habilita_flag_zero  : std_logic is controle(2);
  alias habilita_flag_ret   : std_logic is controle(11);
  alias habilita_flag_less	: std_logic is controle(12);
  alias JMP_controle        : std_logic is controle(10);
  alias JEQ_controle        : std_logic is controle(7);
  alias JST_controle        : std_logic is controle(12);
  
  

begin
-- Instanciando os componentes:

-- O port map completo do MUX.
-- Espera duas entradas e retorna uma saida com base no indice de seleção.
MUX_item :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( 
                entradaA_MUX    => Data_in,
                entradaB_MUX    => MUX1,
                seletor_MUX     => SelMUX,
                saida_MUX       => MUX_saida
              );
					  
-- port map da logica de desvio
-- recebe as flags de equal, less, além dos pontos de controle.
-- retorna um vetor que será utilizado com indice de seleção do MUX de jumps
LogicaDesvio_item: entity work.logicaDesvio

						port map (   
                  controle    => controle,
									flag_zero   => flag_zero_saida,
									flag_less 	=> flag_less_saida,
									saida       => MUX_JMP_Sel 
  );

-- port map do mux de jumps
-- recebe o incremento do program counter, o endereco de retorno, imediato para jumps e um indice de selecao
-- retorna a proxima entrada do program counter
MUX_JMP :  entity work.muxGenerico4x1  generic map (larguraDados =>9)
        port map( 
                  entrada00_MUX => proxPC ,
                  entrada01_MUX => instruction( 8 downto 0),
					        entrada10_MUX => end_ret,
					        entrada11_MUX => "000000000",
                  seletor_MUX   => MUX_JMP_Sel,
                  saida_MUX     => PC_entrada
        );

-- port map do decodificador
-- recebe um opcode e devolde os pontos de controle para que a instrução ocorra
DECODER_item:  entity work.decoderInstru
        port map( opcode  => opcode,
                 saida    => DECODER_saida);
					  
-- O port map completo do Acumulador.
REGA_item : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => REGA_entrada, 
						  DOUT => REGA_saida,
						  ENABLE => Habilita_A, 
						  CLK => CLK, 
						  RST => '0');

-- O port map completo do Program Counter.
PC_item : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => PC_entrada, 
						  DOUT => Endereco, 
						  ENABLE => '1', 
						  CLK => CLK, 
						  RST => '0');
-- port map do incrementador
-- retorna o incremento do program counter
incrementaPC_item :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
        port map( entrada => Endereco, 
					   saida => proxPC);

						


-- O port map completo da ULA:
-- recebe duas entradas, uma vindo da memoria e outra do acumulador, e realiza a operação de acordo
-- com o seletor
ULA_item : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => ULA_A, 
						  entradaB => ULA_B,
						  saida => ULA_saida, 
						  seletor => SelULA,
						  flag_zero => flag_zero_entrada,
						  flag_less => flag_less_entrada);

-- Port map da Flag de zero
-- armazena o valor da verificação se um número é zero
FLAG_zero_item : entity work.flipflop 
          port map (DIN => flag_zero_entrada, 
						  DOUT => flag_zero_saida,
						  ENABLE => Habilita_flag_zero, 
						  CLK => CLK, 
						  RST => '0');	
						 
-- Port map da Flag de Less (menor)
-- armazena a comparação entre um número ser menor que outro
FLAG_less_item : entity work.flipflop 
          port map (DIN => flag_less_entrada, 
						  DOUT => flag_less_saida,
						  ENABLE => habilita_flag_less, 
						  CLK => CLK, 
						  RST => '0');	 

-- armazena o endereço de retorno
END_RET_item: entity work.registradorGenerico generic map (larguraDados => 9)
				port map (
              DIN     => proxPC, 
						  DOUT    => end_ret,
						  ENABLE  => Habilita_flag_ret, 
						  CLK     => CLK, 
						  RST     => '0');		


Rom_address <= Endereco;
Data_out <= REGA_saida;
WR <= MEM_escrita;
RD <= MEM_leitura;
Data_address <= instruction (8 downto 0);

----------------
--Simulation purpose:
regA <= REGA_saida;




end architecture;