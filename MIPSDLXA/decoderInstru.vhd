library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(8 downto 0)
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
  
  
  
  
  alias WR: std_logic is saida(0);
  alias RD: std_logic is saida(1);
  alias BEQ_tag: std_logic is saida(2);
  alias mux_ram: std_logic is saida(3);
  alias tipoR: std_logic is saida(4);
  alias mux_rt_imediato: std_logic is saida(5);
  alias habilita_Regs: std_logic is saida(6);
  alias mux_rt_rd: std_logic is saida(7);
  alias mux_pc: std_logic is saida(8);

  begin
WR <= '1' when (opcode = SW) else '0';
RD <= '1' when (opcode = LW) else '0';
BEQ_tag <= '1' when (opcode = BEQ) else '0';
mux_ram <= '1' when (opcode = LW) else '0';
tipoR <= '1' when (opcode = "000000") else '0';	
mux_rt_imediato <= '1' when (opcode = LW) or (opcode = SW) else '0';
habilita_Regs <= '1' when (opcode = LW) or (opcode = "000000") else '0';
mux_rt_rd <= '1' when (opcode = "000000") else '0';
mux_pc <= '1' when (opcode = JMP) else '0';



	
end architecture;