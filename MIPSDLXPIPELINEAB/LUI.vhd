library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity LUI is
    generic
    (
        larguraDados : natural := 16
    );
    port
    (
      Imm	      :	 in std_logic_vector((larguraDados-1) downto 0);
		LUI_out		:   out std_logic_vector((larguraDados + larguraDados -1) downto 0)
 
    );
end entity;

architecture comportamento of LUI is

 
begin

	LUI_out <= Imm & x"0000";

      
		

end architecture;