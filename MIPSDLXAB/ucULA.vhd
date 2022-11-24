library ieee;
use ieee.std_logic_1164.all;


entity ucULA is
  port ( opcode : in std_logic_vector(5 downto 0);
         tipoR : in std_logic;
			funct : in std_logic_vector(5 downto 0);
			ULA_op: out std_logic_vector(3 downto 0)
  );
end entity;



architecture comportamento of ucULA is

-- Opcode das operacoes
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

-- Funct das operacoes
 
  constant LW_f  	: std_logic_vector(5 downto 0) := "100011";
  constant SW_f  	: std_logic_vector(5 downto 0) := "101011";
  constant BEQ_f 	: std_logic_vector(5 downto 0) := "000100";
  constant SUB_f 	: std_logic_vector(5 downto 0) := "100010";
  constant ADD_f    : std_logic_vector(5 downto 0) := "100000";
  constant AND_f   : std_logic_vector(5 downto 0) := "100100";
  constant OR_f    : std_logic_vector(5 downto 0) := "100101";
  constant SLT_f    : std_logic_vector(5 downto 0) := "101010";
  constant JMP_f    : std_logic_vector(5 downto 0) := "000010";
  constant JR_f   : std_logic_vector(5 downto 0) := "001000";

-- Operacoes

 constant ADD_op:  std_logic_vector(3 downto 0)  := "0010";
 constant SUB_op:  std_logic_vector(3 downto 0)  := "0110";
 constant SLT_op: std_logic_vector(3 downto 0)   := "0111";
 constant AND_op: std_logic_vector(3 downto 0)   := "0000";
 constant OR_op : std_logic_vector(3 downto 0)   := "0001";
 constant entradaA: std_logic_vector(3 downto 0) := "0010";      -- outra opcao: saida = entradaA

  

  begin

ULA_op <= ADD_op when (tipoR = '1' and funct = ADD_f and opcode = ADD) else
			 SUB_op when (tipoR = '1' and funct = SUB_f and opcode = SUB) else
			 AND_op when (tipoR = '1' and funct = AND_f and opcode = AND_p) else
			 OR_op when (tipoR = '1' and funct = OR_f and opcode = OR_p) else
			 SLT_op when (tipoR = '1' and  opcode = SLT) else
			 SUB_op when (tipoR = '0' and  opcode = BEQ) else
			 ADD_op when (tipoR = '0' and  opcode = LW) else
			 ADD_op when (tipoR = '0' and opcode = SW) else
			 ADD_op when (tipoR = '0' and opcode = ADDi) else
			 AND_op when (tipoR = '0' and opcode = ANDi) else
			 OR_op when  (tipoR = '0' and opcode = ORi) else
			 SLT_op when (tipoR = '0' and opcode = SLTi) else
			 SUB_op when (tipoR = '0' and  opcode = BNE) else
			 entradaA when (tipoR = '0' and  opcode = JMP) else
			 entradaA;
			 
			 


	
end architecture;