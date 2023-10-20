-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "10/20/2023 17:02:45"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	four_bit_adder IS
    PORT (
	cin : IN std_logic;
	x3 : IN std_logic;
	x2 : IN std_logic;
	x1 : IN std_logic;
	x0 : IN std_logic;
	y3 : IN std_logic;
	y2 : IN std_logic;
	y1 : IN std_logic;
	y0 : IN std_logic;
	s3 : OUT std_logic;
	s2 : OUT std_logic;
	s1 : OUT std_logic;
	s0 : OUT std_logic;
	cout : OUT std_logic
	);
END four_bit_adder;

-- Design Ports Information


ARCHITECTURE structure OF four_bit_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_x3 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x0 : std_logic;
SIGNAL ww_y3 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y0 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \x1~combout\ : std_logic;
SIGNAL \cin~combout\ : std_logic;
SIGNAL \y0~combout\ : std_logic;
SIGNAL \x0~combout\ : std_logic;
SIGNAL \stage0|cout~0_combout\ : std_logic;
SIGNAL \y1~combout\ : std_logic;
SIGNAL \stage1|cout~0_combout\ : std_logic;
SIGNAL \x2~combout\ : std_logic;
SIGNAL \y2~combout\ : std_logic;
SIGNAL \stage2|cout~0_combout\ : std_logic;
SIGNAL \x3~combout\ : std_logic;
SIGNAL \y3~combout\ : std_logic;
SIGNAL \stage3|s~combout\ : std_logic;
SIGNAL \stage2|s~combout\ : std_logic;
SIGNAL \stage1|s~combout\ : std_logic;
SIGNAL \stage0|s~0_combout\ : std_logic;
SIGNAL \stage3|cout~0_combout\ : std_logic;

BEGIN

ww_cin <= cin;
ww_x3 <= x3;
ww_x2 <= x2;
ww_x1 <= x1;
ww_x0 <= x0;
ww_y3 <= y3;
ww_y2 <= y2;
ww_y1 <= y1;
ww_y0 <= y0;
s3 <= ww_s3;
s2 <= ww_s2;
s1 <= ww_s1;
s0 <= ww_s0;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x1,
	combout => \x1~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y0,
	combout => \y0~combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x0,
	combout => \x0~combout\);

-- Location: LC_X3_Y1_N4
\stage0|cout~0\ : maxii_lcell
-- Equation(s):
-- \stage0|cout~0_combout\ = ((\cin~combout\ & ((\y0~combout\) # (\x0~combout\))) # (!\cin~combout\ & (\y0~combout\ & \x0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cin~combout\,
	datac => \y0~combout\,
	datad => \x0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage0|cout~0_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y1,
	combout => \y1~combout\);

-- Location: LC_X3_Y1_N2
\stage1|cout~0\ : maxii_lcell
-- Equation(s):
-- \stage1|cout~0_combout\ = (\x1~combout\ & (((\stage0|cout~0_combout\) # (\y1~combout\)))) # (!\x1~combout\ & (((\stage0|cout~0_combout\ & \y1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x1~combout\,
	datac => \stage0|cout~0_combout\,
	datad => \y1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage1|cout~0_combout\);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x2,
	combout => \x2~combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y2,
	combout => \y2~combout\);

-- Location: LC_X3_Y1_N9
\stage2|cout~0\ : maxii_lcell
-- Equation(s):
-- \stage2|cout~0_combout\ = ((\stage1|cout~0_combout\ & ((\x2~combout\) # (\y2~combout\))) # (!\stage1|cout~0_combout\ & (\x2~combout\ & \y2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage1|cout~0_combout\,
	datac => \x2~combout\,
	datad => \y2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage2|cout~0_combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x3,
	combout => \x3~combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y3,
	combout => \y3~combout\);

-- Location: LC_X3_Y1_N5
\stage3|s\ : maxii_lcell
-- Equation(s):
-- \stage3|s~combout\ = (\stage2|cout~0_combout\ $ (\x3~combout\ $ (\y3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|cout~0_combout\,
	datac => \x3~combout\,
	datad => \y3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage3|s~combout\);

-- Location: LC_X3_Y1_N8
\stage2|s\ : maxii_lcell
-- Equation(s):
-- \stage2|s~combout\ = (\stage1|cout~0_combout\ $ (\x2~combout\ $ (\y2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage1|cout~0_combout\,
	datac => \x2~combout\,
	datad => \y2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage2|s~combout\);

-- Location: LC_X3_Y1_N3
\stage1|s\ : maxii_lcell
-- Equation(s):
-- \stage1|s~combout\ = \x1~combout\ $ (((\stage0|cout~0_combout\ $ (\y1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x1~combout\,
	datac => \stage0|cout~0_combout\,
	datad => \y1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage1|s~combout\);

-- Location: LC_X3_Y1_N6
\stage0|s~0\ : maxii_lcell
-- Equation(s):
-- \stage0|s~0_combout\ = (\cin~combout\ $ (\y0~combout\ $ (\x0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cin~combout\,
	datac => \y0~combout\,
	datad => \x0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage0|s~0_combout\);

-- Location: LC_X3_Y1_N7
\stage3|cout~0\ : maxii_lcell
-- Equation(s):
-- \stage3|cout~0_combout\ = ((\stage2|cout~0_combout\ & ((\x3~combout\) # (\y3~combout\))) # (!\stage2|cout~0_combout\ & (\x3~combout\ & \y3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|cout~0_combout\,
	datac => \x3~combout\,
	datad => \y3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage3|cout~0_combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \stage3|s~combout\,
	oe => VCC,
	padio => ww_s3);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \stage2|s~combout\,
	oe => VCC,
	padio => ww_s2);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \stage1|s~combout\,
	oe => VCC,
	padio => ww_s1);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \stage0|s~0_combout\,
	oe => VCC,
	padio => ww_s0);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cout~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \stage3|cout~0_combout\,
	oe => VCC,
	padio => ww_cout);
END structure;


