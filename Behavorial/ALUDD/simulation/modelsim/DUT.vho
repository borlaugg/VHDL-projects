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

-- DATE "09/24/2021 15:19:31"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(9 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|A[0]~2_combout\ : std_logic;
SIGNAL \add_instance|A[0]~3_combout\ : std_logic;
SIGNAL \add_instance|LessThan0~0_combout\ : std_logic;
SIGNAL \add_instance|A[0]_374~combout\ : std_logic;
SIGNAL \add_instance|Y[0]~0_combout\ : std_logic;
SIGNAL \add_instance|Y[0]~1_combout\ : std_logic;
SIGNAL \add_instance|O~0_combout\ : std_logic;
SIGNAL \add_instance|A[1]~0_combout\ : std_logic;
SIGNAL \add_instance|A[1]~4_combout\ : std_logic;
SIGNAL \add_instance|A[1]_392~combout\ : std_logic;
SIGNAL \add_instance|Y[1]~2_combout\ : std_logic;
SIGNAL \add_instance|Y[1]~3_combout\ : std_logic;
SIGNAL \add_instance|C~0_combout\ : std_logic;
SIGNAL \add_instance|Y[2]~4_combout\ : std_logic;
SIGNAL \add_instance|A[2]~5_combout\ : std_logic;
SIGNAL \add_instance|A[2]~6_combout\ : std_logic;
SIGNAL \add_instance|A[2]_410~combout\ : std_logic;
SIGNAL \add_instance|Y[2]~5_combout\ : std_logic;
SIGNAL \add_instance|Y[2]~6_combout\ : std_logic;
SIGNAL \add_instance|C~1_combout\ : std_logic;
SIGNAL \add_instance|Y[3]~7_combout\ : std_logic;
SIGNAL \add_instance|A[3]~7_combout\ : std_logic;
SIGNAL \add_instance|A[3]~8_combout\ : std_logic;
SIGNAL \add_instance|A[3]_428~combout\ : std_logic;
SIGNAL \add_instance|Y[3]~8_combout\ : std_logic;
SIGNAL \add_instance|Y[3]~9_combout\ : std_logic;
SIGNAL \add_instance|A1~5_combout\ : std_logic;
SIGNAL \add_instance|A1~12_combout\ : std_logic;
SIGNAL \add_instance|A1~13_combout\ : std_logic;
SIGNAL \add_instance|A1~4_combout\ : std_logic;
SIGNAL \add_instance|A1~6_combout\ : std_logic;
SIGNAL \add_instance|LessThan4~0_combout\ : std_logic;
SIGNAL \add_instance|Y[4]~12_combout\ : std_logic;
SIGNAL \add_instance|Y[0]~10_combout\ : std_logic;
SIGNAL \add_instance|Y[4]~11_combout\ : std_logic;
SIGNAL \add_instance|Y[4]~13_combout\ : std_logic;
SIGNAL \add_instance|Y[4]~14_combout\ : std_logic;
SIGNAL \add_instance|Y[5]~15_combout\ : std_logic;
SIGNAL \add_instance|A1~7_combout\ : std_logic;
SIGNAL \add_instance|Y[5]~16_combout\ : std_logic;
SIGNAL \add_instance|Y[5]~17_combout\ : std_logic;
SIGNAL \add_instance|LessThan5~0_combout\ : std_logic;
SIGNAL \add_instance|A1~8_combout\ : std_logic;
SIGNAL \add_instance|A1~9_combout\ : std_logic;
SIGNAL \add_instance|A1~10_combout\ : std_logic;
SIGNAL \add_instance|A1~11_combout\ : std_logic;
SIGNAL \add_instance|Y[6]~19_combout\ : std_logic;
SIGNAL \add_instance|Y[6]~18_combout\ : std_logic;
SIGNAL \add_instance|Y[6]~20_combout\ : std_logic;
SIGNAL \add_instance|LessThan2~0_combout\ : std_logic;
SIGNAL \add_instance|A[0]~1_combout\ : std_logic;
SIGNAL \add_instance|Y[7]~21_combout\ : std_logic;
SIGNAL \add_instance|Y[7]~22_combout\ : std_logic;
SIGNAL \add_instance|Y[7]~23_combout\ : std_logic;
SIGNAL \add_instance|Y[7]~24_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X10_Y4_N4
\add_instance|A[0]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|A[0]~2_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(0) & ((\input_vector~combout\(5)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(6))))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A[0]~2_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X10_Y4_N5
\add_instance|A[0]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|A[0]~3_combout\ = (\add_instance|A[0]~2_combout\ & (\input_vector~combout\(2) & ((\input_vector~combout\(1)) # (\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|A[0]~2_combout\,
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A[0]~3_combout\);

-- Location: LC_X12_Y3_N9
\add_instance|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan0~0_combout\ = (\input_vector~combout\(2)) # (((\input_vector~combout\(0)) # (\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan0~0_combout\);

-- Location: LC_X10_Y4_N7
\add_instance|A[0]_374\ : maxv_lcell
-- Equation(s):
-- \add_instance|A[0]_374~combout\ = (GLOBAL(\add_instance|LessThan0~0_combout\) & (((\add_instance|A[0]~3_combout\)))) # (!GLOBAL(\add_instance|LessThan0~0_combout\) & (\add_instance|A[0]_374~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|A[0]_374~combout\,
	datab => \add_instance|A[0]~3_combout\,
	datac => \add_instance|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A[0]_374~combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X13_Y6_N4
\add_instance|Y[0]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[0]~0_combout\ = ((\input_vector~combout\(0) & ((\input_vector~combout\(9)) # (!\input_vector~combout\(4)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[0]~0_combout\);

-- Location: LC_X13_Y6_N6
\add_instance|Y[0]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[0]~1_combout\ = (\input_vector~combout\(8) & (((\add_instance|Y[0]~0_combout\ & !\input_vector~combout\(9))))) # (!\input_vector~combout\(8) & ((\input_vector~combout\(9) & ((!\add_instance|Y[0]~0_combout\))) # (!\input_vector~combout\(9) 
-- & (\add_instance|A[0]_374~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|A[0]_374~combout\,
	datac => \add_instance|Y[0]~0_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[0]~1_combout\);

-- Location: LC_X13_Y6_N5
\add_instance|O~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|O~0_combout\ = \input_vector~combout\(1) $ (\input_vector~combout\(5) $ (((\input_vector~combout\(0) & !\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "59a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|O~0_combout\);

-- Location: LC_X10_Y4_N0
\add_instance|A[1]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|A[1]~0_combout\ = ((\input_vector~combout\(0) & (\input_vector~combout\(6))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A[1]~0_combout\);

-- Location: LC_X10_Y4_N9
\add_instance|A[1]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|A[1]~4_combout\ = (\input_vector~combout\(2) & (\add_instance|A[1]~0_combout\ & ((\input_vector~combout\(1))))) # (!\input_vector~combout\(2) & (((\input_vector~combout\(4) & !\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8830",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|A[1]~0_combout\,
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A[1]~4_combout\);

-- Location: LC_X10_Y4_N8
\add_instance|A[1]_392\ : maxv_lcell
-- Equation(s):
-- \add_instance|A[1]_392~combout\ = ((GLOBAL(\add_instance|LessThan0~0_combout\) & (\add_instance|A[1]~4_combout\)) # (!GLOBAL(\add_instance|LessThan0~0_combout\) & ((\add_instance|A[1]_392~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|A[1]~4_combout\,
	datac => \add_instance|LessThan0~0_combout\,
	datad => \add_instance|A[1]_392~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A[1]_392~combout\);

-- Location: LC_X14_Y5_N5
\add_instance|Y[1]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[1]~2_combout\ = (\input_vector~combout\(9) & (((!\input_vector~combout\(1) & !\input_vector~combout\(5))))) # (!\input_vector~combout\(9) & (\add_instance|A[1]_392~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "222e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|A[1]_392~combout\,
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[1]~2_combout\);

-- Location: LC_X14_Y5_N4
\add_instance|Y[1]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[1]~3_combout\ = (\input_vector~combout\(8) & (\add_instance|O~0_combout\ & (!\input_vector~combout\(9)))) # (!\input_vector~combout\(8) & (((\add_instance|Y[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|O~0_combout\,
	datab => \input_vector~combout\(9),
	datac => \add_instance|Y[1]~2_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[1]~3_combout\);

-- Location: LC_X10_Y7_N3
\add_instance|C~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|C~0_combout\ = (\input_vector~combout\(5) & (\input_vector~combout\(0) & (!\input_vector~combout\(4) & \input_vector~combout\(1)))) # (!\input_vector~combout\(5) & ((\input_vector~combout\(1)) # ((\input_vector~combout\(0) & 
-- !\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C~0_combout\);

-- Location: LC_X10_Y7_N2
\add_instance|Y[2]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[2]~4_combout\ = (\input_vector~combout\(9) & (((\input_vector~combout\(2)) # (\input_vector~combout\(6))))) # (!\input_vector~combout\(9) & (\add_instance|C~0_combout\ $ (\input_vector~combout\(2) $ (\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc96",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|C~0_combout\,
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[2]~4_combout\);

-- Location: LC_X10_Y7_N4
\add_instance|A[2]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|A[2]~5_combout\ = (\input_vector~combout\(2) & (\input_vector~combout\(7) & ((\input_vector~combout\(0))))) # (!\input_vector~combout\(2) & (((\input_vector~combout\(4) & !\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8830",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A[2]~5_combout\);

-- Location: LC_X10_Y7_N9
\add_instance|A[2]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|A[2]~6_combout\ = (\input_vector~combout\(1) & (((\add_instance|A[2]~5_combout\)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(5) & ((!\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|A[2]~5_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A[2]~6_combout\);

-- Location: LC_X10_Y7_N8
\add_instance|A[2]_410\ : maxv_lcell
-- Equation(s):
-- \add_instance|A[2]_410~combout\ = ((GLOBAL(\add_instance|LessThan0~0_combout\) & (\add_instance|A[2]~6_combout\)) # (!GLOBAL(\add_instance|LessThan0~0_combout\) & ((\add_instance|A[2]_410~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|A[2]~6_combout\,
	datac => \add_instance|LessThan0~0_combout\,
	datad => \add_instance|A[2]_410~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A[2]_410~combout\);

-- Location: LC_X10_Y7_N6
\add_instance|Y[2]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[2]~5_combout\ = ((\input_vector~combout\(9) & ((\input_vector~combout\(4)))) # (!\input_vector~combout\(9) & (\add_instance|A[2]_410~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|A[2]_410~combout\,
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[2]~5_combout\);

-- Location: LC_X10_Y7_N7
\add_instance|Y[2]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[2]~6_combout\ = (\input_vector~combout\(9) & ((\input_vector~combout\(8) & ((\add_instance|Y[2]~5_combout\))) # (!\input_vector~combout\(8) & (!\add_instance|Y[2]~4_combout\)))) # (!\input_vector~combout\(9) & ((\input_vector~combout\(8) & 
-- (\add_instance|Y[2]~4_combout\)) # (!\input_vector~combout\(8) & ((\add_instance|Y[2]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e472",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \add_instance|Y[2]~4_combout\,
	datac => \add_instance|Y[2]~5_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[2]~6_combout\);

-- Location: LC_X10_Y7_N5
\add_instance|C~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|C~1_combout\ = ((\input_vector~combout\(2) & ((\add_instance|C~0_combout\) # (!\input_vector~combout\(6)))) # (!\input_vector~combout\(2) & (!\input_vector~combout\(6) & \add_instance|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(6),
	datad => \add_instance|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C~1_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X13_Y6_N1
\add_instance|Y[3]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[3]~7_combout\ = (\input_vector~combout\(8) & (\add_instance|C~1_combout\ $ (\input_vector~combout\(3) $ (\input_vector~combout\(7))))) # (!\input_vector~combout\(8) & (((\input_vector~combout\(3)) # (\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|C~1_combout\,
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[3]~7_combout\);

-- Location: LC_X11_Y5_N0
\add_instance|A[3]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|A[3]~7_combout\ = ((\input_vector~combout\(0) & ((\input_vector~combout\(4)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A[3]~7_combout\);

-- Location: LC_X11_Y5_N5
\add_instance|A[3]~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|A[3]~8_combout\ = (!\input_vector~combout\(2) & ((\input_vector~combout\(1) & (\add_instance|A[3]~7_combout\)) # (!\input_vector~combout\(1) & ((\input_vector~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|A[3]~7_combout\,
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A[3]~8_combout\);

-- Location: LC_X11_Y5_N9
\add_instance|A[3]_428\ : maxv_lcell
-- Equation(s):
-- \add_instance|A[3]_428~combout\ = ((GLOBAL(\add_instance|LessThan0~0_combout\) & (\add_instance|A[3]~8_combout\)) # (!GLOBAL(\add_instance|LessThan0~0_combout\) & ((\add_instance|A[3]_428~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|A[3]~8_combout\,
	datac => \add_instance|LessThan0~0_combout\,
	datad => \add_instance|A[3]_428~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A[3]_428~combout\);

-- Location: LC_X11_Y5_N3
\add_instance|Y[3]~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[3]~8_combout\ = ((\input_vector~combout\(8) & ((\input_vector~combout\(5)))) # (!\input_vector~combout\(8) & (\add_instance|A[3]_428~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|A[3]_428~combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[3]~8_combout\);

-- Location: LC_X14_Y5_N2
\add_instance|Y[3]~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[3]~9_combout\ = (\input_vector~combout\(9) & ((\input_vector~combout\(8) & ((\add_instance|Y[3]~8_combout\))) # (!\input_vector~combout\(8) & (!\add_instance|Y[3]~7_combout\)))) # (!\input_vector~combout\(9) & ((\input_vector~combout\(8) & 
-- (\add_instance|Y[3]~7_combout\)) # (!\input_vector~combout\(8) & ((\add_instance|Y[3]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca5c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Y[3]~7_combout\,
	datab => \add_instance|Y[3]~8_combout\,
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[3]~9_combout\);

-- Location: LC_X12_Y3_N2
\add_instance|A1~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1~5_combout\ = ((\input_vector~combout\(1) & ((\input_vector~combout\(5)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1~5_combout\);

-- Location: LC_X12_Y3_N6
\add_instance|A1~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1~12_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(0) & ((\add_instance|A1~5_combout\))) # (!\input_vector~combout\(0) & (\input_vector~combout\(6))))) # (!\input_vector~combout\(1) & (((\add_instance|A1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(0),
	datad => \add_instance|A1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1~12_combout\);

-- Location: LC_X12_Y3_N7
\add_instance|A1~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1~13_combout\ = (\input_vector~combout\(2) & (\input_vector~combout\(4))) # (!\input_vector~combout\(2) & (((\input_vector~combout\(0)) # (\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1~13_combout\);

-- Location: LC_X12_Y3_N5
\add_instance|A1~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1~4_combout\ = (!\input_vector~combout\(2) & (\input_vector~combout\(7) & (\input_vector~combout\(0) & \input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1~4_combout\);

-- Location: LC_X12_Y3_N8
\add_instance|A1~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1~6_combout\ = (\add_instance|A1~13_combout\ & ((\add_instance|A1~12_combout\) # ((\input_vector~combout\(2))))) # (!\add_instance|A1~13_combout\ & (((\add_instance|A1~4_combout\ & !\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|A1~12_combout\,
	datab => \add_instance|A1~13_combout\,
	datac => \add_instance|A1~4_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1~6_combout\);

-- Location: LC_X11_Y7_N3
\add_instance|LessThan4~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan4~0_combout\ = (\input_vector~combout\(2) & (((\input_vector~combout\(0)) # (\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan4~0_combout\);

-- Location: LC_X11_Y5_N6
\add_instance|Y[4]~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[4]~12_combout\ = (\add_instance|A1~6_combout\ & (!\add_instance|LessThan4~0_combout\ & (!\input_vector~combout\(8) & !\input_vector~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|A1~6_combout\,
	datab => \add_instance|LessThan4~0_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[4]~12_combout\);

-- Location: LC_X13_Y6_N2
\add_instance|Y[0]~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[0]~10_combout\ = ((!\input_vector~combout\(9) & ((\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(9),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[0]~10_combout\);

-- Location: LC_X13_Y6_N9
\add_instance|Y[4]~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[4]~11_combout\ = (\add_instance|Y[0]~10_combout\ & ((\add_instance|C~1_combout\ & ((\input_vector~combout\(3)) # (!\input_vector~combout\(7)))) # (!\add_instance|C~1_combout\ & (!\input_vector~combout\(7) & \input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|C~1_combout\,
	datab => \add_instance|Y[0]~10_combout\,
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[4]~11_combout\);

-- Location: LC_X11_Y5_N2
\add_instance|Y[4]~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[4]~13_combout\ = ((\input_vector~combout\(9) & (\input_vector~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[4]~13_combout\);

-- Location: LC_X11_Y5_N8
\add_instance|Y[4]~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[4]~14_combout\ = (\add_instance|Y[4]~12_combout\) # ((\add_instance|Y[4]~11_combout\) # ((\input_vector~combout\(6) & \add_instance|Y[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Y[4]~12_combout\,
	datab => \input_vector~combout\(6),
	datac => \add_instance|Y[4]~11_combout\,
	datad => \add_instance|Y[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[4]~14_combout\);

-- Location: LC_X11_Y5_N7
\add_instance|Y[5]~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[5]~15_combout\ = (!\input_vector~combout\(9) & (!\input_vector~combout\(8) & ((!\input_vector~combout\(1)) # (!\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0103",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[5]~15_combout\);

-- Location: LC_X10_Y4_N6
\add_instance|A1~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1~7_combout\ = (\input_vector~combout\(2) & (\input_vector~combout\(5))) # (!\input_vector~combout\(2) & (((\add_instance|A[1]~0_combout\ & \input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(2),
	datac => \add_instance|A[1]~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1~7_combout\);

-- Location: LC_X11_Y5_N4
\add_instance|Y[5]~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[5]~16_combout\ = (\add_instance|Y[5]~15_combout\ & ((\add_instance|LessThan4~0_combout\ & (\add_instance|A1~6_combout\)) # (!\add_instance|LessThan4~0_combout\ & ((\add_instance|A1~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|A1~6_combout\,
	datab => \add_instance|Y[5]~15_combout\,
	datac => \add_instance|A1~7_combout\,
	datad => \add_instance|LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[5]~16_combout\);

-- Location: LC_X11_Y5_N1
\add_instance|Y[5]~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[5]~17_combout\ = (\add_instance|Y[5]~16_combout\) # ((\add_instance|Y[4]~11_combout\) # ((\input_vector~combout\(7) & \add_instance|Y[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Y[5]~16_combout\,
	datab => \input_vector~combout\(7),
	datac => \add_instance|Y[4]~11_combout\,
	datad => \add_instance|Y[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[5]~17_combout\);

-- Location: LC_X11_Y7_N1
\add_instance|LessThan5~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan5~0_combout\ = (\input_vector~combout\(2) & (((\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan5~0_combout\);

-- Location: LC_X12_Y3_N4
\add_instance|A1~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1~8_combout\ = (\input_vector~combout\(2) & ((\input_vector~combout\(6)) # ((\add_instance|A1~4_combout\)))) # (!\input_vector~combout\(2) & (((\add_instance|A1~4_combout\ & \input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(6),
	datac => \add_instance|A1~4_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1~8_combout\);

-- Location: LC_X11_Y7_N6
\add_instance|A1~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1~9_combout\ = (\add_instance|LessThan5~0_combout\ & (((\input_vector~combout\(4))))) # (!\add_instance|LessThan5~0_combout\ & (!\add_instance|LessThan4~0_combout\ & ((\add_instance|A1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|LessThan4~0_combout\,
	datab => \add_instance|LessThan5~0_combout\,
	datac => \input_vector~combout\(4),
	datad => \add_instance|A1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1~9_combout\);

-- Location: LC_X11_Y7_N9
\add_instance|A1~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1~10_combout\ = (\input_vector~combout\(2) & (((\input_vector~combout\(0) & !\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1~10_combout\);

-- Location: LC_X11_Y7_N5
\add_instance|A1~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1~11_combout\ = ((\add_instance|A1~9_combout\) # ((\add_instance|A1~7_combout\ & \add_instance|A1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|A1~7_combout\,
	datac => \add_instance|A1~9_combout\,
	datad => \add_instance|A1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1~11_combout\);

-- Location: LC_X13_Y6_N0
\add_instance|Y[6]~19\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[6]~19_combout\ = (!\input_vector~combout\(8) & (((!\input_vector~combout\(2)) # (!\input_vector~combout\(0))) # (!\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "007f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[6]~19_combout\);

-- Location: LC_X13_Y6_N7
\add_instance|Y[6]~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[6]~18_combout\ = (\input_vector~combout\(8) & ((\add_instance|C~1_combout\ & ((\input_vector~combout\(3)) # (!\input_vector~combout\(7)))) # (!\add_instance|C~1_combout\ & (\input_vector~combout\(3) & !\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8e00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|C~1_combout\,
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[6]~18_combout\);

-- Location: LC_X13_Y6_N8
\add_instance|Y[6]~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[6]~20_combout\ = (!\input_vector~combout\(9) & ((\add_instance|Y[6]~18_combout\) # ((\add_instance|A1~11_combout\ & \add_instance|Y[6]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|A1~11_combout\,
	datab => \add_instance|Y[6]~19_combout\,
	datac => \add_instance|Y[6]~18_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[6]~20_combout\);

-- Location: LC_X11_Y7_N7
\add_instance|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan2~0_combout\ = (((!\input_vector~combout\(1)) # (!\input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan2~0_combout\);

-- Location: LC_X11_Y7_N8
\add_instance|A[0]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|A[0]~1_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A[0]~1_combout\);

-- Location: LC_X11_Y7_N4
\add_instance|Y[7]~21\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[7]~21_combout\ = (\add_instance|A[0]~1_combout\) # ((!\add_instance|LessThan5~0_combout\ & (\input_vector~combout\(7) & !\add_instance|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|A[0]~1_combout\,
	datab => \add_instance|LessThan5~0_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[7]~21_combout\);

-- Location: LC_X11_Y7_N0
\add_instance|Y[7]~22\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[7]~22_combout\ = (\input_vector~combout\(2) & ((\add_instance|Y[7]~21_combout\) # ((\add_instance|A1~10_combout\ & \add_instance|A1~8_combout\)))) # (!\input_vector~combout\(2) & (\add_instance|A1~10_combout\ & 
-- ((\add_instance|A1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \add_instance|A1~10_combout\,
	datac => \add_instance|Y[7]~21_combout\,
	datad => \add_instance|A1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[7]~22_combout\);

-- Location: LC_X11_Y7_N2
\add_instance|Y[7]~23\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[7]~23_combout\ = (\input_vector~combout\(2) & ((\add_instance|LessThan2~0_combout\ & ((\add_instance|Y[7]~22_combout\))) # (!\add_instance|LessThan2~0_combout\ & (\add_instance|A1~11_combout\)))) # (!\input_vector~combout\(2) & 
-- (((\add_instance|Y[7]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \add_instance|LessThan2~0_combout\,
	datac => \add_instance|A1~11_combout\,
	datad => \add_instance|Y[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[7]~23_combout\);

-- Location: LC_X13_Y6_N3
\add_instance|Y[7]~24\ : maxv_lcell
-- Equation(s):
-- \add_instance|Y[7]~24_combout\ = (!\input_vector~combout\(9) & ((\add_instance|Y[6]~18_combout\) # ((!\input_vector~combout\(8) & \add_instance|Y[7]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00dc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|Y[6]~18_combout\,
	datac => \add_instance|Y[7]~23_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Y[7]~24_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Y[0]~1_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Y[1]~3_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Y[2]~6_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Y[3]~9_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Y[4]~14_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Y[5]~17_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Y[6]~20_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Y[7]~24_combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


