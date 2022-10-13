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

-- DATE "09/15/2022 17:46:47"

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
	Control_view : OUT std_logic_vector(8 DOWNTO 0);
	flag_zero_out : OUT std_logic;
	ULA_out : OUT std_logic_vector(7 DOWNTO 0);
	flag_zero_in : OUT std_logic;
	ULA_A_OUT : OUT std_logic_vector(7 DOWNTO 0);
	ULA_B_OUT : OUT std_logic_vector(7 DOWNTO 0)
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
SIGNAL ww_Control_view : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_flag_zero_out : std_logic;
SIGNAL ww_ULA_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_flag_zero_in : std_logic;
SIGNAL ww_ULA_A_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ULA_B_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \incrementaPC_item|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~2\ : std_logic;
SIGNAL \incrementaPC_item|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~6\ : std_logic;
SIGNAL \incrementaPC_item|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~10\ : std_logic;
SIGNAL \incrementaPC_item|Add0~13_sumout\ : std_logic;
SIGNAL \ROM_item|memROM~7_combout\ : std_logic;
SIGNAL \ROM_item|memROM~0_combout\ : std_logic;
SIGNAL \ROM_item|memROM~1_combout\ : std_logic;
SIGNAL \ROM_item|memROM~2_combout\ : std_logic;
SIGNAL \ROM_item|memROM~3_combout\ : std_logic;
SIGNAL \DECODER_item|saida~1_combout\ : std_logic;
SIGNAL \DECODER_item|Equal3~1_combout\ : std_logic;
SIGNAL \ULA_item|saida[4]~5_combout\ : std_logic;
SIGNAL \ULA_item|saida[0]~0_combout\ : std_logic;
SIGNAL \DECODER_item|saida[4]~3_combout\ : std_logic;
SIGNAL \DECODER_item|saida[3]~2_combout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \DECODER_item|saida[3]~6_combout\ : std_logic;
SIGNAL \DECODER_item|saida[3]~7_combout\ : std_logic;
SIGNAL \ULA_item|Add0~34_cout\ : std_logic;
SIGNAL \ULA_item|Add0~1_sumout\ : std_logic;
SIGNAL \ULA_item|saida[0]~1_combout\ : std_logic;
SIGNAL \DECODER_item|saida[5]~4_combout\ : std_logic;
SIGNAL \RAM_item|ram~185_combout\ : std_logic;
SIGNAL \RAM_item|ram~177_combout\ : std_logic;
SIGNAL \RAM_item|ram~49_q\ : std_logic;
SIGNAL \RAM_item|ram~178_combout\ : std_logic;
SIGNAL \RAM_item|ram~57_q\ : std_logic;
SIGNAL \RAM_item|ram~145_combout\ : std_logic;
SIGNAL \RAM_item|ram~179_combout\ : std_logic;
SIGNAL \RAM_item|ram~17_q\ : std_logic;
SIGNAL \RAM_item|ram~180_combout\ : std_logic;
SIGNAL \RAM_item|ram~25_q\ : std_logic;
SIGNAL \RAM_item|ram~146_combout\ : std_logic;
SIGNAL \RAM_item|ram~181_combout\ : std_logic;
SIGNAL \RAM_item|ram~113_q\ : std_logic;
SIGNAL \RAM_item|ram~182_combout\ : std_logic;
SIGNAL \RAM_item|ram~121_q\ : std_logic;
SIGNAL \RAM_item|ram~147_combout\ : std_logic;
SIGNAL \RAM_item|ram~183_combout\ : std_logic;
SIGNAL \RAM_item|ram~81_q\ : std_logic;
SIGNAL \RAM_item|ram~184_combout\ : std_logic;
SIGNAL \RAM_item|ram~89_q\ : std_logic;
SIGNAL \RAM_item|ram~148_combout\ : std_logic;
SIGNAL \RAM_item|ram~149_combout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ULA_item|Add0~2\ : std_logic;
SIGNAL \ULA_item|Add0~5_sumout\ : std_logic;
SIGNAL \ULA_item|saida[1]~2_combout\ : std_logic;
SIGNAL \RAM_item|ram~50_q\ : std_logic;
SIGNAL \RAM_item|ram~18_q\ : std_logic;
SIGNAL \RAM_item|ram~114_q\ : std_logic;
SIGNAL \RAM_item|ram~82_q\ : std_logic;
SIGNAL \RAM_item|ram~150_combout\ : std_logic;
SIGNAL \RAM_item|ram~58_q\ : std_logic;
SIGNAL \RAM_item|ram~26_q\ : std_logic;
SIGNAL \RAM_item|ram~122_q\ : std_logic;
SIGNAL \RAM_item|ram~90_q\ : std_logic;
SIGNAL \RAM_item|ram~151_combout\ : std_logic;
SIGNAL \RAM_item|ram~152_combout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \ULA_item|Add0~6\ : std_logic;
SIGNAL \ULA_item|Add0~9_sumout\ : std_logic;
SIGNAL \ULA_item|saida[2]~3_combout\ : std_logic;
SIGNAL \RAM_item|ram~51_q\ : std_logic;
SIGNAL \RAM_item|ram~59_q\ : std_logic;
SIGNAL \RAM_item|ram~153_combout\ : std_logic;
SIGNAL \RAM_item|ram~19_q\ : std_logic;
SIGNAL \RAM_item|ram~27_q\ : std_logic;
SIGNAL \RAM_item|ram~154_combout\ : std_logic;
SIGNAL \RAM_item|ram~115_q\ : std_logic;
SIGNAL \RAM_item|ram~123_q\ : std_logic;
SIGNAL \RAM_item|ram~155_combout\ : std_logic;
SIGNAL \RAM_item|ram~83_q\ : std_logic;
SIGNAL \RAM_item|ram~91_q\ : std_logic;
SIGNAL \RAM_item|ram~156_combout\ : std_logic;
SIGNAL \RAM_item|ram~157_combout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \ULA_item|Add0~10\ : std_logic;
SIGNAL \ULA_item|Add0~13_sumout\ : std_logic;
SIGNAL \ULA_item|saida[3]~4_combout\ : std_logic;
SIGNAL \RAM_item|ram~52_q\ : std_logic;
SIGNAL \RAM_item|ram~20_q\ : std_logic;
SIGNAL \RAM_item|ram~116_q\ : std_logic;
SIGNAL \RAM_item|ram~84_q\ : std_logic;
SIGNAL \RAM_item|ram~158_combout\ : std_logic;
SIGNAL \RAM_item|ram~60_q\ : std_logic;
SIGNAL \RAM_item|ram~28_q\ : std_logic;
SIGNAL \RAM_item|ram~124_q\ : std_logic;
SIGNAL \RAM_item|ram~92_q\ : std_logic;
SIGNAL \RAM_item|ram~159_combout\ : std_logic;
SIGNAL \RAM_item|ram~160_combout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \ULA_item|Add0~14\ : std_logic;
SIGNAL \ULA_item|Add0~17_sumout\ : std_logic;
SIGNAL \ULA_item|saida[4]~6_combout\ : std_logic;
SIGNAL \RAM_item|ram~53_q\ : std_logic;
SIGNAL \RAM_item|ram~61_q\ : std_logic;
SIGNAL \RAM_item|ram~161_combout\ : std_logic;
SIGNAL \RAM_item|ram~21_q\ : std_logic;
SIGNAL \RAM_item|ram~29_q\ : std_logic;
SIGNAL \RAM_item|ram~162_combout\ : std_logic;
SIGNAL \RAM_item|ram~117_q\ : std_logic;
SIGNAL \RAM_item|ram~125_q\ : std_logic;
SIGNAL \RAM_item|ram~163_combout\ : std_logic;
SIGNAL \RAM_item|ram~85_q\ : std_logic;
SIGNAL \RAM_item|ram~93_q\ : std_logic;
SIGNAL \RAM_item|ram~164_combout\ : std_logic;
SIGNAL \RAM_item|ram~165_combout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \ULA_item|Add0~18\ : std_logic;
SIGNAL \ULA_item|Add0~21_sumout\ : std_logic;
SIGNAL \ULA_item|saida[5]~7_combout\ : std_logic;
SIGNAL \RAM_item|ram~54_q\ : std_logic;
SIGNAL \RAM_item|ram~22_q\ : std_logic;
SIGNAL \RAM_item|ram~118_q\ : std_logic;
SIGNAL \RAM_item|ram~86_q\ : std_logic;
SIGNAL \RAM_item|ram~166_combout\ : std_logic;
SIGNAL \RAM_item|ram~62_q\ : std_logic;
SIGNAL \RAM_item|ram~30_q\ : std_logic;
SIGNAL \RAM_item|ram~126_q\ : std_logic;
SIGNAL \RAM_item|ram~94_q\ : std_logic;
SIGNAL \RAM_item|ram~167_combout\ : std_logic;
SIGNAL \RAM_item|ram~168_combout\ : std_logic;
SIGNAL \ULA_item|Add0~22\ : std_logic;
SIGNAL \ULA_item|Add0~25_sumout\ : std_logic;
SIGNAL \ULA_item|saida[6]~8_combout\ : std_logic;
SIGNAL \RAM_item|ram~55_q\ : std_logic;
SIGNAL \RAM_item|ram~63_q\ : std_logic;
SIGNAL \RAM_item|ram~169_combout\ : std_logic;
SIGNAL \RAM_item|ram~23_q\ : std_logic;
SIGNAL \RAM_item|ram~31_q\ : std_logic;
SIGNAL \RAM_item|ram~170_combout\ : std_logic;
SIGNAL \RAM_item|ram~119_q\ : std_logic;
SIGNAL \RAM_item|ram~127_q\ : std_logic;
SIGNAL \RAM_item|ram~171_combout\ : std_logic;
SIGNAL \RAM_item|ram~87_q\ : std_logic;
SIGNAL \RAM_item|ram~95_q\ : std_logic;
SIGNAL \RAM_item|ram~172_combout\ : std_logic;
SIGNAL \RAM_item|ram~173_combout\ : std_logic;
SIGNAL \ULA_item|Add0~26\ : std_logic;
SIGNAL \ULA_item|Add0~29_sumout\ : std_logic;
SIGNAL \ULA_item|saida[7]~9_combout\ : std_logic;
SIGNAL \RAM_item|ram~56_q\ : std_logic;
SIGNAL \RAM_item|ram~24_q\ : std_logic;
SIGNAL \RAM_item|ram~120_q\ : std_logic;
SIGNAL \RAM_item|ram~88_q\ : std_logic;
SIGNAL \RAM_item|ram~174_combout\ : std_logic;
SIGNAL \RAM_item|ram~64_q\ : std_logic;
SIGNAL \RAM_item|ram~32_q\ : std_logic;
SIGNAL \RAM_item|ram~128_q\ : std_logic;
SIGNAL \RAM_item|ram~96_q\ : std_logic;
SIGNAL \RAM_item|ram~175_combout\ : std_logic;
SIGNAL \RAM_item|ram~176_combout\ : std_logic;
SIGNAL \flag_zero_entrada~0_combout\ : std_logic;
SIGNAL \flag_zero_entrada~1_combout\ : std_logic;
SIGNAL \flag_zero_entrada~2_combout\ : std_logic;
SIGNAL \flag_zero_entrada~3_combout\ : std_logic;
SIGNAL \FLAG_zero_item|DOUT~0_combout\ : std_logic;
SIGNAL \FLAG_zero_item|DOUT~q\ : std_logic;
SIGNAL \MUX_JMP_Sel~combout\ : std_logic;
SIGNAL \ROM_item|memROM~6_combout\ : std_logic;
SIGNAL \ROM_item|memROM~5_combout\ : std_logic;
SIGNAL \ROM_item|memROM~4_combout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~14\ : std_logic;
SIGNAL \incrementaPC_item|Add0~17_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~18\ : std_logic;
SIGNAL \incrementaPC_item|Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~22\ : std_logic;
SIGNAL \incrementaPC_item|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~26\ : std_logic;
SIGNAL \incrementaPC_item|Add0~29_sumout\ : std_logic;
SIGNAL \DECODER_item|Equal3~0_combout\ : std_logic;
SIGNAL \DECODER_item|saida[1]~0_combout\ : std_logic;
SIGNAL \DECODER_item|saida~5_combout\ : std_logic;
SIGNAL \DECODER_item|Equal2~0_combout\ : std_logic;
SIGNAL \flag_zero_entrada~4_combout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \MUX_item|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \PC_item|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA_item|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA_item|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \FLAG_zero_item|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \MUX_item|ALT_INV_saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida[4]~3_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida[3]~2_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REGA_item|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA_item|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \PC_item|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MUX_item|ALT_INV_saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \ALT_INV_flag_zero_entrada~4_combout\ : std_logic;
SIGNAL \ALT_INV_flag_zero_entrada~3_combout\ : std_logic;
SIGNAL \ALT_INV_flag_zero_entrada~2_combout\ : std_logic;
SIGNAL \ALT_INV_flag_zero_entrada~1_combout\ : std_logic;
SIGNAL \ALT_INV_flag_zero_entrada~0_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~176_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~175_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \ULA_item|ALT_INV_saida[4]~5_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MUX_item|ALT_INV_saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MUX_item|ALT_INV_saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MUX_item|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MUX_item|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~185_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida[3]~7_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida[3]~6_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
PC_OUT <= ww_PC_OUT;
ww_KEY <= KEY;
REGA <= ww_REGA;
Control_view <= ww_Control_view;
flag_zero_out <= ww_flag_zero_out;
ULA_out <= ww_ULA_out;
flag_zero_in <= ww_flag_zero_in;
ULA_A_OUT <= ww_ULA_A_OUT;
ULA_B_OUT <= ww_ULA_B_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA_item|ALT_INV_saida[0]~0_combout\ <= NOT \ULA_item|saida[0]~0_combout\;
\DECODER_item|ALT_INV_Equal3~1_combout\ <= NOT \DECODER_item|Equal3~1_combout\;
\FLAG_zero_item|ALT_INV_DOUT~q\ <= NOT \FLAG_zero_item|DOUT~q\;
\MUX_item|ALT_INV_saida_MUX[3]~0_combout\ <= NOT \MUX_item|saida_MUX[3]~0_combout\;
\DECODER_item|ALT_INV_saida[4]~3_combout\ <= NOT \DECODER_item|saida[4]~3_combout\;
\DECODER_item|ALT_INV_saida[3]~2_combout\ <= NOT \DECODER_item|saida[3]~2_combout\;
\DECODER_item|ALT_INV_saida~1_combout\ <= NOT \DECODER_item|saida~1_combout\;
\ROM_item|ALT_INV_memROM~3_combout\ <= NOT \ROM_item|memROM~3_combout\;
\ROM_item|ALT_INV_memROM~2_combout\ <= NOT \ROM_item|memROM~2_combout\;
\ROM_item|ALT_INV_memROM~1_combout\ <= NOT \ROM_item|memROM~1_combout\;
\ROM_item|ALT_INV_memROM~0_combout\ <= NOT \ROM_item|memROM~0_combout\;
\REGA_item|ALT_INV_DOUT\(7) <= NOT \REGA_item|DOUT\(7);
\REGA_item|ALT_INV_DOUT\(6) <= NOT \REGA_item|DOUT\(6);
\REGA_item|ALT_INV_DOUT\(5) <= NOT \REGA_item|DOUT\(5);
\REGA_item|ALT_INV_DOUT\(4) <= NOT \REGA_item|DOUT\(4);
\REGA_item|ALT_INV_DOUT\(3) <= NOT \REGA_item|DOUT\(3);
\REGA_item|ALT_INV_DOUT\(2) <= NOT \REGA_item|DOUT\(2);
\REGA_item|ALT_INV_DOUT\(1) <= NOT \REGA_item|DOUT\(1);
\REGA_item|ALT_INV_DOUT\(0) <= NOT \REGA_item|DOUT\(0);
\ULA_item|ALT_INV_Add0~29_sumout\ <= NOT \ULA_item|Add0~29_sumout\;
\ULA_item|ALT_INV_Add0~25_sumout\ <= NOT \ULA_item|Add0~25_sumout\;
\ULA_item|ALT_INV_Add0~21_sumout\ <= NOT \ULA_item|Add0~21_sumout\;
\ULA_item|ALT_INV_Add0~17_sumout\ <= NOT \ULA_item|Add0~17_sumout\;
\ULA_item|ALT_INV_Add0~13_sumout\ <= NOT \ULA_item|Add0~13_sumout\;
\ULA_item|ALT_INV_Add0~9_sumout\ <= NOT \ULA_item|Add0~9_sumout\;
\ULA_item|ALT_INV_Add0~5_sumout\ <= NOT \ULA_item|Add0~5_sumout\;
\ULA_item|ALT_INV_Add0~1_sumout\ <= NOT \ULA_item|Add0~1_sumout\;
\PC_item|ALT_INV_DOUT\(7) <= NOT \PC_item|DOUT\(7);
\PC_item|ALT_INV_DOUT\(6) <= NOT \PC_item|DOUT\(6);
\PC_item|ALT_INV_DOUT\(5) <= NOT \PC_item|DOUT\(5);
\PC_item|ALT_INV_DOUT\(4) <= NOT \PC_item|DOUT\(4);
\PC_item|ALT_INV_DOUT\(3) <= NOT \PC_item|DOUT\(3);
\PC_item|ALT_INV_DOUT\(2) <= NOT \PC_item|DOUT\(2);
\PC_item|ALT_INV_DOUT\(1) <= NOT \PC_item|DOUT\(1);
\PC_item|ALT_INV_DOUT\(0) <= NOT \PC_item|DOUT\(0);
\MUX_item|ALT_INV_saida_MUX[4]~5_combout\ <= NOT \MUX_item|saida_MUX[4]~5_combout\;
\ALT_INV_flag_zero_entrada~4_combout\ <= NOT \flag_zero_entrada~4_combout\;
\ALT_INV_flag_zero_entrada~3_combout\ <= NOT \flag_zero_entrada~3_combout\;
\ALT_INV_flag_zero_entrada~2_combout\ <= NOT \flag_zero_entrada~2_combout\;
\ALT_INV_flag_zero_entrada~1_combout\ <= NOT \flag_zero_entrada~1_combout\;
\ALT_INV_flag_zero_entrada~0_combout\ <= NOT \flag_zero_entrada~0_combout\;
\RAM_item|ALT_INV_ram~176_combout\ <= NOT \RAM_item|ram~176_combout\;
\RAM_item|ALT_INV_ram~175_combout\ <= NOT \RAM_item|ram~175_combout\;
\RAM_item|ALT_INV_ram~96_q\ <= NOT \RAM_item|ram~96_q\;
\RAM_item|ALT_INV_ram~128_q\ <= NOT \RAM_item|ram~128_q\;
\RAM_item|ALT_INV_ram~32_q\ <= NOT \RAM_item|ram~32_q\;
\RAM_item|ALT_INV_ram~64_q\ <= NOT \RAM_item|ram~64_q\;
\RAM_item|ALT_INV_ram~174_combout\ <= NOT \RAM_item|ram~174_combout\;
\RAM_item|ALT_INV_ram~88_q\ <= NOT \RAM_item|ram~88_q\;
\RAM_item|ALT_INV_ram~120_q\ <= NOT \RAM_item|ram~120_q\;
\RAM_item|ALT_INV_ram~24_q\ <= NOT \RAM_item|ram~24_q\;
\RAM_item|ALT_INV_ram~56_q\ <= NOT \RAM_item|ram~56_q\;
\RAM_item|ALT_INV_ram~173_combout\ <= NOT \RAM_item|ram~173_combout\;
\RAM_item|ALT_INV_ram~172_combout\ <= NOT \RAM_item|ram~172_combout\;
\RAM_item|ALT_INV_ram~95_q\ <= NOT \RAM_item|ram~95_q\;
\RAM_item|ALT_INV_ram~87_q\ <= NOT \RAM_item|ram~87_q\;
\RAM_item|ALT_INV_ram~171_combout\ <= NOT \RAM_item|ram~171_combout\;
\RAM_item|ALT_INV_ram~127_q\ <= NOT \RAM_item|ram~127_q\;
\RAM_item|ALT_INV_ram~119_q\ <= NOT \RAM_item|ram~119_q\;
\RAM_item|ALT_INV_ram~170_combout\ <= NOT \RAM_item|ram~170_combout\;
\RAM_item|ALT_INV_ram~31_q\ <= NOT \RAM_item|ram~31_q\;
\RAM_item|ALT_INV_ram~23_q\ <= NOT \RAM_item|ram~23_q\;
\RAM_item|ALT_INV_ram~169_combout\ <= NOT \RAM_item|ram~169_combout\;
\RAM_item|ALT_INV_ram~63_q\ <= NOT \RAM_item|ram~63_q\;
\RAM_item|ALT_INV_ram~55_q\ <= NOT \RAM_item|ram~55_q\;
\RAM_item|ALT_INV_ram~168_combout\ <= NOT \RAM_item|ram~168_combout\;
\RAM_item|ALT_INV_ram~167_combout\ <= NOT \RAM_item|ram~167_combout\;
\RAM_item|ALT_INV_ram~94_q\ <= NOT \RAM_item|ram~94_q\;
\RAM_item|ALT_INV_ram~126_q\ <= NOT \RAM_item|ram~126_q\;
\RAM_item|ALT_INV_ram~30_q\ <= NOT \RAM_item|ram~30_q\;
\RAM_item|ALT_INV_ram~62_q\ <= NOT \RAM_item|ram~62_q\;
\RAM_item|ALT_INV_ram~166_combout\ <= NOT \RAM_item|ram~166_combout\;
\RAM_item|ALT_INV_ram~86_q\ <= NOT \RAM_item|ram~86_q\;
\RAM_item|ALT_INV_ram~118_q\ <= NOT \RAM_item|ram~118_q\;
\RAM_item|ALT_INV_ram~22_q\ <= NOT \RAM_item|ram~22_q\;
\RAM_item|ALT_INV_ram~54_q\ <= NOT \RAM_item|ram~54_q\;
\ULA_item|ALT_INV_saida[4]~5_combout\ <= NOT \ULA_item|saida[4]~5_combout\;
\RAM_item|ALT_INV_ram~165_combout\ <= NOT \RAM_item|ram~165_combout\;
\RAM_item|ALT_INV_ram~164_combout\ <= NOT \RAM_item|ram~164_combout\;
\RAM_item|ALT_INV_ram~93_q\ <= NOT \RAM_item|ram~93_q\;
\RAM_item|ALT_INV_ram~85_q\ <= NOT \RAM_item|ram~85_q\;
\RAM_item|ALT_INV_ram~163_combout\ <= NOT \RAM_item|ram~163_combout\;
\RAM_item|ALT_INV_ram~125_q\ <= NOT \RAM_item|ram~125_q\;
\RAM_item|ALT_INV_ram~117_q\ <= NOT \RAM_item|ram~117_q\;
\RAM_item|ALT_INV_ram~162_combout\ <= NOT \RAM_item|ram~162_combout\;
\RAM_item|ALT_INV_ram~29_q\ <= NOT \RAM_item|ram~29_q\;
\RAM_item|ALT_INV_ram~21_q\ <= NOT \RAM_item|ram~21_q\;
\RAM_item|ALT_INV_ram~161_combout\ <= NOT \RAM_item|ram~161_combout\;
\RAM_item|ALT_INV_ram~61_q\ <= NOT \RAM_item|ram~61_q\;
\RAM_item|ALT_INV_ram~53_q\ <= NOT \RAM_item|ram~53_q\;
\MUX_item|ALT_INV_saida_MUX[3]~4_combout\ <= NOT \MUX_item|saida_MUX[3]~4_combout\;
\RAM_item|ALT_INV_ram~160_combout\ <= NOT \RAM_item|ram~160_combout\;
\RAM_item|ALT_INV_ram~159_combout\ <= NOT \RAM_item|ram~159_combout\;
\RAM_item|ALT_INV_ram~92_q\ <= NOT \RAM_item|ram~92_q\;
\RAM_item|ALT_INV_ram~124_q\ <= NOT \RAM_item|ram~124_q\;
\RAM_item|ALT_INV_ram~28_q\ <= NOT \RAM_item|ram~28_q\;
\RAM_item|ALT_INV_ram~60_q\ <= NOT \RAM_item|ram~60_q\;
\RAM_item|ALT_INV_ram~158_combout\ <= NOT \RAM_item|ram~158_combout\;
\RAM_item|ALT_INV_ram~84_q\ <= NOT \RAM_item|ram~84_q\;
\RAM_item|ALT_INV_ram~116_q\ <= NOT \RAM_item|ram~116_q\;
\RAM_item|ALT_INV_ram~20_q\ <= NOT \RAM_item|ram~20_q\;
\RAM_item|ALT_INV_ram~52_q\ <= NOT \RAM_item|ram~52_q\;
\MUX_item|ALT_INV_saida_MUX[2]~3_combout\ <= NOT \MUX_item|saida_MUX[2]~3_combout\;
\RAM_item|ALT_INV_ram~157_combout\ <= NOT \RAM_item|ram~157_combout\;
\RAM_item|ALT_INV_ram~156_combout\ <= NOT \RAM_item|ram~156_combout\;
\RAM_item|ALT_INV_ram~91_q\ <= NOT \RAM_item|ram~91_q\;
\RAM_item|ALT_INV_ram~83_q\ <= NOT \RAM_item|ram~83_q\;
\RAM_item|ALT_INV_ram~155_combout\ <= NOT \RAM_item|ram~155_combout\;
\RAM_item|ALT_INV_ram~123_q\ <= NOT \RAM_item|ram~123_q\;
\RAM_item|ALT_INV_ram~115_q\ <= NOT \RAM_item|ram~115_q\;
\RAM_item|ALT_INV_ram~154_combout\ <= NOT \RAM_item|ram~154_combout\;
\RAM_item|ALT_INV_ram~27_q\ <= NOT \RAM_item|ram~27_q\;
\RAM_item|ALT_INV_ram~19_q\ <= NOT \RAM_item|ram~19_q\;
\RAM_item|ALT_INV_ram~153_combout\ <= NOT \RAM_item|ram~153_combout\;
\RAM_item|ALT_INV_ram~59_q\ <= NOT \RAM_item|ram~59_q\;
\RAM_item|ALT_INV_ram~51_q\ <= NOT \RAM_item|ram~51_q\;
\MUX_item|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \MUX_item|saida_MUX[1]~2_combout\;
\RAM_item|ALT_INV_ram~152_combout\ <= NOT \RAM_item|ram~152_combout\;
\RAM_item|ALT_INV_ram~151_combout\ <= NOT \RAM_item|ram~151_combout\;
\RAM_item|ALT_INV_ram~90_q\ <= NOT \RAM_item|ram~90_q\;
\RAM_item|ALT_INV_ram~122_q\ <= NOT \RAM_item|ram~122_q\;
\RAM_item|ALT_INV_ram~26_q\ <= NOT \RAM_item|ram~26_q\;
\RAM_item|ALT_INV_ram~58_q\ <= NOT \RAM_item|ram~58_q\;
\RAM_item|ALT_INV_ram~150_combout\ <= NOT \RAM_item|ram~150_combout\;
\RAM_item|ALT_INV_ram~82_q\ <= NOT \RAM_item|ram~82_q\;
\RAM_item|ALT_INV_ram~114_q\ <= NOT \RAM_item|ram~114_q\;
\RAM_item|ALT_INV_ram~18_q\ <= NOT \RAM_item|ram~18_q\;
\RAM_item|ALT_INV_ram~50_q\ <= NOT \RAM_item|ram~50_q\;
\MUX_item|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \MUX_item|saida_MUX[0]~1_combout\;
\RAM_item|ALT_INV_ram~149_combout\ <= NOT \RAM_item|ram~149_combout\;
\ROM_item|ALT_INV_memROM~7_combout\ <= NOT \ROM_item|memROM~7_combout\;
\ROM_item|ALT_INV_memROM~6_combout\ <= NOT \ROM_item|memROM~6_combout\;
\RAM_item|ALT_INV_ram~148_combout\ <= NOT \RAM_item|ram~148_combout\;
\RAM_item|ALT_INV_ram~89_q\ <= NOT \RAM_item|ram~89_q\;
\RAM_item|ALT_INV_ram~81_q\ <= NOT \RAM_item|ram~81_q\;
\RAM_item|ALT_INV_ram~147_combout\ <= NOT \RAM_item|ram~147_combout\;
\RAM_item|ALT_INV_ram~121_q\ <= NOT \RAM_item|ram~121_q\;
\RAM_item|ALT_INV_ram~113_q\ <= NOT \RAM_item|ram~113_q\;
\RAM_item|ALT_INV_ram~146_combout\ <= NOT \RAM_item|ram~146_combout\;
\RAM_item|ALT_INV_ram~25_q\ <= NOT \RAM_item|ram~25_q\;
\RAM_item|ALT_INV_ram~17_q\ <= NOT \RAM_item|ram~17_q\;
\RAM_item|ALT_INV_ram~145_combout\ <= NOT \RAM_item|ram~145_combout\;
\ROM_item|ALT_INV_memROM~5_combout\ <= NOT \ROM_item|memROM~5_combout\;
\RAM_item|ALT_INV_ram~57_q\ <= NOT \RAM_item|ram~57_q\;
\RAM_item|ALT_INV_ram~49_q\ <= NOT \RAM_item|ram~49_q\;
\ROM_item|ALT_INV_memROM~4_combout\ <= NOT \ROM_item|memROM~4_combout\;
\RAM_item|ALT_INV_ram~185_combout\ <= NOT \RAM_item|ram~185_combout\;
\DECODER_item|ALT_INV_saida[3]~7_combout\ <= NOT \DECODER_item|saida[3]~7_combout\;
\DECODER_item|ALT_INV_saida[3]~6_combout\ <= NOT \DECODER_item|saida[3]~6_combout\;

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
	o => ww_PC_OUT(0));

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
	o => ww_PC_OUT(1));

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
	o => ww_PC_OUT(2));

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
	o => ww_PC_OUT(3));

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
	o => ww_PC_OUT(4));

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
	o => ww_PC_OUT(5));

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
	o => ww_PC_OUT(6));

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
	o => ww_PC_OUT(7));

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
	o => ww_REGA(0));

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
	o => ww_REGA(1));

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
	o => ww_REGA(2));

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
	o => ww_REGA(3));

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
	o => ww_REGA(4));

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
	o => ww_REGA(5));

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
	o => ww_REGA(6));

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
	o => ww_REGA(7));

\Control_view[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_Control_view(0));

\Control_view[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_Control_view(1));

\Control_view[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida~1_combout\,
	devoe => ww_devoe,
	o => ww_Control_view(2));

\Control_view[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_Control_view(3));

\Control_view[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_Control_view(4));

\Control_view[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida[5]~4_combout\,
	devoe => ww_devoe,
	o => ww_Control_view(5));

\Control_view[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_item|ALT_INV_saida_MUX[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_Control_view(6));

\Control_view[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|saida~5_combout\,
	devoe => ww_devoe,
	o => ww_Control_view(7));

\Control_view[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_item|Equal2~0_combout\,
	devoe => ww_devoe,
	o => ww_Control_view(8));

\flag_zero_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FLAG_zero_item|DOUT~q\,
	devoe => ww_devoe,
	o => ww_flag_zero_out);

\ULA_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_item|saida[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_ULA_out(0));

\ULA_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_item|saida[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_ULA_out(1));

\ULA_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_item|saida[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_ULA_out(2));

\ULA_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_item|saida[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_ULA_out(3));

\ULA_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_item|saida[4]~6_combout\,
	devoe => ww_devoe,
	o => ww_ULA_out(4));

\ULA_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_item|saida[5]~7_combout\,
	devoe => ww_devoe,
	o => ww_ULA_out(5));

\ULA_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_item|saida[6]~8_combout\,
	devoe => ww_devoe,
	o => ww_ULA_out(6));

\ULA_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_item|saida[7]~9_combout\,
	devoe => ww_devoe,
	o => ww_ULA_out(7));

\flag_zero_in~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_flag_zero_entrada~4_combout\,
	devoe => ww_devoe,
	o => ww_flag_zero_in);

\ULA_A_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(0),
	devoe => ww_devoe,
	o => ww_ULA_A_OUT(0));

\ULA_A_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(1),
	devoe => ww_devoe,
	o => ww_ULA_A_OUT(1));

\ULA_A_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(2),
	devoe => ww_devoe,
	o => ww_ULA_A_OUT(2));

\ULA_A_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(3),
	devoe => ww_devoe,
	o => ww_ULA_A_OUT(3));

\ULA_A_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(4),
	devoe => ww_devoe,
	o => ww_ULA_A_OUT(4));

\ULA_A_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(5),
	devoe => ww_devoe,
	o => ww_ULA_A_OUT(5));

\ULA_A_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(6),
	devoe => ww_devoe,
	o => ww_ULA_A_OUT(6));

\ULA_A_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(7),
	devoe => ww_devoe,
	o => ww_ULA_A_OUT(7));

\ULA_B_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_item|saida_MUX[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_ULA_B_OUT(0));

\ULA_B_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_item|saida_MUX[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_ULA_B_OUT(1));

\ULA_B_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_item|saida_MUX[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_ULA_B_OUT(2));

\ULA_B_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_item|saida_MUX[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_ULA_B_OUT(3));

\ULA_B_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_item|saida_MUX[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_ULA_B_OUT(4));

\ULA_B_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_item|saida_MUX[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_ULA_B_OUT(5));

\ULA_B_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_item|saida_MUX[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_ULA_B_OUT(6));

\ULA_B_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_item|saida_MUX[7]~8_combout\,
	devoe => ww_devoe,
	o => ww_ULA_B_OUT(7));

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

\ROM_item|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~7_combout\ = (!\PC_item|DOUT\(1) & ((!\PC_item|DOUT\(0) & (\PC_item|DOUT\(2) & \PC_item|DOUT\(3))) # (\PC_item|DOUT\(0) & (!\PC_item|DOUT\(2) & !\PC_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000001000010000000000100001000000000010000100000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~7_combout\);

\ROM_item|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~0_combout\ = (!\PC_item|DOUT\(1) & ((!\PC_item|DOUT\(2) & ((!\PC_item|DOUT\(3)))) # (\PC_item|DOUT\(2) & (!\PC_item|DOUT\(0) & \PC_item|DOUT\(3))))) # (\PC_item|DOUT\(1) & (\PC_item|DOUT\(0) & (!\PC_item|DOUT\(2) $ (!\PC_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100011000110000010001100011000001000110001100000100011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~0_combout\);

\ROM_item|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~1_combout\ = (!\PC_item|DOUT\(0) & (\PC_item|DOUT\(1) & (!\PC_item|DOUT\(2) $ (!\PC_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000100010000000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~1_combout\);

\ROM_item|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~2_combout\ = (\PC_item|DOUT\(0) & ((!\PC_item|DOUT\(1) & ((!\PC_item|DOUT\(3)))) # (\PC_item|DOUT\(1) & (!\PC_item|DOUT\(2) & \PC_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010000010001000001000001000100000100000100010000010000",
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
-- \ROM_item|memROM~3_combout\ = (!\PC_item|DOUT\(1) & (\PC_item|DOUT\(3) & (!\PC_item|DOUT\(0) $ (\PC_item|DOUT\(2))))) # (\PC_item|DOUT\(1) & ((!\PC_item|DOUT\(0)) # (!\PC_item|DOUT\(2) $ (\PC_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001010100111001100101010011100110010101001110011001010100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~3_combout\);

\DECODER_item|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida~1_combout\ = (!\ROM_item|memROM~0_combout\ & (\ROM_item|memROM~1_combout\ & (!\ROM_item|memROM~2_combout\ & \ROM_item|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida~1_combout\);

\DECODER_item|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|Equal3~1_combout\ = (!\ROM_item|memROM~0_combout\ & !\ROM_item|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	combout => \DECODER_item|Equal3~1_combout\);

\ULA_item|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[4]~5_combout\ = (\DECODER_item|Equal3~1_combout\ & (\ROM_item|memROM~2_combout\ & \ROM_item|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal3~1_combout\,
	datab => \ROM_item|ALT_INV_memROM~2_combout\,
	datac => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \ULA_item|saida[4]~5_combout\);

\ULA_item|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[0]~0_combout\ = (\DECODER_item|Equal3~1_combout\ & (!\ROM_item|memROM~2_combout\ $ (\ROM_item|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000101000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_Equal3~1_combout\,
	datab => \ROM_item|ALT_INV_memROM~2_combout\,
	datac => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \ULA_item|saida[0]~0_combout\);

\DECODER_item|saida[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[4]~3_combout\ = (!\ROM_item|memROM~0_combout\ & (!\ROM_item|memROM~1_combout\ & (!\ROM_item|memROM~2_combout\ $ (\ROM_item|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000100000000000100010000000000010001000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida[4]~3_combout\);

\DECODER_item|saida[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[3]~2_combout\ = (!\ROM_item|memROM~1_combout\ & (!\ROM_item|memROM~2_combout\ & (!\ROM_item|memROM~0_combout\ $ (\ROM_item|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000100000000100000010000000010000001000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida[3]~2_combout\);

\MUX_item|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[3]~0_combout\ = (((\ROM_item|memROM~3_combout\) # (\ROM_item|memROM~2_combout\)) # (\ROM_item|memROM~1_combout\)) # (\ROM_item|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \MUX_item|saida_MUX[3]~0_combout\);

\DECODER_item|saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[3]~6_combout\ = (!\ROM_item|memROM~1_combout\ & (!\ROM_item|memROM~0_combout\ $ (\ROM_item|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida[3]~6_combout\);

\DECODER_item|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[3]~7_combout\ = !\ROM_item|memROM~0_combout\ $ (\ROM_item|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida[3]~7_combout\);

\ULA_item|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~34_cout\ = CARRY(( (((!\DECODER_item|saida[3]~7_combout\) # (\ROM_item|memROM~1_combout\)) # (\ROM_item|memROM~2_combout\)) # (\DECODER_item|saida[4]~3_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[4]~3_combout\,
	datab => \ROM_item|ALT_INV_memROM~2_combout\,
	datac => \ROM_item|ALT_INV_memROM~1_combout\,
	datad => \DECODER_item|ALT_INV_saida[3]~7_combout\,
	cin => GND,
	cout => \ULA_item|Add0~34_cout\);

\ULA_item|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~1_sumout\ = SUM(( !\MUX_item|saida_MUX[0]~1_combout\ $ (((!\DECODER_item|saida[4]~3_combout\ & (!\ROM_item|memROM~2_combout\ & \DECODER_item|saida[3]~6_combout\)))) ) + ( \REGA_item|DOUT\(0) ) + ( \ULA_item|Add0~34_cout\ ))
-- \ULA_item|Add0~2\ = CARRY(( !\MUX_item|saida_MUX[0]~1_combout\ $ (((!\DECODER_item|saida[4]~3_combout\ & (!\ROM_item|memROM~2_combout\ & \DECODER_item|saida[3]~6_combout\)))) ) + ( \REGA_item|DOUT\(0) ) + ( \ULA_item|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[4]~3_combout\,
	datab => \ROM_item|ALT_INV_memROM~2_combout\,
	datac => \MUX_item|ALT_INV_saida_MUX[0]~1_combout\,
	datad => \DECODER_item|ALT_INV_saida[3]~6_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(0),
	cin => \ULA_item|Add0~34_cout\,
	sumout => \ULA_item|Add0~1_sumout\,
	cout => \ULA_item|Add0~2\);

\ULA_item|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[0]~1_combout\ = (!\ULA_item|saida[0]~0_combout\ & ((\ULA_item|Add0~1_sumout\))) # (\ULA_item|saida[0]~0_combout\ & (\MUX_item|saida_MUX[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_item|ALT_INV_saida[0]~0_combout\,
	datab => \MUX_item|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \ULA_item|ALT_INV_Add0~1_sumout\,
	combout => \ULA_item|saida[0]~1_combout\);

\DECODER_item|saida[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[5]~4_combout\ = (!\ROM_item|memROM~1_combout\ & (!\ROM_item|memROM~3_combout\ $ (((\ROM_item|memROM~2_combout\) # (\ROM_item|memROM~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001001100100000000100110010000000010011001000000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida[5]~4_combout\);

\REGA_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|saida[0]~1_combout\,
	ena => \DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(0));

\RAM_item|ram~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~185_combout\ = (!\PC_item|DOUT\(3) & (\PC_item|DOUT\(2) & (!\PC_item|DOUT\(1) & \PC_item|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(3),
	datab => \PC_item|ALT_INV_DOUT\(2),
	datac => \PC_item|ALT_INV_DOUT\(1),
	datad => \PC_item|ALT_INV_DOUT\(0),
	combout => \RAM_item|ram~185_combout\);

\RAM_item|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~177_combout\ = (!\ROM_item|memROM~4_combout\ & (\ROM_item|memROM~6_combout\ & (!\ROM_item|memROM~7_combout\ & \RAM_item|ram~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~4_combout\,
	datab => \ROM_item|ALT_INV_memROM~6_combout\,
	datac => \ROM_item|ALT_INV_memROM~7_combout\,
	datad => \RAM_item|ALT_INV_ram~185_combout\,
	combout => \RAM_item|ram~177_combout\);

\RAM_item|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(0),
	ena => \RAM_item|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~49_q\);

\RAM_item|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~178_combout\ = (\ROM_item|memROM~4_combout\ & (\ROM_item|memROM~6_combout\ & (!\ROM_item|memROM~7_combout\ & \RAM_item|ram~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~4_combout\,
	datab => \ROM_item|ALT_INV_memROM~6_combout\,
	datac => \ROM_item|ALT_INV_memROM~7_combout\,
	datad => \RAM_item|ALT_INV_ram~185_combout\,
	combout => \RAM_item|ram~178_combout\);

\RAM_item|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(0),
	ena => \RAM_item|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~57_q\);

\RAM_item|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~145_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~57_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~49_q\,
	datab => \RAM_item|ALT_INV_ram~57_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~145_combout\);

\RAM_item|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~179_combout\ = (!\ROM_item|memROM~4_combout\ & (!\ROM_item|memROM~6_combout\ & (!\ROM_item|memROM~7_combout\ & \RAM_item|ram~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~4_combout\,
	datab => \ROM_item|ALT_INV_memROM~6_combout\,
	datac => \ROM_item|ALT_INV_memROM~7_combout\,
	datad => \RAM_item|ALT_INV_ram~185_combout\,
	combout => \RAM_item|ram~179_combout\);

\RAM_item|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(0),
	ena => \RAM_item|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~17_q\);

\RAM_item|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~180_combout\ = (\ROM_item|memROM~4_combout\ & (!\ROM_item|memROM~6_combout\ & (!\ROM_item|memROM~7_combout\ & \RAM_item|ram~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~4_combout\,
	datab => \ROM_item|ALT_INV_memROM~6_combout\,
	datac => \ROM_item|ALT_INV_memROM~7_combout\,
	datad => \RAM_item|ALT_INV_ram~185_combout\,
	combout => \RAM_item|ram~180_combout\);

\RAM_item|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(0),
	ena => \RAM_item|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~25_q\);

\RAM_item|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~146_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~25_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~17_q\,
	datab => \RAM_item|ALT_INV_ram~25_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~146_combout\);

\RAM_item|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~181_combout\ = (!\ROM_item|memROM~4_combout\ & (\ROM_item|memROM~6_combout\ & (\ROM_item|memROM~7_combout\ & \RAM_item|ram~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~4_combout\,
	datab => \ROM_item|ALT_INV_memROM~6_combout\,
	datac => \ROM_item|ALT_INV_memROM~7_combout\,
	datad => \RAM_item|ALT_INV_ram~185_combout\,
	combout => \RAM_item|ram~181_combout\);

\RAM_item|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(0),
	ena => \RAM_item|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~113_q\);

\RAM_item|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~182_combout\ = (\ROM_item|memROM~4_combout\ & (\ROM_item|memROM~6_combout\ & (\ROM_item|memROM~7_combout\ & \RAM_item|ram~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~4_combout\,
	datab => \ROM_item|ALT_INV_memROM~6_combout\,
	datac => \ROM_item|ALT_INV_memROM~7_combout\,
	datad => \RAM_item|ALT_INV_ram~185_combout\,
	combout => \RAM_item|ram~182_combout\);

\RAM_item|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(0),
	ena => \RAM_item|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~121_q\);

\RAM_item|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~147_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~121_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~113_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~113_q\,
	datab => \RAM_item|ALT_INV_ram~121_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~147_combout\);

\RAM_item|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~183_combout\ = (!\ROM_item|memROM~4_combout\ & (!\ROM_item|memROM~6_combout\ & (\ROM_item|memROM~7_combout\ & \RAM_item|ram~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~4_combout\,
	datab => \ROM_item|ALT_INV_memROM~6_combout\,
	datac => \ROM_item|ALT_INV_memROM~7_combout\,
	datad => \RAM_item|ALT_INV_ram~185_combout\,
	combout => \RAM_item|ram~183_combout\);

\RAM_item|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(0),
	ena => \RAM_item|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~81_q\);

\RAM_item|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~184_combout\ = (\ROM_item|memROM~4_combout\ & (!\ROM_item|memROM~6_combout\ & (\ROM_item|memROM~7_combout\ & \RAM_item|ram~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~4_combout\,
	datab => \ROM_item|ALT_INV_memROM~6_combout\,
	datac => \ROM_item|ALT_INV_memROM~7_combout\,
	datad => \RAM_item|ALT_INV_ram~185_combout\,
	combout => \RAM_item|ram~184_combout\);

\RAM_item|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(0),
	ena => \RAM_item|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~89_q\);

\RAM_item|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~148_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~89_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~81_q\,
	datab => \RAM_item|ALT_INV_ram~89_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~148_combout\);

\RAM_item|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~149_combout\ = ( \ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~147_combout\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~148_combout\ ) ) ) # ( 
-- \ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~145_combout\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~146_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~145_combout\,
	datab => \RAM_item|ALT_INV_ram~146_combout\,
	datac => \RAM_item|ALT_INV_ram~147_combout\,
	datad => \RAM_item|ALT_INV_ram~148_combout\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~149_combout\);

\MUX_item|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[0]~1_combout\ = (!\MUX_item|saida_MUX[3]~0_combout\ & (\ROM_item|memROM~4_combout\)) # (\MUX_item|saida_MUX[3]~0_combout\ & ((\RAM_item|ram~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_item|ALT_INV_saida_MUX[3]~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~4_combout\,
	datac => \RAM_item|ALT_INV_ram~149_combout\,
	combout => \MUX_item|saida_MUX[0]~1_combout\);

\ULA_item|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~5_sumout\ = SUM(( !\MUX_item|saida_MUX[1]~2_combout\ $ (((!\DECODER_item|saida[4]~3_combout\ & (!\ROM_item|memROM~2_combout\ & \DECODER_item|saida[3]~6_combout\)))) ) + ( \REGA_item|DOUT\(1) ) + ( \ULA_item|Add0~2\ ))
-- \ULA_item|Add0~6\ = CARRY(( !\MUX_item|saida_MUX[1]~2_combout\ $ (((!\DECODER_item|saida[4]~3_combout\ & (!\ROM_item|memROM~2_combout\ & \DECODER_item|saida[3]~6_combout\)))) ) + ( \REGA_item|DOUT\(1) ) + ( \ULA_item|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[4]~3_combout\,
	datab => \ROM_item|ALT_INV_memROM~2_combout\,
	datac => \MUX_item|ALT_INV_saida_MUX[1]~2_combout\,
	datad => \DECODER_item|ALT_INV_saida[3]~6_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(1),
	cin => \ULA_item|Add0~2\,
	sumout => \ULA_item|Add0~5_sumout\,
	cout => \ULA_item|Add0~6\);

\ULA_item|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[1]~2_combout\ = (!\ULA_item|saida[0]~0_combout\ & ((\ULA_item|Add0~5_sumout\))) # (\ULA_item|saida[0]~0_combout\ & (\MUX_item|saida_MUX[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_item|ALT_INV_saida[0]~0_combout\,
	datab => \MUX_item|ALT_INV_saida_MUX[1]~2_combout\,
	datac => \ULA_item|ALT_INV_Add0~5_sumout\,
	combout => \ULA_item|saida[1]~2_combout\);

\REGA_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|saida[1]~2_combout\,
	ena => \DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(1));

\RAM_item|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(1),
	ena => \RAM_item|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~50_q\);

\RAM_item|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(1),
	ena => \RAM_item|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~18_q\);

\RAM_item|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(1),
	ena => \RAM_item|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~114_q\);

\RAM_item|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(1),
	ena => \RAM_item|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~82_q\);

\RAM_item|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~150_combout\ = ( \ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~114_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~82_q\ ) ) ) # ( \ROM_item|memROM~6_combout\ & ( 
-- !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~50_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~50_q\,
	datab => \RAM_item|ALT_INV_ram~18_q\,
	datac => \RAM_item|ALT_INV_ram~114_q\,
	datad => \RAM_item|ALT_INV_ram~82_q\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~150_combout\);

\RAM_item|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(1),
	ena => \RAM_item|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~58_q\);

\RAM_item|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(1),
	ena => \RAM_item|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~26_q\);

\RAM_item|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(1),
	ena => \RAM_item|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~122_q\);

\RAM_item|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(1),
	ena => \RAM_item|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~90_q\);

\RAM_item|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~151_combout\ = ( \ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~122_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~90_q\ ) ) ) # ( \ROM_item|memROM~6_combout\ & ( 
-- !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~58_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~58_q\,
	datab => \RAM_item|ALT_INV_ram~26_q\,
	datac => \RAM_item|ALT_INV_ram~122_q\,
	datad => \RAM_item|ALT_INV_ram~90_q\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~151_combout\);

\RAM_item|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~152_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~151_combout\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~150_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~150_combout\,
	datab => \RAM_item|ALT_INV_ram~151_combout\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~152_combout\);

\MUX_item|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[1]~2_combout\ = (!\MUX_item|saida_MUX[3]~0_combout\ & (\ROM_item|memROM~5_combout\)) # (\MUX_item|saida_MUX[3]~0_combout\ & ((\RAM_item|ram~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_item|ALT_INV_saida_MUX[3]~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~5_combout\,
	datac => \RAM_item|ALT_INV_ram~152_combout\,
	combout => \MUX_item|saida_MUX[1]~2_combout\);

\ULA_item|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~9_sumout\ = SUM(( !\MUX_item|saida_MUX[2]~3_combout\ $ (((!\DECODER_item|saida[4]~3_combout\ & (!\ROM_item|memROM~2_combout\ & \DECODER_item|saida[3]~6_combout\)))) ) + ( \REGA_item|DOUT\(2) ) + ( \ULA_item|Add0~6\ ))
-- \ULA_item|Add0~10\ = CARRY(( !\MUX_item|saida_MUX[2]~3_combout\ $ (((!\DECODER_item|saida[4]~3_combout\ & (!\ROM_item|memROM~2_combout\ & \DECODER_item|saida[3]~6_combout\)))) ) + ( \REGA_item|DOUT\(2) ) + ( \ULA_item|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[4]~3_combout\,
	datab => \ROM_item|ALT_INV_memROM~2_combout\,
	datac => \MUX_item|ALT_INV_saida_MUX[2]~3_combout\,
	datad => \DECODER_item|ALT_INV_saida[3]~6_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(2),
	cin => \ULA_item|Add0~6\,
	sumout => \ULA_item|Add0~9_sumout\,
	cout => \ULA_item|Add0~10\);

\ULA_item|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[2]~3_combout\ = (!\ULA_item|saida[0]~0_combout\ & ((\ULA_item|Add0~9_sumout\))) # (\ULA_item|saida[0]~0_combout\ & (\MUX_item|saida_MUX[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_item|ALT_INV_saida[0]~0_combout\,
	datab => \MUX_item|ALT_INV_saida_MUX[2]~3_combout\,
	datac => \ULA_item|ALT_INV_Add0~9_sumout\,
	combout => \ULA_item|saida[2]~3_combout\);

\REGA_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|saida[2]~3_combout\,
	ena => \DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(2));

\RAM_item|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(2),
	ena => \RAM_item|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~51_q\);

\RAM_item|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(2),
	ena => \RAM_item|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~59_q\);

\RAM_item|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~153_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~59_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~51_q\,
	datab => \RAM_item|ALT_INV_ram~59_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~153_combout\);

\RAM_item|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(2),
	ena => \RAM_item|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~19_q\);

\RAM_item|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(2),
	ena => \RAM_item|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~27_q\);

\RAM_item|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~154_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~27_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~19_q\,
	datab => \RAM_item|ALT_INV_ram~27_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~154_combout\);

\RAM_item|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(2),
	ena => \RAM_item|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~115_q\);

\RAM_item|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(2),
	ena => \RAM_item|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~123_q\);

\RAM_item|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~155_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~123_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~115_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~115_q\,
	datab => \RAM_item|ALT_INV_ram~123_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~155_combout\);

\RAM_item|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(2),
	ena => \RAM_item|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~83_q\);

\RAM_item|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(2),
	ena => \RAM_item|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~91_q\);

\RAM_item|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~156_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~91_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~83_q\,
	datab => \RAM_item|ALT_INV_ram~91_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~156_combout\);

\RAM_item|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~157_combout\ = ( \ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~155_combout\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~156_combout\ ) ) ) # ( 
-- \ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~153_combout\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~154_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~153_combout\,
	datab => \RAM_item|ALT_INV_ram~154_combout\,
	datac => \RAM_item|ALT_INV_ram~155_combout\,
	datad => \RAM_item|ALT_INV_ram~156_combout\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~157_combout\);

\MUX_item|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[2]~3_combout\ = (!\MUX_item|saida_MUX[3]~0_combout\ & (\ROM_item|memROM~6_combout\)) # (\MUX_item|saida_MUX[3]~0_combout\ & ((\RAM_item|ram~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_item|ALT_INV_saida_MUX[3]~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~6_combout\,
	datac => \RAM_item|ALT_INV_ram~157_combout\,
	combout => \MUX_item|saida_MUX[2]~3_combout\);

\ULA_item|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~13_sumout\ = SUM(( !\MUX_item|saida_MUX[3]~4_combout\ $ (((!\DECODER_item|saida[4]~3_combout\ & (\DECODER_item|saida[3]~6_combout\ & !\ROM_item|memROM~2_combout\)))) ) + ( \REGA_item|DOUT\(3) ) + ( \ULA_item|Add0~10\ ))
-- \ULA_item|Add0~14\ = CARRY(( !\MUX_item|saida_MUX[3]~4_combout\ $ (((!\DECODER_item|saida[4]~3_combout\ & (\DECODER_item|saida[3]~6_combout\ & !\ROM_item|memROM~2_combout\)))) ) + ( \REGA_item|DOUT\(3) ) + ( \ULA_item|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[4]~3_combout\,
	datab => \DECODER_item|ALT_INV_saida[3]~6_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \MUX_item|ALT_INV_saida_MUX[3]~4_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(3),
	cin => \ULA_item|Add0~10\,
	sumout => \ULA_item|Add0~13_sumout\,
	cout => \ULA_item|Add0~14\);

\ULA_item|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[3]~4_combout\ = (!\ULA_item|saida[0]~0_combout\ & ((\ULA_item|Add0~13_sumout\))) # (\ULA_item|saida[0]~0_combout\ & (\MUX_item|saida_MUX[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_item|ALT_INV_saida[0]~0_combout\,
	datab => \MUX_item|ALT_INV_saida_MUX[3]~4_combout\,
	datac => \ULA_item|ALT_INV_Add0~13_sumout\,
	combout => \ULA_item|saida[3]~4_combout\);

\REGA_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|saida[3]~4_combout\,
	ena => \DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(3));

\RAM_item|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(3),
	ena => \RAM_item|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~52_q\);

\RAM_item|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(3),
	ena => \RAM_item|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~20_q\);

\RAM_item|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(3),
	ena => \RAM_item|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~116_q\);

\RAM_item|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(3),
	ena => \RAM_item|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~84_q\);

\RAM_item|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~158_combout\ = ( \ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~116_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~84_q\ ) ) ) # ( \ROM_item|memROM~6_combout\ & ( 
-- !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~52_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~52_q\,
	datab => \RAM_item|ALT_INV_ram~20_q\,
	datac => \RAM_item|ALT_INV_ram~116_q\,
	datad => \RAM_item|ALT_INV_ram~84_q\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~158_combout\);

\RAM_item|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(3),
	ena => \RAM_item|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~60_q\);

\RAM_item|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(3),
	ena => \RAM_item|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~28_q\);

\RAM_item|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(3),
	ena => \RAM_item|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~124_q\);

\RAM_item|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(3),
	ena => \RAM_item|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~92_q\);

\RAM_item|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~159_combout\ = ( \ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~124_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~92_q\ ) ) ) # ( \ROM_item|memROM~6_combout\ & ( 
-- !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~60_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~60_q\,
	datab => \RAM_item|ALT_INV_ram~28_q\,
	datac => \RAM_item|ALT_INV_ram~124_q\,
	datad => \RAM_item|ALT_INV_ram~92_q\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~159_combout\);

\RAM_item|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~160_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~159_combout\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~158_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~158_combout\,
	datab => \RAM_item|ALT_INV_ram~159_combout\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~160_combout\);

\MUX_item|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[3]~4_combout\ = (!\MUX_item|saida_MUX[3]~0_combout\ & (\ROM_item|memROM~7_combout\)) # (\MUX_item|saida_MUX[3]~0_combout\ & ((\RAM_item|ram~160_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_item|ALT_INV_saida_MUX[3]~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~7_combout\,
	datac => \RAM_item|ALT_INV_ram~160_combout\,
	combout => \MUX_item|saida_MUX[3]~4_combout\);

\ULA_item|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~17_sumout\ = SUM(( !\MUX_item|saida_MUX[4]~5_combout\ $ (((!\DECODER_item|saida[4]~3_combout\ & (\DECODER_item|saida[3]~6_combout\ & !\ROM_item|memROM~2_combout\)))) ) + ( \REGA_item|DOUT\(4) ) + ( \ULA_item|Add0~14\ ))
-- \ULA_item|Add0~18\ = CARRY(( !\MUX_item|saida_MUX[4]~5_combout\ $ (((!\DECODER_item|saida[4]~3_combout\ & (\DECODER_item|saida[3]~6_combout\ & !\ROM_item|memROM~2_combout\)))) ) + ( \REGA_item|DOUT\(4) ) + ( \ULA_item|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[4]~3_combout\,
	datab => \DECODER_item|ALT_INV_saida[3]~6_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \MUX_item|ALT_INV_saida_MUX[4]~5_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(4),
	cin => \ULA_item|Add0~14\,
	sumout => \ULA_item|Add0~17_sumout\,
	cout => \ULA_item|Add0~18\);

\ULA_item|saida[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[4]~6_combout\ = (!\RAM_item|ram~165_combout\ & (((\ULA_item|Add0~17_sumout\ & !\ULA_item|saida[0]~0_combout\)))) # (\RAM_item|ram~165_combout\ & (((\ULA_item|Add0~17_sumout\ & !\ULA_item|saida[0]~0_combout\)) # 
-- (\ULA_item|saida[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100010001000111110001000100011111000100010001111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~165_combout\,
	datab => \ULA_item|ALT_INV_saida[4]~5_combout\,
	datac => \ULA_item|ALT_INV_Add0~17_sumout\,
	datad => \ULA_item|ALT_INV_saida[0]~0_combout\,
	combout => \ULA_item|saida[4]~6_combout\);

\REGA_item|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|saida[4]~6_combout\,
	ena => \DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(4));

\RAM_item|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(4),
	ena => \RAM_item|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~53_q\);

\RAM_item|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(4),
	ena => \RAM_item|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~61_q\);

\RAM_item|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~161_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~61_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~53_q\,
	datab => \RAM_item|ALT_INV_ram~61_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~161_combout\);

\RAM_item|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(4),
	ena => \RAM_item|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~21_q\);

\RAM_item|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(4),
	ena => \RAM_item|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~29_q\);

\RAM_item|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~162_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~29_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~21_q\,
	datab => \RAM_item|ALT_INV_ram~29_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~162_combout\);

\RAM_item|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(4),
	ena => \RAM_item|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~117_q\);

\RAM_item|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(4),
	ena => \RAM_item|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~125_q\);

\RAM_item|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~163_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~125_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~117_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~117_q\,
	datab => \RAM_item|ALT_INV_ram~125_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~163_combout\);

\RAM_item|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(4),
	ena => \RAM_item|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~85_q\);

\RAM_item|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(4),
	ena => \RAM_item|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~93_q\);

\RAM_item|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~164_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~93_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~85_q\,
	datab => \RAM_item|ALT_INV_ram~93_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~164_combout\);

\RAM_item|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~165_combout\ = ( \ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~163_combout\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~164_combout\ ) ) ) # ( 
-- \ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~161_combout\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~162_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~161_combout\,
	datab => \RAM_item|ALT_INV_ram~162_combout\,
	datac => \RAM_item|ALT_INV_ram~163_combout\,
	datad => \RAM_item|ALT_INV_ram~164_combout\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~165_combout\);

\MUX_item|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[4]~5_combout\ = (\MUX_item|saida_MUX[3]~0_combout\ & \RAM_item|ram~165_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_item|ALT_INV_saida_MUX[3]~0_combout\,
	datab => \RAM_item|ALT_INV_ram~165_combout\,
	combout => \MUX_item|saida_MUX[4]~5_combout\);

\ULA_item|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~21_sumout\ = SUM(( (!\DECODER_item|saida[4]~3_combout\ & (!\DECODER_item|saida[3]~2_combout\ $ (((\RAM_item|ram~168_combout\ & \MUX_item|saida_MUX[3]~0_combout\))))) # (\DECODER_item|saida[4]~3_combout\ & (((!\RAM_item|ram~168_combout\) # 
-- (!\MUX_item|saida_MUX[3]~0_combout\)))) ) + ( \REGA_item|DOUT\(5) ) + ( \ULA_item|Add0~18\ ))
-- \ULA_item|Add0~22\ = CARRY(( (!\DECODER_item|saida[4]~3_combout\ & (!\DECODER_item|saida[3]~2_combout\ $ (((\RAM_item|ram~168_combout\ & \MUX_item|saida_MUX[3]~0_combout\))))) # (\DECODER_item|saida[4]~3_combout\ & (((!\RAM_item|ram~168_combout\) # 
-- (!\MUX_item|saida_MUX[3]~0_combout\)))) ) + ( \REGA_item|DOUT\(5) ) + ( \ULA_item|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110111010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[4]~3_combout\,
	datab => \DECODER_item|ALT_INV_saida[3]~2_combout\,
	datac => \RAM_item|ALT_INV_ram~168_combout\,
	datad => \MUX_item|ALT_INV_saida_MUX[3]~0_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(5),
	cin => \ULA_item|Add0~18\,
	sumout => \ULA_item|Add0~21_sumout\,
	cout => \ULA_item|Add0~22\);

\ULA_item|saida[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[5]~7_combout\ = (!\ULA_item|saida[4]~5_combout\ & (!\ULA_item|saida[0]~0_combout\ & ((\ULA_item|Add0~21_sumout\)))) # (\ULA_item|saida[4]~5_combout\ & (((!\ULA_item|saida[0]~0_combout\ & \ULA_item|Add0~21_sumout\)) # 
-- (\RAM_item|ram~168_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_item|ALT_INV_saida[4]~5_combout\,
	datab => \ULA_item|ALT_INV_saida[0]~0_combout\,
	datac => \RAM_item|ALT_INV_ram~168_combout\,
	datad => \ULA_item|ALT_INV_Add0~21_sumout\,
	combout => \ULA_item|saida[5]~7_combout\);

\REGA_item|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|saida[5]~7_combout\,
	ena => \DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(5));

\RAM_item|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(5),
	ena => \RAM_item|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~54_q\);

\RAM_item|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(5),
	ena => \RAM_item|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~22_q\);

\RAM_item|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(5),
	ena => \RAM_item|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~118_q\);

\RAM_item|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(5),
	ena => \RAM_item|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~86_q\);

\RAM_item|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~166_combout\ = ( \ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~118_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~86_q\ ) ) ) # ( \ROM_item|memROM~6_combout\ & ( 
-- !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~54_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~54_q\,
	datab => \RAM_item|ALT_INV_ram~22_q\,
	datac => \RAM_item|ALT_INV_ram~118_q\,
	datad => \RAM_item|ALT_INV_ram~86_q\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~166_combout\);

\RAM_item|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(5),
	ena => \RAM_item|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~62_q\);

\RAM_item|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(5),
	ena => \RAM_item|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~30_q\);

\RAM_item|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(5),
	ena => \RAM_item|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~126_q\);

\RAM_item|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(5),
	ena => \RAM_item|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~94_q\);

\RAM_item|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~167_combout\ = ( \ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~126_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~94_q\ ) ) ) # ( \ROM_item|memROM~6_combout\ & ( 
-- !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~62_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~62_q\,
	datab => \RAM_item|ALT_INV_ram~30_q\,
	datac => \RAM_item|ALT_INV_ram~126_q\,
	datad => \RAM_item|ALT_INV_ram~94_q\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~167_combout\);

\RAM_item|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~168_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~167_combout\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~166_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~166_combout\,
	datab => \RAM_item|ALT_INV_ram~167_combout\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~168_combout\);

\ULA_item|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~25_sumout\ = SUM(( (!\DECODER_item|saida[4]~3_combout\ & (!\DECODER_item|saida[3]~2_combout\ $ (((\RAM_item|ram~173_combout\ & \MUX_item|saida_MUX[3]~0_combout\))))) # (\DECODER_item|saida[4]~3_combout\ & (((!\RAM_item|ram~173_combout\) # 
-- (!\MUX_item|saida_MUX[3]~0_combout\)))) ) + ( \REGA_item|DOUT\(6) ) + ( \ULA_item|Add0~22\ ))
-- \ULA_item|Add0~26\ = CARRY(( (!\DECODER_item|saida[4]~3_combout\ & (!\DECODER_item|saida[3]~2_combout\ $ (((\RAM_item|ram~173_combout\ & \MUX_item|saida_MUX[3]~0_combout\))))) # (\DECODER_item|saida[4]~3_combout\ & (((!\RAM_item|ram~173_combout\) # 
-- (!\MUX_item|saida_MUX[3]~0_combout\)))) ) + ( \REGA_item|DOUT\(6) ) + ( \ULA_item|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110111010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[4]~3_combout\,
	datab => \DECODER_item|ALT_INV_saida[3]~2_combout\,
	datac => \RAM_item|ALT_INV_ram~173_combout\,
	datad => \MUX_item|ALT_INV_saida_MUX[3]~0_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(6),
	cin => \ULA_item|Add0~22\,
	sumout => \ULA_item|Add0~25_sumout\,
	cout => \ULA_item|Add0~26\);

\ULA_item|saida[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[6]~8_combout\ = (!\ULA_item|saida[4]~5_combout\ & (!\ULA_item|saida[0]~0_combout\ & ((\ULA_item|Add0~25_sumout\)))) # (\ULA_item|saida[4]~5_combout\ & (((!\ULA_item|saida[0]~0_combout\ & \ULA_item|Add0~25_sumout\)) # 
-- (\RAM_item|ram~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_item|ALT_INV_saida[4]~5_combout\,
	datab => \ULA_item|ALT_INV_saida[0]~0_combout\,
	datac => \RAM_item|ALT_INV_ram~173_combout\,
	datad => \ULA_item|ALT_INV_Add0~25_sumout\,
	combout => \ULA_item|saida[6]~8_combout\);

\REGA_item|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|saida[6]~8_combout\,
	ena => \DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(6));

\RAM_item|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(6),
	ena => \RAM_item|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~55_q\);

\RAM_item|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(6),
	ena => \RAM_item|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~63_q\);

\RAM_item|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~169_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~63_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~55_q\,
	datab => \RAM_item|ALT_INV_ram~63_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~169_combout\);

\RAM_item|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(6),
	ena => \RAM_item|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~23_q\);

\RAM_item|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(6),
	ena => \RAM_item|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~31_q\);

\RAM_item|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~170_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~31_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~23_q\,
	datab => \RAM_item|ALT_INV_ram~31_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~170_combout\);

\RAM_item|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(6),
	ena => \RAM_item|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~119_q\);

\RAM_item|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(6),
	ena => \RAM_item|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~127_q\);

\RAM_item|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~171_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~127_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~119_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~119_q\,
	datab => \RAM_item|ALT_INV_ram~127_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~171_combout\);

\RAM_item|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(6),
	ena => \RAM_item|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~87_q\);

\RAM_item|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(6),
	ena => \RAM_item|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~95_q\);

\RAM_item|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~172_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~95_q\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~87_q\,
	datab => \RAM_item|ALT_INV_ram~95_q\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~172_combout\);

\RAM_item|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~173_combout\ = ( \ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~171_combout\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~172_combout\ ) ) ) # ( 
-- \ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~169_combout\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~170_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~169_combout\,
	datab => \RAM_item|ALT_INV_ram~170_combout\,
	datac => \RAM_item|ALT_INV_ram~171_combout\,
	datad => \RAM_item|ALT_INV_ram~172_combout\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~173_combout\);

\ULA_item|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~29_sumout\ = SUM(( (!\DECODER_item|saida[4]~3_combout\ & (!\DECODER_item|saida[3]~2_combout\ $ (((\MUX_item|saida_MUX[3]~0_combout\ & \RAM_item|ram~176_combout\))))) # (\DECODER_item|saida[4]~3_combout\ & 
-- (((!\MUX_item|saida_MUX[3]~0_combout\) # (!\RAM_item|ram~176_combout\)))) ) + ( \REGA_item|DOUT\(7) ) + ( \ULA_item|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110111010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[4]~3_combout\,
	datab => \DECODER_item|ALT_INV_saida[3]~2_combout\,
	datac => \MUX_item|ALT_INV_saida_MUX[3]~0_combout\,
	datad => \RAM_item|ALT_INV_ram~176_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(7),
	cin => \ULA_item|Add0~26\,
	sumout => \ULA_item|Add0~29_sumout\);

\ULA_item|saida[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[7]~9_combout\ = (!\ULA_item|saida[4]~5_combout\ & (!\ULA_item|saida[0]~0_combout\ & ((\ULA_item|Add0~29_sumout\)))) # (\ULA_item|saida[4]~5_combout\ & (((!\ULA_item|saida[0]~0_combout\ & \ULA_item|Add0~29_sumout\)) # 
-- (\RAM_item|ram~176_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_item|ALT_INV_saida[4]~5_combout\,
	datab => \ULA_item|ALT_INV_saida[0]~0_combout\,
	datac => \RAM_item|ALT_INV_ram~176_combout\,
	datad => \ULA_item|ALT_INV_Add0~29_sumout\,
	combout => \ULA_item|saida[7]~9_combout\);

\REGA_item|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA_item|saida[7]~9_combout\,
	ena => \DECODER_item|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(7));

\RAM_item|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(7),
	ena => \RAM_item|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~56_q\);

\RAM_item|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(7),
	ena => \RAM_item|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~24_q\);

\RAM_item|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(7),
	ena => \RAM_item|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~120_q\);

\RAM_item|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(7),
	ena => \RAM_item|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~88_q\);

\RAM_item|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~174_combout\ = ( \ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~120_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~88_q\ ) ) ) # ( \ROM_item|memROM~6_combout\ & ( 
-- !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~56_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~56_q\,
	datab => \RAM_item|ALT_INV_ram~24_q\,
	datac => \RAM_item|ALT_INV_ram~120_q\,
	datad => \RAM_item|ALT_INV_ram~88_q\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~174_combout\);

\RAM_item|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(7),
	ena => \RAM_item|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~64_q\);

\RAM_item|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(7),
	ena => \RAM_item|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~32_q\);

\RAM_item|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(7),
	ena => \RAM_item|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~128_q\);

\RAM_item|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA_item|DOUT\(7),
	ena => \RAM_item|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~96_q\);

\RAM_item|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~175_combout\ = ( \ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~128_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( \ROM_item|memROM~7_combout\ & ( \RAM_item|ram~96_q\ ) ) ) # ( \ROM_item|memROM~6_combout\ & ( 
-- !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~64_q\ ) ) ) # ( !\ROM_item|memROM~6_combout\ & ( !\ROM_item|memROM~7_combout\ & ( \RAM_item|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~64_q\,
	datab => \RAM_item|ALT_INV_ram~32_q\,
	datac => \RAM_item|ALT_INV_ram~128_q\,
	datad => \RAM_item|ALT_INV_ram~96_q\,
	datae => \ROM_item|ALT_INV_memROM~6_combout\,
	dataf => \ROM_item|ALT_INV_memROM~7_combout\,
	combout => \RAM_item|ram~175_combout\);

\RAM_item|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~176_combout\ = ( \ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~175_combout\ ) ) ) # ( !\ROM_item|memROM~4_combout\ & ( !\ROM_item|memROM~5_combout\ & ( \RAM_item|ram~174_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~174_combout\,
	datab => \RAM_item|ALT_INV_ram~175_combout\,
	datae => \ROM_item|ALT_INV_memROM~4_combout\,
	dataf => \ROM_item|ALT_INV_memROM~5_combout\,
	combout => \RAM_item|ram~176_combout\);

\flag_zero_entrada~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag_zero_entrada~0_combout\ = ( \RAM_item|ram~176_combout\ & ( \ULA_item|Add0~29_sumout\ & ( (!\ULA_item|saida[4]~5_combout\ & \ULA_item|saida[0]~0_combout\) ) ) ) # ( !\RAM_item|ram~176_combout\ & ( \ULA_item|Add0~29_sumout\ & ( 
-- (\ULA_item|saida[0]~0_combout\ & ((!\ULA_item|saida[4]~5_combout\) # (!\RAM_item|ram~173_combout\))) ) ) ) # ( \RAM_item|ram~176_combout\ & ( !\ULA_item|Add0~29_sumout\ & ( (!\ULA_item|saida[4]~5_combout\ & ((!\ULA_item|Add0~25_sumout\) # 
-- (\ULA_item|saida[0]~0_combout\))) ) ) ) # ( !\RAM_item|ram~176_combout\ & ( !\ULA_item|Add0~29_sumout\ & ( (!\ULA_item|saida[4]~5_combout\ & (((!\ULA_item|Add0~25_sumout\)) # (\ULA_item|saida[0]~0_combout\))) # (\ULA_item|saida[4]~5_combout\ & 
-- (!\RAM_item|ram~173_combout\ & ((!\ULA_item|Add0~25_sumout\) # (\ULA_item|saida[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000110010101010100010001000110010001100100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_item|ALT_INV_saida[4]~5_combout\,
	datab => \ULA_item|ALT_INV_saida[0]~0_combout\,
	datac => \RAM_item|ALT_INV_ram~173_combout\,
	datad => \ULA_item|ALT_INV_Add0~25_sumout\,
	datae => \RAM_item|ALT_INV_ram~176_combout\,
	dataf => \ULA_item|ALT_INV_Add0~29_sumout\,
	combout => \flag_zero_entrada~0_combout\);

\flag_zero_entrada~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag_zero_entrada~1_combout\ = ( \RAM_item|ram~168_combout\ & ( \ULA_item|Add0~21_sumout\ & ( (!\ULA_item|saida[4]~5_combout\ & \ULA_item|saida[0]~0_combout\) ) ) ) # ( !\RAM_item|ram~168_combout\ & ( \ULA_item|Add0~21_sumout\ & ( 
-- (\ULA_item|saida[0]~0_combout\ & ((!\RAM_item|ram~165_combout\) # (!\ULA_item|saida[4]~5_combout\))) ) ) ) # ( \RAM_item|ram~168_combout\ & ( !\ULA_item|Add0~21_sumout\ & ( (!\ULA_item|saida[4]~5_combout\ & ((!\ULA_item|Add0~17_sumout\) # 
-- (\ULA_item|saida[0]~0_combout\))) ) ) ) # ( !\RAM_item|ram~168_combout\ & ( !\ULA_item|Add0~21_sumout\ & ( (!\RAM_item|ram~165_combout\ & (((!\ULA_item|Add0~17_sumout\) # (\ULA_item|saida[0]~0_combout\)))) # (\RAM_item|ram~165_combout\ & 
-- (!\ULA_item|saida[4]~5_combout\ & ((!\ULA_item|Add0~17_sumout\) # (\ULA_item|saida[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011101110110000001100110000000000111011100000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~165_combout\,
	datab => \ULA_item|ALT_INV_saida[4]~5_combout\,
	datac => \ULA_item|ALT_INV_Add0~17_sumout\,
	datad => \ULA_item|ALT_INV_saida[0]~0_combout\,
	datae => \RAM_item|ALT_INV_ram~168_combout\,
	dataf => \ULA_item|ALT_INV_Add0~21_sumout\,
	combout => \flag_zero_entrada~1_combout\);

\flag_zero_entrada~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag_zero_entrada~2_combout\ = ( \ULA_item|Add0~5_sumout\ & ( (\ULA_item|saida[0]~0_combout\ & (!\MUX_item|saida_MUX[0]~1_combout\ & !\MUX_item|saida_MUX[1]~2_combout\)) ) ) # ( !\ULA_item|Add0~5_sumout\ & ( (!\ULA_item|saida[0]~0_combout\ & 
-- (((!\ULA_item|Add0~1_sumout\)))) # (\ULA_item|saida[0]~0_combout\ & (!\MUX_item|saida_MUX[0]~1_combout\ & ((!\MUX_item|saida_MUX[1]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010010100000010001000000000011100100101000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_item|ALT_INV_saida[0]~0_combout\,
	datab => \MUX_item|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \ULA_item|ALT_INV_Add0~1_sumout\,
	datad => \MUX_item|ALT_INV_saida_MUX[1]~2_combout\,
	datae => \ULA_item|ALT_INV_Add0~5_sumout\,
	combout => \flag_zero_entrada~2_combout\);

\flag_zero_entrada~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag_zero_entrada~3_combout\ = ( \ULA_item|Add0~13_sumout\ & ( (\ULA_item|saida[0]~0_combout\ & (!\MUX_item|saida_MUX[2]~3_combout\ & !\MUX_item|saida_MUX[3]~4_combout\)) ) ) # ( !\ULA_item|Add0~13_sumout\ & ( (!\ULA_item|saida[0]~0_combout\ & 
-- (((!\ULA_item|Add0~9_sumout\)))) # (\ULA_item|saida[0]~0_combout\ & (!\MUX_item|saida_MUX[2]~3_combout\ & ((!\MUX_item|saida_MUX[3]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010010100000010001000000000011100100101000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_item|ALT_INV_saida[0]~0_combout\,
	datab => \MUX_item|ALT_INV_saida_MUX[2]~3_combout\,
	datac => \ULA_item|ALT_INV_Add0~9_sumout\,
	datad => \MUX_item|ALT_INV_saida_MUX[3]~4_combout\,
	datae => \ULA_item|ALT_INV_Add0~13_sumout\,
	combout => \flag_zero_entrada~3_combout\);

\FLAG_zero_item|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG_zero_item|DOUT~0_combout\ = ( \flag_zero_entrada~2_combout\ & ( \flag_zero_entrada~3_combout\ & ( (!\DECODER_item|saida~1_combout\ & (\FLAG_zero_item|DOUT~q\)) # (\DECODER_item|saida~1_combout\ & (((\flag_zero_entrada~0_combout\ & 
-- \flag_zero_entrada~1_combout\)))) ) ) ) # ( !\flag_zero_entrada~2_combout\ & ( \flag_zero_entrada~3_combout\ & ( (!\DECODER_item|saida~1_combout\ & \FLAG_zero_item|DOUT~q\) ) ) ) # ( \flag_zero_entrada~2_combout\ & ( !\flag_zero_entrada~3_combout\ & ( 
-- (!\DECODER_item|saida~1_combout\ & \FLAG_zero_item|DOUT~q\) ) ) ) # ( !\flag_zero_entrada~2_combout\ & ( !\flag_zero_entrada~3_combout\ & ( (!\DECODER_item|saida~1_combout\ & \FLAG_zero_item|DOUT~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida~1_combout\,
	datab => \FLAG_zero_item|ALT_INV_DOUT~q\,
	datac => \ALT_INV_flag_zero_entrada~0_combout\,
	datad => \ALT_INV_flag_zero_entrada~1_combout\,
	datae => \ALT_INV_flag_zero_entrada~2_combout\,
	dataf => \ALT_INV_flag_zero_entrada~3_combout\,
	combout => \FLAG_zero_item|DOUT~0_combout\);

\FLAG_zero_item|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FLAG_zero_item|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG_zero_item|DOUT~q\);

MUX_JMP_Sel : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP_Sel~combout\ = ( \FLAG_zero_item|DOUT~q\ & ( (\ROM_item|memROM~0_combout\ & (!\ROM_item|memROM~1_combout\ & !\ROM_item|memROM~3_combout\)) ) ) # ( !\FLAG_zero_item|DOUT~q\ & ( (\ROM_item|memROM~0_combout\ & (!\ROM_item|memROM~1_combout\ & 
-- (!\ROM_item|memROM~2_combout\ & !\ROM_item|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010001000000000001000000000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	datae => \FLAG_zero_item|ALT_INV_DOUT~q\,
	combout => \MUX_JMP_Sel~combout\);

\PC_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~13_sumout\,
	asdata => \ROM_item|memROM~7_combout\,
	sload => \MUX_JMP_Sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(3));

\ROM_item|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~6_combout\ = (!\PC_item|DOUT\(1) & (!\PC_item|DOUT\(0) $ (((!\PC_item|DOUT\(2) & \PC_item|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001001000100010000100100010001000010010001000100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~6_combout\);

\PC_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~9_sumout\,
	asdata => \ROM_item|memROM~6_combout\,
	sload => \MUX_JMP_Sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(2));

\ROM_item|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~5_combout\ = (\PC_item|DOUT\(0) & (\PC_item|DOUT\(1) & (!\PC_item|DOUT\(2) & \PC_item|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~5_combout\);

\PC_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~5_sumout\,
	asdata => \ROM_item|memROM~5_combout\,
	sload => \MUX_JMP_Sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(1));

\ROM_item|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~4_combout\ = (!\PC_item|DOUT\(1) & (!\PC_item|DOUT\(3) & (!\PC_item|DOUT\(0) $ (!\PC_item|DOUT\(2))))) # (\PC_item|DOUT\(1) & (\PC_item|DOUT\(0) & (!\PC_item|DOUT\(2) $ (!\PC_item|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~4_combout\);

\PC_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~1_sumout\,
	asdata => \ROM_item|memROM~4_combout\,
	sload => \MUX_JMP_Sel~combout\,
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

\PC_item|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \MUX_JMP_Sel~combout\,
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

\PC_item|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \MUX_JMP_Sel~combout\,
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

\PC_item|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \MUX_JMP_Sel~combout\,
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

\PC_item|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC_item|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \MUX_JMP_Sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(7));

\DECODER_item|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|Equal3~0_combout\ = (!\ROM_item|memROM~0_combout\ & (!\ROM_item|memROM~1_combout\ & (\ROM_item|memROM~2_combout\ & !\ROM_item|memROM~3_combout\)))

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
	combout => \DECODER_item|Equal3~0_combout\);

\DECODER_item|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[1]~0_combout\ = (\ROM_item|memROM~3_combout\ & (!\ROM_item|memROM~1_combout\ $ (((!\ROM_item|memROM~0_combout\ & !\ROM_item|memROM~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001101100000000000110110000000000011011000000000001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|saida[1]~0_combout\);

\DECODER_item|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida~5_combout\ = (\ROM_item|memROM~0_combout\ & (!\ROM_item|memROM~1_combout\ & (\ROM_item|memROM~2_combout\ & !\ROM_item|memROM~3_combout\)))

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
	combout => \DECODER_item|saida~5_combout\);

\DECODER_item|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|Equal2~0_combout\ = (\ROM_item|memROM~0_combout\ & (!\ROM_item|memROM~1_combout\ & (!\ROM_item|memROM~2_combout\ & !\ROM_item|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~0_combout\,
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~2_combout\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \DECODER_item|Equal2~0_combout\);

\flag_zero_entrada~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag_zero_entrada~4_combout\ = (!\flag_zero_entrada~0_combout\) # ((!\flag_zero_entrada~1_combout\) # ((!\flag_zero_entrada~2_combout\) # (!\flag_zero_entrada~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110111111111111111011111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag_zero_entrada~0_combout\,
	datab => \ALT_INV_flag_zero_entrada~1_combout\,
	datac => \ALT_INV_flag_zero_entrada~2_combout\,
	datad => \ALT_INV_flag_zero_entrada~3_combout\,
	combout => \flag_zero_entrada~4_combout\);

\MUX_item|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[5]~6_combout\ = (\MUX_item|saida_MUX[3]~0_combout\ & \RAM_item|ram~168_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_item|ALT_INV_saida_MUX[3]~0_combout\,
	datab => \RAM_item|ALT_INV_ram~168_combout\,
	combout => \MUX_item|saida_MUX[5]~6_combout\);

\MUX_item|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[6]~7_combout\ = (\MUX_item|saida_MUX[3]~0_combout\ & \RAM_item|ram~173_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_item|ALT_INV_saida_MUX[3]~0_combout\,
	datab => \RAM_item|ALT_INV_ram~173_combout\,
	combout => \MUX_item|saida_MUX[6]~7_combout\);

\MUX_item|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_item|saida_MUX[7]~8_combout\ = (\MUX_item|saida_MUX[3]~0_combout\ & \RAM_item|ram~176_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_item|ALT_INV_saida_MUX[3]~0_combout\,
	datab => \RAM_item|ALT_INV_ram~176_combout\,
	combout => \MUX_item|saida_MUX[7]~8_combout\);

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
END structure;


