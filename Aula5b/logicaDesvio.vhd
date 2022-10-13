library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is

port (   controle : in std_logic_vector(8 downto 0);
         flag_zero : in std_logic;
			saida: out std_logic
  );
 
end entity;

architecture comportamento of logicaDesvio is

  alias JMP_controle: std_logic is controle(8);
  alias JEQ_controle: std_logic is controle(7);


  begin
  
	saida <= JMP_controle or (JEQ_controle and flag_zero);


end architecture;