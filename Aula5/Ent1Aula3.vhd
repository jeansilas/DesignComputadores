library ieee;
use ieee.std_logic_1164.all;

entity Ent1Aula3 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    PC_OUT: out std_logic_vector((larguraEnderecos-1) downto 0);
	 KEY : in std_logic_vector(3 downto 0);
	 REGA: out std_logic_vector((larguraDados-1) downto 0);
	 Control_view: out std_logic_vector(8 downto 0);
	 flag_zero_out: out std_logic;
	 ULA_out: out std_logic_vector( larguraDados-1 downto 0);
	 flag_zero_in : out std_logic;
	 ULA_A_OUT: out std_logic_vector( larguraDados-1 downto 0);
	 ULA_B_OUT: out std_logic_vector( larguraDados-1 downto 0)
	 
  );
end entity;


architecture arquitetura of Ent1Aula3 is


  signal CLK : std_logic;
  signal Endereco : std_logic_vector (8 downto 0);
  signal proxPC : std_logic_vector (8 downto 0);
  signal PC_entrada: std_logic_vector(8 downto 0);

  signal MUX_saida : std_logic_vector (larguraDados-1 downto 0);
  signal REGA_saida : std_logic_vector (larguraDados-1 downto 0);
  signal ULA_saida : std_logic_vector (larguraDados-1 downto 0);
  signal MEM_saida : std_logic_vector (larguraDados-1 downto 0);
  signal DECODER_saida: std_logic_vector (8 downto 0);
  signal instrucao : std_logic_vector(12 downto 0);
  signal flag_zero_saida: std_logic;
  signal flag_zero_entrada: std_logic;
  signal MUX_JMP_Sel: std_logic;
  
  
  alias opcode: std_logic_vector(3 downto 0) is instrucao(12 downto 9); 
  alias controle: std_logic_vector(8 downto 0) is DECODER_saida;
  alias MUX1: std_logic_vector(7 downto 0) is instrucao(7 downto 0);
  alias MUX0: std_logic_vector(7 downto 0) is MEM_saida(larguraDados-1 downto 0);
  alias ULA_A: std_logic_vector(7 downto 0) is REGA_saida(larguraDados-1 downto 0);
  alias ULA_B: std_logic_vector(7 downto 0) is MUX_saida(larguraDados-1 downto 0);
  alias SelULA: std_logic_vector(1 downto 0) is controle(4 downto 3);
  alias SelMUX: std_logic is controle(6);
  alias REGA_entrada: std_logic_vector(7 downto 0) is ULA_saida;
  alias Habilita_A: std_logic is controle(5);
  alias MEM_leitura: std_logic is controle(1);
  alias MEM_escrita: std_logic is controle(0);
  alias MEM_habilita: std_logic is instrucao(8);
  alias MEM_endereco: std_logic_vector(7 downto 0) is instrucao(7 downto 0);
  alias MEM_entrada: std_logic_vector(larguraDados-1 downto 0) is REGA_saida;
  alias MUX_JMP_entrada_0: std_logic_vector(8 downto 0) is proxPC;
  alias MUX_JMP_entrada_1: std_logic_vector(8 downto 0) is instrucao(8 downto 0);
  alias MUX_JMP_saida: std_logic_vector(8 downto 0) is PC_entrada;
  
  alias habilita_flag_zero: std_logic is controle(2);
  alias JMP_controle: std_logic is controle(8);
  alias JEQ_controle: std_logic is controle(7);

  
  

begin

flag_zero_entrada <= not( ULA_saida(7) or
								  ULA_saida(6) or
								  ULA_saida(5) or
								  ULA_saida(4) or
								  ULA_saida(3) or
								  ULA_saida(2) or
								  ULA_saida(1) or
								  ULA_saida(0));
								  
MUX_JMP_Sel <= JMP_controle or (JEQ_controle and flag_zero_saida);

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), 
						saida => CLK);
end generate;

-- O port map completo do MUX.
MUX_item :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => MUX0,
                 entradaB_MUX =>  MUX1,
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_saida);


MUX_JMP :  entity work.muxGenerico2x1  generic map (larguraDados =>9)
        port map( entradaA_MUX => MUX_JMP_entrada_0 ,
                 entradaB_MUX => MUX_JMP_entrada_1  ,
                 seletor_MUX => MUX_JMP_Sel,
                 saida_MUX => PC_entrada);
					  
DECODER_item:  entity work.decoderInstru
        port map( opcode => opcode,
                 saida => DECODER_saida);
					  
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

incrementaPC_item :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
        port map( entrada => Endereco, 
					   saida => proxPC);


-- O port map completo da ULA:
ULA_item : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => ULA_A, 
						  entradaB => ULA_B, 
						  saida => ULA_saida, 
						  seletor => SelULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM_item : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 4)
          port map (Endereco => Endereco, 
						  Dado => instrucao);


RAM_item: entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos)
          port map (addr => MEM_endereco, 
						  we => MEM_escrita, 
						  re => MEM_leitura, 
						  dado_in => MEM_entrada, 
						  dado_out => MEM_saida, 
						  clk => CLK, 
						  habilita => MEM_habilita);

-- Port map da Flag de zero
FLAG_zero_item : entity work.flipflop 
          port map (DIN => flag_zero_entrada, 
						  DOUT => flag_zero_saida,
						  ENABLE => Habilita_flag_zero, 
						  CLK => CLK, 
						  RST => '0');					  

PC_OUT <= Endereco( 7 downto 0);
REGA <= REGA_saida;
Control_view <= controle;
flag_zero_out <= flag_zero_saida;
ULA_out <= ULA_saida;
flag_zero_in <= flag_zero_entrada;
ULA_A_OUT <= ULA_A;
ULA_B_OUT <= ULA_B;



end architecture;