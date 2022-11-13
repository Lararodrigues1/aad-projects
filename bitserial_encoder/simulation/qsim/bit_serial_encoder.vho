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

-- DATE "11/13/2022 11:41:34"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	bit_serial_encoder IS
    PORT (
	nGRst : IN std_logic;
	clk : IN std_logic;
	mIn : IN std_logic;
	x : OUT std_logic_vector(7 DOWNTO 0)
	);
END bit_serial_encoder;

-- Design Ports Information
-- mIn	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nGRst	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bit_serial_encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nGRst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mIn : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL \mIn~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \bincount|ff0|Q~0_combout\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \bincount|ff2|Q~0_combout\ : std_logic;
SIGNAL \bincount|ff2|Q~q\ : std_logic;
SIGNAL \control_unit|nad2|y~0_combout\ : std_logic;
SIGNAL \bincount|ff0|Q~q\ : std_logic;
SIGNAL \bincount|ff1|Q~0_combout\ : std_logic;
SIGNAL \bincount|ff1|Q~q\ : std_logic;
SIGNAL \control_unit|nord|y~0_combout\ : std_logic;
SIGNAL \reg_par|ff0|Q~feeder_combout\ : std_logic;
SIGNAL \control_unit|nad4|y~0_combout\ : std_logic;
SIGNAL \reg_par|ff0|Q~q\ : std_logic;
SIGNAL \reg_par|ff1|Q~feeder_combout\ : std_logic;
SIGNAL \reg_par|ff1|Q~q\ : std_logic;
SIGNAL \reg_par|ff2|Q~feeder_combout\ : std_logic;
SIGNAL \reg_par|ff2|Q~q\ : std_logic;
SIGNAL \reg_par|ff3|Q~feeder_combout\ : std_logic;
SIGNAL \reg_par|ff3|Q~q\ : std_logic;
SIGNAL \reg_par|ff4|Q~feeder_combout\ : std_logic;
SIGNAL \reg_par|ff4|Q~q\ : std_logic;
SIGNAL \reg_par|ff5|Q~feeder_combout\ : std_logic;
SIGNAL \reg_par|ff5|Q~q\ : std_logic;
SIGNAL \reg_par|ff6|Q~feeder_combout\ : std_logic;
SIGNAL \reg_par|ff6|Q~q\ : std_logic;
SIGNAL \reg_par|ff7|Q~feeder_combout\ : std_logic;
SIGNAL \reg_par|ff7|Q~q\ : std_logic;
SIGNAL \ALT_INV_nGRst~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \control_unit|nad2|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \control_unit|nad4|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \bincount|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \bincount|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \bincount|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg_par|ff7|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg_par|ff6|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg_par|ff5|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg_par|ff4|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg_par|ff3|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg_par|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg_par|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg_par|ff0|ALT_INV_Q~q\ : std_logic;

BEGIN

ww_nGRst <= nGRst;
ww_clk <= clk;
ww_mIn <= mIn;
x <= ww_x;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_nGRst~input_o\ <= NOT \nGRst~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\control_unit|nad2|ALT_INV_y~0_combout\ <= NOT \control_unit|nad2|y~0_combout\;
\control_unit|nad4|ALT_INV_y~0_combout\ <= NOT \control_unit|nad4|y~0_combout\;
\bincount|ff0|ALT_INV_Q~q\ <= NOT \bincount|ff0|Q~q\;
\bincount|ff1|ALT_INV_Q~q\ <= NOT \bincount|ff1|Q~q\;
\bincount|ff2|ALT_INV_Q~q\ <= NOT \bincount|ff2|Q~q\;
\reg_par|ff7|ALT_INV_Q~q\ <= NOT \reg_par|ff7|Q~q\;
\reg_par|ff6|ALT_INV_Q~q\ <= NOT \reg_par|ff6|Q~q\;
\reg_par|ff5|ALT_INV_Q~q\ <= NOT \reg_par|ff5|Q~q\;
\reg_par|ff4|ALT_INV_Q~q\ <= NOT \reg_par|ff4|Q~q\;
\reg_par|ff3|ALT_INV_Q~q\ <= NOT \reg_par|ff3|Q~q\;
\reg_par|ff2|ALT_INV_Q~q\ <= NOT \reg_par|ff2|Q~q\;
\reg_par|ff1|ALT_INV_Q~q\ <= NOT \reg_par|ff1|Q~q\;
\reg_par|ff0|ALT_INV_Q~q\ <= NOT \reg_par|ff0|Q~q\;

-- Location: IOOBUF_X89_Y35_N45
\x[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_par|ff0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_x(0));

-- Location: IOOBUF_X89_Y37_N39
\x[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_par|ff1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_x(1));

-- Location: IOOBUF_X89_Y36_N39
\x[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_par|ff2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_x(2));

-- Location: IOOBUF_X89_Y37_N22
\x[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_par|ff3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_x(3));

-- Location: IOOBUF_X89_Y36_N56
\x[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_par|ff4|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_x(4));

-- Location: IOOBUF_X89_Y37_N5
\x[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_par|ff5|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_x(5));

-- Location: IOOBUF_X89_Y35_N79
\x[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_par|ff6|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_x(6));

-- Location: IOOBUF_X89_Y35_N96
\x[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_par|ff7|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_x(7));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y35_N57
\bincount|ff0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bincount|ff0|Q~0_combout\ = ( !\bincount|ff0|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \bincount|ff0|ALT_INV_Q~q\,
	combout => \bincount|ff0|Q~0_combout\);

-- Location: IOIBUF_X89_Y37_N55
\nGRst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

-- Location: LABCELL_X88_Y35_N39
\bincount|ff2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bincount|ff2|Q~0_combout\ = ( \bincount|ff2|Q~q\ & ( \bincount|ff1|Q~q\ & ( !\bincount|ff0|Q~q\ ) ) ) # ( !\bincount|ff2|Q~q\ & ( \bincount|ff1|Q~q\ & ( \bincount|ff0|Q~q\ ) ) ) # ( \bincount|ff2|Q~q\ & ( !\bincount|ff1|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bincount|ff0|ALT_INV_Q~q\,
	datae => \bincount|ff2|ALT_INV_Q~q\,
	dataf => \bincount|ff1|ALT_INV_Q~q\,
	combout => \bincount|ff2|Q~0_combout\);

-- Location: FF_X88_Y35_N41
\bincount|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bincount|ff2|Q~0_combout\,
	clrn => \control_unit|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bincount|ff2|Q~q\);

-- Location: LABCELL_X88_Y35_N48
\control_unit|nad2|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control_unit|nad2|y~0_combout\ = ( \bincount|ff0|Q~q\ & ( \clk~input_o\ & ( !\nGRst~input_o\ ) ) ) # ( !\bincount|ff0|Q~q\ & ( \clk~input_o\ & ( (!\nGRst~input_o\) # ((\bincount|ff1|Q~q\ & \bincount|ff2|Q~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101011111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nGRst~input_o\,
	datac => \bincount|ff1|ALT_INV_Q~q\,
	datad => \bincount|ff2|ALT_INV_Q~q\,
	datae => \bincount|ff0|ALT_INV_Q~q\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \control_unit|nad2|y~0_combout\);

-- Location: FF_X88_Y35_N59
\bincount|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bincount|ff0|Q~0_combout\,
	clrn => \control_unit|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bincount|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N0
\bincount|ff1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bincount|ff1|Q~0_combout\ = ( !\bincount|ff1|Q~q\ & ( \bincount|ff0|Q~q\ ) ) # ( \bincount|ff1|Q~q\ & ( !\bincount|ff0|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \bincount|ff1|ALT_INV_Q~q\,
	dataf => \bincount|ff0|ALT_INV_Q~q\,
	combout => \bincount|ff1|Q~0_combout\);

-- Location: FF_X88_Y35_N2
\bincount|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bincount|ff1|Q~0_combout\,
	clrn => \control_unit|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bincount|ff1|Q~q\);

-- Location: LABCELL_X88_Y35_N21
\control_unit|nord|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control_unit|nord|y~0_combout\ = LCELL(( \bincount|ff2|Q~q\ & ( (!\clk~input_o\ & !\bincount|ff1|Q~q\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clk~input_o\,
	datad => \bincount|ff1|ALT_INV_Q~q\,
	dataf => \bincount|ff2|ALT_INV_Q~q\,
	combout => \control_unit|nord|y~0_combout\);

-- Location: LABCELL_X88_Y35_N6
\reg_par|ff0|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff0|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \reg_par|ff0|Q~feeder_combout\);

-- Location: LABCELL_X88_Y35_N9
\control_unit|nad4|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control_unit|nad4|y~0_combout\ = ( \bincount|ff2|Q~q\ & ( (\clk~input_o\ & ((!\nGRst~input_o\) # ((!\bincount|ff0|Q~q\ & \bincount|ff1|Q~q\)))) ) ) # ( !\bincount|ff2|Q~q\ & ( (\clk~input_o\ & ((!\nGRst~input_o\) # ((!\bincount|ff0|Q~q\ & 
-- !\bincount|ff1|Q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000100010001100100010001000100010001100100010001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nGRst~input_o\,
	datab => \ALT_INV_clk~input_o\,
	datac => \bincount|ff0|ALT_INV_Q~q\,
	datad => \bincount|ff1|ALT_INV_Q~q\,
	dataf => \bincount|ff2|ALT_INV_Q~q\,
	combout => \control_unit|nad4|y~0_combout\);

-- Location: FF_X88_Y35_N7
\reg_par|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff0|Q~feeder_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N30
\reg_par|ff1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff1|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \reg_par|ff1|Q~feeder_combout\);

-- Location: FF_X88_Y35_N32
\reg_par|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff1|Q~feeder_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff1|Q~q\);

-- Location: LABCELL_X88_Y35_N33
\reg_par|ff2|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff2|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \reg_par|ff2|Q~feeder_combout\);

-- Location: FF_X88_Y35_N34
\reg_par|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff2|Q~feeder_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff2|Q~q\);

-- Location: LABCELL_X88_Y35_N12
\reg_par|ff3|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff3|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \reg_par|ff3|Q~feeder_combout\);

-- Location: FF_X88_Y35_N13
\reg_par|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff3|Q~feeder_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff3|Q~q\);

-- Location: LABCELL_X88_Y35_N15
\reg_par|ff4|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff4|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \reg_par|ff4|Q~feeder_combout\);

-- Location: FF_X88_Y35_N16
\reg_par|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff4|Q~feeder_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff4|Q~q\);

-- Location: LABCELL_X88_Y35_N24
\reg_par|ff5|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff5|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \reg_par|ff5|Q~feeder_combout\);

-- Location: FF_X88_Y35_N25
\reg_par|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff5|Q~feeder_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff5|Q~q\);

-- Location: LABCELL_X88_Y35_N27
\reg_par|ff6|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff6|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \reg_par|ff6|Q~feeder_combout\);

-- Location: FF_X88_Y35_N28
\reg_par|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff6|Q~feeder_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff6|Q~q\);

-- Location: LABCELL_X88_Y35_N18
\reg_par|ff7|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff7|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \reg_par|ff7|Q~feeder_combout\);

-- Location: FF_X88_Y35_N19
\reg_par|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff7|Q~feeder_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff7|Q~q\);

-- Location: IOIBUF_X72_Y0_N35
\mIn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mIn,
	o => \mIn~input_o\);

-- Location: LABCELL_X27_Y40_N3
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


