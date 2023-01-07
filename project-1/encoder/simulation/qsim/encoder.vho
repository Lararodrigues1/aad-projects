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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/05/2022 23:50:59"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	encoder IS
    PORT (
	m : IN std_logic_vector(3 DOWNTO 0);
	s : OUT std_logic_vector(7 DOWNTO 0)
	);
END encoder;

-- Design Ports Information
-- s[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_m : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \m[3]~input_o\ : std_logic;
SIGNAL \m[2]~input_o\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \x7~0_combout\ : std_logic;
SIGNAL \x6~0_combout\ : std_logic;
SIGNAL \x5~0_combout\ : std_logic;
SIGNAL \x4~0_combout\ : std_logic;
SIGNAL \x3~0_combout\ : std_logic;
SIGNAL \x2~0_combout\ : std_logic;
SIGNAL \x1~0_combout\ : std_logic;
SIGNAL \ALT_INV_m[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_m[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_m[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_m[3]~input_o\ : std_logic;

BEGIN

ww_m <= m;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_m[2]~input_o\ <= NOT \m[2]~input_o\;
\ALT_INV_m[0]~input_o\ <= NOT \m[0]~input_o\;
\ALT_INV_m[1]~input_o\ <= NOT \m[1]~input_o\;
\ALT_INV_m[3]~input_o\ <= NOT \m[3]~input_o\;

-- Location: IOOBUF_X89_Y36_N22
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \x7~0_combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X89_Y37_N5
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \x6~0_combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X89_Y36_N39
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \x5~0_combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X89_Y36_N5
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \x4~0_combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X89_Y35_N79
\s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \x3~0_combout\,
	devoe => ww_devoe,
	o => ww_s(4));

-- Location: IOOBUF_X89_Y35_N96
\s[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \x2~0_combout\,
	devoe => ww_devoe,
	o => ww_s(5));

-- Location: IOOBUF_X89_Y37_N56
\s[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \x1~0_combout\,
	devoe => ww_devoe,
	o => ww_s(6));

-- Location: IOOBUF_X89_Y37_N22
\s[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m[0]~input_o\,
	devoe => ww_devoe,
	o => ww_s(7));

-- Location: IOIBUF_X89_Y36_N55
\m[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(1),
	o => \m[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\m[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(3),
	o => \m[3]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\m[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(2),
	o => \m[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\m[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(0),
	o => \m[0]~input_o\);

-- Location: LABCELL_X88_Y36_N0
\x7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x7~0_combout\ = ( \m[2]~input_o\ & ( \m[0]~input_o\ & ( !\m[1]~input_o\ $ (!\m[3]~input_o\) ) ) ) # ( !\m[2]~input_o\ & ( \m[0]~input_o\ & ( !\m[1]~input_o\ $ (\m[3]~input_o\) ) ) ) # ( \m[2]~input_o\ & ( !\m[0]~input_o\ & ( !\m[1]~input_o\ $ 
-- (\m[3]~input_o\) ) ) ) # ( !\m[2]~input_o\ & ( !\m[0]~input_o\ & ( !\m[1]~input_o\ $ (!\m[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010110100101101001010101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m[1]~input_o\,
	datac => \ALT_INV_m[3]~input_o\,
	datae => \ALT_INV_m[2]~input_o\,
	dataf => \ALT_INV_m[0]~input_o\,
	combout => \x7~0_combout\);

-- Location: LABCELL_X88_Y36_N9
\x6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x6~0_combout\ = ( \m[2]~input_o\ & ( \m[0]~input_o\ & ( \m[1]~input_o\ ) ) ) # ( !\m[2]~input_o\ & ( \m[0]~input_o\ & ( !\m[1]~input_o\ ) ) ) # ( \m[2]~input_o\ & ( !\m[0]~input_o\ & ( !\m[1]~input_o\ ) ) ) # ( !\m[2]~input_o\ & ( !\m[0]~input_o\ & ( 
-- \m[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m[1]~input_o\,
	datae => \ALT_INV_m[2]~input_o\,
	dataf => \ALT_INV_m[0]~input_o\,
	combout => \x6~0_combout\);

-- Location: LABCELL_X88_Y36_N45
\x5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x5~0_combout\ = ( \m[1]~input_o\ & ( \m[0]~input_o\ & ( \m[3]~input_o\ ) ) ) # ( !\m[1]~input_o\ & ( \m[0]~input_o\ & ( !\m[3]~input_o\ ) ) ) # ( \m[1]~input_o\ & ( !\m[0]~input_o\ & ( !\m[3]~input_o\ ) ) ) # ( !\m[1]~input_o\ & ( !\m[0]~input_o\ & ( 
-- \m[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m[3]~input_o\,
	datae => \ALT_INV_m[1]~input_o\,
	dataf => \ALT_INV_m[0]~input_o\,
	combout => \x5~0_combout\);

-- Location: LABCELL_X88_Y36_N18
\x4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x4~0_combout\ = ( !\m[1]~input_o\ & ( \m[0]~input_o\ ) ) # ( \m[1]~input_o\ & ( !\m[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_m[1]~input_o\,
	dataf => \ALT_INV_m[0]~input_o\,
	combout => \x4~0_combout\);

-- Location: LABCELL_X88_Y35_N0
\x3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x3~0_combout\ = ( \m[0]~input_o\ & ( !\m[3]~input_o\ $ (\m[2]~input_o\) ) ) # ( !\m[0]~input_o\ & ( !\m[3]~input_o\ $ (!\m[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m[3]~input_o\,
	datac => \ALT_INV_m[2]~input_o\,
	dataf => \ALT_INV_m[0]~input_o\,
	combout => \x3~0_combout\);

-- Location: LABCELL_X88_Y35_N36
\x2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x2~0_combout\ = ( \m[0]~input_o\ & ( !\m[2]~input_o\ ) ) # ( !\m[0]~input_o\ & ( \m[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_m[2]~input_o\,
	dataf => \ALT_INV_m[0]~input_o\,
	combout => \x2~0_combout\);

-- Location: LABCELL_X88_Y35_N42
\x1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x1~0_combout\ = ( \m[0]~input_o\ & ( !\m[3]~input_o\ ) ) # ( !\m[0]~input_o\ & ( \m[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_m[3]~input_o\,
	dataf => \ALT_INV_m[0]~input_o\,
	combout => \x1~0_combout\);

-- Location: LABCELL_X22_Y29_N3
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


