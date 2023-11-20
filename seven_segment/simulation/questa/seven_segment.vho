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

-- DATE "11/20/2023 11:47:06"

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

ENTITY 	seven_segment IS
    PORT (
	bcd : IN std_logic_vector(3 DOWNTO 0);
	leds : OUT std_logic_vector(1 TO 7)
	);
END seven_segment;

-- Design Ports Information


ARCHITECTURE structure OF seven_segment IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bcd : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(1 TO 7);
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \bcd~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_bcd <= bcd;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bcd[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_bcd(0),
	combout => \bcd~combout\(0));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bcd[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_bcd(2),
	combout => \bcd~combout\(2));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bcd[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_bcd(3),
	combout => \bcd~combout\(3));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bcd[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_bcd(1),
	combout => \bcd~combout\(1));

-- Location: LC_X4_Y1_N4
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (\bcd~combout\(3)) # ((\bcd~combout\(2) & ((!\bcd~combout\(1)) # (!\bcd~combout\(0)))) # (!\bcd~combout\(2) & ((\bcd~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(2),
	datac => \bcd~combout\(3),
	datad => \bcd~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X4_Y1_N8
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (!\bcd~combout\(3) & ((\bcd~combout\(0) & ((\bcd~combout\(1)) # (!\bcd~combout\(2)))) # (!\bcd~combout\(0) & (!\bcd~combout\(2) & \bcd~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(2),
	datac => \bcd~combout\(3),
	datad => \bcd~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X4_Y1_N5
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = ((\bcd~combout\(0)) # ((\bcd~combout\(2) & !\bcd~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \bcd~combout\(2),
	datac => \bcd~combout\(0),
	datad => \bcd~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X4_Y1_N2
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = ((\bcd~combout\(2) & (\bcd~combout\(0) $ (\bcd~combout\(1)))) # (!\bcd~combout\(2) & ((\bcd~combout\(1)) # (!\bcd~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \bcd~combout\(2),
	datac => \bcd~combout\(0),
	datad => \bcd~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X4_Y1_N6
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = ((!\bcd~combout\(2) & (!\bcd~combout\(0) & \bcd~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \bcd~combout\(2),
	datac => \bcd~combout\(0),
	datad => \bcd~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X4_Y1_N7
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = ((\bcd~combout\(0) $ (!\bcd~combout\(1))) # (!\bcd~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f33f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \bcd~combout\(2),
	datac => \bcd~combout\(0),
	datad => \bcd~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X4_Y1_N9
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (!\bcd~combout\(3) & (!\bcd~combout\(1) & (\bcd~combout\(0) $ (\bcd~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0006",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(2),
	datac => \bcd~combout\(3),
	datad => \bcd~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~0_combout\,
	oe => VCC,
	padio => ww_leds(7));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_leds(6));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_leds(5));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~0_combout\,
	oe => VCC,
	padio => ww_leds(4));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_leds(3));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~0_combout\,
	oe => VCC,
	padio => ww_leds(2));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_leds(1));
END structure;


