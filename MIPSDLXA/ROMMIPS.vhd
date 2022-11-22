library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROMMIPS IS
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32;
       memoryAddrWidth:  natural := 6 );   -- 64 posicoes de 32 bits cada
   port (
          Endereco : in  std_logic_vector (addrWidth-1 downto 0);
          Dado     : out std_logic_vector (dataWidth-1 downto 0) )
end entity;

architecture assincrona OF ROMMIPS IS
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 downto 0);

  signal memROM: blocoMemoria;
  attribute ram_init_file : string;
  attribute ram_init_file of memROM:
  signal is "ROMcontent.mif";

-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin

        tmp(0)  := "101011" & "11101" & "01001" & "0000000000000100";  -- SW 
        tmp(1)  := "100011" & "11101" & "01010" & "0000000000000100";  -- LW
		  tmp(2)  := "000100" & "01000" & "01001" & "0000000000001010";  -- BEQ (Não pula)
		  tmp(3)  := "000100" & "01001" & "01010" & "0000000000001010";  -- BEQ (Pula!)
		  tmp(14) := "000100" & "01001" & "01010" & "1111111111111000";  -- BEQ (Pula Para trás -8)
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
  
  
end architecture;