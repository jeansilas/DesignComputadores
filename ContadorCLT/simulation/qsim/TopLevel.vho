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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/11/2022 12:39:06"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TopLevel IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	Sw : IN std_logic_vector(9 DOWNTO 0);
	Fpga_reset_N : IN std_logic;
	PC : OUT std_logic_vector(8 DOWNTO 0);
	control : OUT std_logic_vector(12 DOWNTO 0);
	LedR : OUT std_logic_vector(9 DOWNTO 0);
	Hex0 : OUT std_logic_vector(6 DOWNTO 0);
	Hex1 : OUT std_logic_vector(6 DOWNTO 0);
	Hex2 : OUT std_logic_vector(6 DOWNTO 0);
	Hex3 : OUT std_logic_vector(6 DOWNTO 0);
	Hex4 : OUT std_logic_vector(6 DOWNTO 0);
	Hex5 : OUT std_logic_vector(6 DOWNTO 0);
	regA : OUT std_logic_vector(7 DOWNTO 0);
	RAM_simu : OUT std_logic_vector(8 DOWNTO 0)
	);
END TopLevel;

-- Design Ports Information
-- PC[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[8]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[4]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[5]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[6]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[8]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[9]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[11]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[12]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LedR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LedR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LedR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LedR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LedR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LedR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LedR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LedR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LedR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LedR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Hex5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- regA[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[7]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[8]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fpga_reset_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sw[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sw[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sw[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sw[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sw[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sw[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sw[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sw[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sw[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Sw[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Fpga_reset_N : std_logic;
SIGNAL ww_PC : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_control : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_LedR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_regA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAM_simu : std_logic_vector(8 DOWNTO 0);
SIGNAL \Fpga_reset_N~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \Sw[9]~input_o\ : std_logic;
SIGNAL \Sw[8]~input_o\ : std_logic;
SIGNAL \Sw[0]~input_o\ : std_logic;
SIGNAL \Sw[1]~input_o\ : std_logic;
SIGNAL \Sw[2]~input_o\ : std_logic;
SIGNAL \Sw[3]~input_o\ : std_logic;
SIGNAL \Sw[4]~input_o\ : std_logic;
SIGNAL \Sw[5]~input_o\ : std_logic;
SIGNAL \Sw[6]~input_o\ : std_logic;
SIGNAL \Sw[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \CPU|PC_item|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_JMP|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \CPU|PC_item|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_JMP|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \CPU|PC_item|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_JMP|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|PC_item|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_JMP|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \CPU|PC_item|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|saida[9]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_JMP|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|FLAG_zero_item|DOUT~q\ : std_logic;
SIGNAL \CPU|MUX_JMP|saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX_JMP|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|PC_item|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX_JMP|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_JMP|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX_JMP|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|Equal11~2_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|saida~1_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|Equal11~1_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|Equal11~0_combout\ : std_logic;
SIGNAL \RAM|ram~1065_combout\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|ram~1063_combout\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~1042_combout\ : std_logic;
SIGNAL \RAM|ram~1062_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~1064_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~1041_combout\ : std_logic;
SIGNAL \RAM|ram~1043_combout\ : std_logic;
SIGNAL \RAM|dado_out~0_combout\ : std_logic;
SIGNAL \RAM|dado_out~1_combout\ : std_logic;
SIGNAL \CPU|MUX_item|saida_MUX[1]~4_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|saida~2_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|Equal11~3_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|saida[4]~5_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REGA_item|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CPU|MUX_item|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA_item|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|saida[4]~3_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|saida[5]~4_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|ram~1067_combout\ : std_logic;
SIGNAL \RAM|ram~1040_combout\ : std_logic;
SIGNAL \CPU|MUX_item|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~2\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|REGA_item|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA_item|saida[1]~1_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|comb~0_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~1044_combout\ : std_logic;
SIGNAL \Data_out_MEM[2]~0_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~6\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|REGA_item|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA_item|saida[2]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~1047_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~1045_combout\ : std_logic;
SIGNAL \RAM|ram~43_q\ : std_logic;
SIGNAL \RAM|ram~1048_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~1046_combout\ : std_logic;
SIGNAL \RAM|ram~1049_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~10\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|REGA_item|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA_item|saida[3]~3_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|comb~1_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|comb~2_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|comb~3_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~44_q\ : std_logic;
SIGNAL \RAM|ram~20feeder_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~1050_combout\ : std_logic;
SIGNAL \RAM|ram~1066_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~14\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|REGA_item|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA_item|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~1053_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~1051_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~1052_combout\ : std_logic;
SIGNAL \RAM|ram~45_q\ : std_logic;
SIGNAL \RAM|ram~1054_combout\ : std_logic;
SIGNAL \RAM|ram~1055_combout\ : std_logic;
SIGNAL \CPU|MUX_item|saida_MUX[5]~1_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~18\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|REGA_item|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA_item|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~46_q\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~1056_combout\ : std_logic;
SIGNAL \CPU|MUX_item|saida_MUX[6]~2_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~22\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|REGA_item|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA_item|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~1058_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~1057_combout\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|ram~1059_combout\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|ram~1060_combout\ : std_logic;
SIGNAL \RAM|ram~1061_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~26\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|REGA_item|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA_item|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|REGA_item|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX2_item|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC_item|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX3_item|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX0_item|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX1_item|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC_item|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|ULA_item|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA_item|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA_item|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA_item|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA_item|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA_item|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA_item|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA_item|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REGA_item|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~1059_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1058_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1057_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \CPU|MUX_item|ALT_INV_saida_MUX[6]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1056_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|MUX_item|ALT_INV_saida_MUX[5]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1055_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1054_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1053_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1052_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1051_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1050_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1049_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1048_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1047_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1046_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1045_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1044_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1043_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1042_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1041_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_saida[4]~3_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_Equal11~3_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_Equal11~2_combout\ : std_logic;
SIGNAL \CPU|MUX_item|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_Equal11~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1040_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \CPU|MUX_JMP|ALT_INV_saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \CPU|FLAG_zero_item|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_saida[9]~0_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC_item|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_item|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1067_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1066_combout\ : std_logic;
SIGNAL \ALT_INV_Data_out_MEM[2]~0_combout\ : std_logic;
SIGNAL \CPU|MUX_item|ALT_INV_saida_MUX[1]~4_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_saida[4]~5_combout\ : std_logic;
SIGNAL \CPU|MUX_item|ALT_INV_saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1061_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1060_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_Sw <= Sw;
ww_Fpga_reset_N <= Fpga_reset_N;
PC <= ww_PC;
control <= ww_control;
LedR <= ww_LedR;
Hex0 <= ww_Hex0;
Hex1 <= ww_Hex1;
Hex2 <= ww_Hex2;
Hex3 <= ww_Hex3;
Hex4 <= ww_Hex4;
Hex5 <= ww_Hex5;
regA <= ww_regA;
RAM_simu <= ww_RAM_simu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2) <= NOT \LogicSevenSeg_item|HEX0_item|DOUT\(2);
\LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1) <= NOT \LogicSevenSeg_item|HEX0_item|DOUT\(1);
\LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3) <= NOT \LogicSevenSeg_item|HEX0_item|DOUT\(3);
\LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0) <= NOT \LogicSevenSeg_item|HEX0_item|DOUT\(0);
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\CPU|PC_item|ALT_INV_DOUT\(8) <= NOT \CPU|PC_item|DOUT\(8);
\CPU|PC_item|ALT_INV_DOUT\(7) <= NOT \CPU|PC_item|DOUT\(7);
\CPU|PC_item|ALT_INV_DOUT\(6) <= NOT \CPU|PC_item|DOUT\(6);
\CPU|PC_item|ALT_INV_DOUT\(4) <= NOT \CPU|PC_item|DOUT\(4);
\CPU|PC_item|ALT_INV_DOUT\(3) <= NOT \CPU|PC_item|DOUT\(3);
\CPU|PC_item|ALT_INV_DOUT\(2) <= NOT \CPU|PC_item|DOUT\(2);
\CPU|PC_item|ALT_INV_DOUT\(1) <= NOT \CPU|PC_item|DOUT\(1);
\CPU|PC_item|ALT_INV_DOUT\(0) <= NOT \CPU|PC_item|DOUT\(0);
\CPU|ULA_item|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA_item|Add0~29_sumout\;
\CPU|ULA_item|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA_item|Add0~25_sumout\;
\CPU|ULA_item|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA_item|Add0~21_sumout\;
\CPU|ULA_item|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA_item|Add0~17_sumout\;
\CPU|ULA_item|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA_item|Add0~13_sumout\;
\CPU|ULA_item|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA_item|Add0~9_sumout\;
\CPU|ULA_item|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA_item|Add0~5_sumout\;
\CPU|ULA_item|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA_item|Add0~1_sumout\;
\CPU|incrementaPC_item|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC_item|Add0~33_sumout\;
\CPU|incrementaPC_item|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC_item|Add0~29_sumout\;
\CPU|incrementaPC_item|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC_item|Add0~25_sumout\;
\CPU|incrementaPC_item|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC_item|Add0~21_sumout\;
\CPU|incrementaPC_item|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC_item|Add0~17_sumout\;
\CPU|incrementaPC_item|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC_item|Add0~13_sumout\;
\CPU|incrementaPC_item|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC_item|Add0~9_sumout\;
\CPU|incrementaPC_item|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC_item|Add0~5_sumout\;
\CPU|incrementaPC_item|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC_item|Add0~1_sumout\;
\CPU|REGA_item|ALT_INV_DOUT\(7) <= NOT \CPU|REGA_item|DOUT\(7);
\CPU|REGA_item|ALT_INV_DOUT\(6) <= NOT \CPU|REGA_item|DOUT\(6);
\CPU|REGA_item|ALT_INV_DOUT\(5) <= NOT \CPU|REGA_item|DOUT\(5);
\CPU|REGA_item|ALT_INV_DOUT\(4) <= NOT \CPU|REGA_item|DOUT\(4);
\CPU|REGA_item|ALT_INV_DOUT\(3) <= NOT \CPU|REGA_item|DOUT\(3);
\CPU|REGA_item|ALT_INV_DOUT\(2) <= NOT \CPU|REGA_item|DOUT\(2);
\CPU|REGA_item|ALT_INV_DOUT\(1) <= NOT \CPU|REGA_item|DOUT\(1);
\CPU|REGA_item|ALT_INV_DOUT\(0) <= NOT \CPU|REGA_item|DOUT\(0);
\RAM|ALT_INV_ram~1059_combout\ <= NOT \RAM|ram~1059_combout\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\RAM|ALT_INV_ram~1058_combout\ <= NOT \RAM|ram~1058_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~1057_combout\ <= NOT \RAM|ram~1057_combout\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\CPU|MUX_item|ALT_INV_saida_MUX[6]~2_combout\ <= NOT \CPU|MUX_item|saida_MUX[6]~2_combout\;
\RAM|ALT_INV_ram~1056_combout\ <= NOT \RAM|ram~1056_combout\;
\RAM|ALT_INV_ram~46_q\ <= NOT \RAM|ram~46_q\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\CPU|MUX_item|ALT_INV_saida_MUX[5]~1_combout\ <= NOT \CPU|MUX_item|saida_MUX[5]~1_combout\;
\RAM|ALT_INV_ram~1055_combout\ <= NOT \RAM|ram~1055_combout\;
\RAM|ALT_INV_ram~1054_combout\ <= NOT \RAM|ram~1054_combout\;
\RAM|ALT_INV_ram~45_q\ <= NOT \RAM|ram~45_q\;
\RAM|ALT_INV_ram~1053_combout\ <= NOT \RAM|ram~1053_combout\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~1052_combout\ <= NOT \RAM|ram~1052_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~1051_combout\ <= NOT \RAM|ram~1051_combout\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~1050_combout\ <= NOT \RAM|ram~1050_combout\;
\RAM|ALT_INV_ram~44_q\ <= NOT \RAM|ram~44_q\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~1049_combout\ <= NOT \RAM|ram~1049_combout\;
\RAM|ALT_INV_ram~1048_combout\ <= NOT \RAM|ram~1048_combout\;
\RAM|ALT_INV_ram~43_q\ <= NOT \RAM|ram~43_q\;
\RAM|ALT_INV_ram~1047_combout\ <= NOT \RAM|ram~1047_combout\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~1046_combout\ <= NOT \RAM|ram~1046_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~1045_combout\ <= NOT \RAM|ram~1045_combout\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~1044_combout\ <= NOT \RAM|ram~1044_combout\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~1043_combout\ <= NOT \RAM|ram~1043_combout\;
\RAM|ALT_INV_ram~1042_combout\ <= NOT \RAM|ram~1042_combout\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~1041_combout\ <= NOT \RAM|ram~1041_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\CPU|DECODER_item|ALT_INV_saida[4]~3_combout\ <= NOT \CPU|DECODER_item|saida[4]~3_combout\;
\CPU|DECODER_item|ALT_INV_saida~2_combout\ <= NOT \CPU|DECODER_item|saida~2_combout\;
\CPU|DECODER_item|ALT_INV_Equal11~3_combout\ <= NOT \CPU|DECODER_item|Equal11~3_combout\;
\CPU|DECODER_item|ALT_INV_Equal11~2_combout\ <= NOT \CPU|DECODER_item|Equal11~2_combout\;
\CPU|MUX_item|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX_item|saida_MUX[0]~0_combout\;
\RAM|ALT_INV_dado_out~1_combout\ <= NOT \RAM|dado_out~1_combout\;
\RAM|ALT_INV_dado_out~0_combout\ <= NOT \RAM|dado_out~0_combout\;
\CPU|DECODER_item|ALT_INV_Equal11~1_combout\ <= NOT \CPU|DECODER_item|Equal11~1_combout\;
\RAM|ALT_INV_ram~1040_combout\ <= NOT \RAM|ram~1040_combout\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|DECODER_item|ALT_INV_saida~1_combout\ <= NOT \CPU|DECODER_item|saida~1_combout\;
\CPU|DECODER_item|ALT_INV_Equal11~0_combout\ <= NOT \CPU|DECODER_item|Equal11~0_combout\;
\CPU|MUX_JMP|ALT_INV_saida_MUX[2]~0_combout\ <= NOT \CPU|MUX_JMP|saida_MUX[2]~0_combout\;
\CPU|FLAG_zero_item|ALT_INV_DOUT~q\ <= NOT \CPU|FLAG_zero_item|DOUT~q\;
\CPU|DECODER_item|ALT_INV_saida[9]~0_combout\ <= NOT \CPU|DECODER_item|saida[9]~0_combout\;
\LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(2) <= NOT \LogicSevenSeg_item|HEX3_item|DOUT\(2);
\LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1) <= NOT \LogicSevenSeg_item|HEX3_item|DOUT\(1);
\LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3) <= NOT \LogicSevenSeg_item|HEX3_item|DOUT\(3);
\LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0) <= NOT \LogicSevenSeg_item|HEX3_item|DOUT\(0);
\LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2) <= NOT \LogicSevenSeg_item|HEX2_item|DOUT\(2);
\LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1) <= NOT \LogicSevenSeg_item|HEX2_item|DOUT\(1);
\LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3) <= NOT \LogicSevenSeg_item|HEX2_item|DOUT\(3);
\LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0) <= NOT \LogicSevenSeg_item|HEX2_item|DOUT\(0);
\LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2) <= NOT \LogicSevenSeg_item|HEX1_item|DOUT\(2);
\LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1) <= NOT \LogicSevenSeg_item|HEX1_item|DOUT\(1);
\LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3) <= NOT \LogicSevenSeg_item|HEX1_item|DOUT\(3);
\LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0) <= NOT \LogicSevenSeg_item|HEX1_item|DOUT\(0);
\CPU|PC_item|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC_item|DOUT[5]~DUPLICATE_q\;
\CPU|PC_item|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC_item|DOUT[4]~DUPLICATE_q\;
\CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC_item|DOUT[3]~DUPLICATE_q\;
\CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC_item|DOUT[2]~DUPLICATE_q\;
\CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC_item|DOUT[1]~DUPLICATE_q\;
\CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC_item|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\RAM|ALT_INV_ram~1067_combout\ <= NOT \RAM|ram~1067_combout\;
\RAM|ALT_INV_ram~1066_combout\ <= NOT \RAM|ram~1066_combout\;
\ALT_INV_Data_out_MEM[2]~0_combout\ <= NOT \Data_out_MEM[2]~0_combout\;
\CPU|MUX_item|ALT_INV_saida_MUX[1]~4_combout\ <= NOT \CPU|MUX_item|saida_MUX[1]~4_combout\;
\CPU|DECODER_item|ALT_INV_saida[4]~5_combout\ <= NOT \CPU|DECODER_item|saida[4]~5_combout\;
\CPU|MUX_item|ALT_INV_saida_MUX[0]~3_combout\ <= NOT \CPU|MUX_item|saida_MUX[0]~3_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\RAM|ALT_INV_ram~1061_combout\ <= NOT \RAM|ram~1061_combout\;
\RAM|ALT_INV_ram~1060_combout\ <= NOT \RAM|ram~1060_combout\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;

-- Location: IOOBUF_X40_Y45_N93
\PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC_item|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC(0));

-- Location: IOOBUF_X40_Y45_N42
\PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC_item|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC(1));

-- Location: IOOBUF_X54_Y14_N45
\PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC_item|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC(2));

-- Location: IOOBUF_X54_Y14_N79
\PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC_item|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC(3));

-- Location: IOOBUF_X54_Y14_N96
\PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC_item|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC(4));

-- Location: IOOBUF_X54_Y15_N56
\PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC_item|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC(5));

-- Location: IOOBUF_X36_Y45_N2
\PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC_item|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC(6));

-- Location: IOOBUF_X54_Y17_N56
\PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC_item|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC(7));

-- Location: IOOBUF_X54_Y15_N39
\PC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC_item|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC(8));

-- Location: IOOBUF_X44_Y45_N2
\control[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_control(0));

-- Location: IOOBUF_X43_Y45_N36
\control[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_control(1));

-- Location: IOOBUF_X10_Y45_N19
\control[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_control(2));

-- Location: IOOBUF_X54_Y20_N5
\control[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_control(3));

-- Location: IOOBUF_X52_Y45_N2
\control[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_control(4));

-- Location: IOOBUF_X48_Y45_N19
\control[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_control(5));

-- Location: IOOBUF_X40_Y45_N76
\control[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_control(6));

-- Location: IOOBUF_X12_Y0_N19
\control[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_control(7));

-- Location: IOOBUF_X43_Y45_N2
\control[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_control(8));

-- Location: IOOBUF_X12_Y0_N2
\control[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~7_combout\,
	devoe => ww_devoe,
	o => ww_control(9));

-- Location: IOOBUF_X36_Y45_N19
\control[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => ww_control(10));

-- Location: IOOBUF_X38_Y45_N2
\control[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_control(11));

-- Location: IOOBUF_X44_Y45_N53
\control[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_control(12));

-- Location: IOOBUF_X0_Y18_N79
\LedR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LedR(0));

-- Location: IOOBUF_X0_Y18_N96
\LedR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LedR(1));

-- Location: IOOBUF_X0_Y18_N62
\LedR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LedR(2));

-- Location: IOOBUF_X0_Y18_N45
\LedR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LedR(3));

-- Location: IOOBUF_X0_Y19_N39
\LedR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LedR(4));

-- Location: IOOBUF_X0_Y19_N56
\LedR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LedR(5));

-- Location: IOOBUF_X0_Y19_N5
\LedR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LedR(6));

-- Location: IOOBUF_X0_Y19_N22
\LedR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LedR(7));

-- Location: IOOBUF_X0_Y20_N39
\LedR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LedR(8));

-- Location: IOOBUF_X0_Y20_N56
\LedR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LedR(9));

-- Location: IOOBUF_X52_Y0_N53
\Hex0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Hex0(0));

-- Location: IOOBUF_X51_Y0_N36
\Hex0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_Hex0(1));

-- Location: IOOBUF_X48_Y0_N76
\Hex0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_Hex0(2));

-- Location: IOOBUF_X50_Y0_N36
\Hex0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_Hex0(3));

-- Location: IOOBUF_X48_Y0_N93
\Hex0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_Hex0(4));

-- Location: IOOBUF_X50_Y0_N53
\Hex0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_Hex0(5));

-- Location: IOOBUF_X46_Y0_N36
\Hex0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_Hex0(6));

-- Location: IOOBUF_X44_Y0_N36
\Hex1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Hex1(0));

-- Location: IOOBUF_X40_Y0_N93
\Hex1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_Hex1(1));

-- Location: IOOBUF_X44_Y0_N53
\Hex1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_Hex1(2));

-- Location: IOOBUF_X43_Y0_N36
\Hex1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_Hex1(3));

-- Location: IOOBUF_X38_Y0_N36
\Hex1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_Hex1(4));

-- Location: IOOBUF_X43_Y0_N53
\Hex1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_Hex1(5));

-- Location: IOOBUF_X51_Y0_N53
\Hex1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_Hex1(6));

-- Location: IOOBUF_X48_Y0_N42
\Hex2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Hex2(0));

-- Location: IOOBUF_X38_Y0_N53
\Hex2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_Hex2(1));

-- Location: IOOBUF_X22_Y0_N53
\Hex2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_Hex2(2));

-- Location: IOOBUF_X36_Y0_N19
\Hex2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_Hex2(3));

-- Location: IOOBUF_X38_Y0_N19
\Hex2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_Hex2(4));

-- Location: IOOBUF_X46_Y0_N53
\Hex2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_Hex2(5));

-- Location: IOOBUF_X40_Y0_N76
\Hex2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_Hex2(6));

-- Location: IOOBUF_X40_Y0_N59
\Hex3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Hex3(0));

-- Location: IOOBUF_X46_Y0_N2
\Hex3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_Hex3(1));

-- Location: IOOBUF_X40_Y0_N42
\Hex3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_Hex3(2));

-- Location: IOOBUF_X46_Y0_N19
\Hex3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_Hex3(3));

-- Location: IOOBUF_X52_Y0_N2
\Hex3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_Hex3(4));

-- Location: IOOBUF_X51_Y0_N2
\Hex3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_Hex3(5));

-- Location: IOOBUF_X51_Y0_N19
\Hex3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_Hex3(6));

-- Location: IOOBUF_X52_Y0_N36
\Hex4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Hex4(0));

-- Location: IOOBUF_X48_Y0_N59
\Hex4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Hex4(1));

-- Location: IOOBUF_X44_Y0_N19
\Hex4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Hex4(2));

-- Location: IOOBUF_X52_Y0_N19
\Hex4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Hex4(3));

-- Location: IOOBUF_X43_Y0_N2
\Hex4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Hex4(4));

-- Location: IOOBUF_X36_Y0_N2
\Hex4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Hex4(5));

-- Location: IOOBUF_X29_Y0_N19
\Hex4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Hex4(6));

-- Location: IOOBUF_X29_Y0_N2
\Hex5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Hex5(0));

-- Location: IOOBUF_X22_Y0_N19
\Hex5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Hex5(1));

-- Location: IOOBUF_X43_Y0_N19
\Hex5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Hex5(2));

-- Location: IOOBUF_X50_Y0_N19
\Hex5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Hex5(3));

-- Location: IOOBUF_X0_Y21_N56
\Hex5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Hex5(4));

-- Location: IOOBUF_X0_Y21_N39
\Hex5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Hex5(5));

-- Location: IOOBUF_X44_Y0_N2
\Hex5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Hex5(6));

-- Location: IOOBUF_X54_Y14_N62
\regA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA_item|DOUT\(0),
	devoe => ww_devoe,
	o => ww_regA(0));

-- Location: IOOBUF_X14_Y0_N53
\regA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA_item|DOUT\(1),
	devoe => ww_devoe,
	o => ww_regA(1));

-- Location: IOOBUF_X38_Y45_N36
\regA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA_item|DOUT\(2),
	devoe => ww_devoe,
	o => ww_regA(2));

-- Location: IOOBUF_X38_Y45_N19
\regA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA_item|DOUT\(3),
	devoe => ww_devoe,
	o => ww_regA(3));

-- Location: IOOBUF_X12_Y0_N53
\regA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA_item|DOUT\(4),
	devoe => ww_devoe,
	o => ww_regA(4));

-- Location: IOOBUF_X54_Y16_N5
\regA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA_item|DOUT\(5),
	devoe => ww_devoe,
	o => ww_regA(5));

-- Location: IOOBUF_X43_Y45_N53
\regA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA_item|DOUT\(6),
	devoe => ww_devoe,
	o => ww_regA(6));

-- Location: IOOBUF_X12_Y0_N36
\regA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA_item|DOUT\(7),
	devoe => ww_devoe,
	o => ww_regA(7));

-- Location: IOOBUF_X44_Y45_N36
\RAM_simu[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_RAM_simu(0));

-- Location: IOOBUF_X44_Y45_N19
\RAM_simu[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_RAM_simu(1));

-- Location: IOOBUF_X12_Y45_N36
\RAM_simu[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_simu(2));

-- Location: IOOBUF_X20_Y45_N19
\RAM_simu[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_simu(3));

-- Location: IOOBUF_X22_Y45_N19
\RAM_simu[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_simu(4));

-- Location: IOOBUF_X43_Y45_N19
\RAM_simu[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_RAM_simu(5));

-- Location: IOOBUF_X40_Y45_N59
\RAM_simu[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_RAM_simu(6));

-- Location: IOOBUF_X52_Y45_N19
\RAM_simu[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_simu(7));

-- Location: IOOBUF_X48_Y45_N53
\RAM_simu[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_RAM_simu(8));

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LABCELL_X10_Y1_N54
\gravar:detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \gravar:detectorSub0|saidaQ~0_combout\);

-- Location: FF_X10_Y1_N55
\gravar:detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \gravar:detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gravar:detectorSub0|saidaQ~q\);

-- Location: LABCELL_X39_Y1_N18
\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL(( !\gravar:detectorSub0|saidaQ~q\ & ( !\KEY[0]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

-- Location: FF_X41_Y1_N10
\CPU|PC_item|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N39
\CPU|incrementaPC_item|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~13_sumout\ = SUM(( \CPU|PC_item|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~10\ ))
-- \CPU|incrementaPC_item|Add0~14\ = CARRY(( \CPU|PC_item|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|incrementaPC_item|Add0~10\,
	sumout => \CPU|incrementaPC_item|Add0~13_sumout\,
	cout => \CPU|incrementaPC_item|Add0~14\);

-- Location: LABCELL_X40_Y1_N42
\CPU|incrementaPC_item|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~17_sumout\ = SUM(( \CPU|PC_item|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~14\ ))
-- \CPU|incrementaPC_item|Add0~18\ = CARRY(( \CPU|PC_item|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC_item|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|incrementaPC_item|Add0~14\,
	sumout => \CPU|incrementaPC_item|Add0~17_sumout\,
	cout => \CPU|incrementaPC_item|Add0~18\);

-- Location: MLABCELL_X42_Y1_N3
\CPU|MUX_JMP|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_JMP|saida_MUX[4]~5_combout\ = ( !\CPU|DECODER_item|saida[9]~0_combout\ & ( (\CPU|incrementaPC_item|Add0~17_sumout\ & !\CPU|MUX_JMP|saida_MUX[2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|incrementaPC_item|ALT_INV_Add0~17_sumout\,
	datad => \CPU|MUX_JMP|ALT_INV_saida_MUX[2]~0_combout\,
	dataf => \CPU|DECODER_item|ALT_INV_saida[9]~0_combout\,
	combout => \CPU|MUX_JMP|saida_MUX[4]~5_combout\);

-- Location: FF_X42_Y1_N5
\CPU|PC_item|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X41_Y1_N43
\CPU|PC_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(1));

-- Location: LABCELL_X41_Y1_N0
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\CPU|PC_item|DOUT[5]~DUPLICATE_q\ & ( \CPU|PC_item|DOUT\(1) & ( (!\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT\(2) $ (!\CPU|PC_item|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\CPU|PC_item|DOUT[5]~DUPLICATE_q\ & ( !\CPU|PC_item|DOUT\(1) & ( (\CPU|PC_item|DOUT\(2) & (!\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT[4]~DUPLICATE_q\ & !\CPU|PC_item|DOUT[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(2),
	datab => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \CPU|PC_item|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~4_combout\);

-- Location: LABCELL_X40_Y1_N45
\CPU|incrementaPC_item|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~21_sumout\ = SUM(( \CPU|PC_item|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~18\ ))
-- \CPU|incrementaPC_item|Add0~22\ = CARRY(( \CPU|PC_item|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC_item|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|incrementaPC_item|Add0~18\,
	sumout => \CPU|incrementaPC_item|Add0~21_sumout\,
	cout => \CPU|incrementaPC_item|Add0~22\);

-- Location: MLABCELL_X42_Y1_N0
\CPU|MUX_JMP|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_JMP|saida_MUX[5]~6_combout\ = ( \CPU|incrementaPC_item|Add0~21_sumout\ & ( (!\CPU|DECODER_item|saida[9]~0_combout\ & ((!\CPU|MUX_JMP|saida_MUX[2]~0_combout\) # (\ROM|memROM~4_combout\))) ) ) # ( !\CPU|incrementaPC_item|Add0~21_sumout\ & ( 
-- (!\CPU|DECODER_item|saida[9]~0_combout\ & (\CPU|MUX_JMP|saida_MUX[2]~0_combout\ & \ROM|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida[9]~0_combout\,
	datab => \CPU|MUX_JMP|ALT_INV_saida_MUX[2]~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \CPU|incrementaPC_item|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX_JMP|saida_MUX[5]~6_combout\);

-- Location: FF_X42_Y1_N2
\CPU|PC_item|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X41_Y1_N7
\CPU|PC_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(3));

-- Location: FF_X42_Y1_N4
\CPU|PC_item|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(4));

-- Location: FF_X41_Y1_N46
\CPU|PC_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(0));

-- Location: MLABCELL_X42_Y1_N42
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\CPU|PC_item|DOUT\(1) & ( !\CPU|PC_item|DOUT\(0) & ( (!\CPU|PC_item|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT[2]~DUPLICATE_q\ & (\CPU|PC_item|DOUT\(3) & !\CPU|PC_item|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT\(3),
	datad => \CPU|PC_item|ALT_INV_DOUT\(4),
	datae => \CPU|PC_item|ALT_INV_DOUT\(1),
	dataf => \CPU|PC_item|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~2_combout\);

-- Location: LABCELL_X40_Y1_N30
\CPU|incrementaPC_item|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~1_sumout\ = SUM(( \CPU|PC_item|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC_item|Add0~2\ = CARRY(( \CPU|PC_item|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \CPU|incrementaPC_item|Add0~1_sumout\,
	cout => \CPU|incrementaPC_item|Add0~2\);

-- Location: LABCELL_X40_Y1_N33
\CPU|incrementaPC_item|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~5_sumout\ = SUM(( \CPU|PC_item|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~2\ ))
-- \CPU|incrementaPC_item|Add0~6\ = CARRY(( \CPU|PC_item|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|incrementaPC_item|Add0~2\,
	sumout => \CPU|incrementaPC_item|Add0~5_sumout\,
	cout => \CPU|incrementaPC_item|Add0~6\);

-- Location: LABCELL_X41_Y1_N42
\CPU|MUX_JMP|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_JMP|saida_MUX[1]~2_combout\ = ( \CPU|incrementaPC_item|Add0~5_sumout\ & ( (!\CPU|DECODER_item|saida[9]~0_combout\ & ((!\CPU|MUX_JMP|saida_MUX[2]~0_combout\) # (\ROM|memROM~2_combout\))) ) ) # ( !\CPU|incrementaPC_item|Add0~5_sumout\ & ( 
-- (\CPU|MUX_JMP|saida_MUX[2]~0_combout\ & (\ROM|memROM~2_combout\ & !\CPU|DECODER_item|saida[9]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_JMP|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \CPU|DECODER_item|ALT_INV_saida[9]~0_combout\,
	dataf => \CPU|incrementaPC_item|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX_JMP|saida_MUX[1]~2_combout\);

-- Location: FF_X41_Y1_N44
\CPU|PC_item|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N36
\CPU|incrementaPC_item|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~9_sumout\ = SUM(( \CPU|PC_item|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~6\ ))
-- \CPU|incrementaPC_item|Add0~10\ = CARRY(( \CPU|PC_item|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|incrementaPC_item|Add0~6\,
	sumout => \CPU|incrementaPC_item|Add0~9_sumout\,
	cout => \CPU|incrementaPC_item|Add0~10\);

-- Location: LABCELL_X41_Y1_N6
\CPU|MUX_JMP|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_JMP|saida_MUX[3]~4_combout\ = ( \CPU|incrementaPC_item|Add0~13_sumout\ & ( (!\CPU|DECODER_item|saida[9]~0_combout\ & !\CPU|MUX_JMP|saida_MUX[2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER_item|ALT_INV_saida[9]~0_combout\,
	datac => \CPU|MUX_JMP|ALT_INV_saida_MUX[2]~0_combout\,
	dataf => \CPU|incrementaPC_item|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX_JMP|saida_MUX[3]~4_combout\);

-- Location: FF_X41_Y1_N8
\CPU|PC_item|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N0
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( !\CPU|PC_item|DOUT\(4) & ( \CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & (\CPU|PC_item|DOUT\(2) & !\CPU|PC_item|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( 
-- !\CPU|PC_item|DOUT\(4) & ( !\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT\(2) & !\CPU|PC_item|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|PC_item|ALT_INV_DOUT\(4),
	dataf => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~9_combout\);

-- Location: LABCELL_X40_Y1_N24
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( !\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & ( \CPU|PC_item|DOUT[2]~DUPLICATE_q\ & ( (\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT[5]~DUPLICATE_q\ & !\CPU|PC_item|DOUT[4]~DUPLICATE_q\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~12_combout\);

-- Location: LABCELL_X40_Y1_N12
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( \CPU|PC_item|DOUT[0]~DUPLICATE_q\ ) ) # ( !\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( \CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ( (((\CPU|PC_item|DOUT[5]~DUPLICATE_q\) # (\CPU|PC_item|DOUT\(4))) # 
-- (\CPU|PC_item|DOUT[1]~DUPLICATE_q\)) # (\CPU|PC_item|DOUT\(2)) ) ) ) # ( \CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( !\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ( (((\CPU|PC_item|DOUT[5]~DUPLICATE_q\) # (\CPU|PC_item|DOUT\(4))) # (\CPU|PC_item|DOUT[1]~DUPLICATE_q\)) # 
-- (\CPU|PC_item|DOUT\(2)) ) ) ) # ( !\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( !\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ( (((!\CPU|PC_item|DOUT\(2) & \CPU|PC_item|DOUT[1]~DUPLICATE_q\)) # (\CPU|PC_item|DOUT[5]~DUPLICATE_q\)) # (\CPU|PC_item|DOUT\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111111111111011111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(2),
	datab => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT\(4),
	datad => \CPU|PC_item|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~11_combout\);

-- Location: LABCELL_X39_Y1_N21
\CPU|DECODER_item|saida[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|saida[9]~0_combout\ = ( !\ROM|memROM~7_combout\ & ( (\ROM|memROM~9_combout\ & (\ROM|memROM~12_combout\ & \ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECODER_item|saida[9]~0_combout\);

-- Location: LABCELL_X41_Y1_N9
\CPU|MUX_JMP|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_JMP|saida_MUX[2]~3_combout\ = ( \CPU|incrementaPC_item|Add0~9_sumout\ & ( (!\CPU|MUX_JMP|saida_MUX[2]~0_combout\ & !\CPU|DECODER_item|saida[9]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_JMP|ALT_INV_saida_MUX[2]~0_combout\,
	datab => \CPU|DECODER_item|ALT_INV_saida[9]~0_combout\,
	dataf => \CPU|incrementaPC_item|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX_JMP|saida_MUX[2]~3_combout\);

-- Location: FF_X41_Y1_N11
\CPU|PC_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(2));

-- Location: LABCELL_X40_Y1_N6
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( !\CPU|PC_item|DOUT[5]~DUPLICATE_q\ & ( \CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT\(4) & (!\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC_item|DOUT\(2)) # (!\CPU|PC_item|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\CPU|PC_item|DOUT[5]~DUPLICATE_q\ & ( !\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC_item|DOUT\(2) & (!\CPU|PC_item|DOUT\(4) & !\CPU|PC_item|DOUT[3]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000011100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(2),
	datab => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT\(4),
	datad => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|PC_item|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~7_combout\);

-- Location: FF_X39_Y1_N26
\CPU|FLAG_zero_item|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|FLAG_zero_item|DOUT~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAG_zero_item|DOUT~q\);

-- Location: LABCELL_X39_Y1_N24
\CPU|MUX_JMP|saida_MUX[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_JMP|saida_MUX[2]~0_combout\ = ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~7_combout\ & (\ROM|memROM~11_combout\ & !\ROM|memROM~9_combout\)) ) ) # ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~9_combout\ & 
-- ((!\ROM|memROM~7_combout\) # (\CPU|FLAG_zero_item|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010000000110000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|FLAG_zero_item|ALT_INV_DOUT~q\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|MUX_JMP|saida_MUX[2]~0_combout\);

-- Location: LABCELL_X41_Y1_N48
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ( \CPU|PC_item|DOUT\(1) ) ) # ( !\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ( \CPU|PC_item|DOUT\(1) & ( (((!\CPU|PC_item|DOUT\(2)) # (\CPU|PC_item|DOUT[5]~DUPLICATE_q\)) # 
-- (\CPU|PC_item|DOUT[3]~DUPLICATE_q\)) # (\CPU|PC_item|DOUT[4]~DUPLICATE_q\) ) ) ) # ( \CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC_item|DOUT\(1) & ( ((\CPU|PC_item|DOUT[5]~DUPLICATE_q\) # (\CPU|PC_item|DOUT[3]~DUPLICATE_q\)) # 
-- (\CPU|PC_item|DOUT[4]~DUPLICATE_q\) ) ) ) # ( !\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC_item|DOUT\(1) & ( (((\CPU|PC_item|DOUT\(2)) # (\CPU|PC_item|DOUT[5]~DUPLICATE_q\)) # (\CPU|PC_item|DOUT[3]~DUPLICATE_q\)) # (\CPU|PC_item|DOUT[4]~DUPLICATE_q\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111110111111111111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT\(2),
	datae => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X41_Y1_N45
\CPU|MUX_JMP|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_JMP|saida_MUX[0]~1_combout\ = ( \CPU|incrementaPC_item|Add0~1_sumout\ & ( (!\CPU|DECODER_item|saida[9]~0_combout\ & ((!\CPU|MUX_JMP|saida_MUX[2]~0_combout\) # (!\ROM|memROM~1_combout\))) ) ) # ( !\CPU|incrementaPC_item|Add0~1_sumout\ & ( 
-- (\CPU|MUX_JMP|saida_MUX[2]~0_combout\ & (!\ROM|memROM~1_combout\ & !\CPU|DECODER_item|saida[9]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_JMP|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|DECODER_item|ALT_INV_saida[9]~0_combout\,
	dataf => \CPU|incrementaPC_item|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUX_JMP|saida_MUX[0]~1_combout\);

-- Location: FF_X41_Y1_N47
\CPU|PC_item|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X42_Y1_N1
\CPU|PC_item|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(5));

-- Location: MLABCELL_X42_Y1_N51
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \CPU|PC_item|DOUT\(1) & ( \CPU|PC_item|DOUT\(0) & ( (!\CPU|PC_item|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT\(4) & (!\CPU|PC_item|DOUT[2]~DUPLICATE_q\ & !\CPU|PC_item|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|PC_item|ALT_INV_DOUT\(4),
	datac => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT\(3),
	datae => \CPU|PC_item|ALT_INV_DOUT\(1),
	dataf => \CPU|PC_item|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X40_Y1_N48
\CPU|incrementaPC_item|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~25_sumout\ = SUM(( \CPU|PC_item|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~22\ ))
-- \CPU|incrementaPC_item|Add0~26\ = CARRY(( \CPU|PC_item|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC_item|Add0~22\,
	sumout => \CPU|incrementaPC_item|Add0~25_sumout\,
	cout => \CPU|incrementaPC_item|Add0~26\);

-- Location: LABCELL_X39_Y1_N6
\CPU|MUX_JMP|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_JMP|saida_MUX[6]~7_combout\ = ( !\CPU|DECODER_item|saida[9]~0_combout\ & ( (!\CPU|MUX_JMP|saida_MUX[2]~0_combout\ & ((\CPU|incrementaPC_item|Add0~25_sumout\))) # (\CPU|MUX_JMP|saida_MUX[2]~0_combout\ & (\ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \CPU|incrementaPC_item|ALT_INV_Add0~25_sumout\,
	datad => \CPU|MUX_JMP|ALT_INV_saida_MUX[2]~0_combout\,
	dataf => \CPU|DECODER_item|ALT_INV_saida[9]~0_combout\,
	combout => \CPU|MUX_JMP|saida_MUX[6]~7_combout\);

-- Location: FF_X39_Y1_N7
\CPU|PC_item|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(6));

-- Location: LABCELL_X40_Y1_N51
\CPU|incrementaPC_item|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~29_sumout\ = SUM(( \CPU|PC_item|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~26\ ))
-- \CPU|incrementaPC_item|Add0~30\ = CARRY(( \CPU|PC_item|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC_item|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC_item|Add0~26\,
	sumout => \CPU|incrementaPC_item|Add0~29_sumout\,
	cout => \CPU|incrementaPC_item|Add0~30\);

-- Location: LABCELL_X39_Y1_N48
\CPU|MUX_JMP|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_JMP|saida_MUX[7]~8_combout\ = ( !\CPU|DECODER_item|saida[9]~0_combout\ & ( (\CPU|incrementaPC_item|Add0~29_sumout\ & !\CPU|MUX_JMP|saida_MUX[2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|incrementaPC_item|ALT_INV_Add0~29_sumout\,
	datad => \CPU|MUX_JMP|ALT_INV_saida_MUX[2]~0_combout\,
	dataf => \CPU|DECODER_item|ALT_INV_saida[9]~0_combout\,
	combout => \CPU|MUX_JMP|saida_MUX[7]~8_combout\);

-- Location: FF_X39_Y1_N49
\CPU|PC_item|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(7));

-- Location: LABCELL_X40_Y1_N54
\CPU|incrementaPC_item|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~33_sumout\ = SUM(( \CPU|PC_item|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC_item|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC_item|Add0~30\,
	sumout => \CPU|incrementaPC_item|Add0~33_sumout\);

-- Location: LABCELL_X39_Y1_N54
\CPU|MUX_JMP|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_JMP|saida_MUX[8]~9_combout\ = ( !\CPU|DECODER_item|saida[9]~0_combout\ & ( (!\CPU|MUX_JMP|saida_MUX[2]~0_combout\ & ((\CPU|incrementaPC_item|Add0~33_sumout\))) # (\CPU|MUX_JMP|saida_MUX[2]~0_combout\ & (\ROM|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \CPU|MUX_JMP|ALT_INV_saida_MUX[2]~0_combout\,
	datad => \CPU|incrementaPC_item|ALT_INV_Add0~33_sumout\,
	dataf => \CPU|DECODER_item|ALT_INV_saida[9]~0_combout\,
	combout => \CPU|MUX_JMP|saida_MUX[8]~9_combout\);

-- Location: FF_X39_Y1_N55
\CPU|PC_item|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX_JMP|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(8));

-- Location: LABCELL_X41_Y1_N27
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \CPU|PC_item|DOUT\(2) & ( (!\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & !\CPU|PC_item|DOUT[0]~DUPLICATE_q\) ) ) # ( !\CPU|PC_item|DOUT\(2) & ( (!\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & ((!\CPU|PC_item|DOUT[3]~DUPLICATE_q\) # 
-- (!\CPU|PC_item|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~10_combout\);

-- Location: LABCELL_X41_Y1_N12
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \CPU|PC_item|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT\(3) & (!\CPU|PC_item|DOUT\(2) $ (!\CPU|PC_item|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT\(3) & 
-- ((\CPU|PC_item|DOUT[0]~DUPLICATE_q\) # (\CPU|PC_item|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datac => \CPU|PC_item|ALT_INV_DOUT\(3),
	datad => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X40_Y1_N18
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \CPU|PC_item|DOUT[2]~DUPLICATE_q\ & ( (\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT\(1) & !\CPU|PC_item|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\CPU|PC_item|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & 
-- (!\CPU|PC_item|DOUT\(1) & \CPU|PC_item|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT\(1),
	datad => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~8_combout\);

-- Location: MLABCELL_X42_Y1_N57
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\CPU|PC_item|DOUT\(4) & ( !\CPU|PC_item|DOUT[5]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC_item|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X39_Y1_N51
\CPU|DECODER_item|Equal11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|Equal11~2_combout\ = ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~0_combout\) # ((!\ROM|memROM~10_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110000000111111111000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODER_item|Equal11~2_combout\);

-- Location: LABCELL_X41_Y1_N15
\CPU|DECODER_item|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|saida~1_combout\ = ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~9_combout\ & \ROM|memROM~7_combout\)) ) ) # ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~9_combout\ & 
-- !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODER_item|saida~1_combout\);

-- Location: LABCELL_X41_Y1_N36
\CPU|DECODER_item|Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|Equal11~1_combout\ = ( !\ROM|memROM~6_combout\ & ( (\ROM|memROM~10_combout\ & (\ROM|memROM~0_combout\ & (!\ROM|memROM~8_combout\ & !\ROM|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \CPU|DECODER_item|Equal11~1_combout\);

-- Location: LABCELL_X39_Y1_N15
\CPU|DECODER_item|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|Equal11~0_combout\ = ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~6_combout\ & \ROM|memROM~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODER_item|Equal11~0_combout\);

-- Location: LABCELL_X39_Y1_N33
\RAM|ram~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1065_combout\ = ( !\ROM|memROM~4_combout\ & ( \CPU|DECODER_item|Equal11~0_combout\ & ( (\ROM|memROM~2_combout\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \CPU|DECODER_item|ALT_INV_Equal11~0_combout\,
	combout => \RAM|ram~1065_combout\);

-- Location: FF_X41_Y1_N22
\RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~41_q\);

-- Location: MLABCELL_X42_Y1_N24
\RAM|ram~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1063_combout\ = ( \ROM|memROM~1_combout\ & ( (!\ROM|memROM~4_combout\ & (\ROM|memROM~2_combout\ & \CPU|DECODER_item|Equal11~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datad => \CPU|DECODER_item|ALT_INV_Equal11~0_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~1063_combout\);

-- Location: FF_X42_Y1_N46
\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

-- Location: LABCELL_X41_Y1_N57
\RAM|ram~1042\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1042_combout\ = ( \ROM|memROM~1_combout\ & ( (!\ROM|memROM~5_combout\ & \RAM|ram~33_q\) ) ) # ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~5_combout\ & \RAM|ram~41_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~41_q\,
	datad => \RAM|ALT_INV_ram~33_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~1042_combout\);

-- Location: LABCELL_X40_Y2_N21
\RAM|ram~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1062_combout\ = ( !\ROM|memROM~4_combout\ & ( \CPU|DECODER_item|Equal11~0_combout\ & ( (!\ROM|memROM~2_combout\ & \ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \CPU|DECODER_item|ALT_INV_Equal11~0_combout\,
	combout => \RAM|ram~1062_combout\);

-- Location: FF_X40_Y1_N10
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: LABCELL_X39_Y1_N39
\RAM|ram~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1064_combout\ = ( \CPU|DECODER_item|Equal11~0_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \CPU|DECODER_item|ALT_INV_Equal11~0_combout\,
	combout => \RAM|ram~1064_combout\);

-- Location: FF_X41_Y1_N53
\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

-- Location: LABCELL_X41_Y1_N24
\RAM|ram~1041\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1041_combout\ = ( \RAM|ram~25_q\ & ( (!\ROM|memROM~5_combout\ & ((!\ROM|memROM~1_combout\) # (\RAM|ram~17_q\))) ) ) # ( !\RAM|ram~25_q\ & ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~5_combout\ & \RAM|ram~17_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~17_q\,
	dataf => \RAM|ALT_INV_ram~25_q\,
	combout => \RAM|ram~1041_combout\);

-- Location: MLABCELL_X42_Y1_N27
\RAM|ram~1043\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1043_combout\ = ( \RAM|ram~1041_combout\ & ( (!\ROM|memROM~4_combout\ & ((!\ROM|memROM~2_combout\) # (\RAM|ram~1042_combout\))) ) ) # ( !\RAM|ram~1041_combout\ & ( (\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & \RAM|ram~1042_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~1042_combout\,
	dataf => \RAM|ALT_INV_ram~1041_combout\,
	combout => \RAM|ram~1043_combout\);

-- Location: LABCELL_X40_Y1_N27
\RAM|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~0_combout\ = ( !\CPU|PC_item|DOUT\(2) & ( \CPU|PC_item|DOUT\(1) & ( (\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT[4]~DUPLICATE_q\ & !\CPU|PC_item|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|PC_item|ALT_INV_DOUT\(2),
	dataf => \CPU|PC_item|ALT_INV_DOUT\(1),
	combout => \RAM|dado_out~0_combout\);

-- Location: MLABCELL_X42_Y1_N9
\RAM|dado_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~1_combout\ = ( \RAM|dado_out~0_combout\ & ( !\ROM|memROM~4_combout\ ) ) # ( !\RAM|dado_out~0_combout\ & ( (!\ROM|memROM~4_combout\ & \ROM|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \RAM|ALT_INV_dado_out~0_combout\,
	combout => \RAM|dado_out~1_combout\);

-- Location: LABCELL_X43_Y1_N18
\CPU|MUX_item|saida_MUX[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_item|saida_MUX[1]~4_combout\ = ( \RAM|dado_out~1_combout\ & ( (!\CPU|DECODER_item|Equal11~1_combout\ & ((\RAM|ram~1043_combout\))) # (\CPU|DECODER_item|Equal11~1_combout\ & (\ROM|memROM~2_combout\)) ) ) # ( !\RAM|dado_out~1_combout\ & ( 
-- (\ROM|memROM~2_combout\ & \CPU|DECODER_item|Equal11~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \CPU|DECODER_item|ALT_INV_Equal11~1_combout\,
	datad => \RAM|ALT_INV_ram~1043_combout\,
	dataf => \RAM|ALT_INV_dado_out~1_combout\,
	combout => \CPU|MUX_item|saida_MUX[1]~4_combout\);

-- Location: LABCELL_X40_Y1_N21
\CPU|DECODER_item|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|saida~2_combout\ = ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~7_combout\ & \ROM|memROM~9_combout\)) ) ) # ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~7_combout\ & 
-- !\ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODER_item|saida~2_combout\);

-- Location: LABCELL_X39_Y1_N42
\CPU|DECODER_item|Equal11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|Equal11~3_combout\ = ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODER_item|Equal11~3_combout\);

-- Location: LABCELL_X43_Y1_N6
\CPU|DECODER_item|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|saida[4]~5_combout\ = ( !\CPU|DECODER_item|Equal11~3_combout\ & ( !\CPU|DECODER_item|saida~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER_item|ALT_INV_saida~2_combout\,
	dataf => \CPU|DECODER_item|ALT_INV_Equal11~3_combout\,
	combout => \CPU|DECODER_item|saida[4]~5_combout\);

-- Location: LABCELL_X43_Y1_N30
\CPU|ULA_item|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~34_cout\ = CARRY(( (!\CPU|DECODER_item|saida~1_combout\) # ((!\CPU|DECODER_item|Equal11~2_combout\ & ((\CPU|DECODER_item|saida~2_combout\) # (\CPU|DECODER_item|Equal11~3_combout\)))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal11~2_combout\,
	datab => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datac => \CPU|DECODER_item|ALT_INV_Equal11~3_combout\,
	datad => \CPU|DECODER_item|ALT_INV_saida~2_combout\,
	cin => GND,
	cout => \CPU|ULA_item|Add0~34_cout\);

-- Location: LABCELL_X43_Y1_N33
\CPU|ULA_item|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~1_sumout\ = SUM(( !\CPU|MUX_item|saida_MUX[0]~3_combout\ $ (((\CPU|DECODER_item|saida~1_combout\ & ((\CPU|DECODER_item|saida[4]~5_combout\) # (\CPU|DECODER_item|Equal11~2_combout\))))) ) + ( \CPU|REGA_item|DOUT\(0) ) + ( 
-- \CPU|ULA_item|Add0~34_cout\ ))
-- \CPU|ULA_item|Add0~2\ = CARRY(( !\CPU|MUX_item|saida_MUX[0]~3_combout\ $ (((\CPU|DECODER_item|saida~1_combout\ & ((\CPU|DECODER_item|saida[4]~5_combout\) # (\CPU|DECODER_item|Equal11~2_combout\))))) ) + ( \CPU|REGA_item|DOUT\(0) ) + ( 
-- \CPU|ULA_item|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal11~2_combout\,
	datab => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datac => \CPU|MUX_item|ALT_INV_saida_MUX[0]~3_combout\,
	datad => \CPU|DECODER_item|ALT_INV_saida[4]~5_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(0),
	cin => \CPU|ULA_item|Add0~34_cout\,
	sumout => \CPU|ULA_item|Add0~1_sumout\,
	cout => \CPU|ULA_item|Add0~2\);

-- Location: LABCELL_X44_Y1_N12
\CPU|REGA_item|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA_item|DOUT[0]~feeder_combout\ = ( \CPU|ULA_item|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA_item|ALT_INV_Add0~1_sumout\,
	combout => \CPU|REGA_item|DOUT[0]~feeder_combout\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: MLABCELL_X45_Y1_N12
\CPU|MUX_item|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_item|saida_MUX[0]~0_combout\ = ( \RAM|dado_out~0_combout\ & ( \CPU|DECODER_item|Equal11~1_combout\ & ( !\ROM|memROM~1_combout\ ) ) ) # ( !\RAM|dado_out~0_combout\ & ( \CPU|DECODER_item|Equal11~1_combout\ & ( !\ROM|memROM~1_combout\ ) ) ) # ( 
-- \RAM|dado_out~0_combout\ & ( !\CPU|DECODER_item|Equal11~1_combout\ & ( (\ROM|memROM~4_combout\ & \KEY[1]~input_o\) ) ) ) # ( !\RAM|dado_out~0_combout\ & ( !\CPU|DECODER_item|Equal11~1_combout\ & ( (\KEY[1]~input_o\ & ((!\ROM|memROM~12_combout\) # 
-- (\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000000110000001111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \RAM|ALT_INV_dado_out~0_combout\,
	dataf => \CPU|DECODER_item|ALT_INV_Equal11~1_combout\,
	combout => \CPU|MUX_item|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X44_Y1_N54
\CPU|ULA_item|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|saida[0]~0_combout\ = ( \RAM|dado_out~1_combout\ & ( \RAM|ram~1040_combout\ & ( (!\CPU|DECODER_item|Equal11~1_combout\ & (((!\CPU|DECODER_item|saida~1_combout\)) # (\CPU|REGA_item|DOUT\(0)))) # (\CPU|DECODER_item|Equal11~1_combout\ & 
-- (\CPU|MUX_item|saida_MUX[0]~0_combout\ & ((!\CPU|DECODER_item|saida~1_combout\) # (\CPU|REGA_item|DOUT\(0))))) ) ) ) # ( !\RAM|dado_out~1_combout\ & ( \RAM|ram~1040_combout\ & ( (\CPU|MUX_item|saida_MUX[0]~0_combout\ & 
-- ((!\CPU|DECODER_item|saida~1_combout\) # (\CPU|REGA_item|DOUT\(0)))) ) ) ) # ( \RAM|dado_out~1_combout\ & ( !\RAM|ram~1040_combout\ & ( (\CPU|MUX_item|saida_MUX[0]~0_combout\ & ((!\CPU|DECODER_item|saida~1_combout\) # (\CPU|REGA_item|DOUT\(0)))) ) ) ) # ( 
-- !\RAM|dado_out~1_combout\ & ( !\RAM|ram~1040_combout\ & ( (\CPU|MUX_item|saida_MUX[0]~0_combout\ & ((!\CPU|DECODER_item|saida~1_combout\) # (\CPU|REGA_item|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100000000111100111010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal11~1_combout\,
	datab => \CPU|REGA_item|ALT_INV_DOUT\(0),
	datac => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datad => \CPU|MUX_item|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \RAM|ALT_INV_dado_out~1_combout\,
	dataf => \RAM|ALT_INV_ram~1040_combout\,
	combout => \CPU|ULA_item|saida[0]~0_combout\);

-- Location: LABCELL_X39_Y1_N36
\CPU|DECODER_item|saida[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|saida[4]~3_combout\ = ( \CPU|DECODER_item|Equal11~3_combout\ & ( !\CPU|DECODER_item|Equal11~2_combout\ ) ) # ( !\CPU|DECODER_item|Equal11~3_combout\ & ( (!\CPU|DECODER_item|Equal11~2_combout\ & \CPU|DECODER_item|saida~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER_item|ALT_INV_Equal11~2_combout\,
	datad => \CPU|DECODER_item|ALT_INV_saida~2_combout\,
	dataf => \CPU|DECODER_item|ALT_INV_Equal11~3_combout\,
	combout => \CPU|DECODER_item|saida[4]~3_combout\);

-- Location: LABCELL_X39_Y1_N27
\CPU|DECODER_item|saida[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|saida[5]~4_combout\ = ( \CPU|DECODER_item|saida~2_combout\ & ( ((!\ROM|memROM~11_combout\) # ((\ROM|memROM~9_combout\) # (\ROM|memROM~12_combout\))) # (\ROM|memROM~7_combout\) ) ) # ( !\CPU|DECODER_item|saida~2_combout\ & ( 
-- (\ROM|memROM~11_combout\ & (!\ROM|memROM~12_combout\ & ((\ROM|memROM~9_combout\) # (\ROM|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110000000100000011000011011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \CPU|DECODER_item|ALT_INV_saida~2_combout\,
	combout => \CPU|DECODER_item|saida[5]~4_combout\);

-- Location: FF_X44_Y1_N14
\CPU|REGA_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA_item|DOUT[0]~feeder_combout\,
	asdata => \CPU|ULA_item|saida[0]~0_combout\,
	sload => \CPU|DECODER_item|saida[4]~3_combout\,
	ena => \CPU|DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(0));

-- Location: FF_X40_Y1_N5
\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: FF_X43_Y1_N26
\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

-- Location: FF_X43_Y1_N14
\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

-- Location: FF_X43_Y1_N5
\RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~40_q\);

-- Location: LABCELL_X43_Y1_N21
\RAM|ram~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1067_combout\ = ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~24_q\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~40_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~24_q\,
	datad => \RAM|ALT_INV_ram~40_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~1067_combout\);

-- Location: LABCELL_X43_Y1_N24
\RAM|ram~1040\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1040_combout\ = ( \RAM|ram~32_q\ & ( \RAM|ram~1067_combout\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & ((!\ROM|memROM~1_combout\) # (\RAM|ram~16_q\)))) ) ) ) # ( !\RAM|ram~32_q\ & ( \RAM|ram~1067_combout\ & ( 
-- (!\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & ((!\ROM|memROM~1_combout\) # (\RAM|ram~16_q\)))) ) ) ) # ( \RAM|ram~32_q\ & ( !\RAM|ram~1067_combout\ & ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000011010000000000001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \RAM|ALT_INV_ram~32_q\,
	dataf => \RAM|ALT_INV_ram~1067_combout\,
	combout => \RAM|ram~1040_combout\);

-- Location: LABCELL_X43_Y1_N9
\CPU|MUX_item|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_item|saida_MUX[0]~3_combout\ = ( \RAM|dado_out~1_combout\ & ( (!\CPU|DECODER_item|Equal11~1_combout\ & (\RAM|ram~1040_combout\)) # (\CPU|DECODER_item|Equal11~1_combout\ & ((!\ROM|memROM~1_combout\))) ) ) # ( !\RAM|dado_out~1_combout\ & ( 
-- (!\CPU|DECODER_item|Equal11~1_combout\ & ((\KEY[1]~input_o\))) # (\CPU|DECODER_item|Equal11~1_combout\ & (!\ROM|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001100000011111100110001010101110011000101010111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~1040_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \CPU|DECODER_item|ALT_INV_Equal11~1_combout\,
	dataf => \RAM|ALT_INV_dado_out~1_combout\,
	combout => \CPU|MUX_item|saida_MUX[0]~3_combout\);

-- Location: LABCELL_X43_Y1_N36
\CPU|ULA_item|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~5_sumout\ = SUM(( !\CPU|MUX_item|saida_MUX[1]~4_combout\ $ (((\CPU|DECODER_item|saida~1_combout\ & ((\CPU|DECODER_item|saida[4]~5_combout\) # (\CPU|DECODER_item|Equal11~2_combout\))))) ) + ( \CPU|REGA_item|DOUT\(1) ) + ( 
-- \CPU|ULA_item|Add0~2\ ))
-- \CPU|ULA_item|Add0~6\ = CARRY(( !\CPU|MUX_item|saida_MUX[1]~4_combout\ $ (((\CPU|DECODER_item|saida~1_combout\ & ((\CPU|DECODER_item|saida[4]~5_combout\) # (\CPU|DECODER_item|Equal11~2_combout\))))) ) + ( \CPU|REGA_item|DOUT\(1) ) + ( 
-- \CPU|ULA_item|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal11~2_combout\,
	datab => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datac => \CPU|MUX_item|ALT_INV_saida_MUX[1]~4_combout\,
	datad => \CPU|DECODER_item|ALT_INV_saida[4]~5_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(1),
	cin => \CPU|ULA_item|Add0~2\,
	sumout => \CPU|ULA_item|Add0~5_sumout\,
	cout => \CPU|ULA_item|Add0~6\);

-- Location: LABCELL_X44_Y1_N15
\CPU|REGA_item|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA_item|DOUT[1]~feeder_combout\ = ( \CPU|ULA_item|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA_item|ALT_INV_Add0~5_sumout\,
	combout => \CPU|REGA_item|DOUT[1]~feeder_combout\);

-- Location: LABCELL_X44_Y1_N0
\CPU|ULA_item|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|saida[1]~1_combout\ = ( \ROM|memROM~2_combout\ & ( \CPU|DECODER_item|Equal11~1_combout\ & ( (!\CPU|DECODER_item|saida~1_combout\) # (\CPU|REGA_item|DOUT\(1)) ) ) ) # ( \ROM|memROM~2_combout\ & ( !\CPU|DECODER_item|Equal11~1_combout\ & ( 
-- (\RAM|dado_out~1_combout\ & (\RAM|ram~1043_combout\ & ((!\CPU|DECODER_item|saida~1_combout\) # (\CPU|REGA_item|DOUT\(1))))) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\CPU|DECODER_item|Equal11~1_combout\ & ( (\RAM|dado_out~1_combout\ & (\RAM|ram~1043_combout\ 
-- & ((!\CPU|DECODER_item|saida~1_combout\) # (\CPU|REGA_item|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001011000000000000101100000000000000001011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datab => \CPU|REGA_item|ALT_INV_DOUT\(1),
	datac => \RAM|ALT_INV_dado_out~1_combout\,
	datad => \RAM|ALT_INV_ram~1043_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \CPU|DECODER_item|ALT_INV_Equal11~1_combout\,
	combout => \CPU|ULA_item|saida[1]~1_combout\);

-- Location: FF_X44_Y1_N17
\CPU|REGA_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA_item|DOUT[1]~feeder_combout\,
	asdata => \CPU|ULA_item|saida[1]~1_combout\,
	sload => \CPU|DECODER_item|saida[4]~3_combout\,
	ena => \CPU|DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(1));

-- Location: LABCELL_X39_Y1_N9
\LogicSevenSeg_item|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|comb~0_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~5_combout\ & (\CPU|DECODER_item|Equal11~0_combout\ & (\ROM|memROM~4_combout\ & \ROM|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \LogicSevenSeg_item|comb~0_combout\);

-- Location: FF_X39_Y1_N20
\LogicSevenSeg_item|HEX0_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(1),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX0_item|DOUT\(1));

-- Location: FF_X42_Y1_N35
\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

-- Location: FF_X40_Y1_N7
\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: FF_X41_Y1_N32
\RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~42_q\);

-- Location: FF_X40_Y1_N16
\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

-- Location: LABCELL_X41_Y1_N30
\RAM|ram~1044\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1044_combout\ = ( \RAM|ram~42_q\ & ( \RAM|ram~26_q\ & ( (!\ROM|memROM~1_combout\) # ((!\ROM|memROM~2_combout\ & ((\RAM|ram~18_q\))) # (\ROM|memROM~2_combout\ & (\RAM|ram~34_q\))) ) ) ) # ( !\RAM|ram~42_q\ & ( \RAM|ram~26_q\ & ( 
-- (!\ROM|memROM~1_combout\ & (((!\ROM|memROM~2_combout\)))) # (\ROM|memROM~1_combout\ & ((!\ROM|memROM~2_combout\ & ((\RAM|ram~18_q\))) # (\ROM|memROM~2_combout\ & (\RAM|ram~34_q\)))) ) ) ) # ( \RAM|ram~42_q\ & ( !\RAM|ram~26_q\ & ( (!\ROM|memROM~1_combout\ 
-- & (((\ROM|memROM~2_combout\)))) # (\ROM|memROM~1_combout\ & ((!\ROM|memROM~2_combout\ & ((\RAM|ram~18_q\))) # (\ROM|memROM~2_combout\ & (\RAM|ram~34_q\)))) ) ) ) # ( !\RAM|ram~42_q\ & ( !\RAM|ram~26_q\ & ( (\ROM|memROM~1_combout\ & 
-- ((!\ROM|memROM~2_combout\ & ((\RAM|ram~18_q\))) # (\ROM|memROM~2_combout\ & (\RAM|ram~34_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~34_q\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \RAM|ALT_INV_ram~18_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~42_q\,
	dataf => \RAM|ALT_INV_ram~26_q\,
	combout => \RAM|ram~1044_combout\);

-- Location: MLABCELL_X42_Y1_N18
\Data_out_MEM[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_out_MEM[2]~0_combout\ = ( \RAM|dado_out~0_combout\ & ( (!\ROM|memROM~4_combout\ & \RAM|ram~1044_combout\) ) ) # ( !\RAM|dado_out~0_combout\ & ( (!\ROM|memROM~4_combout\ & (\RAM|ram~1044_combout\ & \ROM|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \RAM|ALT_INV_ram~1044_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \RAM|ALT_INV_dado_out~0_combout\,
	combout => \Data_out_MEM[2]~0_combout\);

-- Location: LABCELL_X43_Y1_N39
\CPU|ULA_item|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~9_sumout\ = SUM(( !\Data_out_MEM[2]~0_combout\ $ (((\CPU|DECODER_item|saida~1_combout\ & ((\CPU|DECODER_item|saida[4]~5_combout\) # (\CPU|DECODER_item|Equal11~2_combout\))))) ) + ( \CPU|REGA_item|DOUT\(2) ) + ( \CPU|ULA_item|Add0~6\ ))
-- \CPU|ULA_item|Add0~10\ = CARRY(( !\Data_out_MEM[2]~0_combout\ $ (((\CPU|DECODER_item|saida~1_combout\ & ((\CPU|DECODER_item|saida[4]~5_combout\) # (\CPU|DECODER_item|Equal11~2_combout\))))) ) + ( \CPU|REGA_item|DOUT\(2) ) + ( \CPU|ULA_item|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal11~2_combout\,
	datab => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_Data_out_MEM[2]~0_combout\,
	datad => \CPU|DECODER_item|ALT_INV_saida[4]~5_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(2),
	cin => \CPU|ULA_item|Add0~6\,
	sumout => \CPU|ULA_item|Add0~9_sumout\,
	cout => \CPU|ULA_item|Add0~10\);

-- Location: MLABCELL_X42_Y1_N6
\CPU|REGA_item|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA_item|DOUT[2]~feeder_combout\ = ( \CPU|ULA_item|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA_item|ALT_INV_Add0~9_sumout\,
	combout => \CPU|REGA_item|DOUT[2]~feeder_combout\);

-- Location: MLABCELL_X42_Y1_N39
\CPU|ULA_item|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|saida[2]~2_combout\ = ( \CPU|REGA_item|DOUT\(2) & ( \RAM|ram~1044_combout\ & ( (!\ROM|memROM~4_combout\ & ((\ROM|memROM~12_combout\) # (\RAM|dado_out~0_combout\))) ) ) ) # ( !\CPU|REGA_item|DOUT\(2) & ( \RAM|ram~1044_combout\ & ( 
-- (!\CPU|DECODER_item|saida~1_combout\ & (!\ROM|memROM~4_combout\ & ((\ROM|memROM~12_combout\) # (\RAM|dado_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000101000000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datab => \RAM|ALT_INV_dado_out~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \CPU|REGA_item|ALT_INV_DOUT\(2),
	dataf => \RAM|ALT_INV_ram~1044_combout\,
	combout => \CPU|ULA_item|saida[2]~2_combout\);

-- Location: FF_X42_Y1_N8
\CPU|REGA_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA_item|DOUT[2]~feeder_combout\,
	asdata => \CPU|ULA_item|saida[2]~2_combout\,
	sload => \CPU|DECODER_item|saida[4]~3_combout\,
	ena => \CPU|DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(2));

-- Location: FF_X39_Y1_N41
\LogicSevenSeg_item|HEX0_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX0_item|DOUT\(2));

-- Location: FF_X39_Y1_N5
\LogicSevenSeg_item|HEX0_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(0),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX0_item|DOUT\(0));

-- Location: LABCELL_X41_Y1_N54
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \CPU|PC_item|DOUT\(2) & ( (!\CPU|PC_item|DOUT\(3) & !\CPU|PC_item|DOUT[0]~DUPLICATE_q\) ) ) # ( !\CPU|PC_item|DOUT\(2) & ( (\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT\(3) & \CPU|PC_item|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT\(3),
	datad => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~3_combout\);

-- Location: FF_X42_Y1_N56
\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

-- Location: MLABCELL_X42_Y1_N54
\RAM|ram~1047\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1047_combout\ = ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~5_combout\ & (!\ROM|memROM~3_combout\ & \RAM|ram~35_q\)) ) ) # ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~5_combout\ & \RAM|ram~35_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \RAM|ALT_INV_ram~35_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~1047_combout\);

-- Location: FF_X42_Y2_N53
\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

-- Location: MLABCELL_X42_Y2_N48
\RAM|ram~1045\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1045_combout\ = ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~19_q\ & !\ROM|memROM~5_combout\) ) ) ) # ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~0_combout\ & ( (\RAM|ram~19_q\ & !\ROM|memROM~5_combout\) ) ) ) # ( 
-- !\ROM|memROM~3_combout\ & ( !\ROM|memROM~0_combout\ & ( (\RAM|ram~19_q\ & !\ROM|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~1045_combout\);

-- Location: FF_X39_Y1_N14
\RAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~43_q\);

-- Location: LABCELL_X39_Y1_N57
\RAM|ram~1048\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1048_combout\ = ( !\ROM|memROM~5_combout\ & ( (\RAM|ram~43_q\ & ((!\ROM|memROM~0_combout\) # (!\ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_ram~43_q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~1048_combout\);

-- Location: FF_X41_Y1_N41
\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

-- Location: LABCELL_X41_Y1_N39
\RAM|ram~1046\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1046_combout\ = ( !\ROM|memROM~5_combout\ & ( (\RAM|ram~27_q\ & ((!\ROM|memROM~0_combout\) # (!\ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \RAM|ALT_INV_ram~27_q\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~1046_combout\);

-- Location: MLABCELL_X42_Y1_N30
\RAM|ram~1049\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1049_combout\ = ( \RAM|ram~1048_combout\ & ( \RAM|ram~1046_combout\ & ( (!\ROM|memROM~1_combout\) # ((!\ROM|memROM~2_combout\ & ((\RAM|ram~1045_combout\))) # (\ROM|memROM~2_combout\ & (\RAM|ram~1047_combout\))) ) ) ) # ( !\RAM|ram~1048_combout\ & 
-- ( \RAM|ram~1046_combout\ & ( (!\ROM|memROM~2_combout\ & (((!\ROM|memROM~1_combout\) # (\RAM|ram~1045_combout\)))) # (\ROM|memROM~2_combout\ & (\RAM|ram~1047_combout\ & ((\ROM|memROM~1_combout\)))) ) ) ) # ( \RAM|ram~1048_combout\ & ( 
-- !\RAM|ram~1046_combout\ & ( (!\ROM|memROM~2_combout\ & (((\RAM|ram~1045_combout\ & \ROM|memROM~1_combout\)))) # (\ROM|memROM~2_combout\ & (((!\ROM|memROM~1_combout\)) # (\RAM|ram~1047_combout\))) ) ) ) # ( !\RAM|ram~1048_combout\ & ( 
-- !\RAM|ram~1046_combout\ & ( (\ROM|memROM~1_combout\ & ((!\ROM|memROM~2_combout\ & ((\RAM|ram~1045_combout\))) # (\ROM|memROM~2_combout\ & (\RAM|ram~1047_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~1047_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~1045_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \RAM|ALT_INV_ram~1048_combout\,
	dataf => \RAM|ALT_INV_ram~1046_combout\,
	combout => \RAM|ram~1049_combout\);

-- Location: LABCELL_X43_Y1_N42
\CPU|ULA_item|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~13_sumout\ = SUM(( (!\CPU|DECODER_item|saida~1_combout\ & ((!\RAM|dado_out~1_combout\) # ((!\RAM|ram~1049_combout\)))) # (\CPU|DECODER_item|saida~1_combout\ & (!\CPU|DECODER_item|saida[4]~3_combout\ $ (((!\RAM|dado_out~1_combout\) # 
-- (!\RAM|ram~1049_combout\))))) ) + ( \CPU|REGA_item|DOUT\(3) ) + ( \CPU|ULA_item|Add0~10\ ))
-- \CPU|ULA_item|Add0~14\ = CARRY(( (!\CPU|DECODER_item|saida~1_combout\ & ((!\RAM|dado_out~1_combout\) # ((!\RAM|ram~1049_combout\)))) # (\CPU|DECODER_item|saida~1_combout\ & (!\CPU|DECODER_item|saida[4]~3_combout\ $ (((!\RAM|dado_out~1_combout\) # 
-- (!\RAM|ram~1049_combout\))))) ) + ( \CPU|REGA_item|DOUT\(3) ) + ( \CPU|ULA_item|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010111110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datab => \RAM|ALT_INV_dado_out~1_combout\,
	datac => \CPU|DECODER_item|ALT_INV_saida[4]~3_combout\,
	datad => \RAM|ALT_INV_ram~1049_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(3),
	cin => \CPU|ULA_item|Add0~10\,
	sumout => \CPU|ULA_item|Add0~13_sumout\,
	cout => \CPU|ULA_item|Add0~14\);

-- Location: LABCELL_X44_Y1_N42
\CPU|REGA_item|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA_item|DOUT[3]~feeder_combout\ = ( \CPU|ULA_item|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA_item|ALT_INV_Add0~13_sumout\,
	combout => \CPU|REGA_item|DOUT[3]~feeder_combout\);

-- Location: MLABCELL_X42_Y1_N12
\CPU|ULA_item|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|saida[3]~3_combout\ = ( \CPU|REGA_item|DOUT\(3) & ( \RAM|ram~1049_combout\ & ( (!\ROM|memROM~4_combout\ & ((\ROM|memROM~12_combout\) # (\RAM|dado_out~0_combout\))) ) ) ) # ( !\CPU|REGA_item|DOUT\(3) & ( \RAM|ram~1049_combout\ & ( 
-- (!\CPU|DECODER_item|saida~1_combout\ & (!\ROM|memROM~4_combout\ & ((\ROM|memROM~12_combout\) # (\RAM|dado_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000110000000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~0_combout\,
	datab => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \CPU|REGA_item|ALT_INV_DOUT\(3),
	dataf => \RAM|ALT_INV_ram~1049_combout\,
	combout => \CPU|ULA_item|saida[3]~3_combout\);

-- Location: FF_X44_Y1_N44
\CPU|REGA_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA_item|DOUT[3]~feeder_combout\,
	asdata => \CPU|ULA_item|saida[3]~3_combout\,
	sload => \CPU|DECODER_item|saida[4]~3_combout\,
	ena => \CPU|DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(3));

-- Location: FF_X39_Y1_N23
\LogicSevenSeg_item|HEX0_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(3),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX0_item|DOUT\(3));

-- Location: MLABCELL_X45_Y2_N15
\LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[0]~0_combout\ = ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( \LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( !\LogicSevenSeg_item|HEX0_item|DOUT\(1) $ (!\LogicSevenSeg_item|HEX0_item|DOUT\(2)) ) ) ) # ( 
-- \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( !\LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(1) & !\LogicSevenSeg_item|HEX0_item|DOUT\(2)) ) ) ) # ( !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( 
-- !\LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(1) & \LogicSevenSeg_item|HEX0_item|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101000001010000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2),
	datae => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X45_Y2_N57
\LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[1]~1_combout\ = ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( \LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( \LogicSevenSeg_item|HEX0_item|DOUT\(1) ) ) ) # ( !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( 
-- \LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( \LogicSevenSeg_item|HEX0_item|DOUT\(2) ) ) ) # ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( !\LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(1) & 
-- \LogicSevenSeg_item|HEX0_item|DOUT\(2)) ) ) ) # ( !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( !\LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX0_item|DOUT\(1) & \LogicSevenSeg_item|HEX0_item|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101000001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2),
	datae => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y2_N36
\LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[2]~2_combout\ = ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( \LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX0_item|DOUT\(2) & \LogicSevenSeg_item|HEX0_item|DOUT\(1)) ) ) ) # ( 
-- !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( \LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( \LogicSevenSeg_item|HEX0_item|DOUT\(2) ) ) ) # ( !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( !\LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( 
-- (!\LogicSevenSeg_item|HEX0_item|DOUT\(2) & \LogicSevenSeg_item|HEX0_item|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000110011001100110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1),
	datae => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y2_N45
\LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[3]~3_combout\ = ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( \LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX0_item|DOUT\(1) & \LogicSevenSeg_item|HEX0_item|DOUT\(2)) ) ) ) # ( 
-- !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( \LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX0_item|DOUT\(1) & !\LogicSevenSeg_item|HEX0_item|DOUT\(2)) ) ) ) # ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( 
-- !\LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( !\LogicSevenSeg_item|HEX0_item|DOUT\(1) $ (\LogicSevenSeg_item|HEX0_item|DOUT\(2)) ) ) ) # ( !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( !\LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( 
-- (!\LogicSevenSeg_item|HEX0_item|DOUT\(1) & \LogicSevenSeg_item|HEX0_item|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101001011010010101010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2),
	datae => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X45_Y2_N0
\LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[4]~4_combout\ = ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( \LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(2) & !\LogicSevenSeg_item|HEX0_item|DOUT\(1)) ) ) ) # ( 
-- \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( !\LogicSevenSeg_item|HEX0_item|DOUT\(3) ) ) # ( !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( !\LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX0_item|DOUT\(2) & 
-- !\LogicSevenSeg_item|HEX0_item|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111111111111111100000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1),
	datae => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X45_Y2_N30
\LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[5]~5_combout\ = ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( \LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX0_item|DOUT\(2) & !\LogicSevenSeg_item|HEX0_item|DOUT\(1)) ) ) ) # ( 
-- \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( !\LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(2)) # (\LogicSevenSeg_item|HEX0_item|DOUT\(1)) ) ) ) # ( !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( 
-- !\LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(2) & \LogicSevenSeg_item|HEX0_item|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110011111100111100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1),
	datae => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y2_N51
\LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[6]~6_combout\ = ( !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( \LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(1) & \LogicSevenSeg_item|HEX0_item|DOUT\(2)) ) ) ) # ( 
-- \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( !\LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( !\LogicSevenSeg_item|HEX0_item|DOUT\(1) $ (\LogicSevenSeg_item|HEX0_item|DOUT\(2)) ) ) ) # ( !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( 
-- !\LogicSevenSeg_item|HEX0_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(1) & !\LogicSevenSeg_item|HEX0_item|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101001011010010100001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2),
	datae => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X39_Y1_N0
\LogicSevenSeg_item|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|comb~1_combout\ = ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~2_combout\ & (\CPU|DECODER_item|Equal11~0_combout\ & (!\ROM|memROM~1_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \LogicSevenSeg_item|comb~1_combout\);

-- Location: FF_X40_Y1_N41
\LogicSevenSeg_item|HEX1_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(1),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX1_item|DOUT\(1));

-- Location: FF_X40_Y1_N47
\LogicSevenSeg_item|HEX1_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(0),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX1_item|DOUT\(0));

-- Location: FF_X37_Y1_N44
\LogicSevenSeg_item|HEX1_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX1_item|DOUT\(2));

-- Location: FF_X37_Y1_N14
\LogicSevenSeg_item|HEX1_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(3),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX1_item|DOUT\(3));

-- Location: MLABCELL_X37_Y1_N45
\LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[0]~0_combout\ = ( \LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX1_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX1_item|DOUT\(1) $ (!\LogicSevenSeg_item|HEX1_item|DOUT\(2)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX1_item|DOUT\(0) $ (!\LogicSevenSeg_item|HEX1_item|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y1_N3
\LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[1]~1_combout\ = ( \LogicSevenSeg_item|HEX1_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(0) & ((\LogicSevenSeg_item|HEX1_item|DOUT\(2)))) # (\LogicSevenSeg_item|HEX1_item|DOUT\(0) & 
-- (\LogicSevenSeg_item|HEX1_item|DOUT\(3))) ) ) # ( !\LogicSevenSeg_item|HEX1_item|DOUT\(1) & ( (\LogicSevenSeg_item|HEX1_item|DOUT\(2) & (!\LogicSevenSeg_item|HEX1_item|DOUT\(3) $ (!\LogicSevenSeg_item|HEX1_item|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3),
	datac => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2),
	datad => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1),
	combout => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y1_N9
\LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[2]~2_combout\ = ( \LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX1_item|DOUT\(2) & ((!\LogicSevenSeg_item|HEX1_item|DOUT\(0)) # (\LogicSevenSeg_item|HEX1_item|DOUT\(1)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX1_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX1_item|DOUT\(2) & !\LogicSevenSeg_item|HEX1_item|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2),
	datad => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y1_N27
\LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[3]~3_combout\ = ( \LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX1_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX1_item|DOUT\(2) $ (\LogicSevenSeg_item|HEX1_item|DOUT\(0)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX1_item|DOUT\(2) $ (!\LogicSevenSeg_item|HEX1_item|DOUT\(0)))) # (\LogicSevenSeg_item|HEX1_item|DOUT\(1) & 
-- (\LogicSevenSeg_item|HEX1_item|DOUT\(2) & \LogicSevenSeg_item|HEX1_item|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2),
	datad => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y1_N12
\LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[4]~4_combout\ = ( \LogicSevenSeg_item|HEX1_item|DOUT\(2) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(3) & ((!\LogicSevenSeg_item|HEX1_item|DOUT\(1)) # (\LogicSevenSeg_item|HEX1_item|DOUT\(0)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX1_item|DOUT\(2) & ( (\LogicSevenSeg_item|HEX1_item|DOUT\(0) & ((!\LogicSevenSeg_item|HEX1_item|DOUT\(1)) # (!\LogicSevenSeg_item|HEX1_item|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001010111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0),
	datad => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3),
	dataf => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2),
	combout => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y1_N15
\LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[5]~5_combout\ = ( \LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(1) & (\LogicSevenSeg_item|HEX1_item|DOUT\(0) & \LogicSevenSeg_item|HEX1_item|DOUT\(2))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(1) & (\LogicSevenSeg_item|HEX1_item|DOUT\(0) & !\LogicSevenSeg_item|HEX1_item|DOUT\(2))) # (\LogicSevenSeg_item|HEX1_item|DOUT\(1) & 
-- ((!\LogicSevenSeg_item|HEX1_item|DOUT\(2)) # (\LogicSevenSeg_item|HEX1_item|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y1_N42
\LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[6]~6_combout\ = ( \LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX1_item|DOUT\(0) & \LogicSevenSeg_item|HEX1_item|DOUT\(2))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(1) & ((!\LogicSevenSeg_item|HEX1_item|DOUT\(2)))) # (\LogicSevenSeg_item|HEX1_item|DOUT\(1) & (\LogicSevenSeg_item|HEX1_item|DOUT\(0) & 
-- \LogicSevenSeg_item|HEX1_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000010001101010100001000100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0),
	datad => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X39_Y1_N3
\LogicSevenSeg_item|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|comb~2_combout\ = ( \ROM|memROM~1_combout\ & ( (\ROM|memROM~2_combout\ & (\CPU|DECODER_item|Equal11~0_combout\ & \ROM|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \LogicSevenSeg_item|comb~2_combout\);

-- Location: FF_X37_Y1_N41
\LogicSevenSeg_item|HEX2_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX2_item|DOUT\(2));

-- Location: FF_X37_Y1_N59
\LogicSevenSeg_item|HEX2_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(3),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX2_item|DOUT\(3));

-- Location: FF_X37_Y1_N38
\LogicSevenSeg_item|HEX2_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(1),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX2_item|DOUT\(1));

-- Location: FF_X37_Y1_N56
\LogicSevenSeg_item|HEX2_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(0),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX2_item|DOUT\(0));

-- Location: MLABCELL_X37_Y1_N24
\LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[0]~0_combout\ = ( \LogicSevenSeg_item|HEX2_item|DOUT\(0) & ( (!\LogicSevenSeg_item|HEX2_item|DOUT\(2) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) $ (\LogicSevenSeg_item|HEX2_item|DOUT\(1)))) # 
-- (\LogicSevenSeg_item|HEX2_item|DOUT\(2) & (\LogicSevenSeg_item|HEX2_item|DOUT\(3) & !\LogicSevenSeg_item|HEX2_item|DOUT\(1))) ) ) # ( !\LogicSevenSeg_item|HEX2_item|DOUT\(0) & ( (\LogicSevenSeg_item|HEX2_item|DOUT\(2) & 
-- (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) & !\LogicSevenSeg_item|HEX2_item|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011000011000011001100001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1),
	dataf => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0),
	combout => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y1_N6
\LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[1]~1_combout\ = ( \LogicSevenSeg_item|HEX2_item|DOUT\(0) & ( (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) & (\LogicSevenSeg_item|HEX2_item|DOUT\(2) & !\LogicSevenSeg_item|HEX2_item|DOUT\(1))) # 
-- (\LogicSevenSeg_item|HEX2_item|DOUT\(3) & ((\LogicSevenSeg_item|HEX2_item|DOUT\(1)))) ) ) # ( !\LogicSevenSeg_item|HEX2_item|DOUT\(0) & ( (\LogicSevenSeg_item|HEX2_item|DOUT\(2) & ((\LogicSevenSeg_item|HEX2_item|DOUT\(1)) # 
-- (\LogicSevenSeg_item|HEX2_item|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1),
	dataf => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0),
	combout => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X31_Y1_N12
\LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[2]~2_combout\ = ( \LogicSevenSeg_item|HEX2_item|DOUT\(1) & ( \LogicSevenSeg_item|HEX2_item|DOUT\(3) & ( \LogicSevenSeg_item|HEX2_item|DOUT\(2) ) ) ) # ( !\LogicSevenSeg_item|HEX2_item|DOUT\(1) & ( 
-- \LogicSevenSeg_item|HEX2_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX2_item|DOUT\(0) & \LogicSevenSeg_item|HEX2_item|DOUT\(2)) ) ) ) # ( \LogicSevenSeg_item|HEX2_item|DOUT\(1) & ( !\LogicSevenSeg_item|HEX2_item|DOUT\(3) & ( 
-- (!\LogicSevenSeg_item|HEX2_item|DOUT\(0) & !\LogicSevenSeg_item|HEX2_item|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000001010000010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2),
	datae => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1),
	dataf => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y1_N54
\LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[3]~3_combout\ = (!\LogicSevenSeg_item|HEX2_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(2) $ (!\LogicSevenSeg_item|HEX2_item|DOUT\(0))))) # 
-- (\LogicSevenSeg_item|HEX2_item|DOUT\(1) & ((!\LogicSevenSeg_item|HEX2_item|DOUT\(2) & (\LogicSevenSeg_item|HEX2_item|DOUT\(3) & !\LogicSevenSeg_item|HEX2_item|DOUT\(0))) # (\LogicSevenSeg_item|HEX2_item|DOUT\(2) & 
-- ((\LogicSevenSeg_item|HEX2_item|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010010001001001001001000100100100100100010010010010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0),
	combout => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y1_N57
\LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[4]~4_combout\ = (!\LogicSevenSeg_item|HEX2_item|DOUT\(1) & ((!\LogicSevenSeg_item|HEX2_item|DOUT\(2) & (\LogicSevenSeg_item|HEX2_item|DOUT\(0))) # (\LogicSevenSeg_item|HEX2_item|DOUT\(2) & 
-- ((!\LogicSevenSeg_item|HEX2_item|DOUT\(3)))))) # (\LogicSevenSeg_item|HEX2_item|DOUT\(1) & (((\LogicSevenSeg_item|HEX2_item|DOUT\(0) & !\LogicSevenSeg_item|HEX2_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001000001011110000100000101111000010000010111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0),
	datad => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y1_N36
\LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[5]~5_combout\ = ( \LogicSevenSeg_item|HEX2_item|DOUT\(2) & ( (\LogicSevenSeg_item|HEX2_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) $ (!\LogicSevenSeg_item|HEX2_item|DOUT\(1)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX2_item|DOUT\(2) & ( (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) & ((\LogicSevenSeg_item|HEX2_item|DOUT\(1)) # (\LogicSevenSeg_item|HEX2_item|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001001100110000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0),
	datab => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1),
	dataf => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2),
	combout => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y1_N39
\LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[6]~6_combout\ = ( \LogicSevenSeg_item|HEX2_item|DOUT\(1) & ( (\LogicSevenSeg_item|HEX2_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) & \LogicSevenSeg_item|HEX2_item|DOUT\(2))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX2_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) & ((!\LogicSevenSeg_item|HEX2_item|DOUT\(2)))) # (\LogicSevenSeg_item|HEX2_item|DOUT\(3) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(0) & 
-- \LogicSevenSeg_item|HEX2_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001010111100000000101000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1),
	combout => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X44_Y1_N9
\LogicSevenSeg_item|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|comb~3_combout\ = ( \CPU|DECODER_item|Equal11~0_combout\ & ( (!\ROM|memROM~1_combout\ & (\ROM|memROM~2_combout\ & \ROM|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \CPU|DECODER_item|ALT_INV_Equal11~0_combout\,
	combout => \LogicSevenSeg_item|comb~3_combout\);

-- Location: FF_X37_Y1_N20
\LogicSevenSeg_item|HEX3_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(0),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX3_item|DOUT\(0));

-- Location: FF_X37_Y1_N53
\LogicSevenSeg_item|HEX3_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX3_item|DOUT\(2));

-- Location: FF_X37_Y1_N23
\LogicSevenSeg_item|HEX3_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(3),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX3_item|DOUT\(3));

-- Location: FF_X37_Y1_N50
\LogicSevenSeg_item|HEX3_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(1),
	sload => VCC,
	ena => \LogicSevenSeg_item|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX3_item|DOUT\(1));

-- Location: MLABCELL_X37_Y1_N30
\LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[0]~0_combout\ = ( \LogicSevenSeg_item|HEX3_item|DOUT\(1) & ( (\LogicSevenSeg_item|HEX3_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX3_item|DOUT\(2) & \LogicSevenSeg_item|HEX3_item|DOUT\(3))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX3_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(0) & (\LogicSevenSeg_item|HEX3_item|DOUT\(2) & !\LogicSevenSeg_item|HEX3_item|DOUT\(3))) # (\LogicSevenSeg_item|HEX3_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX3_item|DOUT\(2) 
-- $ (\LogicSevenSeg_item|HEX3_item|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000011001111000000001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(2),
	datad => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3),
	dataf => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1),
	combout => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y1_N33
\LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[1]~1_combout\ = ( \LogicSevenSeg_item|HEX3_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(0) & (\LogicSevenSeg_item|HEX3_item|DOUT\(2))) # (\LogicSevenSeg_item|HEX3_item|DOUT\(0) & 
-- ((\LogicSevenSeg_item|HEX3_item|DOUT\(3)))) ) ) # ( !\LogicSevenSeg_item|HEX3_item|DOUT\(1) & ( (\LogicSevenSeg_item|HEX3_item|DOUT\(2) & (!\LogicSevenSeg_item|HEX3_item|DOUT\(0) $ (!\LogicSevenSeg_item|HEX3_item|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(2),
	datab => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0),
	datad => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3),
	dataf => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1),
	combout => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y1_N0
\LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[2]~2_combout\ = ( \LogicSevenSeg_item|HEX3_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(2) & (!\LogicSevenSeg_item|HEX3_item|DOUT\(0) & !\LogicSevenSeg_item|HEX3_item|DOUT\(3))) # 
-- (\LogicSevenSeg_item|HEX3_item|DOUT\(2) & ((\LogicSevenSeg_item|HEX3_item|DOUT\(3)))) ) ) # ( !\LogicSevenSeg_item|HEX3_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(0) & (\LogicSevenSeg_item|HEX3_item|DOUT\(2) & 
-- \LogicSevenSeg_item|HEX3_item|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(2),
	datad => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3),
	dataf => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1),
	combout => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y1_N18
\LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[3]~3_combout\ = ( \LogicSevenSeg_item|HEX3_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(2) & (\LogicSevenSeg_item|HEX3_item|DOUT\(3) & !\LogicSevenSeg_item|HEX3_item|DOUT\(0))) # 
-- (\LogicSevenSeg_item|HEX3_item|DOUT\(2) & ((\LogicSevenSeg_item|HEX3_item|DOUT\(0)))) ) ) # ( !\LogicSevenSeg_item|HEX3_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(3) & (!\LogicSevenSeg_item|HEX3_item|DOUT\(2) $ 
-- (!\LogicSevenSeg_item|HEX3_item|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1),
	combout => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y1_N21
\LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[4]~4_combout\ = (!\LogicSevenSeg_item|HEX3_item|DOUT\(1) & ((!\LogicSevenSeg_item|HEX3_item|DOUT\(2) & (\LogicSevenSeg_item|HEX3_item|DOUT\(0))) # (\LogicSevenSeg_item|HEX3_item|DOUT\(2) & 
-- ((!\LogicSevenSeg_item|HEX3_item|DOUT\(3)))))) # (\LogicSevenSeg_item|HEX3_item|DOUT\(1) & (((\LogicSevenSeg_item|HEX3_item|DOUT\(0) & !\LogicSevenSeg_item|HEX3_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100001000010011110000100001001111000010000100111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(2),
	datab => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0),
	datad => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y1_N48
\LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[5]~5_combout\ = ( \LogicSevenSeg_item|HEX3_item|DOUT\(0) & ( !\LogicSevenSeg_item|HEX3_item|DOUT\(3) $ (((\LogicSevenSeg_item|HEX3_item|DOUT\(2) & !\LogicSevenSeg_item|HEX3_item|DOUT\(1)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX3_item|DOUT\(0) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(3) & (!\LogicSevenSeg_item|HEX3_item|DOUT\(2) & \LogicSevenSeg_item|HEX3_item|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101101010101010010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3),
	datac => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(2),
	datad => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1),
	dataf => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0),
	combout => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y1_N51
\LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[6]~6_combout\ = ( \LogicSevenSeg_item|HEX3_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(3) & (\LogicSevenSeg_item|HEX3_item|DOUT\(0) & \LogicSevenSeg_item|HEX3_item|DOUT\(2))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX3_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(3) & ((!\LogicSevenSeg_item|HEX3_item|DOUT\(2)))) # (\LogicSevenSeg_item|HEX3_item|DOUT\(3) & (!\LogicSevenSeg_item|HEX3_item|DOUT\(0) & 
-- \LogicSevenSeg_item|HEX3_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001000100101010100100010000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3),
	datab => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0),
	datad => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1),
	combout => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[6]~6_combout\);

-- Location: FF_X41_Y1_N2
\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

-- Location: FF_X39_Y1_N31
\RAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~44_q\);

-- Location: LABCELL_X40_Y2_N12
\RAM|ram~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~20feeder_combout\ = ( \CPU|REGA_item|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(4),
	combout => \RAM|ram~20feeder_combout\);

-- Location: FF_X40_Y2_N13
\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM|ram~20feeder_combout\,
	ena => \RAM|ram~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

-- Location: FF_X42_Y1_N16
\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

-- Location: LABCELL_X41_Y1_N18
\RAM|ram~1050\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1050_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~36_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~44_q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~20_q\ 
-- ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datab => \RAM|ALT_INV_ram~44_q\,
	datac => \RAM|ALT_INV_ram~20_q\,
	datad => \RAM|ALT_INV_ram~36_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~1050_combout\);

-- Location: LABCELL_X44_Y1_N18
\RAM|ram~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1066_combout\ = ( !\ROM|memROM~4_combout\ & ( \RAM|ram~1050_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~1050_combout\,
	combout => \RAM|ram~1066_combout\);

-- Location: LABCELL_X43_Y1_N45
\CPU|ULA_item|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~17_sumout\ = SUM(( (!\CPU|DECODER_item|saida~1_combout\ & ((!\RAM|dado_out~1_combout\) # ((!\RAM|ram~1066_combout\)))) # (\CPU|DECODER_item|saida~1_combout\ & (!\CPU|DECODER_item|saida[4]~3_combout\ $ (((!\RAM|dado_out~1_combout\) # 
-- (!\RAM|ram~1066_combout\))))) ) + ( \CPU|REGA_item|DOUT\(4) ) + ( \CPU|ULA_item|Add0~14\ ))
-- \CPU|ULA_item|Add0~18\ = CARRY(( (!\CPU|DECODER_item|saida~1_combout\ & ((!\RAM|dado_out~1_combout\) # ((!\RAM|ram~1066_combout\)))) # (\CPU|DECODER_item|saida~1_combout\ & (!\CPU|DECODER_item|saida[4]~3_combout\ $ (((!\RAM|dado_out~1_combout\) # 
-- (!\RAM|ram~1066_combout\))))) ) + ( \CPU|REGA_item|DOUT\(4) ) + ( \CPU|ULA_item|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010111110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datab => \RAM|ALT_INV_dado_out~1_combout\,
	datac => \CPU|DECODER_item|ALT_INV_saida[4]~3_combout\,
	datad => \RAM|ALT_INV_ram~1066_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(4),
	cin => \CPU|ULA_item|Add0~14\,
	sumout => \CPU|ULA_item|Add0~17_sumout\,
	cout => \CPU|ULA_item|Add0~18\);

-- Location: LABCELL_X44_Y1_N48
\CPU|REGA_item|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA_item|DOUT[4]~feeder_combout\ = ( \CPU|ULA_item|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA_item|ALT_INV_Add0~17_sumout\,
	combout => \CPU|REGA_item|DOUT[4]~feeder_combout\);

-- Location: MLABCELL_X45_Y1_N6
\CPU|ULA_item|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|saida[4]~4_combout\ = ( \RAM|dado_out~0_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~4_combout\ & (\RAM|ram~1050_combout\ & ((!\CPU|DECODER_item|saida~1_combout\) # (\CPU|REGA_item|DOUT\(4))))) ) ) ) # ( !\RAM|dado_out~0_combout\ & 
-- ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~4_combout\ & (\RAM|ram~1050_combout\ & ((!\CPU|DECODER_item|saida~1_combout\) # (\CPU|REGA_item|DOUT\(4))))) ) ) ) # ( \RAM|dado_out~0_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~4_combout\ & 
-- (\RAM|ram~1050_combout\ & ((!\CPU|DECODER_item|saida~1_combout\) # (\CPU|REGA_item|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100010000000000110001000000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA_item|ALT_INV_DOUT\(4),
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datad => \RAM|ALT_INV_ram~1050_combout\,
	datae => \RAM|ALT_INV_dado_out~0_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|ULA_item|saida[4]~4_combout\);

-- Location: FF_X44_Y1_N50
\CPU|REGA_item|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA_item|DOUT[4]~feeder_combout\,
	asdata => \CPU|ULA_item|saida[4]~4_combout\,
	sload => \CPU|DECODER_item|saida[4]~3_combout\,
	ena => \CPU|DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(4));

-- Location: FF_X43_Y1_N29
\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

-- Location: MLABCELL_X42_Y2_N54
\RAM|ram~1053\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1053_combout\ = ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~5_combout\ & ( (\RAM|ram~37_q\ & !\ROM|memROM~0_combout\) ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~37_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~1053_combout\);

-- Location: FF_X42_Y2_N38
\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

-- Location: MLABCELL_X42_Y2_N39
\RAM|ram~1051\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1051_combout\ = ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~5_combout\ & ( (\RAM|ram~21_q\ & !\ROM|memROM~0_combout\) ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~1051_combout\);

-- Location: FF_X42_Y2_N44
\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

-- Location: MLABCELL_X42_Y2_N45
\RAM|ram~1052\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1052_combout\ = ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~5_combout\ & ( (\RAM|ram~29_q\ & !\ROM|memROM~0_combout\) ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~29_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~1052_combout\);

-- Location: FF_X42_Y2_N20
\RAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~45_q\);

-- Location: MLABCELL_X42_Y2_N18
\RAM|ram~1054\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1054_combout\ = ( \RAM|ram~45_q\ & ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~3_combout\) # (!\ROM|memROM~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \RAM|ALT_INV_ram~45_q\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~1054_combout\);

-- Location: MLABCELL_X42_Y2_N24
\RAM|ram~1055\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1055_combout\ = ( \RAM|ram~1052_combout\ & ( \RAM|ram~1054_combout\ & ( (!\ROM|memROM~1_combout\) # ((!\ROM|memROM~2_combout\ & ((\RAM|ram~1051_combout\))) # (\ROM|memROM~2_combout\ & (\RAM|ram~1053_combout\))) ) ) ) # ( !\RAM|ram~1052_combout\ & 
-- ( \RAM|ram~1054_combout\ & ( (!\ROM|memROM~1_combout\ & (\ROM|memROM~2_combout\)) # (\ROM|memROM~1_combout\ & ((!\ROM|memROM~2_combout\ & ((\RAM|ram~1051_combout\))) # (\ROM|memROM~2_combout\ & (\RAM|ram~1053_combout\)))) ) ) ) # ( \RAM|ram~1052_combout\ 
-- & ( !\RAM|ram~1054_combout\ & ( (!\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\)) # (\ROM|memROM~1_combout\ & ((!\ROM|memROM~2_combout\ & ((\RAM|ram~1051_combout\))) # (\ROM|memROM~2_combout\ & (\RAM|ram~1053_combout\)))) ) ) ) # ( 
-- !\RAM|ram~1052_combout\ & ( !\RAM|ram~1054_combout\ & ( (\ROM|memROM~1_combout\ & ((!\ROM|memROM~2_combout\ & ((\RAM|ram~1051_combout\))) # (\ROM|memROM~2_combout\ & (\RAM|ram~1053_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~1053_combout\,
	datad => \RAM|ALT_INV_ram~1051_combout\,
	datae => \RAM|ALT_INV_ram~1052_combout\,
	dataf => \RAM|ALT_INV_ram~1054_combout\,
	combout => \RAM|ram~1055_combout\);

-- Location: LABCELL_X43_Y1_N15
\CPU|MUX_item|saida_MUX[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_item|saida_MUX[5]~1_combout\ = ( \RAM|ram~1055_combout\ & ( \ROM|memROM~5_combout\ & ( (\ROM|memROM~4_combout\ & \CPU|DECODER_item|Equal11~1_combout\) ) ) ) # ( !\RAM|ram~1055_combout\ & ( \ROM|memROM~5_combout\ & ( (\ROM|memROM~4_combout\ & 
-- \CPU|DECODER_item|Equal11~1_combout\) ) ) ) # ( \RAM|ram~1055_combout\ & ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~4_combout\ & (!\CPU|DECODER_item|Equal11~1_combout\ & ((\ROM|memROM~12_combout\) # (\RAM|dado_out~0_combout\)))) # (\ROM|memROM~4_combout\ 
-- & (((\CPU|DECODER_item|Equal11~1_combout\)))) ) ) ) # ( !\RAM|ram~1055_combout\ & ( !\ROM|memROM~5_combout\ & ( (\ROM|memROM~4_combout\ & \CPU|DECODER_item|Equal11~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001001011010010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \RAM|ALT_INV_dado_out~0_combout\,
	datac => \CPU|DECODER_item|ALT_INV_Equal11~1_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \RAM|ALT_INV_ram~1055_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \CPU|MUX_item|saida_MUX[5]~1_combout\);

-- Location: LABCELL_X43_Y1_N48
\CPU|ULA_item|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~21_sumout\ = SUM(( !\CPU|MUX_item|saida_MUX[5]~1_combout\ $ (((\CPU|DECODER_item|saida~1_combout\ & ((\CPU|DECODER_item|saida[4]~5_combout\) # (\CPU|DECODER_item|Equal11~2_combout\))))) ) + ( \CPU|REGA_item|DOUT\(5) ) + ( 
-- \CPU|ULA_item|Add0~18\ ))
-- \CPU|ULA_item|Add0~22\ = CARRY(( !\CPU|MUX_item|saida_MUX[5]~1_combout\ $ (((\CPU|DECODER_item|saida~1_combout\ & ((\CPU|DECODER_item|saida[4]~5_combout\) # (\CPU|DECODER_item|Equal11~2_combout\))))) ) + ( \CPU|REGA_item|DOUT\(5) ) + ( 
-- \CPU|ULA_item|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110110000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal11~2_combout\,
	datab => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datac => \CPU|DECODER_item|ALT_INV_saida[4]~5_combout\,
	datad => \CPU|MUX_item|ALT_INV_saida_MUX[5]~1_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(5),
	cin => \CPU|ULA_item|Add0~18\,
	sumout => \CPU|ULA_item|Add0~21_sumout\,
	cout => \CPU|ULA_item|Add0~22\);

-- Location: LABCELL_X44_Y1_N6
\CPU|REGA_item|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA_item|DOUT[5]~feeder_combout\ = ( \CPU|ULA_item|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA_item|ALT_INV_Add0~21_sumout\,
	combout => \CPU|REGA_item|DOUT[5]~feeder_combout\);

-- Location: LABCELL_X44_Y1_N51
\CPU|ULA_item|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|saida[5]~5_combout\ = ( \CPU|MUX_item|saida_MUX[5]~1_combout\ & ( (!\CPU|DECODER_item|saida~1_combout\) # (\CPU|REGA_item|DOUT\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REGA_item|ALT_INV_DOUT\(5),
	datad => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	dataf => \CPU|MUX_item|ALT_INV_saida_MUX[5]~1_combout\,
	combout => \CPU|ULA_item|saida[5]~5_combout\);

-- Location: FF_X44_Y1_N8
\CPU|REGA_item|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA_item|DOUT[5]~feeder_combout\,
	asdata => \CPU|ULA_item|saida[5]~5_combout\,
	sload => \CPU|DECODER_item|saida[4]~3_combout\,
	ena => \CPU|DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(5));

-- Location: FF_X43_Y1_N7
\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

-- Location: FF_X40_Y2_N46
\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

-- Location: FF_X40_Y2_N52
\RAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~46_q\);

-- Location: FF_X43_Y1_N58
\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

-- Location: LABCELL_X44_Y1_N30
\RAM|ram~1056\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1056_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~1_combout\ & ( \RAM|ram~38_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~1_combout\ & ( \RAM|ram~22_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~1_combout\ & ( \RAM|ram~46_q\ 
-- ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~1_combout\ & ( \RAM|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datab => \RAM|ALT_INV_ram~22_q\,
	datac => \RAM|ALT_INV_ram~46_q\,
	datad => \RAM|ALT_INV_ram~38_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~1056_combout\);

-- Location: LABCELL_X43_Y1_N0
\CPU|MUX_item|saida_MUX[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_item|saida_MUX[6]~2_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~5_combout\ & ( \CPU|DECODER_item|Equal11~1_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~5_combout\ & ( \CPU|DECODER_item|Equal11~1_combout\ ) ) ) # ( 
-- \ROM|memROM~12_combout\ & ( !\ROM|memROM~5_combout\ & ( (\RAM|ram~1056_combout\ & (!\ROM|memROM~4_combout\ & !\CPU|DECODER_item|Equal11~1_combout\)) ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~5_combout\ & ( (\RAM|ram~1056_combout\ & 
-- (\RAM|dado_out~0_combout\ & (!\ROM|memROM~4_combout\ & !\CPU|DECODER_item|Equal11~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000010100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~1056_combout\,
	datab => \RAM|ALT_INV_dado_out~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \CPU|DECODER_item|ALT_INV_Equal11~1_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \CPU|MUX_item|saida_MUX[6]~2_combout\);

-- Location: LABCELL_X43_Y1_N51
\CPU|ULA_item|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~25_sumout\ = SUM(( !\CPU|MUX_item|saida_MUX[6]~2_combout\ $ (((\CPU|DECODER_item|saida~1_combout\ & ((\CPU|DECODER_item|saida[4]~5_combout\) # (\CPU|DECODER_item|Equal11~2_combout\))))) ) + ( \CPU|REGA_item|DOUT\(6) ) + ( 
-- \CPU|ULA_item|Add0~22\ ))
-- \CPU|ULA_item|Add0~26\ = CARRY(( !\CPU|MUX_item|saida_MUX[6]~2_combout\ $ (((\CPU|DECODER_item|saida~1_combout\ & ((\CPU|DECODER_item|saida[4]~5_combout\) # (\CPU|DECODER_item|Equal11~2_combout\))))) ) + ( \CPU|REGA_item|DOUT\(6) ) + ( 
-- \CPU|ULA_item|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110110000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal11~2_combout\,
	datab => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datac => \CPU|DECODER_item|ALT_INV_saida[4]~5_combout\,
	datad => \CPU|MUX_item|ALT_INV_saida_MUX[6]~2_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(6),
	cin => \CPU|ULA_item|Add0~22\,
	sumout => \CPU|ULA_item|Add0~25_sumout\,
	cout => \CPU|ULA_item|Add0~26\);

-- Location: LABCELL_X44_Y1_N24
\CPU|REGA_item|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA_item|DOUT[6]~feeder_combout\ = ( \CPU|ULA_item|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA_item|ALT_INV_Add0~25_sumout\,
	combout => \CPU|REGA_item|DOUT[6]~feeder_combout\);

-- Location: LABCELL_X44_Y1_N36
\CPU|ULA_item|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|saida[6]~6_combout\ = ( \CPU|DECODER_item|saida~1_combout\ & ( \CPU|MUX_item|saida_MUX[6]~2_combout\ & ( \CPU|REGA_item|DOUT\(6) ) ) ) # ( !\CPU|DECODER_item|saida~1_combout\ & ( \CPU|MUX_item|saida_MUX[6]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REGA_item|ALT_INV_DOUT\(6),
	datae => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	dataf => \CPU|MUX_item|ALT_INV_saida_MUX[6]~2_combout\,
	combout => \CPU|ULA_item|saida[6]~6_combout\);

-- Location: FF_X44_Y1_N26
\CPU|REGA_item|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA_item|DOUT[6]~feeder_combout\,
	asdata => \CPU|ULA_item|saida[6]~6_combout\,
	sload => \CPU|DECODER_item|saida[4]~3_combout\,
	ena => \CPU|DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(6));

-- Location: FF_X42_Y2_N2
\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

-- Location: MLABCELL_X42_Y2_N0
\RAM|ram~1058\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1058_combout\ = ( \RAM|ram~31_q\ & ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~3_combout\) # (!\ROM|memROM~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datae => \RAM|ALT_INV_ram~31_q\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~1058_combout\);

-- Location: FF_X42_Y2_N17
\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

-- Location: MLABCELL_X42_Y2_N15
\RAM|ram~1057\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1057_combout\ = ( \RAM|ram~23_q\ & ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~3_combout\) # (!\ROM|memROM~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \RAM|ALT_INV_ram~23_q\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~1057_combout\);

-- Location: FF_X42_Y1_N49
\RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~39_q\);

-- Location: MLABCELL_X42_Y2_N6
\RAM|ram~1059\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1059_combout\ = ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~0_combout\ & \RAM|ram~39_q\) ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_ram~39_q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~1059_combout\);

-- Location: FF_X39_Y1_N34
\RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA_item|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~47_q\);

-- Location: LABCELL_X41_Y2_N15
\RAM|ram~1060\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1060_combout\ = ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~0_combout\ & \RAM|ram~47_q\) ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \RAM|ALT_INV_ram~47_q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~1060_combout\);

-- Location: MLABCELL_X42_Y2_N30
\RAM|ram~1061\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1061_combout\ = ( \RAM|ram~1059_combout\ & ( \RAM|ram~1060_combout\ & ( ((!\ROM|memROM~1_combout\ & (\RAM|ram~1058_combout\)) # (\ROM|memROM~1_combout\ & ((\RAM|ram~1057_combout\)))) # (\ROM|memROM~2_combout\) ) ) ) # ( !\RAM|ram~1059_combout\ & 
-- ( \RAM|ram~1060_combout\ & ( (!\ROM|memROM~1_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM|ram~1058_combout\))) # (\ROM|memROM~1_combout\ & (((\RAM|ram~1057_combout\ & !\ROM|memROM~2_combout\)))) ) ) ) # ( \RAM|ram~1059_combout\ & ( 
-- !\RAM|ram~1060_combout\ & ( (!\ROM|memROM~1_combout\ & (\RAM|ram~1058_combout\ & ((!\ROM|memROM~2_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~2_combout\) # (\RAM|ram~1057_combout\)))) ) ) ) # ( !\RAM|ram~1059_combout\ & ( 
-- !\RAM|ram~1060_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~1_combout\ & (\RAM|ram~1058_combout\)) # (\ROM|memROM~1_combout\ & ((\RAM|ram~1057_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~1058_combout\,
	datab => \RAM|ALT_INV_ram~1057_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~1059_combout\,
	dataf => \RAM|ALT_INV_ram~1060_combout\,
	combout => \RAM|ram~1061_combout\);

-- Location: LABCELL_X43_Y1_N54
\CPU|ULA_item|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~29_sumout\ = SUM(( (!\CPU|DECODER_item|saida~1_combout\ & ((!\RAM|dado_out~1_combout\) # ((!\RAM|ram~1061_combout\)))) # (\CPU|DECODER_item|saida~1_combout\ & (!\CPU|DECODER_item|saida[4]~3_combout\ $ (((!\RAM|dado_out~1_combout\) # 
-- (!\RAM|ram~1061_combout\))))) ) + ( \CPU|REGA_item|DOUT\(7) ) + ( \CPU|ULA_item|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010111110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datab => \RAM|ALT_INV_dado_out~1_combout\,
	datac => \CPU|DECODER_item|ALT_INV_saida[4]~3_combout\,
	datad => \RAM|ALT_INV_ram~1061_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(7),
	cin => \CPU|ULA_item|Add0~26\,
	sumout => \CPU|ULA_item|Add0~29_sumout\);

-- Location: MLABCELL_X42_Y1_N21
\CPU|REGA_item|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA_item|DOUT[7]~feeder_combout\ = ( \CPU|ULA_item|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA_item|ALT_INV_Add0~29_sumout\,
	combout => \CPU|REGA_item|DOUT[7]~feeder_combout\);

-- Location: MLABCELL_X42_Y1_N36
\CPU|ULA_item|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|saida[7]~7_combout\ = ( \CPU|REGA_item|DOUT\(7) & ( \RAM|ram~1061_combout\ & ( (!\ROM|memROM~4_combout\ & ((\ROM|memROM~12_combout\) # (\RAM|dado_out~0_combout\))) ) ) ) # ( !\CPU|REGA_item|DOUT\(7) & ( \RAM|ram~1061_combout\ & ( 
-- (!\CPU|DECODER_item|saida~1_combout\ & (!\ROM|memROM~4_combout\ & ((\ROM|memROM~12_combout\) # (\RAM|dado_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101010000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida~1_combout\,
	datab => \RAM|ALT_INV_dado_out~0_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|REGA_item|ALT_INV_DOUT\(7),
	dataf => \RAM|ALT_INV_ram~1061_combout\,
	combout => \CPU|ULA_item|saida[7]~7_combout\);

-- Location: FF_X42_Y1_N23
\CPU|REGA_item|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA_item|DOUT[7]~feeder_combout\,
	asdata => \CPU|ULA_item|saida[7]~7_combout\,
	sload => \CPU|DECODER_item|saida[4]~3_combout\,
	ena => \CPU|DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(7));

-- Location: IOIBUF_X54_Y16_N55
\Fpga_reset_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fpga_reset_N,
	o => \Fpga_reset_N~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\Sw[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(9),
	o => \Sw[9]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\Sw[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(8),
	o => \Sw[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\Sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(0),
	o => \Sw[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\Sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(1),
	o => \Sw[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\Sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(2),
	o => \Sw[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\Sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(3),
	o => \Sw[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\Sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(4),
	o => \Sw[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\Sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(5),
	o => \Sw[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\Sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(6),
	o => \Sw[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\Sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(7),
	o => \Sw[7]~input_o\);

-- Location: LABCELL_X44_Y14_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


