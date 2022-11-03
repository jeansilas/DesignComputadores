library ieee;
use ieee.std_logic_1164.all;

entity Processador is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLK : in std_logic;
	 Data_out: out std_logic_vector((larguraDados-1) downto 0);
	 Data_in: in std_logic_vector((larguraDados-1) downto 0);
	 instruction: in std_logic_vector(15 downto 0);
	 Rom_address : out std_logic_vector(8 downto 0);
	 Data_address: out std_logic_vector(8 downto 0);
	 WR: out std_logic;
	 RD: out std_logic;
	 
	 --------------------------------
	 --Simulations purpose:
	 Regs: out std_logic_vector(7 downto 0)
	 
	 
	 
	 
  );
end entity;


architecture arquitetura of Processador is

  signal Endereco : std_logic_vector (8 downto 0);
  signal proxPC : std_logic_vector (8 downto 0);
  signal PC_entrada: std_logic_vector(8 downto 0);

  signal MUX_saida : std_logic_vector (larguraDados-1 downto 0);
  signal REGS_saida : std_logic_vector (larguraDados-1 downto 0);
  signal ULA_saida : std_logic_vector (larguraDados-1 downto 0);
  signal MEM_saida : std_logic_vector (larguraDados-1 downto 0);
  signal DECODER_saida: std_logic_vector (12 downto 0);
  signal flag_zero_saida: std_logic;
  signal flag_zero_entrada: std_logic;
  signal flag_less_saida	: std_logic;
  signal flag_less_entrada	: std_logic;
  signal MUX_JMP_Sel: std_logic_vector(1 downto 0);
  signal end_ret: std_logic_vector( 8 downto 0);
  
  
  alias opcode			: std_logic_vector(3 downto 0)  is instruction(12 downto 9); 
  alias controle		: std_logic_vector(12 downto 0) is DECODER_saida;
  alias MUX1			: std_logic_vector(7 downto 0)  is instruction(7 downto 0);
  alias ULA_A			: std_logic_vector(7 downto 0)  is REGS_saida(larguraDados-1 downto 0);
  alias ULA_B			: std_logic_vector(7 downto 0)  is MUX_saida(larguraDados-1 downto 0);
  alias SelULA			: std_logic_vector(1 downto 0)  is controle(4 downto 3);
  alias SelMUX			: std_logic is controle(6);
  alias REGS_entrada	: std_logic_vector(7 downto 0) is ULA_saida;
  alias Habilita_REGS: std_logic is controle(5);
  alias MEM_leitura	: std_logic is controle(1);
  alias MEM_escrita	: std_logic is controle(0);
  
  alias habilita_flag_zero	: std_logic is controle(2);
  alias habilita_flag_ret	: std_logic is controle(11);
  alias habilita_flag_less	: std_logic is controle(12);
  alias JMP_controle			: std_logic is controle(10);
  alias JEQ_controle			: std_logic is controle(7);
  alias JST_controle			: std_logic is controle(12);
  alias endereco_REG			: std_logic_vector is instruction(15 downto 13);
  
  

begin

								  

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector


-- O port map completo do MUX.
MUX_item :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Data_in,
                 entradaB_MUX =>  MUX1,
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_saida);
					  

LogicaDesvio_item: entity work.logicaDesvio

						port map (   controle => controle,
										 flag_zero => flag_zero_saida,
										 flag_less 	=> flag_less_saida,
										 saida => MUX_JMP_Sel 
  );


MUX_JMP :  entity work.muxGenerico4x1  generic map (larguraDados =>9)
        port map( entrada00_MUX => proxPC ,
                 entrada01_MUX => instruction( 8 downto 0),
					  entrada10_MUX => end_ret,
					  entrada11_MUX => "000000000",
                 seletor_MUX => MUX_JMP_Sel,
                 saida_MUX => PC_entrada);
					  
DECODER_item:  entity work.decoderInstru
        port map( opcode => opcode,
                 saida => DECODER_saida);
					  

 -- Regsitradores						  
Regs_item : entity work.bancoRegistradoresArqRegMem generic map (larguraDados => larguraDados)

			port map (
							clk => CLK,
						   endereco => endereco_REG,
						   dadoEscrita    => REGS_entrada,
						   habilitaEscrita => Habilita_REGS,
						   saida       => REGS_saida);

-- O port map completo do Program Counter.
PC_item : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => PC_entrada, 
						  DOUT => Endereco, 
						  ENABLE => '1', 
						  CLK => CLK, 
						  RST => '0');

incrementaPC_item :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
        port map( entrada => Endereco, 
					   saida => proxPC);

						


-- O port map completo da ULA:
ULA_item : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => ULA_A, 
						  entradaB => ULA_B,
						  saida => ULA_saida, 
						  seletor => SelULA,
						  flag_zero => flag_zero_entrada,
						  flag_less => flag_less_entrada);

-- Port map da Flag de zero
FLAG_zero_item : entity work.flipflop 
          port map (DIN => flag_zero_entrada, 
						  DOUT => flag_zero_saida,
						  ENABLE => Habilita_flag_zero, 
						  CLK => CLK, 
						  RST => '0');	
						 
-- Port map da Flag de Less (menor)
FLAG_less_item : entity work.flipflop 
          port map (DIN => flag_less_entrada, 
						  DOUT => flag_less_saida,
						  ENABLE => habilita_flag_less, 
						  CLK => CLK, 
						  RST => '0');	 

END_RET_item: entity work.registradorGenerico generic map (larguraDados => 9)
				port map (DIN => proxPC, 
						  DOUT => end_ret,
						  ENABLE => Habilita_flag_ret, 
						  CLK => CLK, 
						  RST => '0');		

Rom_address <= Endereco;
Data_out <= REGS_saida;
WR <= MEM_escrita;
RD <= MEM_leitura;
Data_address <= instruction (8 downto 0);

----------------
--Simulation purpose:
Regs <= REGS_saida;




end architecture;