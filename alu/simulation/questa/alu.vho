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

-- DATE "11/21/2023 16:34:21"

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

ENTITY 	alu IS
    PORT (
	s : IN std_logic_vector(2 DOWNTO 0);
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	f : OUT std_logic_vector(3 DOWNTO 0)
	);
END alu;

-- Design Ports Information


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_f : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~26\ : std_logic;
SIGNAL \f~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~28_cout0\ : std_logic;
SIGNAL \Add0~28COUT1_38\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_39\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \f~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~combout\ : std_logic;
SIGNAL \f~2_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~8COUT1_40\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~14COUT1_41\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \f~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_s <= s;
ww_a <= a;
ww_b <= b;
f <= ww_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LC_X6_Y3_N8
\f~0\ : maxii_lcell
-- Equation(s):
-- \f~0_combout\ = ((\b~combout\(0) & ((\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f~0_combout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(0),
	combout => \s~combout\(0));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(1),
	combout => \s~combout\(1));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(2),
	combout => \s~combout\(2));

-- Location: LC_X7_Y3_N5
\Mux3~1\ : maxii_lcell
-- Equation(s):
-- \Mux3~1_combout\ = ((\s~combout\(2) & ((\s~combout\(0)) # (\s~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datac => \s~combout\(1),
	datad => \s~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~1_combout\);

-- Location: LC_X6_Y2_N3
\Add0~24\ : maxii_lcell
-- Equation(s):
-- \Add0~24_combout\ = ((\b~combout\(0) $ (\s~combout\(0))))

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
	datac => \b~combout\(0),
	datad => \s~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~24_combout\);

-- Location: LC_X7_Y3_N9
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = ((\s~combout\(1) $ (\a~combout\(0))))

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
	datac => \s~combout\(1),
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\);

-- Location: LC_X6_Y2_N5
\Add0~28\ : maxii_lcell
-- Equation(s):
-- \Add0~28_cout0\ = CARRY(((!\s~combout\(1))) # (!\s~combout\(0)))
-- \Add0~28COUT1_38\ = CARRY(((!\s~combout\(1))) # (!\s~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff77",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datab => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~26\,
	cout0 => \Add0~28_cout0\,
	cout1 => \Add0~28COUT1_38\);

-- Location: LC_X6_Y2_N6
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = \Add0~24_combout\ $ (\Add0~25_combout\ $ ((\Add0~28_cout0\)))
-- \Add0~2\ = CARRY((\Add0~24_combout\ & ((\Add0~25_combout\) # (!\Add0~28_cout0\))) # (!\Add0~24_combout\ & (\Add0~25_combout\ & !\Add0~28_cout0\)))
-- \Add0~2COUT1_39\ = CARRY((\Add0~24_combout\ & ((\Add0~25_combout\) # (!\Add0~28COUT1_38\))) # (!\Add0~24_combout\ & (\Add0~25_combout\ & !\Add0~28COUT1_38\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~25_combout\,
	cin0 => \Add0~28_cout0\,
	cin1 => \Add0~28COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_39\);

-- Location: LC_X6_Y2_N4
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = ((\Add0~0_combout\ & ((\s~combout\(1)) # (\s~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(1),
	datac => \Add0~0_combout\,
	datad => \s~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\);

-- Location: LC_X7_Y3_N1
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (((!\s~combout\(0) & \s~combout\(1))) # (!\s~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datac => \s~combout\(1),
	datad => \s~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X6_Y3_N0
\Mux3~2\ : maxii_lcell
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\ & ((\f~0_combout\) # ((!\Mux3~0_combout\)))) # (!\Mux3~1_combout\ & (((\Add0~5_combout\ & \Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f~0_combout\,
	datab => \Mux3~1_combout\,
	datac => \Add0~5_combout\,
	datad => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~2_combout\);

-- Location: LC_X7_Y3_N8
\Mux3~3\ : maxii_lcell
-- Equation(s):
-- \Mux3~3_combout\ = (((\s~combout\(1)) # (!\s~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \s~combout\(1),
	datad => \s~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~3_combout\);

-- Location: LC_X6_Y3_N2
Mux3 : maxii_lcell
-- Equation(s):
-- \Mux3~combout\ = (\Mux3~3_combout\ & (((\Mux3~2_combout\)))) # (!\Mux3~3_combout\ & ((\a~combout\(0) & ((\Mux3~2_combout\) # (!\b~combout\(0)))) # (!\a~combout\(0) & (\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \Mux3~2_combout\,
	datad => \Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LC_X6_Y3_N5
\Add0~31\ : maxii_lcell
-- Equation(s):
-- \Add0~31_combout\ = \s~combout\(0) $ ((((\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datac => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~31_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LC_X5_Y2_N2
\Add0~32\ : maxii_lcell
-- Equation(s):
-- \Add0~32_combout\ = (\a~combout\(1) $ (((\s~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(1),
	datad => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~32_combout\);

-- Location: LC_X6_Y2_N7
\Add0~6\ : maxii_lcell
-- Equation(s):
-- \Add0~6_combout\ = \Add0~31_combout\ $ (\Add0~32_combout\ $ ((!\Add0~2\)))
-- \Add0~8\ = CARRY((\Add0~31_combout\ & (!\Add0~32_combout\ & !\Add0~2\)) # (!\Add0~31_combout\ & ((!\Add0~2\) # (!\Add0~32_combout\))))
-- \Add0~8COUT1_40\ = CARRY((\Add0~31_combout\ & (!\Add0~32_combout\ & !\Add0~2COUT1_39\)) # (!\Add0~31_combout\ & ((!\Add0~2COUT1_39\) # (!\Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~31_combout\,
	datab => \Add0~32_combout\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~6_combout\,
	cout0 => \Add0~8\,
	cout1 => \Add0~8COUT1_40\);

-- Location: LC_X6_Y2_N1
\Add0~11\ : maxii_lcell
-- Equation(s):
-- \Add0~11_combout\ = ((\Add0~6_combout\ & ((\s~combout\(1)) # (\s~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(1),
	datac => \Add0~6_combout\,
	datad => \s~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~11_combout\);

-- Location: LC_X6_Y3_N4
\f~1\ : maxii_lcell
-- Equation(s):
-- \f~1_combout\ = (((\b~combout\(1) & \a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f~1_combout\);

-- Location: LC_X6_Y3_N6
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux3~0_combout\ & ((\Mux3~1_combout\ & ((\f~1_combout\))) # (!\Mux3~1_combout\ & (\Add0~11_combout\)))) # (!\Mux3~0_combout\ & (((\Mux3~1_combout\))))

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
	dataa => \Mux3~0_combout\,
	datab => \Add0~11_combout\,
	datac => \f~1_combout\,
	datad => \Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X6_Y3_N1
Mux2 : maxii_lcell
-- Equation(s):
-- \Mux2~combout\ = (\Mux3~3_combout\ & (\Mux2~0_combout\)) # (!\Mux3~3_combout\ & ((\a~combout\(1) & ((\Mux2~0_combout\) # (!\b~combout\(1)))) # (!\a~combout\(1) & ((\b~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aabc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \a~combout\(1),
	datac => \b~combout\(1),
	datad => \Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LC_X7_Y3_N0
\f~2\ : maxii_lcell
-- Equation(s):
-- \f~2_combout\ = ((\b~combout\(2) & ((\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(2),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f~2_combout\);

-- Location: LC_X7_Y3_N6
\Add0~34\ : maxii_lcell
-- Equation(s):
-- \Add0~34_combout\ = (\a~combout\(2) $ ((\s~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(2),
	datac => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~34_combout\);

-- Location: LC_X7_Y3_N3
\Add0~33\ : maxii_lcell
-- Equation(s):
-- \Add0~33_combout\ = (\b~combout\(2) $ (((\s~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(2),
	datad => \s~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~33_combout\);

-- Location: LC_X6_Y2_N8
\Add0~12\ : maxii_lcell
-- Equation(s):
-- \Add0~12_combout\ = \Add0~34_combout\ $ (\Add0~33_combout\ $ ((\Add0~8\)))
-- \Add0~14\ = CARRY((\Add0~34_combout\ & ((\Add0~33_combout\) # (!\Add0~8\))) # (!\Add0~34_combout\ & (\Add0~33_combout\ & !\Add0~8\)))
-- \Add0~14COUT1_41\ = CARRY((\Add0~34_combout\ & ((\Add0~33_combout\) # (!\Add0~8COUT1_40\))) # (!\Add0~34_combout\ & (\Add0~33_combout\ & !\Add0~8COUT1_40\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~33_combout\,
	cin0 => \Add0~8\,
	cin1 => \Add0~8COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~12_combout\,
	cout0 => \Add0~14\,
	cout1 => \Add0~14COUT1_41\);

-- Location: LC_X7_Y3_N4
\Add0~17\ : maxii_lcell
-- Equation(s):
-- \Add0~17_combout\ = ((\Add0~12_combout\ & ((\s~combout\(1)) # (\s~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(1),
	datac => \Add0~12_combout\,
	datad => \s~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~17_combout\);

-- Location: LC_X7_Y3_N7
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux3~1_combout\ & ((\f~2_combout\) # ((!\Mux3~0_combout\)))) # (!\Mux3~1_combout\ & (((\Add0~17_combout\ & \Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \f~2_combout\,
	datac => \Add0~17_combout\,
	datad => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X7_Y3_N2
Mux1 : maxii_lcell
-- Equation(s):
-- \Mux1~combout\ = (\Mux3~3_combout\ & (((\Mux1~0_combout\)))) # (!\Mux3~3_combout\ & ((\b~combout\(2) & ((\Mux1~0_combout\) # (!\a~combout\(2)))) # (!\b~combout\(2) & ((\a~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \b~combout\(2),
	datac => \Mux1~0_combout\,
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X4_Y2_N2
\Add0~36\ : maxii_lcell
-- Equation(s):
-- \Add0~36_combout\ = ((\a~combout\(3) $ (\s~combout\(1))))

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
	datac => \a~combout\(3),
	datad => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~36_combout\);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LC_X6_Y2_N2
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = ((\b~combout\(3) $ (\s~combout\(0))))

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
	datac => \b~combout\(3),
	datad => \s~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\);

-- Location: LC_X6_Y2_N9
\Add0~18\ : maxii_lcell
-- Equation(s):
-- \Add0~18_combout\ = (\Add0~36_combout\ $ (\Add0~14\ $ (!\Add0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add0~36_combout\,
	datad => \Add0~35_combout\,
	cin0 => \Add0~14\,
	cin1 => \Add0~14COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~18_combout\);

-- Location: LC_X6_Y2_N0
\Add0~23\ : maxii_lcell
-- Equation(s):
-- \Add0~23_combout\ = ((\Add0~18_combout\ & ((\s~combout\(1)) # (\s~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datac => \s~combout\(1),
	datad => \s~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~23_combout\);

-- Location: LC_X6_Y3_N7
\f~3\ : maxii_lcell
-- Equation(s):
-- \f~3_combout\ = ((\a~combout\(3) & (\b~combout\(3))))

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
	datab => \a~combout\(3),
	datac => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f~3_combout\);

-- Location: LC_X6_Y3_N3
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\Mux3~1_combout\ & (((\f~3_combout\) # (!\Mux3~0_combout\)))) # (!\Mux3~1_combout\ & (\Add0~23_combout\ & ((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \Mux3~1_combout\,
	datac => \f~3_combout\,
	datad => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X6_Y3_N9
Mux0 : maxii_lcell
-- Equation(s):
-- \Mux0~combout\ = (\Mux3~3_combout\ & (\Mux0~0_combout\)) # (!\Mux3~3_combout\ & ((\a~combout\(3) & ((\Mux0~0_combout\) # (!\b~combout\(3)))) # (!\a~combout\(3) & ((\b~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aabc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \a~combout\(3),
	datac => \b~combout\(3),
	datad => \Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\f[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~combout\,
	oe => VCC,
	padio => ww_f(0));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\f[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~combout\,
	oe => VCC,
	padio => ww_f(1));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\f[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~combout\,
	oe => VCC,
	padio => ww_f(2));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\f[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~combout\,
	oe => VCC,
	padio => ww_f(3));
END structure;


