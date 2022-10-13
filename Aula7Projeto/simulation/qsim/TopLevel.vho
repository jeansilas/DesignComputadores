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

-- DATE "10/09/2022 14:41:21"

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
	Leds : OUT std_logic_vector(9 DOWNTO 0);
	regA : OUT std_logic_vector(7 DOWNTO 0);
	RAM_simu : OUT std_logic_vector(8 DOWNTO 0)
	);
END TopLevel;

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
SIGNAL ww_Leds : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_regA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAM_simu : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[4]~output_o\ : std_logic;
SIGNAL \PC[5]~output_o\ : std_logic;
SIGNAL \PC[6]~output_o\ : std_logic;
SIGNAL \PC[7]~output_o\ : std_logic;
SIGNAL \PC[8]~output_o\ : std_logic;
SIGNAL \control[0]~output_o\ : std_logic;
SIGNAL \control[1]~output_o\ : std_logic;
SIGNAL \control[2]~output_o\ : std_logic;
SIGNAL \control[3]~output_o\ : std_logic;
SIGNAL \control[4]~output_o\ : std_logic;
SIGNAL \control[5]~output_o\ : std_logic;
SIGNAL \control[6]~output_o\ : std_logic;
SIGNAL \control[7]~output_o\ : std_logic;
SIGNAL \control[8]~output_o\ : std_logic;
SIGNAL \control[9]~output_o\ : std_logic;
SIGNAL \control[10]~output_o\ : std_logic;
SIGNAL \control[11]~output_o\ : std_logic;
SIGNAL \control[12]~output_o\ : std_logic;
SIGNAL \Leds[0]~output_o\ : std_logic;
SIGNAL \Leds[1]~output_o\ : std_logic;
SIGNAL \Leds[2]~output_o\ : std_logic;
SIGNAL \Leds[3]~output_o\ : std_logic;
SIGNAL \Leds[4]~output_o\ : std_logic;
SIGNAL \Leds[5]~output_o\ : std_logic;
SIGNAL \Leds[6]~output_o\ : std_logic;
SIGNAL \Leds[7]~output_o\ : std_logic;
SIGNAL \Leds[8]~output_o\ : std_logic;
SIGNAL \Leds[9]~output_o\ : std_logic;
SIGNAL \regA[0]~output_o\ : std_logic;
SIGNAL \regA[1]~output_o\ : std_logic;
SIGNAL \regA[2]~output_o\ : std_logic;
SIGNAL \regA[3]~output_o\ : std_logic;
SIGNAL \regA[4]~output_o\ : std_logic;
SIGNAL \regA[5]~output_o\ : std_logic;
SIGNAL \regA[6]~output_o\ : std_logic;
SIGNAL \regA[7]~output_o\ : std_logic;
SIGNAL \RAM_simu[0]~output_o\ : std_logic;
SIGNAL \RAM_simu[1]~output_o\ : std_logic;
SIGNAL \RAM_simu[2]~output_o\ : std_logic;
SIGNAL \RAM_simu[3]~output_o\ : std_logic;
SIGNAL \RAM_simu[4]~output_o\ : std_logic;
SIGNAL \RAM_simu[5]~output_o\ : std_logic;
SIGNAL \RAM_simu[6]~output_o\ : std_logic;
SIGNAL \RAM_simu[7]~output_o\ : std_logic;
SIGNAL \RAM_simu[8]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|Equal10~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|saida[10]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~0_wirecell_combout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC_item|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|saida[6]~3_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|Equal10~1_combout\ : std_logic;
SIGNAL \RAM|ram~1061_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~1060_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~1040_combout\ : std_logic;
SIGNAL \RAM|ram~1062_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~1_sumout\ : std_logic;
SIGNAL \RAM|ram~1054_combout\ : std_logic;
SIGNAL \CPU|MUX_item|saida_MUX[0]~7_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|saida[4]~2_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|saida[5]~1_combout\ : std_logic;
SIGNAL \LogicLed_item|comb~2_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~1041_combout\ : std_logic;
SIGNAL \RAM|ram~1056_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~2\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~5_sumout\ : std_logic;
SIGNAL \RAM|ram~1055_combout\ : std_logic;
SIGNAL \CPU|MUX_item|saida_MUX[1]~6_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~1042_combout\ : std_logic;
SIGNAL \RAM|ram~1086_combout\ : std_logic;
SIGNAL \RAM|ram~1048_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~6\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_item|saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~1043_combout\ : std_logic;
SIGNAL \RAM|ram~1082_combout\ : std_logic;
SIGNAL \RAM|ram~1049_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~10\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_item|saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~1044_combout\ : std_logic;
SIGNAL \RAM|ram~1078_combout\ : std_logic;
SIGNAL \RAM|ram~1050_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~14\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_item|saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~1045_combout\ : std_logic;
SIGNAL \RAM|ram~1074_combout\ : std_logic;
SIGNAL \RAM|ram~1051_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~18\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_item|saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~1046_combout\ : std_logic;
SIGNAL \RAM|ram~1070_combout\ : std_logic;
SIGNAL \RAM|ram~1052_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~22\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX_item|saida_MUX[6]~4_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~1047_combout\ : std_logic;
SIGNAL \RAM|ram~1066_combout\ : std_logic;
SIGNAL \RAM|ram~1053_combout\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~26\ : std_logic;
SIGNAL \CPU|ULA_item|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_item|saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \LogicLed_item|comb~0_combout\ : std_logic;
SIGNAL \LogicLed_item|comb~1_combout\ : std_logic;
SIGNAL \LogicLed_item|LED_8_item|DOUT~0_combout\ : std_logic;
SIGNAL \LogicLed_item|LED_8_item|DOUT~q\ : std_logic;
SIGNAL \LogicLed_item|LED_9_item|DOUT~0_combout\ : std_logic;
SIGNAL \LogicLed_item|LED_9_item|DOUT~q\ : std_logic;
SIGNAL \CPU|PC_item|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LogicLed_item|LEDR_item|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|REGA_item|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|REGA_item|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC_item|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1055_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1054_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1053_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1052_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1051_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1050_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1049_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1048_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1047_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1046_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1045_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1044_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1043_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1042_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1041_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1040_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \LogicLed_item|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \LogicLed_item|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_item|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \LogicLed_item|LED_9_item|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \LogicLed_item|LED_8_item|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1086_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1082_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1078_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1074_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1070_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1066_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1062_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~1056_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC <= ww_PC;
control <= ww_control;
Leds <= ww_Leds;
regA <= ww_regA;
RAM_simu <= ww_RAM_simu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
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
\CPU|DECODER_item|ALT_INV_saida[6]~3_combout\ <= NOT \CPU|DECODER_item|saida[6]~3_combout\;
\RAM|ALT_INV_ram~1055_combout\ <= NOT \RAM|ram~1055_combout\;
\RAM|ALT_INV_ram~1054_combout\ <= NOT \RAM|ram~1054_combout\;
\RAM|ALT_INV_ram~1053_combout\ <= NOT \RAM|ram~1053_combout\;
\RAM|ALT_INV_ram~1052_combout\ <= NOT \RAM|ram~1052_combout\;
\RAM|ALT_INV_ram~1051_combout\ <= NOT \RAM|ram~1051_combout\;
\RAM|ALT_INV_ram~1050_combout\ <= NOT \RAM|ram~1050_combout\;
\RAM|ALT_INV_ram~1049_combout\ <= NOT \RAM|ram~1049_combout\;
\RAM|ALT_INV_ram~1048_combout\ <= NOT \RAM|ram~1048_combout\;
\CPU|DECODER_item|ALT_INV_Equal10~1_combout\ <= NOT \CPU|DECODER_item|Equal10~1_combout\;
\RAM|ALT_INV_ram~1047_combout\ <= NOT \RAM|ram~1047_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~1046_combout\ <= NOT \RAM|ram~1046_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~1045_combout\ <= NOT \RAM|ram~1045_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~1044_combout\ <= NOT \RAM|ram~1044_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~1043_combout\ <= NOT \RAM|ram~1043_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~1042_combout\ <= NOT \RAM|ram~1042_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~1041_combout\ <= NOT \RAM|ram~1041_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~1040_combout\ <= NOT \RAM|ram~1040_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\LogicLed_item|ALT_INV_comb~1_combout\ <= NOT \LogicLed_item|comb~1_combout\;
\LogicLed_item|ALT_INV_comb~0_combout\ <= NOT \LogicLed_item|comb~0_combout\;
\CPU|DECODER_item|ALT_INV_Equal10~0_combout\ <= NOT \CPU|DECODER_item|Equal10~0_combout\;
\LogicLed_item|LED_9_item|ALT_INV_DOUT~q\ <= NOT \LogicLed_item|LED_9_item|DOUT~q\;
\LogicLed_item|LED_8_item|ALT_INV_DOUT~q\ <= NOT \LogicLed_item|LED_8_item|DOUT~q\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\RAM|ALT_INV_ram~1086_combout\ <= NOT \RAM|ram~1086_combout\;
\RAM|ALT_INV_ram~1082_combout\ <= NOT \RAM|ram~1082_combout\;
\RAM|ALT_INV_ram~1078_combout\ <= NOT \RAM|ram~1078_combout\;
\RAM|ALT_INV_ram~1074_combout\ <= NOT \RAM|ram~1074_combout\;
\RAM|ALT_INV_ram~1070_combout\ <= NOT \RAM|ram~1070_combout\;
\RAM|ALT_INV_ram~1066_combout\ <= NOT \RAM|ram~1066_combout\;
\RAM|ALT_INV_ram~1062_combout\ <= NOT \RAM|ram~1062_combout\;
\RAM|ALT_INV_ram~1056_combout\ <= NOT \RAM|ram~1056_combout\;

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
	o => \PC[0]~output_o\);

\PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC_item|DOUT\(1),
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

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
	o => \PC[2]~output_o\);

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
	o => \PC[3]~output_o\);

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
	o => \PC[4]~output_o\);

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
	o => \PC[5]~output_o\);

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
	o => \PC[6]~output_o\);

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
	o => \PC[7]~output_o\);

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
	o => \PC[8]~output_o\);

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
	o => \control[0]~output_o\);

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
	o => \control[1]~output_o\);

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
	o => \control[2]~output_o\);

\control[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => \control[3]~output_o\);

\control[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \control[4]~output_o\);

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
	o => \control[5]~output_o\);

\control[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \control[6]~output_o\);

\control[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => \control[7]~output_o\);

\control[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~5_combout\,
	devoe => ww_devoe,
	o => \control[8]~output_o\);

\control[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => \control[9]~output_o\);

\control[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~7_combout\,
	devoe => ww_devoe,
	o => \control[10]~output_o\);

\control[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~8_combout\,
	devoe => ww_devoe,
	o => \control[11]~output_o\);

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
	o => \control[12]~output_o\);

\Leds[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicLed_item|LEDR_item|DOUT\(0),
	devoe => ww_devoe,
	o => \Leds[0]~output_o\);

\Leds[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicLed_item|LEDR_item|DOUT\(1),
	devoe => ww_devoe,
	o => \Leds[1]~output_o\);

\Leds[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicLed_item|LEDR_item|DOUT\(2),
	devoe => ww_devoe,
	o => \Leds[2]~output_o\);

\Leds[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicLed_item|LEDR_item|DOUT\(3),
	devoe => ww_devoe,
	o => \Leds[3]~output_o\);

\Leds[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicLed_item|LEDR_item|DOUT\(4),
	devoe => ww_devoe,
	o => \Leds[4]~output_o\);

\Leds[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicLed_item|LEDR_item|DOUT\(5),
	devoe => ww_devoe,
	o => \Leds[5]~output_o\);

\Leds[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicLed_item|LEDR_item|DOUT\(6),
	devoe => ww_devoe,
	o => \Leds[6]~output_o\);

\Leds[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicLed_item|LEDR_item|DOUT\(7),
	devoe => ww_devoe,
	o => \Leds[7]~output_o\);

\Leds[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicLed_item|LED_8_item|DOUT~q\,
	devoe => ww_devoe,
	o => \Leds[8]~output_o\);

\Leds[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LogicLed_item|LED_9_item|DOUT~q\,
	devoe => ww_devoe,
	o => \Leds[9]~output_o\);

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
	o => \regA[0]~output_o\);

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
	o => \regA[1]~output_o\);

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
	o => \regA[2]~output_o\);

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
	o => \regA[3]~output_o\);

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
	o => \regA[4]~output_o\);

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
	o => \regA[5]~output_o\);

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
	o => \regA[6]~output_o\);

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
	o => \regA[7]~output_o\);

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
	o => \RAM_simu[0]~output_o\);

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
	o => \RAM_simu[1]~output_o\);

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
	o => \RAM_simu[2]~output_o\);

\RAM_simu[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => \RAM_simu[3]~output_o\);

\RAM_simu[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \RAM_simu[4]~output_o\);

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
	o => \RAM_simu[5]~output_o\);

\RAM_simu[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \RAM_simu[6]~output_o\);

\RAM_simu[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => \RAM_simu[7]~output_o\);

\RAM_simu[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~5_combout\,
	devoe => ww_devoe,
	o => \RAM_simu[8]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (\CPU|PC_item|DOUT\(0) & (!\CPU|PC_item|DOUT\(2) & \CPU|PC_item|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(0),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datac => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

\CPU|DECODER_item|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|Equal10~0_combout\ = (\CPU|PC_item|DOUT\(0) & ((!\CPU|PC_item|DOUT\(1) & (!\CPU|PC_item|DOUT\(2) & \CPU|PC_item|DOUT\(3))) # (\CPU|PC_item|DOUT\(1) & (\CPU|PC_item|DOUT\(2) & !\CPU|PC_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000000000000010100000000000001010000000000000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(0),
	datab => \CPU|PC_item|ALT_INV_DOUT\(1),
	datac => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \CPU|DECODER_item|Equal10~0_combout\);

\CPU|DECODER_item|saida[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|saida[10]~0_combout\ = (\CPU|PC_item|DOUT\(1) & (\ROM|memROM~3_combout\ & !\CPU|DECODER_item|Equal10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(1),
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \CPU|DECODER_item|ALT_INV_Equal10~0_combout\,
	combout => \CPU|DECODER_item|saida[10]~0_combout\);

\CPU|PC_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC_item|Add0~13_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \CPU|DECODER_item|saida[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(3));

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (\CPU|PC_item|DOUT\(0) & (\CPU|PC_item|DOUT\(1) & (\CPU|PC_item|DOUT\(2) & !\CPU|PC_item|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(0),
	datab => \CPU|PC_item|ALT_INV_DOUT\(1),
	datac => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~2_combout\);

\CPU|PC_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC_item|Add0~9_sumout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DECODER_item|saida[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(2));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\CPU|PC_item|DOUT\(0) & (\CPU|PC_item|DOUT\(1) & (\CPU|PC_item|DOUT\(2) & !\CPU|PC_item|DOUT\(3)))) # (\CPU|PC_item|DOUT\(0) & (((!\CPU|PC_item|DOUT\(2) & \CPU|PC_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010000000000100101000000000010010100000000001001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(0),
	datab => \CPU|PC_item|ALT_INV_DOUT\(1),
	datac => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~1_combout\);

\CPU|PC_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC_item|Add0~5_sumout\,
	asdata => \ROM|memROM~1_combout\,
	sload => \CPU|DECODER_item|saida[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(1));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC_item|DOUT\(0) & (((\CPU|PC_item|DOUT\(3)) # (\CPU|PC_item|DOUT\(2))) # (\CPU|PC_item|DOUT\(1)))) # (\CPU|PC_item|DOUT\(0) & ((!\CPU|PC_item|DOUT\(2) & (!\CPU|PC_item|DOUT\(1))) # (\CPU|PC_item|DOUT\(2) & 
-- ((\CPU|PC_item|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101011101111011010101110111101101010111011110110101011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(0),
	datab => \CPU|PC_item|ALT_INV_DOUT\(1),
	datac => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~0_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_wirecell_combout\ = !\ROM|memROM~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~0_wirecell_combout\);

\CPU|PC_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC_item|Add0~1_sumout\,
	asdata => \ROM|memROM~0_wirecell_combout\,
	sload => \CPU|DECODER_item|saida[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(0));

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

\CPU|PC_item|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC_item|Add0~17_sumout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DECODER_item|saida[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(4));

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

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (\CPU|PC_item|DOUT\(0) & (!\CPU|PC_item|DOUT\(1) & (!\CPU|PC_item|DOUT\(2) & \CPU|PC_item|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(0),
	datab => \CPU|PC_item|ALT_INV_DOUT\(1),
	datac => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~4_combout\);

\CPU|PC_item|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC_item|Add0~21_sumout\,
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|DECODER_item|saida[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(5));

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

\CPU|PC_item|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC_item|Add0~25_sumout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DECODER_item|saida[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(6));

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

\CPU|PC_item|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC_item|Add0~29_sumout\,
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|DECODER_item|saida[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(7));

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

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\CPU|PC_item|DOUT\(2) & (!\CPU|PC_item|DOUT\(0) & ((\CPU|PC_item|DOUT\(3))))) # (\CPU|PC_item|DOUT\(2) & (!\CPU|PC_item|DOUT\(3) & (!\CPU|PC_item|DOUT\(0) $ (!\CPU|PC_item|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010100000000001101010000000000110101000000000011010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(0),
	datab => \CPU|PC_item|ALT_INV_DOUT\(1),
	datac => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\CPU|PC_item|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC_item|Add0~33_sumout\,
	asdata => \ROM|memROM~5_combout\,
	sload => \CPU|DECODER_item|saida[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC_item|DOUT\(8));

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\CPU|PC_item|DOUT\(0) & ((!\CPU|PC_item|DOUT\(2) $ (!\CPU|PC_item|DOUT\(3))))) # (\CPU|PC_item|DOUT\(0) & (!\CPU|PC_item|DOUT\(3) & ((!\CPU|PC_item|DOUT\(1)) # (!\CPU|PC_item|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010100000010111101010000001011110101000000101111010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(0),
	datab => \CPU|PC_item|ALT_INV_DOUT\(1),
	datac => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (\CPU|PC_item|DOUT\(1) & (!\CPU|PC_item|DOUT\(2) & (!\CPU|PC_item|DOUT\(0) $ (\CPU|PC_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000100000000100000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(0),
	datab => \CPU|PC_item|ALT_INV_DOUT\(1),
	datac => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|PC_item|DOUT\(3) & (!\CPU|PC_item|DOUT\(0) & (!\CPU|PC_item|DOUT\(1) $ (!\CPU|PC_item|DOUT\(2))))) # (\CPU|PC_item|DOUT\(3) & (((\CPU|PC_item|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000001111001010000000111100101000000011110010100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(0),
	datab => \CPU|PC_item|ALT_INV_DOUT\(1),
	datac => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~8_combout\);

\CPU|DECODER_item|saida[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|saida[6]~3_combout\ = (!\CPU|PC_item|DOUT\(2) & (!\CPU|PC_item|DOUT\(1) & (!\CPU|PC_item|DOUT\(3) $ (\CPU|PC_item|DOUT\(0))))) # (\CPU|PC_item|DOUT\(2) & (!\CPU|PC_item|DOUT\(3) & (\CPU|PC_item|DOUT\(1) & \CPU|PC_item|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000010100000000100001010000000010000101000000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datac => \CPU|PC_item|ALT_INV_DOUT\(1),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	combout => \CPU|DECODER_item|saida[6]~3_combout\);

\CPU|DECODER_item|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|Equal10~1_combout\ = (!\CPU|PC_item|DOUT\(0) & (\CPU|PC_item|DOUT\(1) & (!\CPU|PC_item|DOUT\(2) & !\CPU|PC_item|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(0),
	datab => \CPU|PC_item|ALT_INV_DOUT\(1),
	datac => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \CPU|DECODER_item|Equal10~1_combout\);

\RAM|ram~1061\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1061_combout\ = (!\CPU|PC_item|DOUT\(3) & (!\CPU|PC_item|DOUT\(2) & (!\CPU|PC_item|DOUT\(1) & \CPU|PC_item|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datac => \CPU|PC_item|ALT_INV_DOUT\(1),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	combout => \RAM|ram~1061_combout\);

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(0),
	ena => \RAM|ram~1061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~1060\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1060_combout\ = (!\CPU|PC_item|DOUT\(3) & (!\CPU|PC_item|DOUT\(2) & (\CPU|PC_item|DOUT\(1) & \CPU|PC_item|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datac => \CPU|PC_item|ALT_INV_DOUT\(1),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	combout => \RAM|ram~1060_combout\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(0),
	ena => \RAM|ram~1060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~1040\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1040_combout\ = ( \ROM|memROM~0_combout\ & ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~2_combout\ & \RAM|ram~16_q\) ) ) ) # ( !\ROM|memROM~0_combout\ & ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~2_combout\ & \RAM|ram~24_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \RAM|ALT_INV_ram~16_q\,
	datad => \RAM|ALT_INV_ram~24_q\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~1040_combout\);

\RAM|ram~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1062_combout\ = ( \CPU|PC_item|DOUT\(1) & ( \RAM|ram~1040_combout\ & ( (!\CPU|PC_item|DOUT\(0)) # (!\CPU|PC_item|DOUT\(3) $ (\CPU|PC_item|DOUT\(2))) ) ) ) # ( !\CPU|PC_item|DOUT\(1) & ( \RAM|ram~1040_combout\ & ( (!\CPU|PC_item|DOUT\(3)) # 
-- ((!\CPU|PC_item|DOUT\(0)) # (\CPU|PC_item|DOUT\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101110111111111110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	datae => \CPU|PC_item|ALT_INV_DOUT\(1),
	dataf => \RAM|ALT_INV_ram~1040_combout\,
	combout => \RAM|ram~1062_combout\);

\CPU|ULA_item|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~34_cout\ = CARRY(( !\CPU|DECODER_item|Equal10~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	cin => GND,
	cout => \CPU|ULA_item|Add0~34_cout\);

\CPU|ULA_item|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~1_sumout\ = SUM(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1062_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (!\ROM|memROM~0_combout\)))) ) + ( \CPU|REGA_item|DOUT\(0) ) + 
-- ( \CPU|ULA_item|Add0~34_cout\ ))
-- \CPU|ULA_item|Add0~2\ = CARRY(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1062_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (!\ROM|memROM~0_combout\)))) ) + ( \CPU|REGA_item|DOUT\(0) ) + ( 
-- \CPU|ULA_item|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011010000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_ram~1062_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(0),
	cin => \CPU|ULA_item|Add0~34_cout\,
	sumout => \CPU|ULA_item|Add0~1_sumout\,
	cout => \CPU|ULA_item|Add0~2\);

\RAM|ram~1054\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1054_combout\ = ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~0_combout\ & ((\RAM|ram~24_q\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~16_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000001111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datac => \RAM|ALT_INV_ram~24_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~1054_combout\);

\CPU|MUX_item|saida_MUX[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_item|saida_MUX[0]~7_combout\ = ( \CPU|PC_item|DOUT\(1) & ( \CPU|PC_item|DOUT\(0) & ( (!\RAM|ram~1054_combout\ & (!\CPU|PC_item|DOUT\(3) & \CPU|PC_item|DOUT\(2))) # (\RAM|ram~1054_combout\ & ((!\CPU|PC_item|DOUT\(3)) # (\CPU|PC_item|DOUT\(2)))) ) 
-- ) ) # ( !\CPU|PC_item|DOUT\(1) & ( \CPU|PC_item|DOUT\(0) & ( (\RAM|ram~1054_combout\ & ((!\CPU|PC_item|DOUT\(3)) # (\CPU|PC_item|DOUT\(2)))) ) ) ) # ( \CPU|PC_item|DOUT\(1) & ( !\CPU|PC_item|DOUT\(0) & ( \RAM|ram~1054_combout\ ) ) ) # ( 
-- !\CPU|PC_item|DOUT\(1) & ( !\CPU|PC_item|DOUT\(0) & ( ((!\CPU|PC_item|DOUT\(3) & !\CPU|PC_item|DOUT\(2))) # (\RAM|ram~1054_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011001100110011001100110000001100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~1054_combout\,
	datac => \CPU|PC_item|ALT_INV_DOUT\(3),
	datad => \CPU|PC_item|ALT_INV_DOUT\(2),
	datae => \CPU|PC_item|ALT_INV_DOUT\(1),
	dataf => \CPU|PC_item|ALT_INV_DOUT\(0),
	combout => \CPU|MUX_item|saida_MUX[0]~7_combout\);

\CPU|DECODER_item|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|saida[4]~2_combout\ = (!\CPU|PC_item|DOUT\(2) & (!\CPU|PC_item|DOUT\(1) & (!\CPU|PC_item|DOUT\(3) $ (\CPU|PC_item|DOUT\(0))))) # (\CPU|PC_item|DOUT\(2) & (!\CPU|PC_item|DOUT\(3) & (!\CPU|PC_item|DOUT\(1) $ (\CPU|PC_item|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001000010101000000100001010100000010000101010000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datac => \CPU|PC_item|ALT_INV_DOUT\(1),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	combout => \CPU|DECODER_item|saida[4]~2_combout\);

\CPU|DECODER_item|saida[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_item|saida[5]~1_combout\ = (!\CPU|PC_item|DOUT\(3) & (!\CPU|PC_item|DOUT\(0) $ (((\CPU|PC_item|DOUT\(2) & \CPU|PC_item|DOUT\(1)))))) # (\CPU|PC_item|DOUT\(3) & (!\CPU|PC_item|DOUT\(2) & (!\CPU|PC_item|DOUT\(1) & \CPU|PC_item|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100001000010101010000100001010101000010000101010100001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datac => \CPU|PC_item|ALT_INV_DOUT\(1),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	combout => \CPU|DECODER_item|saida[5]~1_combout\);

\CPU|REGA_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA_item|Add0~1_sumout\,
	asdata => \CPU|MUX_item|saida_MUX[0]~7_combout\,
	sload => \CPU|DECODER_item|saida[4]~2_combout\,
	ena => \CPU|DECODER_item|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(0));

\LogicLed_item|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicLed_item|comb~2_combout\ = (\CPU|PC_item|DOUT\(3) & (!\CPU|PC_item|DOUT\(2) & !\CPU|PC_item|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datac => \CPU|PC_item|ALT_INV_DOUT\(0),
	combout => \LogicLed_item|comb~2_combout\);

\LogicLed_item|LEDR_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(0),
	ena => \LogicLed_item|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicLed_item|LEDR_item|DOUT\(0));

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(1),
	ena => \RAM|ram~1061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(1),
	ena => \RAM|ram~1060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~1041\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1041_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~0_combout\ & ((\RAM|ram~25_q\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~17_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datac => \RAM|ALT_INV_ram~25_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~1041_combout\);

\RAM|ram~1056\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1056_combout\ = ( \CPU|PC_item|DOUT\(1) & ( \RAM|ram~1041_combout\ & ( (!\CPU|PC_item|DOUT\(0)) # (!\CPU|PC_item|DOUT\(3) $ (\CPU|PC_item|DOUT\(2))) ) ) ) # ( !\CPU|PC_item|DOUT\(1) & ( \RAM|ram~1041_combout\ & ( (!\CPU|PC_item|DOUT\(3)) # 
-- ((!\CPU|PC_item|DOUT\(0)) # (\CPU|PC_item|DOUT\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101110111111111110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	datae => \CPU|PC_item|ALT_INV_DOUT\(1),
	dataf => \RAM|ALT_INV_ram~1041_combout\,
	combout => \RAM|ram~1056_combout\);

\CPU|ULA_item|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~5_sumout\ = SUM(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1056_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~1_combout\)))) ) + ( \CPU|REGA_item|DOUT\(1) ) + ( 
-- \CPU|ULA_item|Add0~2\ ))
-- \CPU|ULA_item|Add0~6\ = CARRY(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1056_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~1_combout\)))) ) + ( \CPU|REGA_item|DOUT\(1) ) + ( 
-- \CPU|ULA_item|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \RAM|ALT_INV_ram~1056_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(1),
	cin => \CPU|ULA_item|Add0~2\,
	sumout => \CPU|ULA_item|Add0~5_sumout\,
	cout => \CPU|ULA_item|Add0~6\);

\RAM|ram~1055\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1055_combout\ = ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~0_combout\ & ((\RAM|ram~25_q\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~17_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000001111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datac => \RAM|ALT_INV_ram~25_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~1055_combout\);

\CPU|MUX_item|saida_MUX[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_item|saida_MUX[1]~6_combout\ = ( \CPU|PC_item|DOUT\(1) & ( \CPU|PC_item|DOUT\(0) & ( (\RAM|ram~1055_combout\ & (!\CPU|PC_item|DOUT\(3) $ (\CPU|PC_item|DOUT\(2)))) ) ) ) # ( !\CPU|PC_item|DOUT\(1) & ( \CPU|PC_item|DOUT\(0) & ( 
-- ((\CPU|PC_item|DOUT\(3) & !\CPU|PC_item|DOUT\(2))) # (\RAM|ram~1055_combout\) ) ) ) # ( \CPU|PC_item|DOUT\(1) & ( !\CPU|PC_item|DOUT\(0) & ( \RAM|ram~1055_combout\ ) ) ) # ( !\CPU|PC_item|DOUT\(1) & ( !\CPU|PC_item|DOUT\(0) & ( (\RAM|ram~1055_combout\ & 
-- ((\CPU|PC_item|DOUT\(2)) # (\CPU|PC_item|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011001100110011001100111111001100110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~1055_combout\,
	datac => \CPU|PC_item|ALT_INV_DOUT\(3),
	datad => \CPU|PC_item|ALT_INV_DOUT\(2),
	datae => \CPU|PC_item|ALT_INV_DOUT\(1),
	dataf => \CPU|PC_item|ALT_INV_DOUT\(0),
	combout => \CPU|MUX_item|saida_MUX[1]~6_combout\);

\CPU|REGA_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA_item|Add0~5_sumout\,
	asdata => \CPU|MUX_item|saida_MUX[1]~6_combout\,
	sload => \CPU|DECODER_item|saida[4]~2_combout\,
	ena => \CPU|DECODER_item|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(1));

\LogicLed_item|LEDR_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(1),
	ena => \LogicLed_item|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicLed_item|LEDR_item|DOUT\(1));

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(2),
	ena => \RAM|ram~1061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(2),
	ena => \RAM|ram~1060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~1042\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1042_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~0_combout\ & ((\RAM|ram~26_q\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~18_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datac => \RAM|ALT_INV_ram~26_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~1042_combout\);

\RAM|ram~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1086_combout\ = ( \RAM|ram~1042_combout\ & ( (!\CPU|PC_item|DOUT\(3)) # ((!\CPU|PC_item|DOUT\(0)) # (\CPU|PC_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	dataf => \RAM|ALT_INV_ram~1042_combout\,
	combout => \RAM|ram~1086_combout\);

\RAM|ram~1048\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1048_combout\ = (!\ROM|memROM~2_combout\ & \RAM|ram~1086_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \RAM|ALT_INV_ram~1086_combout\,
	combout => \RAM|ram~1048_combout\);

\CPU|ULA_item|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~9_sumout\ = SUM(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1048_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|REGA_item|DOUT\(2) ) + ( 
-- \CPU|ULA_item|Add0~6\ ))
-- \CPU|ULA_item|Add0~10\ = CARRY(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1048_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|REGA_item|DOUT\(2) ) + ( 
-- \CPU|ULA_item|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~1048_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(2),
	cin => \CPU|ULA_item|Add0~6\,
	sumout => \CPU|ULA_item|Add0~9_sumout\,
	cout => \CPU|ULA_item|Add0~10\);

\CPU|MUX_item|saida_MUX[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_item|saida_MUX[2]~0_combout\ = (!\ROM|memROM~2_combout\ & (!\CPU|DECODER_item|saida[6]~3_combout\ & \RAM|ram~1086_combout\)) # (\ROM|memROM~2_combout\ & (\CPU|DECODER_item|saida[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\,
	datac => \RAM|ALT_INV_ram~1086_combout\,
	combout => \CPU|MUX_item|saida_MUX[2]~0_combout\);

\CPU|REGA_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA_item|Add0~9_sumout\,
	asdata => \CPU|MUX_item|saida_MUX[2]~0_combout\,
	sload => \CPU|DECODER_item|saida[4]~2_combout\,
	ena => \CPU|DECODER_item|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(2));

\LogicLed_item|LEDR_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(2),
	ena => \LogicLed_item|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicLed_item|LEDR_item|DOUT\(2));

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(3),
	ena => \RAM|ram~1061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(3),
	ena => \RAM|ram~1060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~1043\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1043_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~0_combout\ & ((\RAM|ram~27_q\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~19_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datac => \RAM|ALT_INV_ram~27_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~1043_combout\);

\RAM|ram~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1082_combout\ = ( \RAM|ram~1043_combout\ & ( (!\CPU|PC_item|DOUT\(3)) # ((!\CPU|PC_item|DOUT\(0)) # (\CPU|PC_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	dataf => \RAM|ALT_INV_ram~1043_combout\,
	combout => \RAM|ram~1082_combout\);

\RAM|ram~1049\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1049_combout\ = (!\ROM|memROM~2_combout\ & \RAM|ram~1082_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \RAM|ALT_INV_ram~1082_combout\,
	combout => \RAM|ram~1049_combout\);

\CPU|ULA_item|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~13_sumout\ = SUM(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1049_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~3_combout\)))) ) + ( \CPU|REGA_item|DOUT\(3) ) + 
-- ( \CPU|ULA_item|Add0~10\ ))
-- \CPU|ULA_item|Add0~14\ = CARRY(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1049_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~3_combout\)))) ) + ( \CPU|REGA_item|DOUT\(3) ) + ( 
-- \CPU|ULA_item|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \RAM|ALT_INV_ram~1049_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(3),
	cin => \CPU|ULA_item|Add0~10\,
	sumout => \CPU|ULA_item|Add0~13_sumout\,
	cout => \CPU|ULA_item|Add0~14\);

\CPU|MUX_item|saida_MUX[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_item|saida_MUX[3]~1_combout\ = (!\CPU|DECODER_item|saida[6]~3_combout\ & (((!\ROM|memROM~2_combout\ & \RAM|ram~1082_combout\)))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111000101000001011100010100000101110001010000010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\,
	datad => \RAM|ALT_INV_ram~1082_combout\,
	combout => \CPU|MUX_item|saida_MUX[3]~1_combout\);

\CPU|REGA_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA_item|Add0~13_sumout\,
	asdata => \CPU|MUX_item|saida_MUX[3]~1_combout\,
	sload => \CPU|DECODER_item|saida[4]~2_combout\,
	ena => \CPU|DECODER_item|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(3));

\LogicLed_item|LEDR_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(3),
	ena => \LogicLed_item|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicLed_item|LEDR_item|DOUT\(3));

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(4),
	ena => \RAM|ram~1061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(4),
	ena => \RAM|ram~1060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~1044\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1044_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~0_combout\ & ((\RAM|ram~28_q\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~20_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datac => \RAM|ALT_INV_ram~28_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~1044_combout\);

\RAM|ram~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1078_combout\ = ( \RAM|ram~1044_combout\ & ( (!\CPU|PC_item|DOUT\(3)) # ((!\CPU|PC_item|DOUT\(0)) # (\CPU|PC_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	dataf => \RAM|ALT_INV_ram~1044_combout\,
	combout => \RAM|ram~1078_combout\);

\RAM|ram~1050\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1050_combout\ = (!\ROM|memROM~2_combout\ & \RAM|ram~1078_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \RAM|ALT_INV_ram~1078_combout\,
	combout => \RAM|ram~1050_combout\);

\CPU|ULA_item|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~17_sumout\ = SUM(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1050_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|REGA_item|DOUT\(4) ) + 
-- ( \CPU|ULA_item|Add0~14\ ))
-- \CPU|ULA_item|Add0~18\ = CARRY(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1050_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|REGA_item|DOUT\(4) ) + ( 
-- \CPU|ULA_item|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~1050_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(4),
	cin => \CPU|ULA_item|Add0~14\,
	sumout => \CPU|ULA_item|Add0~17_sumout\,
	cout => \CPU|ULA_item|Add0~18\);

\CPU|MUX_item|saida_MUX[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_item|saida_MUX[4]~2_combout\ = (!\ROM|memROM~2_combout\ & (!\CPU|DECODER_item|saida[6]~3_combout\ & \RAM|ram~1078_combout\)) # (\ROM|memROM~2_combout\ & (\CPU|DECODER_item|saida[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\,
	datac => \RAM|ALT_INV_ram~1078_combout\,
	combout => \CPU|MUX_item|saida_MUX[4]~2_combout\);

\CPU|REGA_item|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA_item|Add0~17_sumout\,
	asdata => \CPU|MUX_item|saida_MUX[4]~2_combout\,
	sload => \CPU|DECODER_item|saida[4]~2_combout\,
	ena => \CPU|DECODER_item|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(4));

\LogicLed_item|LEDR_item|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(4),
	ena => \LogicLed_item|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicLed_item|LEDR_item|DOUT\(4));

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(5),
	ena => \RAM|ram~1061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(5),
	ena => \RAM|ram~1060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~1045\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1045_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~0_combout\ & ((\RAM|ram~29_q\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~21_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datac => \RAM|ALT_INV_ram~29_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~1045_combout\);

\RAM|ram~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1074_combout\ = ( \RAM|ram~1045_combout\ & ( (!\CPU|PC_item|DOUT\(3)) # ((!\CPU|PC_item|DOUT\(0)) # (\CPU|PC_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	dataf => \RAM|ALT_INV_ram~1045_combout\,
	combout => \RAM|ram~1074_combout\);

\RAM|ram~1051\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1051_combout\ = (!\ROM|memROM~2_combout\ & \RAM|ram~1074_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \RAM|ALT_INV_ram~1074_combout\,
	combout => \RAM|ram~1051_combout\);

\CPU|ULA_item|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~21_sumout\ = SUM(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1051_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|REGA_item|DOUT\(5) ) + 
-- ( \CPU|ULA_item|Add0~18\ ))
-- \CPU|ULA_item|Add0~22\ = CARRY(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1051_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|REGA_item|DOUT\(5) ) + ( 
-- \CPU|ULA_item|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~1051_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(5),
	cin => \CPU|ULA_item|Add0~18\,
	sumout => \CPU|ULA_item|Add0~21_sumout\,
	cout => \CPU|ULA_item|Add0~22\);

\CPU|MUX_item|saida_MUX[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_item|saida_MUX[5]~3_combout\ = (!\CPU|DECODER_item|saida[6]~3_combout\ & (((!\ROM|memROM~2_combout\ & \RAM|ram~1074_combout\)))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111000101000001011100010100000101110001010000010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\,
	datad => \RAM|ALT_INV_ram~1074_combout\,
	combout => \CPU|MUX_item|saida_MUX[5]~3_combout\);

\CPU|REGA_item|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA_item|Add0~21_sumout\,
	asdata => \CPU|MUX_item|saida_MUX[5]~3_combout\,
	sload => \CPU|DECODER_item|saida[4]~2_combout\,
	ena => \CPU|DECODER_item|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(5));

\LogicLed_item|LEDR_item|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(5),
	ena => \LogicLed_item|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicLed_item|LEDR_item|DOUT\(5));

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(6),
	ena => \RAM|ram~1061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(6),
	ena => \RAM|ram~1060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~1046\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1046_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~0_combout\ & ((\RAM|ram~30_q\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~22_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datac => \RAM|ALT_INV_ram~30_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~1046_combout\);

\RAM|ram~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1070_combout\ = ( \RAM|ram~1046_combout\ & ( (!\CPU|PC_item|DOUT\(3)) # ((!\CPU|PC_item|DOUT\(0)) # (\CPU|PC_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	dataf => \RAM|ALT_INV_ram~1046_combout\,
	combout => \RAM|ram~1070_combout\);

\RAM|ram~1052\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1052_combout\ = (!\ROM|memROM~2_combout\ & \RAM|ram~1070_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \RAM|ALT_INV_ram~1070_combout\,
	combout => \RAM|ram~1052_combout\);

\CPU|ULA_item|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~25_sumout\ = SUM(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1052_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|REGA_item|DOUT\(6) ) + 
-- ( \CPU|ULA_item|Add0~22\ ))
-- \CPU|ULA_item|Add0~26\ = CARRY(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1052_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|REGA_item|DOUT\(6) ) + ( 
-- \CPU|ULA_item|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~1052_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(6),
	cin => \CPU|ULA_item|Add0~22\,
	sumout => \CPU|ULA_item|Add0~25_sumout\,
	cout => \CPU|ULA_item|Add0~26\);

\CPU|MUX_item|saida_MUX[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_item|saida_MUX[6]~4_combout\ = (!\ROM|memROM~2_combout\ & (!\CPU|DECODER_item|saida[6]~3_combout\ & \RAM|ram~1070_combout\)) # (\ROM|memROM~2_combout\ & (\CPU|DECODER_item|saida[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\,
	datac => \RAM|ALT_INV_ram~1070_combout\,
	combout => \CPU|MUX_item|saida_MUX[6]~4_combout\);

\CPU|REGA_item|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA_item|Add0~25_sumout\,
	asdata => \CPU|MUX_item|saida_MUX[6]~4_combout\,
	sload => \CPU|DECODER_item|saida[4]~2_combout\,
	ena => \CPU|DECODER_item|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(6));

\LogicLed_item|LEDR_item|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(6),
	ena => \LogicLed_item|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicLed_item|LEDR_item|DOUT\(6));

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(7),
	ena => \RAM|ram~1061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(7),
	ena => \RAM|ram~1060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~1047\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1047_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~0_combout\ & ((\RAM|ram~31_q\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~23_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datac => \RAM|ALT_INV_ram~31_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~1047_combout\);

\RAM|ram~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1066_combout\ = ( \RAM|ram~1047_combout\ & ( (!\CPU|PC_item|DOUT\(3)) # ((!\CPU|PC_item|DOUT\(0)) # (\CPU|PC_item|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(3),
	datab => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(0),
	dataf => \RAM|ALT_INV_ram~1047_combout\,
	combout => \RAM|ram~1066_combout\);

\RAM|ram~1053\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~1053_combout\ = (!\ROM|memROM~2_combout\ & \RAM|ram~1066_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \RAM|ALT_INV_ram~1066_combout\,
	combout => \RAM|ram~1053_combout\);

\CPU|ULA_item|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_item|Add0~29_sumout\ = SUM(( !\CPU|DECODER_item|Equal10~1_combout\ $ (((!\CPU|DECODER_item|saida[6]~3_combout\ & ((\RAM|ram~1053_combout\))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|REGA_item|DOUT\(7) ) + 
-- ( \CPU|ULA_item|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \CPU|DECODER_item|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_ram~1053_combout\,
	dataf => \CPU|REGA_item|ALT_INV_DOUT\(7),
	cin => \CPU|ULA_item|Add0~26\,
	sumout => \CPU|ULA_item|Add0~29_sumout\);

\CPU|MUX_item|saida_MUX[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_item|saida_MUX[7]~5_combout\ = (!\CPU|DECODER_item|saida[6]~3_combout\ & (((!\ROM|memROM~2_combout\ & \RAM|ram~1066_combout\)))) # (\CPU|DECODER_item|saida[6]~3_combout\ & (\ROM|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111000101000001011100010100000101110001010000010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \CPU|DECODER_item|ALT_INV_saida[6]~3_combout\,
	datad => \RAM|ALT_INV_ram~1066_combout\,
	combout => \CPU|MUX_item|saida_MUX[7]~5_combout\);

\CPU|REGA_item|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA_item|Add0~29_sumout\,
	asdata => \CPU|MUX_item|saida_MUX[7]~5_combout\,
	sload => \CPU|DECODER_item|saida[4]~2_combout\,
	ena => \CPU|DECODER_item|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA_item|DOUT\(7));

\LogicLed_item|LEDR_item|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA_item|DOUT\(7),
	ena => \LogicLed_item|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicLed_item|LEDR_item|DOUT\(7));

\LogicLed_item|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicLed_item|comb~0_combout\ = (!\CPU|PC_item|DOUT\(2) & (!\CPU|PC_item|DOUT\(0) $ (((!\CPU|PC_item|DOUT\(3)))))) # (\CPU|PC_item|DOUT\(2) & (!\CPU|PC_item|DOUT\(3) & (!\CPU|PC_item|DOUT\(0) $ (!\CPU|PC_item|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010100000010101101010000001010110101000000101011010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_item|ALT_INV_DOUT\(0),
	datab => \CPU|PC_item|ALT_INV_DOUT\(1),
	datac => \CPU|PC_item|ALT_INV_DOUT\(2),
	datad => \CPU|PC_item|ALT_INV_DOUT\(3),
	combout => \LogicLed_item|comb~0_combout\);

\LogicLed_item|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicLed_item|comb~1_combout\ = (\ROM|memROM~5_combout\ & (!\CPU|DECODER_item|Equal10~0_combout\ & \LogicLed_item|comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \CPU|DECODER_item|ALT_INV_Equal10~0_combout\,
	datac => \LogicLed_item|ALT_INV_comb~0_combout\,
	combout => \LogicLed_item|comb~1_combout\);

\LogicLed_item|LED_8_item|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicLed_item|LED_8_item|DOUT~0_combout\ = ( \LogicLed_item|comb~1_combout\ & ( (!\ROM|memROM~0_combout\ & ((!\ROM|memROM~1_combout\ & ((\CPU|REGA_item|DOUT\(0)))) # (\ROM|memROM~1_combout\ & (\LogicLed_item|LED_8_item|DOUT~q\)))) # 
-- (\ROM|memROM~0_combout\ & (((\LogicLed_item|LED_8_item|DOUT~q\)))) ) ) # ( !\LogicLed_item|comb~1_combout\ & ( \LogicLed_item|LED_8_item|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000001111000111100001111000011110000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \LogicLed_item|LED_8_item|ALT_INV_DOUT~q\,
	datad => \CPU|REGA_item|ALT_INV_DOUT\(0),
	datae => \LogicLed_item|ALT_INV_comb~1_combout\,
	combout => \LogicLed_item|LED_8_item|DOUT~0_combout\);

\LogicLed_item|LED_8_item|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \LogicLed_item|LED_8_item|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicLed_item|LED_8_item|DOUT~q\);

\LogicLed_item|LED_9_item|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicLed_item|LED_9_item|DOUT~0_combout\ = ( \LogicLed_item|comb~1_combout\ & ( (!\ROM|memROM~0_combout\ & (((\LogicLed_item|LED_9_item|DOUT~q\)))) # (\ROM|memROM~0_combout\ & ((!\ROM|memROM~1_combout\ & (\LogicLed_item|LED_9_item|DOUT~q\)) # 
-- (\ROM|memROM~1_combout\ & ((\CPU|REGA_item|DOUT\(0)))))) ) ) # ( !\LogicLed_item|comb~1_combout\ & ( \LogicLed_item|LED_9_item|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011100001111100001111000011110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \LogicLed_item|LED_9_item|ALT_INV_DOUT~q\,
	datad => \CPU|REGA_item|ALT_INV_DOUT\(0),
	datae => \LogicLed_item|ALT_INV_comb~1_combout\,
	combout => \LogicLed_item|LED_9_item|DOUT~0_combout\);

\LogicLed_item|LED_9_item|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \LogicLed_item|LED_9_item|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LogicLed_item|LED_9_item|DOUT~q\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_PC(0) <= \PC[0]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(4) <= \PC[4]~output_o\;

ww_PC(5) <= \PC[5]~output_o\;

ww_PC(6) <= \PC[6]~output_o\;

ww_PC(7) <= \PC[7]~output_o\;

ww_PC(8) <= \PC[8]~output_o\;

ww_control(0) <= \control[0]~output_o\;

ww_control(1) <= \control[1]~output_o\;

ww_control(2) <= \control[2]~output_o\;

ww_control(3) <= \control[3]~output_o\;

ww_control(4) <= \control[4]~output_o\;

ww_control(5) <= \control[5]~output_o\;

ww_control(6) <= \control[6]~output_o\;

ww_control(7) <= \control[7]~output_o\;

ww_control(8) <= \control[8]~output_o\;

ww_control(9) <= \control[9]~output_o\;

ww_control(10) <= \control[10]~output_o\;

ww_control(11) <= \control[11]~output_o\;

ww_control(12) <= \control[12]~output_o\;

ww_Leds(0) <= \Leds[0]~output_o\;

ww_Leds(1) <= \Leds[1]~output_o\;

ww_Leds(2) <= \Leds[2]~output_o\;

ww_Leds(3) <= \Leds[3]~output_o\;

ww_Leds(4) <= \Leds[4]~output_o\;

ww_Leds(5) <= \Leds[5]~output_o\;

ww_Leds(6) <= \Leds[6]~output_o\;

ww_Leds(7) <= \Leds[7]~output_o\;

ww_Leds(8) <= \Leds[8]~output_o\;

ww_Leds(9) <= \Leds[9]~output_o\;

ww_regA(0) <= \regA[0]~output_o\;

ww_regA(1) <= \regA[1]~output_o\;

ww_regA(2) <= \regA[2]~output_o\;

ww_regA(3) <= \regA[3]~output_o\;

ww_regA(4) <= \regA[4]~output_o\;

ww_regA(5) <= \regA[5]~output_o\;

ww_regA(6) <= \regA[6]~output_o\;

ww_regA(7) <= \regA[7]~output_o\;

ww_RAM_simu(0) <= \RAM_simu[0]~output_o\;

ww_RAM_simu(1) <= \RAM_simu[1]~output_o\;

ww_RAM_simu(2) <= \RAM_simu[2]~output_o\;

ww_RAM_simu(3) <= \RAM_simu[3]~output_o\;

ww_RAM_simu(4) <= \RAM_simu[4]~output_o\;

ww_RAM_simu(5) <= \RAM_simu[5]~output_o\;

ww_RAM_simu(6) <= \RAM_simu[6]~output_o\;

ww_RAM_simu(7) <= \RAM_simu[7]~output_o\;

ww_RAM_simu(8) <= \RAM_simu[8]~output_o\;
END structure;


