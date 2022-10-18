
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 8 );
    port (
      entradaA, entradaB		:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor						:  in STD_LOGIC_VECTOR(1 downto 0);
      saida							:  out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flag_less					:  out std_logic;
		flag_zero					:  out std_logic
    );
end entity;

architecture comportamento of ULASomaSub is
   
	signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal And_op: std_logic_vector((larguraDados-1) downto 0);
	
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		And_op <= std_logic_vector(unsigned(entradaA) and unsigned(entradaB));

		
      saida <= soma when (seletor = "01") else 
					subtracao when (seletor = "00") else
					entradaB when (seletor = "10")  else
					And_op when (seletor = "11")
					;
		
		
		flag_less <= subtracao(7);
		
		
		
		flag_zero <= not(   saida(7) or
								  saida(6) or
								  saida(5) or
								  saida(4) or
								  saida(3) or
								  saida(2) or
								  saida(1) or
								  saida(0));
end architecture;