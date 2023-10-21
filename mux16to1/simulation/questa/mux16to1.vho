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

-- DATE "10/21/2023 13:03:53"

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

ENTITY 	mux16to1 IS
    PORT (
	w : IN std_logic_vector(0 TO 15);
	s : IN std_logic_vector(3 DOWNTO 0);
	f : OUT std_logic
	);
END mux16to1;

-- Design Ports Information


ARCHITECTURE structure OF mux16to1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_w : std_logic_vector(0 TO 15);
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_f : std_logic;
SIGNAL \mux5|Mux0~2_combout\ : std_logic;
SIGNAL \mux5|Mux0~3_combout\ : std_logic;
SIGNAL \mux5|Mux0~4_combout\ : std_logic;
SIGNAL \mux5|Mux0~5_combout\ : std_logic;
SIGNAL \mux5|Mux0~6_combout\ : std_logic;
SIGNAL \mux5|Mux0~7_combout\ : std_logic;
SIGNAL \mux5|Mux0~8_combout\ : std_logic;
SIGNAL \mux5|Mux0~0_combout\ : std_logic;
SIGNAL \mux5|Mux0~1_combout\ : std_logic;
SIGNAL \mux5|Mux0~9_combout\ : std_logic;
SIGNAL \w~combout\ : std_logic_vector(0 TO 15);
SIGNAL \s~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_w <= w;
ww_s <= s;
f <= ww_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(3),
	combout => \s~combout\(3));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(2),
	combout => \s~combout\(2));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(0),
	combout => \s~combout\(0));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(4),
	combout => \w~combout\(4));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(6),
	combout => \w~combout\(6));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(1),
	combout => \s~combout\(1));

-- Location: LC_X2_Y3_N9
\mux5|Mux0~2\ : maxii_lcell
-- Equation(s):
-- \mux5|Mux0~2_combout\ = (\s~combout\(0) & (((\s~combout\(1))))) # (!\s~combout\(0) & ((\s~combout\(1) & ((\w~combout\(6)))) # (!\s~combout\(1) & (\w~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datab => \w~combout\(4),
	datac => \w~combout\(6),
	datad => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux5|Mux0~2_combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(7),
	combout => \w~combout\(7));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(5),
	combout => \w~combout\(5));

-- Location: LC_X2_Y3_N5
\mux5|Mux0~3\ : maxii_lcell
-- Equation(s):
-- \mux5|Mux0~3_combout\ = (\s~combout\(0) & ((\mux5|Mux0~2_combout\ & (\w~combout\(7))) # (!\mux5|Mux0~2_combout\ & ((\w~combout\(5)))))) # (!\s~combout\(0) & (\mux5|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datab => \mux5|Mux0~2_combout\,
	datac => \w~combout\(7),
	datad => \w~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux5|Mux0~3_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(2),
	combout => \w~combout\(2));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(1),
	combout => \w~combout\(1));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(0),
	combout => \w~combout\(0));

-- Location: LC_X2_Y3_N4
\mux5|Mux0~4\ : maxii_lcell
-- Equation(s):
-- \mux5|Mux0~4_combout\ = (\s~combout\(1) & (((\s~combout\(0))))) # (!\s~combout\(1) & ((\s~combout\(0) & (\w~combout\(1))) # (!\s~combout\(0) & ((\w~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(1),
	datab => \w~combout\(1),
	datac => \s~combout\(0),
	datad => \w~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux5|Mux0~4_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(3),
	combout => \w~combout\(3));

-- Location: LC_X2_Y3_N8
\mux5|Mux0~5\ : maxii_lcell
-- Equation(s):
-- \mux5|Mux0~5_combout\ = (\s~combout\(1) & ((\mux5|Mux0~4_combout\ & ((\w~combout\(3)))) # (!\mux5|Mux0~4_combout\ & (\w~combout\(2))))) # (!\s~combout\(1) & (((\mux5|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(1),
	datab => \w~combout\(2),
	datac => \mux5|Mux0~4_combout\,
	datad => \w~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux5|Mux0~5_combout\);

-- Location: LC_X2_Y3_N0
\mux5|Mux0~6\ : maxii_lcell
-- Equation(s):
-- \mux5|Mux0~6_combout\ = (\s~combout\(3) & (\s~combout\(2))) # (!\s~combout\(3) & ((\s~combout\(2) & (\mux5|Mux0~3_combout\)) # (!\s~combout\(2) & ((\mux5|Mux0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(3),
	datab => \s~combout\(2),
	datac => \mux5|Mux0~3_combout\,
	datad => \mux5|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux5|Mux0~6_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(13),
	combout => \w~combout\(13));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(15),
	combout => \w~combout\(15));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(12),
	combout => \w~combout\(12));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(14),
	combout => \w~combout\(14));

-- Location: LC_X2_Y3_N1
\mux5|Mux0~7\ : maxii_lcell
-- Equation(s):
-- \mux5|Mux0~7_combout\ = (\s~combout\(0) & (((\s~combout\(1))))) # (!\s~combout\(0) & ((\s~combout\(1) & ((\w~combout\(14)))) # (!\s~combout\(1) & (\w~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datab => \w~combout\(12),
	datac => \w~combout\(14),
	datad => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux5|Mux0~7_combout\);

-- Location: LC_X2_Y3_N6
\mux5|Mux0~8\ : maxii_lcell
-- Equation(s):
-- \mux5|Mux0~8_combout\ = (\s~combout\(0) & ((\mux5|Mux0~7_combout\ & ((\w~combout\(15)))) # (!\mux5|Mux0~7_combout\ & (\w~combout\(13))))) # (!\s~combout\(0) & (((\mux5|Mux0~7_combout\))))

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
	dataa => \s~combout\(0),
	datab => \w~combout\(13),
	datac => \w~combout\(15),
	datad => \mux5|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux5|Mux0~8_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(11),
	combout => \w~combout\(11));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(10),
	combout => \w~combout\(10));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(8),
	combout => \w~combout\(8));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_w(9),
	combout => \w~combout\(9));

-- Location: LC_X2_Y3_N3
\mux5|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \mux5|Mux0~0_combout\ = (\s~combout\(0) & (((\w~combout\(9)) # (\s~combout\(1))))) # (!\s~combout\(0) & (\w~combout\(8) & ((!\s~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \w~combout\(8),
	datab => \w~combout\(9),
	datac => \s~combout\(0),
	datad => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux5|Mux0~0_combout\);

-- Location: LC_X2_Y3_N2
\mux5|Mux0~1\ : maxii_lcell
-- Equation(s):
-- \mux5|Mux0~1_combout\ = (\s~combout\(1) & ((\mux5|Mux0~0_combout\ & (\w~combout\(11))) # (!\mux5|Mux0~0_combout\ & ((\w~combout\(10)))))) # (!\s~combout\(1) & (((\mux5|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(1),
	datab => \w~combout\(11),
	datac => \w~combout\(10),
	datad => \mux5|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux5|Mux0~1_combout\);

-- Location: LC_X2_Y3_N7
\mux5|Mux0~9\ : maxii_lcell
-- Equation(s):
-- \mux5|Mux0~9_combout\ = (\s~combout\(3) & ((\mux5|Mux0~6_combout\ & (\mux5|Mux0~8_combout\)) # (!\mux5|Mux0~6_combout\ & ((\mux5|Mux0~1_combout\))))) # (!\s~combout\(3) & (\mux5|Mux0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(3),
	datab => \mux5|Mux0~6_combout\,
	datac => \mux5|Mux0~8_combout\,
	datad => \mux5|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux5|Mux0~9_combout\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\f~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mux5|Mux0~9_combout\,
	oe => VCC,
	padio => ww_f);
END structure;


