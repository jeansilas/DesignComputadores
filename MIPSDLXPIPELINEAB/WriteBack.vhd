library ieee;
use ieee.std_logic_1164.all;

entity WriteBack is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32);
  port (
    CLK: 		 in std_logic;
    MEM_WB : in std_logic_vector(146 downto 0);
    WB_out:  out std_logic_vector(37 downto 0)
  );
end entity;

architecture comportamento of WriteBack is

--SIGNALS

 signal Reg_WR: std_logic_vector((larguraDados-1) downto 0);
  



 



-- ALIAS


 -- Instrucao ( unidade de controle)
	alias instrucao: std_logic_vector(13 downto 0) is MEM_WB(13 downto 0);
	
 -- somador_pc_out
	alias somador_pc_out: std_logic_vector((larguraDados-1) downto 0) is MEM_WB(45 downto 14);
	
 -- ULA_out
	alias ULA_out: std_logic_vector((larguraDados-1) downto 0) is MEM_WB(77 downto 46);
	
 -- RAM_out
	alias RAM_out: std_logic_vector((larguraDados-1) downto 0) is MEM_WB(109 downto 78);
	
 -- RegC_in
	alias RegC_in: std_logic_vector(4 downto 0) is MEM_WB(114 downto 110);
	
 -- LUI_out
	alias LUI_out: std_logic_vector((larguraDados-1) downto 0) is MEM_WB(146 downto 115);
  
 
 -- instrucao
   alias mux_ram: std_logic_vector is instrucao(5 downto 4);
	alias habilita_Regs: std_logic is instrucao(8);

 
    
  begin
  
-- MUX RAM:

mux_item5: entity work.muxGenerico4x1 generic map(larguraDados => larguraDados)
				port map (	entrada00_MUX => ULA_out , 
								entrada01_MUX => RAM_out ,
								entrada10_MUX => somador_pc_out,
								entrada11_MUX => LUI_out,
								seletor_MUX => mux_ram ,
								saida_MUX => Reg_WR);
  
							
								
WB_out <=  RegC_in & Reg_WR & habilita_Regs; -- RegC_in(37 a 33), Reg_WR(32 a 1), habilita_Regs(0)
    
end architecture;