library ieee;
use ieee.std_logic_1164.all;

entity TopLevel is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    PC: out std_logic_vector((larguraDados-1) downto 0);
	 KEY : in std_logic_vector(3 downto 0);
	 HEX0, HEX1, HEX2, HEX3, HEX4 ,HEX5: out std_logic_vector(6 downto 0);
	 SW: std_logic_vector(9 downto 0);
	 LEDR: out std_logic_vector(9 downto 0)
	 
	 -- Simulacao:
	 
	 
--	 funct  			: out std_logic_vector(5 downto 0);
--	 conteudo_ULA  		: out std_logic_vector(31 downto 0);
	 
--	 end_REGS 				: out std_logic_vector(4 downto 0);
--	 end_REGT 				: out std_logic_vector(4 downto 0);
	 
--	 end_pontos_controle : out std_logic_vector(8 downto 0);
	 
--	 end_saida_reg_b		: out std_logic_vector(31 downto 0);
--	 end_saida_reg_a 		: out std_logic_vector(31 downto 0);
	 
--	 end_REGD 				: out std_logic_vector(4 downto 0);
--	 saida_ram_simu	   : out std_logic_vector(31 downto 0);
--	 sel_mux 				: out std_logic
	 
  );
end entity;


architecture arquitetura of TopLevel is

--SIGNALS

  signal CLK : std_logic;
  
 -- Program Counter
  signal PC_in: std_logic_vector((larguraDados-1) downto 0);
  signal PC_out: std_logic_vector((larguraDados-1) downto 0);
  
 -- ROM
  signal ROM_out: std_logic_vector((larguraDados-1) downto 0);
  
 --RAM
 signal RAM_out: std_logic_vector((larguraDados-1) downto 0);
  
 -- Registradores
  signal RS_out: std_logic_vector((larguraDados-1) downto 0);
  signal RT_out: std_logic_vector((larguraDados-1) downto 0);
  
 -- ULA
  signal ULA_out: std_logic_vector((larguraDados-1) downto 0);
  
  -- Operacao da ULA
  signal ULA_op: std_logic_vector(3 downto 0);
 
 -- Flags
  signal flag_zero: std_logic;
  
 -- Instrucao ( unidade de controle)
  signal instrucao: std_logic_vector(8 downto 0);
  
 -- imediato extendido
 signal imediato_ext: std_logic_vector((larguraDados-1) downto 0);
 
 -- imediato extendido e shiftado
 signal imediato_shiftado: std_logic_vector((larguraDados-1) downto 0);
  
 -- endereco shiftado
 signal endereco_shiftado: std_logic_vector(25 downto 0);
 
 -- saida do Somador do PC
 signal somador_pc_out: std_logic_vector((larguraDados-1) downto 0);
 
 -- PC + BEQ
 signal PC_Beq_in: std_logic_vector((larguraDados-1) downto 0); -- entrada do mux do BEQ
 signal PC_Beq_out: std_logic_vector((larguraDados-1) downto 0); -- saida do mux do BEQ
 
 -- Endereço do Registrador 3 ( ou C)
 signal RegC_in: std_logic_vector(4 downto 0); -- saida do MUX RT/RD
 
 -- Dados a serem escrito no registrador de escrita
 signal Reg_WR: std_logic_vector((larguraDados-1) downto 0);
 
 -- Saida do MUX de RT e imediato
 signal mux_rt_ime_out: std_logic_vector((larguraDados-1) downto 0);
 
 
 -- Saida teste
 signal saida_teste: std_logic_vector((larguraDados-1) downto 0);
 
 
 
 
 
 
  
 -- ALIAS
  
 -- Opcode(R)
 alias Opcode: std_logic_vector(5 downto 0) is ROM_out(31 downto 26);
  
  
 -- Registradores endereço
  alias RS_add: std_logic_vector(4 downto 0) is ROM_out(25 downto 21);
  alias RT_add: std_logic_vector(4 downto 0) is ROM_out(20 downto 16);
  alias RD_add: std_logic_vector(4 downto 0) is ROM_out(15 downto 11);
  
  -- instrucao
  alias WR: std_logic is instrucao(0);
  alias RD: std_logic is instrucao(1);
  alias BEQ: std_logic is instrucao(2);
  alias mux_ram: std_logic is instrucao(3);
  alias tipoR: std_logic is instrucao(4);
  alias mux_rt_imediato: std_logic is instrucao(5);
  alias habilita_Regs: std_logic is instrucao(6);
  alias mux_rt_rd: std_logic is instrucao(7);
  alias mux_pc: std_logic is instrucao(8);
  
  
  
  -- HEXs e LEDRs
  
  
  
  

begin

								  

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), 
						saida => CLK);
end generate;





-- O port map do PC
PC_item :  entity work.registradorGenerico  generic map (larguraDados => larguraDados)
        port map( DIN => PC_in,
						DOUT => PC_out,
						ENABLE => '1',
						CLK => CLK,
						RST => '0' );
						
-- port map do Somador de PC ( soma de 4 em 4)
Somador_PC: entity work.somaConstante generic map (larguraDados => larguraDados)
			port map
					(	entrada => PC_out,
						saida => somador_pc_out);
						

-- port map da Rom

ROM_item: entity work.memoriaROM
			port map ( clk => CLK,
          Endereco => PC_out,
          Dado => ROM_out);

-- port map do banco de registradores
Regs_item: entity work.bancoRegistradores
			 port map (	clk => CLK,
							enderecoA => RS_add,
							enderecoB => RT_add,     
							enderecoC => regC_in,
							dadoEscritaC => Reg_WR,
							escreveC => habilita_Regs,
							saidaA => RS_out,
							saidaB   => RT_out
);

-- port map da ULA 
ULA_item: entity work.ULA generic map( larguraDados => larguraDados)
			port map(	A => RS_out, 
							B => mux_rt_ime_out,
							Ula_op => ULA_op,
							saida => ULA_out,
							flagZero =>flag_zero );
							
							
-- Extendor de Sinal:

Extensor_item : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => ROM_out(15 downto 0), 
						  estendeSinal_OUT => imediato_ext);

-- Shifta o sinal em 2 bits:
--(imediato)

Shift_item1 : entity work.shifter_2 
			port map (
							entrada => imediato_ext,
							saida => imediato_shiftado);
							

--(endereco)
Shift_item2 : entity work.shifter_2 generic map (larguraDados => 26)
			port map (
							entrada => ROM_out(25 downto 0),
							saida => endereco_shiftado);						
							
-- Soma com constante(BEQ):

SomaBEQ_item: entity work.somaVar
			 port map(	entrada => imediato_shiftado ,
							constante => somador_pc_out ,
							saida =>PC_Beq_in);

-- MUX dos Regsitradores RD e RT:

mux_item1: entity work.muxGenerico2x1 generic map(larguraDados => 5)
				port map (	entradaA_MUX => RT_add , 
								entradaB_MUX => RD_add ,
								seletor_MUX => mux_rt_rd ,
								saida_MUX => RegC_in);

-- MUX de saida dos registradores:

mux_item2: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
				port map (	entradaA_MUX => RT_out , 
								entradaB_MUX => imediato_ext ,
								seletor_MUX => mux_rt_imediato ,
								saida_MUX => mux_rt_ime_out);

-- MUX do BEQ:

mux_item3: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
				port map (	entradaA_MUX => somador_pc_out , 
								entradaB_MUX => PC_Beq_in ,
								seletor_MUX => BEQ and flag_zero ,
								saida_MUX => PC_Beq_out);

-- MUX do PC:

mux_item4: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
				port map (	entradaA_MUX => PC_Beq_out , 
								entradaB_MUX => somador_pc_out(31 downto 28) & endereco_shiftado & "00" ,
								seletor_MUX => mux_pc ,
								saida_MUX => PC_in);
-- MUX RAM:

mux_item5: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
				port map (	entradaA_MUX => ULA_out , 
								entradaB_MUX => RAM_out ,
								seletor_MUX => mux_ram ,
								saida_MUX => Reg_WR);

-- Memória RAM:

RAM_item: entity work.RAMMIPS generic map (dataWidth => larguraDados, addrWidth => larguraDados)
				port map(	Endereco => ULA_out,
								we => WR, 
								re => RD,
								habilita => WR,
								clk => CLK,
								dado_in  => RT_out,
								dado_out =>RAM_out );
								
-- UCULA( Unidade de Controle da ULA):

UCULA_item: entity work.ucULA
			port map ( opcode => opcode,
						  tipoR => tipoR,
						  funct => ROM_out(5 downto 0),
						  ULA_op => ULA_op);

-- unidade de controle:

UC_item: entity work.decoderInstru 
			port map(opcode=>opcode,
						saida=> instrucao);
						
						
-- TESTES HEX LEDR
						

-- MUX para Hexs e ledrs
mux_item6: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
				port map (	entradaA_MUX => PC_out , 
								entradaB_MUX => ULA_out ,
								seletor_MUX => SW(0) ,
								saida_MUX => saida_teste);
								
								
conversor_0: entity work.conversorHex7Seg
				port map  (	dadoHex => saida_teste(3 downto 0),
								apaga => '0',
								negativo => '0',
								overflow => '0',
								saida7seg => HEX0
				);

conversor_1: entity work.conversorHex7Seg
				port map  (	dadoHex => saida_teste(7 downto 4),
								apaga => '0',
								negativo => '0',
								overflow => '0',
								saida7seg => HEX1
				);
						
				
conversor_2: entity work.conversorHex7Seg
				port map  (	dadoHex => saida_teste(11 downto 8),
								apaga => '0',
								negativo => '0',
								overflow => '0',
								saida7seg => HEX2
				);

conversor_3: entity work.conversorHex7Seg
				port map  (	dadoHex => saida_teste(15 downto 12),
								apaga => '0',
								negativo => '0',
								overflow => '0',
								saida7seg => HEX3
				);		

conversor_4: entity work.conversorHex7Seg
				port map  (	dadoHex => saida_teste(19 downto 16),
								apaga => '0',
								negativo => '0',
								overflow => '0',
								saida7seg => HEX4
				);

conversor_5: entity work.conversorHex7Seg
				port map  (	dadoHex => saida_teste(23 downto 20),
								apaga => '0',
								negativo => '0',
								overflow => '0',
								saida7seg => HEX5
				);

-- LEDR

LEDR(3 downto 0) <= saida_teste(27 downto 24);
LEDR(7 downto 4) <= saida_teste(31 downto 28);				
				

			


--end_REGS 				<= RS_add;
--end_REGT 				<= RT_add;
--end_REGD 				<= RD_add;
--conteudo_ULA 			<= ULA_out;		
--funct 				<= ROM_out(5 downto 0);
--PC 					<= PC_out; 
--end_pontos_controle 	<= instrucao;
--
--end_saida_reg_b 		<= mux_rt_ime_out;
--end_saida_reg_a 		<= RS_out;
--saida_ram_simu 		<= RAM_out;
--sel_mux 					<= flag_zero and BEQ;





end architecture;