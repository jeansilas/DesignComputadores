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
-- Generated on "10/11/2022 12:39:04"
                                                             
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
SIGNAL Fpga_reset_N : STD_LOGIC;
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
SIGNAL Sw : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT TopLevel
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	control : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
	Fpga_reset_N : IN STD_LOGIC;
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
	regA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Sw : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : TopLevel
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	control => control,
	Fpga_reset_N => Fpga_reset_N,
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
	regA => regA,
	Sw => Sw
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

-- Fpga_reset_N
t_prcs_Fpga_reset_N: PROCESS
BEGIN
	Fpga_reset_N <= '0';
WAIT;
END PROCESS t_prcs_Fpga_reset_N;
-- Sw[9]
t_prcs_Sw_9: PROCESS
BEGIN
	Sw(9) <= '0';
WAIT;
END PROCESS t_prcs_Sw_9;
-- Sw[8]
t_prcs_Sw_8: PROCESS
BEGIN
	Sw(8) <= '0';
WAIT;
END PROCESS t_prcs_Sw_8;
-- Sw[7]
t_prcs_Sw_7: PROCESS
BEGIN
	Sw(7) <= '0';
WAIT;
END PROCESS t_prcs_Sw_7;
-- Sw[6]
t_prcs_Sw_6: PROCESS
BEGIN
	Sw(6) <= '0';
WAIT;
END PROCESS t_prcs_Sw_6;
-- Sw[5]
t_prcs_Sw_5: PROCESS
BEGIN
	Sw(5) <= '0';
WAIT;
END PROCESS t_prcs_Sw_5;
-- Sw[4]
t_prcs_Sw_4: PROCESS
BEGIN
	Sw(4) <= '0';
WAIT;
END PROCESS t_prcs_Sw_4;
-- Sw[3]
t_prcs_Sw_3: PROCESS
BEGIN
	Sw(3) <= '0';
WAIT;
END PROCESS t_prcs_Sw_3;
-- Sw[2]
t_prcs_Sw_2: PROCESS
BEGIN
	Sw(2) <= '0';
WAIT;
END PROCESS t_prcs_Sw_2;
-- Sw[1]
t_prcs_Sw_1: PROCESS
BEGIN
	Sw(1) <= '0';
WAIT;
END PROCESS t_prcs_Sw_1;
-- Sw[0]
t_prcs_Sw_0: PROCESS
BEGIN
	Sw(0) <= '0';
WAIT;
END PROCESS t_prcs_Sw_0;

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '0';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		KEY(0) <= '1';
		WAIT FOR 10000 ps;
		KEY(0) <= '0';
		WAIT FOR 10000 ps;
	END LOOP;
	KEY(0) <= '1';
WAIT;
END PROCESS t_prcs_KEY_0;
END TopLevel_arch;
