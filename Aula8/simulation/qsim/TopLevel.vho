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

-- DATE "10/11/2022 11:54:41"

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
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[8]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[7]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[8]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[9]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[10]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[11]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[12]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- regA[0]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[4]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regA[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[7]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_simu[8]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~1_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|PC_item|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|PC_item|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|PC_item|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DECODER_item|saida~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC_item|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~0_wirecell_combout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|Equal10~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|Equal10~2_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|Equal10~1_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DECODER_item|saida[6]~1_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|saida[5]~0_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~2\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~6\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~9_sumout\ : std_logic;
SIGNAL \LogicSevenSeg_item|DecoderEndereco_item|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|Equal10~3_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|Equal10~4_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|Equal10~5_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~10\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~13_sumout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|DecoderEndereco_item|Equal0~1_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|DecoderEndereco_item|Equal0~2_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|DecoderEndereco_item|Equal0~3_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3_item|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3_item|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3_item|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|DecoderEndereco_item|Equal0~4_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|DecoderEndereco_item|Equal0~5_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~14\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~18\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~22\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~26\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~29_sumout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX0_item|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC_item|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REGA_item|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX1_item|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX2_item|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX3_item|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX4_item|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX5_item|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|REGA_item|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC_item|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_Equal10~5_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_Equal10~4_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_Equal10~3_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
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
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\CPU|REGA_item|ALT_INV_DOUT\(7) <= NOT \CPU|REGA_item|DOUT\(7);
\CPU|REGA_item|ALT_INV_DOUT\(6) <= NOT \CPU|REGA_item|DOUT\(6);
\CPU|REGA_item|ALT_INV_DOUT\(5) <= NOT \CPU|REGA_item|DOUT\(5);
\CPU|REGA_item|ALT_INV_DOUT\(4) <= NOT \CPU|REGA_item|DOUT\(4);
\CPU|REGA_item|ALT_INV_DOUT\(3) <= NOT \CPU|REGA_item|DOUT\(3);
\CPU|REGA_item|ALT_INV_DOUT\(2) <= NOT \CPU|REGA_item|DOUT\(2);
\CPU|REGA_item|ALT_INV_DOUT\(1) <= NOT \CPU|REGA_item|DOUT\(1);
\CPU|REGA_item|ALT_INV_DOUT\(0) <= NOT \CPU|REGA_item|DOUT\(0);
\CPU|PC_item|ALT_INV_DOUT\(8) <= NOT \CPU|PC_item|DOUT\(8);
\CPU|PC_item|ALT_INV_DOUT\(7) <= NOT \CPU|PC_item|DOUT\(7);
\CPU|PC_item|ALT_INV_DOUT\(6) <= NOT \CPU|PC_item|DOUT\(6);
\CPU|PC_item|ALT_INV_DOUT\(5) <= NOT \CPU|PC_item|DOUT\(5);
\CPU|PC_item|ALT_INV_DOUT\(4) <= NOT \CPU|PC_item|DOUT\(4);
\CPU|PC_item|ALT_INV_DOUT\(3) <= NOT \CPU|PC_item|DOUT\(3);
\CPU|PC_item|ALT_INV_DOUT\(2) <= NOT \CPU|PC_item|DOUT\(2);
\CPU|PC_item|ALT_INV_DOUT\(1) <= NOT \CPU|PC_item|DOUT\(1);
\CPU|PC_item|ALT_INV_DOUT\(0) <= NOT \CPU|PC_item|DOUT\(0);
\LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \LogicSevenSeg_item|HEX3_item|DOUT[2]~DUPLICATE_q\;
\CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC_item|DOUT[3]~DUPLICATE_q\;
\CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC_item|DOUT[2]~DUPLICATE_q\;
\CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC_item|DOUT[1]~DUPLICATE_q\;
\CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC_item|DOUT[0]~DUPLICATE_q\;
\CPU|DECODER_item|ALT_INV_Equal10~5_combout\ <= NOT \CPU|DECODER_item|Equal10~5_combout\;
\CPU|DECODER_item|ALT_INV_Equal10~4_combout\ <= NOT \CPU|DECODER_item|Equal10~4_combout\;
\CPU|DECODER_item|ALT_INV_Equal10~3_combout\ <= NOT \CPU|DECODER_item|Equal10~3_combout\;
\CPU|DECODER_item|ALT_INV_Equal10~2_combout\ <= NOT \CPU|DECODER_item|Equal10~2_combout\;
\CPU|DECODER_item|ALT_INV_Equal10~1_combout\ <= NOT \CPU|DECODER_item|Equal10~1_combout\;
\CPU|DECODER_item|ALT_INV_Equal10~0_combout\ <= NOT \CPU|DECODER_item|Equal10~0_combout\;
\LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(1) <= NOT \LogicSevenSeg_item|HEX5_item|DOUT\(1);
\LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(2) <= NOT \LogicSevenSeg_item|HEX5_item|DOUT\(2);
\LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(3) <= NOT \LogicSevenSeg_item|HEX5_item|DOUT\(3);
\LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(0) <= NOT \LogicSevenSeg_item|HEX5_item|DOUT\(0);
\LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(1) <= NOT \LogicSevenSeg_item|HEX4_item|DOUT\(1);
\LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(2) <= NOT \LogicSevenSeg_item|HEX4_item|DOUT\(2);
\LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(3) <= NOT \LogicSevenSeg_item|HEX4_item|DOUT\(3);
\LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(0) <= NOT \LogicSevenSeg_item|HEX4_item|DOUT\(0);
\LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1) <= NOT \LogicSevenSeg_item|HEX3_item|DOUT\(1);
\LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(2) <= NOT \LogicSevenSeg_item|HEX3_item|DOUT\(2);
\LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3) <= NOT \LogicSevenSeg_item|HEX3_item|DOUT\(3);
\LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0) <= NOT \LogicSevenSeg_item|HEX3_item|DOUT\(0);
\LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1) <= NOT \LogicSevenSeg_item|HEX2_item|DOUT\(1);
\LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2) <= NOT \LogicSevenSeg_item|HEX2_item|DOUT\(2);
\LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3) <= NOT \LogicSevenSeg_item|HEX2_item|DOUT\(3);
\LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0) <= NOT \LogicSevenSeg_item|HEX2_item|DOUT\(0);
\LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1) <= NOT \LogicSevenSeg_item|HEX1_item|DOUT\(1);
\LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2) <= NOT \LogicSevenSeg_item|HEX1_item|DOUT\(2);
\LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3) <= NOT \LogicSevenSeg_item|HEX1_item|DOUT\(3);
\LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0) <= NOT \LogicSevenSeg_item|HEX1_item|DOUT\(0);
\LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1) <= NOT \LogicSevenSeg_item|HEX0_item|DOUT\(1);
\LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2) <= NOT \LogicSevenSeg_item|HEX0_item|DOUT\(2);
\LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3) <= NOT \LogicSevenSeg_item|HEX0_item|DOUT\(3);
\LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0) <= NOT \LogicSevenSeg_item|HEX0_item|DOUT\(0);
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;

-- Location: IOOBUF_X54_Y14_N62
\PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC_item|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC(0));

-- Location: IOOBUF_X54_Y14_N96
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

-- Location: IOOBUF_X54_Y14_N79
\PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC_item|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC(2));

-- Location: IOOBUF_X54_Y14_N45
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

-- Location: IOOBUF_X54_Y17_N56
\PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC_item|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC(4));

-- Location: IOOBUF_X54_Y17_N39
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

-- Location: IOOBUF_X54_Y15_N56
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

-- Location: IOOBUF_X54_Y17_N5
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

-- Location: IOOBUF_X38_Y45_N19
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

-- Location: IOOBUF_X43_Y45_N53
\control[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_control(0));

-- Location: IOOBUF_X40_Y45_N59
\control[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_control(1));

-- Location: IOOBUF_X42_Y45_N36
\control[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_control(2));

-- Location: IOOBUF_X14_Y45_N53
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

-- Location: IOOBUF_X43_Y45_N36
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

-- Location: IOOBUF_X38_Y45_N2
\control[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_control(5));

-- Location: IOOBUF_X12_Y45_N53
\control[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_control(6));

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X36_Y45_N2
\control[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_control(8));

-- Location: IOOBUF_X54_Y16_N5
\control[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_control(9));

-- Location: IOOBUF_X54_Y16_N56
\control[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_control(10));

-- Location: IOOBUF_X54_Y16_N39
\control[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_control(11));

-- Location: IOOBUF_X16_Y45_N76
\control[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[0]~0_combout\,
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
	i => \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[1]~1_combout\,
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
	i => \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[2]~2_combout\,
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
	i => \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[3]~3_combout\,
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
	i => \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[4]~4_combout\,
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
	i => \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[5]~5_combout\,
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
	i => \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[6]~6_combout\,
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
	i => \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[0]~0_combout\,
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
	i => \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[1]~1_combout\,
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
	i => \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[2]~2_combout\,
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
	i => \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[3]~3_combout\,
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
	i => \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[4]~4_combout\,
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
	i => \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[5]~5_combout\,
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
	i => \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_Hex5(6));

-- Location: IOOBUF_X40_Y45_N76
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

-- Location: IOOBUF_X54_Y16_N22
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

-- Location: IOOBUF_X42_Y45_N19
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

-- Location: IOOBUF_X42_Y45_N2
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

-- Location: IOOBUF_X54_Y15_N22
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

-- Location: IOOBUF_X54_Y15_N5
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

-- Location: IOOBUF_X40_Y45_N93
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

-- Location: IOOBUF_X54_Y15_N39
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

-- Location: IOOBUF_X43_Y45_N2
\RAM_simu[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_RAM_simu(0));

-- Location: IOOBUF_X40_Y45_N42
\RAM_simu[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_RAM_simu(1));

-- Location: IOOBUF_X42_Y45_N53
\RAM_simu[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_RAM_simu(2));

-- Location: IOOBUF_X44_Y45_N36
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

-- Location: IOOBUF_X10_Y45_N36
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

-- Location: IOOBUF_X36_Y45_N19
\RAM_simu[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_RAM_simu(5));

-- Location: IOOBUF_X43_Y45_N19
\RAM_simu[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_simu(6));

-- Location: IOOBUF_X54_Y17_N22
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

-- Location: IOOBUF_X36_Y45_N36
\RAM_simu[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
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

-- Location: CLKCTRL_G7
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: LABCELL_X41_Y7_N30
\CPU|incrementaPC_item|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~1_sumout\ = SUM(( \CPU|PC_item|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC_item|Add0~2\ = CARRY(( \CPU|PC_item|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC_item|Add0~1_sumout\,
	cout => \CPU|incrementaPC_item|Add0~2\);

-- Location: LABCELL_X40_Y7_N18
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X41_Y7_N32
\CPU|PC_item|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC_item|Add0~1_sumout\,
	asdata => \ROM|memROM~0_wirecell_combout\,
	sload => \CPU|DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y7_N12
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT[1]~DUPLICATE_q\ $ (!\CPU|PC_item|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~2_combout\);

-- Location: FF_X41_Y7_N37
\CPU|PC_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC_item|Add0~9_sumout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(2));

-- Location: LABCELL_X41_Y7_N33
\CPU|incrementaPC_item|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~5_sumout\ = SUM(( \CPU|PC_item|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~2\ ))
-- \CPU|incrementaPC_item|Add0~6\ = CARRY(( \CPU|PC_item|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC_item|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC_item|Add0~2\,
	sumout => \CPU|incrementaPC_item|Add0~5_sumout\,
	cout => \CPU|incrementaPC_item|Add0~6\);

-- Location: LABCELL_X41_Y7_N36
\CPU|incrementaPC_item|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~9_sumout\ = SUM(( \CPU|PC_item|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~6\ ))
-- \CPU|incrementaPC_item|Add0~10\ = CARRY(( \CPU|PC_item|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC_item|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC_item|Add0~6\,
	sumout => \CPU|incrementaPC_item|Add0~9_sumout\,
	cout => \CPU|incrementaPC_item|Add0~10\);

-- Location: FF_X41_Y7_N38
\CPU|PC_item|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC_item|Add0~9_sumout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y7_N0
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \CPU|PC_item|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC_item|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC_item|DOUT[3]~DUPLICATE_q\ $ (!\CPU|PC_item|DOUT[0]~DUPLICATE_q\) ) ) ) # ( !\CPU|PC_item|DOUT[2]~DUPLICATE_q\ & ( 
-- !\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & \CPU|PC_item|DOUT[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~1_combout\);

-- Location: FF_X41_Y7_N34
\CPU|PC_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC_item|Add0~5_sumout\,
	asdata => \ROM|memROM~1_combout\,
	sload => \CPU|DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(1));

-- Location: FF_X41_Y7_N35
\CPU|PC_item|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC_item|Add0~5_sumout\,
	asdata => \ROM|memROM~1_combout\,
	sload => \CPU|DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y7_N27
\CPU|DECODER_item|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|saida~2_combout\ = ( \CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & \CPU|PC_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT\(2),
	dataf => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \CPU|DECODER_item|saida~2_combout\);

-- Location: FF_X41_Y7_N40
\CPU|PC_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC_item|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(3));

-- Location: LABCELL_X41_Y7_N39
\CPU|incrementaPC_item|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~13_sumout\ = SUM(( \CPU|PC_item|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~10\ ))
-- \CPU|incrementaPC_item|Add0~14\ = CARRY(( \CPU|PC_item|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC_item|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC_item|Add0~10\,
	sumout => \CPU|incrementaPC_item|Add0~13_sumout\,
	cout => \CPU|incrementaPC_item|Add0~14\);

-- Location: FF_X41_Y7_N41
\CPU|PC_item|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC_item|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y7_N24
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( \CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ( ((!\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & !\CPU|PC_item|DOUT[2]~DUPLICATE_q\)) # (\CPU|PC_item|DOUT[1]~DUPLICATE_q\) ) ) # ( !\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ( 
-- ((\CPU|PC_item|DOUT[2]~DUPLICATE_q\) # (\CPU|PC_item|DOUT[1]~DUPLICATE_q\)) # (\CPU|PC_item|DOUT[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111111001111000011111100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X41_Y7_N15
\ROM|memROM~0_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_wirecell_combout\ = ( !\ROM|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~0_wirecell_combout\);

-- Location: FF_X41_Y7_N31
\CPU|PC_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC_item|Add0~1_sumout\,
	asdata => \ROM|memROM~0_wirecell_combout\,
	sload => \CPU|DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(0));

-- Location: LABCELL_X41_Y7_N42
\CPU|incrementaPC_item|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~17_sumout\ = SUM(( \CPU|PC_item|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~14\ ))
-- \CPU|incrementaPC_item|Add0~18\ = CARRY(( \CPU|PC_item|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC_item|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC_item|Add0~14\,
	sumout => \CPU|incrementaPC_item|Add0~17_sumout\,
	cout => \CPU|incrementaPC_item|Add0~18\);

-- Location: FF_X41_Y7_N43
\CPU|PC_item|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC_item|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(4));

-- Location: LABCELL_X41_Y7_N45
\CPU|incrementaPC_item|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~21_sumout\ = SUM(( \CPU|PC_item|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~18\ ))
-- \CPU|incrementaPC_item|Add0~22\ = CARRY(( \CPU|PC_item|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC_item|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC_item|Add0~18\,
	sumout => \CPU|incrementaPC_item|Add0~21_sumout\,
	cout => \CPU|incrementaPC_item|Add0~22\);

-- Location: LABCELL_X41_Y7_N6
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \CPU|PC_item|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & \CPU|PC_item|DOUT[0]~DUPLICATE_q\) ) ) ) # ( !\CPU|PC_item|DOUT[2]~DUPLICATE_q\ & ( 
-- \CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( \CPU|PC_item|DOUT[0]~DUPLICATE_q\ ) ) ) # ( \CPU|PC_item|DOUT[2]~DUPLICATE_q\ & ( !\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( \CPU|PC_item|DOUT[0]~DUPLICATE_q\ ) ) ) # ( !\CPU|PC_item|DOUT[2]~DUPLICATE_q\ & ( 
-- !\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & \CPU|PC_item|DOUT[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111100000000111111110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~3_combout\);

-- Location: FF_X41_Y7_N46
\CPU|PC_item|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC_item|Add0~21_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \CPU|DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(5));

-- Location: LABCELL_X41_Y7_N48
\CPU|incrementaPC_item|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~25_sumout\ = SUM(( \CPU|PC_item|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~22\ ))
-- \CPU|incrementaPC_item|Add0~26\ = CARRY(( \CPU|PC_item|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC_item|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC_item|Add0~22\,
	sumout => \CPU|incrementaPC_item|Add0~25_sumout\,
	cout => \CPU|incrementaPC_item|Add0~26\);

-- Location: FF_X41_Y7_N49
\CPU|PC_item|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC_item|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(6));

-- Location: LABCELL_X41_Y7_N51
\CPU|incrementaPC_item|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~29_sumout\ = SUM(( \CPU|PC_item|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~26\ ))
-- \CPU|incrementaPC_item|Add0~30\ = CARRY(( \CPU|PC_item|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC_item|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC_item|Add0~26\,
	sumout => \CPU|incrementaPC_item|Add0~29_sumout\,
	cout => \CPU|incrementaPC_item|Add0~30\);

-- Location: FF_X41_Y7_N52
\CPU|PC_item|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC_item|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(7));

-- Location: LABCELL_X41_Y7_N54
\CPU|incrementaPC_item|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC_item|Add0~33_sumout\ = SUM(( \CPU|PC_item|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC_item|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC_item|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC_item|Add0~30\,
	sumout => \CPU|incrementaPC_item|Add0~33_sumout\);

-- Location: FF_X41_Y7_N55
\CPU|PC_item|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC_item|Add0~33_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \CPU|DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(8));

-- Location: LABCELL_X48_Y14_N39
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \CPU|PC_item|DOUT\(2) & ( \CPU|PC_item|DOUT\(0) & ( (!\CPU|PC_item|DOUT\(3)) # (!\CPU|PC_item|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\CPU|PC_item|DOUT\(2) & ( \CPU|PC_item|DOUT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datac => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU|PC_item|ALT_INV_DOUT\(2),
	dataf => \CPU|PC_item|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~4_combout\);

-- Location: LABCELL_X48_Y14_N57
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \CPU|PC_item|DOUT\(2) & ( !\CPU|PC_item|DOUT\(0) ) ) # ( !\CPU|PC_item|DOUT\(2) & ( !\CPU|PC_item|DOUT\(0) & ( (\CPU|PC_item|DOUT[1]~DUPLICATE_q\) # (\CPU|PC_item|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datac => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU|PC_item|ALT_INV_DOUT\(2),
	dataf => \CPU|PC_item|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X48_Y14_N15
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \CPU|PC_item|DOUT\(2) & ( \CPU|PC_item|DOUT\(0) & ( (\CPU|PC_item|DOUT\(3) & \CPU|PC_item|DOUT[1]~DUPLICATE_q\) ) ) ) # ( \CPU|PC_item|DOUT\(2) & ( !\CPU|PC_item|DOUT\(0) & ( (!\CPU|PC_item|DOUT\(3)) # 
-- (!\CPU|PC_item|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\CPU|PC_item|DOUT\(2) & ( !\CPU|PC_item|DOUT\(0) & ( (\CPU|PC_item|DOUT[1]~DUPLICATE_q\) # (\CPU|PC_item|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111110101111101000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datac => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU|PC_item|ALT_INV_DOUT\(2),
	dataf => \CPU|PC_item|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X40_Y7_N0
\CPU|DECODER_item|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|Equal10~0_combout\ = ( \CPU|PC_item|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & (\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & \CPU|PC_item|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \CPU|DECODER_item|Equal10~0_combout\);

-- Location: LABCELL_X40_Y7_N27
\CPU|DECODER_item|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|Equal10~2_combout\ = ( !\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & !\CPU|PC_item|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \CPU|DECODER_item|Equal10~2_combout\);

-- Location: LABCELL_X40_Y7_N9
\CPU|DECODER_item|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|Equal10~1_combout\ = ( \CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC_item|DOUT[1]~DUPLICATE_q\) # (!\CPU|PC_item|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ((\CPU|PC_item|DOUT[2]~DUPLICATE_q\) # (\CPU|PC_item|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \CPU|DECODER_item|Equal10~1_combout\);

-- Location: LABCELL_X40_Y7_N30
\CPU|ULA_item|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~34_cout\ = CARRY(( (!\CPU|DECODER_item|Equal10~1_combout\) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	datac => \CPU|DECODER_item|ALT_INV_Equal10~0_combout\,
	cin => GND,
	cout => \CPU|ULA_item|Add0~34_cout\);

-- Location: LABCELL_X40_Y7_N33
\CPU|ULA_item|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~1_sumout\ = SUM(( \CPU|REGA_item|DOUT\(0) ) + ( ((!\CPU|DECODER_item|Equal10~1_combout\ & ((!\CPU|DECODER_item|Equal10~2_combout\) # (\ROM|memROM~0_combout\)))) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( \CPU|ULA_item|Add0~34_cout\ 
-- ))
-- \CPU|ULA_item|Add0~2\ = CARRY(( \CPU|REGA_item|DOUT\(0) ) + ( ((!\CPU|DECODER_item|Equal10~1_combout\ & ((!\CPU|DECODER_item|Equal10~2_combout\) # (\ROM|memROM~0_combout\)))) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( \CPU|ULA_item|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|REGA_item|ALT_INV_DOUT\(0),
	dataf => \CPU|DECODER_item|ALT_INV_Equal10~2_combout\,
	cin => \CPU|ULA_item|Add0~34_cout\,
	sumout => \CPU|ULA_item|Add0~1_sumout\,
	cout => \CPU|ULA_item|Add0~2\);

-- Location: LABCELL_X40_Y7_N24
\CPU|DECODER_item|saida[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|saida[6]~1_combout\ = ( !\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & !\CPU|PC_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT\(2),
	dataf => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \CPU|DECODER_item|saida[6]~1_combout\);

-- Location: LABCELL_X40_Y7_N3
\CPU|DECODER_item|saida[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|saida[5]~0_combout\ = ( \CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC_item|DOUT\(2)) # (!\CPU|PC_item|DOUT\(1)))) ) ) # ( !\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( !\CPU|PC_item|DOUT[0]~DUPLICATE_q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datac => \CPU|PC_item|ALT_INV_DOUT\(1),
	dataf => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \CPU|DECODER_item|saida[5]~0_combout\);

-- Location: FF_X40_Y7_N35
\CPU|REGA_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA_item|Add0~1_sumout\,
	asdata => \ROM|memROM~0_wirecell_combout\,
	sload => \CPU|DECODER_item|saida[6]~1_combout\,
	ena => \CPU|DECODER_item|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(0));

-- Location: LABCELL_X40_Y7_N36
\CPU|ULA_item|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~5_sumout\ = SUM(( \CPU|REGA_item|DOUT\(1) ) + ( ((!\CPU|DECODER_item|Equal10~1_combout\ & ((!\CPU|DECODER_item|Equal10~2_combout\) # (!\ROM|memROM~1_combout\)))) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( \CPU|ULA_item|Add0~2\ ))
-- \CPU|ULA_item|Add0~6\ = CARRY(( \CPU|REGA_item|DOUT\(1) ) + ( ((!\CPU|DECODER_item|Equal10~1_combout\ & ((!\CPU|DECODER_item|Equal10~2_combout\) # (!\ROM|memROM~1_combout\)))) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( \CPU|ULA_item|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~2_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|REGA_item|ALT_INV_DOUT\(1),
	dataf => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	cin => \CPU|ULA_item|Add0~2\,
	sumout => \CPU|ULA_item|Add0~5_sumout\,
	cout => \CPU|ULA_item|Add0~6\);

-- Location: FF_X40_Y7_N38
\CPU|REGA_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA_item|Add0~5_sumout\,
	asdata => \ROM|memROM~1_combout\,
	sload => \CPU|DECODER_item|saida[6]~1_combout\,
	ena => \CPU|DECODER_item|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(1));

-- Location: LABCELL_X40_Y7_N39
\CPU|ULA_item|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~9_sumout\ = SUM(( \CPU|REGA_item|DOUT\(2) ) + ( ((!\CPU|DECODER_item|Equal10~1_combout\ & ((!\CPU|DECODER_item|Equal10~2_combout\) # (!\ROM|memROM~2_combout\)))) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( \CPU|ULA_item|Add0~6\ ))
-- \CPU|ULA_item|Add0~10\ = CARRY(( \CPU|REGA_item|DOUT\(2) ) + ( ((!\CPU|DECODER_item|Equal10~1_combout\ & ((!\CPU|DECODER_item|Equal10~2_combout\) # (!\ROM|memROM~2_combout\)))) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( \CPU|ULA_item|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~2_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \CPU|REGA_item|ALT_INV_DOUT\(2),
	dataf => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	cin => \CPU|ULA_item|Add0~6\,
	sumout => \CPU|ULA_item|Add0~9_sumout\,
	cout => \CPU|ULA_item|Add0~10\);

-- Location: FF_X40_Y7_N40
\CPU|REGA_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA_item|Add0~9_sumout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DECODER_item|saida[6]~1_combout\,
	ena => \CPU|DECODER_item|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(2));

-- Location: MLABCELL_X42_Y6_N33
\LogicSevenSeg_item|DecoderEndereco_item|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|DecoderEndereco_item|Equal0~0_combout\ = ( \CPU|PC_item|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT\(3) & (!\CPU|PC_item|DOUT\(2) & \CPU|PC_item|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datac => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	dataf => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~0_combout\);

-- Location: FF_X42_Y6_N31
\LogicSevenSeg_item|HEX0_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX0_item|DOUT\(2));

-- Location: LABCELL_X40_Y7_N12
\CPU|DECODER_item|Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|Equal10~3_combout\ = ( !\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & (\CPU|PC_item|DOUT[2]~DUPLICATE_q\ & !\CPU|PC_item|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \CPU|DECODER_item|Equal10~3_combout\);

-- Location: LABCELL_X40_Y7_N6
\CPU|DECODER_item|Equal10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|Equal10~4_combout\ = ( !\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT[2]~DUPLICATE_q\ & (\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & !\CPU|PC_item|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \CPU|DECODER_item|Equal10~4_combout\);

-- Location: LABCELL_X40_Y7_N15
\CPU|DECODER_item|Equal10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|Equal10~5_combout\ = ( \CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC_item|DOUT[1]~DUPLICATE_q\) # (!\CPU|PC_item|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC_item|DOUT[3]~DUPLICATE_q\ & ( 
-- (\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & (\CPU|PC_item|DOUT[2]~DUPLICATE_q\ & !\CPU|PC_item|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC_item|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \CPU|DECODER_item|Equal10~5_combout\);

-- Location: LABCELL_X40_Y7_N42
\CPU|ULA_item|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~13_sumout\ = SUM(( \CPU|REGA_item|DOUT\(3) ) + ( ((!\CPU|DECODER_item|Equal10~3_combout\ & (!\CPU|DECODER_item|Equal10~4_combout\ & !\CPU|DECODER_item|Equal10~5_combout\))) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( 
-- \CPU|ULA_item|Add0~10\ ))
-- \CPU|ULA_item|Add0~14\ = CARRY(( \CPU|REGA_item|DOUT\(3) ) + ( ((!\CPU|DECODER_item|Equal10~3_combout\ & (!\CPU|DECODER_item|Equal10~4_combout\ & !\CPU|DECODER_item|Equal10~5_combout\))) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( 
-- \CPU|ULA_item|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~3_combout\,
	datac => \CPU|DECODER_item|ALT_INV_Equal10~4_combout\,
	datad => \CPU|REGA_item|ALT_INV_DOUT\(3),
	dataf => \CPU|DECODER_item|ALT_INV_Equal10~5_combout\,
	cin => \CPU|ULA_item|Add0~10\,
	sumout => \CPU|ULA_item|Add0~13_sumout\,
	cout => \CPU|ULA_item|Add0~14\);

-- Location: FF_X40_Y7_N44
\CPU|REGA_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA_item|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER_item|saida[6]~1_combout\,
	ena => \CPU|DECODER_item|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(3));

-- Location: FF_X42_Y6_N35
\LogicSevenSeg_item|HEX0_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(3),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX0_item|DOUT\(3));

-- Location: FF_X42_Y6_N40
\LogicSevenSeg_item|HEX0_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(1),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX0_item|DOUT\(1));

-- Location: FF_X42_Y6_N38
\LogicSevenSeg_item|HEX0_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(0),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX0_item|DOUT\(0));

-- Location: LABCELL_X47_Y2_N27
\LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[0]~0_combout\ = ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(2) & (!\LogicSevenSeg_item|HEX0_item|DOUT\(3) $ (\LogicSevenSeg_item|HEX0_item|DOUT\(1)))) # 
-- (\LogicSevenSeg_item|HEX0_item|DOUT\(2) & (\LogicSevenSeg_item|HEX0_item|DOUT\(3) & !\LogicSevenSeg_item|HEX0_item|DOUT\(1))) ) ) # ( !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( (\LogicSevenSeg_item|HEX0_item|DOUT\(2) & 
-- (!\LogicSevenSeg_item|HEX0_item|DOUT\(3) & !\LogicSevenSeg_item|HEX0_item|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000010100101000010101010010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1),
	dataf => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0),
	combout => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X47_Y2_N30
\LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[1]~1_combout\ = ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX0_item|DOUT\(3) & \LogicSevenSeg_item|HEX0_item|DOUT\(2))) # 
-- (\LogicSevenSeg_item|HEX0_item|DOUT\(1) & (\LogicSevenSeg_item|HEX0_item|DOUT\(3))) ) ) # ( !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( (\LogicSevenSeg_item|HEX0_item|DOUT\(2) & ((\LogicSevenSeg_item|HEX0_item|DOUT\(3)) # 
-- (\LogicSevenSeg_item|HEX0_item|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3),
	datac => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0),
	combout => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X47_Y2_N12
\LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[2]~2_combout\ = ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( (\LogicSevenSeg_item|HEX0_item|DOUT\(1) & (\LogicSevenSeg_item|HEX0_item|DOUT\(3) & \LogicSevenSeg_item|HEX0_item|DOUT\(2))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(3) & (\LogicSevenSeg_item|HEX0_item|DOUT\(1) & !\LogicSevenSeg_item|HEX0_item|DOUT\(2))) # (\LogicSevenSeg_item|HEX0_item|DOUT\(3) & 
-- ((\LogicSevenSeg_item|HEX0_item|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3),
	datac => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0),
	combout => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X47_Y2_N57
\LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[3]~3_combout\ = ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(2) & (!\LogicSevenSeg_item|HEX0_item|DOUT\(3) & !\LogicSevenSeg_item|HEX0_item|DOUT\(1))) # 
-- (\LogicSevenSeg_item|HEX0_item|DOUT\(2) & ((\LogicSevenSeg_item|HEX0_item|DOUT\(1)))) ) ) # ( !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(2) & (\LogicSevenSeg_item|HEX0_item|DOUT\(3) & 
-- \LogicSevenSeg_item|HEX0_item|DOUT\(1))) # (\LogicSevenSeg_item|HEX0_item|DOUT\(2) & (!\LogicSevenSeg_item|HEX0_item|DOUT\(3) & !\LogicSevenSeg_item|HEX0_item|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1),
	dataf => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0),
	combout => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X47_Y2_N39
\LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[4]~4_combout\ = ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(3)) # ((!\LogicSevenSeg_item|HEX0_item|DOUT\(2) & !\LogicSevenSeg_item|HEX0_item|DOUT\(1))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( (\LogicSevenSeg_item|HEX0_item|DOUT\(2) & (!\LogicSevenSeg_item|HEX0_item|DOUT\(3) & !\LogicSevenSeg_item|HEX0_item|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011111010111100001111101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1),
	dataf => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0),
	combout => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X47_Y2_N18
\LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[5]~5_combout\ = ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( !\LogicSevenSeg_item|HEX0_item|DOUT\(3) $ (((!\LogicSevenSeg_item|HEX0_item|DOUT\(1) & \LogicSevenSeg_item|HEX0_item|DOUT\(2)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( (\LogicSevenSeg_item|HEX0_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX0_item|DOUT\(3) & !\LogicSevenSeg_item|HEX0_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011000110110001101100011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3),
	datac => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0),
	combout => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X47_Y2_N51
\LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[6]~6_combout\ = ( \LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(3) & (!\LogicSevenSeg_item|HEX0_item|DOUT\(2) $ (\LogicSevenSeg_item|HEX0_item|DOUT\(1)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX0_item|DOUT\(0) & ( (!\LogicSevenSeg_item|HEX0_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX0_item|DOUT\(2) $ (\LogicSevenSeg_item|HEX0_item|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000010100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(1),
	dataf => \LogicSevenSeg_item|HEX0_item|ALT_INV_DOUT\(0),
	combout => \LogicSevenSeg_item|HEX0Conversor_item|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y6_N9
\LogicSevenSeg_item|DecoderEndereco_item|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|DecoderEndereco_item|Equal0~1_combout\ = ( \CPU|PC_item|DOUT\(2) & ( !\CPU|PC_item|DOUT\(3) & ( (\CPU|PC_item|DOUT\(0) & !\CPU|PC_item|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(0),
	datad => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU|PC_item|ALT_INV_DOUT\(2),
	dataf => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~1_combout\);

-- Location: FF_X42_Y6_N11
\LogicSevenSeg_item|HEX1_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX1_item|DOUT\(2));

-- Location: FF_X42_Y6_N17
\LogicSevenSeg_item|HEX1_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(0),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX1_item|DOUT\(0));

-- Location: FF_X42_Y6_N14
\LogicSevenSeg_item|HEX1_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(3),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX1_item|DOUT\(3));

-- Location: FF_X42_Y6_N50
\LogicSevenSeg_item|HEX1_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(1),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX1_item|DOUT\(1));

-- Location: MLABCELL_X42_Y6_N51
\LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[0]~0_combout\ = ( \LogicSevenSeg_item|HEX1_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(2) & (\LogicSevenSeg_item|HEX1_item|DOUT\(0) & \LogicSevenSeg_item|HEX1_item|DOUT\(3))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX1_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(2) & (\LogicSevenSeg_item|HEX1_item|DOUT\(0) & !\LogicSevenSeg_item|HEX1_item|DOUT\(3))) # (\LogicSevenSeg_item|HEX1_item|DOUT\(2) & (!\LogicSevenSeg_item|HEX1_item|DOUT\(0) 
-- $ (\LogicSevenSeg_item|HEX1_item|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2),
	datab => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3),
	dataf => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1),
	combout => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y6_N42
\LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[1]~1_combout\ = ( \LogicSevenSeg_item|HEX1_item|DOUT\(0) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(3) & (!\LogicSevenSeg_item|HEX1_item|DOUT\(1) & \LogicSevenSeg_item|HEX1_item|DOUT\(2))) # 
-- (\LogicSevenSeg_item|HEX1_item|DOUT\(3) & (\LogicSevenSeg_item|HEX1_item|DOUT\(1))) ) ) # ( !\LogicSevenSeg_item|HEX1_item|DOUT\(0) & ( (\LogicSevenSeg_item|HEX1_item|DOUT\(2) & ((\LogicSevenSeg_item|HEX1_item|DOUT\(1)) # 
-- (\LogicSevenSeg_item|HEX1_item|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000011110000110000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3),
	datac => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1),
	datad => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0),
	combout => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y6_N45
\LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[2]~2_combout\ = ( \LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX1_item|DOUT\(2) & ((!\LogicSevenSeg_item|HEX1_item|DOUT\(0)) # (\LogicSevenSeg_item|HEX1_item|DOUT\(1)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX1_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX1_item|DOUT\(0) & !\LogicSevenSeg_item|HEX1_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0),
	datad => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y6_N15
\LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[3]~3_combout\ = ( \LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX1_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX1_item|DOUT\(2) $ (\LogicSevenSeg_item|HEX1_item|DOUT\(0)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX1_item|DOUT\(2) $ (!\LogicSevenSeg_item|HEX1_item|DOUT\(0)))) # (\LogicSevenSeg_item|HEX1_item|DOUT\(1) & 
-- (\LogicSevenSeg_item|HEX1_item|DOUT\(2) & \LogicSevenSeg_item|HEX1_item|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010011001001000101001100101000100000100010100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2),
	datad => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y6_N12
\LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[4]~4_combout\ = (!\LogicSevenSeg_item|HEX1_item|DOUT\(1) & ((!\LogicSevenSeg_item|HEX1_item|DOUT\(2) & (\LogicSevenSeg_item|HEX1_item|DOUT\(0))) # (\LogicSevenSeg_item|HEX1_item|DOUT\(2) & 
-- ((!\LogicSevenSeg_item|HEX1_item|DOUT\(3)))))) # (\LogicSevenSeg_item|HEX1_item|DOUT\(1) & (((\LogicSevenSeg_item|HEX1_item|DOUT\(0) & !\LogicSevenSeg_item|HEX1_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001000001011110000100000101111000010000010111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0),
	datad => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y6_N27
\LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[5]~5_combout\ = ( \LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(1) & (\LogicSevenSeg_item|HEX1_item|DOUT\(2) & \LogicSevenSeg_item|HEX1_item|DOUT\(0))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX1_item|DOUT\(2) & \LogicSevenSeg_item|HEX1_item|DOUT\(0))) # (\LogicSevenSeg_item|HEX1_item|DOUT\(1) & 
-- ((!\LogicSevenSeg_item|HEX1_item|DOUT\(2)) # (\LogicSevenSeg_item|HEX1_item|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110101010100001111010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2),
	datad => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y6_N48
\LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[6]~6_combout\ = ( \LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX1_item|DOUT\(2) & (!\LogicSevenSeg_item|HEX1_item|DOUT\(0) & !\LogicSevenSeg_item|HEX1_item|DOUT\(1))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX1_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX1_item|DOUT\(2) & ((!\LogicSevenSeg_item|HEX1_item|DOUT\(1)))) # (\LogicSevenSeg_item|HEX1_item|DOUT\(2) & (\LogicSevenSeg_item|HEX1_item|DOUT\(0) & 
-- \LogicSevenSeg_item|HEX1_item|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000010001101010100001000101000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(2),
	datab => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(0),
	datad => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(1),
	dataf => \LogicSevenSeg_item|HEX1_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX1Conversor_item|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y6_N36
\LogicSevenSeg_item|DecoderEndereco_item|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|DecoderEndereco_item|Equal0~2_combout\ = ( \CPU|PC_item|DOUT\(0) & ( \CPU|PC_item|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT\(3) & \CPU|PC_item|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC_item|ALT_INV_DOUT\(3),
	datad => \CPU|PC_item|ALT_INV_DOUT\(2),
	datae => \CPU|PC_item|ALT_INV_DOUT\(0),
	dataf => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~2_combout\);

-- Location: FF_X42_Y6_N56
\LogicSevenSeg_item|HEX2_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(3),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX2_item|DOUT\(3));

-- Location: FF_X42_Y6_N59
\LogicSevenSeg_item|HEX2_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(0),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX2_item|DOUT\(0));

-- Location: FF_X42_Y6_N2
\LogicSevenSeg_item|HEX2_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX2_item|DOUT\(2));

-- Location: FF_X42_Y6_N20
\LogicSevenSeg_item|HEX2_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(1),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX2_item|DOUT\(1));

-- Location: MLABCELL_X42_Y6_N21
\LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[0]~0_combout\ = ( \LogicSevenSeg_item|HEX2_item|DOUT\(1) & ( (\LogicSevenSeg_item|HEX2_item|DOUT\(3) & (\LogicSevenSeg_item|HEX2_item|DOUT\(0) & !\LogicSevenSeg_item|HEX2_item|DOUT\(2))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX2_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(0) $ (!\LogicSevenSeg_item|HEX2_item|DOUT\(2)))) # (\LogicSevenSeg_item|HEX2_item|DOUT\(3) & 
-- (\LogicSevenSeg_item|HEX2_item|DOUT\(0) & \LogicSevenSeg_item|HEX2_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010011001001000101001100100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3),
	datab => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0),
	datad => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1),
	combout => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y6_N24
\LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[1]~1_combout\ = ( \LogicSevenSeg_item|HEX2_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX2_item|DOUT\(0) & ((\LogicSevenSeg_item|HEX2_item|DOUT\(2)))) # (\LogicSevenSeg_item|HEX2_item|DOUT\(0) & 
-- (\LogicSevenSeg_item|HEX2_item|DOUT\(3))) ) ) # ( !\LogicSevenSeg_item|HEX2_item|DOUT\(1) & ( (\LogicSevenSeg_item|HEX2_item|DOUT\(2) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) $ (!\LogicSevenSeg_item|HEX2_item|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3),
	datac => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2),
	datad => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1),
	combout => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y6_N3
\LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[2]~2_combout\ = ( \LogicSevenSeg_item|HEX2_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(0) & !\LogicSevenSeg_item|HEX2_item|DOUT\(2))) # 
-- (\LogicSevenSeg_item|HEX2_item|DOUT\(3) & ((\LogicSevenSeg_item|HEX2_item|DOUT\(2)))) ) ) # ( !\LogicSevenSeg_item|HEX2_item|DOUT\(1) & ( (\LogicSevenSeg_item|HEX2_item|DOUT\(3) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(0) & 
-- \LogicSevenSeg_item|HEX2_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3),
	datac => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0),
	datad => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1),
	combout => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y6_N57
\LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[3]~3_combout\ = ( \LogicSevenSeg_item|HEX2_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX2_item|DOUT\(2) & (\LogicSevenSeg_item|HEX2_item|DOUT\(3) & !\LogicSevenSeg_item|HEX2_item|DOUT\(0))) # 
-- (\LogicSevenSeg_item|HEX2_item|DOUT\(2) & ((\LogicSevenSeg_item|HEX2_item|DOUT\(0)))) ) ) # ( !\LogicSevenSeg_item|HEX2_item|DOUT\(1) & ( (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(2) $ 
-- (!\LogicSevenSeg_item|HEX2_item|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1),
	combout => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y6_N54
\LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[4]~4_combout\ = (!\LogicSevenSeg_item|HEX2_item|DOUT\(1) & ((!\LogicSevenSeg_item|HEX2_item|DOUT\(2) & (\LogicSevenSeg_item|HEX2_item|DOUT\(0))) # (\LogicSevenSeg_item|HEX2_item|DOUT\(2) & 
-- ((!\LogicSevenSeg_item|HEX2_item|DOUT\(3)))))) # (\LogicSevenSeg_item|HEX2_item|DOUT\(1) & (((\LogicSevenSeg_item|HEX2_item|DOUT\(0) & !\LogicSevenSeg_item|HEX2_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100100000011100110010000001110011001000000111001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2),
	datab => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1),
	datad => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y6_N0
\LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[5]~5_combout\ = (!\LogicSevenSeg_item|HEX2_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) & (\LogicSevenSeg_item|HEX2_item|DOUT\(1) & !\LogicSevenSeg_item|HEX2_item|DOUT\(2)))) # 
-- (\LogicSevenSeg_item|HEX2_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) $ (((!\LogicSevenSeg_item|HEX2_item|DOUT\(1) & \LogicSevenSeg_item|HEX2_item|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000010010001010100001001000101010000100100010101000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3),
	datab => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1),
	datad => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2),
	combout => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y6_N18
\LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[6]~6_combout\ = (!\LogicSevenSeg_item|HEX2_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) $ (\LogicSevenSeg_item|HEX2_item|DOUT\(2))))) # 
-- (\LogicSevenSeg_item|HEX2_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(3) & (!\LogicSevenSeg_item|HEX2_item|DOUT\(2) $ (\LogicSevenSeg_item|HEX2_item|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010000000010101001000000001010100100000000101010010000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(3),
	datab => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(2),
	datad => \LogicSevenSeg_item|HEX2_item|ALT_INV_DOUT\(1),
	combout => \LogicSevenSeg_item|HEX2Conversor_item|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X41_Y6_N21
\LogicSevenSeg_item|DecoderEndereco_item|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|DecoderEndereco_item|Equal0~3_combout\ = ( \CPU|PC_item|DOUT\(0) & ( !\CPU|PC_item|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC_item|DOUT\(2) & \CPU|PC_item|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datac => \CPU|PC_item|ALT_INV_DOUT\(3),
	datae => \CPU|PC_item|ALT_INV_DOUT\(0),
	dataf => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~3_combout\);

-- Location: FF_X41_Y6_N23
\LogicSevenSeg_item|HEX3_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(1),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX3_item|DOUT\(1));

-- Location: LABCELL_X41_Y6_N12
\LogicSevenSeg_item|HEX3_item|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3_item|DOUT[0]~feeder_combout\ = ( \CPU|REGA_item|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(0),
	combout => \LogicSevenSeg_item|HEX3_item|DOUT[0]~feeder_combout\);

-- Location: FF_X41_Y6_N14
\LogicSevenSeg_item|HEX3_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \LogicSevenSeg_item|HEX3_item|DOUT[0]~feeder_combout\,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX3_item|DOUT\(0));

-- Location: FF_X41_Y6_N19
\LogicSevenSeg_item|HEX3_item|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX3_item|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y6_N15
\LogicSevenSeg_item|HEX3_item|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3_item|DOUT[3]~feeder_combout\ = ( \CPU|REGA_item|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX3_item|DOUT[3]~feeder_combout\);

-- Location: FF_X41_Y6_N17
\LogicSevenSeg_item|HEX3_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \LogicSevenSeg_item|HEX3_item|DOUT[3]~feeder_combout\,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX3_item|DOUT\(3));

-- Location: LABCELL_X41_Y6_N51
\LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[0]~0_combout\ = ( \LogicSevenSeg_item|HEX3_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX3_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX3_item|DOUT\(1) $ (!\LogicSevenSeg_item|HEX3_item|DOUT[2]~DUPLICATE_q\))) 
-- ) ) # ( !\LogicSevenSeg_item|HEX3_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX3_item|DOUT\(0) $ (!\LogicSevenSeg_item|HEX3_item|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[0]~0_combout\);

-- Location: FF_X41_Y6_N20
\LogicSevenSeg_item|HEX3_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX3_item|DOUT\(2));

-- Location: LABCELL_X41_Y6_N42
\LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[1]~1_combout\ = ( \LogicSevenSeg_item|HEX3_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(0) & ((\LogicSevenSeg_item|HEX3_item|DOUT\(2)))) # (\LogicSevenSeg_item|HEX3_item|DOUT\(0) & 
-- (\LogicSevenSeg_item|HEX3_item|DOUT\(1))) ) ) # ( !\LogicSevenSeg_item|HEX3_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX3_item|DOUT\(2) & (!\LogicSevenSeg_item|HEX3_item|DOUT\(1) $ (!\LogicSevenSeg_item|HEX3_item|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y6_N24
\LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[2]~2_combout\ = ( \LogicSevenSeg_item|HEX3_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX3_item|DOUT\(2) & ((!\LogicSevenSeg_item|HEX3_item|DOUT\(0)) # (\LogicSevenSeg_item|HEX3_item|DOUT\(1)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX3_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX3_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX3_item|DOUT\(0) & !\LogicSevenSeg_item|HEX3_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y6_N54
\LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[3]~3_combout\ = ( \LogicSevenSeg_item|HEX3_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX3_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX3_item|DOUT\(0) $ (\LogicSevenSeg_item|HEX3_item|DOUT\(2)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX3_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(0) & (\LogicSevenSeg_item|HEX3_item|DOUT\(2) & !\LogicSevenSeg_item|HEX3_item|DOUT\(1))) # (\LogicSevenSeg_item|HEX3_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX3_item|DOUT\(2) 
-- $ (\LogicSevenSeg_item|HEX3_item|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000011001111000000001100000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(2),
	datad => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1),
	dataf => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y6_N48
\LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[4]~4_combout\ = ( \LogicSevenSeg_item|HEX3_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(1) & (\LogicSevenSeg_item|HEX3_item|DOUT\(0) & !\LogicSevenSeg_item|HEX3_item|DOUT\(2))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX3_item|DOUT\(3) & ( ((!\LogicSevenSeg_item|HEX3_item|DOUT\(1) & \LogicSevenSeg_item|HEX3_item|DOUT\(2))) # (\LogicSevenSeg_item|HEX3_item|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y6_N27
\LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[5]~5_combout\ = ( \LogicSevenSeg_item|HEX3_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(1) & (\LogicSevenSeg_item|HEX3_item|DOUT\(0) & \LogicSevenSeg_item|HEX3_item|DOUT[2]~DUPLICATE_q\)) ) ) 
-- # ( !\LogicSevenSeg_item|HEX3_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(1) & (\LogicSevenSeg_item|HEX3_item|DOUT\(0) & !\LogicSevenSeg_item|HEX3_item|DOUT[2]~DUPLICATE_q\)) # (\LogicSevenSeg_item|HEX3_item|DOUT\(1) & 
-- ((!\LogicSevenSeg_item|HEX3_item|DOUT[2]~DUPLICATE_q\) # (\LogicSevenSeg_item|HEX3_item|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y6_N45
\LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[6]~6_combout\ = ( \LogicSevenSeg_item|HEX3_item|DOUT[2]~DUPLICATE_q\ & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX3_item|DOUT\(0) & \LogicSevenSeg_item|HEX3_item|DOUT\(3))) # 
-- (\LogicSevenSeg_item|HEX3_item|DOUT\(1) & (\LogicSevenSeg_item|HEX3_item|DOUT\(0) & !\LogicSevenSeg_item|HEX3_item|DOUT\(3))) ) ) # ( !\LogicSevenSeg_item|HEX3_item|DOUT[2]~DUPLICATE_q\ & ( (!\LogicSevenSeg_item|HEX3_item|DOUT\(1) & 
-- !\LogicSevenSeg_item|HEX3_item|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000011000000110000001100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT\(3),
	dataf => \LogicSevenSeg_item|HEX3_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \LogicSevenSeg_item|HEX3Conversor_item|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X41_Y6_N39
\LogicSevenSeg_item|DecoderEndereco_item|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|DecoderEndereco_item|Equal0~4_combout\ = ( \CPU|PC_item|DOUT\(3) & ( (!\CPU|PC_item|DOUT\(2) & (\CPU|PC_item|DOUT\(0) & \CPU|PC_item|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datac => \CPU|PC_item|ALT_INV_DOUT\(0),
	datad => \CPU|PC_item|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~4_combout\);

-- Location: FF_X41_Y6_N35
\LogicSevenSeg_item|HEX4_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(1),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX4_item|DOUT\(1));

-- Location: FF_X41_Y6_N32
\LogicSevenSeg_item|HEX4_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(3),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX4_item|DOUT\(3));

-- Location: FF_X41_Y6_N38
\LogicSevenSeg_item|HEX4_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(0),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX4_item|DOUT\(0));

-- Location: FF_X41_Y6_N41
\LogicSevenSeg_item|HEX4_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX4_item|DOUT\(2));

-- Location: LABCELL_X41_Y6_N0
\LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[0]~0_combout\ = ( \LogicSevenSeg_item|HEX4_item|DOUT\(2) & ( (!\LogicSevenSeg_item|HEX4_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX4_item|DOUT\(3) $ (\LogicSevenSeg_item|HEX4_item|DOUT\(0)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX4_item|DOUT\(2) & ( (\LogicSevenSeg_item|HEX4_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX4_item|DOUT\(1) $ (\LogicSevenSeg_item|HEX4_item|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100110001000001000101000100000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(2),
	combout => \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y6_N3
\LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[1]~1_combout\ = ( \LogicSevenSeg_item|HEX4_item|DOUT\(2) & ( (!\LogicSevenSeg_item|HEX4_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX4_item|DOUT\(3) $ (!\LogicSevenSeg_item|HEX4_item|DOUT\(0)))) # 
-- (\LogicSevenSeg_item|HEX4_item|DOUT\(1) & ((!\LogicSevenSeg_item|HEX4_item|DOUT\(0)) # (\LogicSevenSeg_item|HEX4_item|DOUT\(3)))) ) ) # ( !\LogicSevenSeg_item|HEX4_item|DOUT\(2) & ( (\LogicSevenSeg_item|HEX4_item|DOUT\(1) & 
-- (\LogicSevenSeg_item|HEX4_item|DOUT\(3) & \LogicSevenSeg_item|HEX4_item|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011111101001010101111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(2),
	combout => \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y6_N6
\LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[2]~2_combout\ = ( \LogicSevenSeg_item|HEX4_item|DOUT\(2) & ( (\LogicSevenSeg_item|HEX4_item|DOUT\(3) & ((!\LogicSevenSeg_item|HEX4_item|DOUT\(0)) # (\LogicSevenSeg_item|HEX4_item|DOUT\(1)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX4_item|DOUT\(2) & ( (\LogicSevenSeg_item|HEX4_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX4_item|DOUT\(3) & !\LogicSevenSeg_item|HEX4_item|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000110011000100010011001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(1),
	datab => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(2),
	combout => \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y6_N57
\LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[3]~3_combout\ = ( \LogicSevenSeg_item|HEX4_item|DOUT\(2) & ( (!\LogicSevenSeg_item|HEX4_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX4_item|DOUT\(3) & !\LogicSevenSeg_item|HEX4_item|DOUT\(0))) # 
-- (\LogicSevenSeg_item|HEX4_item|DOUT\(1) & ((\LogicSevenSeg_item|HEX4_item|DOUT\(0)))) ) ) # ( !\LogicSevenSeg_item|HEX4_item|DOUT\(2) & ( (!\LogicSevenSeg_item|HEX4_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX4_item|DOUT\(3) & 
-- \LogicSevenSeg_item|HEX4_item|DOUT\(0))) # (\LogicSevenSeg_item|HEX4_item|DOUT\(1) & (\LogicSevenSeg_item|HEX4_item|DOUT\(3) & !\LogicSevenSeg_item|HEX4_item|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(2),
	combout => \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y6_N30
\LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[4]~4_combout\ = (!\LogicSevenSeg_item|HEX4_item|DOUT\(1) & ((!\LogicSevenSeg_item|HEX4_item|DOUT\(2) & (\LogicSevenSeg_item|HEX4_item|DOUT\(0))) # (\LogicSevenSeg_item|HEX4_item|DOUT\(2) & 
-- ((!\LogicSevenSeg_item|HEX4_item|DOUT\(3)))))) # (\LogicSevenSeg_item|HEX4_item|DOUT\(1) & (\LogicSevenSeg_item|HEX4_item|DOUT\(0) & ((!\LogicSevenSeg_item|HEX4_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101000000011101010100000001110101010000000111010101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(0),
	datab => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(1),
	datad => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y6_N9
\LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[5]~5_combout\ = ( \LogicSevenSeg_item|HEX4_item|DOUT\(2) & ( (\LogicSevenSeg_item|HEX4_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX4_item|DOUT\(1) $ (!\LogicSevenSeg_item|HEX4_item|DOUT\(3)))) ) ) # ( 
-- !\LogicSevenSeg_item|HEX4_item|DOUT\(2) & ( (!\LogicSevenSeg_item|HEX4_item|DOUT\(3) & ((\LogicSevenSeg_item|HEX4_item|DOUT\(0)) # (\LogicSevenSeg_item|HEX4_item|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(0),
	dataf => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(2),
	combout => \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y6_N33
\LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[6]~6_combout\ = (!\LogicSevenSeg_item|HEX4_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX4_item|DOUT\(1) & (!\LogicSevenSeg_item|HEX4_item|DOUT\(2) $ (\LogicSevenSeg_item|HEX4_item|DOUT\(3))))) # 
-- (\LogicSevenSeg_item|HEX4_item|DOUT\(0) & (!\LogicSevenSeg_item|HEX4_item|DOUT\(3) & (!\LogicSevenSeg_item|HEX4_item|DOUT\(2) $ (\LogicSevenSeg_item|HEX4_item|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000010000110000100001000011000010000100001100001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(0),
	datab => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(2),
	datac => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(3),
	datad => \LogicSevenSeg_item|HEX4_item|ALT_INV_DOUT\(1),
	combout => \LogicSevenSeg_item|HEX4Conversor_item|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y7_N27
\LogicSevenSeg_item|DecoderEndereco_item|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|DecoderEndereco_item|Equal0~5_combout\ = ( !\CPU|PC_item|DOUT\(1) & ( \CPU|PC_item|DOUT\(3) & ( (\CPU|PC_item|DOUT\(2) & \CPU|PC_item|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	datae => \CPU|PC_item|ALT_INV_DOUT\(1),
	dataf => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~5_combout\);

-- Location: FF_X42_Y7_N29
\LogicSevenSeg_item|HEX5_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(1),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX5_item|DOUT\(1));

-- Location: FF_X40_Y7_N26
\LogicSevenSeg_item|HEX5_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(0),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX5_item|DOUT\(0));

-- Location: FF_X40_Y7_N29
\LogicSevenSeg_item|HEX5_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(2),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX5_item|DOUT\(2));

-- Location: FF_X40_Y7_N14
\LogicSevenSeg_item|HEX5_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA_item|DOUT\(3),
	sload => VCC,
	ena => \LogicSevenSeg_item|DecoderEndereco_item|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicSevenSeg_item|HEX5_item|DOUT\(3));

-- Location: MLABCELL_X42_Y7_N57
\LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[0]~0_combout\ = ( \LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( \LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX5_item|DOUT\(1) & \LogicSevenSeg_item|HEX5_item|DOUT\(0)) ) ) ) # ( 
-- !\LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( \LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX5_item|DOUT\(1) & \LogicSevenSeg_item|HEX5_item|DOUT\(0)) ) ) ) # ( \LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( 
-- !\LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX5_item|DOUT\(1) & !\LogicSevenSeg_item|HEX5_item|DOUT\(0)) ) ) ) # ( !\LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( !\LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( 
-- (!\LogicSevenSeg_item|HEX5_item|DOUT\(1) & \LogicSevenSeg_item|HEX5_item|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101000001010000000000101000001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(0),
	datae => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y7_N12
\LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[1]~1_combout\ = ( \LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( \LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX5_item|DOUT\(0)) # (\LogicSevenSeg_item|HEX5_item|DOUT\(1)) ) ) ) # ( 
-- !\LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( \LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX5_item|DOUT\(0) & \LogicSevenSeg_item|HEX5_item|DOUT\(1)) ) ) ) # ( \LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( 
-- !\LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( !\LogicSevenSeg_item|HEX5_item|DOUT\(0) $ (!\LogicSevenSeg_item|HEX5_item|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(1),
	datae => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y7_N18
\LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[2]~2_combout\ = ( \LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( \LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX5_item|DOUT\(0)) # (\LogicSevenSeg_item|HEX5_item|DOUT\(1)) ) ) ) # ( 
-- !\LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( !\LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX5_item|DOUT\(0) & \LogicSevenSeg_item|HEX5_item|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(0),
	datac => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(1),
	datae => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y7_N51
\LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[3]~3_combout\ = ( \LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( \LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX5_item|DOUT\(1) & \LogicSevenSeg_item|HEX5_item|DOUT\(0)) ) ) ) # ( 
-- !\LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( \LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX5_item|DOUT\(1) & !\LogicSevenSeg_item|HEX5_item|DOUT\(0)) ) ) ) # ( \LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( 
-- !\LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( !\LogicSevenSeg_item|HEX5_item|DOUT\(1) $ (\LogicSevenSeg_item|HEX5_item|DOUT\(0)) ) ) ) # ( !\LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( !\LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( 
-- (!\LogicSevenSeg_item|HEX5_item|DOUT\(1) & \LogicSevenSeg_item|HEX5_item|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101001011010010101010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(0),
	datae => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y7_N45
\LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[4]~4_combout\ = ( !\LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( \LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX5_item|DOUT\(1) & \LogicSevenSeg_item|HEX5_item|DOUT\(0)) ) ) ) # ( 
-- \LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( !\LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX5_item|DOUT\(1)) # (\LogicSevenSeg_item|HEX5_item|DOUT\(0)) ) ) ) # ( !\LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( 
-- !\LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( \LogicSevenSeg_item|HEX5_item|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101011111010111100001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(0),
	datae => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y7_N39
\LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[5]~5_combout\ = ( \LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( \LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX5_item|DOUT\(1) & \LogicSevenSeg_item|HEX5_item|DOUT\(0)) ) ) ) # ( 
-- \LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( !\LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX5_item|DOUT\(1) & \LogicSevenSeg_item|HEX5_item|DOUT\(0)) ) ) ) # ( !\LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( 
-- !\LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX5_item|DOUT\(0)) # (\LogicSevenSeg_item|HEX5_item|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000001010000010100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(0),
	datae => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y7_N33
\LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[6]~6_combout\ = ( \LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( \LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (!\LogicSevenSeg_item|HEX5_item|DOUT\(1) & !\LogicSevenSeg_item|HEX5_item|DOUT\(0)) ) ) ) # ( 
-- \LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( !\LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( (\LogicSevenSeg_item|HEX5_item|DOUT\(1) & \LogicSevenSeg_item|HEX5_item|DOUT\(0)) ) ) ) # ( !\LogicSevenSeg_item|HEX5_item|DOUT\(2) & ( 
-- !\LogicSevenSeg_item|HEX5_item|DOUT\(3) & ( !\LogicSevenSeg_item|HEX5_item|DOUT\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000001010000010100000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(1),
	datac => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(0),
	datae => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(2),
	dataf => \LogicSevenSeg_item|HEX5_item|ALT_INV_DOUT\(3),
	combout => \LogicSevenSeg_item|HEX5Conversor_item|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X40_Y7_N45
\CPU|ULA_item|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~17_sumout\ = SUM(( \CPU|REGA_item|DOUT\(4) ) + ( ((!\CPU|DECODER_item|Equal10~3_combout\ & (!\CPU|DECODER_item|Equal10~4_combout\ & !\CPU|DECODER_item|Equal10~5_combout\))) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( 
-- \CPU|ULA_item|Add0~14\ ))
-- \CPU|ULA_item|Add0~18\ = CARRY(( \CPU|REGA_item|DOUT\(4) ) + ( ((!\CPU|DECODER_item|Equal10~3_combout\ & (!\CPU|DECODER_item|Equal10~4_combout\ & !\CPU|DECODER_item|Equal10~5_combout\))) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( 
-- \CPU|ULA_item|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~3_combout\,
	datac => \CPU|DECODER_item|ALT_INV_Equal10~4_combout\,
	datad => \CPU|REGA_item|ALT_INV_DOUT\(4),
	dataf => \CPU|DECODER_item|ALT_INV_Equal10~5_combout\,
	cin => \CPU|ULA_item|Add0~14\,
	sumout => \CPU|ULA_item|Add0~17_sumout\,
	cout => \CPU|ULA_item|Add0~18\);

-- Location: FF_X40_Y7_N46
\CPU|REGA_item|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA_item|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER_item|saida[6]~1_combout\,
	ena => \CPU|DECODER_item|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(4));

-- Location: LABCELL_X40_Y7_N48
\CPU|ULA_item|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~21_sumout\ = SUM(( \CPU|REGA_item|DOUT\(5) ) + ( ((!\CPU|DECODER_item|Equal10~1_combout\ & ((!\ROM|memROM~3_combout\) # (!\CPU|DECODER_item|Equal10~2_combout\)))) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( \CPU|ULA_item|Add0~18\ ))
-- \CPU|ULA_item|Add0~22\ = CARRY(( \CPU|REGA_item|DOUT\(5) ) + ( ((!\CPU|DECODER_item|Equal10~1_combout\ & ((!\ROM|memROM~3_combout\) # (!\CPU|DECODER_item|Equal10~2_combout\)))) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( \CPU|ULA_item|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|REGA_item|ALT_INV_DOUT\(5),
	dataf => \CPU|DECODER_item|ALT_INV_Equal10~2_combout\,
	cin => \CPU|ULA_item|Add0~18\,
	sumout => \CPU|ULA_item|Add0~21_sumout\,
	cout => \CPU|ULA_item|Add0~22\);

-- Location: FF_X40_Y7_N50
\CPU|REGA_item|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA_item|Add0~21_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \CPU|DECODER_item|saida[6]~1_combout\,
	ena => \CPU|DECODER_item|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(5));

-- Location: LABCELL_X40_Y7_N51
\CPU|ULA_item|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~25_sumout\ = SUM(( \CPU|REGA_item|DOUT\(6) ) + ( (!\CPU|DECODER_item|Equal10~1_combout\) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( \CPU|ULA_item|Add0~22\ ))
-- \CPU|ULA_item|Add0~26\ = CARRY(( \CPU|REGA_item|DOUT\(6) ) + ( (!\CPU|DECODER_item|Equal10~1_combout\) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( \CPU|ULA_item|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	datad => \CPU|REGA_item|ALT_INV_DOUT\(6),
	cin => \CPU|ULA_item|Add0~22\,
	sumout => \CPU|ULA_item|Add0~25_sumout\,
	cout => \CPU|ULA_item|Add0~26\);

-- Location: FF_X40_Y7_N52
\CPU|REGA_item|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA_item|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER_item|saida[6]~1_combout\,
	ena => \CPU|DECODER_item|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(6));

-- Location: LABCELL_X40_Y7_N54
\CPU|ULA_item|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~29_sumout\ = SUM(( \CPU|REGA_item|DOUT\(7) ) + ( ((!\CPU|DECODER_item|Equal10~3_combout\ & (!\CPU|DECODER_item|Equal10~4_combout\ & !\CPU|DECODER_item|Equal10~5_combout\))) # (\CPU|DECODER_item|Equal10~0_combout\) ) + ( 
-- \CPU|ULA_item|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_Equal10~3_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~4_combout\,
	datac => \CPU|DECODER_item|ALT_INV_Equal10~0_combout\,
	datad => \CPU|REGA_item|ALT_INV_DOUT\(7),
	dataf => \CPU|DECODER_item|ALT_INV_Equal10~5_combout\,
	cin => \CPU|ULA_item|Add0~26\,
	sumout => \CPU|ULA_item|Add0~29_sumout\);

-- Location: FF_X40_Y7_N55
\CPU|REGA_item|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA_item|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER_item|saida[6]~1_combout\,
	ena => \CPU|DECODER_item|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(7));

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
END structure;


