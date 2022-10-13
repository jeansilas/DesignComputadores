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

-- DATE "09/20/2022 08:57:37"

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

ENTITY 	Ent1Aula3 IS
    PORT (
	CLOCK_50 : IN std_logic;
	PC_OUT : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	REGA : OUT std_logic_vector(7 DOWNTO 0);
	Control_view : OUT std_logic_vector(11 DOWNTO 0)
	);
END Ent1Aula3;

ARCHITECTURE structure OF Ent1Aula3 IS
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
SIGNAL ww_PC_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Control_view : std_logic_vector(11 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \REGA[0]~output_o\ : std_logic;
SIGNAL \REGA[1]~output_o\ : std_logic;
SIGNAL \REGA[2]~output_o\ : std_logic;
SIGNAL \REGA[3]~output_o\ : std_logic;
SIGNAL \REGA[4]~output_o\ : std_logic;
SIGNAL \REGA[5]~output_o\ : std_logic;
SIGNAL \REGA[6]~output_o\ : std_logic;
SIGNAL \REGA[7]~output_o\ : std_logic;
SIGNAL \Control_view[0]~output_o\ : std_logic;
SIGNAL \Control_view[1]~output_o\ : std_logic;
SIGNAL \Control_view[2]~output_o\ : std_logic;
SIGNAL \Control_view[3]~output_o\ : std_logic;
SIGNAL \Control_view[4]~output_o\ : std_logic;
SIGNAL \Control_view[5]~output_o\ : std_logic;
SIGNAL \Control_view[6]~output_o\ : std_logic;
SIGNAL \Control_view[7]~output_o\ : std_logic;
SIGNAL \Control_view[8]~output_o\ : std_logic;
SIGNAL \Control_view[9]~output_o\ : std_logic;
SIGNAL \Control_view[10]~output_o\ : std_logic;
SIGNAL \Control_view[11]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \incrementaPC_item|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~2\ : std_logic;
SIGNAL \incrementaPC_item|Add0~6\ : std_logic;
SIGNAL \incrementaPC_item|Add0~10\ : std_logic;
SIGNAL \incrementaPC_item|Add0~13_sumout\ : std_logic;
SIGNAL \ROM_item|memROM~7_combout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM_item|memROM~2_combout\ : std_logic;
SIGNAL \ROM_item|memROM~3_combout\ : std_logic;
SIGNAL \DECODER_item|saida[4]~4_combout\ : std_logic;
SIGNAL \DECODER_item|Equal6~1_combout\ : std_logic;
SIGNAL \DECODER_item|saida[3]~10_combout\ : std_logic;
SIGNAL \DECODER_item|Equal6~0_combout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \DECODER_item|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM_item|ram~161_combout\ : std_logic;
SIGNAL \RAM_item|ram~23_q\ : std_logic;
SIGNAL \ROM_item|memROM~4_combout\ : std_logic;
SIGNAL \ROM_item|memROM~5_combout\ : std_logic;
SIGNAL \RAM_item|ram~157_combout\ : std_logic;
SIGNAL \ROM_item|memROM~6_combout\ : std_logic;
SIGNAL \RAM_item|ram~158_combout\ : std_logic;
SIGNAL \DECODER_item|saida[1]~9_combout\ : std_logic;
SIGNAL \DECODER_item|saida[3]~3_combout\ : std_logic;
SIGNAL \ULA_item|Add0~35_cout\ : std_logic;
SIGNAL \ULA_item|Add0~1_sumout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM_item|ram~17_q\ : std_logic;
SIGNAL \RAM_item|ram~145_combout\ : std_logic;
SIGNAL \RAM_item|ram~146_combout\ : std_logic;
SIGNAL \ULA_item|Add0~32_combout\ : std_logic;
SIGNAL \ULA_item|Add0~2\ : std_logic;
SIGNAL \ULA_item|Add0~5_sumout\ : std_logic;
SIGNAL \RAM_item|ram~18_q\ : std_logic;
SIGNAL \RAM_item|ram~147_combout\ : std_logic;
SIGNAL \RAM_item|ram~148_combout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ULA_item|Add0~6\ : std_logic;
SIGNAL \ULA_item|Add0~9_sumout\ : std_logic;
SIGNAL \RAM_item|ram~19_q\ : std_logic;
SIGNAL \RAM_item|ram~149_combout\ : std_logic;
SIGNAL \RAM_item|ram~150_combout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ULA_item|Add0~10\ : std_logic;
SIGNAL \ULA_item|Add0~13_sumout\ : std_logic;
SIGNAL \RAM_item|ram~20_q\ : std_logic;
SIGNAL \RAM_item|ram~151_combout\ : std_logic;
SIGNAL \RAM_item|ram~152_combout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ULA_item|Add0~14\ : std_logic;
SIGNAL \ULA_item|Add0~17_sumout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM_item|ram~21_q\ : std_logic;
SIGNAL \RAM_item|ram~153_combout\ : std_logic;
SIGNAL \RAM_item|ram~154_combout\ : std_logic;
SIGNAL \ULA_item|Add0~18\ : std_logic;
SIGNAL \ULA_item|Add0~21_sumout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM_item|ram~22_q\ : std_logic;
SIGNAL \RAM_item|ram~155_combout\ : std_logic;
SIGNAL \RAM_item|ram~156_combout\ : std_logic;
SIGNAL \ULA_item|Add0~22\ : std_logic;
SIGNAL \ULA_item|Add0~25_sumout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \RAM_item|ram~24_q\ : std_logic;
SIGNAL \RAM_item|ram~159_combout\ : std_logic;
SIGNAL \RAM_item|ram~160_combout\ : std_logic;
SIGNAL \ULA_item|Add0~26\ : std_logic;
SIGNAL \ULA_item|Add0~29_sumout\ : std_logic;
SIGNAL \DECODER_item|saida~2_combout\ : std_logic;
SIGNAL \FLAG_zero_item|DOUT~0_combout\ : std_logic;
SIGNAL \FLAG_zero_item|DOUT~1_combout\ : std_logic;
SIGNAL \FLAG_zero_item|DOUT~2_combout\ : std_logic;
SIGNAL \FLAG_zero_item|DOUT~3_combout\ : std_logic;
SIGNAL \FLAG_zero_item|DOUT~4_combout\ : std_logic;
SIGNAL \FLAG_zero_item|DOUT~5_combout\ : std_logic;
SIGNAL \FLAG_zero_item|DOUT~6_combout\ : std_logic;
SIGNAL \FLAG_zero_item|DOUT~q\ : std_logic;
SIGNAL \PC_item|DOUT[1]~0_combout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~9_sumout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM_item|memROM~1_combout\ : std_logic;
SIGNAL \DECODER_item|saida~8_combout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~5_sumout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM_item|memROM~0_combout\ : std_logic;
SIGNAL \DECODER_item|saida~7_combout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~14\ : std_logic;
SIGNAL \incrementaPC_item|Add0~17_sumout\ : std_logic;
SIGNAL \DECODER_item|saida~6_combout\ : std_logic;
SIGNAL \DECODER_item|Equal4~0_combout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~18\ : std_logic;
SIGNAL \incrementaPC_item|Add0~21_sumout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~22\ : std_logic;
SIGNAL \incrementaPC_item|Add0~25_sumout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~26\ : std_logic;
SIGNAL \incrementaPC_item|Add0~29_sumout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \DECODER_item|saida[0]~0_combout\ : std_logic;
SIGNAL \DECODER_item|saida[1]~1_combout\ : std_logic;
SIGNAL \REGA_item|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC_item|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \END_RET_item|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DECODER_item|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC_item|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA_item|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC_item|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC_item|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC_item|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC_item|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC_item|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC_item|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC_item|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC_item|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \REGA_item|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DECODER_item|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida[3]~10_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida[1]~9_combout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~32_combout\ : std_logic;
SIGNAL \FLAG_zero_item|ALT_INV_DOUT~5_combout\ : std_logic;
SIGNAL \FLAG_zero_item|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \FLAG_zero_item|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \FLAG_zero_item|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \FLAG_zero_item|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \FLAG_zero_item|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MUX_item|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MUX_item|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MUX_item|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \END_RET_item|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MUX_JMP|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \PC_item|ALT_INV_DOUT[1]~0_combout\ : std_logic;
SIGNAL \FLAG_zero_item|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida~8_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida~7_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida~6_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
PC_OUT <= ww_PC_OUT;
ww_KEY <= KEY;
REGA <= ww_REGA;
Control_view <= ww_Control_view;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\DECODER_item|ALT_INV_Equal6~0_combout\ <= NOT \DECODER_item|Equal6~0_combout\;
\DECODER_item|ALT_INV_saida[4]~4_combout\ <= NOT \DECODER_item|saida[4]~4_combout\;
\DECODER_item|ALT_INV_saida[3]~3_combout\ <= NOT \DECODER_item|saida[3]~3_combout\;
\DECODER_item|ALT_INV_saida~2_combout\ <= NOT \DECODER_item|saida~2_combout\;
\ROM_item|ALT_INV_memROM~3_combout\ <= NOT \ROM_item|memROM~3_combout\;
\ROM_item|ALT_INV_memROM~2_combout\ <= NOT \ROM_item|memROM~2_combout\;
\ROM_item|ALT_INV_memROM~1_combout\ <= NOT \ROM_item|memROM~1_combout\;
\ROM_item|ALT_INV_memROM~0_combout\ <= NOT \ROM_item|memROM~0_combout\;
\PC_item|ALT_INV_DOUT\(7) <= NOT \PC_item|DOUT\(7);
\PC_item|ALT_INV_DOUT\(6) <= NOT \PC_item|DOUT\(6);
\PC_item|ALT_INV_DOUT\(5) <= NOT \PC_item|DOUT\(5);
\PC_item|ALT_INV_DOUT\(4) <= NOT \PC_item|DOUT\(4);
\PC_item|ALT_INV_DOUT\(3) <= NOT \PC_item|DOUT\(3);
\PC_item|ALT_INV_DOUT\(2) <= NOT \PC_item|DOUT\(2);
\PC_item|ALT_INV_DOUT\(1) <= NOT \PC_item|DOUT\(1);
\PC_item|ALT_INV_DOUT\(0) <= NOT \PC_item|DOUT\(0);
\ULA_item|ALT_INV_Add0~29_sumout\ <= NOT \ULA_item|Add0~29_sumout\;
\ULA_item|ALT_INV_Add0~25_sumout\ <= NOT \ULA_item|Add0~25_sumout\;
\ULA_item|ALT_INV_Add0~21_sumout\ <= NOT \ULA_item|Add0~21_sumout\;
\ULA_item|ALT_INV_Add0~17_sumout\ <= NOT \ULA_item|Add0~17_sumout\;
\ULA_item|ALT_INV_Add0~13_sumout\ <= NOT \ULA_item|Add0~13_sumout\;
\ULA_item|ALT_INV_Add0~9_sumout\ <= NOT \ULA_item|Add0~9_sumout\;
\ULA_item|ALT_INV_Add0~5_sumout\ <= NOT \ULA_item|Add0~5_sumout\;
\ULA_item|ALT_INV_Add0~1_sumout\ <= NOT \ULA_item|Add0~1_sumout\;
\incrementaPC_item|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC_item|Add0~29_sumout\;
\incrementaPC_item|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC_item|Add0~25_sumout\;
\incrementaPC_item|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC_item|Add0~21_sumout\;
\incrementaPC_item|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC_item|Add0~17_sumout\;
\incrementaPC_item|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC_item|Add0~13_sumout\;
\incrementaPC_item|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC_item|Add0~9_sumout\;
\incrementaPC_item|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC_item|Add0~5_sumout\;
\incrementaPC_item|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC_item|Add0~1_sumout\;
\REGA_item|ALT_INV_DOUT\(7) <= NOT \REGA_item|DOUT\(7);
\REGA_item|ALT_INV_DOUT\(6) <= NOT \REGA_item|DOUT\(6);
\REGA_item|ALT_INV_DOUT\(5) <= NOT \REGA_item|DOUT\(5);
\REGA_item|ALT_INV_DOUT\(4) <= NOT \REGA_item|DOUT\(4);
\REGA_item|ALT_INV_DOUT\(3) <= NOT \REGA_item|DOUT\(3);
\REGA_item|ALT_INV_DOUT\(2) <= NOT \REGA_item|DOUT\(2);
\REGA_item|ALT_INV_DOUT\(1) <= NOT \REGA_item|DOUT\(1);
\REGA_item|ALT_INV_DOUT\(0) <= NOT \REGA_item|DOUT\(0);
\DECODER_item|ALT_INV_Equal6~1_combout\ <= NOT \DECODER_item|Equal6~1_combout\;
\DECODER_item|ALT_INV_saida[3]~10_combout\ <= NOT \DECODER_item|saida[3]~10_combout\;
\DECODER_item|ALT_INV_saida[1]~9_combout\ <= NOT \DECODER_item|saida[1]~9_combout\;
\ULA_item|ALT_INV_Add0~32_combout\ <= NOT \ULA_item|Add0~32_combout\;
\FLAG_zero_item|ALT_INV_DOUT~5_combout\ <= NOT \FLAG_zero_item|DOUT~5_combout\;
\FLAG_zero_item|ALT_INV_DOUT~4_combout\ <= NOT \FLAG_zero_item|DOUT~4_combout\;
\FLAG_zero_item|ALT_INV_DOUT~3_combout\ <= NOT \FLAG_zero_item|DOUT~3_combout\;
\FLAG_zero_item|ALT_INV_DOUT~2_combout\ <= NOT \FLAG_zero_item|DOUT~2_combout\;
\FLAG_zero_item|ALT_INV_DOUT~1_combout\ <= NOT \FLAG_zero_item|DOUT~1_combout\;
\FLAG_zero_item|ALT_INV_DOUT~0_combout\ <= NOT \FLAG_zero_item|DOUT~0_combout\;
\RAM_item|ALT_INV_ram~160_combout\ <= NOT \RAM_item|ram~160_combout\;
\RAM_item|ALT_INV_ram~159_combout\ <= NOT \RAM_item|ram~159_combout\;
\RAM_item|ALT_INV_ram~24_q\ <= NOT \RAM_item|ram~24_q\;
\RAM_item|ALT_INV_ram~158_combout\ <= NOT \RAM_item|ram~158_combout\;
\RAM_item|ALT_INV_ram~157_combout\ <= NOT \RAM_item|ram~157_combout\;
\RAM_item|ALT_INV_ram~23_q\ <= NOT \RAM_item|ram~23_q\;
\RAM_item|ALT_INV_ram~156_combout\ <= NOT \RAM_item|ram~156_combout\;
\RAM_item|ALT_INV_ram~155_combout\ <= NOT \RAM_item|ram~155_combout\;
\RAM_item|ALT_INV_ram~22_q\ <= NOT \RAM_item|ram~22_q\;
\RAM_item|ALT_INV_ram~154_combout\ <= NOT \RAM_item|ram~154_combout\;
\RAM_item|ALT_INV_ram~153_combout\ <= NOT \RAM_item|ram~153_combout\;
\RAM_item|ALT_INV_ram~21_q\ <= NOT \RAM_item|ram~21_q\;
\MUX_item|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX_item|saida_MUX[3]~3_combout\;
\RAM_item|ALT_INV_ram~152_combout\ <= NOT \RAM_item|ram~152_combout\;
\RAM_item|ALT_INV_ram~151_combout\ <= NOT \RAM_item|ram~151_combout\;
\RAM_item|ALT_INV_ram~20_q\ <= NOT \RAM_item|ram~20_q\;
\MUX_item|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX_item|saida_MUX[2]~2_combout\;
\RAM_item|ALT_INV_ram~150_combout\ <= NOT \RAM_item|ram~150_combout\;
\RAM_item|ALT_INV_ram~149_combout\ <= NOT \RAM_item|ram~149_combout\;
\RAM_item|ALT_INV_ram~19_q\ <= NOT \RAM_item|ram~19_q\;
\MUX_item|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX_item|saida_MUX[1]~1_combout\;
\RAM_item|ALT_INV_ram~148_combout\ <= NOT \RAM_item|ram~148_combout\;
\RAM_item|ALT_INV_ram~147_combout\ <= NOT \RAM_item|ram~147_combout\;
\RAM_item|ALT_INV_ram~18_q\ <= NOT \RAM_item|ram~18_q\;
\RAM_item|ALT_INV_ram~146_combout\ <= NOT \RAM_item|ram~146_combout\;
\RAM_item|ALT_INV_ram~145_combout\ <= NOT \RAM_item|ram~145_combout\;
\RAM_item|ALT_INV_ram~17_q\ <= NOT \RAM_item|ram~17_q\;
\END_RET_item|ALT_INV_DOUT\(7) <= NOT \END_RET_item|DOUT\(7);
\END_RET_item|ALT_INV_DOUT\(6) <= NOT \END_RET_item|DOUT\(6);
\END_RET_item|ALT_INV_DOUT\(5) <= NOT \END_RET_item|DOUT\(5);
\MUX_JMP|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX_JMP|saida_MUX[4]~4_combout\;
\END_RET_item|ALT_INV_DOUT\(4) <= NOT \END_RET_item|DOUT\(4);
\ROM_item|ALT_INV_memROM~7_combout\ <= NOT \ROM_item|memROM~7_combout\;
\END_RET_item|ALT_INV_DOUT\(3) <= NOT \END_RET_item|DOUT\(3);
\ROM_item|ALT_INV_memROM~6_combout\ <= NOT \ROM_item|memROM~6_combout\;
\END_RET_item|ALT_INV_DOUT\(2) <= NOT \END_RET_item|DOUT\(2);
\ROM_item|ALT_INV_memROM~5_combout\ <= NOT \ROM_item|memROM~5_combout\;
\END_RET_item|ALT_INV_DOUT\(1) <= NOT \END_RET_item|DOUT\(1);
\PC_item|ALT_INV_DOUT[1]~0_combout\ <= NOT \PC_item|DOUT[1]~0_combout\;
\FLAG_zero_item|ALT_INV_DOUT~q\ <= NOT \FLAG_zero_item|DOUT~q\;
\ROM_item|ALT_INV_memROM~4_combout\ <= NOT \ROM_item|memROM~4_combout\;
\END_RET_item|ALT_INV_DOUT\(0) <= NOT \END_RET_item|DOUT\(0);
\DECODER_item|ALT_INV_Equal4~0_combout\ <= NOT \DECODER_item|Equal4~0_combout\;
\DECODER_item|ALT_INV_saida~8_combout\ <= NOT \DECODER_item|saida~8_combout\;
\DECODER_item|ALT_INV_saida~7_combout\ <= NOT \DECODER_item|saida~7_combout\;
\DECODER_item|ALT_INV_saida~6_combout\ <= NOT \DECODER_item|saida~6_combout\;

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_item|DOUT\(0),
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_item|DOUT\(1),
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_item|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_item|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_item|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_item|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_item|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_item|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\REGA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(0),
	devoe => ww_devoe,
	o => \REGA[0]~output_o\);

\REGA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(1),
	devoe => ww_devoe,
	o => \REGA[1]~output_o\);

\REGA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(2),
	devoe => ww_devoe,
	o => \REGA[2]~output_o\);

\REGA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(3),
	devoe => ww_devoe,
	o => \REGA[3]~output_o\);

\REGA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(4),
	devoe => ww_devoe,
	o => \REGA[4]~output_o\);

\REGA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(5),
	devoe => ww_devoe,
	o => \REGA[5]~output_o\);

\REGA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(6),
	devoe => ww_devoe,
	o => \REGA[6]~output_o\);

\REGA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(7),
	devoe => ww_devoe,
	o => \REGA[7]~output_o\);

\Control_view[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => \Control_view[0]~output_o\);

\Control_view[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \Control_view[1]~output_o\);

\Control_view[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida~2_combout\,
	devoe => ww_devoe,
	o => \Control_view[2]~output_o\);

\Control_view[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => \Control_view[3]~output_o\);

\Control_view[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => \Control_view[4]~output_o\);

\Control_view[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => \Control_view[5]~output_o\);

\Control_view[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|Equal6~0_combout\,
	devoe => ww_devoe,
	o => \Control_view[6]~output_o\);

\Control_view[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida~6_combout\,
	devoe => ww_devoe,
	o => \Control_view[7]~output_o\);

\Control_view[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida~7_combout\,
	devoe => ww_devoe,
	o => \Control_view[8]~output_o\);

\Control_view[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida~8_combout\,
	devoe => ww_devoe,
	o => \Control_view[9]~output_o\);

\Control_view[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|Equal4~0_combout\,
	devoe => ww_devoe,
	o => \Control_view[10]~output_o\);

\Control_view[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida~7_combout\,
	devoe => ww_devoe,
	o => \Control_view[11]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\incrementaPC_item|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~1_sumout\ = SUM(( \PC_item|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC_item|Add0~2\ = CARRY(( \PC_item|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC_item|Add0~1_sumout\,
	cout => \incrementaPC_item|Add0~2\);

\incrementaPC_item|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~5_sumout\ = SUM(( \PC_item|DOUT\(1) ) + ( GND ) + ( \incrementaPC_item|Add0~2\ ))
-- \incrementaPC_item|Add0~6\ = CARRY(( \PC_item|DOUT\(1) ) + ( GND ) + ( \incrementaPC_item|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT\(1),
	cin => \incrementaPC_item|Add0~2\,
	sumout => \incrementaPC_item|Add0~5_sumout\,
	cout => \incrementaPC_item|Add0~6\);

\incrementaPC_item|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~9_sumout\ = SUM(( \PC_item|DOUT\(2) ) + ( GND ) + ( \incrementaPC_item|Add0~6\ ))
-- \incrementaPC_item|Add0~10\ = CARRY(( \PC_item|DOUT\(2) ) + ( GND ) + ( \incrementaPC_item|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT\(2),
	cin => \incrementaPC_item|Add0~6\,
	sumout => \incrementaPC_item|Add0~9_sumout\,
	cout => \incrementaPC_item|Add0~10\);

\incrementaPC_item|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~13_sumout\ = SUM(( \PC_item|DOUT\(3) ) + ( GND ) + ( \incrementaPC_item|Add0~10\ ))
-- \incrementaPC_item|Add0~14\ = CARRY(( \PC_item|DOUT\(3) ) + ( GND ) + ( \incrementaPC_item|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT\(3),
	cin => \incrementaPC_item|Add0~10\,
	sumout => \incrementaPC_item|Add0~13_sumout\,
	cout => \incrementaPC_item|Add0~14\);

\END_RET_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~13_sumout\,
	ena => \DECODER_item|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET_item|DOUT\(3));

\ROM_item|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~7_combout\ = (!\PC_item|DOUT\(0) & (((!\PC_item|DOUT\(2) & !\PC_item|DOUT\(3))))) # (\PC_item|DOUT\(0) & (!\PC_item|DOUT\(1) & (\PC_item|DOUT\(2) & \PC_item|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000100101000000000010010100000000001001010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~7_combout\);

\MUX_JMP|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[3]~3_combout\ = ( \incrementaPC_item|Add0~13_sumout\ & ( (!\DECODER_item|saida~8_combout\ & ((!\PC_item|DOUT[1]~0_combout\) # ((\ROM_item|memROM~7_combout\)))) # (\DECODER_item|saida~8_combout\ & (((\END_RET_item|DOUT\(3))))) ) ) # ( 
-- !\incrementaPC_item|Add0~13_sumout\ & ( (!\DECODER_item|saida~8_combout\ & (\PC_item|DOUT[1]~0_combout\ & ((\ROM_item|memROM~7_combout\)))) # (\DECODER_item|saida~8_combout\ & (((\END_RET_item|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111100011011010111100000101001001111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida~8_combout\,
	datab => \PC_item|ALT_INV_DOUT[1]~0_combout\,
	datac => \END_RET_item|ALT_INV_DOUT\(3),
	datad => \ROM_item|ALT_INV_memROM~7_combout\,
	datae => \incrementaPC_item|ALT_INV_Add0~13_sumout\,
	combout => \MUX_JMP|saida_MUX[3]~3_combout\);

\PC_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(3));

\ROM_item|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~2_combout\ = (!\PC_item|DOUT\(3) & (!\PC_item|DOUT\(0) $ ((!\PC_item|DOUT\(1))))) # (\PC_item|DOUT\(3) & ((!\PC_item|DOUT\(2) & (!\PC_item|DOUT\(0))) # (\PC_item|DOUT\(2) & ((!\PC_item|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~2_combout\);

\ROM_item|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~3_combout\ = (!\PC_item|DOUT\(0) & (!\PC_item|DOUT\(1) & (!\PC_item|DOUT\(2) & !\PC_item|DOUT\(3)))) # (\PC_item|DOUT\(0) & (\PC_item|DOUT\(1) & ((\PC_item|DOUT\(3)) # (\PC_item|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~3_combout\);

\DECODER_item|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[4]~4_combout\ = (!\ROM_item|memROM~1_combout\ & ((!\ROM_item|memROM~0_combout\ & (!\ROM_item|memROM~2_combout\ & !\ROM_item|memROM~3_combout\)) # (\ROM_item|memROM~0_combout\ & (!\ROM_item|memROM~2_combout\ $ 
-- (!\ROM_item|memROM~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010001000000100001000100000010000100010000001000010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida[4]~4_combout\);

\DECODER_item|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|Equal6~1_combout\ = (!\ROM_item|memROM~1_combout\ & (\ROM_item|memROM~2_combout\ & !\ROM_item|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~1_combout\,
	datab => \ROM_item|ALT_INV_memROM~2_combout\,
	datac => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|Equal6~1_combout\);

\DECODER_item|saida[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[3]~10_combout\ = (\ROM_item|memROM~1_combout\ & (!\ROM_item|memROM~2_combout\ & !\ROM_item|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~1_combout\,
	datab => \ROM_item|ALT_INV_memROM~2_combout\,
	datac => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida[3]~10_combout\);

\DECODER_item|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|Equal6~0_combout\ = (\ROM_item|memROM~0_combout\ & (!\ROM_item|memROM~1_combout\ & (\ROM_item|memROM~2_combout\ & !\ROM_item|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|Equal6~0_combout\);

\MUX_item|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[6]~6_combout\ = (!\DECODER_item|Equal6~0_combout\ & \RAM_item|ram~158_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal6~0_combout\,
	datab => \RAM_item|ALT_INV_ram~158_combout\,
	combout => \MUX_item|saida_MUX[6]~6_combout\);

\DECODER_item|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[5]~5_combout\ = (!\ROM_item|memROM~3_combout\ & (!\ROM_item|memROM~2_combout\ $ (((\ROM_item|memROM~0_combout\ & !\ROM_item|memROM~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010000000000101101000000000010110100000000001011010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida[5]~5_combout\);

\REGA_item|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|Add0~25_sumout\,
	asdata => \MUX_item|saida_MUX[6]~6_combout\,
	sload => \DECODER_item|saida[4]~4_combout\,
	ena => \DECODER_item|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(6));

\RAM_item|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~161_combout\ = (!\PC_item|DOUT\(3) & (\PC_item|DOUT\(2) & (\PC_item|DOUT\(1) & !\PC_item|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(3),
	datab => \PC_item|ALT_INV_DOUT\(2),
	datac => \PC_item|ALT_INV_DOUT\(1),
	datad => \PC_item|ALT_INV_DOUT\(0),
	combout => \RAM_item|ram~161_combout\);

\RAM_item|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(6),
	ena => \RAM_item|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~23_q\);

\ROM_item|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~4_combout\ = (!\PC_item|DOUT\(1) & ((!\PC_item|DOUT\(3) & (\PC_item|DOUT\(0))) # (\PC_item|DOUT\(3) & ((\PC_item|DOUT\(2)))))) # (\PC_item|DOUT\(1) & (!\PC_item|DOUT\(0) & (!\PC_item|DOUT\(2) & !\PC_item|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000001100011001000000110001100100000011000110010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~4_combout\);

\ROM_item|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~5_combout\ = (!\PC_item|DOUT\(0) & (!\PC_item|DOUT\(1) & ((!\PC_item|DOUT\(2)) # (\PC_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100000001000100010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~5_combout\);

\RAM_item|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~157_combout\ = ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM_item|ALT_INV_ram~23_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~157_combout\);

\ROM_item|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~6_combout\ = (!\PC_item|DOUT\(0) & (!\PC_item|DOUT\(2) & (!\PC_item|DOUT\(1) $ (\PC_item|DOUT\(3))))) # (\PC_item|DOUT\(0) & (!\PC_item|DOUT\(1) & ((!\PC_item|DOUT\(3)) # (\PC_item|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000100100110001000010010011000100001001001100010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~6_combout\);

\RAM_item|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~158_combout\ = ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~157_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_item|ALT_INV_ram~157_combout\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~158_combout\);

\DECODER_item|saida[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[1]~9_combout\ = (\ROM_item|memROM~3_combout\) # (\ROM_item|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~2_combout\,
	datab => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida[1]~9_combout\);

\DECODER_item|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[3]~3_combout\ = (\ROM_item|memROM~0_combout\ & (\ROM_item|memROM~1_combout\ & (!\ROM_item|memROM~2_combout\ & !\ROM_item|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida[3]~3_combout\);

\ULA_item|Add0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~35_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA_item|Add0~35_cout\);

\ULA_item|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~1_sumout\ = SUM(( !\ULA_item|Add0~32_combout\ ) + ( \REGA_item|DOUT\(0) ) + ( \ULA_item|Add0~35_cout\ ))
-- \ULA_item|Add0~2\ = CARRY(( !\ULA_item|Add0~32_combout\ ) + ( \REGA_item|DOUT\(0) ) + ( \ULA_item|Add0~35_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA_item|ALT_INV_Add0~32_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(0),
	cin => \ULA_item|Add0~35_cout\,
	sumout => \ULA_item|Add0~1_sumout\,
	cout => \ULA_item|Add0~2\);

\MUX_item|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[0]~0_combout\ = (!\DECODER_item|Equal6~0_combout\ & ((\RAM_item|ram~146_combout\))) # (\DECODER_item|Equal6~0_combout\ & (\ROM_item|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal6~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~4_combout\,
	datac => \RAM_item|ALT_INV_ram~146_combout\,
	combout => \MUX_item|saida_MUX[0]~0_combout\);

\REGA_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|Add0~1_sumout\,
	asdata => \MUX_item|saida_MUX[0]~0_combout\,
	sload => \DECODER_item|saida[4]~4_combout\,
	ena => \DECODER_item|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(0));

\RAM_item|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(0),
	ena => \RAM_item|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~17_q\);

\RAM_item|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~145_combout\ = ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM_item|ALT_INV_ram~17_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~145_combout\);

\RAM_item|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~146_combout\ = ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_item|ALT_INV_ram~145_combout\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~146_combout\);

\ULA_item|Add0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~32_combout\ = !\DECODER_item|saida[3]~3_combout\ $ (((!\DECODER_item|Equal6~0_combout\ & ((!\RAM_item|ram~146_combout\))) # (\DECODER_item|Equal6~0_combout\ & (!\ROM_item|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011010011100001101101001110000110110100111000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal6~0_combout\,
	datab => \DECODER_item|ALT_INV_saida[3]~3_combout\,
	datac => \ROM_item|ALT_INV_memROM~4_combout\,
	datad => \RAM_item|ALT_INV_ram~146_combout\,
	combout => \ULA_item|Add0~32_combout\);

\ULA_item|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~5_sumout\ = SUM(( !\MUX_item|saida_MUX[1]~1_combout\ $ (((!\DECODER_item|saida[1]~9_combout\ & (\ROM_item|memROM~1_combout\ & \ROM_item|memROM~0_combout\)))) ) + ( \REGA_item|DOUT\(1) ) + ( \ULA_item|Add0~2\ ))
-- \ULA_item|Add0~6\ = CARRY(( !\MUX_item|saida_MUX[1]~1_combout\ $ (((!\DECODER_item|saida[1]~9_combout\ & (\ROM_item|memROM~1_combout\ & \ROM_item|memROM~0_combout\)))) ) + ( \REGA_item|DOUT\(1) ) + ( \ULA_item|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[1]~9_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~0_combout\,
	datad => \MUX_item|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(1),
	cin => \ULA_item|Add0~2\,
	sumout => \ULA_item|Add0~5_sumout\,
	cout => \ULA_item|Add0~6\);

\REGA_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|Add0~5_sumout\,
	asdata => \MUX_item|saida_MUX[1]~1_combout\,
	sload => \DECODER_item|saida[4]~4_combout\,
	ena => \DECODER_item|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(1));

\RAM_item|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(1),
	ena => \RAM_item|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~18_q\);

\RAM_item|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~147_combout\ = ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_item|ALT_INV_ram~18_q\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~147_combout\);

\RAM_item|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~148_combout\ = ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~147_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM_item|ALT_INV_ram~147_combout\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~148_combout\);

\MUX_item|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[1]~1_combout\ = (!\DECODER_item|Equal6~0_combout\ & ((\RAM_item|ram~148_combout\))) # (\DECODER_item|Equal6~0_combout\ & (\ROM_item|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal6~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~5_combout\,
	datac => \RAM_item|ALT_INV_ram~148_combout\,
	combout => \MUX_item|saida_MUX[1]~1_combout\);

\ULA_item|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~9_sumout\ = SUM(( !\MUX_item|saida_MUX[2]~2_combout\ $ (((!\DECODER_item|saida[1]~9_combout\ & (\ROM_item|memROM~1_combout\ & \ROM_item|memROM~0_combout\)))) ) + ( \REGA_item|DOUT\(2) ) + ( \ULA_item|Add0~6\ ))
-- \ULA_item|Add0~10\ = CARRY(( !\MUX_item|saida_MUX[2]~2_combout\ $ (((!\DECODER_item|saida[1]~9_combout\ & (\ROM_item|memROM~1_combout\ & \ROM_item|memROM~0_combout\)))) ) + ( \REGA_item|DOUT\(2) ) + ( \ULA_item|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[1]~9_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~0_combout\,
	datad => \MUX_item|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(2),
	cin => \ULA_item|Add0~6\,
	sumout => \ULA_item|Add0~9_sumout\,
	cout => \ULA_item|Add0~10\);

\REGA_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|Add0~9_sumout\,
	asdata => \MUX_item|saida_MUX[2]~2_combout\,
	sload => \DECODER_item|saida[4]~4_combout\,
	ena => \DECODER_item|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(2));

\RAM_item|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(2),
	ena => \RAM_item|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~19_q\);

\RAM_item|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~149_combout\ = ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM_item|ALT_INV_ram~19_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~149_combout\);

\RAM_item|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~150_combout\ = ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~149_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_item|ALT_INV_ram~149_combout\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~150_combout\);

\MUX_item|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[2]~2_combout\ = (!\DECODER_item|Equal6~0_combout\ & ((\RAM_item|ram~150_combout\))) # (\DECODER_item|Equal6~0_combout\ & (\ROM_item|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal6~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~6_combout\,
	datac => \RAM_item|ALT_INV_ram~150_combout\,
	combout => \MUX_item|saida_MUX[2]~2_combout\);

\ULA_item|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~13_sumout\ = SUM(( !\MUX_item|saida_MUX[3]~3_combout\ $ (((\DECODER_item|saida[3]~10_combout\ & \ROM_item|memROM~0_combout\))) ) + ( \REGA_item|DOUT\(3) ) + ( \ULA_item|Add0~10\ ))
-- \ULA_item|Add0~14\ = CARRY(( !\MUX_item|saida_MUX[3]~3_combout\ $ (((\DECODER_item|saida[3]~10_combout\ & \ROM_item|memROM~0_combout\))) ) + ( \REGA_item|DOUT\(3) ) + ( \ULA_item|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[3]~10_combout\,
	datab => \ROM_item|ALT_INV_memROM~0_combout\,
	datad => \MUX_item|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(3),
	cin => \ULA_item|Add0~10\,
	sumout => \ULA_item|Add0~13_sumout\,
	cout => \ULA_item|Add0~14\);

\REGA_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|Add0~13_sumout\,
	asdata => \MUX_item|saida_MUX[3]~3_combout\,
	sload => \DECODER_item|saida[4]~4_combout\,
	ena => \DECODER_item|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(3));

\RAM_item|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(3),
	ena => \RAM_item|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~20_q\);

\RAM_item|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~151_combout\ = ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_item|ALT_INV_ram~20_q\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~151_combout\);

\RAM_item|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~152_combout\ = ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~151_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM_item|ALT_INV_ram~151_combout\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~152_combout\);

\MUX_item|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[3]~3_combout\ = (!\DECODER_item|Equal6~0_combout\ & ((\RAM_item|ram~152_combout\))) # (\DECODER_item|Equal6~0_combout\ & (\ROM_item|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal6~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~7_combout\,
	datac => \RAM_item|ALT_INV_ram~152_combout\,
	combout => \MUX_item|saida_MUX[3]~3_combout\);

\ULA_item|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~17_sumout\ = SUM(( (!\ROM_item|memROM~0_combout\ & (((!\RAM_item|ram~154_combout\)))) # (\ROM_item|memROM~0_combout\ & (!\DECODER_item|saida[3]~10_combout\ $ (((\RAM_item|ram~154_combout\ & !\DECODER_item|Equal6~1_combout\))))) ) + ( 
-- \REGA_item|DOUT\(4) ) + ( \ULA_item|Add0~14\ ))
-- \ULA_item|Add0~18\ = CARRY(( (!\ROM_item|memROM~0_combout\ & (((!\RAM_item|ram~154_combout\)))) # (\ROM_item|memROM~0_combout\ & (!\DECODER_item|saida[3]~10_combout\ $ (((\RAM_item|ram~154_combout\ & !\DECODER_item|Equal6~1_combout\))))) ) + ( 
-- \REGA_item|DOUT\(4) ) + ( \ULA_item|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000111100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[3]~10_combout\,
	datab => \ROM_item|ALT_INV_memROM~0_combout\,
	datac => \RAM_item|ALT_INV_ram~154_combout\,
	datad => \DECODER_item|ALT_INV_Equal6~1_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(4),
	cin => \ULA_item|Add0~14\,
	sumout => \ULA_item|Add0~17_sumout\,
	cout => \ULA_item|Add0~18\);

\MUX_item|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[4]~4_combout\ = (!\DECODER_item|Equal6~0_combout\ & \RAM_item|ram~154_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal6~0_combout\,
	datab => \RAM_item|ALT_INV_ram~154_combout\,
	combout => \MUX_item|saida_MUX[4]~4_combout\);

\REGA_item|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|Add0~17_sumout\,
	asdata => \MUX_item|saida_MUX[4]~4_combout\,
	sload => \DECODER_item|saida[4]~4_combout\,
	ena => \DECODER_item|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(4));

\RAM_item|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(4),
	ena => \RAM_item|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~21_q\);

\RAM_item|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~153_combout\ = ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM_item|ALT_INV_ram~21_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~153_combout\);

\RAM_item|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~154_combout\ = ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~153_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_item|ALT_INV_ram~153_combout\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~154_combout\);

\ULA_item|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~21_sumout\ = SUM(( (!\ROM_item|memROM~0_combout\ & (((!\RAM_item|ram~156_combout\)))) # (\ROM_item|memROM~0_combout\ & (!\DECODER_item|saida[3]~10_combout\ $ (((!\DECODER_item|Equal6~1_combout\ & \RAM_item|ram~156_combout\))))) ) + ( 
-- \REGA_item|DOUT\(5) ) + ( \ULA_item|Add0~18\ ))
-- \ULA_item|Add0~22\ = CARRY(( (!\ROM_item|memROM~0_combout\ & (((!\RAM_item|ram~156_combout\)))) # (\ROM_item|memROM~0_combout\ & (!\DECODER_item|saida[3]~10_combout\ $ (((!\DECODER_item|Equal6~1_combout\ & \RAM_item|ram~156_combout\))))) ) + ( 
-- \REGA_item|DOUT\(5) ) + ( \ULA_item|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal6~1_combout\,
	datab => \ROM_item|ALT_INV_memROM~0_combout\,
	datac => \DECODER_item|ALT_INV_saida[3]~10_combout\,
	datad => \RAM_item|ALT_INV_ram~156_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(5),
	cin => \ULA_item|Add0~18\,
	sumout => \ULA_item|Add0~21_sumout\,
	cout => \ULA_item|Add0~22\);

\MUX_item|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[5]~5_combout\ = (!\DECODER_item|Equal6~0_combout\ & \RAM_item|ram~156_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal6~0_combout\,
	datab => \RAM_item|ALT_INV_ram~156_combout\,
	combout => \MUX_item|saida_MUX[5]~5_combout\);

\REGA_item|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|Add0~21_sumout\,
	asdata => \MUX_item|saida_MUX[5]~5_combout\,
	sload => \DECODER_item|saida[4]~4_combout\,
	ena => \DECODER_item|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(5));

\RAM_item|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(5),
	ena => \RAM_item|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~22_q\);

\RAM_item|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~155_combout\ = ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_item|ALT_INV_ram~22_q\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~155_combout\);

\RAM_item|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~156_combout\ = ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~155_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM_item|ALT_INV_ram~155_combout\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~156_combout\);

\ULA_item|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~25_sumout\ = SUM(( (!\ROM_item|memROM~0_combout\ & (((!\RAM_item|ram~158_combout\)))) # (\ROM_item|memROM~0_combout\ & (!\DECODER_item|saida[3]~10_combout\ $ (((!\DECODER_item|Equal6~1_combout\ & \RAM_item|ram~158_combout\))))) ) + ( 
-- \REGA_item|DOUT\(6) ) + ( \ULA_item|Add0~22\ ))
-- \ULA_item|Add0~26\ = CARRY(( (!\ROM_item|memROM~0_combout\ & (((!\RAM_item|ram~158_combout\)))) # (\ROM_item|memROM~0_combout\ & (!\DECODER_item|saida[3]~10_combout\ $ (((!\DECODER_item|Equal6~1_combout\ & \RAM_item|ram~158_combout\))))) ) + ( 
-- \REGA_item|DOUT\(6) ) + ( \ULA_item|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal6~1_combout\,
	datab => \ROM_item|ALT_INV_memROM~0_combout\,
	datac => \DECODER_item|ALT_INV_saida[3]~10_combout\,
	datad => \RAM_item|ALT_INV_ram~158_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(6),
	cin => \ULA_item|Add0~22\,
	sumout => \ULA_item|Add0~25_sumout\,
	cout => \ULA_item|Add0~26\);

\MUX_item|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[7]~7_combout\ = (!\DECODER_item|Equal6~0_combout\ & \RAM_item|ram~160_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal6~0_combout\,
	datab => \RAM_item|ALT_INV_ram~160_combout\,
	combout => \MUX_item|saida_MUX[7]~7_combout\);

\REGA_item|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|Add0~29_sumout\,
	asdata => \MUX_item|saida_MUX[7]~7_combout\,
	sload => \DECODER_item|saida[4]~4_combout\,
	ena => \DECODER_item|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(7));

\RAM_item|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(7),
	ena => \RAM_item|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~24_q\);

\RAM_item|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~159_combout\ = ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_item|ALT_INV_ram~24_q\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~159_combout\);

\RAM_item|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~160_combout\ = ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM_item|ALT_INV_ram~159_combout\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~160_combout\);

\ULA_item|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~29_sumout\ = SUM(( (!\ROM_item|memROM~0_combout\ & (((!\RAM_item|ram~160_combout\)))) # (\ROM_item|memROM~0_combout\ & (!\DECODER_item|saida[3]~10_combout\ $ (((!\DECODER_item|Equal6~1_combout\ & \RAM_item|ram~160_combout\))))) ) + ( 
-- \REGA_item|DOUT\(7) ) + ( \ULA_item|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal6~1_combout\,
	datab => \ROM_item|ALT_INV_memROM~0_combout\,
	datac => \DECODER_item|ALT_INV_saida[3]~10_combout\,
	datad => \RAM_item|ALT_INV_ram~160_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(7),
	cin => \ULA_item|Add0~26\,
	sumout => \ULA_item|Add0~29_sumout\);

\DECODER_item|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida~2_combout\ = (\ROM_item|memROM~0_combout\ & (!\ROM_item|memROM~1_combout\ & (!\ROM_item|memROM~2_combout\ & \ROM_item|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida~2_combout\);

\FLAG_zero_item|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG_zero_item|DOUT~0_combout\ = (!\DECODER_item|saida~2_combout\ & \FLAG_zero_item|DOUT~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida~2_combout\,
	datab => \FLAG_zero_item|ALT_INV_DOUT~q\,
	combout => \FLAG_zero_item|DOUT~0_combout\);

\FLAG_zero_item|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG_zero_item|DOUT~1_combout\ = ( \RAM_item|ram~158_combout\ & ( \RAM_item|ram~160_combout\ & ( (\DECODER_item|saida[4]~4_combout\ & ((!\DECODER_item|Equal6~0_combout\) # (\ROM_item|memROM~5_combout\))) ) ) ) # ( !\RAM_item|ram~158_combout\ & ( 
-- \RAM_item|ram~160_combout\ & ( (\DECODER_item|saida[4]~4_combout\ & ((!\DECODER_item|Equal6~0_combout\) # (\ROM_item|memROM~5_combout\))) ) ) ) # ( \RAM_item|ram~158_combout\ & ( !\RAM_item|ram~160_combout\ & ( (\DECODER_item|saida[4]~4_combout\ & 
-- ((!\DECODER_item|Equal6~0_combout\) # (\ROM_item|memROM~5_combout\))) ) ) ) # ( !\RAM_item|ram~158_combout\ & ( !\RAM_item|ram~160_combout\ & ( (\DECODER_item|saida[4]~4_combout\ & ((!\DECODER_item|Equal6~0_combout\ & ((\RAM_item|ram~148_combout\))) # 
-- (\DECODER_item|Equal6~0_combout\ & (\ROM_item|memROM~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011001000110010001100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal6~0_combout\,
	datab => \DECODER_item|ALT_INV_saida[4]~4_combout\,
	datac => \ROM_item|ALT_INV_memROM~5_combout\,
	datad => \RAM_item|ALT_INV_ram~148_combout\,
	datae => \RAM_item|ALT_INV_ram~158_combout\,
	dataf => \RAM_item|ALT_INV_ram~160_combout\,
	combout => \FLAG_zero_item|DOUT~1_combout\);

\FLAG_zero_item|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG_zero_item|DOUT~2_combout\ = ( \RAM_item|ram~154_combout\ & ( \RAM_item|ram~156_combout\ & ( (\DECODER_item|saida[4]~4_combout\ & ((!\DECODER_item|Equal6~0_combout\) # (\ROM_item|memROM~4_combout\))) ) ) ) # ( !\RAM_item|ram~154_combout\ & ( 
-- \RAM_item|ram~156_combout\ & ( (\DECODER_item|saida[4]~4_combout\ & ((!\DECODER_item|Equal6~0_combout\) # (\ROM_item|memROM~4_combout\))) ) ) ) # ( \RAM_item|ram~154_combout\ & ( !\RAM_item|ram~156_combout\ & ( (\DECODER_item|saida[4]~4_combout\ & 
-- ((!\DECODER_item|Equal6~0_combout\) # (\ROM_item|memROM~4_combout\))) ) ) ) # ( !\RAM_item|ram~154_combout\ & ( !\RAM_item|ram~156_combout\ & ( (\DECODER_item|saida[4]~4_combout\ & ((!\DECODER_item|Equal6~0_combout\ & ((\RAM_item|ram~146_combout\))) # 
-- (\DECODER_item|Equal6~0_combout\ & (\ROM_item|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011001000110010001100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal6~0_combout\,
	datab => \DECODER_item|ALT_INV_saida[4]~4_combout\,
	datac => \ROM_item|ALT_INV_memROM~4_combout\,
	datad => \RAM_item|ALT_INV_ram~146_combout\,
	datae => \RAM_item|ALT_INV_ram~154_combout\,
	dataf => \RAM_item|ALT_INV_ram~156_combout\,
	combout => \FLAG_zero_item|DOUT~2_combout\);

\FLAG_zero_item|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG_zero_item|DOUT~3_combout\ = ( !\FLAG_zero_item|DOUT~1_combout\ & ( !\FLAG_zero_item|DOUT~2_combout\ & ( (\DECODER_item|saida~2_combout\ & ((!\DECODER_item|saida[4]~4_combout\) # ((!\MUX_item|saida_MUX[2]~2_combout\ & 
-- !\MUX_item|saida_MUX[3]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida~2_combout\,
	datab => \DECODER_item|ALT_INV_saida[4]~4_combout\,
	datac => \MUX_item|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \MUX_item|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \FLAG_zero_item|ALT_INV_DOUT~1_combout\,
	dataf => \FLAG_zero_item|ALT_INV_DOUT~2_combout\,
	combout => \FLAG_zero_item|DOUT~3_combout\);

\FLAG_zero_item|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG_zero_item|DOUT~4_combout\ = ( \ULA_item|Add0~13_sumout\ & ( \FLAG_zero_item|DOUT~3_combout\ & ( \DECODER_item|saida[4]~4_combout\ ) ) ) # ( !\ULA_item|Add0~13_sumout\ & ( \FLAG_zero_item|DOUT~3_combout\ & ( ((!\ULA_item|Add0~1_sumout\ & 
-- (!\ULA_item|Add0~5_sumout\ & !\ULA_item|Add0~9_sumout\))) # (\DECODER_item|saida[4]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[4]~4_combout\,
	datab => \ULA_item|ALT_INV_Add0~1_sumout\,
	datac => \ULA_item|ALT_INV_Add0~5_sumout\,
	datad => \ULA_item|ALT_INV_Add0~9_sumout\,
	datae => \ULA_item|ALT_INV_Add0~13_sumout\,
	dataf => \FLAG_zero_item|ALT_INV_DOUT~3_combout\,
	combout => \FLAG_zero_item|DOUT~4_combout\);

\FLAG_zero_item|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG_zero_item|DOUT~5_combout\ = (!\DECODER_item|saida[4]~4_combout\ & ((\ULA_item|Add0~21_sumout\) # (\ULA_item|Add0~17_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[4]~4_combout\,
	datab => \ULA_item|ALT_INV_Add0~17_sumout\,
	datac => \ULA_item|ALT_INV_Add0~21_sumout\,
	combout => \FLAG_zero_item|DOUT~5_combout\);

\FLAG_zero_item|DOUT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG_zero_item|DOUT~6_combout\ = ( \FLAG_zero_item|DOUT~4_combout\ & ( \FLAG_zero_item|DOUT~5_combout\ & ( \FLAG_zero_item|DOUT~0_combout\ ) ) ) # ( !\FLAG_zero_item|DOUT~4_combout\ & ( \FLAG_zero_item|DOUT~5_combout\ & ( \FLAG_zero_item|DOUT~0_combout\ 
-- ) ) ) # ( \FLAG_zero_item|DOUT~4_combout\ & ( !\FLAG_zero_item|DOUT~5_combout\ & ( (((!\ULA_item|Add0~25_sumout\ & !\ULA_item|Add0~29_sumout\)) # (\FLAG_zero_item|DOUT~0_combout\)) # (\DECODER_item|saida[4]~4_combout\) ) ) ) # ( 
-- !\FLAG_zero_item|DOUT~4_combout\ & ( !\FLAG_zero_item|DOUT~5_combout\ & ( \FLAG_zero_item|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110101011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[4]~4_combout\,
	datab => \ULA_item|ALT_INV_Add0~25_sumout\,
	datac => \ULA_item|ALT_INV_Add0~29_sumout\,
	datad => \FLAG_zero_item|ALT_INV_DOUT~0_combout\,
	datae => \FLAG_zero_item|ALT_INV_DOUT~4_combout\,
	dataf => \FLAG_zero_item|ALT_INV_DOUT~5_combout\,
	combout => \FLAG_zero_item|DOUT~6_combout\);

\FLAG_zero_item|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FLAG_zero_item|DOUT~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG_zero_item|DOUT~q\);

\PC_item|DOUT[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_item|DOUT[1]~0_combout\ = ( \FLAG_zero_item|DOUT~q\ & ( (!\ROM_item|memROM~1_combout\ & (!\ROM_item|memROM~0_combout\ & (!\ROM_item|memROM~2_combout\ & \ROM_item|memROM~3_combout\))) # (\ROM_item|memROM~1_combout\ & (((\ROM_item|memROM~2_combout\ & 
-- !\ROM_item|memROM~3_combout\)))) ) ) # ( !\FLAG_zero_item|DOUT~q\ & ( (!\ROM_item|memROM~0_combout\ & (!\ROM_item|memROM~1_combout\ & (!\ROM_item|memROM~2_combout\ & \ROM_item|memROM~3_combout\))) # (\ROM_item|memROM~0_combout\ & 
-- (\ROM_item|memROM~1_combout\ & (\ROM_item|memROM~2_combout\ & !\ROM_item|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110000000000000111000000000000001100000000000001110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	datae => \FLAG_zero_item|ALT_INV_DOUT~q\,
	combout => \PC_item|DOUT[1]~0_combout\);

\END_RET_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~9_sumout\,
	ena => \DECODER_item|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET_item|DOUT\(2));

\MUX_JMP|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[2]~2_combout\ = ( \incrementaPC_item|Add0~9_sumout\ & ( (!\DECODER_item|saida~8_combout\ & ((!\PC_item|DOUT[1]~0_combout\) # ((\ROM_item|memROM~6_combout\)))) # (\DECODER_item|saida~8_combout\ & (((\END_RET_item|DOUT\(2))))) ) ) # ( 
-- !\incrementaPC_item|Add0~9_sumout\ & ( (!\DECODER_item|saida~8_combout\ & (\PC_item|DOUT[1]~0_combout\ & ((\ROM_item|memROM~6_combout\)))) # (\DECODER_item|saida~8_combout\ & (((\END_RET_item|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111100011011010111100000101001001111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida~8_combout\,
	datab => \PC_item|ALT_INV_DOUT[1]~0_combout\,
	datac => \END_RET_item|ALT_INV_DOUT\(2),
	datad => \ROM_item|ALT_INV_memROM~6_combout\,
	datae => \incrementaPC_item|ALT_INV_Add0~9_sumout\,
	combout => \MUX_JMP|saida_MUX[2]~2_combout\);

\PC_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(2));

\ROM_item|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~1_combout\ = (!\PC_item|DOUT\(3) & (!\PC_item|DOUT\(2) & (!\PC_item|DOUT\(0) $ (!\PC_item|DOUT\(1))))) # (\PC_item|DOUT\(3) & ((!\PC_item|DOUT\(0) & (!\PC_item|DOUT\(1))) # (\PC_item|DOUT\(0) & ((\PC_item|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~1_combout\);

\DECODER_item|saida~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida~8_combout\ = (\ROM_item|memROM~0_combout\ & (\ROM_item|memROM~1_combout\ & (!\ROM_item|memROM~2_combout\ & \ROM_item|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida~8_combout\);

\END_RET_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~5_sumout\,
	ena => \DECODER_item|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET_item|DOUT\(1));

\MUX_JMP|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[1]~1_combout\ = ( \incrementaPC_item|Add0~5_sumout\ & ( (!\DECODER_item|saida~8_combout\ & ((!\PC_item|DOUT[1]~0_combout\) # ((\ROM_item|memROM~5_combout\)))) # (\DECODER_item|saida~8_combout\ & (((\END_RET_item|DOUT\(1))))) ) ) # ( 
-- !\incrementaPC_item|Add0~5_sumout\ & ( (!\DECODER_item|saida~8_combout\ & (\PC_item|DOUT[1]~0_combout\ & ((\ROM_item|memROM~5_combout\)))) # (\DECODER_item|saida~8_combout\ & (((\END_RET_item|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111100011011010111100000101001001111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida~8_combout\,
	datab => \PC_item|ALT_INV_DOUT[1]~0_combout\,
	datac => \END_RET_item|ALT_INV_DOUT\(1),
	datad => \ROM_item|ALT_INV_memROM~5_combout\,
	datae => \incrementaPC_item|ALT_INV_Add0~5_sumout\,
	combout => \MUX_JMP|saida_MUX[1]~1_combout\);

\PC_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(1));

\ROM_item|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~0_combout\ = (!\PC_item|DOUT\(3) $ (((!\PC_item|DOUT\(2)) # (\PC_item|DOUT\(1))))) # (\PC_item|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110111110111010111011111011101011101111101110101110111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~0_combout\);

\DECODER_item|saida~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida~7_combout\ = (!\ROM_item|memROM~0_combout\ & (!\ROM_item|memROM~1_combout\ & (!\ROM_item|memROM~2_combout\ & \ROM_item|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida~7_combout\);

\END_RET_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~1_sumout\,
	ena => \DECODER_item|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET_item|DOUT\(0));

\MUX_JMP|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[0]~0_combout\ = ( \incrementaPC_item|Add0~1_sumout\ & ( (!\DECODER_item|saida~8_combout\ & (((!\PC_item|DOUT[1]~0_combout\) # (\ROM_item|memROM~4_combout\)))) # (\DECODER_item|saida~8_combout\ & (\END_RET_item|DOUT\(0))) ) ) # ( 
-- !\incrementaPC_item|Add0~1_sumout\ & ( (!\DECODER_item|saida~8_combout\ & (((\ROM_item|memROM~4_combout\ & \PC_item|DOUT[1]~0_combout\)))) # (\DECODER_item|saida~8_combout\ & (\END_RET_item|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110111010001110100010001000111011101110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \END_RET_item|ALT_INV_DOUT\(0),
	datab => \DECODER_item|ALT_INV_saida~8_combout\,
	datac => \ROM_item|ALT_INV_memROM~4_combout\,
	datad => \PC_item|ALT_INV_DOUT[1]~0_combout\,
	datae => \incrementaPC_item|ALT_INV_Add0~1_sumout\,
	combout => \MUX_JMP|saida_MUX[0]~0_combout\);

\PC_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(0));

\incrementaPC_item|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~17_sumout\ = SUM(( \PC_item|DOUT\(4) ) + ( GND ) + ( \incrementaPC_item|Add0~14\ ))
-- \incrementaPC_item|Add0~18\ = CARRY(( \PC_item|DOUT\(4) ) + ( GND ) + ( \incrementaPC_item|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT\(4),
	cin => \incrementaPC_item|Add0~14\,
	sumout => \incrementaPC_item|Add0~17_sumout\,
	cout => \incrementaPC_item|Add0~18\);

\END_RET_item|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~17_sumout\,
	ena => \DECODER_item|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET_item|DOUT\(4));

\DECODER_item|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida~6_combout\ = (!\ROM_item|memROM~0_combout\ & (\ROM_item|memROM~1_combout\ & (\ROM_item|memROM~2_combout\ & !\ROM_item|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida~6_combout\);

\DECODER_item|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|Equal4~0_combout\ = (\ROM_item|memROM~0_combout\ & (\ROM_item|memROM~1_combout\ & (\ROM_item|memROM~2_combout\ & !\ROM_item|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|Equal4~0_combout\);

\MUX_JMP|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[4]~4_combout\ = (!\DECODER_item|Equal4~0_combout\ & (!\DECODER_item|saida~7_combout\ & ((!\DECODER_item|saida~6_combout\) # (!\FLAG_zero_item|DOUT~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida~6_combout\,
	datab => \DECODER_item|ALT_INV_Equal4~0_combout\,
	datac => \FLAG_zero_item|ALT_INV_DOUT~q\,
	datad => \DECODER_item|ALT_INV_saida~7_combout\,
	combout => \MUX_JMP|saida_MUX[4]~4_combout\);

\MUX_JMP|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[4]~5_combout\ = (\MUX_JMP|saida_MUX[4]~4_combout\ & ((!\DECODER_item|saida~8_combout\ & ((\incrementaPC_item|Add0~17_sumout\))) # (\DECODER_item|saida~8_combout\ & (\END_RET_item|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011000000000001101100000000000110110000000000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida~8_combout\,
	datab => \END_RET_item|ALT_INV_DOUT\(4),
	datac => \incrementaPC_item|ALT_INV_Add0~17_sumout\,
	datad => \MUX_JMP|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \MUX_JMP|saida_MUX[4]~5_combout\);

\PC_item|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(4));

\incrementaPC_item|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~21_sumout\ = SUM(( \PC_item|DOUT\(5) ) + ( GND ) + ( \incrementaPC_item|Add0~18\ ))
-- \incrementaPC_item|Add0~22\ = CARRY(( \PC_item|DOUT\(5) ) + ( GND ) + ( \incrementaPC_item|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT\(5),
	cin => \incrementaPC_item|Add0~18\,
	sumout => \incrementaPC_item|Add0~21_sumout\,
	cout => \incrementaPC_item|Add0~22\);

\END_RET_item|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~21_sumout\,
	ena => \DECODER_item|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET_item|DOUT\(5));

\MUX_JMP|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[5]~6_combout\ = (\MUX_JMP|saida_MUX[4]~4_combout\ & ((!\DECODER_item|saida~8_combout\ & ((\incrementaPC_item|Add0~21_sumout\))) # (\DECODER_item|saida~8_combout\ & (\END_RET_item|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001100000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida~8_combout\,
	datab => \MUX_JMP|ALT_INV_saida_MUX[4]~4_combout\,
	datac => \END_RET_item|ALT_INV_DOUT\(5),
	datad => \incrementaPC_item|ALT_INV_Add0~21_sumout\,
	combout => \MUX_JMP|saida_MUX[5]~6_combout\);

\PC_item|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(5));

\incrementaPC_item|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~25_sumout\ = SUM(( \PC_item|DOUT\(6) ) + ( GND ) + ( \incrementaPC_item|Add0~22\ ))
-- \incrementaPC_item|Add0~26\ = CARRY(( \PC_item|DOUT\(6) ) + ( GND ) + ( \incrementaPC_item|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT\(6),
	cin => \incrementaPC_item|Add0~22\,
	sumout => \incrementaPC_item|Add0~25_sumout\,
	cout => \incrementaPC_item|Add0~26\);

\END_RET_item|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~25_sumout\,
	ena => \DECODER_item|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET_item|DOUT\(6));

\MUX_JMP|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[6]~7_combout\ = (\MUX_JMP|saida_MUX[4]~4_combout\ & ((!\DECODER_item|saida~8_combout\ & ((\incrementaPC_item|Add0~25_sumout\))) # (\DECODER_item|saida~8_combout\ & (\END_RET_item|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001100000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida~8_combout\,
	datab => \MUX_JMP|ALT_INV_saida_MUX[4]~4_combout\,
	datac => \END_RET_item|ALT_INV_DOUT\(6),
	datad => \incrementaPC_item|ALT_INV_Add0~25_sumout\,
	combout => \MUX_JMP|saida_MUX[6]~7_combout\);

\PC_item|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(6));

\incrementaPC_item|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~29_sumout\ = SUM(( \PC_item|DOUT\(7) ) + ( GND ) + ( \incrementaPC_item|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT\(7),
	cin => \incrementaPC_item|Add0~26\,
	sumout => \incrementaPC_item|Add0~29_sumout\);

\END_RET_item|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~29_sumout\,
	ena => \DECODER_item|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RET_item|DOUT\(7));

\MUX_JMP|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[7]~8_combout\ = (\MUX_JMP|saida_MUX[4]~4_combout\ & ((!\DECODER_item|saida~8_combout\ & ((\incrementaPC_item|Add0~29_sumout\))) # (\DECODER_item|saida~8_combout\ & (\END_RET_item|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001100000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida~8_combout\,
	datab => \MUX_JMP|ALT_INV_saida_MUX[4]~4_combout\,
	datac => \END_RET_item|ALT_INV_DOUT\(7),
	datad => \incrementaPC_item|ALT_INV_Add0~29_sumout\,
	combout => \MUX_JMP|saida_MUX[7]~8_combout\);

\PC_item|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(7));

\DECODER_item|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[0]~0_combout\ = (!\ROM_item|memROM~0_combout\ & (!\ROM_item|memROM~1_combout\ & (\ROM_item|memROM~2_combout\ & !\ROM_item|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida[0]~0_combout\);

\DECODER_item|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[1]~1_combout\ = (!\ROM_item|memROM~2_combout\ & (!\ROM_item|memROM~3_combout\ $ (((\ROM_item|memROM~0_combout\ & !\ROM_item|memROM~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000001000000101100000100000010110000010000001011000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida[1]~1_combout\);

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

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_REGA(0) <= \REGA[0]~output_o\;

ww_REGA(1) <= \REGA[1]~output_o\;

ww_REGA(2) <= \REGA[2]~output_o\;

ww_REGA(3) <= \REGA[3]~output_o\;

ww_REGA(4) <= \REGA[4]~output_o\;

ww_REGA(5) <= \REGA[5]~output_o\;

ww_REGA(6) <= \REGA[6]~output_o\;

ww_REGA(7) <= \REGA[7]~output_o\;

ww_Control_view(0) <= \Control_view[0]~output_o\;

ww_Control_view(1) <= \Control_view[1]~output_o\;

ww_Control_view(2) <= \Control_view[2]~output_o\;

ww_Control_view(3) <= \Control_view[3]~output_o\;

ww_Control_view(4) <= \Control_view[4]~output_o\;

ww_Control_view(5) <= \Control_view[5]~output_o\;

ww_Control_view(6) <= \Control_view[6]~output_o\;

ww_Control_view(7) <= \Control_view[7]~output_o\;

ww_Control_view(8) <= \Control_view[8]~output_o\;

ww_Control_view(9) <= \Control_view[9]~output_o\;

ww_Control_view(10) <= \Control_view[10]~output_o\;

ww_Control_view(11) <= \Control_view[11]~output_o\;
END structure;


