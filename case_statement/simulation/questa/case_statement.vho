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

-- DATE "11/18/2023 10:09:32"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	case_statement IS
    PORT (
	w : IN std_logic_vector(1 DOWNTO 0);
	en : IN std_logic;
	y : OUT std_logic_vector(0 TO 3)
	);
END case_statement;

-- Design Ports Information


ARCHITECTURE structure OF case_statement IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_w : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_en : std_logic;
SIGNAL ww_y : std_logic_vector(0 TO 3);
SIGNAL \en~combout\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \y~1_combout\ : std_logic;
SIGNAL \y~2_combout\ : std_logic;
SIGNAL \y~3_combout\ : std_logic;
SIGNAL \w~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_y~3_combout\ : std_logic;

BEGIN

ww_w <= w;
ww_en <= en;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_y~3_combout\ <= NOT \y~3_combout\;

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\en~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_en,
	combout => \en~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(0),
	combout => \w~combout\(0));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(1),
	combout => \w~combout\(1));

-- Location: LC_X5_Y3_N5
\y~0\ : maxii_lcell
-- Equation(s):
-- \y~0_combout\ = (\en~combout\ & (\w~combout\(0) & (\w~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \w~combout\(0),
	datac => \w~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~0_combout\);

-- Location: LC_X5_Y3_N9
\y~1\ : maxii_lcell
-- Equation(s):
-- \y~1_combout\ = (\en~combout\ & (!\w~combout\(0) & (\w~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \w~combout\(0),
	datac => \w~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~1_combout\);

-- Location: LC_X5_Y3_N2
\y~2\ : maxii_lcell
-- Equation(s):
-- \y~2_combout\ = (\en~combout\ & (\w~combout\(0) & (!\w~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \w~combout\(0),
	datac => \w~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~2_combout\);

-- Location: LC_X5_Y3_N6
\y~3\ : maxii_lcell
-- Equation(s):
-- \y~3_combout\ = ((\w~combout\(0)) # ((\w~combout\(1)))) # (!\en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdfd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \w~combout\(0),
	datac => \w~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~3_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y~0_combout\,
	oe => VCC,
	padio => ww_y(3));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y~1_combout\,
	oe => VCC,
	padio => ww_y(2));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y~2_combout\,
	oe => VCC,
	padio => ww_y(1));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_y~3_combout\,
	oe => VCC,
	padio => ww_y(0));
END structure;


