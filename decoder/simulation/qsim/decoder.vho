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

-- DATE "11/12/2022 20:48:16"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decoder IS
    PORT (
	y : IN std_logic_vector(7 DOWNTO 0);
	m : BUFFER std_logic_vector(3 DOWNTO 0);
	valid : BUFFER std_logic
	);
END decoder;

-- Design Ports Information
-- m[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_m : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_valid : std_logic;
SIGNAL \m[0]~output_o\ : std_logic;
SIGNAL \m[1]~output_o\ : std_logic;
SIGNAL \m[2]~output_o\ : std_logic;
SIGNAL \m[3]~output_o\ : std_logic;
SIGNAL \valid~output_o\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \m1_0|finalxor|y~1_combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \m1_0|finalxor|y~0_combout\ : std_logic;
SIGNAL \m1_1|finalxor|y~1_combout\ : std_logic;
SIGNAL \m1_1|finalxor|y~0_combout\ : std_logic;
SIGNAL \xor_valid|y~0_combout\ : std_logic;
SIGNAL \m2_1|finalxor|y~0_combout\ : std_logic;
SIGNAL \m2_0|finalxor|y~0_combout\ : std_logic;
SIGNAL \m2_0|finalxor|y~1_combout\ : std_logic;
SIGNAL \m2_1|finalxor|y~1_combout\ : std_logic;
SIGNAL \xor_valid|y~1_combout\ : std_logic;
SIGNAL \m1_1|finalxor|y~2_combout\ : std_logic;
SIGNAL \c01_calc|y~0_combout\ : std_logic;
SIGNAL \c00_calc|y~0_combout\ : std_logic;
SIGNAL \c02_calc|y~combout\ : std_logic;
SIGNAL \c03_calc|y~combout\ : std_logic;
SIGNAL \m0_1_xor_m0_0|y~0_combout\ : std_logic;
SIGNAL \m1|y~0_combout\ : std_logic;
SIGNAL \m0_1|finalxor|y~0_combout\ : std_logic;
SIGNAL \m0|y~combout\ : std_logic;
SIGNAL \popCounter|fA10|fA0|and20|y~0_combout\ : std_logic;
SIGNAL \popCounter|fA10|fA0|and20|y~1_combout\ : std_logic;
SIGNAL \m2_1|finalxor|y~2_combout\ : std_logic;
SIGNAL \m2|y~0_combout\ : std_logic;
SIGNAL \popCxor0|y~0_combout\ : std_logic;
SIGNAL \popCounter|hA02|and20|y~combout\ : std_logic;
SIGNAL \popCxor1|y~0_combout\ : std_logic;
SIGNAL \popCounter|fA11|fA0|and20|y~combout\ : std_logic;
SIGNAL \xor_valid|y~2_combout\ : std_logic;
SIGNAL \popCounter|fA11|fA0|xor20|y~combout\ : std_logic;
SIGNAL \popCounter|hA01|xor20|y~combout\ : std_logic;
SIGNAL \popCounter|hA01|and20|y~combout\ : std_logic;
SIGNAL \popCxor6|y~combout\ : std_logic;
SIGNAL \popCounter|fA10|fA0|xor21|y~0_combout\ : std_logic;
SIGNAL \popCounter|fA11|hA0|and20|y~combout\ : std_logic;
SIGNAL \popCounter|fA20|hA0|and20|y~0_combout\ : std_logic;
SIGNAL \popCounter|fA20|hA0|and20|y~1_combout\ : std_logic;
SIGNAL \popCounter|fA20|fA10|or20|y~0_combout\ : std_logic;
SIGNAL \m3|y~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_y <= y;
m <= ww_m;
valid <= ww_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X12_Y0_N9
\m[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m3|y~combout\,
	devoe => ww_devoe,
	o => \m[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\m[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m2|y~0_combout\,
	devoe => ww_devoe,
	o => \m[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\m[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m1|y~0_combout\,
	devoe => ww_devoe,
	o => \m[2]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\m[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|y~combout\,
	devoe => ww_devoe,
	o => \m[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\valid~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_valid|y~2_combout\,
	devoe => ww_devoe,
	o => \valid~output_o\);

-- Location: IOIBUF_X22_Y0_N8
\y[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\y[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LCCOMB_X10_Y6_N30
\m1_0|finalxor|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1_0|finalxor|y~1_combout\ = (\y[6]~input_o\ & (\y[4]~input_o\ & (\y[2]~input_o\ $ (!\y[0]~input_o\)))) # (!\y[6]~input_o\ & (!\y[4]~input_o\ & (\y[2]~input_o\ $ (!\y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \y[4]~input_o\,
	datac => \y[2]~input_o\,
	datad => \y[0]~input_o\,
	combout => \m1_0|finalxor|y~1_combout\);

-- Location: IOIBUF_X10_Y0_N8
\y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\y[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\y[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LCCOMB_X10_Y6_N0
\m1_0|finalxor|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1_0|finalxor|y~0_combout\ = (\y[1]~input_o\ & (\y[3]~input_o\ & (\y[7]~input_o\ $ (!\y[5]~input_o\)))) # (!\y[1]~input_o\ & (!\y[3]~input_o\ & (\y[7]~input_o\ $ (!\y[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datab => \y[7]~input_o\,
	datac => \y[5]~input_o\,
	datad => \y[3]~input_o\,
	combout => \m1_0|finalxor|y~0_combout\);

-- Location: LCCOMB_X10_Y6_N28
\m1_1|finalxor|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1_1|finalxor|y~1_combout\ = (\y[1]~input_o\ & (!\y[3]~input_o\ & (\y[7]~input_o\ $ (\y[5]~input_o\)))) # (!\y[1]~input_o\ & (\y[3]~input_o\ & (\y[7]~input_o\ $ (\y[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datab => \y[7]~input_o\,
	datac => \y[5]~input_o\,
	datad => \y[3]~input_o\,
	combout => \m1_1|finalxor|y~1_combout\);

-- Location: LCCOMB_X10_Y6_N10
\m1_1|finalxor|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1_1|finalxor|y~0_combout\ = (\y[6]~input_o\ & (!\y[4]~input_o\ & (\y[2]~input_o\ $ (\y[0]~input_o\)))) # (!\y[6]~input_o\ & (\y[4]~input_o\ & (\y[2]~input_o\ $ (\y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \y[4]~input_o\,
	datac => \y[2]~input_o\,
	datad => \y[0]~input_o\,
	combout => \m1_1|finalxor|y~0_combout\);

-- Location: LCCOMB_X10_Y6_N8
\xor_valid|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_valid|y~0_combout\ = (\m1_0|finalxor|y~1_combout\ & ((\m1_0|finalxor|y~0_combout\ & ((!\m1_1|finalxor|y~0_combout\) # (!\m1_1|finalxor|y~1_combout\))) # (!\m1_0|finalxor|y~0_combout\ & (\m1_1|finalxor|y~1_combout\ $ (!\m1_1|finalxor|y~0_combout\))))) 
-- # (!\m1_0|finalxor|y~1_combout\ & ((\m1_0|finalxor|y~0_combout\ & (\m1_1|finalxor|y~1_combout\ $ (!\m1_1|finalxor|y~0_combout\))) # (!\m1_0|finalxor|y~0_combout\ & ((\m1_1|finalxor|y~1_combout\) # (\m1_1|finalxor|y~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1_0|finalxor|y~1_combout\,
	datab => \m1_0|finalxor|y~0_combout\,
	datac => \m1_1|finalxor|y~1_combout\,
	datad => \m1_1|finalxor|y~0_combout\,
	combout => \xor_valid|y~0_combout\);

-- Location: LCCOMB_X10_Y6_N18
\m2_1|finalxor|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2_1|finalxor|y~0_combout\ = (\y[6]~input_o\ & (!\y[2]~input_o\ & (\y[4]~input_o\ $ (\y[0]~input_o\)))) # (!\y[6]~input_o\ & (\y[2]~input_o\ & (\y[4]~input_o\ $ (\y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \y[4]~input_o\,
	datac => \y[2]~input_o\,
	datad => \y[0]~input_o\,
	combout => \m2_1|finalxor|y~0_combout\);

-- Location: LCCOMB_X10_Y6_N16
\m2_0|finalxor|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2_0|finalxor|y~0_combout\ = (\y[1]~input_o\ & (\y[5]~input_o\ & (\y[7]~input_o\ $ (!\y[3]~input_o\)))) # (!\y[1]~input_o\ & (!\y[5]~input_o\ & (\y[7]~input_o\ $ (!\y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datab => \y[7]~input_o\,
	datac => \y[5]~input_o\,
	datad => \y[3]~input_o\,
	combout => \m2_0|finalxor|y~0_combout\);

-- Location: LCCOMB_X10_Y6_N22
\m2_0|finalxor|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2_0|finalxor|y~1_combout\ = (\y[6]~input_o\ & (\y[2]~input_o\ & (\y[4]~input_o\ $ (!\y[0]~input_o\)))) # (!\y[6]~input_o\ & (!\y[2]~input_o\ & (\y[4]~input_o\ $ (!\y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \y[4]~input_o\,
	datac => \y[2]~input_o\,
	datad => \y[0]~input_o\,
	combout => \m2_0|finalxor|y~1_combout\);

-- Location: LCCOMB_X10_Y6_N20
\m2_1|finalxor|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2_1|finalxor|y~1_combout\ = (\y[1]~input_o\ & (!\y[5]~input_o\ & (\y[7]~input_o\ $ (\y[3]~input_o\)))) # (!\y[1]~input_o\ & (\y[5]~input_o\ & (\y[7]~input_o\ $ (\y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datab => \y[7]~input_o\,
	datac => \y[5]~input_o\,
	datad => \y[3]~input_o\,
	combout => \m2_1|finalxor|y~1_combout\);

-- Location: LCCOMB_X10_Y6_N24
\xor_valid|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_valid|y~1_combout\ = (\m2_1|finalxor|y~0_combout\ & ((\m2_0|finalxor|y~0_combout\ & (\m2_0|finalxor|y~1_combout\ $ (\m2_1|finalxor|y~1_combout\))) # (!\m2_0|finalxor|y~0_combout\ & ((\m2_1|finalxor|y~1_combout\) # (!\m2_0|finalxor|y~1_combout\))))) # 
-- (!\m2_1|finalxor|y~0_combout\ & ((\m2_0|finalxor|y~0_combout\ & ((\m2_0|finalxor|y~1_combout\) # (!\m2_1|finalxor|y~1_combout\))) # (!\m2_0|finalxor|y~0_combout\ & (\m2_0|finalxor|y~1_combout\ $ (\m2_1|finalxor|y~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2_1|finalxor|y~0_combout\,
	datab => \m2_0|finalxor|y~0_combout\,
	datac => \m2_0|finalxor|y~1_combout\,
	datad => \m2_1|finalxor|y~1_combout\,
	combout => \xor_valid|y~1_combout\);

-- Location: LCCOMB_X10_Y6_N26
\m1_1|finalxor|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1_1|finalxor|y~2_combout\ = (\m1_0|finalxor|y~1_combout\ & (!\m1_0|finalxor|y~0_combout\ & ((\m1_1|finalxor|y~0_combout\)))) # (!\m1_0|finalxor|y~1_combout\ & ((\m1_1|finalxor|y~1_combout\) # ((!\m1_0|finalxor|y~0_combout\ & 
-- \m1_1|finalxor|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1_0|finalxor|y~1_combout\,
	datab => \m1_0|finalxor|y~0_combout\,
	datac => \m1_1|finalxor|y~1_combout\,
	datad => \m1_1|finalxor|y~0_combout\,
	combout => \m1_1|finalxor|y~2_combout\);

-- Location: LCCOMB_X10_Y6_N12
\c01_calc|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c01_calc|y~0_combout\ = \y[2]~input_o\ $ (\y[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[2]~input_o\,
	datad => \y[3]~input_o\,
	combout => \c01_calc|y~0_combout\);

-- Location: LCCOMB_X12_Y6_N24
\c00_calc|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c00_calc|y~0_combout\ = \y[0]~input_o\ $ (\y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[0]~input_o\,
	datad => \y[1]~input_o\,
	combout => \c00_calc|y~0_combout\);

-- Location: LCCOMB_X10_Y6_N14
\c02_calc|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c02_calc|y~combout\ = \y[5]~input_o\ $ (\y[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[5]~input_o\,
	datad => \y[4]~input_o\,
	combout => \c02_calc|y~combout\);

-- Location: LCCOMB_X10_Y6_N2
\c03_calc|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c03_calc|y~combout\ = \y[7]~input_o\ $ (\y[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[7]~input_o\,
	datad => \y[6]~input_o\,
	combout => \c03_calc|y~combout\);

-- Location: LCCOMB_X11_Y6_N24
\m0_1_xor_m0_0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0_1_xor_m0_0|y~0_combout\ = (\c01_calc|y~0_combout\ & ((\c00_calc|y~0_combout\ & ((\c02_calc|y~combout\) # (\c03_calc|y~combout\))) # (!\c00_calc|y~0_combout\ & (\c02_calc|y~combout\ $ (!\c03_calc|y~combout\))))) # (!\c01_calc|y~0_combout\ & 
-- ((\c00_calc|y~0_combout\ & (\c02_calc|y~combout\ $ (!\c03_calc|y~combout\))) # (!\c00_calc|y~0_combout\ & ((!\c03_calc|y~combout\) # (!\c02_calc|y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c01_calc|y~0_combout\,
	datab => \c00_calc|y~0_combout\,
	datac => \c02_calc|y~combout\,
	datad => \c03_calc|y~combout\,
	combout => \m0_1_xor_m0_0|y~0_combout\);

-- Location: LCCOMB_X11_Y6_N8
\m1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1|y~0_combout\ = (\m1_1|finalxor|y~2_combout\ & (\xor_valid|y~0_combout\ $ (\xor_valid|y~1_combout\ $ (\m0_1_xor_m0_0|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor_valid|y~0_combout\,
	datab => \xor_valid|y~1_combout\,
	datac => \m1_1|finalxor|y~2_combout\,
	datad => \m0_1_xor_m0_0|y~0_combout\,
	combout => \m1|y~0_combout\);

-- Location: LCCOMB_X11_Y6_N4
\m0_1|finalxor|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0_1|finalxor|y~0_combout\ = (\c01_calc|y~0_combout\ & ((\c00_calc|y~0_combout\ & ((\c02_calc|y~combout\) # (\c03_calc|y~combout\))) # (!\c00_calc|y~0_combout\ & (\c02_calc|y~combout\ & \c03_calc|y~combout\)))) # (!\c01_calc|y~0_combout\ & 
-- (\c00_calc|y~0_combout\ & (\c02_calc|y~combout\ & \c03_calc|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c01_calc|y~0_combout\,
	datab => \c00_calc|y~0_combout\,
	datac => \c02_calc|y~combout\,
	datad => \c03_calc|y~combout\,
	combout => \m0_1|finalxor|y~0_combout\);

-- Location: LCCOMB_X11_Y6_N6
\m0|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0|y~combout\ = (\m0_1|finalxor|y~0_combout\ & (\xor_valid|y~0_combout\ $ (\xor_valid|y~1_combout\ $ (\m0_1_xor_m0_0|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor_valid|y~0_combout\,
	datab => \xor_valid|y~1_combout\,
	datac => \m0_1|finalxor|y~0_combout\,
	datad => \m0_1_xor_m0_0|y~0_combout\,
	combout => \m0|y~combout\);

-- Location: LCCOMB_X12_Y6_N26
\popCounter|fA10|fA0|and20|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter|fA10|fA0|and20|y~0_combout\ = (\m1|y~0_combout\ & (!\y[5]~input_o\ & (\m0|y~combout\ $ (!\y[4]~input_o\)))) # (!\m1|y~0_combout\ & (\y[5]~input_o\ & (\m0|y~combout\ $ (\y[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|y~0_combout\,
	datab => \m0|y~combout\,
	datac => \y[5]~input_o\,
	datad => \y[4]~input_o\,
	combout => \popCounter|fA10|fA0|and20|y~0_combout\);

-- Location: LCCOMB_X12_Y6_N12
\popCounter|fA10|fA0|and20|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter|fA10|fA0|and20|y~1_combout\ = (\popCounter|fA10|fA0|and20|y~0_combout\ & (\y[7]~input_o\ & (\m0|y~combout\ $ (\y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \popCounter|fA10|fA0|and20|y~0_combout\,
	datab => \y[7]~input_o\,
	datac => \m0|y~combout\,
	datad => \y[6]~input_o\,
	combout => \popCounter|fA10|fA0|and20|y~1_combout\);

-- Location: LCCOMB_X10_Y6_N4
\m2_1|finalxor|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2_1|finalxor|y~2_combout\ = (\m2_1|finalxor|y~0_combout\ & (((!\m2_0|finalxor|y~1_combout\ & \m2_1|finalxor|y~1_combout\)) # (!\m2_0|finalxor|y~0_combout\))) # (!\m2_1|finalxor|y~0_combout\ & (((!\m2_0|finalxor|y~1_combout\ & 
-- \m2_1|finalxor|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2_1|finalxor|y~0_combout\,
	datab => \m2_0|finalxor|y~0_combout\,
	datac => \m2_0|finalxor|y~1_combout\,
	datad => \m2_1|finalxor|y~1_combout\,
	combout => \m2_1|finalxor|y~2_combout\);

-- Location: LCCOMB_X11_Y6_N26
\m2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2|y~0_combout\ = (\m2_1|finalxor|y~2_combout\ & (\xor_valid|y~0_combout\ $ (\xor_valid|y~1_combout\ $ (\m0_1_xor_m0_0|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor_valid|y~0_combout\,
	datab => \xor_valid|y~1_combout\,
	datac => \m2_1|finalxor|y~2_combout\,
	datad => \m0_1_xor_m0_0|y~0_combout\,
	combout => \m2|y~0_combout\);

-- Location: LCCOMB_X12_Y6_N16
\popCxor0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCxor0|y~0_combout\ = \m2|y~0_combout\ $ (\m0|y~combout\ $ (\y[0]~input_o\ $ (\m1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|y~0_combout\,
	datab => \m0|y~combout\,
	datac => \y[0]~input_o\,
	datad => \m1|y~0_combout\,
	combout => \popCxor0|y~0_combout\);

-- Location: LCCOMB_X12_Y6_N22
\popCounter|hA02|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter|hA02|and20|y~combout\ = (\m2|y~0_combout\ & (!\y[3]~input_o\ & (\m0|y~combout\ $ (!\y[2]~input_o\)))) # (!\m2|y~0_combout\ & (\y[3]~input_o\ & (\m0|y~combout\ $ (\y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|y~0_combout\,
	datab => \m0|y~combout\,
	datac => \y[2]~input_o\,
	datad => \y[3]~input_o\,
	combout => \popCounter|hA02|and20|y~combout\);

-- Location: LCCOMB_X12_Y6_N10
\popCxor1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCxor1|y~0_combout\ = \m1|y~0_combout\ $ (\y[1]~input_o\ $ (\m2|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|y~0_combout\,
	datab => \y[1]~input_o\,
	datac => \m2|y~0_combout\,
	combout => \popCxor1|y~0_combout\);

-- Location: LCCOMB_X12_Y6_N20
\popCounter|fA11|fA0|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter|fA11|fA0|and20|y~combout\ = (\popCxor0|y~0_combout\ & (\popCounter|hA02|and20|y~combout\ & \popCxor1|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \popCxor0|y~0_combout\,
	datac => \popCounter|hA02|and20|y~combout\,
	datad => \popCxor1|y~0_combout\,
	combout => \popCounter|fA11|fA0|and20|y~combout\);

-- Location: LCCOMB_X11_Y6_N18
\xor_valid|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_valid|y~2_combout\ = \xor_valid|y~0_combout\ $ (\xor_valid|y~1_combout\ $ (\m0_1_xor_m0_0|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor_valid|y~0_combout\,
	datab => \xor_valid|y~1_combout\,
	datad => \m0_1_xor_m0_0|y~0_combout\,
	combout => \xor_valid|y~2_combout\);

-- Location: LCCOMB_X12_Y6_N30
\popCounter|fA11|fA0|xor20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter|fA11|fA0|xor20|y~combout\ = \popCounter|hA02|and20|y~combout\ $ (((\popCxor0|y~0_combout\ & \popCxor1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \popCxor0|y~0_combout\,
	datac => \popCounter|hA02|and20|y~combout\,
	datad => \popCxor1|y~0_combout\,
	combout => \popCounter|fA11|fA0|xor20|y~combout\);

-- Location: LCCOMB_X12_Y6_N2
\popCounter|hA01|xor20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter|hA01|xor20|y~combout\ = \m0|y~combout\ $ (\y[5]~input_o\ $ (\y[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m0|y~combout\,
	datac => \y[5]~input_o\,
	datad => \y[4]~input_o\,
	combout => \popCounter|hA01|xor20|y~combout\);

-- Location: LCCOMB_X12_Y6_N28
\popCounter|hA01|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter|hA01|and20|y~combout\ = (\m1|y~0_combout\ & (!\y[5]~input_o\ & (\m0|y~combout\ $ (!\y[4]~input_o\)))) # (!\m1|y~0_combout\ & (\y[5]~input_o\ & (\m0|y~combout\ $ (\y[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|y~0_combout\,
	datab => \m0|y~combout\,
	datac => \y[5]~input_o\,
	datad => \y[4]~input_o\,
	combout => \popCounter|hA01|and20|y~combout\);

-- Location: LCCOMB_X12_Y6_N8
\popCxor6|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCxor6|y~combout\ = \m0|y~combout\ $ (\y[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m0|y~combout\,
	datad => \y[6]~input_o\,
	combout => \popCxor6|y~combout\);

-- Location: LCCOMB_X12_Y6_N14
\popCounter|fA10|fA0|xor21|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter|fA10|fA0|xor21|y~0_combout\ = \popCounter|hA01|and20|y~combout\ $ (((\popCounter|hA01|xor20|y~combout\ & ((\popCxor6|y~combout\) # (\y[7]~input_o\))) # (!\popCounter|hA01|xor20|y~combout\ & (\popCxor6|y~combout\ & \y[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \popCounter|hA01|xor20|y~combout\,
	datab => \popCounter|hA01|and20|y~combout\,
	datac => \popCxor6|y~combout\,
	datad => \y[7]~input_o\,
	combout => \popCounter|fA10|fA0|xor21|y~0_combout\);

-- Location: LCCOMB_X12_Y6_N4
\popCounter|fA11|hA0|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter|fA11|hA0|and20|y~combout\ = (\c00_calc|y~0_combout\ & (!\m0|y~combout\ & (\y[2]~input_o\ $ (\y[3]~input_o\)))) # (!\c00_calc|y~0_combout\ & (\m0|y~combout\ & (\y[2]~input_o\ $ (!\y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c00_calc|y~0_combout\,
	datab => \m0|y~combout\,
	datac => \y[2]~input_o\,
	datad => \y[3]~input_o\,
	combout => \popCounter|fA11|hA0|and20|y~combout\);

-- Location: LCCOMB_X10_Y6_N6
\popCounter|fA20|hA0|and20|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter|fA20|hA0|and20|y~0_combout\ = \y[7]~input_o\ $ (\y[5]~input_o\ $ (\y[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[7]~input_o\,
	datac => \y[5]~input_o\,
	datad => \y[6]~input_o\,
	combout => \popCounter|fA20|hA0|and20|y~0_combout\);

-- Location: LCCOMB_X11_Y6_N12
\popCounter|fA20|hA0|and20|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter|fA20|hA0|and20|y~1_combout\ = (\c01_calc|y~0_combout\ & (!\c00_calc|y~0_combout\ & (\popCounter|fA20|hA0|and20|y~0_combout\ $ (\y[4]~input_o\)))) # (!\c01_calc|y~0_combout\ & (\c00_calc|y~0_combout\ & (\popCounter|fA20|hA0|and20|y~0_combout\ $ 
-- (\y[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c01_calc|y~0_combout\,
	datab => \c00_calc|y~0_combout\,
	datac => \popCounter|fA20|hA0|and20|y~0_combout\,
	datad => \y[4]~input_o\,
	combout => \popCounter|fA20|hA0|and20|y~1_combout\);

-- Location: LCCOMB_X12_Y6_N0
\popCounter|fA20|fA10|or20|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter|fA20|fA10|or20|y~0_combout\ = (\popCounter|fA10|fA0|xor21|y~0_combout\ & ((\popCounter|fA20|hA0|and20|y~1_combout\) # (\popCounter|fA11|fA0|xor20|y~combout\ $ (\popCounter|fA11|hA0|and20|y~combout\)))) # 
-- (!\popCounter|fA10|fA0|xor21|y~0_combout\ & (\popCounter|fA20|hA0|and20|y~1_combout\ & (\popCounter|fA11|fA0|xor20|y~combout\ $ (\popCounter|fA11|hA0|and20|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \popCounter|fA11|fA0|xor20|y~combout\,
	datab => \popCounter|fA10|fA0|xor21|y~0_combout\,
	datac => \popCounter|fA11|hA0|and20|y~combout\,
	datad => \popCounter|fA20|hA0|and20|y~1_combout\,
	combout => \popCounter|fA20|fA10|or20|y~0_combout\);

-- Location: LCCOMB_X12_Y6_N18
\m3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m3|y~combout\ = (\xor_valid|y~2_combout\ & (\popCounter|fA20|fA10|or20|y~0_combout\ $ (((\popCounter|fA10|fA0|and20|y~1_combout\) # (\popCounter|fA11|fA0|and20|y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \popCounter|fA10|fA0|and20|y~1_combout\,
	datab => \popCounter|fA11|fA0|and20|y~combout\,
	datac => \xor_valid|y~2_combout\,
	datad => \popCounter|fA20|fA10|or20|y~0_combout\,
	combout => \m3|y~combout\);

ww_m(0) <= \m[0]~output_o\;

ww_m(1) <= \m[1]~output_o\;

ww_m(2) <= \m[2]~output_o\;

ww_m(3) <= \m[3]~output_o\;

ww_valid <= \valid~output_o\;
END structure;


