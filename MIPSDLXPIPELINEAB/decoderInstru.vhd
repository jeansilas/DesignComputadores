library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
			funct  : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(13 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant LW  	: std_logic_vector(5 downto 0) := "100011";
  constant SW  	: std_logic_vector(5 downto 0) := "101011";
  constant BEQ 	: std_logic_vector(5 downto 0) := "000100";
  constant SUB 	: std_logic_vector(5 downto 0) := "000000";
  constant ADD    : std_logic_vector(5 downto 0) := "000000";
  constant AND_p   : std_logic_vector(5 downto 0) := "000000";
  constant OR_p    : std_logic_vector(5 downto 0) := "000000";
  constant SLT    : std_logic_vector(5 downto 0) := "000000";
  constant JMP    : std_logic_vector(5 downto 0) := "000010";
  constant LUI    : std_logic_vector(5 downto 0) := "001111";
  constant ADDi    : std_logic_vector(5 downto 0) := "001000";
  constant ANDi    : std_logic_vector(5 downto 0) := "001100";
  constant ORi    : std_logic_vector(5 downto 0) := "001101";
  constant SLTi    : std_logic_vector(5 downto 0) := "001010";
  constant BNE    : std_logic_vector(5 downto 0) := "000101";
  constant JAL    : std_logic_vector(5 downto 0) := "000011";
  constant JR    : std_logic_vector(5 downto 0) := "000000";
  
  -- functs
  constant JR_funct    : std_logic_vector(5 downto 0) := "001000";
  
  
  alias WR: std_logic is saida(0);
  alias RD: std_logic is saida(1);
  alias BNE_tag: std_logic is saida(2);
  alias BEQ_tag: std_logic is saida(3);
  alias mux_ram: std_logic_vector is saida(5 downto 4);
  alias tipoR: std_logic is saida(6);
  alias mux_rt_imediato: std_logic is saida(7);
  alias habilita_Regs: std_logic is saida(8);
  alias ORI_ANDI: std_logic is saida(9);
  alias mux_rt_rd: std_logic_vector is saida(11 downto 10);
  alias mux_pc: std_logic is saida(12);
  alias JR_tag: std_logic is saida(13);

  begin
WR <= '1' when (opcode = SW) else '0';
RD <= '1' when (opcode = LW) else '0';
BNE_tag <= '1' when (opcode = BNE) else '0';
BEQ_tag <= '1' when (opcode = BEQ) else '0';
mux_ram <= "01" when (opcode = LW) else "10" when (opcode = JAL) else "11" when (opcode = LUI) else "00";
tipoR <= '1' when (opcode = "000000") else '0';	
mux_rt_imediato <= '1' when (opcode = LW) or (opcode = SW) or (opcode = ADDi) or (opcode = ANDi) or (opcode = ORi) or (opcode = LUI) or (opcode = SLTi) else '0';
habilita_Regs <= '1' when (opcode = LW) or (opcode = "000000") or (opcode = ADDi) or (opcode = ANDi) or (opcode = ORi) or (opcode = LUI) or (opcode = SLTi) or (opcode = JAL) else '0';
ORI_ANDI <= '1' when (opcode = ANDi) or (opcode = ORi) else '0';
mux_rt_rd <= "01" when (opcode = "000000") else "10" when (opcode = JAL) else "00";
mux_pc <= '1' when (opcode = JMP) or (opcode = JAL) else '0';
JR_tag <= '1' when (opcode = JR and funct = JR_funct) else '0';




	
end architecture;