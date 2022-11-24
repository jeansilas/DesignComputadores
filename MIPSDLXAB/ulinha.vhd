library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity Ulinha is
    generic
    (
        larguraDados : natural := 1
    );
    port
    (
      A	      :	 in std_logic;
      B	      :	 in std_logic;
		SLT_b    :   in std_logic;
		InvA     :   in std_logic;
		InvB     :   in std_logic;
		carry_in :   in std_logic;
		sel      :   in std_logic_vector(1 downto 0);
		carry_out:   out std_logic;
		output   :   out std_logic;
		soma_out :   out std_logic
    );
end entity;

architecture comportamento of Ulinha is
  --constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');

   signal soma_subtracao :   std_logic;
   signal op_and 			 :   std_logic;
   signal op_or 			 :   std_logic;
	
	signal B_signal       :   std_logic;
	signal A_signal       :   std_logic;

begin

-- MUX para B e B invertido:

mux_item0: entity work.muxGenerico2x1bit generic map(larguraDados => 1)
				port map (	entradaA_MUX => B , 
								entradaB_MUX => not(B) ,
								seletor_MUX => InvB,
								saida_MUX => B_signal);

-- MUX para A e A invertido:

mux_item1: entity work.muxGenerico2x1bit generic map(larguraDados => 1)
				port map (	entradaA_MUX => A , 
								entradaB_MUX => not(A) ,
								seletor_MUX => InvA,
								saida_MUX => A_signal);
								
subtrator_soma: entity work.subtratorCarry

			port map (	A => A_signal,
							B => B_signal,
							carry_in => carry_in,
							carry_out => carry_out,
							soma => soma_subtracao);

-- MUX para Ulinha:

mux_item2: entity work.muxGenerico4x1bit generic map(larguraDados => 1)
				port map (	entrada00_MUX => op_and , 
								entrada01_MUX => op_or ,
								entrada10_MUX => soma_subtracao,
								entrada11_MUX => SLT_b,
								seletor_MUX => sel,
								saida_MUX => output);
							
op_and <= A_signal and B_signal;
op_or  <= A_signal or  B_signal;
 
soma_out <=  soma_subtracao;
		

end architecture;