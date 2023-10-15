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

-- DATE "10/15/2023 23:22:38"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	iir IS
    PORT (
	x_in : IN std_logic_vector(14 DOWNTO 0);
	y_out : OUT std_logic_vector(14 DOWNTO 0);
	clk : IN std_logic
	);
END iir;

-- Design Ports Information


ARCHITECTURE structure OF iir IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x_in : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_y_out : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL \Add2~75\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \Add0~72_cout0\ : std_logic;
SIGNAL \Add0~72COUT1_76\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add2~77_cout0\ : std_logic;
SIGNAL \Add2~77COUT1_81\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~2COUT1_82\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~12\ : std_logic;
SIGNAL \Add2~12COUT1_83\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~17COUT1_84\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~22COUT1_85\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~27COUT1_86\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_76\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_77\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_78\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_79\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_77\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_78\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~22COUT1_79\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~27COUT1_80\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \y[0]~1\ : std_logic;
SIGNAL \y[0]~1COUT1_31\ : std_logic;
SIGNAL \y[1]~3\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \y[2]~5\ : std_logic;
SIGNAL \y[2]~5COUT1_32\ : std_logic;
SIGNAL \y[3]~7\ : std_logic;
SIGNAL \y[3]~7COUT1_33\ : std_logic;
SIGNAL \y[4]~9\ : std_logic;
SIGNAL \y[4]~9COUT1_34\ : std_logic;
SIGNAL \y[5]~11\ : std_logic;
SIGNAL \y[5]~11COUT1_35\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_80\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add2~32\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~37COUT1_87\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~42COUT1_88\ : std_logic;
SIGNAL \Add2~45_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_81\ : std_logic;
SIGNAL \Add0~37COUT1_82\ : std_logic;
SIGNAL \Add0~42COUT1_83\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~37COUT1_81\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~42COUT1_82\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \y[6]~13\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \y[7]~15\ : std_logic;
SIGNAL \y[7]~15COUT1_36\ : std_logic;
SIGNAL \y[8]~17\ : std_logic;
SIGNAL \y[8]~17COUT1_37\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_84\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_85\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~47COUT1_83\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~52COUT1_84\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~47COUT1_89\ : std_logic;
SIGNAL \Add2~52\ : std_logic;
SIGNAL \Add2~52COUT1_90\ : std_logic;
SIGNAL \Add2~55_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \y[9]~19\ : std_logic;
SIGNAL \y[9]~19COUT1_38\ : std_logic;
SIGNAL \y[10]~21\ : std_logic;
SIGNAL \y[10]~21COUT1_39\ : std_logic;
SIGNAL \y[11]~23\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~62COUT1_91\ : std_logic;
SIGNAL \Add2~67\ : std_logic;
SIGNAL \Add2~67COUT1_92\ : std_logic;
SIGNAL \Add2~70_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_86\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~62COUT1_85\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~67COUT1_86\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \y[12]~25\ : std_logic;
SIGNAL \y[12]~25COUT1_40\ : std_logic;
SIGNAL \y[13]~27\ : std_logic;
SIGNAL \y[13]~27COUT1_41\ : std_logic;
SIGNAL \Add2~65_combout\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add1~55_combout\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL y : std_logic_vector(14 DOWNTO 0);
SIGNAL x : std_logic_vector(14 DOWNTO 0);
SIGNAL \x_in~combout\ : std_logic_vector(14 DOWNTO 0);

BEGIN

ww_x_in <= x_in;
y_out <= ww_y_out;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(5),
	combout => \x_in~combout\(5));

-- Location: LC_X2_Y2_N2
\x[5]\ : maxii_lcell
-- Equation(s):
-- x(5) = DFFEAS((((\x_in~combout\(5)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \x_in~combout\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(5));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(8),
	combout => \x_in~combout\(8));

-- Location: LC_X7_Y1_N9
\x[8]\ : maxii_lcell
-- Equation(s):
-- x(8) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \x_in~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x_in~combout\(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(8));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(11),
	combout => \x_in~combout\(11));

-- Location: LC_X4_Y3_N3
\x[11]\ : maxii_lcell
-- Equation(s):
-- x(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \x_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x_in~combout\(11),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(11));

-- Location: LC_X5_Y2_N5
\Add2~60\ : maxii_lcell
-- Equation(s):
-- \Add2~60_combout\ = y(13) $ ((((\Add2~57\))))
-- \Add2~62\ = CARRY(((!\Add2~57\)) # (!y(13)))
-- \Add2~62COUT1_91\ = CARRY(((!\Add2~57\)) # (!y(13)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(13),
	cin => \Add2~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~60_combout\,
	cout0 => \Add2~62\,
	cout1 => \Add2~62COUT1_91\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(12),
	combout => \x_in~combout\(12));

-- Location: LC_X3_Y2_N1
\x[12]\ : maxii_lcell
-- Equation(s):
-- x(12) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \x_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x_in~combout\(12),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(12));

-- Location: LC_X5_Y1_N9
WideOr0 : maxii_lcell
-- Equation(s):
-- \WideOr0~combout\ = ((y(0)) # ((y(1))))

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
	datab => y(0),
	datad => y(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr0~combout\);

-- Location: LC_X6_Y1_N3
\Add0~72\ : maxii_lcell
-- Equation(s):
-- \Add0~72_cout0\ = CARRY((\WideOr0~combout\ & (y(14))))
-- \Add0~72COUT1_76\ = CARRY((\WideOr0~combout\ & (y(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~combout\,
	datab => y(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70\,
	cout0 => \Add0~72_cout0\,
	cout1 => \Add0~72COUT1_76\);

-- Location: LC_X6_Y1_N4
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = y(2) $ ((((\Add0~72_cout0\))))
-- \Add0~2\ = CARRY(((!\Add0~72COUT1_76\)) # (!y(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(2),
	cin0 => \Add0~72_cout0\,
	cin1 => \Add0~72COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout => \Add0~2\);

-- Location: LC_X4_Y2_N2
\Add2~77\ : maxii_lcell
-- Equation(s):
-- \Add2~77_cout0\ = CARRY((y(14) & (y(0))))
-- \Add2~77COUT1_81\ = CARRY((y(14) & (y(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(14),
	datab => y(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~75\,
	cout0 => \Add2~77_cout0\,
	cout1 => \Add2~77COUT1_81\);

-- Location: LC_X4_Y2_N3
\Add2~0\ : maxii_lcell
-- Equation(s):
-- \Add2~0_combout\ = y(1) $ ((((\Add2~77_cout0\))))
-- \Add2~2\ = CARRY(((!\Add2~77_cout0\)) # (!y(1)))
-- \Add2~2COUT1_82\ = CARRY(((!\Add2~77COUT1_81\)) # (!y(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(1),
	cin0 => \Add2~77_cout0\,
	cin1 => \Add2~77COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\,
	cout0 => \Add2~2\,
	cout1 => \Add2~2COUT1_82\);

-- Location: LC_X4_Y2_N4
\Add2~5\ : maxii_lcell
-- Equation(s):
-- \Add2~5_combout\ = (y(2) $ ((!\Add2~2\)))
-- \Add2~7\ = CARRY(((y(2) & !\Add2~2COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(2),
	cin0 => \Add2~2\,
	cin1 => \Add2~2COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~5_combout\,
	cout => \Add2~7\);

-- Location: LC_X4_Y2_N5
\Add2~10\ : maxii_lcell
-- Equation(s):
-- \Add2~10_combout\ = y(3) $ ((((\Add2~7\))))
-- \Add2~12\ = CARRY(((!\Add2~7\)) # (!y(3)))
-- \Add2~12COUT1_83\ = CARRY(((!\Add2~7\)) # (!y(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(3),
	cin => \Add2~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~10_combout\,
	cout0 => \Add2~12\,
	cout1 => \Add2~12COUT1_83\);

-- Location: LC_X4_Y2_N6
\Add2~15\ : maxii_lcell
-- Equation(s):
-- \Add2~15_combout\ = y(4) $ ((((!(!\Add2~7\ & \Add2~12\) # (\Add2~7\ & \Add2~12COUT1_83\)))))
-- \Add2~17\ = CARRY((y(4) & ((!\Add2~12\))))
-- \Add2~17COUT1_84\ = CARRY((y(4) & ((!\Add2~12COUT1_83\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(4),
	cin => \Add2~7\,
	cin0 => \Add2~12\,
	cin1 => \Add2~12COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~15_combout\,
	cout0 => \Add2~17\,
	cout1 => \Add2~17COUT1_84\);

-- Location: LC_X4_Y2_N7
\Add2~20\ : maxii_lcell
-- Equation(s):
-- \Add2~20_combout\ = y(5) $ (((((!\Add2~7\ & \Add2~17\) # (\Add2~7\ & \Add2~17COUT1_84\)))))
-- \Add2~22\ = CARRY(((!\Add2~17\)) # (!y(5)))
-- \Add2~22COUT1_85\ = CARRY(((!\Add2~17COUT1_84\)) # (!y(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(5),
	cin => \Add2~7\,
	cin0 => \Add2~17\,
	cin1 => \Add2~17COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~20_combout\,
	cout0 => \Add2~22\,
	cout1 => \Add2~22COUT1_85\);

-- Location: LC_X4_Y2_N8
\Add2~25\ : maxii_lcell
-- Equation(s):
-- \Add2~25_combout\ = (y(6) $ ((!(!\Add2~7\ & \Add2~22\) # (\Add2~7\ & \Add2~22COUT1_85\))))
-- \Add2~27\ = CARRY(((y(6) & !\Add2~22\)))
-- \Add2~27COUT1_86\ = CARRY(((y(6) & !\Add2~22COUT1_85\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(6),
	cin => \Add2~7\,
	cin0 => \Add2~22\,
	cin1 => \Add2~22COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~25_combout\,
	cout0 => \Add2~27\,
	cout1 => \Add2~27COUT1_86\);

-- Location: LC_X4_Y2_N9
\Add2~30\ : maxii_lcell
-- Equation(s):
-- \Add2~30_combout\ = (y(7) $ (((!\Add2~7\ & \Add2~27\) # (\Add2~7\ & \Add2~27COUT1_86\))))
-- \Add2~32\ = CARRY(((!\Add2~27COUT1_86\) # (!y(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(7),
	cin => \Add2~7\,
	cin0 => \Add2~27\,
	cin1 => \Add2~27COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~30_combout\,
	cout => \Add2~32\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(6),
	combout => \x_in~combout\(6));

-- Location: LC_X6_Y2_N3
\x[6]\ : maxii_lcell
-- Equation(s):
-- x(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \x_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x_in~combout\(6),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(6));

-- Location: LC_X7_Y1_N0
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = (y(8) $ ((\Add0~27\)))
-- \Add0~32\ = CARRY(((!\Add0~27\) # (!y(8))))
-- \Add0~32COUT1_81\ = CARRY(((!\Add0~27\) # (!y(8))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(8),
	cin => \Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_81\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(1),
	combout => \x_in~combout\(1));

-- Location: LC_X2_Y2_N7
\x[1]\ : maxii_lcell
-- Equation(s):
-- x(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \x_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x_in~combout\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(1));

-- Location: LC_X6_Y1_N5
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = (y(3) $ ((!\Add0~2\)))
-- \Add0~7\ = CARRY(((y(3) & !\Add0~2\)))
-- \Add0~7COUT1_77\ = CARRY(((y(3) & !\Add0~2\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(3),
	cin => \Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_77\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(0),
	combout => \x_in~combout\(0));

-- Location: LC_X2_Y1_N0
\x[0]\ : maxii_lcell
-- Equation(s):
-- x(0) = DFFEAS((((\x_in~combout\(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \x_in~combout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(0));

-- Location: LC_X2_Y1_N3
\Add1~0\ : maxii_lcell
-- Equation(s):
-- \Add1~0_combout\ = \Add0~0_combout\ $ ((x(0)))
-- \Add1~2\ = CARRY((\Add0~0_combout\ & (x(0))))
-- \Add1~2COUT1_76\ = CARRY((\Add0~0_combout\ & (x(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => x(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_76\);

-- Location: LC_X2_Y1_N4
\Add1~5\ : maxii_lcell
-- Equation(s):
-- \Add1~5_combout\ = x(1) $ (\Add0~5_combout\ $ ((\Add1~2\)))
-- \Add1~7\ = CARRY((x(1) & (!\Add0~5_combout\ & !\Add1~2COUT1_76\)) # (!x(1) & ((!\Add1~2COUT1_76\) # (!\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => \Add0~5_combout\,
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout => \Add1~7\);

-- Location: LC_X6_Y1_N6
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = (y(4) $ (((!\Add0~2\ & \Add0~7\) # (\Add0~2\ & \Add0~7COUT1_77\))))
-- \Add0~12\ = CARRY(((!\Add0~7\) # (!y(4))))
-- \Add0~12COUT1_78\ = CARRY(((!\Add0~7COUT1_77\) # (!y(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(4),
	cin => \Add0~2\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_78\);

-- Location: LC_X6_Y1_N7
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = (y(5) $ ((!(!\Add0~2\ & \Add0~12\) # (\Add0~2\ & \Add0~12COUT1_78\))))
-- \Add0~17\ = CARRY(((y(5) & !\Add0~12\)))
-- \Add0~17COUT1_79\ = CARRY(((y(5) & !\Add0~12COUT1_78\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(5),
	cin => \Add0~2\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_79\);

-- Location: LC_X6_Y1_N8
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = (y(6) $ (((!\Add0~2\ & \Add0~17\) # (\Add0~2\ & \Add0~17COUT1_79\))))
-- \Add0~22\ = CARRY(((!\Add0~17\) # (!y(6))))
-- \Add0~22COUT1_80\ = CARRY(((!\Add0~17COUT1_79\) # (!y(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(6),
	cin => \Add0~2\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_80\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(4),
	combout => \x_in~combout\(4));

-- Location: LC_X2_Y1_N1
\x[4]\ : maxii_lcell
-- Equation(s):
-- x(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \x_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x_in~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(4));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(3),
	combout => \x_in~combout\(3));

-- Location: LC_X2_Y1_N2
\x[3]\ : maxii_lcell
-- Equation(s):
-- x(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \x_in~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x_in~combout\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(3));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(2),
	combout => \x_in~combout\(2));

-- Location: LC_X3_Y1_N9
\x[2]\ : maxii_lcell
-- Equation(s):
-- x(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \x_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x_in~combout\(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(2));

-- Location: LC_X2_Y1_N5
\Add1~10\ : maxii_lcell
-- Equation(s):
-- \Add1~10_combout\ = x(2) $ (\Add0~10_combout\ $ ((!\Add1~7\)))
-- \Add1~12\ = CARRY((x(2) & ((\Add0~10_combout\) # (!\Add1~7\))) # (!x(2) & (\Add0~10_combout\ & !\Add1~7\)))
-- \Add1~12COUT1_77\ = CARRY((x(2) & ((\Add0~10_combout\) # (!\Add1~7\))) # (!x(2) & (\Add0~10_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => x(2),
	datab => \Add0~10_combout\,
	cin => \Add1~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_77\);

-- Location: LC_X2_Y1_N6
\Add1~15\ : maxii_lcell
-- Equation(s):
-- \Add1~15_combout\ = x(3) $ (\Add0~15_combout\ $ (((!\Add1~7\ & \Add1~12\) # (\Add1~7\ & \Add1~12COUT1_77\))))
-- \Add1~17\ = CARRY((x(3) & (!\Add0~15_combout\ & !\Add1~12\)) # (!x(3) & ((!\Add1~12\) # (!\Add0~15_combout\))))
-- \Add1~17COUT1_78\ = CARRY((x(3) & (!\Add0~15_combout\ & !\Add1~12COUT1_77\)) # (!x(3) & ((!\Add1~12COUT1_77\) # (!\Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => x(3),
	datab => \Add0~15_combout\,
	cin => \Add1~7\,
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_78\);

-- Location: LC_X2_Y1_N7
\Add1~20\ : maxii_lcell
-- Equation(s):
-- \Add1~20_combout\ = \Add0~20_combout\ $ (x(4) $ ((!(!\Add1~7\ & \Add1~17\) # (\Add1~7\ & \Add1~17COUT1_78\))))
-- \Add1~22\ = CARRY((\Add0~20_combout\ & ((x(4)) # (!\Add1~17\))) # (!\Add0~20_combout\ & (x(4) & !\Add1~17\)))
-- \Add1~22COUT1_79\ = CARRY((\Add0~20_combout\ & ((x(4)) # (!\Add1~17COUT1_78\))) # (!\Add0~20_combout\ & (x(4) & !\Add1~17COUT1_78\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => x(4),
	cin => \Add1~7\,
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout0 => \Add1~22\,
	cout1 => \Add1~22COUT1_79\);

-- Location: LC_X2_Y1_N8
\Add1~25\ : maxii_lcell
-- Equation(s):
-- \Add1~25_combout\ = x(5) $ (\Add0~25_combout\ $ (((!\Add1~7\ & \Add1~22\) # (\Add1~7\ & \Add1~22COUT1_79\))))
-- \Add1~27\ = CARRY((x(5) & (!\Add0~25_combout\ & !\Add1~22\)) # (!x(5) & ((!\Add1~22\) # (!\Add0~25_combout\))))
-- \Add1~27COUT1_80\ = CARRY((x(5) & (!\Add0~25_combout\ & !\Add1~22COUT1_79\)) # (!x(5) & ((!\Add1~22COUT1_79\) # (!\Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => x(5),
	datab => \Add0~25_combout\,
	cin => \Add1~7\,
	cin0 => \Add1~22\,
	cin1 => \Add1~22COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\,
	cout0 => \Add1~27\,
	cout1 => \Add1~27COUT1_80\);

-- Location: LC_X2_Y1_N9
\Add1~30\ : maxii_lcell
-- Equation(s):
-- \Add1~30_combout\ = x(6) $ (\Add0~30_combout\ $ ((!(!\Add1~7\ & \Add1~27\) # (\Add1~7\ & \Add1~27COUT1_80\))))
-- \Add1~32\ = CARRY((x(6) & ((\Add0~30_combout\) # (!\Add1~27COUT1_80\))) # (!x(6) & (\Add0~30_combout\ & !\Add1~27COUT1_80\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => x(6),
	datab => \Add0~30_combout\,
	cin => \Add1~7\,
	cin0 => \Add1~27\,
	cin1 => \Add1~27COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout => \Add1~32\);

-- Location: LC_X4_Y1_N3
\y[0]\ : maxii_lcell
-- Equation(s):
-- y(0) = DFFEAS(\Add2~0_combout\ $ ((\Add1~0_combout\)), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \y[0]~1\ = CARRY((\Add2~0_combout\ & (\Add1~0_combout\)))
-- \y[0]~1COUT1_31\ = CARRY((\Add2~0_combout\ & (\Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add2~0_combout\,
	datab => \Add1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(0),
	cout0 => \y[0]~1\,
	cout1 => \y[0]~1COUT1_31\);

-- Location: LC_X4_Y1_N4
\y[1]\ : maxii_lcell
-- Equation(s):
-- y(1) = DFFEAS(\Add2~5_combout\ $ (\Add1~5_combout\ $ ((\y[0]~1\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \y[1]~3\ = CARRY((\Add2~5_combout\ & (!\Add1~5_combout\ & !\y[0]~1COUT1_31\)) # (!\Add2~5_combout\ & ((!\y[0]~1COUT1_31\) # (!\Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add2~5_combout\,
	datab => \Add1~5_combout\,
	aclr => GND,
	cin0 => \y[0]~1\,
	cin1 => \y[0]~1COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(1),
	cout => \y[1]~3\);

-- Location: LC_X4_Y1_N5
\y[2]\ : maxii_lcell
-- Equation(s):
-- y(2) = DFFEAS(\Add2~10_combout\ $ (\Add1~10_combout\ $ ((!\y[1]~3\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \y[2]~5\ = CARRY((\Add2~10_combout\ & ((\Add1~10_combout\) # (!\y[1]~3\))) # (!\Add2~10_combout\ & (\Add1~10_combout\ & !\y[1]~3\)))
-- \y[2]~5COUT1_32\ = CARRY((\Add2~10_combout\ & ((\Add1~10_combout\) # (!\y[1]~3\))) # (!\Add2~10_combout\ & (\Add1~10_combout\ & !\y[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add2~10_combout\,
	datab => \Add1~10_combout\,
	aclr => GND,
	cin => \y[1]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(2),
	cout0 => \y[2]~5\,
	cout1 => \y[2]~5COUT1_32\);

-- Location: LC_X4_Y1_N6
\y[3]\ : maxii_lcell
-- Equation(s):
-- y(3) = DFFEAS(\Add2~15_combout\ $ (\Add1~15_combout\ $ (((!\y[1]~3\ & \y[2]~5\) # (\y[1]~3\ & \y[2]~5COUT1_32\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \y[3]~7\ = CARRY((\Add2~15_combout\ & (!\Add1~15_combout\ & !\y[2]~5\)) # (!\Add2~15_combout\ & ((!\y[2]~5\) # (!\Add1~15_combout\))))
-- \y[3]~7COUT1_33\ = CARRY((\Add2~15_combout\ & (!\Add1~15_combout\ & !\y[2]~5COUT1_32\)) # (!\Add2~15_combout\ & ((!\y[2]~5COUT1_32\) # (!\Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add2~15_combout\,
	datab => \Add1~15_combout\,
	aclr => GND,
	cin => \y[1]~3\,
	cin0 => \y[2]~5\,
	cin1 => \y[2]~5COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(3),
	cout0 => \y[3]~7\,
	cout1 => \y[3]~7COUT1_33\);

-- Location: LC_X4_Y1_N7
\y[4]\ : maxii_lcell
-- Equation(s):
-- y(4) = DFFEAS(\Add2~20_combout\ $ (\Add1~20_combout\ $ ((!(!\y[1]~3\ & \y[3]~7\) # (\y[1]~3\ & \y[3]~7COUT1_33\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \y[4]~9\ = CARRY((\Add2~20_combout\ & ((\Add1~20_combout\) # (!\y[3]~7\))) # (!\Add2~20_combout\ & (\Add1~20_combout\ & !\y[3]~7\)))
-- \y[4]~9COUT1_34\ = CARRY((\Add2~20_combout\ & ((\Add1~20_combout\) # (!\y[3]~7COUT1_33\))) # (!\Add2~20_combout\ & (\Add1~20_combout\ & !\y[3]~7COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add2~20_combout\,
	datab => \Add1~20_combout\,
	aclr => GND,
	cin => \y[1]~3\,
	cin0 => \y[3]~7\,
	cin1 => \y[3]~7COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(4),
	cout0 => \y[4]~9\,
	cout1 => \y[4]~9COUT1_34\);

-- Location: LC_X4_Y1_N8
\y[5]\ : maxii_lcell
-- Equation(s):
-- y(5) = DFFEAS(\Add1~25_combout\ $ (\Add2~25_combout\ $ (((!\y[1]~3\ & \y[4]~9\) # (\y[1]~3\ & \y[4]~9COUT1_34\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \y[5]~11\ = CARRY((\Add1~25_combout\ & (!\Add2~25_combout\ & !\y[4]~9\)) # (!\Add1~25_combout\ & ((!\y[4]~9\) # (!\Add2~25_combout\))))
-- \y[5]~11COUT1_35\ = CARRY((\Add1~25_combout\ & (!\Add2~25_combout\ & !\y[4]~9COUT1_34\)) # (!\Add1~25_combout\ & ((!\y[4]~9COUT1_34\) # (!\Add2~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add1~25_combout\,
	datab => \Add2~25_combout\,
	aclr => GND,
	cin => \y[1]~3\,
	cin0 => \y[4]~9\,
	cin1 => \y[4]~9COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(5),
	cout0 => \y[5]~11\,
	cout1 => \y[5]~11COUT1_35\);

-- Location: LC_X4_Y1_N9
\y[6]\ : maxii_lcell
-- Equation(s):
-- y(6) = DFFEAS(\Add2~30_combout\ $ (\Add1~30_combout\ $ ((!(!\y[1]~3\ & \y[5]~11\) # (\y[1]~3\ & \y[5]~11COUT1_35\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \y[6]~13\ = CARRY((\Add2~30_combout\ & ((\Add1~30_combout\) # (!\y[5]~11COUT1_35\))) # (!\Add2~30_combout\ & (\Add1~30_combout\ & !\y[5]~11COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add2~30_combout\,
	datab => \Add1~30_combout\,
	aclr => GND,
	cin => \y[1]~3\,
	cin0 => \y[5]~11\,
	cin1 => \y[5]~11COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(6),
	cout => \y[6]~13\);

-- Location: LC_X6_Y1_N9
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = y(7) $ ((((!(!\Add0~2\ & \Add0~22\) # (\Add0~2\ & \Add0~22COUT1_80\)))))
-- \Add0~27\ = CARRY((y(7) & ((!\Add0~22COUT1_80\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(7),
	cin => \Add0~2\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout => \Add0~27\);

-- Location: LC_X5_Y2_N0
\Add2~35\ : maxii_lcell
-- Equation(s):
-- \Add2~35_combout\ = y(8) $ ((((!\Add2~32\))))
-- \Add2~37\ = CARRY((y(8) & ((!\Add2~32\))))
-- \Add2~37COUT1_87\ = CARRY((y(8) & ((!\Add2~32\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(8),
	cin => \Add2~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~35_combout\,
	cout0 => \Add2~37\,
	cout1 => \Add2~37COUT1_87\);

-- Location: LC_X5_Y2_N1
\Add2~40\ : maxii_lcell
-- Equation(s):
-- \Add2~40_combout\ = (y(9) $ (((!\Add2~32\ & \Add2~37\) # (\Add2~32\ & \Add2~37COUT1_87\))))
-- \Add2~42\ = CARRY(((!\Add2~37\) # (!y(9))))
-- \Add2~42COUT1_88\ = CARRY(((!\Add2~37COUT1_87\) # (!y(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(9),
	cin => \Add2~32\,
	cin0 => \Add2~37\,
	cin1 => \Add2~37COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~40_combout\,
	cout0 => \Add2~42\,
	cout1 => \Add2~42COUT1_88\);

-- Location: LC_X5_Y2_N2
\Add2~45\ : maxii_lcell
-- Equation(s):
-- \Add2~45_combout\ = y(10) $ ((((!(!\Add2~32\ & \Add2~42\) # (\Add2~32\ & \Add2~42COUT1_88\)))))
-- \Add2~47\ = CARRY((y(10) & ((!\Add2~42\))))
-- \Add2~47COUT1_89\ = CARRY((y(10) & ((!\Add2~42COUT1_88\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(10),
	cin => \Add2~32\,
	cin0 => \Add2~42\,
	cin1 => \Add2~42COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~45_combout\,
	cout0 => \Add2~47\,
	cout1 => \Add2~47COUT1_89\);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(9),
	combout => \x_in~combout\(9));

-- Location: LC_X3_Y1_N8
\x[9]\ : maxii_lcell
-- Equation(s):
-- x(9) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \x_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x_in~combout\(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(9));

-- Location: LC_X7_Y1_N1
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = y(9) $ ((((!(!\Add0~27\ & \Add0~32\) # (\Add0~27\ & \Add0~32COUT1_81\)))))
-- \Add0~37\ = CARRY((y(9) & ((!\Add0~32\))))
-- \Add0~37COUT1_82\ = CARRY((y(9) & ((!\Add0~32COUT1_81\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => y(9),
	cin => \Add0~27\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_82\);

-- Location: LC_X7_Y1_N2
\Add0~40\ : maxii_lcell
-- Equation(s):
-- \Add0~40_combout\ = (y(10) $ (((!\Add0~27\ & \Add0~37\) # (\Add0~27\ & \Add0~37COUT1_82\))))
-- \Add0~42\ = CARRY(((!\Add0~37\) # (!y(10))))
-- \Add0~42COUT1_83\ = CARRY(((!\Add0~37COUT1_82\) # (!y(10))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(10),
	cin => \Add0~27\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_83\);

-- Location: LC_X7_Y1_N3
\Add0~45\ : maxii_lcell
-- Equation(s):
-- \Add0~45_combout\ = (y(11) $ ((!(!\Add0~27\ & \Add0~42\) # (\Add0~27\ & \Add0~42COUT1_83\))))
-- \Add0~47\ = CARRY(((y(11) & !\Add0~42\)))
-- \Add0~47COUT1_84\ = CARRY(((y(11) & !\Add0~42COUT1_83\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(11),
	cin => \Add0~27\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_84\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(7),
	combout => \x_in~combout\(7));

-- Location: LC_X2_Y2_N5
\x[7]\ : maxii_lcell
-- Equation(s):
-- x(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \x_in~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x_in~combout\(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(7));

-- Location: LC_X3_Y1_N0
\Add1~35\ : maxii_lcell
-- Equation(s):
-- \Add1~35_combout\ = \Add0~35_combout\ $ (x(7) $ ((\Add1~32\)))
-- \Add1~37\ = CARRY((\Add0~35_combout\ & (!x(7) & !\Add1~32\)) # (!\Add0~35_combout\ & ((!\Add1~32\) # (!x(7)))))
-- \Add1~37COUT1_81\ = CARRY((\Add0~35_combout\ & (!x(7) & !\Add1~32\)) # (!\Add0~35_combout\ & ((!\Add1~32\) # (!x(7)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => x(7),
	cin => \Add1~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\,
	cout0 => \Add1~37\,
	cout1 => \Add1~37COUT1_81\);

-- Location: LC_X3_Y1_N1
\Add1~40\ : maxii_lcell
-- Equation(s):
-- \Add1~40_combout\ = x(8) $ (\Add0~40_combout\ $ ((!(!\Add1~32\ & \Add1~37\) # (\Add1~32\ & \Add1~37COUT1_81\))))
-- \Add1~42\ = CARRY((x(8) & ((\Add0~40_combout\) # (!\Add1~37\))) # (!x(8) & (\Add0~40_combout\ & !\Add1~37\)))
-- \Add1~42COUT1_82\ = CARRY((x(8) & ((\Add0~40_combout\) # (!\Add1~37COUT1_81\))) # (!x(8) & (\Add0~40_combout\ & !\Add1~37COUT1_81\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => x(8),
	datab => \Add0~40_combout\,
	cin => \Add1~32\,
	cin0 => \Add1~37\,
	cin1 => \Add1~37COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~40_combout\,
	cout0 => \Add1~42\,
	cout1 => \Add1~42COUT1_82\);

-- Location: LC_X3_Y1_N2
\Add1~45\ : maxii_lcell
-- Equation(s):
-- \Add1~45_combout\ = x(9) $ (\Add0~45_combout\ $ (((!\Add1~32\ & \Add1~42\) # (\Add1~32\ & \Add1~42COUT1_82\))))
-- \Add1~47\ = CARRY((x(9) & (!\Add0~45_combout\ & !\Add1~42\)) # (!x(9) & ((!\Add1~42\) # (!\Add0~45_combout\))))
-- \Add1~47COUT1_83\ = CARRY((x(9) & (!\Add0~45_combout\ & !\Add1~42COUT1_82\)) # (!x(9) & ((!\Add1~42COUT1_82\) # (!\Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => x(9),
	datab => \Add0~45_combout\,
	cin => \Add1~32\,
	cin0 => \Add1~42\,
	cin1 => \Add1~42COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~45_combout\,
	cout0 => \Add1~47\,
	cout1 => \Add1~47COUT1_83\);

-- Location: LC_X5_Y1_N0
\y[7]\ : maxii_lcell
-- Equation(s):
-- y(7) = DFFEAS(\Add2~35_combout\ $ (\Add1~35_combout\ $ ((\y[6]~13\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \y[7]~15\ = CARRY((\Add2~35_combout\ & (!\Add1~35_combout\ & !\y[6]~13\)) # (!\Add2~35_combout\ & ((!\y[6]~13\) # (!\Add1~35_combout\))))
-- \y[7]~15COUT1_36\ = CARRY((\Add2~35_combout\ & (!\Add1~35_combout\ & !\y[6]~13\)) # (!\Add2~35_combout\ & ((!\y[6]~13\) # (!\Add1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add2~35_combout\,
	datab => \Add1~35_combout\,
	aclr => GND,
	cin => \y[6]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(7),
	cout0 => \y[7]~15\,
	cout1 => \y[7]~15COUT1_36\);

-- Location: LC_X5_Y1_N1
\y[8]\ : maxii_lcell
-- Equation(s):
-- y(8) = DFFEAS(\Add1~40_combout\ $ (\Add2~40_combout\ $ ((!(!\y[6]~13\ & \y[7]~15\) # (\y[6]~13\ & \y[7]~15COUT1_36\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \y[8]~17\ = CARRY((\Add1~40_combout\ & ((\Add2~40_combout\) # (!\y[7]~15\))) # (!\Add1~40_combout\ & (\Add2~40_combout\ & !\y[7]~15\)))
-- \y[8]~17COUT1_37\ = CARRY((\Add1~40_combout\ & ((\Add2~40_combout\) # (!\y[7]~15COUT1_36\))) # (!\Add1~40_combout\ & (\Add2~40_combout\ & !\y[7]~15COUT1_36\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add1~40_combout\,
	datab => \Add2~40_combout\,
	aclr => GND,
	cin => \y[6]~13\,
	cin0 => \y[7]~15\,
	cin1 => \y[7]~15COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(8),
	cout0 => \y[8]~17\,
	cout1 => \y[8]~17COUT1_37\);

-- Location: LC_X5_Y1_N2
\y[9]\ : maxii_lcell
-- Equation(s):
-- y(9) = DFFEAS(\Add2~45_combout\ $ (\Add1~45_combout\ $ (((!\y[6]~13\ & \y[8]~17\) # (\y[6]~13\ & \y[8]~17COUT1_37\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \y[9]~19\ = CARRY((\Add2~45_combout\ & (!\Add1~45_combout\ & !\y[8]~17\)) # (!\Add2~45_combout\ & ((!\y[8]~17\) # (!\Add1~45_combout\))))
-- \y[9]~19COUT1_38\ = CARRY((\Add2~45_combout\ & (!\Add1~45_combout\ & !\y[8]~17COUT1_37\)) # (!\Add2~45_combout\ & ((!\y[8]~17COUT1_37\) # (!\Add1~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add2~45_combout\,
	datab => \Add1~45_combout\,
	aclr => GND,
	cin => \y[6]~13\,
	cin0 => \y[8]~17\,
	cin1 => \y[8]~17COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(9),
	cout0 => \y[9]~19\,
	cout1 => \y[9]~19COUT1_38\);

-- Location: LC_X7_Y1_N4
\Add0~50\ : maxii_lcell
-- Equation(s):
-- \Add0~50_combout\ = (y(12) $ (((!\Add0~27\ & \Add0~47\) # (\Add0~27\ & \Add0~47COUT1_84\))))
-- \Add0~52\ = CARRY(((!\Add0~47COUT1_84\) # (!y(12))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(12),
	cin => \Add0~27\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout => \Add0~52\);

-- Location: LC_X7_Y1_N5
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = (y(13) $ ((!\Add0~52\)))
-- \Add0~57\ = CARRY(((y(13) & !\Add0~52\)))
-- \Add0~57COUT1_85\ = CARRY(((y(13) & !\Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(13),
	cin => \Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_85\);

-- Location: LC_X7_Y1_N6
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = (y(14) $ (((!\Add0~52\ & \Add0~57\) # (\Add0~52\ & \Add0~57COUT1_85\))))
-- \Add0~62\ = CARRY(((!\Add0~57\) # (!y(14))))
-- \Add0~62COUT1_86\ = CARRY(((!\Add0~57COUT1_85\) # (!y(14))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(14),
	cin => \Add0~52\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_86\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(10),
	combout => \x_in~combout\(10));

-- Location: LC_X3_Y2_N2
\x[10]\ : maxii_lcell
-- Equation(s):
-- x(10) = DFFEAS((((\x_in~combout\(10)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \x_in~combout\(10),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(10));

-- Location: LC_X3_Y1_N3
\Add1~50\ : maxii_lcell
-- Equation(s):
-- \Add1~50_combout\ = x(10) $ (\Add0~50_combout\ $ ((!(!\Add1~32\ & \Add1~47\) # (\Add1~32\ & \Add1~47COUT1_83\))))
-- \Add1~52\ = CARRY((x(10) & ((\Add0~50_combout\) # (!\Add1~47\))) # (!x(10) & (\Add0~50_combout\ & !\Add1~47\)))
-- \Add1~52COUT1_84\ = CARRY((x(10) & ((\Add0~50_combout\) # (!\Add1~47COUT1_83\))) # (!x(10) & (\Add0~50_combout\ & !\Add1~47COUT1_83\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => x(10),
	datab => \Add0~50_combout\,
	cin => \Add1~32\,
	cin0 => \Add1~47\,
	cin1 => \Add1~47COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~50_combout\,
	cout0 => \Add1~52\,
	cout1 => \Add1~52COUT1_84\);

-- Location: LC_X3_Y1_N4
\Add1~55\ : maxii_lcell
-- Equation(s):
-- \Add1~55_combout\ = x(11) $ (\Add0~55_combout\ $ (((!\Add1~32\ & \Add1~52\) # (\Add1~32\ & \Add1~52COUT1_84\))))
-- \Add1~57\ = CARRY((x(11) & (!\Add0~55_combout\ & !\Add1~52COUT1_84\)) # (!x(11) & ((!\Add1~52COUT1_84\) # (!\Add0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => x(11),
	datab => \Add0~55_combout\,
	cin => \Add1~32\,
	cin0 => \Add1~52\,
	cin1 => \Add1~52COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~55_combout\,
	cout => \Add1~57\);

-- Location: LC_X3_Y1_N5
\Add1~60\ : maxii_lcell
-- Equation(s):
-- \Add1~60_combout\ = x(12) $ (\Add0~60_combout\ $ ((!\Add1~57\)))
-- \Add1~62\ = CARRY((x(12) & ((\Add0~60_combout\) # (!\Add1~57\))) # (!x(12) & (\Add0~60_combout\ & !\Add1~57\)))
-- \Add1~62COUT1_85\ = CARRY((x(12) & ((\Add0~60_combout\) # (!\Add1~57\))) # (!x(12) & (\Add0~60_combout\ & !\Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => x(12),
	datab => \Add0~60_combout\,
	cin => \Add1~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~60_combout\,
	cout0 => \Add1~62\,
	cout1 => \Add1~62COUT1_85\);

-- Location: LC_X5_Y2_N3
\Add2~50\ : maxii_lcell
-- Equation(s):
-- \Add2~50_combout\ = (y(11) $ (((!\Add2~32\ & \Add2~47\) # (\Add2~32\ & \Add2~47COUT1_89\))))
-- \Add2~52\ = CARRY(((!\Add2~47\) # (!y(11))))
-- \Add2~52COUT1_90\ = CARRY(((!\Add2~47COUT1_89\) # (!y(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(11),
	cin => \Add2~32\,
	cin0 => \Add2~47\,
	cin1 => \Add2~47COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~50_combout\,
	cout0 => \Add2~52\,
	cout1 => \Add2~52COUT1_90\);

-- Location: LC_X5_Y2_N4
\Add2~55\ : maxii_lcell
-- Equation(s):
-- \Add2~55_combout\ = (y(12) $ ((!(!\Add2~32\ & \Add2~52\) # (\Add2~32\ & \Add2~52COUT1_90\))))
-- \Add2~57\ = CARRY(((y(12) & !\Add2~52COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(12),
	cin => \Add2~32\,
	cin0 => \Add2~52\,
	cin1 => \Add2~52COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~55_combout\,
	cout => \Add2~57\);

-- Location: LC_X5_Y1_N3
\y[10]\ : maxii_lcell
-- Equation(s):
-- y(10) = DFFEAS(\Add2~50_combout\ $ (\Add1~50_combout\ $ ((!(!\y[6]~13\ & \y[9]~19\) # (\y[6]~13\ & \y[9]~19COUT1_38\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \y[10]~21\ = CARRY((\Add2~50_combout\ & ((\Add1~50_combout\) # (!\y[9]~19\))) # (!\Add2~50_combout\ & (\Add1~50_combout\ & !\y[9]~19\)))
-- \y[10]~21COUT1_39\ = CARRY((\Add2~50_combout\ & ((\Add1~50_combout\) # (!\y[9]~19COUT1_38\))) # (!\Add2~50_combout\ & (\Add1~50_combout\ & !\y[9]~19COUT1_38\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add2~50_combout\,
	datab => \Add1~50_combout\,
	aclr => GND,
	cin => \y[6]~13\,
	cin0 => \y[9]~19\,
	cin1 => \y[9]~19COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(10),
	cout0 => \y[10]~21\,
	cout1 => \y[10]~21COUT1_39\);

-- Location: LC_X5_Y1_N4
\y[11]\ : maxii_lcell
-- Equation(s):
-- y(11) = DFFEAS(\Add1~55_combout\ $ (\Add2~55_combout\ $ (((!\y[6]~13\ & \y[10]~21\) # (\y[6]~13\ & \y[10]~21COUT1_39\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \y[11]~23\ = CARRY((\Add1~55_combout\ & (!\Add2~55_combout\ & !\y[10]~21COUT1_39\)) # (!\Add1~55_combout\ & ((!\y[10]~21COUT1_39\) # (!\Add2~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add1~55_combout\,
	datab => \Add2~55_combout\,
	aclr => GND,
	cin => \y[6]~13\,
	cin0 => \y[10]~21\,
	cin1 => \y[10]~21COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(11),
	cout => \y[11]~23\);

-- Location: LC_X5_Y1_N5
\y[12]\ : maxii_lcell
-- Equation(s):
-- y(12) = DFFEAS(\Add2~60_combout\ $ (\Add1~60_combout\ $ ((!\y[11]~23\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \y[12]~25\ = CARRY((\Add2~60_combout\ & ((\Add1~60_combout\) # (!\y[11]~23\))) # (!\Add2~60_combout\ & (\Add1~60_combout\ & !\y[11]~23\)))
-- \y[12]~25COUT1_40\ = CARRY((\Add2~60_combout\ & ((\Add1~60_combout\) # (!\y[11]~23\))) # (!\Add2~60_combout\ & (\Add1~60_combout\ & !\y[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add2~60_combout\,
	datab => \Add1~60_combout\,
	aclr => GND,
	cin => \y[11]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(12),
	cout0 => \y[12]~25\,
	cout1 => \y[12]~25COUT1_40\);

-- Location: LC_X5_Y2_N6
\Add2~65\ : maxii_lcell
-- Equation(s):
-- \Add2~65_combout\ = (y(14) $ ((!(!\Add2~57\ & \Add2~62\) # (\Add2~57\ & \Add2~62COUT1_91\))))
-- \Add2~67\ = CARRY(((y(14) & !\Add2~62\)))
-- \Add2~67COUT1_92\ = CARRY(((y(14) & !\Add2~62COUT1_91\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => y(14),
	cin => \Add2~57\,
	cin0 => \Add2~62\,
	cin1 => \Add2~62COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~65_combout\,
	cout0 => \Add2~67\,
	cout1 => \Add2~67COUT1_92\);

-- Location: LC_X5_Y2_N7
\Add2~70\ : maxii_lcell
-- Equation(s):
-- \Add2~70_combout\ = (((!\Add2~57\ & \Add2~67\) # (\Add2~57\ & \Add2~67COUT1_92\) $ (y(14))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => y(14),
	cin => \Add2~57\,
	cin0 => \Add2~67\,
	cin1 => \Add2~67COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~70_combout\);

-- Location: LC_X7_Y1_N7
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = (((!\Add0~52\ & \Add0~62\) # (\Add0~52\ & \Add0~62COUT1_86\) $ (!y(14))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => y(14),
	cin => \Add0~52\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(14),
	combout => \x_in~combout\(14));

-- Location: LC_X4_Y1_N2
\x[14]\ : maxii_lcell
-- Equation(s):
-- x(14) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \x_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x_in~combout\(14),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(14));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_in[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x_in(13),
	combout => \x_in~combout\(13));

-- Location: LC_X3_Y2_N5
\x[13]\ : maxii_lcell
-- Equation(s):
-- x(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \x_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x_in~combout\(13),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(13));

-- Location: LC_X3_Y1_N6
\Add1~65\ : maxii_lcell
-- Equation(s):
-- \Add1~65_combout\ = x(13) $ (\Add0~65_combout\ $ (((!\Add1~57\ & \Add1~62\) # (\Add1~57\ & \Add1~62COUT1_85\))))
-- \Add1~67\ = CARRY((x(13) & (!\Add0~65_combout\ & !\Add1~62\)) # (!x(13) & ((!\Add1~62\) # (!\Add0~65_combout\))))
-- \Add1~67COUT1_86\ = CARRY((x(13) & (!\Add0~65_combout\ & !\Add1~62COUT1_85\)) # (!x(13) & ((!\Add1~62COUT1_85\) # (!\Add0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => x(13),
	datab => \Add0~65_combout\,
	cin => \Add1~57\,
	cin0 => \Add1~62\,
	cin1 => \Add1~62COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~65_combout\,
	cout0 => \Add1~67\,
	cout1 => \Add1~67COUT1_86\);

-- Location: LC_X3_Y1_N7
\Add1~70\ : maxii_lcell
-- Equation(s):
-- \Add1~70_combout\ = (\Add0~65_combout\ $ ((!\Add1~57\ & \Add1~67\) # (\Add1~57\ & \Add1~67COUT1_86\) $ (!x(14))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add0~65_combout\,
	datad => x(14),
	cin => \Add1~57\,
	cin0 => \Add1~67\,
	cin1 => \Add1~67COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~70_combout\);

-- Location: LC_X5_Y1_N6
\y[13]\ : maxii_lcell
-- Equation(s):
-- y(13) = DFFEAS(\Add2~65_combout\ $ (\Add1~65_combout\ $ (((!\y[11]~23\ & \y[12]~25\) # (\y[11]~23\ & \y[12]~25COUT1_40\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \y[13]~27\ = CARRY((\Add2~65_combout\ & (!\Add1~65_combout\ & !\y[12]~25\)) # (!\Add2~65_combout\ & ((!\y[12]~25\) # (!\Add1~65_combout\))))
-- \y[13]~27COUT1_41\ = CARRY((\Add2~65_combout\ & (!\Add1~65_combout\ & !\y[12]~25COUT1_40\)) # (!\Add2~65_combout\ & ((!\y[12]~25COUT1_40\) # (!\Add1~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add2~65_combout\,
	datab => \Add1~65_combout\,
	aclr => GND,
	cin => \y[11]~23\,
	cin0 => \y[12]~25\,
	cin1 => \y[12]~25COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(13),
	cout0 => \y[13]~27\,
	cout1 => \y[13]~27COUT1_41\);

-- Location: LC_X5_Y1_N7
\y[14]\ : maxii_lcell
-- Equation(s):
-- y(14) = DFFEAS(\Add2~70_combout\ $ ((((!\y[11]~23\ & \y[13]~27\) # (\y[11]~23\ & \y[13]~27COUT1_41\) $ (!\Add1~70_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add2~70_combout\,
	datad => \Add1~70_combout\,
	aclr => GND,
	cin => \y[11]~23\,
	cin0 => \y[13]~27\,
	cin1 => \y[13]~27COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(14));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(0),
	oe => VCC,
	padio => ww_y_out(0));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(1),
	oe => VCC,
	padio => ww_y_out(1));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(2),
	oe => VCC,
	padio => ww_y_out(2));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(3),
	oe => VCC,
	padio => ww_y_out(3));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(4),
	oe => VCC,
	padio => ww_y_out(4));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(5),
	oe => VCC,
	padio => ww_y_out(5));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(6),
	oe => VCC,
	padio => ww_y_out(6));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(7),
	oe => VCC,
	padio => ww_y_out(7));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(8),
	oe => VCC,
	padio => ww_y_out(8));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(9),
	oe => VCC,
	padio => ww_y_out(9));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(10),
	oe => VCC,
	padio => ww_y_out(10));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(11),
	oe => VCC,
	padio => ww_y_out(11));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(12),
	oe => VCC,
	padio => ww_y_out(12));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(13),
	oe => VCC,
	padio => ww_y_out(13));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y_out[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => y(14),
	oe => VCC,
	padio => ww_y_out(14));
END structure;


