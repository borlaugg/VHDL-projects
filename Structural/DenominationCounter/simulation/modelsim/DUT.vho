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

-- DATE "09/20/2021 20:43:58"

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
	input_vector : IN std_logic_vector(7 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(10 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(10 DOWNTO 0);
SIGNAL \add_instance|d100|division:pr[7][12]~0_combout\ : std_logic;
SIGNAL \add_instance|d100|borrow~1_combout\ : std_logic;
SIGNAL \add_instance|d100|division:pr[7][11]~0_combout\ : std_logic;
SIGNAL \add_instance|d100|borrow~2_combout\ : std_logic;
SIGNAL \add_instance|d100|borrow~0_combout\ : std_logic;
SIGNAL \add_instance|d100|division:pr[7][12]~1_combout\ : std_logic;
SIGNAL \add_instance|d100|borrow~3_combout\ : std_logic;
SIGNAL \add_instance|d100|RQ[12]~0_combout\ : std_logic;
SIGNAL \add_instance|d100|RQ[13]~1_combout\ : std_logic;
SIGNAL \add_instance|d50|RQ[0]~3_combout\ : std_logic;
SIGNAL \add_instance|d50|RQ[0]~2_combout\ : std_logic;
SIGNAL \add_instance|d50|RQ[0]~4_combout\ : std_logic;
SIGNAL \add_instance|d100|RQ[11]~2_combout\ : std_logic;
SIGNAL \add_instance|d50|borrow~0_combout\ : std_logic;
SIGNAL \add_instance|d50|RQ[0]~5_combout\ : std_logic;
SIGNAL \add_instance|d50|RQ[9]~6_combout\ : std_logic;
SIGNAL \add_instance|d50|RQ[10]~10_combout\ : std_logic;
SIGNAL \add_instance|d50|division:pr[7][9]~0_combout\ : std_logic;
SIGNAL \add_instance|d50|RQ[11]~7_combout\ : std_logic;
SIGNAL \add_instance|d50|RQ[12]~8_combout\ : std_logic;
SIGNAL \add_instance|d50|RQ[13]~9_combout\ : std_logic;
SIGNAL \add_instance|mx3|m1|or1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|mx3|m1|or1|Y~1_combout\ : std_logic;
SIGNAL \add_instance|d100|borrow~4_combout\ : std_logic;
SIGNAL \add_instance|mx3|m1|or1|Y~2_combout\ : std_logic;
SIGNAL \add_instance|mx3|m2|or1|Y~combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|d100|RQ\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X14_Y7_N2
\add_instance|d100|division:pr[7][12]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|d100|division:pr[7][12]~0_combout\ = (!\input_vector~combout\(3) & (((!\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datac => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d100|division:pr[7][12]~0_combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X14_Y7_N5
\add_instance|d100|borrow~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|d100|borrow~1_combout\ = (\input_vector~combout\(6) & (\input_vector~combout\(7) & ((\input_vector~combout\(5)) # (!\add_instance|d100|division:pr[7][12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \add_instance|d100|division:pr[7][12]~0_combout\,
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d100|borrow~1_combout\);

-- Location: LC_X14_Y7_N9
\add_instance|d100|division:pr[7][11]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|d100|division:pr[7][11]~0_combout\ = \input_vector~combout\(4) $ ((((!\input_vector~combout\(3) & \add_instance|d100|borrow~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datac => \input_vector~combout\(3),
	datad => \add_instance|d100|borrow~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d100|division:pr[7][11]~0_combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X14_Y7_N6
\add_instance|d100|borrow~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|d100|borrow~2_combout\ = (\input_vector~combout\(2)) # (\input_vector~combout\(3) $ (((\add_instance|d100|borrow~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(2),
	datad => \add_instance|d100|borrow~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d100|borrow~2_combout\);

-- Location: LC_X14_Y7_N4
\add_instance|d100|borrow~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|d100|borrow~0_combout\ = (!\input_vector~combout\(3) & (!\input_vector~combout\(5) & (!\input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d100|borrow~0_combout\);

-- Location: LC_X14_Y7_N0
\add_instance|d100|division:pr[7][12]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|d100|division:pr[7][12]~1_combout\ = (\input_vector~combout\(5) & (((!\input_vector~combout\(7)) # (!\add_instance|d100|division:pr[7][12]~0_combout\)) # (!\input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \add_instance|d100|division:pr[7][12]~0_combout\,
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d100|division:pr[7][12]~1_combout\);

-- Location: LC_X14_Y7_N7
\add_instance|d100|borrow~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|d100|borrow~3_combout\ = (((!\add_instance|d100|borrow~2_combout\ & !\add_instance|d100|division:pr[7][11]~0_combout\)) # (!\add_instance|d100|division:pr[7][12]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d100|borrow~2_combout\,
	datac => \add_instance|d100|division:pr[7][12]~1_combout\,
	datad => \add_instance|d100|division:pr[7][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d100|borrow~3_combout\);

-- Location: LC_X15_Y7_N8
\add_instance|d100|RQ[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|d100|RQ\(0) = (\input_vector~combout\(6) & ((\input_vector~combout\(7) & (\add_instance|d100|borrow~0_combout\)) # (!\input_vector~combout\(7) & ((!\add_instance|d100|borrow~3_combout\))))) # (!\input_vector~combout\(6) & 
-- (((\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \add_instance|d100|borrow~0_combout\,
	datac => \add_instance|d100|borrow~3_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d100|RQ\(0));

-- Location: LC_X14_Y7_N3
\add_instance|d100|RQ[12]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|d100|RQ[12]~0_combout\ = (\add_instance|d100|division:pr[7][11]~0_combout\ $ (((!\add_instance|d100|borrow~2_combout\ & \add_instance|d100|RQ\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|d100|division:pr[7][11]~0_combout\,
	datac => \add_instance|d100|borrow~2_combout\,
	datad => \add_instance|d100|RQ\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d100|RQ[12]~0_combout\);

-- Location: LC_X14_Y7_N8
\add_instance|d100|RQ[13]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|d100|RQ[13]~1_combout\ = \add_instance|d100|division:pr[7][12]~1_combout\ $ (((\add_instance|d100|RQ\(0) & ((\add_instance|d100|borrow~2_combout\) # (\add_instance|d100|division:pr[7][11]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ef0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d100|borrow~2_combout\,
	datab => \add_instance|d100|division:pr[7][11]~0_combout\,
	datac => \add_instance|d100|division:pr[7][12]~1_combout\,
	datad => \add_instance|d100|RQ\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d100|RQ[13]~1_combout\);

-- Location: LC_X13_Y7_N7
\add_instance|d50|RQ[0]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|d50|RQ[0]~3_combout\ = (\input_vector~combout\(2) & (\add_instance|d100|RQ\(0) & (\add_instance|d100|borrow~1_combout\ $ (!\input_vector~combout\(3))))) # (!\input_vector~combout\(2) & (!\add_instance|d100|RQ\(0) & 
-- (\add_instance|d100|borrow~1_combout\ $ (!\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \add_instance|d100|borrow~1_combout\,
	datac => \add_instance|d100|RQ\(0),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d50|RQ[0]~3_combout\);

-- Location: LC_X14_Y7_N1
\add_instance|d50|RQ[0]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|d50|RQ[0]~2_combout\ = (\add_instance|d100|borrow~3_combout\ & (\input_vector~combout\(6) & ((\add_instance|d100|borrow~0_combout\) # (!\input_vector~combout\(7))))) # (!\add_instance|d100|borrow~3_combout\ & (((!\input_vector~combout\(6) & 
-- \input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "83c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d100|borrow~0_combout\,
	datab => \add_instance|d100|borrow~3_combout\,
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d50|RQ[0]~2_combout\);

-- Location: LC_X13_Y7_N2
\add_instance|d50|RQ[0]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|d50|RQ[0]~4_combout\ = (\add_instance|d50|RQ[0]~2_combout\ & (((!\add_instance|d100|RQ[12]~0_combout\ & \add_instance|d50|RQ[0]~3_combout\)) # (!\add_instance|d100|RQ[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d100|RQ[12]~0_combout\,
	datab => \add_instance|d100|RQ[13]~1_combout\,
	datac => \add_instance|d50|RQ[0]~3_combout\,
	datad => \add_instance|d50|RQ[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d50|RQ[0]~4_combout\);

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X13_Y7_N9
\add_instance|d100|RQ[11]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|d100|RQ[11]~2_combout\ = \add_instance|d100|borrow~1_combout\ $ (\input_vector~combout\(3) $ (((!\input_vector~combout\(2) & \add_instance|d100|RQ\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "639c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \add_instance|d100|borrow~1_combout\,
	datac => \add_instance|d100|RQ\(0),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d100|RQ[11]~2_combout\);

-- Location: LC_X13_Y7_N6
\add_instance|d50|borrow~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|d50|borrow~0_combout\ = (\input_vector~combout\(1)) # ((\add_instance|d100|RQ[11]~2_combout\) # (\input_vector~combout\(2) $ (\add_instance|d100|RQ\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \add_instance|d100|RQ\(0),
	datac => \input_vector~combout\(1),
	datad => \add_instance|d100|RQ[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d50|borrow~0_combout\);

-- Location: LC_X13_Y7_N1
\add_instance|d50|RQ[0]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|d50|RQ[0]~5_combout\ = (\add_instance|d50|RQ[0]~4_combout\) # ((\add_instance|d100|RQ[12]~0_combout\ & (\add_instance|d50|borrow~0_combout\ & \add_instance|d100|RQ[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d100|RQ[12]~0_combout\,
	datab => \add_instance|d50|RQ[0]~4_combout\,
	datac => \add_instance|d50|borrow~0_combout\,
	datad => \add_instance|d100|RQ[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d50|RQ[0]~5_combout\);

-- Location: LC_X15_Y7_N5
\add_instance|d50|RQ[9]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|d50|RQ[9]~6_combout\ = ((\add_instance|d50|RQ[0]~5_combout\ $ (\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|d50|RQ[0]~5_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d50|RQ[9]~6_combout\);

-- Location: LC_X13_Y7_N3
\add_instance|d50|RQ[10]~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|d50|RQ[10]~10_combout\ = \input_vector~combout\(2) $ (\add_instance|d100|RQ\(0) $ (((!\input_vector~combout\(1) & \add_instance|d50|RQ[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \add_instance|d100|RQ\(0),
	datac => \input_vector~combout\(1),
	datad => \add_instance|d50|RQ[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d50|RQ[10]~10_combout\);

-- Location: LC_X13_Y7_N5
\add_instance|d50|division:pr[7][9]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|d50|division:pr[7][9]~0_combout\ = ((\add_instance|d100|RQ\(0) $ (\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|d100|RQ\(0),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d50|division:pr[7][9]~0_combout\);

-- Location: LC_X13_Y7_N8
\add_instance|d50|RQ[11]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|d50|RQ[11]~7_combout\ = \add_instance|d100|RQ[11]~2_combout\ $ (((!\add_instance|d50|division:pr[7][9]~0_combout\ & (!\input_vector~combout\(1) & \add_instance|d50|RQ[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c9cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d50|division:pr[7][9]~0_combout\,
	datab => \add_instance|d100|RQ[11]~2_combout\,
	datac => \input_vector~combout\(1),
	datad => \add_instance|d50|RQ[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d50|RQ[11]~7_combout\);

-- Location: LC_X13_Y7_N4
\add_instance|d50|RQ[12]~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|d50|RQ[12]~8_combout\ = (\add_instance|d100|RQ[12]~0_combout\ & (((!\add_instance|d50|RQ[0]~4_combout\ & !\add_instance|d100|RQ[13]~1_combout\)) # (!\add_instance|d50|borrow~0_combout\))) # (!\add_instance|d100|RQ[12]~0_combout\ & 
-- (\add_instance|d50|RQ[0]~4_combout\ & (\add_instance|d50|borrow~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4a6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d100|RQ[12]~0_combout\,
	datab => \add_instance|d50|RQ[0]~4_combout\,
	datac => \add_instance|d50|borrow~0_combout\,
	datad => \add_instance|d100|RQ[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d50|RQ[12]~8_combout\);

-- Location: LC_X13_Y7_N0
\add_instance|d50|RQ[13]~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|d50|RQ[13]~9_combout\ = (\add_instance|d100|RQ[12]~0_combout\ & ((\add_instance|d50|borrow~0_combout\ & (\add_instance|d50|RQ[0]~4_combout\ & !\add_instance|d100|RQ[13]~1_combout\)) # (!\add_instance|d50|borrow~0_combout\ & 
-- ((\add_instance|d100|RQ[13]~1_combout\))))) # (!\add_instance|d100|RQ[12]~0_combout\ & (((\add_instance|d100|RQ[13]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d100|RQ[12]~0_combout\,
	datab => \add_instance|d50|RQ[0]~4_combout\,
	datac => \add_instance|d50|borrow~0_combout\,
	datad => \add_instance|d100|RQ[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d50|RQ[13]~9_combout\);

-- Location: LC_X15_Y7_N6
\add_instance|mx3|m1|or1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mx3|m1|or1|Y~0_combout\ = ((\input_vector~combout\(2)) # ((\input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(2),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mx3|m1|or1|Y~0_combout\);

-- Location: LC_X15_Y7_N9
\add_instance|mx3|m1|or1|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|mx3|m1|or1|Y~1_combout\ = (\input_vector~combout\(0)) # (((\add_instance|mx3|m1|or1|Y~0_combout\) # (\input_vector~combout\(1))) # (!\add_instance|d100|borrow~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|d100|borrow~0_combout\,
	datac => \add_instance|mx3|m1|or1|Y~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mx3|m1|or1|Y~1_combout\);

-- Location: LC_X15_Y7_N7
\add_instance|d100|borrow~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|d100|borrow~4_combout\ = (\input_vector~combout\(6) & (!\add_instance|d100|borrow~3_combout\ & ((\add_instance|d100|borrow~0_combout\) # (!\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "080a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \add_instance|d100|borrow~0_combout\,
	datac => \add_instance|d100|borrow~3_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d100|borrow~4_combout\);

-- Location: LC_X15_Y7_N4
\add_instance|mx3|m1|or1|Y~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|mx3|m1|or1|Y~2_combout\ = (\add_instance|d100|borrow~4_combout\) # ((\input_vector~combout\(7)) # ((!\add_instance|d50|RQ[0]~5_combout\ & \add_instance|mx3|m1|or1|Y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d50|RQ[0]~5_combout\,
	datab => \add_instance|mx3|m1|or1|Y~1_combout\,
	datac => \add_instance|d100|borrow~4_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mx3|m1|or1|Y~2_combout\);

-- Location: LC_X15_Y7_N1
\add_instance|mx3|m2|or1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|mx3|m2|or1|Y~combout\ = ((\add_instance|d100|borrow~4_combout\) # ((\add_instance|d50|RQ[0]~5_combout\) # (\input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|d100|borrow~4_combout\,
	datac => \add_instance|d50|RQ[0]~5_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mx3|m2|or1|Y~combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \input_vector~combout\(0),
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d50|RQ[9]~6_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d50|RQ[10]~10_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d50|RQ[11]~7_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d50|RQ[12]~8_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d50|RQ[13]~9_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d50|RQ[0]~5_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d100|RQ\(0),
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d100|borrow~1_combout\,
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mx3|m1|or1|Y~2_combout\,
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mx3|m2|or1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(10));
END structure;


