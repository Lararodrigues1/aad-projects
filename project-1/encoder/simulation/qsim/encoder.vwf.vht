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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/05/2022 23:50:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          encoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY encoder_vhd_vec_tst IS
END encoder_vhd_vec_tst;
ARCHITECTURE encoder_arch OF encoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL m : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT encoder
	PORT (
	m : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : encoder
	PORT MAP (
-- list connections between master ports and signals
	m => m,
	s => s
	);
-- m[3]
t_prcs_m_3: PROCESS
BEGIN
	m(3) <= '1';
WAIT;
END PROCESS t_prcs_m_3;
-- m[2]
t_prcs_m_2: PROCESS
BEGIN
	m(2) <= '1';
WAIT;
END PROCESS t_prcs_m_2;
-- m[1]
t_prcs_m_1: PROCESS
BEGIN
	m(1) <= '1';
WAIT;
END PROCESS t_prcs_m_1;
-- m[0]
t_prcs_m_0: PROCESS
BEGIN
	m(0) <= '0';
WAIT;
END PROCESS t_prcs_m_0;
END encoder_arch;