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

-- DATE "09/05/2022 19:57:07"

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
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	REGA : OUT std_logic_vector(7 DOWNTO 0)
	);
END Ent1Aula3;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[5]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGA : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC_item|DOUT[0]~0_combout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~2\ : std_logic;
SIGNAL \incrementaPC_item|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~6\ : std_logic;
SIGNAL \incrementaPC_item|Add0~9_sumout\ : std_logic;
SIGNAL \PC_item|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC_item|Add0~10\ : std_logic;
SIGNAL \incrementaPC_item|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~14\ : std_logic;
SIGNAL \incrementaPC_item|Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~18\ : std_logic;
SIGNAL \incrementaPC_item|Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC_item|Add0~22\ : std_logic;
SIGNAL \incrementaPC_item|Add0~25_sumout\ : std_logic;
SIGNAL \PC_item|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \DECODER_item|saida[5]~0_combout\ : std_logic;
SIGNAL \ROM_item|memROM~0_combout\ : std_logic;
SIGNAL \ROM_item|memROM~2_combout\ : std_logic;
SIGNAL \ROM_item|memROM~1_combout\ : std_logic;
SIGNAL \DECODER_item|saida[3]~1_combout\ : std_logic;
SIGNAL \DECODER_item|Equal1~0_combout\ : std_logic;
SIGNAL \ROM_item|memROM~3_combout\ : std_logic;
SIGNAL \RAM_item|ram~90_combout\ : std_logic;
SIGNAL \RAM_item|ram~49_q\ : std_logic;
SIGNAL \RAM_item|ram~89_combout\ : std_logic;
SIGNAL \RAM_item|ram~41_q\ : std_logic;
SIGNAL \ROM_item|memROM~4_combout\ : std_logic;
SIGNAL \RAM_item|ram~81_combout\ : std_logic;
SIGNAL \DECODER_item|saida~2_combout\ : std_logic;
SIGNAL \ULA_item|Add0~34_cout\ : std_logic;
SIGNAL \ULA_item|Add0~1_sumout\ : std_logic;
SIGNAL \ULA_item|saida[0]~0_combout\ : std_logic;
SIGNAL \REGA_item|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM_item|ram~42_q\ : std_logic;
SIGNAL \REGA_item|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM_item|ram~50_q\ : std_logic;
SIGNAL \RAM_item|ram~82_combout\ : std_logic;
SIGNAL \ULA_item|Add0~2\ : std_logic;
SIGNAL \ULA_item|Add0~5_sumout\ : std_logic;
SIGNAL \ULA_item|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM_item|ram~43_q\ : std_logic;
SIGNAL \RAM_item|ram~51_q\ : std_logic;
SIGNAL \RAM_item|ram~83_combout\ : std_logic;
SIGNAL \REGA_item|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA_item|Add0~6\ : std_logic;
SIGNAL \ULA_item|Add0~9_sumout\ : std_logic;
SIGNAL \ULA_item|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM_item|ram~44_q\ : std_logic;
SIGNAL \RAM_item|ram~52_q\ : std_logic;
SIGNAL \RAM_item|ram~84_combout\ : std_logic;
SIGNAL \DECODER_item|saida[2]~3_combout\ : std_logic;
SIGNAL \ULA_item|Add0~10\ : std_logic;
SIGNAL \ULA_item|Add0~13_sumout\ : std_logic;
SIGNAL \ULA_item|saida[3]~7_combout\ : std_logic;
SIGNAL \REGA_item|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM_item|ram~45_q\ : std_logic;
SIGNAL \RAM_item|ram~53_q\ : std_logic;
SIGNAL \RAM_item|ram~85_combout\ : std_logic;
SIGNAL \ULA_item|Add0~14\ : std_logic;
SIGNAL \ULA_item|Add0~17_sumout\ : std_logic;
SIGNAL \ULA_item|saida[4]~6_combout\ : std_logic;
SIGNAL \RAM_item|ram~54_q\ : std_logic;
SIGNAL \RAM_item|ram~46_q\ : std_logic;
SIGNAL \RAM_item|ram~86_combout\ : std_logic;
SIGNAL \ULA_item|Add0~18\ : std_logic;
SIGNAL \ULA_item|Add0~21_sumout\ : std_logic;
SIGNAL \ULA_item|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM_item|ram~47_q\ : std_logic;
SIGNAL \RAM_item|ram~55_q\ : std_logic;
SIGNAL \RAM_item|ram~87_combout\ : std_logic;
SIGNAL \ULA_item|Add0~22\ : std_logic;
SIGNAL \ULA_item|Add0~25_sumout\ : std_logic;
SIGNAL \ULA_item|saida[6]~4_combout\ : std_logic;
SIGNAL \REGA_item|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM_item|ram~48feeder_combout\ : std_logic;
SIGNAL \RAM_item|ram~48_q\ : std_logic;
SIGNAL \RAM_item|ram~56feeder_combout\ : std_logic;
SIGNAL \RAM_item|ram~56_q\ : std_logic;
SIGNAL \RAM_item|ram~88_combout\ : std_logic;
SIGNAL \ULA_item|Add0~26\ : std_logic;
SIGNAL \ULA_item|Add0~29_sumout\ : std_logic;
SIGNAL \ULA_item|saida[7]~3_combout\ : std_logic;
SIGNAL \PC_item|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA_item|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM_item|ALT_INV_ram~88_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~87_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~86_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~85_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~84_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~83_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~82_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida[3]~1_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~81_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM_item|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida[5]~0_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM_item|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REGA_item|ALT_INV_DOUT\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PC_item|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA_item|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA_item|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \REGA_item|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA_item|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_saida[2]~3_combout\ : std_logic;
SIGNAL \DECODER_item|ALT_INV_Equal1~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
REGA <= ww_REGA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM_item|ALT_INV_ram~88_combout\ <= NOT \RAM_item|ram~88_combout\;
\RAM_item|ALT_INV_ram~48_q\ <= NOT \RAM_item|ram~48_q\;
\RAM_item|ALT_INV_ram~56_q\ <= NOT \RAM_item|ram~56_q\;
\RAM_item|ALT_INV_ram~87_combout\ <= NOT \RAM_item|ram~87_combout\;
\RAM_item|ALT_INV_ram~47_q\ <= NOT \RAM_item|ram~47_q\;
\RAM_item|ALT_INV_ram~55_q\ <= NOT \RAM_item|ram~55_q\;
\RAM_item|ALT_INV_ram~86_combout\ <= NOT \RAM_item|ram~86_combout\;
\RAM_item|ALT_INV_ram~46_q\ <= NOT \RAM_item|ram~46_q\;
\RAM_item|ALT_INV_ram~54_q\ <= NOT \RAM_item|ram~54_q\;
\RAM_item|ALT_INV_ram~85_combout\ <= NOT \RAM_item|ram~85_combout\;
\RAM_item|ALT_INV_ram~45_q\ <= NOT \RAM_item|ram~45_q\;
\RAM_item|ALT_INV_ram~53_q\ <= NOT \RAM_item|ram~53_q\;
\RAM_item|ALT_INV_ram~84_combout\ <= NOT \RAM_item|ram~84_combout\;
\RAM_item|ALT_INV_ram~44_q\ <= NOT \RAM_item|ram~44_q\;
\RAM_item|ALT_INV_ram~52_q\ <= NOT \RAM_item|ram~52_q\;
\RAM_item|ALT_INV_ram~83_combout\ <= NOT \RAM_item|ram~83_combout\;
\RAM_item|ALT_INV_ram~43_q\ <= NOT \RAM_item|ram~43_q\;
\RAM_item|ALT_INV_ram~51_q\ <= NOT \RAM_item|ram~51_q\;
\RAM_item|ALT_INV_ram~82_combout\ <= NOT \RAM_item|ram~82_combout\;
\RAM_item|ALT_INV_ram~42_q\ <= NOT \RAM_item|ram~42_q\;
\RAM_item|ALT_INV_ram~50_q\ <= NOT \RAM_item|ram~50_q\;
\DECODER_item|ALT_INV_saida[3]~1_combout\ <= NOT \DECODER_item|saida[3]~1_combout\;
\RAM_item|ALT_INV_ram~81_combout\ <= NOT \RAM_item|ram~81_combout\;
\ROM_item|ALT_INV_memROM~4_combout\ <= NOT \ROM_item|memROM~4_combout\;
\RAM_item|ALT_INV_ram~41_q\ <= NOT \RAM_item|ram~41_q\;
\RAM_item|ALT_INV_ram~49_q\ <= NOT \RAM_item|ram~49_q\;
\ROM_item|ALT_INV_memROM~3_combout\ <= NOT \ROM_item|memROM~3_combout\;
\DECODER_item|ALT_INV_saida[5]~0_combout\ <= NOT \DECODER_item|saida[5]~0_combout\;
\ROM_item|ALT_INV_memROM~2_combout\ <= NOT \ROM_item|memROM~2_combout\;
\ROM_item|ALT_INV_memROM~1_combout\ <= NOT \ROM_item|memROM~1_combout\;
\ROM_item|ALT_INV_memROM~0_combout\ <= NOT \ROM_item|memROM~0_combout\;
\REGA_item|ALT_INV_DOUT\(6) <= NOT \REGA_item|DOUT\(6);
\REGA_item|ALT_INV_DOUT\(5) <= NOT \REGA_item|DOUT\(5);
\REGA_item|ALT_INV_DOUT\(4) <= NOT \REGA_item|DOUT\(4);
\REGA_item|ALT_INV_DOUT\(3) <= NOT \REGA_item|DOUT\(3);
\REGA_item|ALT_INV_DOUT\(1) <= NOT \REGA_item|DOUT\(1);
\REGA_item|ALT_INV_DOUT\(0) <= NOT \REGA_item|DOUT\(0);
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
\REGA_item|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \REGA_item|DOUT[7]~DUPLICATE_q\;
\REGA_item|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \REGA_item|DOUT[2]~DUPLICATE_q\;
\PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC_item|DOUT[3]~DUPLICATE_q\;
\PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC_item|DOUT[2]~DUPLICATE_q\;
\DECODER_item|ALT_INV_saida[2]~3_combout\ <= NOT \DECODER_item|saida[2]~3_combout\;
\DECODER_item|ALT_INV_Equal1~0_combout\ <= NOT \DECODER_item|Equal1~0_combout\;

-- Location: IOOBUF_X0_Y19_N56
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

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X0_Y18_N79
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

-- Location: IOOBUF_X0_Y18_N62
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_item|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X0_Y21_N56
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

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X0_Y21_N39
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

-- Location: IOOBUF_X0_Y21_N22
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

-- Location: IOOBUF_X10_Y0_N42
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X54_Y16_N5
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y20_N5
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X11_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X12_Y0_N2
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X10_Y0_N59
\REGA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REGA(0));

-- Location: IOOBUF_X54_Y16_N56
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

-- Location: IOOBUF_X0_Y19_N22
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

-- Location: IOOBUF_X0_Y18_N96
\REGA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA_item|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REGA(3));

-- Location: IOOBUF_X0_Y20_N56
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

-- Location: IOOBUF_X0_Y20_N22
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

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOIBUF_X54_Y18_N61
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: LABCELL_X5_Y12_N33
\PC_item|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_item|DOUT[0]~0_combout\ = !\PC_item|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_item|ALT_INV_DOUT\(0),
	combout => \PC_item|DOUT[0]~0_combout\);

-- Location: FF_X6_Y12_N56
\PC_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \PC_item|DOUT[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(0));

-- Location: LABCELL_X6_Y12_N30
\incrementaPC_item|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~1_sumout\ = SUM(( \PC_item|DOUT\(1) ) + ( \PC_item|DOUT\(0) ) + ( !VCC ))
-- \incrementaPC_item|Add0~2\ = CARRY(( \PC_item|DOUT\(1) ) + ( \PC_item|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC_item|ALT_INV_DOUT\(0),
	datad => \PC_item|ALT_INV_DOUT\(1),
	cin => GND,
	sumout => \incrementaPC_item|Add0~1_sumout\,
	cout => \incrementaPC_item|Add0~2\);

-- Location: FF_X6_Y12_N32
\PC_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC_item|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(1));

-- Location: LABCELL_X6_Y12_N33
\incrementaPC_item|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~5_sumout\ = SUM(( \PC_item|DOUT\(2) ) + ( GND ) + ( \incrementaPC_item|Add0~2\ ))
-- \incrementaPC_item|Add0~6\ = CARRY(( \PC_item|DOUT\(2) ) + ( GND ) + ( \incrementaPC_item|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT\(2),
	cin => \incrementaPC_item|Add0~2\,
	sumout => \incrementaPC_item|Add0~5_sumout\,
	cout => \incrementaPC_item|Add0~6\);

-- Location: FF_X6_Y12_N35
\PC_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC_item|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(2));

-- Location: FF_X6_Y12_N37
\PC_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC_item|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(3));

-- Location: LABCELL_X6_Y12_N36
\incrementaPC_item|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~9_sumout\ = SUM(( \PC_item|DOUT\(3) ) + ( GND ) + ( \incrementaPC_item|Add0~6\ ))
-- \incrementaPC_item|Add0~10\ = CARRY(( \PC_item|DOUT\(3) ) + ( GND ) + ( \incrementaPC_item|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT\(3),
	cin => \incrementaPC_item|Add0~6\,
	sumout => \incrementaPC_item|Add0~9_sumout\,
	cout => \incrementaPC_item|Add0~10\);

-- Location: FF_X6_Y12_N38
\PC_item|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC_item|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y12_N39
\incrementaPC_item|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~13_sumout\ = SUM(( \PC_item|DOUT\(4) ) + ( GND ) + ( \incrementaPC_item|Add0~10\ ))
-- \incrementaPC_item|Add0~14\ = CARRY(( \PC_item|DOUT\(4) ) + ( GND ) + ( \incrementaPC_item|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT\(4),
	cin => \incrementaPC_item|Add0~10\,
	sumout => \incrementaPC_item|Add0~13_sumout\,
	cout => \incrementaPC_item|Add0~14\);

-- Location: FF_X6_Y12_N40
\PC_item|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC_item|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(4));

-- Location: LABCELL_X6_Y12_N42
\incrementaPC_item|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~17_sumout\ = SUM(( \PC_item|DOUT\(5) ) + ( GND ) + ( \incrementaPC_item|Add0~14\ ))
-- \incrementaPC_item|Add0~18\ = CARRY(( \PC_item|DOUT\(5) ) + ( GND ) + ( \incrementaPC_item|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT\(5),
	cin => \incrementaPC_item|Add0~14\,
	sumout => \incrementaPC_item|Add0~17_sumout\,
	cout => \incrementaPC_item|Add0~18\);

-- Location: FF_X6_Y12_N44
\PC_item|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC_item|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(5));

-- Location: LABCELL_X6_Y12_N45
\incrementaPC_item|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~21_sumout\ = SUM(( \PC_item|DOUT\(6) ) + ( GND ) + ( \incrementaPC_item|Add0~18\ ))
-- \incrementaPC_item|Add0~22\ = CARRY(( \PC_item|DOUT\(6) ) + ( GND ) + ( \incrementaPC_item|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT\(6),
	cin => \incrementaPC_item|Add0~18\,
	sumout => \incrementaPC_item|Add0~21_sumout\,
	cout => \incrementaPC_item|Add0~22\);

-- Location: FF_X6_Y12_N46
\PC_item|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC_item|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(6));

-- Location: LABCELL_X6_Y12_N48
\incrementaPC_item|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC_item|Add0~25_sumout\ = SUM(( \PC_item|DOUT\(7) ) + ( GND ) + ( \incrementaPC_item|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT\(7),
	cin => \incrementaPC_item|Add0~22\,
	sumout => \incrementaPC_item|Add0~25_sumout\);

-- Location: FF_X6_Y12_N49
\PC_item|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC_item|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT\(7));

-- Location: FF_X6_Y12_N34
\PC_item|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC_item|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_item|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y12_N24
\DECODER_item|saida[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[5]~0_combout\ = ( !\PC_item|DOUT\(0) & ( (!\PC_item|DOUT\(3) & !\PC_item|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(3),
	datac => \PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC_item|ALT_INV_DOUT\(0),
	combout => \DECODER_item|saida[5]~0_combout\);

-- Location: LABCELL_X5_Y12_N30
\ROM_item|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~0_combout\ = ( \PC_item|DOUT\(1) & ( (!\PC_item|DOUT[3]~DUPLICATE_q\ & (!\PC_item|DOUT\(0) $ (!\PC_item|DOUT\(2)))) ) ) # ( !\PC_item|DOUT\(1) & ( (\PC_item|DOUT\(0) & (!\PC_item|DOUT\(2) & !\PC_item|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_item|ALT_INV_DOUT\(0),
	datac => \PC_item|ALT_INV_DOUT\(2),
	datad => \PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC_item|ALT_INV_DOUT\(1),
	combout => \ROM_item|memROM~0_combout\);

-- Location: LABCELL_X6_Y12_N57
\ROM_item|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~2_combout\ = ( \PC_item|DOUT\(2) & ( (!\PC_item|DOUT[3]~DUPLICATE_q\ & ((!\PC_item|DOUT\(0)) # (!\PC_item|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datac => \PC_item|ALT_INV_DOUT\(1),
	datad => \PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC_item|ALT_INV_DOUT\(2),
	combout => \ROM_item|memROM~2_combout\);

-- Location: LABCELL_X6_Y12_N12
\ROM_item|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~1_combout\ = ( !\PC_item|DOUT\(2) & ( !\PC_item|DOUT[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC_item|ALT_INV_DOUT\(2),
	combout => \ROM_item|memROM~1_combout\);

-- Location: LABCELL_X5_Y12_N51
\DECODER_item|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[3]~1_combout\ = ( !\ROM_item|memROM~2_combout\ & ( \ROM_item|memROM~1_combout\ & ( !\ROM_item|memROM~0_combout\ ) ) ) # ( !\ROM_item|memROM~2_combout\ & ( !\ROM_item|memROM~1_combout\ & ( \ROM_item|memROM~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_item|ALT_INV_memROM~0_combout\,
	datae => \ROM_item|ALT_INV_memROM~2_combout\,
	dataf => \ROM_item|ALT_INV_memROM~1_combout\,
	combout => \DECODER_item|saida[3]~1_combout\);

-- Location: LABCELL_X6_Y12_N3
\DECODER_item|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|Equal1~0_combout\ = ( !\PC_item|DOUT\(3) & ( (\PC_item|DOUT\(2) & !\PC_item|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(2),
	datac => \PC_item|ALT_INV_DOUT\(1),
	dataf => \PC_item|ALT_INV_DOUT\(3),
	combout => \DECODER_item|Equal1~0_combout\);

-- Location: LABCELL_X6_Y12_N6
\ROM_item|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~3_combout\ = ( !\PC_item|DOUT\(3) & ( !\PC_item|DOUT\(1) $ (!\PC_item|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT\(2),
	dataf => \PC_item|ALT_INV_DOUT\(3),
	combout => \ROM_item|memROM~3_combout\);

-- Location: LABCELL_X5_Y12_N42
\RAM_item|ram~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~90_combout\ = ( !\PC_item|DOUT[3]~DUPLICATE_q\ & ( !\PC_item|DOUT\(2) & ( (\PC_item|DOUT\(0) & !\PC_item|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_item|ALT_INV_DOUT\(0),
	datac => \PC_item|ALT_INV_DOUT\(1),
	datae => \PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC_item|ALT_INV_DOUT\(2),
	combout => \RAM_item|ram~90_combout\);

-- Location: FF_X6_Y12_N5
\RAM_item|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA_item|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM_item|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~49_q\);

-- Location: LABCELL_X5_Y12_N3
\RAM_item|ram~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~89_combout\ = ( !\PC_item|DOUT[3]~DUPLICATE_q\ & ( \PC_item|DOUT\(1) & ( (!\PC_item|DOUT\(2) & \PC_item|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(2),
	datac => \PC_item|ALT_INV_DOUT\(0),
	datae => \PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC_item|ALT_INV_DOUT\(1),
	combout => \RAM_item|ram~89_combout\);

-- Location: FF_X6_Y12_N20
\RAM_item|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA_item|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM_item|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~41_q\);

-- Location: LABCELL_X6_Y12_N24
\ROM_item|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_item|memROM~4_combout\ = ( \PC_item|DOUT\(2) & ( ((!\PC_item|DOUT\(1)) # (\PC_item|DOUT[3]~DUPLICATE_q\)) # (\PC_item|DOUT\(0)) ) ) # ( !\PC_item|DOUT\(2) & ( (\PC_item|DOUT[3]~DUPLICATE_q\) # (\PC_item|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT\(1),
	datac => \PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC_item|ALT_INV_DOUT\(2),
	combout => \ROM_item|memROM~4_combout\);

-- Location: LABCELL_X6_Y12_N18
\RAM_item|ram~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~81_combout\ = ( \ROM_item|memROM~4_combout\ & ( (\ROM_item|memROM~3_combout\ & \RAM_item|ram~41_q\) ) ) # ( !\ROM_item|memROM~4_combout\ & ( (!\ROM_item|memROM~3_combout\ & \RAM_item|ram~49_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_item|ALT_INV_memROM~3_combout\,
	datac => \RAM_item|ALT_INV_ram~49_q\,
	datad => \RAM_item|ALT_INV_ram~41_q\,
	dataf => \ROM_item|ALT_INV_memROM~4_combout\,
	combout => \RAM_item|ram~81_combout\);

-- Location: LABCELL_X6_Y12_N54
\DECODER_item|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida~2_combout\ = ( \ROM_item|memROM~2_combout\ & ( !\ROM_item|memROM~1_combout\ ) ) # ( !\ROM_item|memROM~2_combout\ & ( !\ROM_item|memROM~1_combout\ $ (!\ROM_item|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_item|ALT_INV_memROM~1_combout\,
	datac => \ROM_item|ALT_INV_memROM~0_combout\,
	dataf => \ROM_item|ALT_INV_memROM~2_combout\,
	combout => \DECODER_item|saida~2_combout\);

-- Location: FF_X5_Y12_N26
\REGA_item|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA_item|saida[0]~0_combout\,
	ena => \DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(0));

-- Location: LABCELL_X7_Y12_N30
\ULA_item|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~34_cout\ = CARRY(( !\DECODER_item|Equal1~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER_item|ALT_INV_Equal1~0_combout\,
	cin => GND,
	cout => \ULA_item|Add0~34_cout\);

-- Location: LABCELL_X7_Y12_N33
\ULA_item|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~1_sumout\ = SUM(( !\DECODER_item|Equal1~0_combout\ $ (((!\DECODER_item|saida[5]~0_combout\ & ((\RAM_item|ram~81_combout\))) # (\DECODER_item|saida[5]~0_combout\ & (\ROM_item|memROM~3_combout\)))) ) + ( \REGA_item|DOUT\(0) ) + ( 
-- \ULA_item|Add0~34_cout\ ))
-- \ULA_item|Add0~2\ = CARRY(( !\DECODER_item|Equal1~0_combout\ $ (((!\DECODER_item|saida[5]~0_combout\ & ((\RAM_item|ram~81_combout\))) # (\DECODER_item|saida[5]~0_combout\ & (\ROM_item|memROM~3_combout\)))) ) + ( \REGA_item|DOUT\(0) ) + ( 
-- \ULA_item|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[5]~0_combout\,
	datab => \DECODER_item|ALT_INV_Equal1~0_combout\,
	datac => \ROM_item|ALT_INV_memROM~3_combout\,
	datad => \RAM_item|ALT_INV_ram~81_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(0),
	cin => \ULA_item|Add0~34_cout\,
	sumout => \ULA_item|Add0~1_sumout\,
	cout => \ULA_item|Add0~2\);

-- Location: LABCELL_X5_Y12_N24
\ULA_item|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[0]~0_combout\ = ( \ROM_item|memROM~3_combout\ & ( \RAM_item|ram~81_combout\ & ( (\ULA_item|Add0~1_sumout\) # (\DECODER_item|saida[3]~1_combout\) ) ) ) # ( !\ROM_item|memROM~3_combout\ & ( \RAM_item|ram~81_combout\ & ( 
-- (!\DECODER_item|saida[3]~1_combout\ & ((\ULA_item|Add0~1_sumout\))) # (\DECODER_item|saida[3]~1_combout\ & (!\DECODER_item|saida[5]~0_combout\)) ) ) ) # ( \ROM_item|memROM~3_combout\ & ( !\RAM_item|ram~81_combout\ & ( (!\DECODER_item|saida[3]~1_combout\ & 
-- ((\ULA_item|Add0~1_sumout\))) # (\DECODER_item|saida[3]~1_combout\ & (\DECODER_item|saida[5]~0_combout\)) ) ) ) # ( !\ROM_item|memROM~3_combout\ & ( !\RAM_item|ram~81_combout\ & ( (!\DECODER_item|saida[3]~1_combout\ & \ULA_item|Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000001011111010100001010111110100000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[5]~0_combout\,
	datac => \DECODER_item|ALT_INV_saida[3]~1_combout\,
	datad => \ULA_item|ALT_INV_Add0~1_sumout\,
	datae => \ROM_item|ALT_INV_memROM~3_combout\,
	dataf => \RAM_item|ALT_INV_ram~81_combout\,
	combout => \ULA_item|saida[0]~0_combout\);

-- Location: FF_X5_Y12_N25
\REGA_item|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA_item|saida[0]~0_combout\,
	ena => \DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X7_Y12_N55
\RAM_item|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA_item|DOUT\(1),
	sload => VCC,
	ena => \RAM_item|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~42_q\);

-- Location: FF_X7_Y12_N23
\REGA_item|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA_item|saida[1]~1_combout\,
	ena => \DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X7_Y12_N29
\RAM_item|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA_item|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM_item|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~50_q\);

-- Location: LABCELL_X7_Y12_N27
\RAM_item|ram~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~82_combout\ = ( \ROM_item|memROM~3_combout\ & ( (\RAM_item|ram~42_q\ & \ROM_item|memROM~4_combout\) ) ) # ( !\ROM_item|memROM~3_combout\ & ( (!\ROM_item|memROM~4_combout\ & \RAM_item|ram~50_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM_item|ALT_INV_ram~42_q\,
	datac => \ROM_item|ALT_INV_memROM~4_combout\,
	datad => \RAM_item|ALT_INV_ram~50_q\,
	dataf => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \RAM_item|ram~82_combout\);

-- Location: LABCELL_X7_Y12_N36
\ULA_item|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~5_sumout\ = SUM(( !\DECODER_item|Equal1~0_combout\ $ (((!\DECODER_item|saida[5]~0_combout\ & ((\RAM_item|ram~82_combout\))) # (\DECODER_item|saida[5]~0_combout\ & (\ROM_item|memROM~3_combout\)))) ) + ( \REGA_item|DOUT\(1) ) + ( 
-- \ULA_item|Add0~2\ ))
-- \ULA_item|Add0~6\ = CARRY(( !\DECODER_item|Equal1~0_combout\ $ (((!\DECODER_item|saida[5]~0_combout\ & ((\RAM_item|ram~82_combout\))) # (\DECODER_item|saida[5]~0_combout\ & (\ROM_item|memROM~3_combout\)))) ) + ( \REGA_item|DOUT\(1) ) + ( \ULA_item|Add0~2\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[5]~0_combout\,
	datab => \DECODER_item|ALT_INV_Equal1~0_combout\,
	datac => \ROM_item|ALT_INV_memROM~3_combout\,
	datad => \RAM_item|ALT_INV_ram~82_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(1),
	cin => \ULA_item|Add0~2\,
	sumout => \ULA_item|Add0~5_sumout\,
	cout => \ULA_item|Add0~6\);

-- Location: LABCELL_X7_Y12_N21
\ULA_item|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[1]~1_combout\ = ( \ROM_item|memROM~3_combout\ & ( (!\DECODER_item|saida[3]~1_combout\ & (((\ULA_item|Add0~5_sumout\)))) # (\DECODER_item|saida[3]~1_combout\ & (((\RAM_item|ram~82_combout\)) # (\DECODER_item|saida[5]~0_combout\))) ) ) # ( 
-- !\ROM_item|memROM~3_combout\ & ( (!\DECODER_item|saida[3]~1_combout\ & (((\ULA_item|Add0~5_sumout\)))) # (\DECODER_item|saida[3]~1_combout\ & (!\DECODER_item|saida[5]~0_combout\ & (\RAM_item|ram~82_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[3]~1_combout\,
	datab => \DECODER_item|ALT_INV_saida[5]~0_combout\,
	datac => \RAM_item|ALT_INV_ram~82_combout\,
	datad => \ULA_item|ALT_INV_Add0~5_sumout\,
	dataf => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \ULA_item|saida[1]~1_combout\);

-- Location: FF_X7_Y12_N22
\REGA_item|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA_item|saida[1]~1_combout\,
	ena => \DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(1));

-- Location: FF_X7_Y12_N32
\RAM_item|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA_item|DOUT\(2),
	sload => VCC,
	ena => \RAM_item|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~43_q\);

-- Location: FF_X6_Y12_N11
\RAM_item|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA_item|DOUT\(2),
	sload => VCC,
	ena => \RAM_item|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~51_q\);

-- Location: LABCELL_X6_Y12_N9
\RAM_item|ram~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~83_combout\ = ( \ROM_item|memROM~4_combout\ & ( (\RAM_item|ram~43_q\ & \ROM_item|memROM~3_combout\) ) ) # ( !\ROM_item|memROM~4_combout\ & ( (!\ROM_item|memROM~3_combout\ & \RAM_item|ram~51_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~43_q\,
	datac => \ROM_item|ALT_INV_memROM~3_combout\,
	datad => \RAM_item|ALT_INV_ram~51_q\,
	dataf => \ROM_item|ALT_INV_memROM~4_combout\,
	combout => \RAM_item|ram~83_combout\);

-- Location: FF_X7_Y12_N20
\REGA_item|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA_item|saida[2]~2_combout\,
	ena => \DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y12_N39
\ULA_item|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~9_sumout\ = SUM(( !\DECODER_item|Equal1~0_combout\ $ (((!\DECODER_item|saida[5]~0_combout\ & ((\RAM_item|ram~83_combout\))) # (\DECODER_item|saida[5]~0_combout\ & (!\ROM_item|memROM~4_combout\)))) ) + ( \REGA_item|DOUT[2]~DUPLICATE_q\ ) + ( 
-- \ULA_item|Add0~6\ ))
-- \ULA_item|Add0~10\ = CARRY(( !\DECODER_item|Equal1~0_combout\ $ (((!\DECODER_item|saida[5]~0_combout\ & ((\RAM_item|ram~83_combout\))) # (\DECODER_item|saida[5]~0_combout\ & (!\ROM_item|memROM~4_combout\)))) ) + ( \REGA_item|DOUT[2]~DUPLICATE_q\ ) + ( 
-- \ULA_item|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001001110000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[5]~0_combout\,
	datab => \DECODER_item|ALT_INV_Equal1~0_combout\,
	datac => \ROM_item|ALT_INV_memROM~4_combout\,
	datad => \RAM_item|ALT_INV_ram~83_combout\,
	dataf => \REGA_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \ULA_item|Add0~6\,
	sumout => \ULA_item|Add0~9_sumout\,
	cout => \ULA_item|Add0~10\);

-- Location: LABCELL_X7_Y12_N18
\ULA_item|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[2]~2_combout\ = ( \ROM_item|memROM~4_combout\ & ( (!\DECODER_item|saida[3]~1_combout\ & (((\ULA_item|Add0~9_sumout\)))) # (\DECODER_item|saida[3]~1_combout\ & (!\DECODER_item|saida[5]~0_combout\ & (\RAM_item|ram~83_combout\))) ) ) # ( 
-- !\ROM_item|memROM~4_combout\ & ( (!\DECODER_item|saida[3]~1_combout\ & (((\ULA_item|Add0~9_sumout\)))) # (\DECODER_item|saida[3]~1_combout\ & (((\RAM_item|ram~83_combout\)) # (\DECODER_item|saida[5]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010110111111000101011011111100000100101011100000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[3]~1_combout\,
	datab => \DECODER_item|ALT_INV_saida[5]~0_combout\,
	datac => \RAM_item|ALT_INV_ram~83_combout\,
	datad => \ULA_item|ALT_INV_Add0~9_sumout\,
	dataf => \ROM_item|ALT_INV_memROM~4_combout\,
	combout => \ULA_item|saida[2]~2_combout\);

-- Location: FF_X7_Y12_N19
\REGA_item|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA_item|saida[2]~2_combout\,
	ena => \DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(2));

-- Location: FF_X7_Y12_N1
\REGA_item|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA_item|saida[3]~7_combout\,
	ena => \DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(3));

-- Location: FF_X6_Y12_N23
\RAM_item|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA_item|DOUT\(3),
	sload => VCC,
	ena => \RAM_item|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~44_q\);

-- Location: FF_X6_Y12_N2
\RAM_item|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA_item|DOUT\(3),
	sload => VCC,
	ena => \RAM_item|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~52_q\);

-- Location: LABCELL_X6_Y12_N0
\RAM_item|ram~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~84_combout\ = ( \ROM_item|memROM~3_combout\ & ( (\RAM_item|ram~44_q\ & \ROM_item|memROM~4_combout\) ) ) # ( !\ROM_item|memROM~3_combout\ & ( (!\ROM_item|memROM~4_combout\ & \RAM_item|ram~52_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM_item|ALT_INV_ram~44_q\,
	datac => \ROM_item|ALT_INV_memROM~4_combout\,
	datad => \RAM_item|ALT_INV_ram~52_q\,
	dataf => \ROM_item|ALT_INV_memROM~3_combout\,
	combout => \RAM_item|ram~84_combout\);

-- Location: LABCELL_X6_Y12_N27
\DECODER_item|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_item|saida[2]~3_combout\ = ( !\ROM_item|memROM~2_combout\ & ( !\ROM_item|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_item|ALT_INV_memROM~1_combout\,
	dataf => \ROM_item|ALT_INV_memROM~2_combout\,
	combout => \DECODER_item|saida[2]~3_combout\);

-- Location: LABCELL_X7_Y12_N42
\ULA_item|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~13_sumout\ = SUM(( !\DECODER_item|Equal1~0_combout\ $ (((\RAM_item|ram~84_combout\ & ((!\DECODER_item|saida[5]~0_combout\) # (\DECODER_item|saida[2]~3_combout\))))) ) + ( \REGA_item|DOUT\(3) ) + ( \ULA_item|Add0~10\ ))
-- \ULA_item|Add0~14\ = CARRY(( !\DECODER_item|Equal1~0_combout\ $ (((\RAM_item|ram~84_combout\ & ((!\DECODER_item|saida[5]~0_combout\) # (\DECODER_item|saida[2]~3_combout\))))) ) + ( \REGA_item|DOUT\(3) ) + ( \ULA_item|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100011011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[5]~0_combout\,
	datab => \DECODER_item|ALT_INV_Equal1~0_combout\,
	datac => \RAM_item|ALT_INV_ram~84_combout\,
	datad => \DECODER_item|ALT_INV_saida[2]~3_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(3),
	cin => \ULA_item|Add0~10\,
	sumout => \ULA_item|Add0~13_sumout\,
	cout => \ULA_item|Add0~14\);

-- Location: LABCELL_X7_Y12_N0
\ULA_item|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[3]~7_combout\ = ( \PC_item|DOUT[3]~DUPLICATE_q\ & ( \ULA_item|Add0~13_sumout\ ) ) # ( !\PC_item|DOUT[3]~DUPLICATE_q\ & ( (\ULA_item|Add0~13_sumout\ & ((\PC_item|DOUT[2]~DUPLICATE_q\) # (\PC_item|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_item|ALT_INV_Add0~13_sumout\,
	datac => \PC_item|ALT_INV_DOUT\(0),
	datad => \PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ULA_item|saida[3]~7_combout\);

-- Location: FF_X7_Y12_N2
\REGA_item|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA_item|saida[3]~7_combout\,
	ena => \DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X7_Y12_N43
\RAM_item|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA_item|DOUT\(4),
	sload => VCC,
	ena => \RAM_item|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~45_q\);

-- Location: FF_X7_Y12_N25
\RAM_item|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA_item|DOUT\(4),
	sload => VCC,
	ena => \RAM_item|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~53_q\);

-- Location: LABCELL_X7_Y12_N9
\RAM_item|ram~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~85_combout\ = ( \ROM_item|memROM~4_combout\ & ( (\RAM_item|ram~45_q\ & \ROM_item|memROM~3_combout\) ) ) # ( !\ROM_item|memROM~4_combout\ & ( (\RAM_item|ram~53_q\ & !\ROM_item|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM_item|ALT_INV_ram~45_q\,
	datac => \RAM_item|ALT_INV_ram~53_q\,
	datad => \ROM_item|ALT_INV_memROM~3_combout\,
	dataf => \ROM_item|ALT_INV_memROM~4_combout\,
	combout => \RAM_item|ram~85_combout\);

-- Location: LABCELL_X7_Y12_N45
\ULA_item|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~17_sumout\ = SUM(( !\DECODER_item|Equal1~0_combout\ $ (((\RAM_item|ram~85_combout\ & ((!\DECODER_item|saida[5]~0_combout\) # (\DECODER_item|saida[2]~3_combout\))))) ) + ( \REGA_item|DOUT\(4) ) + ( \ULA_item|Add0~14\ ))
-- \ULA_item|Add0~18\ = CARRY(( !\DECODER_item|Equal1~0_combout\ $ (((\RAM_item|ram~85_combout\ & ((!\DECODER_item|saida[5]~0_combout\) # (\DECODER_item|saida[2]~3_combout\))))) ) + ( \REGA_item|DOUT\(4) ) + ( \ULA_item|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100011011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[5]~0_combout\,
	datab => \DECODER_item|ALT_INV_Equal1~0_combout\,
	datac => \RAM_item|ALT_INV_ram~85_combout\,
	datad => \DECODER_item|ALT_INV_saida[2]~3_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(4),
	cin => \ULA_item|Add0~14\,
	sumout => \ULA_item|Add0~17_sumout\,
	cout => \ULA_item|Add0~18\);

-- Location: LABCELL_X7_Y12_N15
\ULA_item|saida[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[4]~6_combout\ = ( \PC_item|DOUT[3]~DUPLICATE_q\ & ( \ULA_item|Add0~17_sumout\ ) ) # ( !\PC_item|DOUT[3]~DUPLICATE_q\ & ( (\ULA_item|Add0~17_sumout\ & ((\PC_item|DOUT\(0)) # (\PC_item|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC_item|ALT_INV_DOUT\(0),
	datad => \ULA_item|ALT_INV_Add0~17_sumout\,
	dataf => \PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ULA_item|saida[4]~6_combout\);

-- Location: FF_X7_Y12_N16
\REGA_item|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA_item|saida[4]~6_combout\,
	ena => \DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(4));

-- Location: FF_X6_Y12_N7
\RAM_item|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA_item|DOUT\(5),
	sload => VCC,
	ena => \RAM_item|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~54_q\);

-- Location: FF_X6_Y12_N26
\RAM_item|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA_item|DOUT\(5),
	sload => VCC,
	ena => \RAM_item|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~46_q\);

-- Location: LABCELL_X6_Y12_N21
\RAM_item|ram~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~86_combout\ = ( \RAM_item|ram~46_q\ & ( (!\ROM_item|memROM~4_combout\ & (!\ROM_item|memROM~3_combout\ & \RAM_item|ram~54_q\)) # (\ROM_item|memROM~4_combout\ & (\ROM_item|memROM~3_combout\)) ) ) # ( !\RAM_item|ram~46_q\ & ( 
-- (!\ROM_item|memROM~4_combout\ & (!\ROM_item|memROM~3_combout\ & \RAM_item|ram~54_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_item|ALT_INV_memROM~4_combout\,
	datab => \ROM_item|ALT_INV_memROM~3_combout\,
	datac => \RAM_item|ALT_INV_ram~54_q\,
	dataf => \RAM_item|ALT_INV_ram~46_q\,
	combout => \RAM_item|ram~86_combout\);

-- Location: LABCELL_X7_Y12_N48
\ULA_item|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~21_sumout\ = SUM(( !\DECODER_item|Equal1~0_combout\ $ (((\RAM_item|ram~86_combout\ & ((!\DECODER_item|saida[5]~0_combout\) # (\DECODER_item|saida[2]~3_combout\))))) ) + ( \REGA_item|DOUT\(5) ) + ( \ULA_item|Add0~18\ ))
-- \ULA_item|Add0~22\ = CARRY(( !\DECODER_item|Equal1~0_combout\ $ (((\RAM_item|ram~86_combout\ & ((!\DECODER_item|saida[5]~0_combout\) # (\DECODER_item|saida[2]~3_combout\))))) ) + ( \REGA_item|DOUT\(5) ) + ( \ULA_item|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[5]~0_combout\,
	datab => \DECODER_item|ALT_INV_Equal1~0_combout\,
	datac => \DECODER_item|ALT_INV_saida[2]~3_combout\,
	datad => \RAM_item|ALT_INV_ram~86_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(5),
	cin => \ULA_item|Add0~18\,
	sumout => \ULA_item|Add0~21_sumout\,
	cout => \ULA_item|Add0~22\);

-- Location: LABCELL_X7_Y12_N3
\ULA_item|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[5]~5_combout\ = ( \ULA_item|Add0~21_sumout\ & ( ((\PC_item|DOUT[2]~DUPLICATE_q\) # (\PC_item|DOUT\(0))) # (\PC_item|DOUT[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC_item|ALT_INV_DOUT\(0),
	datad => \PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ULA_item|ALT_INV_Add0~21_sumout\,
	combout => \ULA_item|saida[5]~5_combout\);

-- Location: FF_X7_Y12_N5
\REGA_item|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA_item|saida[5]~5_combout\,
	ena => \DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(5));

-- Location: FF_X7_Y12_N59
\RAM_item|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA_item|DOUT\(6),
	sload => VCC,
	ena => \RAM_item|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~47_q\);

-- Location: FF_X6_Y12_N17
\RAM_item|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA_item|DOUT\(6),
	sload => VCC,
	ena => \RAM_item|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~55_q\);

-- Location: LABCELL_X6_Y12_N15
\RAM_item|ram~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~87_combout\ = ( \ROM_item|memROM~4_combout\ & ( (\RAM_item|ram~47_q\ & \ROM_item|memROM~3_combout\) ) ) # ( !\ROM_item|memROM~4_combout\ & ( (!\ROM_item|memROM~3_combout\ & \RAM_item|ram~55_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM_item|ALT_INV_ram~47_q\,
	datac => \ROM_item|ALT_INV_memROM~3_combout\,
	datad => \RAM_item|ALT_INV_ram~55_q\,
	dataf => \ROM_item|ALT_INV_memROM~4_combout\,
	combout => \RAM_item|ram~87_combout\);

-- Location: LABCELL_X7_Y12_N51
\ULA_item|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~25_sumout\ = SUM(( !\DECODER_item|Equal1~0_combout\ $ (((\RAM_item|ram~87_combout\ & ((!\DECODER_item|saida[5]~0_combout\) # (\DECODER_item|saida[2]~3_combout\))))) ) + ( \REGA_item|DOUT\(6) ) + ( \ULA_item|Add0~22\ ))
-- \ULA_item|Add0~26\ = CARRY(( !\DECODER_item|Equal1~0_combout\ $ (((\RAM_item|ram~87_combout\ & ((!\DECODER_item|saida[5]~0_combout\) # (\DECODER_item|saida[2]~3_combout\))))) ) + ( \REGA_item|DOUT\(6) ) + ( \ULA_item|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[5]~0_combout\,
	datab => \DECODER_item|ALT_INV_Equal1~0_combout\,
	datac => \DECODER_item|ALT_INV_saida[2]~3_combout\,
	datad => \RAM_item|ALT_INV_ram~87_combout\,
	dataf => \REGA_item|ALT_INV_DOUT\(6),
	cin => \ULA_item|Add0~22\,
	sumout => \ULA_item|Add0~25_sumout\,
	cout => \ULA_item|Add0~26\);

-- Location: LABCELL_X7_Y12_N6
\ULA_item|saida[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[6]~4_combout\ = ( \ULA_item|Add0~25_sumout\ & ( ((\PC_item|DOUT[2]~DUPLICATE_q\) # (\PC_item|DOUT\(3))) # (\PC_item|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datac => \PC_item|ALT_INV_DOUT\(3),
	datad => \PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ULA_item|ALT_INV_Add0~25_sumout\,
	combout => \ULA_item|saida[6]~4_combout\);

-- Location: FF_X7_Y12_N8
\REGA_item|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA_item|saida[6]~4_combout\,
	ena => \DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(6));

-- Location: FF_X7_Y12_N14
\REGA_item|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA_item|saida[7]~3_combout\,
	ena => \DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y12_N36
\RAM_item|ram~48feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~48feeder_combout\ = ( \REGA_item|DOUT[7]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA_item|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \RAM_item|ram~48feeder_combout\);

-- Location: FF_X5_Y12_N38
\RAM_item|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM_item|ram~48feeder_combout\,
	ena => \RAM_item|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~48_q\);

-- Location: LABCELL_X5_Y12_N54
\RAM_item|ram~56feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~56feeder_combout\ = ( \REGA_item|DOUT[7]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA_item|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \RAM_item|ram~56feeder_combout\);

-- Location: FF_X5_Y12_N56
\RAM_item|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM_item|ram~56feeder_combout\,
	ena => \RAM_item|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_item|ram~56_q\);

-- Location: LABCELL_X5_Y12_N9
\RAM_item|ram~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_item|ram~88_combout\ = ( \ROM_item|memROM~3_combout\ & ( \ROM_item|memROM~4_combout\ & ( \RAM_item|ram~48_q\ ) ) ) # ( !\ROM_item|memROM~3_combout\ & ( !\ROM_item|memROM~4_combout\ & ( \RAM_item|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_item|ALT_INV_ram~48_q\,
	datad => \RAM_item|ALT_INV_ram~56_q\,
	datae => \ROM_item|ALT_INV_memROM~3_combout\,
	dataf => \ROM_item|ALT_INV_memROM~4_combout\,
	combout => \RAM_item|ram~88_combout\);

-- Location: LABCELL_X7_Y12_N54
\ULA_item|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|Add0~29_sumout\ = SUM(( !\DECODER_item|Equal1~0_combout\ $ (((\RAM_item|ram~88_combout\ & ((!\DECODER_item|saida[5]~0_combout\) # (\DECODER_item|saida[2]~3_combout\))))) ) + ( \REGA_item|DOUT[7]~DUPLICATE_q\ ) + ( \ULA_item|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_item|ALT_INV_saida[5]~0_combout\,
	datab => \DECODER_item|ALT_INV_Equal1~0_combout\,
	datac => \DECODER_item|ALT_INV_saida[2]~3_combout\,
	datad => \RAM_item|ALT_INV_ram~88_combout\,
	dataf => \REGA_item|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \ULA_item|Add0~26\,
	sumout => \ULA_item|Add0~29_sumout\);

-- Location: LABCELL_X7_Y12_N12
\ULA_item|saida[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_item|saida[7]~3_combout\ = ( \PC_item|DOUT[3]~DUPLICATE_q\ & ( \ULA_item|Add0~29_sumout\ ) ) # ( !\PC_item|DOUT[3]~DUPLICATE_q\ & ( (\ULA_item|Add0~29_sumout\ & ((\PC_item|DOUT[2]~DUPLICATE_q\) # (\PC_item|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_item|ALT_INV_DOUT\(0),
	datab => \PC_item|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ULA_item|ALT_INV_Add0~29_sumout\,
	dataf => \PC_item|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ULA_item|saida[7]~3_combout\);

-- Location: FF_X7_Y12_N13
\REGA_item|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA_item|saida[7]~3_combout\,
	ena => \DECODER_item|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA_item|DOUT\(7));

-- Location: IOIBUF_X54_Y20_N4
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X38_Y45_N1
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X51_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X40_Y38_N0
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


