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

-- DATE "10/23/2021 18:02:49"

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
	input_vector : IN std_logic_vector(6 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(0 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(0 DOWNTO 0);
SIGNAL \add_instance|Equal6~0_combout\ : std_logic;
SIGNAL \add_instance|Equal5~0_combout\ : std_logic;
SIGNAL \add_instance|Equal1~0_combout\ : std_logic;
SIGNAL \add_instance|Equal4~0_combout\ : std_logic;
SIGNAL \add_instance|Equal2~0_combout\ : std_logic;
SIGNAL \add_instance|Equal3~4_combout\ : std_logic;
SIGNAL \add_instance|Equal2~1_combout\ : std_logic;
SIGNAL \add_instance|Equal1~1_combout\ : std_logic;
SIGNAL \add_instance|Equal0~0_combout\ : std_logic;
SIGNAL \add_instance|y_present.rst~regout\ : std_logic;
SIGNAL \add_instance|y_present~20_combout\ : std_logic;
SIGNAL \add_instance|y_present.s1~regout\ : std_logic;
SIGNAL \add_instance|y_present~18_combout\ : std_logic;
SIGNAL \add_instance|y_present.s2~regout\ : std_logic;
SIGNAL \add_instance|y_present~16_combout\ : std_logic;
SIGNAL \add_instance|y_present.s3~regout\ : std_logic;
SIGNAL \add_instance|y_present~14_combout\ : std_logic;
SIGNAL \add_instance|y_present.s4~regout\ : std_logic;
SIGNAL \add_instance|y_present~12_combout\ : std_logic;
SIGNAL \add_instance|y_present.s5~regout\ : std_logic;
SIGNAL \add_instance|y_present~9_combout\ : std_logic;
SIGNAL \add_instance|y_present~10_combout\ : std_logic;
SIGNAL \add_instance|y_present.s6~regout\ : std_logic;
SIGNAL \add_instance|outp~0_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X16_Y9_N4
\add_instance|Equal6~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal6~0_combout\ = (!\input_vector~combout\(6) & (\input_vector~combout\(3) & ((\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(3),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal6~0_combout\);

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X15_Y10_N8
\add_instance|Equal5~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal5~0_combout\ = (\add_instance|Equal6~0_combout\ & (((\input_vector~combout\(4) & \input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Equal6~0_combout\,
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal5~0_combout\);

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X16_Y9_N7
\add_instance|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal1~0_combout\ = (\input_vector~combout\(6) & (((!\input_vector~combout\(2) & !\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal1~0_combout\);

-- Location: LC_X16_Y9_N2
\add_instance|Equal4~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal4~0_combout\ = ((\add_instance|Equal1~0_combout\ & (\input_vector~combout\(4) & !\input_vector~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Equal1~0_combout\,
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal4~0_combout\);

-- Location: LC_X16_Y9_N9
\add_instance|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal2~0_combout\ = (((!\input_vector~combout\(4) & !\input_vector~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal2~0_combout\);

-- Location: LC_X16_Y9_N6
\add_instance|Equal3~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal3~4_combout\ = (\input_vector~combout\(6) & (\add_instance|Equal2~0_combout\ & (!\input_vector~combout\(2) & !\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \add_instance|Equal2~0_combout\,
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal3~4_combout\);

-- Location: LC_X16_Y9_N5
\add_instance|Equal2~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal2~1_combout\ = (\input_vector~combout\(6) & (\add_instance|Equal2~0_combout\ & (\input_vector~combout\(2) & \input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \add_instance|Equal2~0_combout\,
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal2~1_combout\);

-- Location: LC_X16_Y9_N8
\add_instance|Equal1~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal1~1_combout\ = ((\add_instance|Equal1~0_combout\ & (!\input_vector~combout\(4) & \input_vector~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Equal1~0_combout\,
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal1~1_combout\);

-- Location: LC_X15_Y10_N6
\add_instance|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal0~0_combout\ = (\add_instance|Equal6~0_combout\ & (((!\input_vector~combout\(4) & \input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Equal6~0_combout\,
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal0~0_combout\);

-- Location: LC_X16_Y10_N1
\add_instance|y_present.rst\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present.rst~regout\ = DFFEAS((!\input_vector~combout\(1) & (!\add_instance|outp~0_combout\ & ((\add_instance|y_present.rst~regout\) # (\add_instance|Equal0~0_combout\)))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0054",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \input_vector~combout\(1),
	datab => \add_instance|y_present.rst~regout\,
	datac => \add_instance|Equal0~0_combout\,
	datad => \add_instance|outp~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|y_present.rst~regout\);

-- Location: LC_X16_Y10_N5
\add_instance|y_present~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present~20_combout\ = (((!\input_vector~combout\(1) & !\add_instance|y_present.rst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(1),
	datad => \add_instance|y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|y_present~20_combout\);

-- Location: LC_X16_Y10_N2
\add_instance|y_present.s1\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present.s1~regout\ = DFFEAS((\add_instance|Equal0~0_combout\ & ((\add_instance|y_present~20_combout\) # ((!\add_instance|Equal1~1_combout\ & \add_instance|y_present~18_combout\)))) # (!\add_instance|Equal0~0_combout\ & 
-- (!\add_instance|Equal1~1_combout\ & ((\add_instance|y_present~18_combout\)))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|Equal0~0_combout\,
	datab => \add_instance|Equal1~1_combout\,
	datac => \add_instance|y_present~20_combout\,
	datad => \add_instance|y_present~18_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|y_present.s1~regout\);

-- Location: LC_X16_Y10_N3
\add_instance|y_present~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present~18_combout\ = (!\input_vector~combout\(1) & (((\add_instance|y_present.s1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datad => \add_instance|y_present.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|y_present~18_combout\);

-- Location: LC_X16_Y10_N0
\add_instance|y_present.s2\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present.s2~regout\ = DFFEAS((\add_instance|Equal2~1_combout\ & (\add_instance|Equal1~1_combout\ & ((\add_instance|y_present~18_combout\)))) # (!\add_instance|Equal2~1_combout\ & ((\add_instance|y_present~16_combout\) # 
-- ((\add_instance|Equal1~1_combout\ & \add_instance|y_present~18_combout\)))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|Equal2~1_combout\,
	datab => \add_instance|Equal1~1_combout\,
	datac => \add_instance|y_present~16_combout\,
	datad => \add_instance|y_present~18_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|y_present.s2~regout\);

-- Location: LC_X16_Y10_N4
\add_instance|y_present~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present~16_combout\ = (!\input_vector~combout\(1) & (((\add_instance|y_present.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \add_instance|y_present.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|y_present~16_combout\);

-- Location: LC_X16_Y10_N6
\add_instance|y_present.s3\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present.s3~regout\ = DFFEAS((\add_instance|Equal2~1_combout\ & ((\add_instance|y_present~16_combout\) # ((!\add_instance|Equal3~4_combout\ & \add_instance|y_present~14_combout\)))) # (!\add_instance|Equal2~1_combout\ & 
-- (!\add_instance|Equal3~4_combout\ & ((\add_instance|y_present~14_combout\)))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|Equal2~1_combout\,
	datab => \add_instance|Equal3~4_combout\,
	datac => \add_instance|y_present~16_combout\,
	datad => \add_instance|y_present~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|y_present.s3~regout\);

-- Location: LC_X16_Y10_N8
\add_instance|y_present~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present~14_combout\ = (!\input_vector~combout\(1) & (((\add_instance|y_present.s3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \add_instance|y_present.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|y_present~14_combout\);

-- Location: LC_X16_Y10_N9
\add_instance|y_present.s4\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present.s4~regout\ = DFFEAS((\add_instance|Equal3~4_combout\ & ((\add_instance|y_present~14_combout\) # ((!\add_instance|Equal4~0_combout\ & \add_instance|y_present~12_combout\)))) # (!\add_instance|Equal3~4_combout\ & 
-- (!\add_instance|Equal4~0_combout\ & (\add_instance|y_present~12_combout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|Equal3~4_combout\,
	datab => \add_instance|Equal4~0_combout\,
	datac => \add_instance|y_present~12_combout\,
	datad => \add_instance|y_present~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|y_present.s4~regout\);

-- Location: LC_X16_Y10_N7
\add_instance|y_present~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present~12_combout\ = (((!\input_vector~combout\(1) & \add_instance|y_present.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(1),
	datad => \add_instance|y_present.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|y_present~12_combout\);

-- Location: LC_X15_Y10_N3
\add_instance|y_present.s5\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present.s5~regout\ = DFFEAS((\add_instance|Equal5~0_combout\ & (\add_instance|Equal4~0_combout\ & ((\add_instance|y_present~12_combout\)))) # (!\add_instance|Equal5~0_combout\ & ((\add_instance|y_present~9_combout\) # 
-- ((\add_instance|Equal4~0_combout\ & \add_instance|y_present~12_combout\)))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|Equal5~0_combout\,
	datab => \add_instance|Equal4~0_combout\,
	datac => \add_instance|y_present~9_combout\,
	datad => \add_instance|y_present~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|y_present.s5~regout\);

-- Location: LC_X15_Y10_N5
\add_instance|y_present~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present~9_combout\ = (((!\input_vector~combout\(1) & \add_instance|y_present.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(1),
	datad => \add_instance|y_present.s5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|y_present~9_combout\);

-- Location: LC_X15_Y10_N7
\add_instance|y_present~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present~10_combout\ = (\input_vector~combout\(1)) # ((\input_vector~combout\(4) & (\add_instance|Equal6~0_combout\ & !\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(4),
	datac => \add_instance|Equal6~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|y_present~10_combout\);

-- Location: LC_X15_Y10_N9
\add_instance|y_present.s6\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present.s6~regout\ = DFFEAS((\add_instance|Equal5~0_combout\ & ((\add_instance|y_present~9_combout\) # ((\add_instance|y_present.s6~regout\ & !\add_instance|y_present~10_combout\)))) # (!\add_instance|Equal5~0_combout\ & 
-- (\add_instance|y_present.s6~regout\ & ((!\add_instance|y_present~10_combout\)))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|Equal5~0_combout\,
	datab => \add_instance|y_present.s6~regout\,
	datac => \add_instance|y_present~9_combout\,
	datad => \add_instance|y_present~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|y_present.s6~regout\);

-- Location: LC_X15_Y10_N4
\add_instance|outp~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|outp~0_combout\ = (\add_instance|Equal6~0_combout\ & (!\input_vector~combout\(2) & (\input_vector~combout\(4) & \add_instance|y_present.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Equal6~0_combout\,
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(4),
	datad => \add_instance|y_present.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|outp~0_combout\);

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|outp~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));
END structure;


