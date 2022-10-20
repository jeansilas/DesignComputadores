library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is

port (   controle   : in std_logic_vector(12 downto 0);
         flag_zero  : in std_logic;
			saida     : out std_logic_vector(1 downto 0);
			flag_less  : in std_logic
  );
 
end entity;

architecture comportamento of logicaDesvio is

  alias JMP: std_logic is controle(10);
  alias JEQ: std_logic is controle(7);
  alias JSR: std_logic is controle(8);
  alias RET: std_logic is controle(9);
  alias JST: std_logic is controle(12);


  begin
  
	saida(0) <=  JMP or (JEQ and flag_zero) or JSR or (JST and flag_less);
	saida(1) <= RET;


end architecture;