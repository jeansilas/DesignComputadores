library ieee;
use ieee.std_logic_1164.all;

entity Memory is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32);
  port (
    CLK: 		 in std_logic;
    EX_MEM : in std_logic_vector(179 downto 0);
	 somador_pc_out_pipeline: in std_logic_vector((larguraDados-1) downto 0);
	 PC_Beq_out_pipeline: out std_logic_vector((larguraDados-1) downto 0);
    MEM_WB:  out std_logic_vector(146 downto 0)
  );
end entity;

architecture comportamento of Memory is

--SIGNALS

 
  signal RAM_out: std_logic_vector((larguraDados-1) downto 0);

 -- Saida do MUX da flag zero
  signal  MUX_Z_out: std_logic;

  signal PC_Beq_out: std_logic_vector((larguraDados-1) downto 0); -- saida do mux do BEQ
 



-- ALIAS


 -- Instrucao ( unidade de controle)
	alias instrucao: std_logic_vector(13 downto 0) is EX_MEM(13 downto 0);
	
 -- somador_pc_out
	alias somador_pc_out: std_logic_vector((larguraDados-1) downto 0) is EX_MEM(45 downto 14);
	
 -- ULA_out
	alias ULA_out: std_logic_vector((larguraDados-1) downto 0) is EX_MEM(77 downto 46);
	
 -- RT_out
	alias RT_out: std_logic_vector((larguraDados-1) downto 0) is EX_MEM(109 downto 78);
	
 -- RegC_in
	alias RegC_in: std_logic_vector(4 downto 0) is EX_MEM(114 downto 110);
	
 -- LUI_out
	alias LUI_out: std_logic_vector((larguraDados-1) downto 0) is EX_MEM(146 downto 115);

 -- PC_Beq_in
 
	alias PC_Beq_in : std_logic_vector((larguraDados-1) downto 0) is EX_MEM(178 downto 147);
	
 -- Flag_zero
	alias flag_zero: std_logic is EX_MEM(179);
  
 
 -- instrucao
   alias WR: std_logic is instrucao(0);
   alias RD: std_logic is instrucao(1);
	alias BNE: std_logic is instrucao(2);
   alias BEQ: std_logic is instrucao(3);

 
    
  begin
  
  -- MUX Z:
mux_item7: entity work.muxGenerico2x1bit generic map(larguraDados => larguraDados)
				port map (	entradaA_MUX => not(flag_zero) , 
								entradaB_MUX => flag_zero ,
								seletor_MUX => BEQ ,
								saida_MUX => MUX_Z_out);

-- MUX do BEQ:\s

mux_item3: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
				port map (	entradaA_MUX => somador_pc_out_pipeline , 
								entradaB_MUX => PC_Beq_in ,
								seletor_MUX => (BEQ or BNE) and MUX_Z_out,
								saida_MUX => PC_Beq_out);
  
  
  
  
  
-- Memória RAM:

RAM_item: entity work.RAMMIPS generic map (dataWidth => larguraDados, addrWidth => larguraDados)
				port map(	Endereco => ULA_out,
								we => WR, 
								re => RD,
								habilita => WR,
								clk => CLK,
								dado_in  => RT_out,
								dado_out =>RAM_out );
  
  
							
								
 -- MEM/WB:
MEM_WB_item: 	entity work.registradorGenerico generic map (larguraDados => 147 )
			port map ( DIN  => LUI_out & RegC_in & RAM_out & ULA_out & somador_pc_out &instrucao, -- LUI_out(146 a 115), RegC_in(114 a 110), RAM_out(109 a 78) ,ULA_out(77 a 46), somador_pc_out(45 a 14), instrucao(13 a 0)
						  DOUt => MEM_WB,
						  ENABLE => '1',
						  CLK => CLK,
						  RST => '0');

PC_beq_out_pipeline <= PC_Beq_out;
    
end architecture;