library ieee;
use ieee.std_logic_1164.all;

entity Execute is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32);
  port (
    CLK: 		 in std_logic;
    ID_EX : in std_logic_vector(222 downto 0);
	 Flag_Zero_pipeline: out std_logic;
	 ULA_out_pipeline: out std_logic_vector((larguraDados-1) downto 0);
	 somador_pc_out_hex:out std_logic_vector((larguraDados-1) downto 0);
    EX_MEM:  out std_logic_vector(179 downto 0)
  );
end entity;

architecture comportamento of Execute is

--SIGNALS

 -- Saida do MUX de RT e imediato
  signal mux_rt_ime_out: std_logic_vector((larguraDados-1) downto 0);
 
  
 -- imediato extendido e shiftado
  signal imediato_shiftado: std_logic_vector((larguraDados-1) downto 0);
  
 -- ULA
  signal ULA_out: std_logic_vector((larguraDados-1) downto 0);
 -- Operacao da ULA
  signal ULA_op: std_logic_vector(3 downto 0);
 
 -- Flags
  signal flag_zero: std_logic;
  
 -- PC + BEQ
  signal PC_Beq_in: std_logic_vector((larguraDados-1) downto 0); -- entrada do mux do BEQ
  

  



 



-- ALIAS


 -- Instrucao ( unidade de controle)
	alias instrucao: std_logic_vector(13 downto 0) is ID_EX(13 downto 0);
	
 -- somador_pc_out
	alias somador_pc_out: std_logic_vector((larguraDados-1) downto 0) is ID_EX(45 downto 14);
	
 -- RS_out
	alias RS_out: std_logic_vector((larguraDados-1) downto 0) is ID_EX(77 downto 46);
	
 -- RT_out
	alias RT_out: std_logic_vector((larguraDados-1) downto 0) is ID_EX(109 downto 78);
	
 -- imediato_ext
	alias imediato_ext: std_logic_vector((larguraDados-1) downto 0) is ID_EX(141 downto 110);
	
 -- RT_out
	alias LUI_out: std_logic_vector((larguraDados-1) downto 0) is ID_EX(173 downto 142);
	
 -- RegC_in
	alias RegC_in: std_logic_vector(4 downto 0) is ID_EX(178 downto 174);

 -- Opcode
	alias opcode: std_logic_vector(5 downto 0) is ID_EX(184 downto 179);
 
 -- funct
   alias funct: std_logic_vector(5 downto 0) is ID_EX(190 downto 185);
	

 -- instrucao
  alias tipoR: std_logic is instrucao(6);
  alias mux_rt_imediato: std_logic is instrucao(7);

  
 

 
    
  
  

  begin
  

  
  
-- MUX de saida dos registradores:

mux_item2: entity work.muxGenerico2x1 		generic map(larguraDados => larguraDados)
				port map (	entradaA_MUX => RT_out , 
								entradaB_MUX => imediato_ext ,
								seletor_MUX => mux_rt_imediato ,
								saida_MUX => mux_rt_ime_out);
								

-- Shifta o sinal em 2 bits:
--(imediato)

Shift_item1 : entity work.shifter_2 
			port map (
							entrada => imediato_ext,
							saida => imediato_shiftado);

-- Soma com constante(BEQ):

SomaBEQ_item: entity work.somaVar
			 port map(	entrada => imediato_shiftado ,
							constante => somador_pc_out ,
							saida =>PC_Beq_in);
							
							
								
-- UCULA( Unidade de Controle da ULA):

UCULA_item: entity work.ucULA
			port map ( opcode => opcode,
						  tipoR => tipoR,
						  funct => funct,
						  ULA_op => ULA_op);
								

-- port map da ULA 
ULA_item: entity work.ULA generic map( larguraDados => larguraDados)
			port map(	A => RS_out, 
							B => mux_rt_ime_out,
							Ula_op => ULA_op,
							saida => ULA_out,
							flagZero =>flag_zero );

							
							
								
 -- EX/MEM:
EX_MEM_stage: 	entity work.registradorGenerico generic map (larguraDados => 180 )
			port map ( DIN  => flag_zero & PC_Beq_in & LUI_out & RegC_in & RT_out & ULA_out & somador_pc_out &instrucao, -- flag_zero(179), PC_Beq_in( 178 a 147), LUIout(146 a 115), RegC_in(114 a 110), RT_out(109 a 78) ,ULA_out(77 a 46), somador_pc_out(45 a 14), instrucao(13 a 0)
						  DOUT => EX_MEM,
						  ENABLE => '1',
						  CLK => CLK,
						  RST => '0');
						  
						  
-- PC_beq_out_pipeline

Flag_zero_pipeline <= flag_zero;
ULA_out_pipeline <= ULA_out;
somador_pc_out_hex <= somador_pc_out;

    
end architecture;