-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/11/2019 17:37:45"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	projeto IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	S_IN : IN std_logic_vector(2 DOWNTO 0);
	butao : IN std_logic;
	LED_out : OUT std_logic;
	display7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END projeto;

-- Design Ports Information
-- LED_out	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display7[0]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display7[1]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display7[2]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display7[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display7[4]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display7[5]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display7[6]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S_IN[2]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S_IN[1]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S_IN[0]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- butao	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF projeto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S_IN : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_butao : std_logic;
SIGNAL ww_LED_out : std_logic;
SIGNAL ww_display7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \MMUX|ccp|L2~0_combout\ : std_logic;
SIGNAL \MMUX|Mux2~2_combout\ : std_logic;
SIGNAL \MMUX|Mux2~3_combout\ : std_logic;
SIGNAL \display7~17_combout\ : std_logic;
SIGNAL \MMUX|Mux1~7_combout\ : std_logic;
SIGNAL \MMUX|Mux2~5_combout\ : std_logic;
SIGNAL \display7~38_combout\ : std_logic;
SIGNAL \display7~42_combout\ : std_logic;
SIGNAL \MMUX|sot|gen:1:uut|c_out~0_combout\ : std_logic;
SIGNAL \MMUX|sot|gen:2:uut|c_out~0_combout\ : std_logic;
SIGNAL \MMUX|Mux4~5_combout\ : std_logic;
SIGNAL \MMUX|Mux0~2_combout\ : std_logic;
SIGNAL \MMUX|ccp|MaQ_out~0_combout\ : std_logic;
SIGNAL \MMUX|ccp|MaQ_out~1_combout\ : std_logic;
SIGNAL \MMUX|ccp|igul_out~0_combout\ : std_logic;
SIGNAL \MMUX|Mux4~0_combout\ : std_logic;
SIGNAL \MMUX|Mux4~1_combout\ : std_logic;
SIGNAL \MMUX|ccp|L3~0_combout\ : std_logic;
SIGNAL \MMUX|Mux4~2_combout\ : std_logic;
SIGNAL \MMUX|Mux4~3_combout\ : std_logic;
SIGNAL \MMUX|Mux4~4_combout\ : std_logic;
SIGNAL \MMUX|Mux4~6_combout\ : std_logic;
SIGNAL \MMUX|ccp|igul_out~1_combout\ : std_logic;
SIGNAL \MMUX|CTRL~0_combout\ : std_logic;
SIGNAL \butao~combout\ : std_logic;
SIGNAL \display7~14_combout\ : std_logic;
SIGNAL \MMUX|sut|k1|c_out~0_combout\ : std_logic;
SIGNAL \display7~12_combout\ : std_logic;
SIGNAL \MMUX|Mux0~6_combout\ : std_logic;
SIGNAL \MMUX|Mux0~3_combout\ : std_logic;
SIGNAL \MMUX|Mux0~4_combout\ : std_logic;
SIGNAL \MMUX|Mux0~5_combout\ : std_logic;
SIGNAL \MMUX|Mux1~4_combout\ : std_logic;
SIGNAL \MMUX|Mux1~5_combout\ : std_logic;
SIGNAL \MMUX|Mux1~6_combout\ : std_logic;
SIGNAL \display7~19_combout\ : std_logic;
SIGNAL \MMUX|Mux3~0_combout\ : std_logic;
SIGNAL \MMUX|Mux3~1_combout\ : std_logic;
SIGNAL \display7~18_combout\ : std_logic;
SIGNAL \display7~20_combout\ : std_logic;
SIGNAL \display7~21_combout\ : std_logic;
SIGNAL \display7~23_combout\ : std_logic;
SIGNAL \MMUX|Mux2~4_combout\ : std_logic;
SIGNAL \display7~22_combout\ : std_logic;
SIGNAL \display7~39_combout\ : std_logic;
SIGNAL \display7~24_combout\ : std_logic;
SIGNAL \display7~26_combout\ : std_logic;
SIGNAL \display7~40_combout\ : std_logic;
SIGNAL \display7~37_combout\ : std_logic;
SIGNAL \display7~13_combout\ : std_logic;
SIGNAL \display7~15_combout\ : std_logic;
SIGNAL \display7~16_combout\ : std_logic;
SIGNAL \display7~25_combout\ : std_logic;
SIGNAL \display7~27_combout\ : std_logic;
SIGNAL \display7~28_combout\ : std_logic;
SIGNAL \display7~29_combout\ : std_logic;
SIGNAL \display7~41_combout\ : std_logic;
SIGNAL \display7~30_combout\ : std_logic;
SIGNAL \display7~31_combout\ : std_logic;
SIGNAL \display7~32_combout\ : std_logic;
SIGNAL \display7~33_combout\ : std_logic;
SIGNAL \display7~34_combout\ : std_logic;
SIGNAL \display7~35_combout\ : std_logic;
SIGNAL \display7~36_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_IN~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_S_IN <= S_IN;
ww_butao <= butao;
LED_out <= ww_LED_out;
display7 <= ww_display7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X1_Y13_N12
\MMUX|ccp|L2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|ccp|L2~0_combout\ = \a~combout\(2) $ (\b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \MMUX|ccp|L2~0_combout\);

-- Location: LCCOMB_X3_Y13_N2
\MMUX|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux2~2_combout\ = (\b~combout\(0) & (\S_IN~combout\(1) $ (\a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IN~combout\(1),
	datab => \b~combout\(0),
	datac => \a~combout\(0),
	combout => \MMUX|Mux2~2_combout\);

-- Location: LCCOMB_X3_Y13_N12
\MMUX|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux2~3_combout\ = (!\S_IN~combout\(2) & (\b~combout\(1) $ (\MMUX|Mux2~2_combout\ $ (\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \MMUX|Mux2~2_combout\,
	datac => \S_IN~combout\(2),
	datad => \a~combout\(1),
	combout => \MMUX|Mux2~3_combout\);

-- Location: LCCOMB_X1_Y13_N6
\display7~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~17_combout\ = (\MMUX|Mux0~3_combout\ & ((\MMUX|Mux2~5_combout\) # ((\MMUX|Mux3~1_combout\ & \display7~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux3~1_combout\,
	datab => \MMUX|Mux0~3_combout\,
	datac => \MMUX|Mux2~5_combout\,
	datad => \display7~38_combout\,
	combout => \display7~17_combout\);

-- Location: LCCOMB_X1_Y13_N0
\MMUX|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux1~7_combout\ = (!\S_IN~combout\(1) & (!\S_IN~combout\(2) & (\MMUX|sot|gen:1:uut|c_out~0_combout\ $ (\MMUX|ccp|L2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IN~combout\(1),
	datab => \S_IN~combout\(2),
	datac => \MMUX|sot|gen:1:uut|c_out~0_combout\,
	datad => \MMUX|ccp|L2~0_combout\,
	combout => \MMUX|Mux1~7_combout\);

-- Location: LCCOMB_X3_Y13_N26
\MMUX|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux2~5_combout\ = \a~combout\(1) $ (((\S_IN~combout\(2)) # (\b~combout\(1) $ (\MMUX|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \MMUX|Mux2~2_combout\,
	datac => \S_IN~combout\(2),
	datad => \a~combout\(1),
	combout => \MMUX|Mux2~5_combout\);

-- Location: LCCOMB_X1_Y13_N10
\display7~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~38_combout\ = (\MMUX|Mux1~5_combout\) # ((\MMUX|Mux1~7_combout\) # ((!\a~combout\(2) & \S_IN~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \S_IN~combout\(2),
	datac => \MMUX|Mux1~5_combout\,
	datad => \MMUX|Mux1~7_combout\,
	combout => \display7~38_combout\);

-- Location: LCCOMB_X2_Y14_N16
\display7~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~42_combout\ = ((!\MMUX|Mux3~0_combout\ & \S_IN~combout\(0))) # (!\MMUX|Mux2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MMUX|Mux3~0_combout\,
	datac => \S_IN~combout\(0),
	datad => \MMUX|Mux2~4_combout\,
	combout => \display7~42_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X3_Y13_N28
\MMUX|sot|gen:1:uut|c_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|sot|gen:1:uut|c_out~0_combout\ = (\b~combout\(1) & ((\a~combout\(1)) # ((\a~combout\(0) & \b~combout\(0))))) # (!\b~combout\(1) & (\a~combout\(0) & (\b~combout\(0) & \a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \MMUX|sot|gen:1:uut|c_out~0_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X2_Y13_N14
\MMUX|sot|gen:2:uut|c_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|sot|gen:2:uut|c_out~0_combout\ = (\b~combout\(2) & ((\MMUX|sot|gen:1:uut|c_out~0_combout\) # (\a~combout\(2)))) # (!\b~combout\(2) & (\MMUX|sot|gen:1:uut|c_out~0_combout\ & \a~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \MMUX|sot|gen:1:uut|c_out~0_combout\,
	datad => \a~combout\(2),
	combout => \MMUX|sot|gen:2:uut|c_out~0_combout\);

-- Location: LCCOMB_X2_Y13_N24
\MMUX|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux4~5_combout\ = (\b~combout\(3) & ((\a~combout\(3)) # (\MMUX|sot|gen:2:uut|c_out~0_combout\))) # (!\b~combout\(3) & (\a~combout\(3) & \MMUX|sot|gen:2:uut|c_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \a~combout\(3),
	datac => \MMUX|sot|gen:2:uut|c_out~0_combout\,
	combout => \MMUX|Mux4~5_combout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S_IN[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S_IN(2),
	combout => \S_IN~combout\(2));

-- Location: LCCOMB_X1_Y13_N24
\MMUX|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux0~2_combout\ = (!\S_IN~combout\(1) & !\S_IN~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IN~combout\(1),
	datad => \S_IN~combout\(2),
	combout => \MMUX|Mux0~2_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X2_Y13_N8
\MMUX|ccp|MaQ_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|ccp|MaQ_out~0_combout\ = (\a~combout\(3) & (((!\b~combout\(2) & \a~combout\(2))) # (!\b~combout\(3)))) # (!\a~combout\(3) & (!\b~combout\(2) & (\a~combout\(2) & !\b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(2),
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	combout => \MMUX|ccp|MaQ_out~0_combout\);

-- Location: LCCOMB_X3_Y13_N16
\MMUX|ccp|MaQ_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|ccp|MaQ_out~1_combout\ = (\b~combout\(1) & (\a~combout\(0) & (!\b~combout\(0) & \a~combout\(1)))) # (!\b~combout\(1) & ((\a~combout\(1)) # ((\a~combout\(0) & !\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \MMUX|ccp|MaQ_out~1_combout\);

-- Location: LCCOMB_X2_Y13_N18
\MMUX|ccp|igul_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|ccp|igul_out~0_combout\ = (\b~combout\(2) & (\a~combout\(2) & (\a~combout\(3) $ (!\b~combout\(3))))) # (!\b~combout\(2) & (!\a~combout\(2) & (\a~combout\(3) $ (!\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(2),
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	combout => \MMUX|ccp|igul_out~0_combout\);

-- Location: LCCOMB_X2_Y13_N4
\MMUX|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux4~0_combout\ = (\S_IN~combout\(1) & ((\MMUX|ccp|MaQ_out~0_combout\) # ((\MMUX|ccp|MaQ_out~1_combout\ & \MMUX|ccp|igul_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IN~combout\(1),
	datab => \MMUX|ccp|MaQ_out~0_combout\,
	datac => \MMUX|ccp|MaQ_out~1_combout\,
	datad => \MMUX|ccp|igul_out~0_combout\,
	combout => \MMUX|Mux4~0_combout\);

-- Location: LCCOMB_X3_Y13_N18
\MMUX|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux4~1_combout\ = (\b~combout\(1) & (((!\a~combout\(0) & \b~combout\(0))) # (!\a~combout\(1)))) # (!\b~combout\(1) & (!\a~combout\(0) & (\b~combout\(0) & !\a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \MMUX|Mux4~1_combout\);

-- Location: LCCOMB_X2_Y13_N30
\MMUX|ccp|L3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|ccp|L3~0_combout\ = \b~combout\(3) $ (\a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \a~combout\(3),
	combout => \MMUX|ccp|L3~0_combout\);

-- Location: LCCOMB_X2_Y13_N16
\MMUX|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux4~2_combout\ = (!\MMUX|ccp|L3~0_combout\ & ((\b~combout\(2) & ((\MMUX|Mux4~1_combout\) # (!\a~combout\(2)))) # (!\b~combout\(2) & (\MMUX|Mux4~1_combout\ & !\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \MMUX|Mux4~1_combout\,
	datac => \MMUX|ccp|L3~0_combout\,
	datad => \a~combout\(2),
	combout => \MMUX|Mux4~2_combout\);

-- Location: LCCOMB_X2_Y13_N10
\MMUX|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux4~3_combout\ = (!\S_IN~combout\(1) & ((\MMUX|Mux4~2_combout\) # ((!\a~combout\(3) & \b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IN~combout\(1),
	datab => \a~combout\(3),
	datac => \MMUX|Mux4~2_combout\,
	datad => \b~combout\(3),
	combout => \MMUX|Mux4~3_combout\);

-- Location: LCCOMB_X2_Y13_N20
\MMUX|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux4~4_combout\ = (!\S_IN~combout\(0) & (\S_IN~combout\(2) & ((\MMUX|Mux4~0_combout\) # (\MMUX|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IN~combout\(0),
	datab => \MMUX|Mux4~0_combout\,
	datac => \S_IN~combout\(2),
	datad => \MMUX|Mux4~3_combout\,
	combout => \MMUX|Mux4~4_combout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S_IN[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S_IN(0),
	combout => \S_IN~combout\(0));

-- Location: LCCOMB_X2_Y13_N26
\MMUX|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux4~6_combout\ = (\MMUX|Mux4~4_combout\) # ((\MMUX|Mux4~5_combout\ & (\MMUX|Mux0~2_combout\ & \S_IN~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux4~5_combout\,
	datab => \MMUX|Mux0~2_combout\,
	datac => \MMUX|Mux4~4_combout\,
	datad => \S_IN~combout\(0),
	combout => \MMUX|Mux4~6_combout\);

-- Location: LCCOMB_X3_Y13_N30
\MMUX|ccp|igul_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|ccp|igul_out~1_combout\ = (\a~combout\(0) & (\b~combout\(0) & (\b~combout\(1) $ (!\a~combout\(1))))) # (!\a~combout\(0) & (!\b~combout\(0) & (\b~combout\(1) $ (!\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \MMUX|ccp|igul_out~1_combout\);

-- Location: LCCOMB_X2_Y13_N12
\MMUX|CTRL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|CTRL~0_combout\ = (\MMUX|ccp|MaQ_out~0_combout\) # ((\MMUX|ccp|igul_out~0_combout\ & ((\MMUX|ccp|MaQ_out~1_combout\) # (\MMUX|ccp|igul_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|ccp|MaQ_out~1_combout\,
	datab => \MMUX|ccp|igul_out~0_combout\,
	datac => \MMUX|ccp|MaQ_out~0_combout\,
	datad => \MMUX|ccp|igul_out~1_combout\,
	combout => \MMUX|CTRL~0_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\butao~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_butao,
	combout => \butao~combout\);

-- Location: LCCOMB_X1_Y14_N0
\display7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~14_combout\ = (\MMUX|CTRL~0_combout\ & \butao~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MMUX|CTRL~0_combout\,
	datac => \butao~combout\,
	combout => \display7~14_combout\);

-- Location: LCCOMB_X3_Y13_N24
\MMUX|sut|k1|c_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|sut|k1|c_out~0_combout\ = (\b~combout\(1) & (\a~combout\(1) & ((\a~combout\(0)) # (!\b~combout\(0))))) # (!\b~combout\(1) & ((\a~combout\(0)) # ((\a~combout\(1)) # (!\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \MMUX|sut|k1|c_out~0_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X1_Y13_N28
\display7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~12_combout\ = (\MMUX|sut|k1|c_out~0_combout\ & ((\a~combout\(2)) # (!\b~combout\(2)))) # (!\MMUX|sut|k1|c_out~0_combout\ & (\a~combout\(2) & !\b~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MMUX|sut|k1|c_out~0_combout\,
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \display7~12_combout\);

-- Location: LCCOMB_X2_Y13_N22
\MMUX|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux0~6_combout\ = \a~combout\(3) $ (((\S_IN~combout\(2)) # (\display7~12_combout\ $ (!\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IN~combout\(2),
	datab => \display7~12_combout\,
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	combout => \MMUX|Mux0~6_combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S_IN[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S_IN(1),
	combout => \S_IN~combout\(1));

-- Location: LCCOMB_X1_Y13_N18
\MMUX|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux0~3_combout\ = (\S_IN~combout\(0) & ((\S_IN~combout\(1)) # (!\S_IN~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IN~combout\(0),
	datab => \S_IN~combout\(2),
	datad => \S_IN~combout\(1),
	combout => \MMUX|Mux0~3_combout\);

-- Location: LCCOMB_X2_Y13_N6
\MMUX|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux0~4_combout\ = (\MMUX|Mux0~3_combout\ & (\MMUX|Mux0~2_combout\ & (\MMUX|ccp|L3~0_combout\ $ (\MMUX|sot|gen:2:uut|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|ccp|L3~0_combout\,
	datab => \MMUX|Mux0~3_combout\,
	datac => \MMUX|sot|gen:2:uut|c_out~0_combout\,
	datad => \MMUX|Mux0~2_combout\,
	combout => \MMUX|Mux0~4_combout\);

-- Location: LCCOMB_X2_Y13_N2
\MMUX|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux0~5_combout\ = (\MMUX|Mux0~4_combout\) # ((\S_IN~combout\(1) & (\MMUX|Mux0~6_combout\ & \S_IN~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IN~combout\(1),
	datab => \MMUX|Mux0~6_combout\,
	datac => \MMUX|Mux0~4_combout\,
	datad => \S_IN~combout\(0),
	combout => \MMUX|Mux0~5_combout\);

-- Location: LCCOMB_X1_Y13_N22
\MMUX|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux1~4_combout\ = (\S_IN~combout\(2) & !\a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_IN~combout\(2),
	datac => \a~combout\(2),
	combout => \MMUX|Mux1~4_combout\);

-- Location: LCCOMB_X1_Y13_N8
\MMUX|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux1~5_combout\ = (!\S_IN~combout\(2) & (\S_IN~combout\(1) & (\MMUX|ccp|L2~0_combout\ $ (!\MMUX|sut|k1|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|ccp|L2~0_combout\,
	datab => \MMUX|sut|k1|c_out~0_combout\,
	datac => \S_IN~combout\(2),
	datad => \S_IN~combout\(1),
	combout => \MMUX|Mux1~5_combout\);

-- Location: LCCOMB_X1_Y13_N2
\MMUX|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux1~6_combout\ = (\MMUX|Mux0~3_combout\ & ((\MMUX|Mux1~7_combout\) # ((\MMUX|Mux1~4_combout\) # (\MMUX|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux1~7_combout\,
	datab => \MMUX|Mux1~4_combout\,
	datac => \MMUX|Mux1~5_combout\,
	datad => \MMUX|Mux0~3_combout\,
	combout => \MMUX|Mux1~6_combout\);

-- Location: LCCOMB_X1_Y14_N8
\display7~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~19_combout\ = (\MMUX|Mux2~4_combout\ & (((\MMUX|Mux1~6_combout\)))) # (!\MMUX|Mux2~4_combout\ & (((!\MMUX|Mux1~6_combout\) # (!\MMUX|Mux0~5_combout\)) # (!\display7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux2~4_combout\,
	datab => \display7~14_combout\,
	datac => \MMUX|Mux0~5_combout\,
	datad => \MMUX|Mux1~6_combout\,
	combout => \display7~19_combout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X3_Y13_N0
\MMUX|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux3~0_combout\ = (\S_IN~combout\(2) & (((\a~combout\(0))) # (!\S_IN~combout\(1)))) # (!\S_IN~combout\(2) & ((\b~combout\(0) $ (!\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IN~combout\(1),
	datab => \b~combout\(0),
	datac => \a~combout\(0),
	datad => \S_IN~combout\(2),
	combout => \MMUX|Mux3~0_combout\);

-- Location: LCCOMB_X2_Y14_N0
\MMUX|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux3~1_combout\ = (\MMUX|Mux3~0_combout\) # (!\S_IN~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_IN~combout\(0),
	datad => \MMUX|Mux3~0_combout\,
	combout => \MMUX|Mux3~1_combout\);

-- Location: LCCOMB_X1_Y14_N22
\display7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~18_combout\ = (\MMUX|Mux0~5_combout\ & (((\MMUX|Mux3~1_combout\)))) # (!\MMUX|Mux0~5_combout\ & (\display7~17_combout\ $ (((\MMUX|Mux3~1_combout\) # (!\MMUX|Mux1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display7~17_combout\,
	datab => \MMUX|Mux0~5_combout\,
	datac => \MMUX|Mux3~1_combout\,
	datad => \MMUX|Mux1~6_combout\,
	combout => \display7~18_combout\);

-- Location: LCCOMB_X1_Y14_N10
\display7~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~20_combout\ = (\MMUX|Mux0~5_combout\ & ((\display7~18_combout\ & ((\display7~19_combout\))) # (!\display7~18_combout\ & (\display7~16_combout\)))) # (!\MMUX|Mux0~5_combout\ & (((\display7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display7~16_combout\,
	datab => \display7~19_combout\,
	datac => \MMUX|Mux0~5_combout\,
	datad => \display7~18_combout\,
	combout => \display7~20_combout\);

-- Location: LCCOMB_X1_Y14_N12
\display7~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~21_combout\ = ((\display7~20_combout\ & \MMUX|CTRL~0_combout\)) # (!\butao~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display7~20_combout\,
	datab => \MMUX|CTRL~0_combout\,
	datac => \butao~combout\,
	combout => \display7~21_combout\);

-- Location: LCCOMB_X2_Y14_N12
\display7~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~23_combout\ = (\MMUX|Mux1~6_combout\ & \MMUX|Mux0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MMUX|Mux1~6_combout\,
	datad => \MMUX|Mux0~5_combout\,
	combout => \display7~23_combout\);

-- Location: LCCOMB_X3_Y13_N22
\MMUX|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMUX|Mux2~4_combout\ = ((!\MMUX|Mux2~3_combout\ & ((\a~combout\(1)) # (!\S_IN~combout\(2))))) # (!\MMUX|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux2~3_combout\,
	datab => \S_IN~combout\(2),
	datac => \MMUX|Mux0~3_combout\,
	datad => \a~combout\(1),
	combout => \MMUX|Mux2~4_combout\);

-- Location: LCCOMB_X2_Y14_N26
\display7~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~22_combout\ = (!\MMUX|Mux0~5_combout\ & ((\MMUX|Mux3~1_combout\ & (!\MMUX|Mux1~6_combout\ & !\MMUX|Mux2~4_combout\)) # (!\MMUX|Mux3~1_combout\ & ((!\MMUX|Mux2~4_combout\) # (!\MMUX|Mux1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux0~5_combout\,
	datab => \MMUX|Mux3~1_combout\,
	datac => \MMUX|Mux1~6_combout\,
	datad => \MMUX|Mux2~4_combout\,
	combout => \display7~22_combout\);

-- Location: LCCOMB_X2_Y14_N28
\display7~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~39_combout\ = (\display7~15_combout\ & ((\MMUX|Mux3~0_combout\) # ((!\MMUX|Mux2~4_combout\) # (!\S_IN~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display7~15_combout\,
	datab => \MMUX|Mux3~0_combout\,
	datac => \S_IN~combout\(0),
	datad => \MMUX|Mux2~4_combout\,
	combout => \display7~39_combout\);

-- Location: LCCOMB_X2_Y14_N6
\display7~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~24_combout\ = (\display7~22_combout\) # (((\display7~23_combout\ & !\display7~39_combout\)) # (!\display7~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display7~23_combout\,
	datab => \display7~22_combout\,
	datac => \display7~14_combout\,
	datad => \display7~39_combout\,
	combout => \display7~24_combout\);

-- Location: LCCOMB_X1_Y14_N24
\display7~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~26_combout\ = ((!\MMUX|Mux2~5_combout\ & (!\MMUX|Mux0~5_combout\ & \MMUX|Mux1~6_combout\))) # (!\display7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux2~5_combout\,
	datab => \display7~14_combout\,
	datac => \MMUX|Mux0~5_combout\,
	datad => \MMUX|Mux1~6_combout\,
	combout => \display7~26_combout\);

-- Location: LCCOMB_X1_Y14_N26
\display7~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~40_combout\ = (\S_IN~combout\(0) & (((\MMUX|Mux0~5_combout\ & !\MMUX|Mux2~4_combout\)) # (!\MMUX|Mux3~0_combout\))) # (!\S_IN~combout\(0) & (\MMUX|Mux0~5_combout\ & (!\MMUX|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IN~combout\(0),
	datab => \MMUX|Mux0~5_combout\,
	datac => \MMUX|Mux2~4_combout\,
	datad => \MMUX|Mux3~0_combout\,
	combout => \display7~40_combout\);

-- Location: LCCOMB_X2_Y13_N28
\display7~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~37_combout\ = \a~combout\(3) $ (((!\S_IN~combout\(2) & (\display7~12_combout\ $ (\b~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IN~combout\(2),
	datab => \display7~12_combout\,
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	combout => \display7~37_combout\);

-- Location: LCCOMB_X2_Y13_N0
\display7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~13_combout\ = (\S_IN~combout\(0) & (!\display7~37_combout\ & \S_IN~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IN~combout\(0),
	datab => \display7~37_combout\,
	datad => \S_IN~combout\(1),
	combout => \display7~13_combout\);

-- Location: LCCOMB_X1_Y14_N18
\display7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~15_combout\ = (\MMUX|Mux1~6_combout\ & (\display7~14_combout\ & ((\display7~13_combout\) # (\MMUX|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux1~6_combout\,
	datab => \display7~14_combout\,
	datac => \display7~13_combout\,
	datad => \MMUX|Mux0~4_combout\,
	combout => \display7~15_combout\);

-- Location: LCCOMB_X1_Y14_N20
\display7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~16_combout\ = (\MMUX|Mux1~6_combout\ & (((\MMUX|Mux2~4_combout\ & \MMUX|Mux3~1_combout\)) # (!\display7~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux2~4_combout\,
	datab => \display7~15_combout\,
	datac => \MMUX|Mux3~1_combout\,
	datad => \MMUX|Mux1~6_combout\,
	combout => \display7~16_combout\);

-- Location: LCCOMB_X1_Y14_N6
\display7~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~25_combout\ = (!\MMUX|Mux3~1_combout\ & (((\MMUX|Mux2~4_combout\ & !\MMUX|Mux1~6_combout\)) # (!\MMUX|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux2~4_combout\,
	datab => \MMUX|Mux0~5_combout\,
	datac => \MMUX|Mux3~1_combout\,
	datad => \MMUX|Mux1~6_combout\,
	combout => \display7~25_combout\);

-- Location: LCCOMB_X1_Y14_N2
\display7~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~27_combout\ = (\display7~26_combout\) # ((\display7~25_combout\) # ((\display7~40_combout\ & \display7~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display7~26_combout\,
	datab => \display7~40_combout\,
	datac => \display7~16_combout\,
	datad => \display7~25_combout\,
	combout => \display7~27_combout\);

-- Location: LCCOMB_X1_Y14_N28
\display7~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~28_combout\ = (\MMUX|Mux2~4_combout\ & (!\MMUX|Mux0~5_combout\ & (\MMUX|Mux3~1_combout\ $ (!\MMUX|Mux1~6_combout\)))) # (!\MMUX|Mux2~4_combout\ & ((\MMUX|Mux3~1_combout\ & (\MMUX|Mux0~5_combout\ & !\MMUX|Mux1~6_combout\)) # 
-- (!\MMUX|Mux3~1_combout\ & ((\MMUX|Mux1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux2~4_combout\,
	datab => \MMUX|Mux0~5_combout\,
	datac => \MMUX|Mux3~1_combout\,
	datad => \MMUX|Mux1~6_combout\,
	combout => \display7~28_combout\);

-- Location: LCCOMB_X1_Y14_N14
\display7~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~29_combout\ = ((\display7~28_combout\ & \MMUX|CTRL~0_combout\)) # (!\butao~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \butao~combout\,
	datab => \display7~28_combout\,
	datac => \MMUX|CTRL~0_combout\,
	combout => \display7~29_combout\);

-- Location: LCCOMB_X2_Y14_N30
\display7~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~41_combout\ = (!\MMUX|Mux1~6_combout\ & (!\MMUX|Mux2~4_combout\ & ((\MMUX|Mux3~0_combout\) # (!\S_IN~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux1~6_combout\,
	datab => \MMUX|Mux3~0_combout\,
	datac => \S_IN~combout\(0),
	datad => \MMUX|Mux2~4_combout\,
	combout => \display7~41_combout\);

-- Location: LCCOMB_X2_Y14_N8
\display7~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~30_combout\ = (\display7~14_combout\ & (((!\MMUX|Mux3~1_combout\ & \MMUX|Mux2~4_combout\)) # (!\display7~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display7~23_combout\,
	datab => \MMUX|Mux3~1_combout\,
	datac => \display7~14_combout\,
	datad => \MMUX|Mux2~4_combout\,
	combout => \display7~30_combout\);

-- Location: LCCOMB_X2_Y14_N10
\display7~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~31_combout\ = ((!\MMUX|Mux0~5_combout\ & \display7~41_combout\)) # (!\display7~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux0~5_combout\,
	datab => \display7~41_combout\,
	datac => \display7~30_combout\,
	combout => \display7~31_combout\);

-- Location: LCCOMB_X2_Y14_N20
\display7~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~32_combout\ = (\MMUX|Mux0~5_combout\ & (!\MMUX|Mux3~1_combout\ & (!\MMUX|Mux1~6_combout\ & !\MMUX|Mux2~4_combout\))) # (!\MMUX|Mux0~5_combout\ & (\MMUX|Mux1~6_combout\ & (\MMUX|Mux3~1_combout\ $ (\MMUX|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux0~5_combout\,
	datab => \MMUX|Mux3~1_combout\,
	datac => \MMUX|Mux1~6_combout\,
	datad => \MMUX|Mux2~4_combout\,
	combout => \display7~32_combout\);

-- Location: LCCOMB_X2_Y14_N22
\display7~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~33_combout\ = (\display7~32_combout\) # (!\display7~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display7~30_combout\,
	datac => \display7~32_combout\,
	combout => \display7~33_combout\);

-- Location: LCCOMB_X2_Y14_N24
\display7~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~34_combout\ = (\MMUX|Mux1~6_combout\ & (\MMUX|Mux0~5_combout\)) # (!\MMUX|Mux1~6_combout\ & (!\MMUX|Mux3~1_combout\ & (\MMUX|Mux0~5_combout\ $ (\MMUX|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MMUX|Mux0~5_combout\,
	datab => \MMUX|Mux3~1_combout\,
	datac => \MMUX|Mux1~6_combout\,
	datad => \MMUX|Mux2~4_combout\,
	combout => \display7~34_combout\);

-- Location: LCCOMB_X2_Y14_N2
\display7~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~35_combout\ = (\MMUX|Mux1~6_combout\ & ((\display7~34_combout\ & ((!\display7~39_combout\))) # (!\display7~34_combout\ & (!\display7~42_combout\)))) # (!\MMUX|Mux1~6_combout\ & (((\display7~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display7~42_combout\,
	datab => \display7~39_combout\,
	datac => \MMUX|Mux1~6_combout\,
	datad => \display7~34_combout\,
	combout => \display7~35_combout\);

-- Location: LCCOMB_X1_Y14_N16
\display7~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \display7~36_combout\ = ((\MMUX|CTRL~0_combout\ & \display7~35_combout\)) # (!\butao~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MMUX|CTRL~0_combout\,
	datac => \butao~combout\,
	datad => \display7~35_combout\,
	combout => \display7~36_combout\);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MMUX|Mux4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_out);

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display7[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display7~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display7(0));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display7[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display7~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display7(1));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display7[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display7~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display7(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display7[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display7~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display7(3));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display7[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display7~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display7(4));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display7[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display7~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display7(5));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display7[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display7~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display7(6));
END structure;


