library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 6
	
	
    );
   port (
          Endereco : in std_logic_vector (8 DOWNTO 0);
          Dado : out std_logic_vector (12 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant NOP  : std_logic_vector(3 downto 0)   := "0000";
  constant LDA  : std_logic_vector(3 downto 0)   := "0001";
  constant SOMA : std_logic_vector(3 downto 0)   := "0010";
  constant SUB  : std_logic_vector(3 downto 0)   := "0011";
  constant LDI  : std_logic_vector(3 downto 0)   := "0100";
  constant STA  : std_logic_vector(3 downto 0)   := "0101";
  constant JMP	 : std_logic_vector(3 downto 0)   := "0110";
  constant JEQ  : std_logic_vector(3 downto 0)   := "0111";
  constant CEQ  : std_logic_vector(3 downto 0)   := "1000";
  constant JSR  : std_logic_vector(3 downto 0)   := "1001";
  constant RET  : std_logic_vector(3 downto 0)   := "1010";
  constant ANDOP  : std_logic_vector(3 downto 0) := "1011";
  constant CLT 	: std_logic_vector(3 downto 0) := "1100";
  constant JST  : std_logic_vector(3 downto 0)   := "1101";


  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
        tmp(0)  := LDI   & '0' & x"01"; 
		  tmp(1)  := STA   & '0' & x"01"; 
		  tmp(2)  := NOP   & '0' & x"00"; 
		  tmp(3)  := LDA   & '1' & x"60"; 
        tmp(4)  := STA   & '1' & x"20";
		  tmp(5)  := ANDOP & '0' & x"01"; 
		  tmp(6)  := STA   & '1' & x"21"; 
		  tmp(7)  := NOP   & '0' & x"00"; 
		  tmp(8)  := JMP   & '0' & x"02"; 
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;