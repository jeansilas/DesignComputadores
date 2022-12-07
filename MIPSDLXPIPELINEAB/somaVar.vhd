library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  --Soma (esta biblioteca =ieee)

entity somaVar is
    generic
    (
        larguraDados : natural := 32
    );
    port
    (
        entrada: in  STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		  constante : in std_logic_vector((larguraDados)-1 downto 0);
        saida:   out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of somaVar is
    begin
        saida <= std_logic_vector(signed(entrada) + signed(constante));
end architecture;