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
-- Generated on "10/11/2022 11:54:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TopLevel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TopLevel_vhd_vec_tst IS
END TopLevel_vhd_vec_tst;
ARCHITECTURE TopLevel_arch OF TopLevel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL control : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL Hex0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Hex1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Hex2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Hex3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Hex4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Hex5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LedR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL PC : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL RAM_simu : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL regA : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT TopLevel
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	control : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
	Hex0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Hex1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Hex2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Hex3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Hex4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Hex5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LedR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	PC : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	RAM_simu : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	regA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : TopLevel
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	control => control,
	Hex0 => Hex0,
	Hex1 => Hex1,
	Hex2 => Hex2,
	Hex3 => Hex3,
	Hex4 => Hex4,
	Hex5 => Hex5,
	KEY => KEY,
	LedR => LedR,
	PC => PC,
	RAM_simu => RAM_simu,
	regA => regA
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 10000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		KEY(0) <= '0';
		WAIT FOR 10000 ps;
		KEY(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END TopLevel_arch;
