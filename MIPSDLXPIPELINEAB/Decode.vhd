library ieee;
use ieee.std_logic_1164.all;

entity Decode is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32);
  port (
    CLK: 		 in std_logic;
    IF_ID : in std_logic_vector(63 downto 0);
	 habilita_Regs : in std_logic;
	 RegC_in_pipeline : in std_logic_vector(4 downto 0);
	 Reg_WR : in std_logic_vector(31 downto 0);
	 ROM_out_pipeline: out std_logic_vector((larguraDados-1) downto 0);
	 instrucao_pipeline: out std_logic_vector(13 downto 0);
	 RS_out_pipeline: out std_logic_vector((larguraDados-1) downto 0);
    ID_EX:  out std_logic_vector(222 downto 0)
  );
end entity;

architecture comportamento of Decode is

--SIGNALS



 -- Instrucao ( unidade de controle)
  signal instrucao: std_logic_vector(13 downto 0);
  
 -- Endereço do Registrador 3 ( ou C)
	signal RegC_in: std_logic_vector(4 downto 0); -- saida do MUX RT/RD
 
 
 -- Registradores
	signal RS_out: std_logic_vector((larguraDados-1) downto 0);
	signal RT_out: std_logic_vector((larguraDados-1) downto 0);
  
 -- imediato extendido
	signal imediato_ext: std_logic_vector((larguraDados-1) downto 0);
	
 -- Saida do LUI
   signal  LUI_out: std_logic_vector((larguraDados-1) downto 0);



-- ALIAS

 -- ROM
  alias ROM_out: std_logic_vector((larguraDados-1) downto 0) is IF_ID(31 downto 0 );


 -- Saida do Somador do PC
 alias somador_pc_out: std_logic_vector((larguraDados-1) downto 0) is IF_ID(63 downto 32 );

 
  
 -- Opcode(R)
 alias Opcode: std_logic_vector(5 downto 0) is ROM_out(31 downto 26);
 
 --Funct(R)
 alias funct: std_logic_vector(5 downto 0) is ROM_out(5 downto 0);
 
 -- Imediato
 alias imediato: std_logic_vector(15 downto 0) is ROM_out(15 downto 0);
 
 
  
  
 -- Registradores endereço
  alias RS_add: std_logic_vector(4 downto 0) is ROM_out(25 downto 21);
  alias RT_add: std_logic_vector(4 downto 0) is ROM_out(20 downto 16);
  alias RD_add: std_logic_vector(4 downto 0) is ROM_out(15 downto 11);
  
  
 -- instrucao
  alias ORI_ANDI: std_logic is instrucao(9);
  alias mux_rt_rd: std_logic_vector is instrucao(11 downto 10);
    
  
  

  begin
  
	-- unidade de controle:

UC_item: entity work.decoderInstru 
			port map(opcode=>opcode,
						funct => funct,
						saida=> instrucao);
						
						
						
	-- MUX dos Regsitradores RD e RT:

mux_item1: entity work.muxGenerico4x1 generic map(larguraDados => 5)
				port map (	entrada00_MUX => RT_add , 
								entrada01_MUX => RD_add ,
								entrada10_MUX => "11111" ,
								entrada11_MUX => "00000" ,
								seletor_MUX => mux_rt_rd ,
								saida_MUX => RegC_in);

  
  
	-- port map do banco de registradores:
	
Regs_item: entity work.bancoRegistradores
			 port map (	clk => CLK,
							enderecoA => RS_add,
							enderecoB => RT_add,     
							enderecoC => RegC_in_pipeline,
							dadoEscritaC => Reg_WR,
							escreveC => habilita_Regs,
							saidaA => RS_out,
							saidaB   => RT_out  
						);	
								
-- Extendor de Sinal:

Extensor_item : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => imediato,
						  ORI_ANDI => ORI_ANDI,
						  estendeSinal_OUT => imediato_ext);
								
								
-- LUI

LUI_item: entity work.LUI
				port map (	Imm => imediato ,
								LUI_out => LUI_out);
								
 -- ID/EX:
ID_EX_stage: 	entity work.registradorGenerico generic map (larguraDados => 223 )
			port map ( DIN  => ROM_out & funct & opcode & RegC_in & LUI_out & imediato_ext& RT_out & RS_out & somador_pc_out & instrucao, -- ROM_out(222 a 191), funct(190 a 185), opcode(184 a 179), RegC_in(178 a 174), LUI_out(173 a 142), imediato_ext(141 a 110), RT_out(109 a 78) ,RS_out(77 a 46) , somador_pc_out(45 a 14), instrucao(13 a 0)
						  DOUT => ID_EX,
						  ENABLE => '1',
						  CLK => CLK,
						  RST => '0');
						  
ROM_out_pipeline <= ROM_out;

instrucao_pipeline <= instrucao;
RS_out_pipeline <= RS_out;
    
end architecture;