library ieee;
use ieee.std_logic_1164.all;

entity muxGenerico4x1bit is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 9);
  port (
    entrada00_MUX, entrada01_MUX, entrada10_MUX, entrada11_MUX : in std_logic;
    seletor_MUX : in std_logic_vector(1 downto 0);
    saida_MUX : out std_logic
  );
end entity;

architecture comportamento of muxGenerico4x1bit is
  begin
    saida_MUX <= entrada00_MUX when (seletor_MUX = "00") else 
					  entrada01_MUX when (seletor_MUX = "01") else
					  entrada10_MUX when (seletor_MUX = "10") else
					  entrada11_MUX;
end architecture;