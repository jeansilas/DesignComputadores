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
			
    tmp(0)  := x"3c090000";      --lui $t1, 0x0000;
    tmp(1)  := x"3c0baaaa";      --lui $t3, 0xAAAA;
    tmp(2)  := x"3c0f1000";      --lui $t7, 0x1000;
    tmp(3)  := x"3529000a";      --ori $t1, $t1, 0x0A;     # $t1 (#9) := 0x0A
    tmp(4)  := x"356baaaa";      --ori $t3, $t3, 0xAAAA;   # $t3 (#11) := 0xAAAAAAAA
    tmp(5)  := x"35ef0000";      --ori $t7, $t7, 0x0000;   # $t7 (#15) := 0x10000000 (4096*64k)
    tmp(6)  := x"212a0001";      --addi $t2, $t1, 0x01;    # $t2 (#10) := 0x0B
    tmp(7)  := x"01606025";      --or $t4, $t3, $0;        # $t4 (#12) := 0xAAAAAAAA
    tmp(8)  := x"316dffff";      --andi $t5, $t3, 0xFFFF;  # $t5 (#13) := 0x0000AAAA
    tmp(9)  := x"01497022";      --sub $t6, $t2, $t1;      # $t6 (#14) := 0x01
    tmp(10) := x"ac090008";      --sw $t1, 8($zero);       # M[8) = 0x0A
    tmp(11) := x"8c080008";      --lw $t0, 8($zero);
    tmp(12) := x"010a7824";      --and $t7, $t0, $t2;      # Hazard Load Use
    tmp(13) := x"290fffff";      --slti $t7, $t0, 0xFFFF;
    tmp(14) := x"012a402a";      --slt $t0, $t1, $t2;
--destinoBEQ:
    tmp(15) := x"012e4820";      --add $t1, $t1, $t6;      # t0 = t2, segunda vez: t0 != t2
    tmp(16) := x"00000000";      --nop;
    tmp(17) := x"00000000";      --nop;
    tmp(18) := x"112afffc";      --beq $t1, $t2, destinoBEQ;  # Desvia na primeira e nao desvia depois
    tmp(19) := x"00000000";      --nop;
    tmp(20) := x"00000000";      --nop;
    tmp(21) := x"00000000";      --nop;
    tmp(22) := x"0c000020";      --jal subrotina;
    tmp(23) := x"00000000";      --nop;
    tmp(24) := x"00000000";      --nop;
    tmp(25) := x"00000000";      --nop;
    tmp(26) := x"00000000";      --nop;
    tmp(27) := x"150d0008";      --bne $t0, $t5, fim
    tmp(28) := x"00000000";      --nop;
    tmp(29) := x"00000000";      --nop;
    tmp(30) := x"00000000";      --nop;
    tmp(31) := x"00000000";      --nop;
--subrotina:
    tmp(32) := x"00000000";      --nop;
    tmp(33) := x"03e00008";      --jr $ra;
    tmp(34) := x"00000000";      --nop;
    tmp(35) := x"00000000";      --nop;
--fim:
    tmp(36) := x"00000000";      --nop;
    tmp(37) := x"08000024";      --j fim;
    tmp(38) := x"00000000";      --nop;
    tmp(39) := x"00000000";      --nop;
        

		  

		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;
-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;