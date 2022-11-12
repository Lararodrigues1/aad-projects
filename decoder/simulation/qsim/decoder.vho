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

-- DATE "11/12/2022 18:00:15"

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
	m : OUT std_logic_vector(2 DOWNTO 0);
	valid : OUT std_logic
	);
END decoder;

-- Design Ports Information
-- m[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_m : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_valid : std_logic;
SIGNAL \m[0]~output_o\ : std_logic;
SIGNAL \m[1]~output_o\ : std_logic;
SIGNAL \m[2]~output_o\ : std_logic;
SIGNAL \valid~output_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \m0_1_xor_m0_0|y~0_combout\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \m0_1|finalxor|y~0_combout\ : std_logic;
SIGNAL \m0_1_xor_m0_0|y~1_combout\ : std_logic;
SIGNAL \m0_1|finalxor|y~1_combout\ : std_logic;
SIGNAL \m0_1_xor_m0_0|y~2_combout\ : std_logic;
SIGNAL \m2_0|finalxor|y~0_combout\ : std_logic;
SIGNAL \m2_1|finalxor|y~1_combout\ : std_logic;
SIGNAL \m2_1|finalxor|y~0_combout\ : std_logic;
SIGNAL \m2_0|finalxor|y~1_combout\ : std_logic;
SIGNAL \xor_valid|y~1_combout\ : std_logic;
SIGNAL \m1_0|finalxor|y~0_combout\ : std_logic;
SIGNAL \m1_1|finalxor|y~0_combout\ : std_logic;
SIGNAL \m1_1|finalxor|y~1_combout\ : std_logic;
SIGNAL \m1_0|finalxor|y~1_combout\ : std_logic;
SIGNAL \xor_valid|y~0_combout\ : std_logic;
SIGNAL \m0_1|finalxor|y~2_combout\ : std_logic;
SIGNAL \m0|y~combout\ : std_logic;
SIGNAL \m1_1|finalxor|y~2_combout\ : std_logic;
SIGNAL \m1|y~combout\ : std_logic;
SIGNAL \m2_1|finalxor|y~2_combout\ : std_logic;
SIGNAL \m2|y~combout\ : std_logic;
SIGNAL \xor_valid|y~2_combout\ : std_logic;

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
	i => \m0|y~combout\,
	devoe => ww_devoe,
	o => \m[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\m[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m1|y~combout\,
	devoe => ww_devoe,
	o => \m[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\m[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m2|y~combout\,
	devoe => ww_devoe,
	o => \m[2]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
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

-- Location: IOIBUF_X26_Y0_N1
\y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\y[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\y[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LCCOMB_X19_Y1_N12
\m0_1_xor_m0_0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0_1_xor_m0_0|y~0_combout\ = (\y[2]~input_o\ & (\y[3]~input_o\ & (\y[6]~input_o\ $ (!\y[7]~input_o\)))) # (!\y[2]~input_o\ & (!\y[3]~input_o\ & (\y[6]~input_o\ $ (!\y[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \y[6]~input_o\,
	datac => \y[7]~input_o\,
	datad => \y[3]~input_o\,
	combout => \m0_1_xor_m0_0|y~0_combout\);

-- Location: IOIBUF_X20_Y0_N8
\y[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\y[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LCCOMB_X19_Y1_N16
\m0_1|finalxor|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0_1|finalxor|y~0_combout\ = (\y[5]~input_o\ & (!\y[4]~input_o\ & (\y[0]~input_o\ $ (\y[1]~input_o\)))) # (!\y[5]~input_o\ & (\y[4]~input_o\ & (\y[0]~input_o\ $ (\y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datab => \y[4]~input_o\,
	datac => \y[0]~input_o\,
	datad => \y[1]~input_o\,
	combout => \m0_1|finalxor|y~0_combout\);

-- Location: LCCOMB_X19_Y1_N22
\m0_1_xor_m0_0|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0_1_xor_m0_0|y~1_combout\ = (\y[5]~input_o\ & (\y[4]~input_o\ & (\y[0]~input_o\ $ (!\y[1]~input_o\)))) # (!\y[5]~input_o\ & (!\y[4]~input_o\ & (\y[0]~input_o\ $ (!\y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datab => \y[4]~input_o\,
	datac => \y[0]~input_o\,
	datad => \y[1]~input_o\,
	combout => \m0_1_xor_m0_0|y~1_combout\);

-- Location: LCCOMB_X19_Y1_N18
\m0_1|finalxor|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0_1|finalxor|y~1_combout\ = (\y[2]~input_o\ & (!\y[3]~input_o\ & (\y[6]~input_o\ $ (\y[7]~input_o\)))) # (!\y[2]~input_o\ & (\y[3]~input_o\ & (\y[6]~input_o\ $ (\y[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \y[6]~input_o\,
	datac => \y[7]~input_o\,
	datad => \y[3]~input_o\,
	combout => \m0_1|finalxor|y~1_combout\);

-- Location: LCCOMB_X19_Y1_N4
\m0_1_xor_m0_0|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0_1_xor_m0_0|y~2_combout\ = (\m0_1_xor_m0_0|y~0_combout\ & ((\m0_1_xor_m0_0|y~1_combout\ $ (\m0_1|finalxor|y~1_combout\)) # (!\m0_1|finalxor|y~0_combout\))) # (!\m0_1_xor_m0_0|y~0_combout\ & ((\m0_1|finalxor|y~0_combout\) # (\m0_1_xor_m0_0|y~1_combout\ 
-- $ (\m0_1|finalxor|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0_1_xor_m0_0|y~0_combout\,
	datab => \m0_1|finalxor|y~0_combout\,
	datac => \m0_1_xor_m0_0|y~1_combout\,
	datad => \m0_1|finalxor|y~1_combout\,
	combout => \m0_1_xor_m0_0|y~2_combout\);

-- Location: LCCOMB_X19_Y1_N14
\m2_0|finalxor|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2_0|finalxor|y~0_combout\ = (\y[5]~input_o\ & (\y[1]~input_o\ & (\y[3]~input_o\ $ (!\y[7]~input_o\)))) # (!\y[5]~input_o\ & (!\y[1]~input_o\ & (\y[3]~input_o\ $ (!\y[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datab => \y[3]~input_o\,
	datac => \y[7]~input_o\,
	datad => \y[1]~input_o\,
	combout => \m2_0|finalxor|y~0_combout\);

-- Location: LCCOMB_X19_Y1_N10
\m2_1|finalxor|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2_1|finalxor|y~1_combout\ = (\y[5]~input_o\ & (!\y[1]~input_o\ & (\y[3]~input_o\ $ (\y[7]~input_o\)))) # (!\y[5]~input_o\ & (\y[1]~input_o\ & (\y[3]~input_o\ $ (\y[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datab => \y[3]~input_o\,
	datac => \y[7]~input_o\,
	datad => \y[1]~input_o\,
	combout => \m2_1|finalxor|y~1_combout\);

-- Location: LCCOMB_X19_Y1_N8
\m2_1|finalxor|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2_1|finalxor|y~0_combout\ = (\y[0]~input_o\ & (!\y[4]~input_o\ & (\y[6]~input_o\ $ (\y[2]~input_o\)))) # (!\y[0]~input_o\ & (\y[4]~input_o\ & (\y[6]~input_o\ $ (\y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[4]~input_o\,
	datac => \y[6]~input_o\,
	datad => \y[2]~input_o\,
	combout => \m2_1|finalxor|y~0_combout\);

-- Location: LCCOMB_X19_Y1_N28
\m2_0|finalxor|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2_0|finalxor|y~1_combout\ = (\y[0]~input_o\ & (\y[4]~input_o\ & (\y[6]~input_o\ $ (!\y[2]~input_o\)))) # (!\y[0]~input_o\ & (!\y[4]~input_o\ & (\y[6]~input_o\ $ (!\y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[4]~input_o\,
	datac => \y[6]~input_o\,
	datad => \y[2]~input_o\,
	combout => \m2_0|finalxor|y~1_combout\);

-- Location: LCCOMB_X12_Y1_N24
\xor_valid|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_valid|y~1_combout\ = (\m2_0|finalxor|y~0_combout\ & ((\m2_1|finalxor|y~1_combout\ & (\m2_1|finalxor|y~0_combout\ $ (\m2_0|finalxor|y~1_combout\))) # (!\m2_1|finalxor|y~1_combout\ & ((\m2_0|finalxor|y~1_combout\) # (!\m2_1|finalxor|y~0_combout\))))) # 
-- (!\m2_0|finalxor|y~0_combout\ & ((\m2_1|finalxor|y~1_combout\ & ((\m2_1|finalxor|y~0_combout\) # (!\m2_0|finalxor|y~1_combout\))) # (!\m2_1|finalxor|y~1_combout\ & (\m2_1|finalxor|y~0_combout\ $ (\m2_0|finalxor|y~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2_0|finalxor|y~0_combout\,
	datab => \m2_1|finalxor|y~1_combout\,
	datac => \m2_1|finalxor|y~0_combout\,
	datad => \m2_0|finalxor|y~1_combout\,
	combout => \xor_valid|y~1_combout\);

-- Location: LCCOMB_X19_Y1_N26
\m1_0|finalxor|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1_0|finalxor|y~0_combout\ = (\y[5]~input_o\ & (\y[7]~input_o\ & (\y[3]~input_o\ $ (!\y[1]~input_o\)))) # (!\y[5]~input_o\ & (!\y[7]~input_o\ & (\y[3]~input_o\ $ (!\y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datab => \y[3]~input_o\,
	datac => \y[7]~input_o\,
	datad => \y[1]~input_o\,
	combout => \m1_0|finalxor|y~0_combout\);

-- Location: LCCOMB_X19_Y1_N20
\m1_1|finalxor|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1_1|finalxor|y~0_combout\ = (\y[0]~input_o\ & (!\y[2]~input_o\ & (\y[4]~input_o\ $ (\y[6]~input_o\)))) # (!\y[0]~input_o\ & (\y[2]~input_o\ & (\y[4]~input_o\ $ (\y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[4]~input_o\,
	datac => \y[6]~input_o\,
	datad => \y[2]~input_o\,
	combout => \m1_1|finalxor|y~0_combout\);

-- Location: LCCOMB_X19_Y1_N30
\m1_1|finalxor|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1_1|finalxor|y~1_combout\ = (\y[5]~input_o\ & (!\y[7]~input_o\ & (\y[3]~input_o\ $ (\y[1]~input_o\)))) # (!\y[5]~input_o\ & (\y[7]~input_o\ & (\y[3]~input_o\ $ (\y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datab => \y[3]~input_o\,
	datac => \y[7]~input_o\,
	datad => \y[1]~input_o\,
	combout => \m1_1|finalxor|y~1_combout\);

-- Location: LCCOMB_X19_Y1_N24
\m1_0|finalxor|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1_0|finalxor|y~1_combout\ = (\y[0]~input_o\ & (\y[2]~input_o\ & (\y[4]~input_o\ $ (!\y[6]~input_o\)))) # (!\y[0]~input_o\ & (!\y[2]~input_o\ & (\y[4]~input_o\ $ (!\y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[4]~input_o\,
	datac => \y[6]~input_o\,
	datad => \y[2]~input_o\,
	combout => \m1_0|finalxor|y~1_combout\);

-- Location: LCCOMB_X19_Y1_N2
\xor_valid|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_valid|y~0_combout\ = (\m1_0|finalxor|y~0_combout\ & ((\m1_1|finalxor|y~0_combout\ & (\m1_1|finalxor|y~1_combout\ $ (\m1_0|finalxor|y~1_combout\))) # (!\m1_1|finalxor|y~0_combout\ & ((\m1_0|finalxor|y~1_combout\) # (!\m1_1|finalxor|y~1_combout\))))) # 
-- (!\m1_0|finalxor|y~0_combout\ & ((\m1_1|finalxor|y~0_combout\ & ((\m1_1|finalxor|y~1_combout\) # (!\m1_0|finalxor|y~1_combout\))) # (!\m1_1|finalxor|y~0_combout\ & (\m1_1|finalxor|y~1_combout\ $ (\m1_0|finalxor|y~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1_0|finalxor|y~0_combout\,
	datab => \m1_1|finalxor|y~0_combout\,
	datac => \m1_1|finalxor|y~1_combout\,
	datad => \m1_0|finalxor|y~1_combout\,
	combout => \xor_valid|y~0_combout\);

-- Location: LCCOMB_X19_Y1_N0
\m0_1|finalxor|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0_1|finalxor|y~2_combout\ = (\m0_1_xor_m0_0|y~0_combout\ & (((!\m0_1_xor_m0_0|y~1_combout\ & \m0_1|finalxor|y~1_combout\)))) # (!\m0_1_xor_m0_0|y~0_combout\ & ((\m0_1|finalxor|y~0_combout\) # ((!\m0_1_xor_m0_0|y~1_combout\ & 
-- \m0_1|finalxor|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0_1_xor_m0_0|y~0_combout\,
	datab => \m0_1|finalxor|y~0_combout\,
	datac => \m0_1_xor_m0_0|y~1_combout\,
	datad => \m0_1|finalxor|y~1_combout\,
	combout => \m0_1|finalxor|y~2_combout\);

-- Location: LCCOMB_X12_Y1_N10
\m0|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0|y~combout\ = (\m0_1|finalxor|y~2_combout\ & (\m0_1_xor_m0_0|y~2_combout\ $ (\xor_valid|y~1_combout\ $ (\xor_valid|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0_1_xor_m0_0|y~2_combout\,
	datab => \xor_valid|y~1_combout\,
	datac => \xor_valid|y~0_combout\,
	datad => \m0_1|finalxor|y~2_combout\,
	combout => \m0|y~combout\);

-- Location: LCCOMB_X19_Y1_N6
\m1_1|finalxor|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1_1|finalxor|y~2_combout\ = (\m1_0|finalxor|y~0_combout\ & (((\m1_1|finalxor|y~1_combout\ & !\m1_0|finalxor|y~1_combout\)))) # (!\m1_0|finalxor|y~0_combout\ & ((\m1_1|finalxor|y~0_combout\) # ((\m1_1|finalxor|y~1_combout\ & 
-- !\m1_0|finalxor|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1_0|finalxor|y~0_combout\,
	datab => \m1_1|finalxor|y~0_combout\,
	datac => \m1_1|finalxor|y~1_combout\,
	datad => \m1_0|finalxor|y~1_combout\,
	combout => \m1_1|finalxor|y~2_combout\);

-- Location: LCCOMB_X12_Y1_N4
\m1|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1|y~combout\ = (\m1_1|finalxor|y~2_combout\ & (\m0_1_xor_m0_0|y~2_combout\ $ (\xor_valid|y~1_combout\ $ (\xor_valid|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0_1_xor_m0_0|y~2_combout\,
	datab => \xor_valid|y~1_combout\,
	datac => \xor_valid|y~0_combout\,
	datad => \m1_1|finalxor|y~2_combout\,
	combout => \m1|y~combout\);

-- Location: LCCOMB_X12_Y1_N6
\m2_1|finalxor|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2_1|finalxor|y~2_combout\ = (\m2_0|finalxor|y~0_combout\ & (\m2_1|finalxor|y~1_combout\ & ((!\m2_0|finalxor|y~1_combout\)))) # (!\m2_0|finalxor|y~0_combout\ & ((\m2_1|finalxor|y~0_combout\) # ((\m2_1|finalxor|y~1_combout\ & 
-- !\m2_0|finalxor|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2_0|finalxor|y~0_combout\,
	datab => \m2_1|finalxor|y~1_combout\,
	datac => \m2_1|finalxor|y~0_combout\,
	datad => \m2_0|finalxor|y~1_combout\,
	combout => \m2_1|finalxor|y~2_combout\);

-- Location: LCCOMB_X12_Y1_N0
\m2|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2|y~combout\ = (\m2_1|finalxor|y~2_combout\ & (\xor_valid|y~1_combout\ $ (\xor_valid|y~0_combout\ $ (\m0_1_xor_m0_0|y~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2_1|finalxor|y~2_combout\,
	datab => \xor_valid|y~1_combout\,
	datac => \xor_valid|y~0_combout\,
	datad => \m0_1_xor_m0_0|y~2_combout\,
	combout => \m2|y~combout\);

-- Location: LCCOMB_X12_Y1_N2
\xor_valid|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_valid|y~2_combout\ = \m0_1_xor_m0_0|y~2_combout\ $ (\xor_valid|y~1_combout\ $ (\xor_valid|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0_1_xor_m0_0|y~2_combout\,
	datab => \xor_valid|y~1_combout\,
	datac => \xor_valid|y~0_combout\,
	combout => \xor_valid|y~2_combout\);

ww_m(0) <= \m[0]~output_o\;

ww_m(1) <= \m[1]~output_o\;

ww_m(2) <= \m[2]~output_o\;

ww_valid <= \valid~output_o\;
END structure;


