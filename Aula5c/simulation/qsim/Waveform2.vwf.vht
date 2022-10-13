-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/20/2022 12:06:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Ent1Aula3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Ent1Aula3_vhd_vec_tst IS
END Ent1Aula3_vhd_vec_tst;
ARCHITECTURE Ent1Aula3_arch OF Ent1Aula3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL Control_view : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL REGA : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Ent1Aula3
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	Control_view : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	PC_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	REGA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Ent1Aula3
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	Control_view => Control_view,
	KEY => KEY,
	PC_OUT => PC_OUT,
	REGA => REGA
	);

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 19
	LOOP
		KEY(0) <= '0';
		WAIT FOR 10000 ps;
		KEY(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END Ent1Aula3_arch;
