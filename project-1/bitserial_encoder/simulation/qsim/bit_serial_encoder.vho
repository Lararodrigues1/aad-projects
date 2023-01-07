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

-- DATE "11/17/2022 19:22:53"

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
	x : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END bit_serial_encoder;

-- Design Ports Information
-- x[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nGRst	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mIn	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \control_unit|nad2|y~0_combout\ : std_logic;
SIGNAL \bincount|ff1|Q~q\ : std_logic;
SIGNAL \bincount|ff0|Q~0_combout\ : std_logic;
SIGNAL \bincount|ff0|Q~q\ : std_logic;
SIGNAL \bincount|ff1|Q~0_combout\ : std_logic;
SIGNAL \bincount|ff1|Q~DUPLICATE_q\ : std_logic;
SIGNAL \bincount|ff2|Q~0_combout\ : std_logic;
SIGNAL \bincount|ff2|Q~q\ : std_logic;
SIGNAL \control_unit|nord|y~0_combout\ : std_logic;
SIGNAL \mIn~input_o\ : std_logic;
SIGNAL \ff|Q~q\ : std_logic;
SIGNAL \reg0|Q~0_combout\ : std_logic;
SIGNAL \reg0|Q~q\ : std_logic;
SIGNAL \reg_par|ff0|Q~0_combout\ : std_logic;
SIGNAL \control_unit|nad4|y~0_combout\ : std_logic;
SIGNAL \reg_par|ff0|Q~q\ : std_logic;
SIGNAL \reg1|Q~0_combout\ : std_logic;
SIGNAL \reg1|Q~q\ : std_logic;
SIGNAL \reg_par|ff1|Q~0_combout\ : std_logic;
SIGNAL \reg_par|ff1|Q~q\ : std_logic;
SIGNAL \reg2|Q~0_combout\ : std_logic;
SIGNAL \reg2|Q~q\ : std_logic;
SIGNAL \reg_par|ff2|Q~0_combout\ : std_logic;
SIGNAL \reg_par|ff2|Q~q\ : std_logic;
SIGNAL \reg3|Q~0_combout\ : std_logic;
SIGNAL \reg3|Q~q\ : std_logic;
SIGNAL \reg_par|ff3|Q~0_combout\ : std_logic;
SIGNAL \reg_par|ff3|Q~q\ : std_logic;
SIGNAL \reg4|Q~0_combout\ : std_logic;
SIGNAL \reg4|Q~q\ : std_logic;
SIGNAL \reg_par|ff4|Q~0_combout\ : std_logic;
SIGNAL \reg_par|ff4|Q~q\ : std_logic;
SIGNAL \reg5|Q~0_combout\ : std_logic;
SIGNAL \reg5|Q~q\ : std_logic;
SIGNAL \reg_par|ff5|Q~0_combout\ : std_logic;
SIGNAL \reg_par|ff5|Q~q\ : std_logic;
SIGNAL \reg6|Q~0_combout\ : std_logic;
SIGNAL \reg6|Q~q\ : std_logic;
SIGNAL \reg_par|ff6|Q~0_combout\ : std_logic;
SIGNAL \reg_par|ff6|Q~q\ : std_logic;
SIGNAL \reg7|Q~0_combout\ : std_logic;
SIGNAL \reg7|Q~q\ : std_logic;
SIGNAL \reg_par|ff7|Q~0_combout\ : std_logic;
SIGNAL \reg_par|ff7|Q~q\ : std_logic;
SIGNAL \bincount|ff1|ALT_INV_Q~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_nGRst~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \control_unit|nad2|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \ff|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg7|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg6|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg5|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg2|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg1|ALT_INV_Q~q\ : std_logic;
SIGNAL \control_unit|nad4|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \bincount|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \bincount|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \bincount|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg0|ALT_INV_Q~q\ : std_logic;
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
\bincount|ff1|ALT_INV_Q~DUPLICATE_q\ <= NOT \bincount|ff1|Q~DUPLICATE_q\;
\ALT_INV_nGRst~input_o\ <= NOT \nGRst~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\control_unit|nad2|ALT_INV_y~0_combout\ <= NOT \control_unit|nad2|y~0_combout\;
\ff|ALT_INV_Q~q\ <= NOT \ff|Q~q\;
\reg7|ALT_INV_Q~q\ <= NOT \reg7|Q~q\;
\reg6|ALT_INV_Q~q\ <= NOT \reg6|Q~q\;
\reg5|ALT_INV_Q~q\ <= NOT \reg5|Q~q\;
\reg4|ALT_INV_Q~q\ <= NOT \reg4|Q~q\;
\reg3|ALT_INV_Q~q\ <= NOT \reg3|Q~q\;
\reg2|ALT_INV_Q~q\ <= NOT \reg2|Q~q\;
\reg1|ALT_INV_Q~q\ <= NOT \reg1|Q~q\;
\control_unit|nad4|ALT_INV_y~0_combout\ <= NOT \control_unit|nad4|y~0_combout\;
\bincount|ff1|ALT_INV_Q~q\ <= NOT \bincount|ff1|Q~q\;
\bincount|ff0|ALT_INV_Q~q\ <= NOT \bincount|ff0|Q~q\;
\bincount|ff2|ALT_INV_Q~q\ <= NOT \bincount|ff2|Q~q\;
\reg0|ALT_INV_Q~q\ <= NOT \reg0|Q~q\;
\reg_par|ff7|ALT_INV_Q~q\ <= NOT \reg_par|ff7|Q~q\;
\reg_par|ff6|ALT_INV_Q~q\ <= NOT \reg_par|ff6|Q~q\;
\reg_par|ff5|ALT_INV_Q~q\ <= NOT \reg_par|ff5|Q~q\;
\reg_par|ff4|ALT_INV_Q~q\ <= NOT \reg_par|ff4|Q~q\;
\reg_par|ff3|ALT_INV_Q~q\ <= NOT \reg_par|ff3|Q~q\;
\reg_par|ff2|ALT_INV_Q~q\ <= NOT \reg_par|ff2|Q~q\;
\reg_par|ff1|ALT_INV_Q~q\ <= NOT \reg_par|ff1|Q~q\;
\reg_par|ff0|ALT_INV_Q~q\ <= NOT \reg_par|ff0|Q~q\;

-- Location: IOOBUF_X89_Y36_N56
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

-- Location: IOOBUF_X89_Y35_N79
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

-- Location: IOOBUF_X89_Y37_N56
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

-- Location: IOOBUF_X89_Y35_N96
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

-- Location: IOOBUF_X89_Y36_N5
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

-- Location: IOOBUF_X89_Y35_N45
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

-- Location: IOOBUF_X89_Y36_N22
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

-- Location: IOOBUF_X89_Y37_N5
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

-- Location: IOIBUF_X89_Y37_N38
\nGRst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

-- Location: LABCELL_X88_Y35_N36
\control_unit|nad2|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control_unit|nad2|y~0_combout\ = ( \clk~input_o\ & ( (!\nGRst~input_o\) # ((\bincount|ff1|Q~DUPLICATE_q\ & \bincount|ff2|Q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110001111100011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bincount|ff1|ALT_INV_Q~DUPLICATE_q\,
	datab => \bincount|ff2|ALT_INV_Q~q\,
	datac => \ALT_INV_nGRst~input_o\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \control_unit|nad2|y~0_combout\);

-- Location: FF_X88_Y35_N35
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

-- Location: LABCELL_X88_Y35_N54
\bincount|ff0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bincount|ff0|Q~0_combout\ = !\bincount|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bincount|ff0|ALT_INV_Q~q\,
	combout => \bincount|ff0|Q~0_combout\);

-- Location: FF_X88_Y35_N56
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

-- Location: LABCELL_X88_Y35_N33
\bincount|ff1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bincount|ff1|Q~0_combout\ = ( \bincount|ff0|Q~q\ & ( !\bincount|ff1|Q~q\ ) ) # ( !\bincount|ff0|Q~q\ & ( \bincount|ff1|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bincount|ff1|ALT_INV_Q~q\,
	dataf => \bincount|ff0|ALT_INV_Q~q\,
	combout => \bincount|ff1|Q~0_combout\);

-- Location: FF_X88_Y35_N34
\bincount|ff1|Q~DUPLICATE\ : dffeas
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
	q => \bincount|ff1|Q~DUPLICATE_q\);

-- Location: LABCELL_X88_Y35_N39
\bincount|ff2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bincount|ff2|Q~0_combout\ = ( \bincount|ff0|Q~q\ & ( !\bincount|ff1|Q~DUPLICATE_q\ $ (!\bincount|ff2|Q~q\) ) ) # ( !\bincount|ff0|Q~q\ & ( \bincount|ff2|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bincount|ff1|ALT_INV_Q~DUPLICATE_q\,
	datad => \bincount|ff2|ALT_INV_Q~q\,
	dataf => \bincount|ff0|ALT_INV_Q~q\,
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

-- Location: LABCELL_X88_Y35_N51
\control_unit|nord|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control_unit|nord|y~0_combout\ = LCELL(( !\clk~input_o\ & ( (\bincount|ff2|Q~q\ & \bincount|ff0|Q~q\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bincount|ff2|ALT_INV_Q~q\,
	datad => \bincount|ff0|ALT_INV_Q~q\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \control_unit|nord|y~0_combout\);

-- Location: IOIBUF_X89_Y37_N21
\mIn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mIn,
	o => \mIn~input_o\);

-- Location: FF_X88_Y35_N38
\ff|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mIn~input_o\,
	clrn => \control_unit|nad2|ALT_INV_y~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff|Q~q\);

-- Location: LABCELL_X88_Y35_N30
\reg0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg0|Q~0_combout\ = ( \bincount|ff2|Q~q\ & ( !\reg0|Q~q\ $ (((!\ff|Q~q\) # ((\bincount|ff1|Q~DUPLICATE_q\) # (\bincount|ff0|Q~q\)))) ) ) # ( !\bincount|ff2|Q~q\ & ( !\reg0|Q~q\ $ (((!\ff|Q~q\) # ((!\bincount|ff0|Q~q\ & !\bincount|ff1|Q~DUPLICATE_q\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111101010000101011110101001000000101111110100000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ff|ALT_INV_Q~q\,
	datab => \bincount|ff0|ALT_INV_Q~q\,
	datac => \bincount|ff1|ALT_INV_Q~DUPLICATE_q\,
	datad => \reg0|ALT_INV_Q~q\,
	dataf => \bincount|ff2|ALT_INV_Q~q\,
	combout => \reg0|Q~0_combout\);

-- Location: FF_X88_Y35_N32
\reg0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg0|Q~0_combout\,
	clrn => \control_unit|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q~q\);

-- Location: LABCELL_X88_Y35_N12
\reg_par|ff0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff0|Q~0_combout\ = ( !\reg0|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg0|ALT_INV_Q~q\,
	combout => \reg_par|ff0|Q~0_combout\);

-- Location: LABCELL_X88_Y35_N15
\control_unit|nad4|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control_unit|nad4|y~0_combout\ = ( \bincount|ff2|Q~q\ & ( (\clk~input_o\ & ((!\nGRst~input_o\) # (\bincount|ff1|Q~q\))) ) ) # ( !\bincount|ff2|Q~q\ & ( (\clk~input_o\ & ((!\nGRst~input_o\) # ((!\bincount|ff1|Q~q\ & !\bincount|ff0|Q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001100000011100000110000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bincount|ff1|ALT_INV_Q~q\,
	datab => \ALT_INV_nGRst~input_o\,
	datac => \ALT_INV_clk~input_o\,
	datad => \bincount|ff0|ALT_INV_Q~q\,
	dataf => \bincount|ff2|ALT_INV_Q~q\,
	combout => \control_unit|nad4|y~0_combout\);

-- Location: FF_X88_Y35_N13
\reg_par|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff0|Q~0_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N57
\reg1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q~0_combout\ = ( \bincount|ff0|Q~q\ & ( !\reg1|Q~q\ $ (((!\bincount|ff1|Q~q\) # ((!\ff|Q~q\) # (\bincount|ff2|Q~q\)))) ) ) # ( !\bincount|ff0|Q~q\ & ( !\reg1|Q~q\ $ (((!\ff|Q~q\) # (!\bincount|ff1|Q~q\ $ (\bincount|ff2|Q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001011101101000100101110110100010000111011110001000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bincount|ff1|ALT_INV_Q~q\,
	datab => \ff|ALT_INV_Q~q\,
	datac => \bincount|ff2|ALT_INV_Q~q\,
	datad => \reg1|ALT_INV_Q~q\,
	dataf => \bincount|ff0|ALT_INV_Q~q\,
	combout => \reg1|Q~0_combout\);

-- Location: FF_X88_Y35_N59
\reg1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q~0_combout\,
	clrn => \control_unit|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q~q\);

-- Location: LABCELL_X88_Y35_N42
\reg_par|ff1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff1|Q~0_combout\ = !\reg1|Q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg1|ALT_INV_Q~q\,
	combout => \reg_par|ff1|Q~0_combout\);

-- Location: FF_X88_Y35_N43
\reg_par|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff1|Q~0_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff1|Q~q\);

-- Location: LABCELL_X88_Y35_N18
\reg2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg2|Q~0_combout\ = ( \bincount|ff0|Q~q\ & ( !\reg2|Q~q\ $ (((!\ff|Q~q\) # (\bincount|ff2|Q~q\))) ) ) # ( !\bincount|ff0|Q~q\ & ( !\reg2|Q~q\ $ ((((!\ff|Q~q\) # (!\bincount|ff2|Q~q\)) # (\bincount|ff1|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111101000000101111110100110000110011110011000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bincount|ff1|ALT_INV_Q~q\,
	datab => \ff|ALT_INV_Q~q\,
	datac => \bincount|ff2|ALT_INV_Q~q\,
	datad => \reg2|ALT_INV_Q~q\,
	dataf => \bincount|ff0|ALT_INV_Q~q\,
	combout => \reg2|Q~0_combout\);

-- Location: FF_X88_Y35_N20
\reg2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg2|Q~0_combout\,
	clrn => \control_unit|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q~q\);

-- Location: LABCELL_X88_Y35_N45
\reg_par|ff2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff2|Q~0_combout\ = ( !\reg2|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg2|ALT_INV_Q~q\,
	combout => \reg_par|ff2|Q~0_combout\);

-- Location: FF_X88_Y35_N46
\reg_par|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff2|Q~0_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff2|Q~q\);

-- Location: LABCELL_X88_Y35_N48
\reg3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q~0_combout\ = ( \bincount|ff1|Q~DUPLICATE_q\ & ( !\reg3|Q~q\ $ (((!\ff|Q~q\) # ((!\bincount|ff0|Q~q\) # (\bincount|ff2|Q~q\)))) ) ) # ( !\bincount|ff1|Q~DUPLICATE_q\ & ( !\reg3|Q~q\ $ (((!\ff|Q~q\) # ((!\bincount|ff2|Q~q\) # (\bincount|ff0|Q~q\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011101111000100001110111100000100111110110000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ff|ALT_INV_Q~q\,
	datab => \bincount|ff2|ALT_INV_Q~q\,
	datac => \bincount|ff0|ALT_INV_Q~q\,
	datad => \reg3|ALT_INV_Q~q\,
	dataf => \bincount|ff1|ALT_INV_Q~DUPLICATE_q\,
	combout => \reg3|Q~0_combout\);

-- Location: FF_X88_Y35_N49
\reg3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg3|Q~0_combout\,
	clrn => \control_unit|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q~q\);

-- Location: LABCELL_X88_Y35_N0
\reg_par|ff3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff3|Q~0_combout\ = !\reg3|Q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q~q\,
	combout => \reg_par|ff3|Q~0_combout\);

-- Location: FF_X88_Y35_N1
\reg_par|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff3|Q~0_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff3|Q~q\);

-- Location: LABCELL_X88_Y35_N21
\reg4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q~0_combout\ = ( \bincount|ff0|Q~q\ & ( !\reg4|Q~q\ $ ((((!\ff|Q~q\) # (\bincount|ff2|Q~q\)) # (\bincount|ff1|Q~q\))) ) ) # ( !\bincount|ff0|Q~q\ & ( !\reg4|Q~q\ $ (((!\ff|Q~q\) # (!\bincount|ff1|Q~q\ $ (\bincount|ff2|Q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001011101101000100101110110100100000110111110010000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bincount|ff1|ALT_INV_Q~q\,
	datab => \ff|ALT_INV_Q~q\,
	datac => \bincount|ff2|ALT_INV_Q~q\,
	datad => \reg4|ALT_INV_Q~q\,
	dataf => \bincount|ff0|ALT_INV_Q~q\,
	combout => \reg4|Q~0_combout\);

-- Location: FF_X88_Y35_N23
\reg4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q~0_combout\,
	clrn => \control_unit|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q~q\);

-- Location: LABCELL_X88_Y35_N3
\reg_par|ff4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff4|Q~0_combout\ = ( !\reg4|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|ALT_INV_Q~q\,
	combout => \reg_par|ff4|Q~0_combout\);

-- Location: FF_X88_Y35_N4
\reg_par|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff4|Q~0_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff4|Q~q\);

-- Location: LABCELL_X88_Y35_N6
\reg5|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q~0_combout\ = ( \bincount|ff1|Q~DUPLICATE_q\ & ( !\reg5|Q~q\ $ (((!\ff|Q~q\) # ((\bincount|ff0|Q~q\) # (\bincount|ff2|Q~q\)))) ) ) # ( !\bincount|ff1|Q~DUPLICATE_q\ & ( !\reg5|Q~q\ $ (((!\ff|Q~q\) # ((!\bincount|ff2|Q~q\) # (\bincount|ff0|Q~q\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011101111000100001110111101000000101111110100000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ff|ALT_INV_Q~q\,
	datab => \bincount|ff2|ALT_INV_Q~q\,
	datac => \bincount|ff0|ALT_INV_Q~q\,
	datad => \reg5|ALT_INV_Q~q\,
	dataf => \bincount|ff1|ALT_INV_Q~DUPLICATE_q\,
	combout => \reg5|Q~0_combout\);

-- Location: FF_X88_Y35_N7
\reg5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg5|Q~0_combout\,
	clrn => \control_unit|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q~q\);

-- Location: LABCELL_X88_Y35_N27
\reg_par|ff5|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff5|Q~0_combout\ = ( !\reg5|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg5|ALT_INV_Q~q\,
	combout => \reg_par|ff5|Q~0_combout\);

-- Location: FF_X88_Y35_N28
\reg_par|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff5|Q~0_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff5|Q~q\);

-- Location: MLABCELL_X87_Y35_N15
\reg6|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|Q~0_combout\ = ( \reg6|Q~q\ & ( \bincount|ff0|Q~q\ & ( ((!\ff|Q~q\) # (\bincount|ff2|Q~q\)) # (\bincount|ff1|Q~q\) ) ) ) # ( !\reg6|Q~q\ & ( \bincount|ff0|Q~q\ & ( (!\bincount|ff1|Q~q\ & (\ff|Q~q\ & !\bincount|ff2|Q~q\)) ) ) ) # ( \reg6|Q~q\ & ( 
-- !\bincount|ff0|Q~q\ & ( ((!\ff|Q~q\) # (!\bincount|ff2|Q~q\)) # (\bincount|ff1|Q~q\) ) ) ) # ( !\reg6|Q~q\ & ( !\bincount|ff0|Q~q\ & ( (!\bincount|ff1|Q~q\ & (\ff|Q~q\ & \bincount|ff2|Q~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010111111111111010100001010000000001111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bincount|ff1|ALT_INV_Q~q\,
	datac => \ff|ALT_INV_Q~q\,
	datad => \bincount|ff2|ALT_INV_Q~q\,
	datae => \reg6|ALT_INV_Q~q\,
	dataf => \bincount|ff0|ALT_INV_Q~q\,
	combout => \reg6|Q~0_combout\);

-- Location: FF_X87_Y35_N17
\reg6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg6|Q~0_combout\,
	clrn => \control_unit|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q~q\);

-- Location: MLABCELL_X87_Y35_N6
\reg_par|ff6|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff6|Q~0_combout\ = !\reg6|Q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg6|ALT_INV_Q~q\,
	combout => \reg_par|ff6|Q~0_combout\);

-- Location: FF_X87_Y35_N7
\reg_par|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff6|Q~0_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff6|Q~q\);

-- Location: LABCELL_X88_Y35_N9
\reg7|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|Q~0_combout\ = ( \bincount|ff1|Q~DUPLICATE_q\ & ( \reg7|Q~q\ ) ) # ( !\bincount|ff1|Q~DUPLICATE_q\ & ( !\reg7|Q~q\ $ (((!\ff|Q~q\) # ((!\bincount|ff2|Q~q\) # (\bincount|ff0|Q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011101111000100001110111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ff|ALT_INV_Q~q\,
	datab => \bincount|ff2|ALT_INV_Q~q\,
	datac => \bincount|ff0|ALT_INV_Q~q\,
	datad => \reg7|ALT_INV_Q~q\,
	dataf => \bincount|ff1|ALT_INV_Q~DUPLICATE_q\,
	combout => \reg7|Q~0_combout\);

-- Location: FF_X88_Y35_N11
\reg7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg7|Q~0_combout\,
	clrn => \control_unit|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q~q\);

-- Location: LABCELL_X88_Y35_N24
\reg_par|ff7|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_par|ff7|Q~0_combout\ = !\reg7|Q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|ALT_INV_Q~q\,
	combout => \reg_par|ff7|Q~0_combout\);

-- Location: FF_X88_Y35_N25
\reg_par|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_unit|nord|y~0_combout\,
	d => \reg_par|ff7|Q~0_combout\,
	clrn => \control_unit|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_par|ff7|Q~q\);

-- Location: MLABCELL_X47_Y44_N0
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


