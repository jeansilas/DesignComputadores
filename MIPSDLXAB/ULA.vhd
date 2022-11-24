library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA is
    generic
    (
        larguraDados : natural := 32
    );
    port
    (
      A	      :	 in std_logic_vector((larguraDados-1) downto 0);
      B	      :	 in std_logic_vector((larguraDados-1) downto 0);
		Ula_op   :   in std_logic_vector(3 downto 0);
		saida    :   out std_logic_vector((larguraDados-1) downto 0);
		flagZero:   out std_logic
    );
end entity;

architecture comportamento of ULA is
  
  signal InvA : std_logic;
  signal InvB : std_logic;
  signal overflow: std_logic;
  signal sel: std_logic_vector (1 downto 0);
  
  signal soma_out: std_logic_vector((larguradados-1) downto 0);
  
  signal carry_out_0: std_logic;
  signal carry_out_1: std_logic;
  signal carry_out_2: std_logic;
  signal carry_out_3: std_logic;
  signal carry_out_4: std_logic;
  signal carry_out_5: std_logic;
  signal carry_out_6: std_logic;
  signal carry_out_7: std_logic;
  signal carry_out_8: std_logic;
  signal carry_out_9: std_logic;
  signal carry_out_10: std_logic;
  signal carry_out_11: std_logic;
  signal carry_out_12: std_logic;
  signal carry_out_13: std_logic;
  signal carry_out_14: std_logic;
  signal carry_out_15: std_logic;
  signal carry_out_16: std_logic;
  signal carry_out_17: std_logic;
  signal carry_out_18: std_logic;
  signal carry_out_19: std_logic;
  signal carry_out_20: std_logic;
  signal carry_out_21: std_logic;
  signal carry_out_22: std_logic;
  signal carry_out_23: std_logic;
  signal carry_out_24: std_logic;
  signal carry_out_25: std_logic;
  signal carry_out_26: std_logic;
  signal carry_out_27: std_logic;
  signal carry_out_28: std_logic;
  signal carry_out_29: std_logic;
  signal carry_out_30: std_logic;
  signal carry_out_31: std_logic;
  
  

  

begin

InvA <= Ula_op(3);
InvB <= Ula_op(2);
sel <= Ula_op( 1 downto 0);


bit0: entity work.ulinha
		port map ( 	A => A(0),
						B => B(0),
						SLT_b => overflow,
						InvA  => InvA,
						InvB  => InvB,
						carry_in => InVB,
						sel => sel,
						carry_out => carry_out_0,
						output => saida(0),
						soma_out => soma_out(0));

bit1: entity work.ulinha
		port map ( 	A => A(1),
						B => B(1),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_0,
						sel => sel,
						carry_out => carry_out_1,
						output => saida(1),
						soma_out => soma_out(1));
						
						
bit2: entity work.ulinha
		port map ( 	A => A(2),
						B => B(2),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_1,
						sel => sel,
						carry_out => carry_out_2,
						output => saida(2),
						soma_out => soma_out(2));

bit3: entity work.ulinha
		port map ( 	A => A(3),
						B => B(3),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_2,
						sel => sel,
						carry_out => carry_out_3,
						output => saida(3),
						soma_out => soma_out(3));
						
						
bit4: entity work.ulinha
		port map ( 	A => A(4),
						B => B(4),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_3,
						sel => sel,
						carry_out => carry_out_4,
						output => saida(4),
						soma_out => soma_out(4));

bit5: entity work.ulinha
		port map ( 	A => A(5),
						B => B(5),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_4,
						sel => sel,
						carry_out => carry_out_5,
						output => saida(5),
						soma_out => soma_out(5));
						
						
bit6: entity work.ulinha
		port map ( 	A => A(6),
						B => B(6),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_5,
						sel => sel,
						carry_out => carry_out_6,
						output => saida(6),
						soma_out => soma_out(6));

bit7: entity work.ulinha
		port map ( 	A => A(7),
						B => B(7),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_6,
						sel => sel,
						carry_out => carry_out_7,
						output => saida(7),
						soma_out => soma_out(7));
						
						
bit8: entity work.ulinha
		port map ( 	A => A(8),
						B => B(8),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_7,
						sel => sel,
						carry_out => carry_out_8,
						output => saida(8),
						soma_out => soma_out(8));

bit9: entity work.ulinha
		port map ( 	A => A(9),
						B => B(9),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_8,
						sel => sel,
						carry_out => carry_out_9,
						output => saida(9),
						soma_out => soma_out(9));
						
						
bit10: entity work.ulinha
		port map ( 	A => A(10),
						B => B(10),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_9,
						sel => sel,
						carry_out => carry_out_10,
						output => saida(10),
						soma_out => soma_out(10));

bit11: entity work.ulinha
		port map ( 	A => A(11),
						B => B(11),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_10,
						sel => sel,
						carry_out => carry_out_11,
						output => saida(11),
						soma_out => soma_out(11));
						
						
bit12: entity work.ulinha
		port map ( 	A => A(12),
						B => B(12),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_11,
						sel => sel,
						carry_out => carry_out_12,
						output => saida(12),
						soma_out => soma_out(12));

bit13: entity work.ulinha
		port map ( 	A => A(13),
						B => B(13),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_12,
						sel => sel,
						carry_out => carry_out_13,
						output => saida(13),
						soma_out => soma_out(13));
						
						
bit14: entity work.ulinha
		port map ( 	A => A(14),
						B => B(14),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_13,
						sel => sel,
						carry_out => carry_out_14,
						output => saida(14),
						soma_out => soma_out(14));

bit15: entity work.ulinha
		port map ( 	A => A(15),
						B => B(15),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_14,
						sel => sel,
						carry_out => carry_out_15,
						output => saida(15),
						soma_out => soma_out(15));
						
						
bit16: entity work.ulinha
		port map ( 	A => A(16),
						B => B(16),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_15,
						sel => sel,
						carry_out => carry_out_16,
						output => saida(16),
						soma_out => soma_out(16));

bit17: entity work.ulinha
		port map ( 	A => A(17),
						B => B(17),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_16,
						sel => sel,
						carry_out => carry_out_17,
						output => saida(17),
						soma_out => soma_out(17));
						
						
bit18: entity work.ulinha
		port map ( 	A => A(18),
						B => B(18),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_17,
						sel => sel,
						carry_out => carry_out_18,
						output => saida(18),
						soma_out => soma_out(18));

bit19: entity work.ulinha
		port map ( 	A => A(19),
						B => B(19),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_18,
						sel => sel,
						carry_out => carry_out_19,
						output => saida(19),
						soma_out => soma_out(19));
						
						
bit20: entity work.ulinha
		port map ( 	A => A(20),
						B => B(20),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_19,
						sel => sel,
						carry_out => carry_out_20,
						output => saida(20),
						soma_out => soma_out(20));

bit21: entity work.ulinha
		port map ( 	A => A(21),
						B => B(21),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_20,
						sel => sel,
						carry_out => carry_out_21,
						output => saida(21),
						soma_out => soma_out(21));
						
						
bit22: entity work.ulinha
		port map ( 	A => A(22),
						B => B(22),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_21,
						sel => sel,
						carry_out => carry_out_22,
						output => saida(22),
						soma_out => soma_out(22));

bit23: entity work.ulinha
		port map ( 	A => A(23),
						B => B(23),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_22,
						sel => sel,
						carry_out => carry_out_23,
						output => saida(23),
						soma_out => soma_out(23));
						
						
bit24: entity work.ulinha
		port map ( 	A => A(24),
						B => B(24),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_23,
						sel => sel,
						carry_out => carry_out_24,
						output => saida(24),
						soma_out => soma_out(24));

bit25: entity work.ulinha
		port map ( 	A => A(25),
						B => B(25),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_24,
						sel => sel,
						carry_out => carry_out_25,
						output => saida(25),
						soma_out => soma_out(25));
						
						
bit26: entity work.ulinha
		port map ( 	A => A(26),
						B => B(26),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_25,
						sel => sel,
						carry_out => carry_out_26,
						output => saida(26),
						soma_out => soma_out(26));

bit27: entity work.ulinha
		port map ( 	A => A(27),
						B => B(27),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_26,
						sel => sel,
						carry_out => carry_out_27,
						output => saida(27),
						soma_out => soma_out(27));
						
						
bit28: entity work.ulinha
		port map ( 	A => A(28),
						B => B(28),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_27,
						sel => sel,
						carry_out => carry_out_28,
						output => saida(28),
						soma_out => soma_out(28));

bit29: entity work.ulinha
		port map ( 	A => A(29),
						B => B(29),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_28,
						sel => sel,
						carry_out => carry_out_29,
						output => saida(29),
						soma_out => soma_out(29));
						
						
bit30: entity work.ulinha
		port map ( 	A => A(30),
						B => B(30),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_29,
						sel => sel,
						carry_out => carry_out_30,
						output => saida(30),
						soma_out => soma_out(30));

bit31: entity work.ulinha
		port map ( 	A => A(31),
						B => B(31),
						SLT_b => '0',
						InvA  => InvA,
						InvB  => InvB,
						carry_in => carry_out_30,
						sel => sel,
						carry_out => carry_out_31,
						output => saida(31),
						soma_out => soma_out(31));
						
						
overflow <= (carry_out_31 xor carry_out_30) xor soma_out(31);

flagZero <= not ( saida(0) or
						 saida(1) or
						 saida(2) or
						 saida(3) or
						 saida(4) or
						 saida(5) or
						 saida(6) or
						 saida(7) or
						 saida(8) or
						 saida(9) or
						 saida(10) or
						 saida(11) or
						 saida(12) or
						 saida(13) or
						 saida(14) or
						 saida(15) or
						 saida(16) or
						 saida(17) or
						 saida(18) or
						 saida(19) or
						 saida(20) or
						 saida(21) or
						 saida(22) or
						 saida(23) or
						 saida(24) or
						 saida(25) or
						 saida(26) or
						 saida(27) or
						 saida(28) or
						 saida(29) or
						 saida(30) or
						 saida(31));




		
  
		

end architecture;