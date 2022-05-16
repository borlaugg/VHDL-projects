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

-- DATE "09/30/2021 15:23:30"

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
	input_vector : IN std_logic_vector(1 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(2 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(2 DOWNTO 0);
SIGNAL \add_instance|dff_1|Q~regout\ : std_logic;
SIGNAL \add_instance|dff_2|Q~regout\ : std_logic;
SIGNAL \add_instance|dff_0|Q~regout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|dff_2|ALT_INV_Q~regout\ : std_logic;
SIGNAL \add_instance|dff_1|ALT_INV_Q~regout\ : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\add_instance|dff_2|ALT_INV_Q~regout\ <= NOT \add_instance|dff_2|Q~regout\;
\add_instance|dff_1|ALT_INV_Q~regout\ <= NOT \add_instance|dff_1|Q~regout\;

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

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X12_Y3_N9
\add_instance|dff_1|Q\ : maxv_lcell
-- Equation(s):
-- \add_instance|dff_1|Q~regout\ = DFFEAS(((\add_instance|dff_2|Q~regout\ & ((!\add_instance|dff_1|Q~regout\))) # (!\add_instance|dff_2|Q~regout\ & (\add_instance|dff_0|Q~regout\))), GLOBAL(\input_vector~combout\(0)), !GLOBAL(\input_vector~combout\(1)), , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cfc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datab => \add_instance|dff_0|Q~regout\,
	datac => \add_instance|dff_2|Q~regout\,
	datad => \add_instance|dff_1|Q~regout\,
	aclr => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|dff_1|Q~regout\);

-- Location: LC_X12_Y3_N7
\add_instance|dff_2|Q\ : maxv_lcell
-- Equation(s):
-- \add_instance|dff_2|Q~regout\ = DFFEAS((\add_instance|dff_0|Q~regout\ $ (\add_instance|dff_2|Q~regout\ $ (\add_instance|dff_1|Q~regout\))), GLOBAL(\input_vector~combout\(0)), !GLOBAL(\input_vector~combout\(1)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datab => \add_instance|dff_0|Q~regout\,
	datac => \add_instance|dff_2|Q~regout\,
	datad => \add_instance|dff_1|Q~regout\,
	aclr => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|dff_2|Q~regout\);

-- Location: LC_X12_Y3_N0
\add_instance|dff_0|Q\ : maxv_lcell
-- Equation(s):
-- \add_instance|dff_0|Q~regout\ = DFFEAS(((\add_instance|dff_2|Q~regout\ & (\add_instance|dff_0|Q~regout\)) # (!\add_instance|dff_2|Q~regout\ & ((!\add_instance|dff_1|Q~regout\)))), GLOBAL(\input_vector~combout\(0)), !GLOBAL(\input_vector~combout\(1)), , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datab => \add_instance|dff_0|Q~regout\,
	datac => \add_instance|dff_2|Q~regout\,
	datad => \add_instance|dff_1|Q~regout\,
	aclr => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|dff_0|Q~regout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|dff_0|Q~regout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|dff_1|ALT_INV_Q~regout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|dff_2|ALT_INV_Q~regout\,
	oe => VCC,
	padio => ww_output_vector(2));
END structure;

