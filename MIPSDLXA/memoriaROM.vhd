library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM IS
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32;
			 memoryAddrWidth:  natural := 6 );   -- 64 posicoes de 32 bits cada
   port (
		    clk : in std_logic;
          Endereco : in  std_logic_vector (addrWidth-1 downto 0);
          Dado     : out std_logic_vector (dataWidth-1 downto 0) );
end entity;

architecture assincrona OF memoriaROM IS
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 downto 0);
  
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

-- Funct das operacoes
 
  constant SUB_f 	: std_logic_vector(5 downto 0) := "100010";
  constant ADD_f    : std_logic_vector(5 downto 0) := "100000";
  constant AND_f   : std_logic_vector(5 downto 0) := "100100";
  constant OR_f    : std_logic_vector(5 downto 0) := "100101";
  constant SLT_f    : std_logic_vector(5 downto 0) := "101010";
 
-- Registradores:

 constant t0: std_logic_vector(4 downto 0) := "01000";
 constant t1: std_logic_vector(4 downto 0) := "01001";
 constant t2: std_logic_vector(4 downto 0) := "01010";
 constant t3: std_logic_vector(4 downto 0) := "01011";
 constant t4: std_logic_vector(4 downto 0) := "01100";
 constant t5: std_logic_vector(4 downto 0) := "01101";
 constant t6: std_logic_vector(4 downto 0) := "01110";
 constant t7: std_logic_vector(4 downto 0) := "01111";
 constant t8: std_logic_vector(4 downto 0) := "11000";
 constant t9: std_logic_vector(4 downto 0) := "11001";
 
 constant sp: std_logic_vector(4 downto 0) := "11101";


  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
		  
  begin
  
			-- $t0 = 0
         -- $t1 = 10
         -- $t2 = 11
         -- $t3 = 12
         -- $t4 = 13
         -- $t5 = 0x16
        

        tmp(0)  := 	x"AC090008";  --sw $t1 8($zero)     (m(8) := 0x0000000A)
        tmp(1)  :=   x"8C080008";  --lw $t0 8($zero)     ($t0  := 0x0000000A)
		  tmp(2)  :=   x"012A4022";  --sub $t0 $t1 $t2     ($t0  := 0xFFFFFFFF)
		  tmp(3)  :=   x"012A4024";  --and $t0 $t1 $t2     ($t0  := 0x0000000A)
		  tmp(4)  :=   x"012A4025";  --or $t0 $t1 $t2      ($t0  := 0x0000000B)
		  tmp(5)  :=   x"012A402A";  --slt $t0 $t1 $t2     ($t0  := 0x00000001)
		  tmp(6)  :=   x"010A4020";  --add $t0 $t0 $t2     ($t0  := 0x0000000C)
		  tmp(7)	 :=   x"110BFFFE";  --beq $t0 $t3 0xFFFE  (pc := #6)
		  tmp(8)  :=   x"08000000";  --j 0x000000          (pc := #0)
		  

		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;
-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;