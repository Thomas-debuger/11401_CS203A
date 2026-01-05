-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "12/05/2025 11:11:10"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	clk50 : IN std_logic;
	SW : IN std_logic_vector(0 TO 1);
	output : OUT std_logic
	);
END main;

-- Design Ports Information
-- output	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 TO 1);
SIGNAL ww_output : std_logic;
SIGNAL \clk50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \servo_inst|Add2~0_combout\ : std_logic;
SIGNAL \servo_inst|Add2~14_combout\ : std_logic;
SIGNAL \servo_inst|Add2~32_combout\ : std_logic;
SIGNAL \servo_inst|Add1~0_combout\ : std_logic;
SIGNAL \servo_inst|Add1~2_combout\ : std_logic;
SIGNAL \servo_inst|Add1~6_combout\ : std_logic;
SIGNAL \servo_inst|Add1~14_combout\ : std_logic;
SIGNAL \servo_inst|Add1~32_combout\ : std_logic;
SIGNAL \servo_inst|Add1~34_combout\ : std_logic;
SIGNAL \servo_inst|Add1~36_combout\ : std_logic;
SIGNAL \servo_inst|Add2~40_combout\ : std_logic;
SIGNAL \servo_inst|Add2~44_combout\ : std_logic;
SIGNAL \servo_inst|Add1~40_combout\ : std_logic;
SIGNAL \servo_inst|Add1~42_combout\ : std_logic;
SIGNAL \servo_inst|Add1~44_combout\ : std_logic;
SIGNAL \servo_inst|Add1~46_combout\ : std_logic;
SIGNAL \servo_inst|Add1~52_combout\ : std_logic;
SIGNAL \servo_inst|Add0~10_combout\ : std_logic;
SIGNAL \servo_inst|Add0~16_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~21_combout\ : std_logic;
SIGNAL \servo_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \servo_inst|LessThan1~5_combout\ : std_logic;
SIGNAL \servo_inst|LessThan1~6_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~2_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~4_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~6_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~8_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~10_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~12_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~14_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~21_combout\ : std_logic;
SIGNAL \servo_inst|Equal0~0_combout\ : std_logic;
SIGNAL \servo_inst|Equal0~2_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~23_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~27_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~29_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~31_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~33_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~41_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~47_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~48_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~49_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~51_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~57_combout\ : std_logic;
SIGNAL \output~output_o\ : std_logic;
SIGNAL \clk50~input_o\ : std_logic;
SIGNAL \clk50~inputclkctrl_outclk\ : std_logic;
SIGNAL \servo_inst|pulse_width~17_combout\ : std_logic;
SIGNAL \servo_inst|Add0~0_combout\ : std_logic;
SIGNAL \servo_inst|Add0~1\ : std_logic;
SIGNAL \servo_inst|Add0~2_combout\ : std_logic;
SIGNAL \servo_inst|Add0~3\ : std_logic;
SIGNAL \servo_inst|Add0~5\ : std_logic;
SIGNAL \servo_inst|Add0~6_combout\ : std_logic;
SIGNAL \servo_inst|Add0~7\ : std_logic;
SIGNAL \servo_inst|Add0~8_combout\ : std_logic;
SIGNAL \servo_inst|Add0~9\ : std_logic;
SIGNAL \servo_inst|Add0~11\ : std_logic;
SIGNAL \servo_inst|Add0~12_combout\ : std_logic;
SIGNAL \servo_inst|period_cnt~4_combout\ : std_logic;
SIGNAL \servo_inst|Add0~13\ : std_logic;
SIGNAL \servo_inst|Add0~15\ : std_logic;
SIGNAL \servo_inst|Add0~17\ : std_logic;
SIGNAL \servo_inst|Add0~18_combout\ : std_logic;
SIGNAL \servo_inst|period_cnt~5_combout\ : std_logic;
SIGNAL \servo_inst|Add0~19\ : std_logic;
SIGNAL \servo_inst|Add0~20_combout\ : std_logic;
SIGNAL \servo_inst|Add0~21\ : std_logic;
SIGNAL \servo_inst|Add0~22_combout\ : std_logic;
SIGNAL \servo_inst|Equal0~4_combout\ : std_logic;
SIGNAL \servo_inst|Add0~23\ : std_logic;
SIGNAL \servo_inst|Add0~24_combout\ : std_logic;
SIGNAL \servo_inst|Add0~25\ : std_logic;
SIGNAL \servo_inst|Add0~27\ : std_logic;
SIGNAL \servo_inst|Add0~28_combout\ : std_logic;
SIGNAL \servo_inst|period_cnt~6_combout\ : std_logic;
SIGNAL \servo_inst|Add0~26_combout\ : std_logic;
SIGNAL \servo_inst|Equal0~5_combout\ : std_logic;
SIGNAL \servo_inst|Add0~4_combout\ : std_logic;
SIGNAL \servo_inst|Equal0~1_combout\ : std_logic;
SIGNAL \servo_inst|Equal0~3_combout\ : std_logic;
SIGNAL \servo_inst|Equal0~6_combout\ : std_logic;
SIGNAL \servo_inst|update_tick~q\ : std_logic;
SIGNAL \servo_inst|Add1~57\ : std_logic;
SIGNAL \servo_inst|Add1~59\ : std_logic;
SIGNAL \servo_inst|Add1~60_combout\ : std_logic;
SIGNAL \servo_inst|Add1~58_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~30_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~32_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~52_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \servo_inst|Mux0~0_combout\ : std_logic;
SIGNAL \servo_inst|Add1~1\ : std_logic;
SIGNAL \servo_inst|Add1~3\ : std_logic;
SIGNAL \servo_inst|Add1~5\ : std_logic;
SIGNAL \servo_inst|Add1~7\ : std_logic;
SIGNAL \servo_inst|Add1~9\ : std_logic;
SIGNAL \servo_inst|Add1~10_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~16_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~15_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~7_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~5_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~28_combout\ : std_logic;
SIGNAL \servo_inst|Add2~56_combout\ : std_logic;
SIGNAL \servo_inst|Add2~50_combout\ : std_logic;
SIGNAL \servo_inst|Add2~48_combout\ : std_logic;
SIGNAL \servo_inst|Add2~46_combout\ : std_logic;
SIGNAL \servo_inst|Add2~38_combout\ : std_logic;
SIGNAL \servo_inst|Add2~42_combout\ : std_logic;
SIGNAL \servo_inst|Add2~36_combout\ : std_logic;
SIGNAL \servo_inst|Add2~34_combout\ : std_logic;
SIGNAL \servo_inst|LessThan2~5_combout\ : std_logic;
SIGNAL \servo_inst|LessThan2~6_combout\ : std_logic;
SIGNAL \servo_inst|LessThan2~7_combout\ : std_logic;
SIGNAL \servo_inst|Add2~52_combout\ : std_logic;
SIGNAL \servo_inst|LessThan2~8_combout\ : std_logic;
SIGNAL \servo_inst|LessThan2~9_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~35_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~36_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~43_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~44_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~50_combout\ : std_logic;
SIGNAL \servo_inst|Add2~1\ : std_logic;
SIGNAL \servo_inst|Add2~3\ : std_logic;
SIGNAL \servo_inst|Add2~5\ : std_logic;
SIGNAL \servo_inst|Add2~7\ : std_logic;
SIGNAL \servo_inst|Add2~8_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~42_combout\ : std_logic;
SIGNAL \servo_inst|Add2~9\ : std_logic;
SIGNAL \servo_inst|Add2~11\ : std_logic;
SIGNAL \servo_inst|Add2~13\ : std_logic;
SIGNAL \servo_inst|Add2~15\ : std_logic;
SIGNAL \servo_inst|Add2~17\ : std_logic;
SIGNAL \servo_inst|Add2~19\ : std_logic;
SIGNAL \servo_inst|Add2~21\ : std_logic;
SIGNAL \servo_inst|Add2~23\ : std_logic;
SIGNAL \servo_inst|Add2~25\ : std_logic;
SIGNAL \servo_inst|Add2~27\ : std_logic;
SIGNAL \servo_inst|Add2~29\ : std_logic;
SIGNAL \servo_inst|Add2~30_combout\ : std_logic;
SIGNAL \servo_inst|Add1~29\ : std_logic;
SIGNAL \servo_inst|Add1~30_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~25_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~26_combout\ : std_logic;
SIGNAL \servo_inst|Add2~31\ : std_logic;
SIGNAL \servo_inst|Add2~33\ : std_logic;
SIGNAL \servo_inst|Add2~35\ : std_logic;
SIGNAL \servo_inst|Add2~37\ : std_logic;
SIGNAL \servo_inst|Add2~39\ : std_logic;
SIGNAL \servo_inst|Add2~41\ : std_logic;
SIGNAL \servo_inst|Add2~43\ : std_logic;
SIGNAL \servo_inst|Add2~45\ : std_logic;
SIGNAL \servo_inst|Add2~47\ : std_logic;
SIGNAL \servo_inst|Add2~49\ : std_logic;
SIGNAL \servo_inst|Add2~51\ : std_logic;
SIGNAL \servo_inst|Add2~53\ : std_logic;
SIGNAL \servo_inst|Add2~54_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~18_combout\ : std_logic;
SIGNAL \servo_inst|Add2~55\ : std_logic;
SIGNAL \servo_inst|Add2~57\ : std_logic;
SIGNAL \servo_inst|Add2~58_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~20_combout\ : std_logic;
SIGNAL \servo_inst|Add2~59\ : std_logic;
SIGNAL \servo_inst|Add2~60_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~39_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~40_combout\ : std_logic;
SIGNAL \servo_inst|Add1~11\ : std_logic;
SIGNAL \servo_inst|Add1~12_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~37_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~38_combout\ : std_logic;
SIGNAL \servo_inst|Add1~13\ : std_logic;
SIGNAL \servo_inst|Add1~15\ : std_logic;
SIGNAL \servo_inst|Add1~17\ : std_logic;
SIGNAL \servo_inst|Add1~19\ : std_logic;
SIGNAL \servo_inst|Add1~21\ : std_logic;
SIGNAL \servo_inst|Add1~23\ : std_logic;
SIGNAL \servo_inst|Add1~25\ : std_logic;
SIGNAL \servo_inst|Add1~26_combout\ : std_logic;
SIGNAL \servo_inst|Add2~26_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~53_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~54_combout\ : std_logic;
SIGNAL \servo_inst|Add1~27\ : std_logic;
SIGNAL \servo_inst|Add1~28_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~55_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~56_combout\ : std_logic;
SIGNAL \servo_inst|Add2~28_combout\ : std_logic;
SIGNAL \servo_inst|Add2~16_combout\ : std_logic;
SIGNAL \servo_inst|Add2~20_combout\ : std_logic;
SIGNAL \servo_inst|Add2~24_combout\ : std_logic;
SIGNAL \servo_inst|Add2~22_combout\ : std_logic;
SIGNAL \servo_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \servo_inst|Add2~10_combout\ : std_logic;
SIGNAL \servo_inst|Add2~4_combout\ : std_logic;
SIGNAL \servo_inst|Add2~2_combout\ : std_logic;
SIGNAL \servo_inst|Add2~6_combout\ : std_logic;
SIGNAL \servo_inst|LessThan2~1_combout\ : std_logic;
SIGNAL \servo_inst|Add2~12_combout\ : std_logic;
SIGNAL \servo_inst|LessThan2~2_combout\ : std_logic;
SIGNAL \servo_inst|LessThan2~3_combout\ : std_logic;
SIGNAL \servo_inst|LessThan2~4_combout\ : std_logic;
SIGNAL \servo_inst|LessThan2~10_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~11_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~9_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~3_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~22_combout\ : std_logic;
SIGNAL \servo_inst|Add1~31\ : std_logic;
SIGNAL \servo_inst|Add1~33\ : std_logic;
SIGNAL \servo_inst|Add1~35\ : std_logic;
SIGNAL \servo_inst|Add1~37\ : std_logic;
SIGNAL \servo_inst|Add1~38_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~0_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~1_combout\ : std_logic;
SIGNAL \servo_inst|Add1~39\ : std_logic;
SIGNAL \servo_inst|Add1~41\ : std_logic;
SIGNAL \servo_inst|Add1~43\ : std_logic;
SIGNAL \servo_inst|Add1~45\ : std_logic;
SIGNAL \servo_inst|Add1~47\ : std_logic;
SIGNAL \servo_inst|Add1~48_combout\ : std_logic;
SIGNAL \servo_inst|Add1~49\ : std_logic;
SIGNAL \servo_inst|Add1~50_combout\ : std_logic;
SIGNAL \servo_inst|Add1~54_combout\ : std_logic;
SIGNAL \servo_inst|LessThan1~7_combout\ : std_logic;
SIGNAL \servo_inst|LessThan1~8_combout\ : std_logic;
SIGNAL \servo_inst|Add1~24_combout\ : std_logic;
SIGNAL \servo_inst|Add1~22_combout\ : std_logic;
SIGNAL \servo_inst|Add1~20_combout\ : std_logic;
SIGNAL \servo_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \servo_inst|Add1~16_combout\ : std_logic;
SIGNAL \servo_inst|Add1~18_combout\ : std_logic;
SIGNAL \servo_inst|Add1~8_combout\ : std_logic;
SIGNAL \servo_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \servo_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \servo_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \servo_inst|LessThan1~9_combout\ : std_logic;
SIGNAL \servo_inst|dir_up~0_combout\ : std_logic;
SIGNAL \servo_inst|dir_up~q\ : std_logic;
SIGNAL \servo_inst|pulse_width~13_combout\ : std_logic;
SIGNAL \servo_inst|Add1~51\ : std_logic;
SIGNAL \servo_inst|Add1~53\ : std_logic;
SIGNAL \servo_inst|Add1~55\ : std_logic;
SIGNAL \servo_inst|Add1~56_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~19_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~58_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~23_combout\ : std_logic;
SIGNAL \servo_inst|Add0~29\ : std_logic;
SIGNAL \servo_inst|Add0~30_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~24_combout\ : std_logic;
SIGNAL \servo_inst|Add0~31\ : std_logic;
SIGNAL \servo_inst|Add0~32_combout\ : std_logic;
SIGNAL \servo_inst|period_cnt~2_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~9_combout\ : std_logic;
SIGNAL \servo_inst|Add0~33\ : std_logic;
SIGNAL \servo_inst|Add0~34_combout\ : std_logic;
SIGNAL \servo_inst|period_cnt~3_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~10_combout\ : std_logic;
SIGNAL \servo_inst|Add2~18_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~34_combout\ : std_logic;
SIGNAL \servo_inst|Add0~14_combout\ : std_logic;
SIGNAL \servo_inst|Add1~4_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~45_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~46_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~11_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~12_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~13_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~25_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~14_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~15_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~16_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~17_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~18_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~19_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~20_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~22_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~26_combout\ : std_logic;
SIGNAL \servo_inst|Add0~35\ : std_logic;
SIGNAL \servo_inst|Add0~37\ : std_logic;
SIGNAL \servo_inst|Add0~38_combout\ : std_logic;
SIGNAL \servo_inst|period_cnt~0_combout\ : std_logic;
SIGNAL \servo_inst|pulse_width~24_combout\ : std_logic;
SIGNAL \servo_inst|Add0~36_combout\ : std_logic;
SIGNAL \servo_inst|period_cnt~1_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \servo_inst|LessThan0~27_combout\ : std_logic;
SIGNAL \servo_inst|servo_out~q\ : std_logic;
SIGNAL \servo_inst|period_cnt\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \servo_inst|pulse_width\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk50 <= clk50;
ww_SW <= SW;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50~input_o\);

-- Location: LCCOMB_X26_Y22_N2
\servo_inst|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~0_combout\ = (\SW[0]~input_o\ & (\servo_inst|pulse_width\(1) $ (VCC))) # (!\SW[0]~input_o\ & ((\servo_inst|pulse_width\(1)) # (GND)))
-- \servo_inst|Add2~1\ = CARRY((\servo_inst|pulse_width\(1)) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \servo_inst|pulse_width\(1),
	datad => VCC,
	combout => \servo_inst|Add2~0_combout\,
	cout => \servo_inst|Add2~1\);

-- Location: LCCOMB_X26_Y22_N16
\servo_inst|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~14_combout\ = (\servo_inst|Mux0~0_combout\ & ((\servo_inst|pulse_width\(8) & (\servo_inst|Add2~13\ & VCC)) # (!\servo_inst|pulse_width\(8) & (!\servo_inst|Add2~13\)))) # (!\servo_inst|Mux0~0_combout\ & ((\servo_inst|pulse_width\(8) & 
-- (!\servo_inst|Add2~13\)) # (!\servo_inst|pulse_width\(8) & ((\servo_inst|Add2~13\) # (GND)))))
-- \servo_inst|Add2~15\ = CARRY((\servo_inst|Mux0~0_combout\ & (!\servo_inst|pulse_width\(8) & !\servo_inst|Add2~13\)) # (!\servo_inst|Mux0~0_combout\ & ((!\servo_inst|Add2~13\) # (!\servo_inst|pulse_width\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Mux0~0_combout\,
	datab => \servo_inst|pulse_width\(8),
	datad => VCC,
	cin => \servo_inst|Add2~13\,
	combout => \servo_inst|Add2~14_combout\,
	cout => \servo_inst|Add2~15\);

-- Location: LCCOMB_X26_Y21_N2
\servo_inst|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~32_combout\ = (\servo_inst|pulse_width\(17) & ((GND) # (!\servo_inst|Add2~31\))) # (!\servo_inst|pulse_width\(17) & (\servo_inst|Add2~31\ $ (GND)))
-- \servo_inst|Add2~33\ = CARRY((\servo_inst|pulse_width\(17)) # (!\servo_inst|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(17),
	datad => VCC,
	cin => \servo_inst|Add2~31\,
	combout => \servo_inst|Add2~32_combout\,
	cout => \servo_inst|Add2~33\);

-- Location: LCCOMB_X28_Y21_N2
\servo_inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~0_combout\ = (\servo_inst|pulse_width\(1) & (\SW[0]~input_o\ $ (VCC))) # (!\servo_inst|pulse_width\(1) & (\SW[0]~input_o\ & VCC))
-- \servo_inst|Add1~1\ = CARRY((\servo_inst|pulse_width\(1) & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(1),
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \servo_inst|Add1~0_combout\,
	cout => \servo_inst|Add1~1\);

-- Location: LCCOMB_X28_Y21_N4
\servo_inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~2_combout\ = (\servo_inst|pulse_width\(2) & ((\servo_inst|Mux0~0_combout\ & (!\servo_inst|Add1~1\)) # (!\servo_inst|Mux0~0_combout\ & (\servo_inst|Add1~1\ & VCC)))) # (!\servo_inst|pulse_width\(2) & ((\servo_inst|Mux0~0_combout\ & 
-- ((\servo_inst|Add1~1\) # (GND))) # (!\servo_inst|Mux0~0_combout\ & (!\servo_inst|Add1~1\))))
-- \servo_inst|Add1~3\ = CARRY((\servo_inst|pulse_width\(2) & (\servo_inst|Mux0~0_combout\ & !\servo_inst|Add1~1\)) # (!\servo_inst|pulse_width\(2) & ((\servo_inst|Mux0~0_combout\) # (!\servo_inst|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(2),
	datab => \servo_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \servo_inst|Add1~1\,
	combout => \servo_inst|Add1~2_combout\,
	cout => \servo_inst|Add1~3\);

-- Location: LCCOMB_X28_Y21_N8
\servo_inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~6_combout\ = (\servo_inst|pulse_width\(4) & ((\SW[1]~input_o\ & ((\servo_inst|Add1~5\) # (GND))) # (!\SW[1]~input_o\ & (!\servo_inst|Add1~5\)))) # (!\servo_inst|pulse_width\(4) & ((\SW[1]~input_o\ & (!\servo_inst|Add1~5\)) # 
-- (!\SW[1]~input_o\ & (\servo_inst|Add1~5\ & VCC))))
-- \servo_inst|Add1~7\ = CARRY((\servo_inst|pulse_width\(4) & ((\SW[1]~input_o\) # (!\servo_inst|Add1~5\))) # (!\servo_inst|pulse_width\(4) & (\SW[1]~input_o\ & !\servo_inst|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(4),
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \servo_inst|Add1~5\,
	combout => \servo_inst|Add1~6_combout\,
	cout => \servo_inst|Add1~7\);

-- Location: LCCOMB_X28_Y21_N16
\servo_inst|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~14_combout\ = (\servo_inst|pulse_width\(8) & ((\servo_inst|Mux0~0_combout\ & (!\servo_inst|Add1~13\)) # (!\servo_inst|Mux0~0_combout\ & (\servo_inst|Add1~13\ & VCC)))) # (!\servo_inst|pulse_width\(8) & ((\servo_inst|Mux0~0_combout\ & 
-- ((\servo_inst|Add1~13\) # (GND))) # (!\servo_inst|Mux0~0_combout\ & (!\servo_inst|Add1~13\))))
-- \servo_inst|Add1~15\ = CARRY((\servo_inst|pulse_width\(8) & (\servo_inst|Mux0~0_combout\ & !\servo_inst|Add1~13\)) # (!\servo_inst|pulse_width\(8) & ((\servo_inst|Mux0~0_combout\) # (!\servo_inst|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(8),
	datab => \servo_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \servo_inst|Add1~13\,
	combout => \servo_inst|Add1~14_combout\,
	cout => \servo_inst|Add1~15\);

-- Location: LCCOMB_X28_Y20_N2
\servo_inst|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~32_combout\ = (\servo_inst|pulse_width\(17) & (\servo_inst|Add1~31\ $ (GND))) # (!\servo_inst|pulse_width\(17) & (!\servo_inst|Add1~31\ & VCC))
-- \servo_inst|Add1~33\ = CARRY((\servo_inst|pulse_width\(17) & !\servo_inst|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(17),
	datad => VCC,
	cin => \servo_inst|Add1~31\,
	combout => \servo_inst|Add1~32_combout\,
	cout => \servo_inst|Add1~33\);

-- Location: LCCOMB_X28_Y20_N4
\servo_inst|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~34_combout\ = (\servo_inst|pulse_width\(18) & (!\servo_inst|Add1~33\)) # (!\servo_inst|pulse_width\(18) & ((\servo_inst|Add1~33\) # (GND)))
-- \servo_inst|Add1~35\ = CARRY((!\servo_inst|Add1~33\) # (!\servo_inst|pulse_width\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(18),
	datad => VCC,
	cin => \servo_inst|Add1~33\,
	combout => \servo_inst|Add1~34_combout\,
	cout => \servo_inst|Add1~35\);

-- Location: LCCOMB_X28_Y20_N6
\servo_inst|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~36_combout\ = (\servo_inst|pulse_width\(19) & (\servo_inst|Add1~35\ $ (GND))) # (!\servo_inst|pulse_width\(19) & (!\servo_inst|Add1~35\ & VCC))
-- \servo_inst|Add1~37\ = CARRY((\servo_inst|pulse_width\(19) & !\servo_inst|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(19),
	datad => VCC,
	cin => \servo_inst|Add1~35\,
	combout => \servo_inst|Add1~36_combout\,
	cout => \servo_inst|Add1~37\);

-- Location: LCCOMB_X26_Y21_N10
\servo_inst|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~40_combout\ = (\servo_inst|pulse_width\(21) & ((GND) # (!\servo_inst|Add2~39\))) # (!\servo_inst|pulse_width\(21) & (\servo_inst|Add2~39\ $ (GND)))
-- \servo_inst|Add2~41\ = CARRY((\servo_inst|pulse_width\(21)) # (!\servo_inst|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(21),
	datad => VCC,
	cin => \servo_inst|Add2~39\,
	combout => \servo_inst|Add2~40_combout\,
	cout => \servo_inst|Add2~41\);

-- Location: LCCOMB_X26_Y21_N14
\servo_inst|Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~44_combout\ = (\servo_inst|pulse_width\(23) & ((GND) # (!\servo_inst|Add2~43\))) # (!\servo_inst|pulse_width\(23) & (\servo_inst|Add2~43\ $ (GND)))
-- \servo_inst|Add2~45\ = CARRY((\servo_inst|pulse_width\(23)) # (!\servo_inst|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(23),
	datad => VCC,
	cin => \servo_inst|Add2~43\,
	combout => \servo_inst|Add2~44_combout\,
	cout => \servo_inst|Add2~45\);

-- Location: LCCOMB_X28_Y20_N10
\servo_inst|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~40_combout\ = (\servo_inst|pulse_width\(21) & (\servo_inst|Add1~39\ $ (GND))) # (!\servo_inst|pulse_width\(21) & (!\servo_inst|Add1~39\ & VCC))
-- \servo_inst|Add1~41\ = CARRY((\servo_inst|pulse_width\(21) & !\servo_inst|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(21),
	datad => VCC,
	cin => \servo_inst|Add1~39\,
	combout => \servo_inst|Add1~40_combout\,
	cout => \servo_inst|Add1~41\);

-- Location: LCCOMB_X28_Y20_N12
\servo_inst|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~42_combout\ = (\servo_inst|pulse_width\(22) & (!\servo_inst|Add1~41\)) # (!\servo_inst|pulse_width\(22) & ((\servo_inst|Add1~41\) # (GND)))
-- \servo_inst|Add1~43\ = CARRY((!\servo_inst|Add1~41\) # (!\servo_inst|pulse_width\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(22),
	datad => VCC,
	cin => \servo_inst|Add1~41\,
	combout => \servo_inst|Add1~42_combout\,
	cout => \servo_inst|Add1~43\);

-- Location: LCCOMB_X28_Y20_N14
\servo_inst|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~44_combout\ = (\servo_inst|pulse_width\(23) & (\servo_inst|Add1~43\ $ (GND))) # (!\servo_inst|pulse_width\(23) & (!\servo_inst|Add1~43\ & VCC))
-- \servo_inst|Add1~45\ = CARRY((\servo_inst|pulse_width\(23) & !\servo_inst|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(23),
	datad => VCC,
	cin => \servo_inst|Add1~43\,
	combout => \servo_inst|Add1~44_combout\,
	cout => \servo_inst|Add1~45\);

-- Location: LCCOMB_X28_Y20_N16
\servo_inst|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~46_combout\ = (\servo_inst|pulse_width\(24) & (!\servo_inst|Add1~45\)) # (!\servo_inst|pulse_width\(24) & ((\servo_inst|Add1~45\) # (GND)))
-- \servo_inst|Add1~47\ = CARRY((!\servo_inst|Add1~45\) # (!\servo_inst|pulse_width\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(24),
	datad => VCC,
	cin => \servo_inst|Add1~45\,
	combout => \servo_inst|Add1~46_combout\,
	cout => \servo_inst|Add1~47\);

-- Location: LCCOMB_X28_Y20_N22
\servo_inst|Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~52_combout\ = (\servo_inst|pulse_width\(27) & (\servo_inst|Add1~51\ $ (GND))) # (!\servo_inst|pulse_width\(27) & (!\servo_inst|Add1~51\ & VCC))
-- \servo_inst|Add1~53\ = CARRY((\servo_inst|pulse_width\(27) & !\servo_inst|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(27),
	datad => VCC,
	cin => \servo_inst|Add1~51\,
	combout => \servo_inst|Add1~52_combout\,
	cout => \servo_inst|Add1~53\);

-- Location: LCCOMB_X27_Y21_N22
\servo_inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~10_combout\ = (\servo_inst|period_cnt\(5) & (!\servo_inst|Add0~9\)) # (!\servo_inst|period_cnt\(5) & ((\servo_inst|Add0~9\) # (GND)))
-- \servo_inst|Add0~11\ = CARRY((!\servo_inst|Add0~9\) # (!\servo_inst|period_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(5),
	datad => VCC,
	cin => \servo_inst|Add0~9\,
	combout => \servo_inst|Add0~10_combout\,
	cout => \servo_inst|Add0~11\);

-- Location: LCCOMB_X27_Y21_N28
\servo_inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~16_combout\ = (\servo_inst|period_cnt\(8) & (\servo_inst|Add0~15\ $ (GND))) # (!\servo_inst|period_cnt\(8) & (!\servo_inst|Add0~15\ & VCC))
-- \servo_inst|Add0~17\ = CARRY((\servo_inst|period_cnt\(8) & !\servo_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(8),
	datad => VCC,
	cin => \servo_inst|Add0~15\,
	combout => \servo_inst|Add0~16_combout\,
	cout => \servo_inst|Add0~17\);

-- Location: LCCOMB_X23_Y19_N8
\servo_inst|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~2_combout\ = (\servo_inst|pulse_width\(20)) # ((\servo_inst|pulse_width\(22)) # ((\servo_inst|pulse_width\(21)) # (\servo_inst|pulse_width\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(20),
	datab => \servo_inst|pulse_width\(22),
	datac => \servo_inst|pulse_width\(21),
	datad => \servo_inst|pulse_width\(23),
	combout => \servo_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y20_N26
\servo_inst|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~5_combout\ = (\servo_inst|pulse_width\(17) & (\servo_inst|period_cnt\(17) & ((\servo_inst|pulse_width\(16)) # (\servo_inst|period_cnt\(16))))) # (!\servo_inst|pulse_width\(17) & ((\servo_inst|pulse_width\(16)) # 
-- ((\servo_inst|period_cnt\(17)) # (\servo_inst|period_cnt\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(16),
	datab => \servo_inst|pulse_width\(17),
	datac => \servo_inst|period_cnt\(17),
	datad => \servo_inst|period_cnt\(16),
	combout => \servo_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X26_Y20_N6
\servo_inst|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~8_combout\ = (\servo_inst|pulse_width\(19) & (\servo_inst|period_cnt\(19) & (\servo_inst|pulse_width\(18) $ (!\servo_inst|period_cnt\(18))))) # (!\servo_inst|pulse_width\(19) & (!\servo_inst|period_cnt\(19) & 
-- (\servo_inst|pulse_width\(18) $ (!\servo_inst|period_cnt\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(19),
	datab => \servo_inst|pulse_width\(18),
	datac => \servo_inst|period_cnt\(18),
	datad => \servo_inst|period_cnt\(19),
	combout => \servo_inst|LessThan0~8_combout\);

-- Location: FF_X27_Y21_N29
\servo_inst|period_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(8));

-- Location: FF_X27_Y21_N23
\servo_inst|period_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(5));

-- Location: FF_X27_Y21_N9
\servo_inst|pulse_width[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~48_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(2));

-- Location: LCCOMB_X24_Y21_N14
\servo_inst|LessThan0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~21_combout\ = (\servo_inst|pulse_width\(15) & (\servo_inst|period_cnt\(15) & (\servo_inst|pulse_width\(14) $ (!\servo_inst|period_cnt\(14))))) # (!\servo_inst|pulse_width\(15) & (!\servo_inst|period_cnt\(15) & 
-- (\servo_inst|pulse_width\(14) $ (!\servo_inst|period_cnt\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(15),
	datab => \servo_inst|pulse_width\(14),
	datac => \servo_inst|period_cnt\(14),
	datad => \servo_inst|period_cnt\(15),
	combout => \servo_inst|LessThan0~21_combout\);

-- Location: LCCOMB_X28_Y22_N6
\servo_inst|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan1~4_combout\ = (!\servo_inst|Add1~36_combout\ & (!\servo_inst|Add1~32_combout\ & (!\servo_inst|Add1~34_combout\ & !\servo_inst|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add1~36_combout\,
	datab => \servo_inst|Add1~32_combout\,
	datac => \servo_inst|Add1~34_combout\,
	datad => \servo_inst|Add1~38_combout\,
	combout => \servo_inst|LessThan1~4_combout\);

-- Location: LCCOMB_X28_Y22_N0
\servo_inst|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan1~5_combout\ = (!\servo_inst|Add1~40_combout\ & !\servo_inst|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add1~40_combout\,
	datad => \servo_inst|Add1~42_combout\,
	combout => \servo_inst|LessThan1~5_combout\);

-- Location: LCCOMB_X28_Y22_N10
\servo_inst|LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan1~6_combout\ = (\servo_inst|LessThan1~4_combout\ & (!\servo_inst|Add1~46_combout\ & (!\servo_inst|Add1~44_combout\ & \servo_inst|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|LessThan1~4_combout\,
	datab => \servo_inst|Add1~46_combout\,
	datac => \servo_inst|Add1~44_combout\,
	datad => \servo_inst|LessThan1~5_combout\,
	combout => \servo_inst|LessThan1~6_combout\);

-- Location: LCCOMB_X26_Y20_N22
\servo_inst|pulse_width~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~2_combout\ = (\servo_inst|dir_up~q\ & (\servo_inst|Add2~40_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|Add2~40_combout\,
	datac => \servo_inst|Add1~40_combout\,
	datad => \servo_inst|dir_up~q\,
	combout => \servo_inst|pulse_width~2_combout\);

-- Location: LCCOMB_X26_Y20_N8
\servo_inst|pulse_width~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~4_combout\ = (\servo_inst|dir_up~q\ & (\servo_inst|Add2~42_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~42_combout\,
	datac => \servo_inst|Add1~42_combout\,
	datad => \servo_inst|dir_up~q\,
	combout => \servo_inst|pulse_width~4_combout\);

-- Location: LCCOMB_X27_Y23_N2
\servo_inst|pulse_width~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~6_combout\ = (\servo_inst|dir_up~q\ & ((\servo_inst|Add2~44_combout\))) # (!\servo_inst|dir_up~q\ & (\servo_inst|Add1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add1~44_combout\,
	datad => \servo_inst|Add2~44_combout\,
	combout => \servo_inst|pulse_width~6_combout\);

-- Location: LCCOMB_X27_Y23_N4
\servo_inst|pulse_width~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~8_combout\ = (\servo_inst|dir_up~q\ & (\servo_inst|Add2~46_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add2~46_combout\,
	datad => \servo_inst|Add1~46_combout\,
	combout => \servo_inst|pulse_width~8_combout\);

-- Location: LCCOMB_X27_Y23_N22
\servo_inst|pulse_width~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~10_combout\ = (\servo_inst|dir_up~q\ & (\servo_inst|Add2~48_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|Add1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add2~48_combout\,
	datad => \servo_inst|Add1~48_combout\,
	combout => \servo_inst|pulse_width~10_combout\);

-- Location: LCCOMB_X27_Y23_N8
\servo_inst|pulse_width~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~12_combout\ = (\servo_inst|dir_up~q\ & ((\servo_inst|Add2~50_combout\))) # (!\servo_inst|dir_up~q\ & (\servo_inst|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add1~50_combout\,
	datad => \servo_inst|Add2~50_combout\,
	combout => \servo_inst|pulse_width~12_combout\);

-- Location: LCCOMB_X27_Y23_N10
\servo_inst|pulse_width~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~14_combout\ = (\servo_inst|dir_up~q\ & ((\servo_inst|Add2~52_combout\))) # (!\servo_inst|dir_up~q\ & (\servo_inst|Add1~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add1~52_combout\,
	datad => \servo_inst|Add2~52_combout\,
	combout => \servo_inst|pulse_width~14_combout\);

-- Location: LCCOMB_X26_Y20_N10
\servo_inst|pulse_width~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~21_combout\ = (\servo_inst|dir_up~q\ & ((\servo_inst|Add2~36_combout\))) # (!\servo_inst|dir_up~q\ & (\servo_inst|Add1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add1~36_combout\,
	datab => \servo_inst|Add2~36_combout\,
	datad => \servo_inst|dir_up~q\,
	combout => \servo_inst|pulse_width~21_combout\);

-- Location: LCCOMB_X24_Y21_N22
\servo_inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Equal0~0_combout\ = (\servo_inst|period_cnt\(16) & (\servo_inst|period_cnt\(19) & (\servo_inst|period_cnt\(18) & \servo_inst|period_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(16),
	datab => \servo_inst|period_cnt\(19),
	datac => \servo_inst|period_cnt\(18),
	datad => \servo_inst|period_cnt\(17),
	combout => \servo_inst|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y19_N30
\servo_inst|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Equal0~2_combout\ = (\servo_inst|period_cnt\(5) & (!\servo_inst|period_cnt\(7) & (!\servo_inst|period_cnt\(6) & \servo_inst|period_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(5),
	datab => \servo_inst|period_cnt\(7),
	datac => \servo_inst|period_cnt\(6),
	datad => \servo_inst|period_cnt\(4),
	combout => \servo_inst|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y20_N4
\servo_inst|pulse_width~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~23_combout\ = (\servo_inst|dir_up~q\ & ((\servo_inst|Add2~34_combout\))) # (!\servo_inst|dir_up~q\ & (\servo_inst|Add1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add1~34_combout\,
	datad => \servo_inst|Add2~34_combout\,
	combout => \servo_inst|pulse_width~23_combout\);

-- Location: LCCOMB_X26_Y20_N30
\servo_inst|pulse_width~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~27_combout\ = (\servo_inst|dir_up~q\ & (\servo_inst|Add2~32_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add2~32_combout\,
	datad => \servo_inst|Add1~32_combout\,
	combout => \servo_inst|pulse_width~27_combout\);

-- Location: LCCOMB_X27_Y23_N12
\servo_inst|pulse_width~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~29_combout\ = (\servo_inst|dir_up~q\ & ((\servo_inst|Add2~22_combout\))) # (!\servo_inst|dir_up~q\ & (\servo_inst|Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add1~22_combout\,
	datad => \servo_inst|Add2~22_combout\,
	combout => \servo_inst|pulse_width~29_combout\);

-- Location: LCCOMB_X27_Y23_N14
\servo_inst|pulse_width~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~31_combout\ = (\servo_inst|dir_up~q\ & ((\servo_inst|Add2~20_combout\))) # (!\servo_inst|dir_up~q\ & (\servo_inst|Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add1~20_combout\,
	datad => \servo_inst|Add2~20_combout\,
	combout => \servo_inst|pulse_width~31_combout\);

-- Location: LCCOMB_X28_Y22_N12
\servo_inst|pulse_width~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~33_combout\ = (!\servo_inst|dir_up~q\ & ((\servo_inst|Add1~18_combout\) # (!\servo_inst|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add1~18_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~33_combout\);

-- Location: LCCOMB_X27_Y22_N10
\servo_inst|pulse_width~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~41_combout\ = (!\servo_inst|dir_up~q\ & ((\servo_inst|Add1~8_combout\) # (!\servo_inst|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add1~8_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~41_combout\);

-- Location: LCCOMB_X29_Y22_N8
\servo_inst|pulse_width~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~47_combout\ = (\servo_inst|dir_up~q\ & (\servo_inst|Add2~2_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add2~2_combout\,
	datad => \servo_inst|Add1~2_combout\,
	combout => \servo_inst|pulse_width~47_combout\);

-- Location: LCCOMB_X27_Y21_N8
\servo_inst|pulse_width~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~48_combout\ = (\servo_inst|pulse_width~47_combout\ & ((\servo_inst|dir_up~q\ & (\servo_inst|LessThan2~10_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~47_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan2~10_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~48_combout\);

-- Location: LCCOMB_X29_Y22_N26
\servo_inst|pulse_width~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~49_combout\ = (\servo_inst|dir_up~q\ & ((\servo_inst|Add2~0_combout\))) # (!\servo_inst|dir_up~q\ & (\servo_inst|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add1~0_combout\,
	datad => \servo_inst|Add2~0_combout\,
	combout => \servo_inst|pulse_width~49_combout\);

-- Location: LCCOMB_X29_Y22_N20
\servo_inst|pulse_width~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~51_combout\ = (\servo_inst|dir_up~q\ & (\servo_inst|Add2~16_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add2~16_combout\,
	datad => \servo_inst|Add1~16_combout\,
	combout => \servo_inst|pulse_width~51_combout\);

-- Location: LCCOMB_X24_Y21_N6
\servo_inst|pulse_width~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~57_combout\ = (\servo_inst|dir_up~q\ & ((\servo_inst|Add2~24_combout\))) # (!\servo_inst|dir_up~q\ & (\servo_inst|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add1~24_combout\,
	datad => \servo_inst|Add2~24_combout\,
	combout => \servo_inst|pulse_width~57_combout\);

-- Location: IOOBUF_X37_Y0_N23
\output~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \servo_inst|servo_out~q\,
	devoe => ww_devoe,
	o => \output~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50,
	o => \clk50~input_o\);

-- Location: CLKCTRL_G9
\clk50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y21_N30
\servo_inst|pulse_width~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~17_combout\ = (!\servo_inst|dir_up~q\ & \servo_inst|Add1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datad => \servo_inst|Add1~60_combout\,
	combout => \servo_inst|pulse_width~17_combout\);

-- Location: LCCOMB_X27_Y21_N12
\servo_inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~0_combout\ = \servo_inst|period_cnt\(0) $ (VCC)
-- \servo_inst|Add0~1\ = CARRY(\servo_inst|period_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(0),
	datad => VCC,
	combout => \servo_inst|Add0~0_combout\,
	cout => \servo_inst|Add0~1\);

-- Location: FF_X27_Y21_N13
\servo_inst|period_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(0));

-- Location: LCCOMB_X27_Y21_N14
\servo_inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~2_combout\ = (\servo_inst|period_cnt\(1) & (!\servo_inst|Add0~1\)) # (!\servo_inst|period_cnt\(1) & ((\servo_inst|Add0~1\) # (GND)))
-- \servo_inst|Add0~3\ = CARRY((!\servo_inst|Add0~1\) # (!\servo_inst|period_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(1),
	datad => VCC,
	cin => \servo_inst|Add0~1\,
	combout => \servo_inst|Add0~2_combout\,
	cout => \servo_inst|Add0~3\);

-- Location: FF_X27_Y21_N15
\servo_inst|period_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(1));

-- Location: LCCOMB_X27_Y21_N16
\servo_inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~4_combout\ = (\servo_inst|period_cnt\(2) & (\servo_inst|Add0~3\ $ (GND))) # (!\servo_inst|period_cnt\(2) & (!\servo_inst|Add0~3\ & VCC))
-- \servo_inst|Add0~5\ = CARRY((\servo_inst|period_cnt\(2) & !\servo_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(2),
	datad => VCC,
	cin => \servo_inst|Add0~3\,
	combout => \servo_inst|Add0~4_combout\,
	cout => \servo_inst|Add0~5\);

-- Location: LCCOMB_X27_Y21_N18
\servo_inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~6_combout\ = (\servo_inst|period_cnt\(3) & (!\servo_inst|Add0~5\)) # (!\servo_inst|period_cnt\(3) & ((\servo_inst|Add0~5\) # (GND)))
-- \servo_inst|Add0~7\ = CARRY((!\servo_inst|Add0~5\) # (!\servo_inst|period_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(3),
	datad => VCC,
	cin => \servo_inst|Add0~5\,
	combout => \servo_inst|Add0~6_combout\,
	cout => \servo_inst|Add0~7\);

-- Location: FF_X27_Y21_N19
\servo_inst|period_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(3));

-- Location: LCCOMB_X27_Y21_N20
\servo_inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~8_combout\ = (\servo_inst|period_cnt\(4) & (\servo_inst|Add0~7\ $ (GND))) # (!\servo_inst|period_cnt\(4) & (!\servo_inst|Add0~7\ & VCC))
-- \servo_inst|Add0~9\ = CARRY((\servo_inst|period_cnt\(4) & !\servo_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(4),
	datad => VCC,
	cin => \servo_inst|Add0~7\,
	combout => \servo_inst|Add0~8_combout\,
	cout => \servo_inst|Add0~9\);

-- Location: FF_X27_Y21_N21
\servo_inst|period_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(4));

-- Location: LCCOMB_X27_Y21_N24
\servo_inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~12_combout\ = (\servo_inst|period_cnt\(6) & (\servo_inst|Add0~11\ $ (GND))) # (!\servo_inst|period_cnt\(6) & (!\servo_inst|Add0~11\ & VCC))
-- \servo_inst|Add0~13\ = CARRY((\servo_inst|period_cnt\(6) & !\servo_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(6),
	datad => VCC,
	cin => \servo_inst|Add0~11\,
	combout => \servo_inst|Add0~12_combout\,
	cout => \servo_inst|Add0~13\);

-- Location: LCCOMB_X27_Y20_N22
\servo_inst|period_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|period_cnt~4_combout\ = (\servo_inst|Add0~12_combout\ & !\servo_inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|Add0~12_combout\,
	datac => \servo_inst|Equal0~6_combout\,
	combout => \servo_inst|period_cnt~4_combout\);

-- Location: FF_X27_Y20_N23
\servo_inst|period_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|period_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(6));

-- Location: LCCOMB_X27_Y21_N26
\servo_inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~14_combout\ = (\servo_inst|period_cnt\(7) & (!\servo_inst|Add0~13\)) # (!\servo_inst|period_cnt\(7) & ((\servo_inst|Add0~13\) # (GND)))
-- \servo_inst|Add0~15\ = CARRY((!\servo_inst|Add0~13\) # (!\servo_inst|period_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(7),
	datad => VCC,
	cin => \servo_inst|Add0~13\,
	combout => \servo_inst|Add0~14_combout\,
	cout => \servo_inst|Add0~15\);

-- Location: LCCOMB_X27_Y21_N30
\servo_inst|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~18_combout\ = (\servo_inst|period_cnt\(9) & (!\servo_inst|Add0~17\)) # (!\servo_inst|period_cnt\(9) & ((\servo_inst|Add0~17\) # (GND)))
-- \servo_inst|Add0~19\ = CARRY((!\servo_inst|Add0~17\) # (!\servo_inst|period_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(9),
	datad => VCC,
	cin => \servo_inst|Add0~17\,
	combout => \servo_inst|Add0~18_combout\,
	cout => \servo_inst|Add0~19\);

-- Location: LCCOMB_X26_Y19_N16
\servo_inst|period_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|period_cnt~5_combout\ = (\servo_inst|Add0~18_combout\ & !\servo_inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo_inst|Add0~18_combout\,
	datad => \servo_inst|Equal0~6_combout\,
	combout => \servo_inst|period_cnt~5_combout\);

-- Location: FF_X26_Y19_N17
\servo_inst|period_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|period_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(9));

-- Location: LCCOMB_X27_Y20_N0
\servo_inst|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~20_combout\ = (\servo_inst|period_cnt\(10) & (\servo_inst|Add0~19\ $ (GND))) # (!\servo_inst|period_cnt\(10) & (!\servo_inst|Add0~19\ & VCC))
-- \servo_inst|Add0~21\ = CARRY((\servo_inst|period_cnt\(10) & !\servo_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(10),
	datad => VCC,
	cin => \servo_inst|Add0~19\,
	combout => \servo_inst|Add0~20_combout\,
	cout => \servo_inst|Add0~21\);

-- Location: FF_X27_Y20_N1
\servo_inst|period_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(10));

-- Location: LCCOMB_X27_Y20_N2
\servo_inst|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~22_combout\ = (\servo_inst|period_cnt\(11) & (!\servo_inst|Add0~21\)) # (!\servo_inst|period_cnt\(11) & ((\servo_inst|Add0~21\) # (GND)))
-- \servo_inst|Add0~23\ = CARRY((!\servo_inst|Add0~21\) # (!\servo_inst|period_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(11),
	datad => VCC,
	cin => \servo_inst|Add0~21\,
	combout => \servo_inst|Add0~22_combout\,
	cout => \servo_inst|Add0~23\);

-- Location: FF_X27_Y20_N3
\servo_inst|period_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(11));

-- Location: LCCOMB_X24_Y19_N8
\servo_inst|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Equal0~4_combout\ = (!\servo_inst|period_cnt\(8) & (\servo_inst|period_cnt\(9) & (!\servo_inst|period_cnt\(10) & !\servo_inst|period_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(8),
	datab => \servo_inst|period_cnt\(9),
	datac => \servo_inst|period_cnt\(10),
	datad => \servo_inst|period_cnt\(11),
	combout => \servo_inst|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y20_N4
\servo_inst|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~24_combout\ = (\servo_inst|period_cnt\(12) & (\servo_inst|Add0~23\ $ (GND))) # (!\servo_inst|period_cnt\(12) & (!\servo_inst|Add0~23\ & VCC))
-- \servo_inst|Add0~25\ = CARRY((\servo_inst|period_cnt\(12) & !\servo_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(12),
	datad => VCC,
	cin => \servo_inst|Add0~23\,
	combout => \servo_inst|Add0~24_combout\,
	cout => \servo_inst|Add0~25\);

-- Location: FF_X27_Y20_N5
\servo_inst|period_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(12));

-- Location: LCCOMB_X27_Y20_N6
\servo_inst|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~26_combout\ = (\servo_inst|period_cnt\(13) & (!\servo_inst|Add0~25\)) # (!\servo_inst|period_cnt\(13) & ((\servo_inst|Add0~25\) # (GND)))
-- \servo_inst|Add0~27\ = CARRY((!\servo_inst|Add0~25\) # (!\servo_inst|period_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(13),
	datad => VCC,
	cin => \servo_inst|Add0~25\,
	combout => \servo_inst|Add0~26_combout\,
	cout => \servo_inst|Add0~27\);

-- Location: LCCOMB_X27_Y20_N8
\servo_inst|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~28_combout\ = (\servo_inst|period_cnt\(14) & (\servo_inst|Add0~27\ $ (GND))) # (!\servo_inst|period_cnt\(14) & (!\servo_inst|Add0~27\ & VCC))
-- \servo_inst|Add0~29\ = CARRY((\servo_inst|period_cnt\(14) & !\servo_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(14),
	datad => VCC,
	cin => \servo_inst|Add0~27\,
	combout => \servo_inst|Add0~28_combout\,
	cout => \servo_inst|Add0~29\);

-- Location: LCCOMB_X24_Y21_N4
\servo_inst|period_cnt~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|period_cnt~6_combout\ = (!\servo_inst|Equal0~6_combout\ & \servo_inst|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo_inst|Equal0~6_combout\,
	datad => \servo_inst|Add0~28_combout\,
	combout => \servo_inst|period_cnt~6_combout\);

-- Location: FF_X24_Y21_N5
\servo_inst|period_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|period_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(14));

-- Location: FF_X27_Y20_N7
\servo_inst|period_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(13));

-- Location: LCCOMB_X24_Y19_N26
\servo_inst|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Equal0~5_combout\ = (!\servo_inst|period_cnt\(15) & (\servo_inst|period_cnt\(14) & (!\servo_inst|period_cnt\(13) & !\servo_inst|period_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(15),
	datab => \servo_inst|period_cnt\(14),
	datac => \servo_inst|period_cnt\(13),
	datad => \servo_inst|period_cnt\(12),
	combout => \servo_inst|Equal0~5_combout\);

-- Location: FF_X27_Y21_N17
\servo_inst|period_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(2));

-- Location: LCCOMB_X24_Y21_N0
\servo_inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Equal0~1_combout\ = (\servo_inst|period_cnt\(3) & \servo_inst|period_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(3),
	datad => \servo_inst|period_cnt\(2),
	combout => \servo_inst|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y21_N10
\servo_inst|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Equal0~3_combout\ = (\servo_inst|Equal0~2_combout\ & (\servo_inst|Equal0~1_combout\ & (\servo_inst|period_cnt\(1) & \servo_inst|period_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Equal0~2_combout\,
	datab => \servo_inst|Equal0~1_combout\,
	datac => \servo_inst|period_cnt\(1),
	datad => \servo_inst|period_cnt\(0),
	combout => \servo_inst|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y21_N26
\servo_inst|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Equal0~6_combout\ = (\servo_inst|Equal0~0_combout\ & (\servo_inst|Equal0~4_combout\ & (\servo_inst|Equal0~5_combout\ & \servo_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Equal0~0_combout\,
	datab => \servo_inst|Equal0~4_combout\,
	datac => \servo_inst|Equal0~5_combout\,
	datad => \servo_inst|Equal0~3_combout\,
	combout => \servo_inst|Equal0~6_combout\);

-- Location: FF_X24_Y21_N27
\servo_inst|update_tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|update_tick~q\);

-- Location: FF_X24_Y21_N31
\servo_inst|pulse_width[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~17_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(31));

-- Location: LCCOMB_X28_Y20_N26
\servo_inst|Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~56_combout\ = (\servo_inst|pulse_width\(29) & (\servo_inst|Add1~55\ $ (GND))) # (!\servo_inst|pulse_width\(29) & (!\servo_inst|Add1~55\ & VCC))
-- \servo_inst|Add1~57\ = CARRY((\servo_inst|pulse_width\(29) & !\servo_inst|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(29),
	datad => VCC,
	cin => \servo_inst|Add1~55\,
	combout => \servo_inst|Add1~56_combout\,
	cout => \servo_inst|Add1~57\);

-- Location: LCCOMB_X28_Y20_N28
\servo_inst|Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~58_combout\ = (\servo_inst|pulse_width\(30) & (!\servo_inst|Add1~57\)) # (!\servo_inst|pulse_width\(30) & ((\servo_inst|Add1~57\) # (GND)))
-- \servo_inst|Add1~59\ = CARRY((!\servo_inst|Add1~57\) # (!\servo_inst|pulse_width\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(30),
	datad => VCC,
	cin => \servo_inst|Add1~57\,
	combout => \servo_inst|Add1~58_combout\,
	cout => \servo_inst|Add1~59\);

-- Location: LCCOMB_X28_Y20_N30
\servo_inst|Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~60_combout\ = \servo_inst|pulse_width\(31) $ (!\servo_inst|Add1~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(31),
	cin => \servo_inst|Add1~59\,
	combout => \servo_inst|Add1~60_combout\);

-- Location: LCCOMB_X27_Y23_N28
\servo_inst|pulse_width~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~30_combout\ = (\servo_inst|pulse_width~29_combout\ & ((\servo_inst|dir_up~q\ & (\servo_inst|LessThan2~10_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~29_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan2~10_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~30_combout\);

-- Location: FF_X27_Y23_N29
\servo_inst|pulse_width[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~30_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(12));

-- Location: LCCOMB_X27_Y23_N30
\servo_inst|pulse_width~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~32_combout\ = (\servo_inst|pulse_width~31_combout\ & ((\servo_inst|dir_up~q\ & (\servo_inst|LessThan2~10_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~31_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan2~10_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~32_combout\);

-- Location: FF_X27_Y23_N31
\servo_inst|pulse_width[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~32_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(11));

-- Location: LCCOMB_X28_Y21_N0
\servo_inst|pulse_width~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~52_combout\ = (\servo_inst|pulse_width~51_combout\) # ((\servo_inst|dir_up~q\ & ((!\servo_inst|LessThan2~10_combout\))) # (!\servo_inst|dir_up~q\ & (!\servo_inst|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~51_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan1~9_combout\,
	datad => \servo_inst|LessThan2~10_combout\,
	combout => \servo_inst|pulse_width~52_combout\);

-- Location: FF_X28_Y21_N1
\servo_inst|pulse_width[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~52_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(9));

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X7_Y23_N0
\servo_inst|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Mux0~0_combout\ = (\SW[0]~input_o\) # (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \servo_inst|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y21_N6
\servo_inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~4_combout\ = ((\servo_inst|pulse_width\(3) $ (\SW[1]~input_o\ $ (\servo_inst|Add1~3\)))) # (GND)
-- \servo_inst|Add1~5\ = CARRY((\servo_inst|pulse_width\(3) & (\SW[1]~input_o\ & !\servo_inst|Add1~3\)) # (!\servo_inst|pulse_width\(3) & ((\SW[1]~input_o\) # (!\servo_inst|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(3),
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \servo_inst|Add1~3\,
	combout => \servo_inst|Add1~4_combout\,
	cout => \servo_inst|Add1~5\);

-- Location: LCCOMB_X28_Y21_N10
\servo_inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~8_combout\ = ((\servo_inst|pulse_width\(5) $ (\SW[1]~input_o\ $ (!\servo_inst|Add1~7\)))) # (GND)
-- \servo_inst|Add1~9\ = CARRY((\servo_inst|pulse_width\(5) & (!\SW[1]~input_o\ & !\servo_inst|Add1~7\)) # (!\servo_inst|pulse_width\(5) & ((!\servo_inst|Add1~7\) # (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(5),
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \servo_inst|Add1~7\,
	combout => \servo_inst|Add1~8_combout\,
	cout => \servo_inst|Add1~9\);

-- Location: LCCOMB_X28_Y21_N12
\servo_inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~10_combout\ = (\SW[0]~input_o\ & ((\servo_inst|pulse_width\(6) & ((\servo_inst|Add1~9\) # (GND))) # (!\servo_inst|pulse_width\(6) & (!\servo_inst|Add1~9\)))) # (!\SW[0]~input_o\ & ((\servo_inst|pulse_width\(6) & (!\servo_inst|Add1~9\)) # 
-- (!\servo_inst|pulse_width\(6) & (\servo_inst|Add1~9\ & VCC))))
-- \servo_inst|Add1~11\ = CARRY((\SW[0]~input_o\ & ((\servo_inst|pulse_width\(6)) # (!\servo_inst|Add1~9\))) # (!\SW[0]~input_o\ & (\servo_inst|pulse_width\(6) & !\servo_inst|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \servo_inst|pulse_width\(6),
	datad => VCC,
	cin => \servo_inst|Add1~9\,
	combout => \servo_inst|Add1~10_combout\,
	cout => \servo_inst|Add1~11\);

-- Location: LCCOMB_X24_Y21_N28
\servo_inst|pulse_width~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~16_combout\ = (\servo_inst|dir_up~q\ & !\servo_inst|Add2~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo_inst|dir_up~q\,
	datad => \servo_inst|Add2~60_combout\,
	combout => \servo_inst|pulse_width~16_combout\);

-- Location: LCCOMB_X27_Y23_N16
\servo_inst|pulse_width~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~15_combout\ = (\servo_inst|pulse_width~14_combout\ & ((\servo_inst|dir_up~q\ & (\servo_inst|LessThan2~10_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~14_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan2~10_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~15_combout\);

-- Location: FF_X27_Y23_N17
\servo_inst|pulse_width[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~15_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(27));

-- Location: LCCOMB_X27_Y23_N24
\servo_inst|pulse_width~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~7_combout\ = (\servo_inst|pulse_width~6_combout\ & ((\servo_inst|dir_up~q\ & (\servo_inst|LessThan2~10_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~6_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan2~10_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~7_combout\);

-- Location: FF_X27_Y23_N25
\servo_inst|pulse_width[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~7_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(23));

-- Location: LCCOMB_X26_Y20_N2
\servo_inst|pulse_width~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~5_combout\ = (\servo_inst|pulse_width~4_combout\ & ((\servo_inst|dir_up~q\ & (\servo_inst|LessThan2~10_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~4_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan2~10_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~5_combout\);

-- Location: FF_X26_Y20_N3
\servo_inst|pulse_width[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~5_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(22));

-- Location: LCCOMB_X26_Y20_N0
\servo_inst|pulse_width~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~28_combout\ = (\servo_inst|pulse_width~27_combout\ & ((\servo_inst|dir_up~q\ & (\servo_inst|LessThan2~10_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~27_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan2~10_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~28_combout\);

-- Location: FF_X26_Y20_N1
\servo_inst|pulse_width[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~28_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(17));

-- Location: LCCOMB_X26_Y21_N26
\servo_inst|Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~56_combout\ = (\servo_inst|pulse_width\(29) & ((GND) # (!\servo_inst|Add2~55\))) # (!\servo_inst|pulse_width\(29) & (\servo_inst|Add2~55\ $ (GND)))
-- \servo_inst|Add2~57\ = CARRY((\servo_inst|pulse_width\(29)) # (!\servo_inst|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(29),
	datad => VCC,
	cin => \servo_inst|Add2~55\,
	combout => \servo_inst|Add2~56_combout\,
	cout => \servo_inst|Add2~57\);

-- Location: LCCOMB_X26_Y21_N20
\servo_inst|Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~50_combout\ = (\servo_inst|pulse_width\(26) & (\servo_inst|Add2~49\ & VCC)) # (!\servo_inst|pulse_width\(26) & (!\servo_inst|Add2~49\))
-- \servo_inst|Add2~51\ = CARRY((!\servo_inst|pulse_width\(26) & !\servo_inst|Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(26),
	datad => VCC,
	cin => \servo_inst|Add2~49\,
	combout => \servo_inst|Add2~50_combout\,
	cout => \servo_inst|Add2~51\);

-- Location: LCCOMB_X26_Y21_N18
\servo_inst|Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~48_combout\ = (\servo_inst|pulse_width\(25) & ((GND) # (!\servo_inst|Add2~47\))) # (!\servo_inst|pulse_width\(25) & (\servo_inst|Add2~47\ $ (GND)))
-- \servo_inst|Add2~49\ = CARRY((\servo_inst|pulse_width\(25)) # (!\servo_inst|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(25),
	datad => VCC,
	cin => \servo_inst|Add2~47\,
	combout => \servo_inst|Add2~48_combout\,
	cout => \servo_inst|Add2~49\);

-- Location: LCCOMB_X26_Y21_N16
\servo_inst|Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~46_combout\ = (\servo_inst|pulse_width\(24) & (\servo_inst|Add2~45\ & VCC)) # (!\servo_inst|pulse_width\(24) & (!\servo_inst|Add2~45\))
-- \servo_inst|Add2~47\ = CARRY((!\servo_inst|pulse_width\(24) & !\servo_inst|Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(24),
	datad => VCC,
	cin => \servo_inst|Add2~45\,
	combout => \servo_inst|Add2~46_combout\,
	cout => \servo_inst|Add2~47\);

-- Location: LCCOMB_X26_Y21_N8
\servo_inst|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~38_combout\ = (\servo_inst|pulse_width\(20) & (\servo_inst|Add2~37\ & VCC)) # (!\servo_inst|pulse_width\(20) & (!\servo_inst|Add2~37\))
-- \servo_inst|Add2~39\ = CARRY((!\servo_inst|pulse_width\(20) & !\servo_inst|Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(20),
	datad => VCC,
	cin => \servo_inst|Add2~37\,
	combout => \servo_inst|Add2~38_combout\,
	cout => \servo_inst|Add2~39\);

-- Location: LCCOMB_X26_Y21_N12
\servo_inst|Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~42_combout\ = (\servo_inst|pulse_width\(22) & (\servo_inst|Add2~41\ & VCC)) # (!\servo_inst|pulse_width\(22) & (!\servo_inst|Add2~41\))
-- \servo_inst|Add2~43\ = CARRY((!\servo_inst|pulse_width\(22) & !\servo_inst|Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(22),
	datad => VCC,
	cin => \servo_inst|Add2~41\,
	combout => \servo_inst|Add2~42_combout\,
	cout => \servo_inst|Add2~43\);

-- Location: LCCOMB_X26_Y21_N6
\servo_inst|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~36_combout\ = (\servo_inst|pulse_width\(19) & ((GND) # (!\servo_inst|Add2~35\))) # (!\servo_inst|pulse_width\(19) & (\servo_inst|Add2~35\ $ (GND)))
-- \servo_inst|Add2~37\ = CARRY((\servo_inst|pulse_width\(19)) # (!\servo_inst|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(19),
	datad => VCC,
	cin => \servo_inst|Add2~35\,
	combout => \servo_inst|Add2~36_combout\,
	cout => \servo_inst|Add2~37\);

-- Location: LCCOMB_X26_Y21_N4
\servo_inst|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~34_combout\ = (\servo_inst|pulse_width\(18) & (\servo_inst|Add2~33\ & VCC)) # (!\servo_inst|pulse_width\(18) & (!\servo_inst|Add2~33\))
-- \servo_inst|Add2~35\ = CARRY((!\servo_inst|pulse_width\(18) & !\servo_inst|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(18),
	datad => VCC,
	cin => \servo_inst|Add2~33\,
	combout => \servo_inst|Add2~34_combout\,
	cout => \servo_inst|Add2~35\);

-- Location: LCCOMB_X26_Y20_N18
\servo_inst|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan2~5_combout\ = (\servo_inst|Add2~32_combout\) # ((\servo_inst|Add2~36_combout\) # ((\servo_inst|Add2~30_combout\) # (\servo_inst|Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~32_combout\,
	datab => \servo_inst|Add2~36_combout\,
	datac => \servo_inst|Add2~30_combout\,
	datad => \servo_inst|Add2~34_combout\,
	combout => \servo_inst|LessThan2~5_combout\);

-- Location: LCCOMB_X26_Y20_N28
\servo_inst|LessThan2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan2~6_combout\ = (\servo_inst|Add2~40_combout\) # ((\servo_inst|Add2~38_combout\) # ((\servo_inst|Add2~42_combout\) # (\servo_inst|LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~40_combout\,
	datab => \servo_inst|Add2~38_combout\,
	datac => \servo_inst|Add2~42_combout\,
	datad => \servo_inst|LessThan2~5_combout\,
	combout => \servo_inst|LessThan2~6_combout\);

-- Location: LCCOMB_X27_Y21_N4
\servo_inst|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan2~7_combout\ = (\servo_inst|Add2~44_combout\) # ((\servo_inst|Add2~48_combout\) # ((\servo_inst|Add2~46_combout\) # (\servo_inst|LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~44_combout\,
	datab => \servo_inst|Add2~48_combout\,
	datac => \servo_inst|Add2~46_combout\,
	datad => \servo_inst|LessThan2~6_combout\,
	combout => \servo_inst|LessThan2~7_combout\);

-- Location: LCCOMB_X26_Y21_N22
\servo_inst|Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~52_combout\ = (\servo_inst|pulse_width\(27) & ((GND) # (!\servo_inst|Add2~51\))) # (!\servo_inst|pulse_width\(27) & (\servo_inst|Add2~51\ $ (GND)))
-- \servo_inst|Add2~53\ = CARRY((\servo_inst|pulse_width\(27)) # (!\servo_inst|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(27),
	datad => VCC,
	cin => \servo_inst|Add2~51\,
	combout => \servo_inst|Add2~52_combout\,
	cout => \servo_inst|Add2~53\);

-- Location: LCCOMB_X27_Y21_N6
\servo_inst|LessThan2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan2~8_combout\ = (\servo_inst|Add2~50_combout\) # ((\servo_inst|LessThan2~7_combout\) # (\servo_inst|Add2~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|Add2~50_combout\,
	datac => \servo_inst|LessThan2~7_combout\,
	datad => \servo_inst|Add2~52_combout\,
	combout => \servo_inst|LessThan2~8_combout\);

-- Location: LCCOMB_X27_Y21_N0
\servo_inst|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan2~9_combout\ = (\servo_inst|Add2~58_combout\) # ((\servo_inst|Add2~54_combout\) # ((\servo_inst|Add2~56_combout\) # (\servo_inst|LessThan2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~58_combout\,
	datab => \servo_inst|Add2~54_combout\,
	datac => \servo_inst|Add2~56_combout\,
	datad => \servo_inst|LessThan2~8_combout\,
	combout => \servo_inst|LessThan2~9_combout\);

-- Location: LCCOMB_X27_Y22_N30
\servo_inst|pulse_width~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~35_combout\ = (\servo_inst|Add2~14_combout\) # ((\servo_inst|Add2~60_combout\) # ((!\servo_inst|LessThan2~4_combout\ & !\servo_inst|LessThan2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~14_combout\,
	datab => \servo_inst|LessThan2~4_combout\,
	datac => \servo_inst|Add2~60_combout\,
	datad => \servo_inst|LessThan2~9_combout\,
	combout => \servo_inst|pulse_width~35_combout\);

-- Location: LCCOMB_X27_Y22_N8
\servo_inst|pulse_width~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~36_combout\ = (\servo_inst|dir_up~q\ & (((\servo_inst|pulse_width~35_combout\)))) # (!\servo_inst|dir_up~q\ & (\servo_inst|Add1~14_combout\ & ((\servo_inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add1~14_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|pulse_width~35_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~36_combout\);

-- Location: FF_X27_Y22_N9
\servo_inst|pulse_width[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~36_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(8));

-- Location: LCCOMB_X27_Y22_N12
\servo_inst|pulse_width~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~43_combout\ = (\servo_inst|Add2~6_combout\) # ((\servo_inst|Add2~60_combout\) # ((!\servo_inst|LessThan2~4_combout\ & !\servo_inst|LessThan2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~6_combout\,
	datab => \servo_inst|LessThan2~4_combout\,
	datac => \servo_inst|Add2~60_combout\,
	datad => \servo_inst|LessThan2~9_combout\,
	combout => \servo_inst|pulse_width~43_combout\);

-- Location: LCCOMB_X27_Y22_N16
\servo_inst|pulse_width~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~44_combout\ = (\servo_inst|dir_up~q\ & (((!\servo_inst|pulse_width~43_combout\)))) # (!\servo_inst|dir_up~q\ & (((!\servo_inst|LessThan1~9_combout\)) # (!\servo_inst|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add1~6_combout\,
	datab => \servo_inst|LessThan1~9_combout\,
	datac => \servo_inst|dir_up~q\,
	datad => \servo_inst|pulse_width~43_combout\,
	combout => \servo_inst|pulse_width~44_combout\);

-- Location: FF_X27_Y22_N17
\servo_inst|pulse_width[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~44_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(4));

-- Location: LCCOMB_X26_Y22_N0
\servo_inst|pulse_width~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~50_combout\ = (\servo_inst|pulse_width~49_combout\ & ((\servo_inst|dir_up~q\ & ((\servo_inst|LessThan2~10_combout\))) # (!\servo_inst|dir_up~q\ & (\servo_inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~49_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan1~9_combout\,
	datad => \servo_inst|LessThan2~10_combout\,
	combout => \servo_inst|pulse_width~50_combout\);

-- Location: FF_X26_Y22_N1
\servo_inst|pulse_width[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~50_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(1));

-- Location: LCCOMB_X26_Y22_N4
\servo_inst|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~2_combout\ = (\servo_inst|pulse_width\(2) & ((\servo_inst|Mux0~0_combout\ & (\servo_inst|Add2~1\ & VCC)) # (!\servo_inst|Mux0~0_combout\ & (!\servo_inst|Add2~1\)))) # (!\servo_inst|pulse_width\(2) & ((\servo_inst|Mux0~0_combout\ & 
-- (!\servo_inst|Add2~1\)) # (!\servo_inst|Mux0~0_combout\ & ((\servo_inst|Add2~1\) # (GND)))))
-- \servo_inst|Add2~3\ = CARRY((\servo_inst|pulse_width\(2) & (!\servo_inst|Mux0~0_combout\ & !\servo_inst|Add2~1\)) # (!\servo_inst|pulse_width\(2) & ((!\servo_inst|Add2~1\) # (!\servo_inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(2),
	datab => \servo_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \servo_inst|Add2~1\,
	combout => \servo_inst|Add2~2_combout\,
	cout => \servo_inst|Add2~3\);

-- Location: LCCOMB_X26_Y22_N6
\servo_inst|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~4_combout\ = ((\servo_inst|pulse_width\(3) $ (\SW[1]~input_o\ $ (!\servo_inst|Add2~3\)))) # (GND)
-- \servo_inst|Add2~5\ = CARRY((\servo_inst|pulse_width\(3) & (!\SW[1]~input_o\ & !\servo_inst|Add2~3\)) # (!\servo_inst|pulse_width\(3) & ((!\servo_inst|Add2~3\) # (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(3),
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \servo_inst|Add2~3\,
	combout => \servo_inst|Add2~4_combout\,
	cout => \servo_inst|Add2~5\);

-- Location: LCCOMB_X26_Y22_N8
\servo_inst|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~6_combout\ = (\SW[1]~input_o\ & ((\servo_inst|pulse_width\(4) & (!\servo_inst|Add2~5\)) # (!\servo_inst|pulse_width\(4) & (\servo_inst|Add2~5\ & VCC)))) # (!\SW[1]~input_o\ & ((\servo_inst|pulse_width\(4) & ((\servo_inst|Add2~5\) # 
-- (GND))) # (!\servo_inst|pulse_width\(4) & (!\servo_inst|Add2~5\))))
-- \servo_inst|Add2~7\ = CARRY((\SW[1]~input_o\ & (\servo_inst|pulse_width\(4) & !\servo_inst|Add2~5\)) # (!\SW[1]~input_o\ & ((\servo_inst|pulse_width\(4)) # (!\servo_inst|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \servo_inst|pulse_width\(4),
	datad => VCC,
	cin => \servo_inst|Add2~5\,
	combout => \servo_inst|Add2~6_combout\,
	cout => \servo_inst|Add2~7\);

-- Location: LCCOMB_X26_Y22_N10
\servo_inst|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~8_combout\ = ((\SW[1]~input_o\ $ (\servo_inst|pulse_width\(5) $ (\servo_inst|Add2~7\)))) # (GND)
-- \servo_inst|Add2~9\ = CARRY((\SW[1]~input_o\ & ((!\servo_inst|Add2~7\) # (!\servo_inst|pulse_width\(5)))) # (!\SW[1]~input_o\ & (!\servo_inst|pulse_width\(5) & !\servo_inst|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \servo_inst|pulse_width\(5),
	datad => VCC,
	cin => \servo_inst|Add2~7\,
	combout => \servo_inst|Add2~8_combout\,
	cout => \servo_inst|Add2~9\);

-- Location: LCCOMB_X27_Y22_N14
\servo_inst|pulse_width~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~42_combout\ = (!\servo_inst|pulse_width~41_combout\ & (((!\servo_inst|LessThan2~10_combout\) # (!\servo_inst|dir_up~q\)) # (!\servo_inst|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~41_combout\,
	datab => \servo_inst|Add2~8_combout\,
	datac => \servo_inst|dir_up~q\,
	datad => \servo_inst|LessThan2~10_combout\,
	combout => \servo_inst|pulse_width~42_combout\);

-- Location: FF_X27_Y22_N15
\servo_inst|pulse_width[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~42_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(5));

-- Location: LCCOMB_X26_Y22_N12
\servo_inst|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~10_combout\ = (\servo_inst|pulse_width\(6) & ((\SW[0]~input_o\ & (!\servo_inst|Add2~9\)) # (!\SW[0]~input_o\ & ((\servo_inst|Add2~9\) # (GND))))) # (!\servo_inst|pulse_width\(6) & ((\SW[0]~input_o\ & (\servo_inst|Add2~9\ & VCC)) # 
-- (!\SW[0]~input_o\ & (!\servo_inst|Add2~9\))))
-- \servo_inst|Add2~11\ = CARRY((\servo_inst|pulse_width\(6) & ((!\servo_inst|Add2~9\) # (!\SW[0]~input_o\))) # (!\servo_inst|pulse_width\(6) & (!\SW[0]~input_o\ & !\servo_inst|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(6),
	datab => \SW[0]~input_o\,
	datad => VCC,
	cin => \servo_inst|Add2~9\,
	combout => \servo_inst|Add2~10_combout\,
	cout => \servo_inst|Add2~11\);

-- Location: LCCOMB_X26_Y22_N14
\servo_inst|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~12_combout\ = ((\SW[0]~input_o\ $ (\servo_inst|pulse_width\(7) $ (\servo_inst|Add2~11\)))) # (GND)
-- \servo_inst|Add2~13\ = CARRY((\SW[0]~input_o\ & ((!\servo_inst|Add2~11\) # (!\servo_inst|pulse_width\(7)))) # (!\SW[0]~input_o\ & (!\servo_inst|pulse_width\(7) & !\servo_inst|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \servo_inst|pulse_width\(7),
	datad => VCC,
	cin => \servo_inst|Add2~11\,
	combout => \servo_inst|Add2~12_combout\,
	cout => \servo_inst|Add2~13\);

-- Location: LCCOMB_X26_Y22_N18
\servo_inst|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~16_combout\ = (\servo_inst|pulse_width\(9) & ((GND) # (!\servo_inst|Add2~15\))) # (!\servo_inst|pulse_width\(9) & (\servo_inst|Add2~15\ $ (GND)))
-- \servo_inst|Add2~17\ = CARRY((\servo_inst|pulse_width\(9)) # (!\servo_inst|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(9),
	datad => VCC,
	cin => \servo_inst|Add2~15\,
	combout => \servo_inst|Add2~16_combout\,
	cout => \servo_inst|Add2~17\);

-- Location: LCCOMB_X26_Y22_N20
\servo_inst|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~18_combout\ = (\servo_inst|pulse_width\(10) & (!\servo_inst|Add2~17\)) # (!\servo_inst|pulse_width\(10) & (\servo_inst|Add2~17\ & VCC))
-- \servo_inst|Add2~19\ = CARRY((\servo_inst|pulse_width\(10) & !\servo_inst|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(10),
	datad => VCC,
	cin => \servo_inst|Add2~17\,
	combout => \servo_inst|Add2~18_combout\,
	cout => \servo_inst|Add2~19\);

-- Location: LCCOMB_X26_Y22_N22
\servo_inst|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~20_combout\ = (\servo_inst|pulse_width\(11) & ((GND) # (!\servo_inst|Add2~19\))) # (!\servo_inst|pulse_width\(11) & (\servo_inst|Add2~19\ $ (GND)))
-- \servo_inst|Add2~21\ = CARRY((\servo_inst|pulse_width\(11)) # (!\servo_inst|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(11),
	datad => VCC,
	cin => \servo_inst|Add2~19\,
	combout => \servo_inst|Add2~20_combout\,
	cout => \servo_inst|Add2~21\);

-- Location: LCCOMB_X26_Y22_N24
\servo_inst|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~22_combout\ = (\servo_inst|pulse_width\(12) & (\servo_inst|Add2~21\ & VCC)) # (!\servo_inst|pulse_width\(12) & (!\servo_inst|Add2~21\))
-- \servo_inst|Add2~23\ = CARRY((!\servo_inst|pulse_width\(12) & !\servo_inst|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(12),
	datad => VCC,
	cin => \servo_inst|Add2~21\,
	combout => \servo_inst|Add2~22_combout\,
	cout => \servo_inst|Add2~23\);

-- Location: LCCOMB_X26_Y22_N26
\servo_inst|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~24_combout\ = (\servo_inst|pulse_width\(13) & (\servo_inst|Add2~23\ $ (GND))) # (!\servo_inst|pulse_width\(13) & ((GND) # (!\servo_inst|Add2~23\)))
-- \servo_inst|Add2~25\ = CARRY((!\servo_inst|Add2~23\) # (!\servo_inst|pulse_width\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(13),
	datad => VCC,
	cin => \servo_inst|Add2~23\,
	combout => \servo_inst|Add2~24_combout\,
	cout => \servo_inst|Add2~25\);

-- Location: LCCOMB_X26_Y22_N28
\servo_inst|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~26_combout\ = (\servo_inst|pulse_width\(14) & (\servo_inst|Add2~25\ & VCC)) # (!\servo_inst|pulse_width\(14) & (!\servo_inst|Add2~25\))
-- \servo_inst|Add2~27\ = CARRY((!\servo_inst|pulse_width\(14) & !\servo_inst|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(14),
	datad => VCC,
	cin => \servo_inst|Add2~25\,
	combout => \servo_inst|Add2~26_combout\,
	cout => \servo_inst|Add2~27\);

-- Location: LCCOMB_X26_Y22_N30
\servo_inst|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~28_combout\ = (\servo_inst|pulse_width\(15) & ((GND) # (!\servo_inst|Add2~27\))) # (!\servo_inst|pulse_width\(15) & (\servo_inst|Add2~27\ $ (GND)))
-- \servo_inst|Add2~29\ = CARRY((\servo_inst|pulse_width\(15)) # (!\servo_inst|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(15),
	datad => VCC,
	cin => \servo_inst|Add2~27\,
	combout => \servo_inst|Add2~28_combout\,
	cout => \servo_inst|Add2~29\);

-- Location: LCCOMB_X26_Y21_N0
\servo_inst|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~30_combout\ = (\servo_inst|pulse_width\(16) & (!\servo_inst|Add2~29\)) # (!\servo_inst|pulse_width\(16) & (\servo_inst|Add2~29\ & VCC))
-- \servo_inst|Add2~31\ = CARRY((\servo_inst|pulse_width\(16) & !\servo_inst|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(16),
	datad => VCC,
	cin => \servo_inst|Add2~29\,
	combout => \servo_inst|Add2~30_combout\,
	cout => \servo_inst|Add2~31\);

-- Location: LCCOMB_X28_Y21_N30
\servo_inst|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~28_combout\ = (\servo_inst|pulse_width\(15) & (\servo_inst|Add1~27\ $ (GND))) # (!\servo_inst|pulse_width\(15) & (!\servo_inst|Add1~27\ & VCC))
-- \servo_inst|Add1~29\ = CARRY((\servo_inst|pulse_width\(15) & !\servo_inst|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(15),
	datad => VCC,
	cin => \servo_inst|Add1~27\,
	combout => \servo_inst|Add1~28_combout\,
	cout => \servo_inst|Add1~29\);

-- Location: LCCOMB_X28_Y20_N0
\servo_inst|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~30_combout\ = (\servo_inst|pulse_width\(16) & ((\servo_inst|Add1~29\) # (GND))) # (!\servo_inst|pulse_width\(16) & (!\servo_inst|Add1~29\))
-- \servo_inst|Add1~31\ = CARRY((\servo_inst|pulse_width\(16)) # (!\servo_inst|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(16),
	datad => VCC,
	cin => \servo_inst|Add1~29\,
	combout => \servo_inst|Add1~30_combout\,
	cout => \servo_inst|Add1~31\);

-- Location: LCCOMB_X28_Y22_N26
\servo_inst|pulse_width~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~25_combout\ = (!\servo_inst|dir_up~q\ & ((\servo_inst|Add1~30_combout\) # (!\servo_inst|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|Add1~30_combout\,
	datac => \servo_inst|dir_up~q\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~25_combout\);

-- Location: LCCOMB_X28_Y22_N18
\servo_inst|pulse_width~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~26_combout\ = (!\servo_inst|pulse_width~25_combout\ & (((!\servo_inst|LessThan2~10_combout\) # (!\servo_inst|Add2~30_combout\)) # (!\servo_inst|dir_up~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datab => \servo_inst|Add2~30_combout\,
	datac => \servo_inst|pulse_width~25_combout\,
	datad => \servo_inst|LessThan2~10_combout\,
	combout => \servo_inst|pulse_width~26_combout\);

-- Location: FF_X28_Y22_N19
\servo_inst|pulse_width[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~26_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(16));

-- Location: LCCOMB_X26_Y21_N24
\servo_inst|Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~54_combout\ = (\servo_inst|pulse_width\(28) & (\servo_inst|Add2~53\ & VCC)) # (!\servo_inst|pulse_width\(28) & (!\servo_inst|Add2~53\))
-- \servo_inst|Add2~55\ = CARRY((!\servo_inst|pulse_width\(28) & !\servo_inst|Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(28),
	datad => VCC,
	cin => \servo_inst|Add2~53\,
	combout => \servo_inst|Add2~54_combout\,
	cout => \servo_inst|Add2~55\);

-- Location: LCCOMB_X24_Y18_N0
\servo_inst|pulse_width~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~18_combout\ = (\servo_inst|Add1~54_combout\ & ((\servo_inst|pulse_width~17_combout\) # ((\servo_inst|pulse_width~16_combout\ & \servo_inst|Add2~54_combout\)))) # (!\servo_inst|Add1~54_combout\ & (\servo_inst|pulse_width~16_combout\ 
-- & ((\servo_inst|Add2~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add1~54_combout\,
	datab => \servo_inst|pulse_width~16_combout\,
	datac => \servo_inst|pulse_width~17_combout\,
	datad => \servo_inst|Add2~54_combout\,
	combout => \servo_inst|pulse_width~18_combout\);

-- Location: FF_X24_Y18_N1
\servo_inst|pulse_width[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~18_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(28));

-- Location: LCCOMB_X26_Y21_N28
\servo_inst|Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~58_combout\ = (\servo_inst|pulse_width\(30) & (\servo_inst|Add2~57\ & VCC)) # (!\servo_inst|pulse_width\(30) & (!\servo_inst|Add2~57\))
-- \servo_inst|Add2~59\ = CARRY((!\servo_inst|pulse_width\(30) & !\servo_inst|Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(30),
	datad => VCC,
	cin => \servo_inst|Add2~57\,
	combout => \servo_inst|Add2~58_combout\,
	cout => \servo_inst|Add2~59\);

-- Location: LCCOMB_X24_Y18_N12
\servo_inst|pulse_width~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~20_combout\ = (\servo_inst|Add1~58_combout\ & ((\servo_inst|pulse_width~17_combout\) # ((\servo_inst|Add2~58_combout\ & \servo_inst|pulse_width~16_combout\)))) # (!\servo_inst|Add1~58_combout\ & (\servo_inst|Add2~58_combout\ & 
-- ((\servo_inst|pulse_width~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add1~58_combout\,
	datab => \servo_inst|Add2~58_combout\,
	datac => \servo_inst|pulse_width~17_combout\,
	datad => \servo_inst|pulse_width~16_combout\,
	combout => \servo_inst|pulse_width~20_combout\);

-- Location: FF_X24_Y18_N13
\servo_inst|pulse_width[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~20_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(30));

-- Location: LCCOMB_X26_Y21_N30
\servo_inst|Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add2~60_combout\ = \servo_inst|pulse_width\(31) $ (\servo_inst|Add2~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(31),
	cin => \servo_inst|Add2~59\,
	combout => \servo_inst|Add2~60_combout\);

-- Location: LCCOMB_X27_Y22_N0
\servo_inst|pulse_width~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~39_combout\ = (\servo_inst|Add2~10_combout\) # ((\servo_inst|Add2~60_combout\) # ((!\servo_inst|LessThan2~4_combout\ & !\servo_inst|LessThan2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~10_combout\,
	datab => \servo_inst|LessThan2~4_combout\,
	datac => \servo_inst|Add2~60_combout\,
	datad => \servo_inst|LessThan2~9_combout\,
	combout => \servo_inst|pulse_width~39_combout\);

-- Location: LCCOMB_X27_Y22_N20
\servo_inst|pulse_width~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~40_combout\ = (\servo_inst|dir_up~q\ & (((!\servo_inst|pulse_width~39_combout\)))) # (!\servo_inst|dir_up~q\ & (((!\servo_inst|Add1~10_combout\)) # (!\servo_inst|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datab => \servo_inst|LessThan1~9_combout\,
	datac => \servo_inst|Add1~10_combout\,
	datad => \servo_inst|pulse_width~39_combout\,
	combout => \servo_inst|pulse_width~40_combout\);

-- Location: FF_X27_Y22_N21
\servo_inst|pulse_width[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~40_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(6));

-- Location: LCCOMB_X28_Y21_N14
\servo_inst|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~12_combout\ = ((\SW[0]~input_o\ $ (\servo_inst|pulse_width\(7) $ (!\servo_inst|Add1~11\)))) # (GND)
-- \servo_inst|Add1~13\ = CARRY((\SW[0]~input_o\ & (!\servo_inst|pulse_width\(7) & !\servo_inst|Add1~11\)) # (!\SW[0]~input_o\ & ((!\servo_inst|Add1~11\) # (!\servo_inst|pulse_width\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \servo_inst|pulse_width\(7),
	datad => VCC,
	cin => \servo_inst|Add1~11\,
	combout => \servo_inst|Add1~12_combout\,
	cout => \servo_inst|Add1~13\);

-- Location: LCCOMB_X28_Y22_N14
\servo_inst|pulse_width~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~37_combout\ = (!\servo_inst|dir_up~q\ & ((\servo_inst|Add1~12_combout\) # (!\servo_inst|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add1~12_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~37_combout\);

-- Location: LCCOMB_X27_Y22_N18
\servo_inst|pulse_width~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~38_combout\ = (!\servo_inst|pulse_width~37_combout\ & (((!\servo_inst|LessThan2~10_combout\) # (!\servo_inst|dir_up~q\)) # (!\servo_inst|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~12_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|pulse_width~37_combout\,
	datad => \servo_inst|LessThan2~10_combout\,
	combout => \servo_inst|pulse_width~38_combout\);

-- Location: FF_X27_Y22_N19
\servo_inst|pulse_width[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~38_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(7));

-- Location: LCCOMB_X28_Y21_N18
\servo_inst|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~16_combout\ = (\servo_inst|pulse_width\(9) & (\servo_inst|Add1~15\ $ (GND))) # (!\servo_inst|pulse_width\(9) & (!\servo_inst|Add1~15\ & VCC))
-- \servo_inst|Add1~17\ = CARRY((\servo_inst|pulse_width\(9) & !\servo_inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(9),
	datad => VCC,
	cin => \servo_inst|Add1~15\,
	combout => \servo_inst|Add1~16_combout\,
	cout => \servo_inst|Add1~17\);

-- Location: LCCOMB_X28_Y21_N20
\servo_inst|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~18_combout\ = (\servo_inst|pulse_width\(10) & ((\servo_inst|Add1~17\) # (GND))) # (!\servo_inst|pulse_width\(10) & (!\servo_inst|Add1~17\))
-- \servo_inst|Add1~19\ = CARRY((\servo_inst|pulse_width\(10)) # (!\servo_inst|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(10),
	datad => VCC,
	cin => \servo_inst|Add1~17\,
	combout => \servo_inst|Add1~18_combout\,
	cout => \servo_inst|Add1~19\);

-- Location: LCCOMB_X28_Y21_N22
\servo_inst|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~20_combout\ = (\servo_inst|pulse_width\(11) & (\servo_inst|Add1~19\ $ (GND))) # (!\servo_inst|pulse_width\(11) & (!\servo_inst|Add1~19\ & VCC))
-- \servo_inst|Add1~21\ = CARRY((\servo_inst|pulse_width\(11) & !\servo_inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(11),
	datad => VCC,
	cin => \servo_inst|Add1~19\,
	combout => \servo_inst|Add1~20_combout\,
	cout => \servo_inst|Add1~21\);

-- Location: LCCOMB_X28_Y21_N24
\servo_inst|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~22_combout\ = (\servo_inst|pulse_width\(12) & (!\servo_inst|Add1~21\)) # (!\servo_inst|pulse_width\(12) & ((\servo_inst|Add1~21\) # (GND)))
-- \servo_inst|Add1~23\ = CARRY((!\servo_inst|Add1~21\) # (!\servo_inst|pulse_width\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(12),
	datad => VCC,
	cin => \servo_inst|Add1~21\,
	combout => \servo_inst|Add1~22_combout\,
	cout => \servo_inst|Add1~23\);

-- Location: LCCOMB_X28_Y21_N26
\servo_inst|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~24_combout\ = (\servo_inst|pulse_width\(13) & (!\servo_inst|Add1~23\ & VCC)) # (!\servo_inst|pulse_width\(13) & (\servo_inst|Add1~23\ $ (GND)))
-- \servo_inst|Add1~25\ = CARRY((!\servo_inst|pulse_width\(13) & !\servo_inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(13),
	datad => VCC,
	cin => \servo_inst|Add1~23\,
	combout => \servo_inst|Add1~24_combout\,
	cout => \servo_inst|Add1~25\);

-- Location: LCCOMB_X28_Y21_N28
\servo_inst|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~26_combout\ = (\servo_inst|pulse_width\(14) & (!\servo_inst|Add1~25\)) # (!\servo_inst|pulse_width\(14) & ((\servo_inst|Add1~25\) # (GND)))
-- \servo_inst|Add1~27\ = CARRY((!\servo_inst|Add1~25\) # (!\servo_inst|pulse_width\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(14),
	datad => VCC,
	cin => \servo_inst|Add1~25\,
	combout => \servo_inst|Add1~26_combout\,
	cout => \servo_inst|Add1~27\);

-- Location: LCCOMB_X27_Y22_N6
\servo_inst|pulse_width~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~53_combout\ = (\servo_inst|Add2~26_combout\) # ((\servo_inst|Add2~60_combout\) # ((!\servo_inst|LessThan2~4_combout\ & !\servo_inst|LessThan2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|LessThan2~4_combout\,
	datab => \servo_inst|Add2~26_combout\,
	datac => \servo_inst|Add2~60_combout\,
	datad => \servo_inst|LessThan2~9_combout\,
	combout => \servo_inst|pulse_width~53_combout\);

-- Location: LCCOMB_X27_Y22_N2
\servo_inst|pulse_width~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~54_combout\ = (\servo_inst|dir_up~q\ & (((\servo_inst|pulse_width~53_combout\)))) # (!\servo_inst|dir_up~q\ & (\servo_inst|LessThan1~9_combout\ & (\servo_inst|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datab => \servo_inst|LessThan1~9_combout\,
	datac => \servo_inst|Add1~26_combout\,
	datad => \servo_inst|pulse_width~53_combout\,
	combout => \servo_inst|pulse_width~54_combout\);

-- Location: FF_X27_Y22_N3
\servo_inst|pulse_width[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~54_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(14));

-- Location: LCCOMB_X29_Y22_N14
\servo_inst|pulse_width~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~55_combout\ = (\servo_inst|dir_up~q\ & (\servo_inst|Add2~28_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~28_combout\,
	datac => \servo_inst|Add1~28_combout\,
	datad => \servo_inst|dir_up~q\,
	combout => \servo_inst|pulse_width~55_combout\);

-- Location: LCCOMB_X28_Y22_N30
\servo_inst|pulse_width~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~56_combout\ = (\servo_inst|pulse_width~55_combout\) # ((\servo_inst|dir_up~q\ & ((!\servo_inst|LessThan2~10_combout\))) # (!\servo_inst|dir_up~q\ & (!\servo_inst|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datab => \servo_inst|LessThan1~9_combout\,
	datac => \servo_inst|pulse_width~55_combout\,
	datad => \servo_inst|LessThan2~10_combout\,
	combout => \servo_inst|pulse_width~56_combout\);

-- Location: FF_X28_Y22_N31
\servo_inst|pulse_width[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~56_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(15));

-- Location: LCCOMB_X27_Y22_N4
\servo_inst|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan2~0_combout\ = (\servo_inst|Add2~18_combout\) # ((\servo_inst|Add2~20_combout\) # ((\servo_inst|Add2~24_combout\) # (\servo_inst|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~18_combout\,
	datab => \servo_inst|Add2~20_combout\,
	datac => \servo_inst|Add2~24_combout\,
	datad => \servo_inst|Add2~22_combout\,
	combout => \servo_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X27_Y22_N22
\servo_inst|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan2~1_combout\ = (\servo_inst|Add2~6_combout\ & ((\servo_inst|Add2~0_combout\) # ((\servo_inst|Add2~4_combout\) # (\servo_inst|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~0_combout\,
	datab => \servo_inst|Add2~4_combout\,
	datac => \servo_inst|Add2~2_combout\,
	datad => \servo_inst|Add2~6_combout\,
	combout => \servo_inst|LessThan2~1_combout\);

-- Location: LCCOMB_X27_Y22_N24
\servo_inst|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan2~2_combout\ = (\servo_inst|Add2~12_combout\) # ((\servo_inst|Add2~10_combout\ & ((\servo_inst|Add2~8_combout\) # (\servo_inst|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~8_combout\,
	datab => \servo_inst|Add2~10_combout\,
	datac => \servo_inst|LessThan2~1_combout\,
	datad => \servo_inst|Add2~12_combout\,
	combout => \servo_inst|LessThan2~2_combout\);

-- Location: LCCOMB_X27_Y22_N26
\servo_inst|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan2~3_combout\ = (\servo_inst|LessThan2~0_combout\) # ((\servo_inst|Add2~14_combout\ & (\servo_inst|Add2~16_combout\ & \servo_inst|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~14_combout\,
	datab => \servo_inst|Add2~16_combout\,
	datac => \servo_inst|LessThan2~0_combout\,
	datad => \servo_inst|LessThan2~2_combout\,
	combout => \servo_inst|LessThan2~3_combout\);

-- Location: LCCOMB_X27_Y22_N28
\servo_inst|LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan2~4_combout\ = (\servo_inst|Add2~28_combout\ & (\servo_inst|LessThan2~3_combout\ & \servo_inst|Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|Add2~28_combout\,
	datac => \servo_inst|LessThan2~3_combout\,
	datad => \servo_inst|Add2~26_combout\,
	combout => \servo_inst|LessThan2~4_combout\);

-- Location: LCCOMB_X27_Y21_N2
\servo_inst|LessThan2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan2~10_combout\ = (!\servo_inst|Add2~60_combout\ & ((\servo_inst|LessThan2~4_combout\) # (\servo_inst|LessThan2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~60_combout\,
	datac => \servo_inst|LessThan2~4_combout\,
	datad => \servo_inst|LessThan2~9_combout\,
	combout => \servo_inst|LessThan2~10_combout\);

-- Location: LCCOMB_X27_Y23_N20
\servo_inst|pulse_width~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~11_combout\ = (\servo_inst|pulse_width~10_combout\ & ((\servo_inst|dir_up~q\ & (\servo_inst|LessThan2~10_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~10_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan2~10_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~11_combout\);

-- Location: FF_X27_Y23_N21
\servo_inst|pulse_width[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~11_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(25));

-- Location: LCCOMB_X27_Y23_N26
\servo_inst|pulse_width~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~9_combout\ = (\servo_inst|pulse_width~8_combout\ & ((\servo_inst|dir_up~q\ & (\servo_inst|LessThan2~10_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~8_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan2~10_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~9_combout\);

-- Location: FF_X27_Y23_N27
\servo_inst|pulse_width[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~9_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(24));

-- Location: LCCOMB_X26_Y20_N16
\servo_inst|pulse_width~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~3_combout\ = (\servo_inst|pulse_width~2_combout\ & ((\servo_inst|dir_up~q\ & (\servo_inst|LessThan2~10_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~2_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan2~10_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~3_combout\);

-- Location: FF_X26_Y20_N17
\servo_inst|pulse_width[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~3_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(21));

-- Location: LCCOMB_X26_Y20_N12
\servo_inst|pulse_width~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~22_combout\ = (\servo_inst|pulse_width~21_combout\ & ((\servo_inst|dir_up~q\ & (\servo_inst|LessThan2~10_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~21_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan2~10_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~22_combout\);

-- Location: FF_X26_Y20_N13
\servo_inst|pulse_width[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~22_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(19));

-- Location: LCCOMB_X28_Y20_N8
\servo_inst|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~38_combout\ = (\servo_inst|pulse_width\(20) & (!\servo_inst|Add1~37\)) # (!\servo_inst|pulse_width\(20) & ((\servo_inst|Add1~37\) # (GND)))
-- \servo_inst|Add1~39\ = CARRY((!\servo_inst|Add1~37\) # (!\servo_inst|pulse_width\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(20),
	datad => VCC,
	cin => \servo_inst|Add1~37\,
	combout => \servo_inst|Add1~38_combout\,
	cout => \servo_inst|Add1~39\);

-- Location: LCCOMB_X28_Y22_N8
\servo_inst|pulse_width~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~0_combout\ = (\servo_inst|dir_up~q\ & (\servo_inst|Add2~38_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add2~38_combout\,
	datad => \servo_inst|Add1~38_combout\,
	combout => \servo_inst|pulse_width~0_combout\);

-- Location: LCCOMB_X28_Y22_N24
\servo_inst|pulse_width~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~1_combout\ = (\servo_inst|pulse_width~0_combout\ & ((\servo_inst|dir_up~q\ & ((\servo_inst|LessThan2~10_combout\))) # (!\servo_inst|dir_up~q\ & (\servo_inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datab => \servo_inst|LessThan1~9_combout\,
	datac => \servo_inst|pulse_width~0_combout\,
	datad => \servo_inst|LessThan2~10_combout\,
	combout => \servo_inst|pulse_width~1_combout\);

-- Location: FF_X28_Y22_N25
\servo_inst|pulse_width[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~1_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(20));

-- Location: LCCOMB_X28_Y20_N18
\servo_inst|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~48_combout\ = (\servo_inst|pulse_width\(25) & (\servo_inst|Add1~47\ $ (GND))) # (!\servo_inst|pulse_width\(25) & (!\servo_inst|Add1~47\ & VCC))
-- \servo_inst|Add1~49\ = CARRY((\servo_inst|pulse_width\(25) & !\servo_inst|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(25),
	datad => VCC,
	cin => \servo_inst|Add1~47\,
	combout => \servo_inst|Add1~48_combout\,
	cout => \servo_inst|Add1~49\);

-- Location: LCCOMB_X28_Y20_N20
\servo_inst|Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~50_combout\ = (\servo_inst|pulse_width\(26) & (!\servo_inst|Add1~49\)) # (!\servo_inst|pulse_width\(26) & ((\servo_inst|Add1~49\) # (GND)))
-- \servo_inst|Add1~51\ = CARRY((!\servo_inst|Add1~49\) # (!\servo_inst|pulse_width\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(26),
	datad => VCC,
	cin => \servo_inst|Add1~49\,
	combout => \servo_inst|Add1~50_combout\,
	cout => \servo_inst|Add1~51\);

-- Location: LCCOMB_X28_Y20_N24
\servo_inst|Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add1~54_combout\ = (\servo_inst|pulse_width\(28) & (!\servo_inst|Add1~53\)) # (!\servo_inst|pulse_width\(28) & ((\servo_inst|Add1~53\) # (GND)))
-- \servo_inst|Add1~55\ = CARRY((!\servo_inst|Add1~53\) # (!\servo_inst|pulse_width\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(28),
	datad => VCC,
	cin => \servo_inst|Add1~53\,
	combout => \servo_inst|Add1~54_combout\,
	cout => \servo_inst|Add1~55\);

-- Location: LCCOMB_X28_Y22_N20
\servo_inst|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan1~7_combout\ = (!\servo_inst|Add1~52_combout\ & (!\servo_inst|Add1~48_combout\ & (!\servo_inst|Add1~50_combout\ & !\servo_inst|Add1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add1~52_combout\,
	datab => \servo_inst|Add1~48_combout\,
	datac => \servo_inst|Add1~50_combout\,
	datad => \servo_inst|Add1~54_combout\,
	combout => \servo_inst|LessThan1~7_combout\);

-- Location: LCCOMB_X28_Y22_N22
\servo_inst|LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan1~8_combout\ = (!\servo_inst|Add1~56_combout\ & (!\servo_inst|Add1~58_combout\ & \servo_inst|LessThan1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|Add1~56_combout\,
	datac => \servo_inst|Add1~58_combout\,
	datad => \servo_inst|LessThan1~7_combout\,
	combout => \servo_inst|LessThan1~8_combout\);

-- Location: LCCOMB_X24_Y21_N16
\servo_inst|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan1~2_combout\ = (!\servo_inst|Add1~26_combout\ & (!\servo_inst|Add1~24_combout\ & (!\servo_inst|Add1~22_combout\ & !\servo_inst|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add1~26_combout\,
	datab => \servo_inst|Add1~24_combout\,
	datac => \servo_inst|Add1~22_combout\,
	datad => \servo_inst|Add1~20_combout\,
	combout => \servo_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X21_Y17_N0
\servo_inst|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan1~0_combout\ = ((!\servo_inst|Add1~8_combout\ & !\servo_inst|Add1~10_combout\)) # (!\servo_inst|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|Add1~8_combout\,
	datac => \servo_inst|Add1~10_combout\,
	datad => \servo_inst|Add1~12_combout\,
	combout => \servo_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X28_Y22_N2
\servo_inst|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan1~1_combout\ = (((!\servo_inst|Add1~14_combout\ & \servo_inst|LessThan1~0_combout\)) # (!\servo_inst|Add1~18_combout\)) # (!\servo_inst|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add1~14_combout\,
	datab => \servo_inst|Add1~16_combout\,
	datac => \servo_inst|Add1~18_combout\,
	datad => \servo_inst|LessThan1~0_combout\,
	combout => \servo_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X28_Y22_N28
\servo_inst|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan1~3_combout\ = (((\servo_inst|LessThan1~2_combout\ & \servo_inst|LessThan1~1_combout\)) # (!\servo_inst|Add1~30_combout\)) # (!\servo_inst|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add1~28_combout\,
	datab => \servo_inst|Add1~30_combout\,
	datac => \servo_inst|LessThan1~2_combout\,
	datad => \servo_inst|LessThan1~1_combout\,
	combout => \servo_inst|LessThan1~3_combout\);

-- Location: LCCOMB_X28_Y22_N16
\servo_inst|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan1~9_combout\ = (\servo_inst|Add1~60_combout\) # ((\servo_inst|LessThan1~6_combout\ & (\servo_inst|LessThan1~8_combout\ & \servo_inst|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|LessThan1~6_combout\,
	datab => \servo_inst|Add1~60_combout\,
	datac => \servo_inst|LessThan1~8_combout\,
	datad => \servo_inst|LessThan1~3_combout\,
	combout => \servo_inst|LessThan1~9_combout\);

-- Location: LCCOMB_X27_Y23_N0
\servo_inst|dir_up~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|dir_up~0_combout\ = (\servo_inst|dir_up~q\ & ((\servo_inst|LessThan2~10_combout\))) # (!\servo_inst|dir_up~q\ & (!\servo_inst|LessThan1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|LessThan1~9_combout\,
	datac => \servo_inst|dir_up~q\,
	datad => \servo_inst|LessThan2~10_combout\,
	combout => \servo_inst|dir_up~0_combout\);

-- Location: FF_X27_Y23_N1
\servo_inst|dir_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|dir_up~0_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|dir_up~q\);

-- Location: LCCOMB_X27_Y23_N6
\servo_inst|pulse_width~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~13_combout\ = (\servo_inst|pulse_width~12_combout\ & ((\servo_inst|dir_up~q\ & (\servo_inst|LessThan2~10_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~12_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan2~10_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~13_combout\);

-- Location: FF_X27_Y23_N7
\servo_inst|pulse_width[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~13_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(26));

-- Location: LCCOMB_X24_Y18_N2
\servo_inst|pulse_width~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~19_combout\ = (\servo_inst|Add2~56_combout\ & ((\servo_inst|pulse_width~16_combout\) # ((\servo_inst|Add1~56_combout\ & \servo_inst|pulse_width~17_combout\)))) # (!\servo_inst|Add2~56_combout\ & (\servo_inst|Add1~56_combout\ & 
-- (\servo_inst|pulse_width~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|Add2~56_combout\,
	datab => \servo_inst|Add1~56_combout\,
	datac => \servo_inst|pulse_width~17_combout\,
	datad => \servo_inst|pulse_width~16_combout\,
	combout => \servo_inst|pulse_width~19_combout\);

-- Location: FF_X24_Y18_N3
\servo_inst|pulse_width[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~19_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(29));

-- Location: LCCOMB_X27_Y23_N18
\servo_inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~3_combout\ = (\servo_inst|pulse_width\(26)) # ((\servo_inst|pulse_width\(27)) # ((\servo_inst|pulse_width\(24)) # (\servo_inst|pulse_width\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(26),
	datab => \servo_inst|pulse_width\(27),
	datac => \servo_inst|pulse_width\(24),
	datad => \servo_inst|pulse_width\(25),
	combout => \servo_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y18_N30
\servo_inst|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~4_combout\ = (\servo_inst|pulse_width\(30)) # ((\servo_inst|pulse_width\(29)) # ((\servo_inst|pulse_width\(28)) # (\servo_inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(30),
	datab => \servo_inst|pulse_width\(29),
	datac => \servo_inst|pulse_width\(28),
	datad => \servo_inst|LessThan0~3_combout\,
	combout => \servo_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X24_Y21_N8
\servo_inst|pulse_width~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~58_combout\ = ((\servo_inst|dir_up~q\ & ((!\servo_inst|LessThan2~10_combout\))) # (!\servo_inst|dir_up~q\ & (!\servo_inst|LessThan1~9_combout\))) # (!\servo_inst|pulse_width~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~57_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan1~9_combout\,
	datad => \servo_inst|LessThan2~10_combout\,
	combout => \servo_inst|pulse_width~58_combout\);

-- Location: FF_X24_Y21_N9
\servo_inst|pulse_width[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~58_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(13));

-- Location: LCCOMB_X24_Y21_N2
\servo_inst|LessThan0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~23_combout\ = (\servo_inst|period_cnt\(14) & ((\servo_inst|period_cnt\(13)) # ((\servo_inst|pulse_width\(13)) # (!\servo_inst|pulse_width\(14))))) # (!\servo_inst|period_cnt\(14) & (!\servo_inst|pulse_width\(14) & 
-- ((\servo_inst|period_cnt\(13)) # (\servo_inst|pulse_width\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(13),
	datab => \servo_inst|period_cnt\(14),
	datac => \servo_inst|pulse_width\(13),
	datad => \servo_inst|pulse_width\(14),
	combout => \servo_inst|LessThan0~23_combout\);

-- Location: LCCOMB_X27_Y20_N10
\servo_inst|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~30_combout\ = (\servo_inst|period_cnt\(15) & (!\servo_inst|Add0~29\)) # (!\servo_inst|period_cnt\(15) & ((\servo_inst|Add0~29\) # (GND)))
-- \servo_inst|Add0~31\ = CARRY((!\servo_inst|Add0~29\) # (!\servo_inst|period_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(15),
	datad => VCC,
	cin => \servo_inst|Add0~29\,
	combout => \servo_inst|Add0~30_combout\,
	cout => \servo_inst|Add0~31\);

-- Location: FF_X27_Y20_N11
\servo_inst|period_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(15));

-- Location: LCCOMB_X24_Y21_N12
\servo_inst|LessThan0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~24_combout\ = (\servo_inst|LessThan0~23_combout\ & (\servo_inst|pulse_width\(15) & !\servo_inst|period_cnt\(15))) # (!\servo_inst|LessThan0~23_combout\ & ((\servo_inst|pulse_width\(15)) # (!\servo_inst|period_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|LessThan0~23_combout\,
	datac => \servo_inst|pulse_width\(15),
	datad => \servo_inst|period_cnt\(15),
	combout => \servo_inst|LessThan0~24_combout\);

-- Location: LCCOMB_X27_Y20_N12
\servo_inst|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~32_combout\ = (\servo_inst|period_cnt\(16) & (\servo_inst|Add0~31\ $ (GND))) # (!\servo_inst|period_cnt\(16) & (!\servo_inst|Add0~31\ & VCC))
-- \servo_inst|Add0~33\ = CARRY((\servo_inst|period_cnt\(16) & !\servo_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(16),
	datad => VCC,
	cin => \servo_inst|Add0~31\,
	combout => \servo_inst|Add0~32_combout\,
	cout => \servo_inst|Add0~33\);

-- Location: LCCOMB_X27_Y20_N24
\servo_inst|period_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|period_cnt~2_combout\ = (!\servo_inst|Equal0~6_combout\ & \servo_inst|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo_inst|Equal0~6_combout\,
	datad => \servo_inst|Add0~32_combout\,
	combout => \servo_inst|period_cnt~2_combout\);

-- Location: FF_X27_Y20_N25
\servo_inst|period_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|period_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(16));

-- Location: LCCOMB_X26_Y20_N24
\servo_inst|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~9_combout\ = \servo_inst|pulse_width\(16) $ (!\servo_inst|period_cnt\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|pulse_width\(16),
	datad => \servo_inst|period_cnt\(16),
	combout => \servo_inst|LessThan0~9_combout\);

-- Location: LCCOMB_X27_Y20_N14
\servo_inst|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~34_combout\ = (\servo_inst|period_cnt\(17) & (!\servo_inst|Add0~33\)) # (!\servo_inst|period_cnt\(17) & ((\servo_inst|Add0~33\) # (GND)))
-- \servo_inst|Add0~35\ = CARRY((!\servo_inst|Add0~33\) # (!\servo_inst|period_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(17),
	datad => VCC,
	cin => \servo_inst|Add0~33\,
	combout => \servo_inst|Add0~34_combout\,
	cout => \servo_inst|Add0~35\);

-- Location: LCCOMB_X27_Y20_N26
\servo_inst|period_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|period_cnt~3_combout\ = (!\servo_inst|Equal0~6_combout\ & \servo_inst|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|Equal0~6_combout\,
	datac => \servo_inst|Add0~34_combout\,
	combout => \servo_inst|period_cnt~3_combout\);

-- Location: FF_X27_Y20_N27
\servo_inst|period_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|period_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(17));

-- Location: LCCOMB_X24_Y21_N24
\servo_inst|LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~10_combout\ = (\servo_inst|LessThan0~8_combout\ & (!\servo_inst|LessThan0~9_combout\ & (\servo_inst|pulse_width\(17) $ (!\servo_inst|period_cnt\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|LessThan0~8_combout\,
	datab => \servo_inst|LessThan0~9_combout\,
	datac => \servo_inst|pulse_width\(17),
	datad => \servo_inst|period_cnt\(17),
	combout => \servo_inst|LessThan0~10_combout\);

-- Location: LCCOMB_X28_Y22_N4
\servo_inst|pulse_width~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~34_combout\ = (!\servo_inst|pulse_width~33_combout\ & (((!\servo_inst|LessThan2~10_combout\) # (!\servo_inst|dir_up~q\)) # (!\servo_inst|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~33_combout\,
	datab => \servo_inst|Add2~18_combout\,
	datac => \servo_inst|dir_up~q\,
	datad => \servo_inst|LessThan2~10_combout\,
	combout => \servo_inst|pulse_width~34_combout\);

-- Location: FF_X28_Y22_N5
\servo_inst|pulse_width[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~34_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(10));

-- Location: FF_X27_Y21_N27
\servo_inst|period_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(7));

-- Location: LCCOMB_X24_Y21_N20
\servo_inst|pulse_width~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~45_combout\ = (\servo_inst|dir_up~q\ & (\servo_inst|Add2~4_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datac => \servo_inst|Add2~4_combout\,
	datad => \servo_inst|Add1~4_combout\,
	combout => \servo_inst|pulse_width~45_combout\);

-- Location: LCCOMB_X24_Y21_N18
\servo_inst|pulse_width~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~46_combout\ = ((\servo_inst|dir_up~q\ & ((!\servo_inst|LessThan2~10_combout\))) # (!\servo_inst|dir_up~q\ & (!\servo_inst|LessThan1~9_combout\))) # (!\servo_inst|pulse_width~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|dir_up~q\,
	datab => \servo_inst|pulse_width~45_combout\,
	datac => \servo_inst|LessThan1~9_combout\,
	datad => \servo_inst|LessThan2~10_combout\,
	combout => \servo_inst|pulse_width~46_combout\);

-- Location: FF_X24_Y21_N19
\servo_inst|pulse_width[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~46_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(3));

-- Location: LCCOMB_X27_Y21_N10
\servo_inst|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~11_combout\ = (\servo_inst|pulse_width\(2) & (((!\servo_inst|period_cnt\(1) & \servo_inst|pulse_width\(1))) # (!\servo_inst|period_cnt\(2)))) # (!\servo_inst|pulse_width\(2) & (!\servo_inst|period_cnt\(2) & 
-- (!\servo_inst|period_cnt\(1) & \servo_inst|pulse_width\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(2),
	datab => \servo_inst|period_cnt\(2),
	datac => \servo_inst|period_cnt\(1),
	datad => \servo_inst|pulse_width\(1),
	combout => \servo_inst|LessThan0~11_combout\);

-- Location: LCCOMB_X24_Y19_N18
\servo_inst|LessThan0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~12_combout\ = (\servo_inst|period_cnt\(3) & ((\servo_inst|pulse_width\(3)) # (!\servo_inst|LessThan0~11_combout\))) # (!\servo_inst|period_cnt\(3) & (\servo_inst|pulse_width\(3) & !\servo_inst|LessThan0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(3),
	datac => \servo_inst|pulse_width\(3),
	datad => \servo_inst|LessThan0~11_combout\,
	combout => \servo_inst|LessThan0~12_combout\);

-- Location: LCCOMB_X24_Y19_N4
\servo_inst|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~13_combout\ = (\servo_inst|period_cnt\(4) & ((\servo_inst|pulse_width\(4)) # (\servo_inst|LessThan0~12_combout\))) # (!\servo_inst|period_cnt\(4) & (\servo_inst|pulse_width\(4) & \servo_inst|LessThan0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(4),
	datac => \servo_inst|pulse_width\(4),
	datad => \servo_inst|LessThan0~12_combout\,
	combout => \servo_inst|LessThan0~13_combout\);

-- Location: LCCOMB_X24_Y19_N12
\servo_inst|LessThan0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~25_combout\ = (\servo_inst|period_cnt\(5) & ((\servo_inst|LessThan0~13_combout\) # (\servo_inst|pulse_width\(5)))) # (!\servo_inst|period_cnt\(5) & (\servo_inst|LessThan0~13_combout\ & \servo_inst|pulse_width\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(5),
	datac => \servo_inst|LessThan0~13_combout\,
	datad => \servo_inst|pulse_width\(5),
	combout => \servo_inst|LessThan0~25_combout\);

-- Location: LCCOMB_X24_Y19_N22
\servo_inst|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~14_combout\ = (\servo_inst|period_cnt\(6) & ((\servo_inst|pulse_width\(6)) # (\servo_inst|LessThan0~25_combout\))) # (!\servo_inst|period_cnt\(6) & (\servo_inst|pulse_width\(6) & \servo_inst|LessThan0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(6),
	datac => \servo_inst|pulse_width\(6),
	datad => \servo_inst|LessThan0~25_combout\,
	combout => \servo_inst|LessThan0~14_combout\);

-- Location: LCCOMB_X24_Y19_N0
\servo_inst|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~15_combout\ = (\servo_inst|period_cnt\(7) & ((\servo_inst|LessThan0~14_combout\) # (\servo_inst|pulse_width\(7)))) # (!\servo_inst|period_cnt\(7) & (\servo_inst|LessThan0~14_combout\ & \servo_inst|pulse_width\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(7),
	datac => \servo_inst|LessThan0~14_combout\,
	datad => \servo_inst|pulse_width\(7),
	combout => \servo_inst|LessThan0~15_combout\);

-- Location: LCCOMB_X24_Y19_N2
\servo_inst|LessThan0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~16_combout\ = (\servo_inst|period_cnt\(8) & (\servo_inst|pulse_width\(8) & !\servo_inst|LessThan0~15_combout\)) # (!\servo_inst|period_cnt\(8) & ((\servo_inst|pulse_width\(8)) # (!\servo_inst|LessThan0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(8),
	datac => \servo_inst|pulse_width\(8),
	datad => \servo_inst|LessThan0~15_combout\,
	combout => \servo_inst|LessThan0~16_combout\);

-- Location: LCCOMB_X24_Y19_N28
\servo_inst|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~17_combout\ = (\servo_inst|period_cnt\(9) & (\servo_inst|pulse_width\(9) & \servo_inst|LessThan0~16_combout\)) # (!\servo_inst|period_cnt\(9) & ((\servo_inst|pulse_width\(9)) # (\servo_inst|LessThan0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(9),
	datac => \servo_inst|pulse_width\(9),
	datad => \servo_inst|LessThan0~16_combout\,
	combout => \servo_inst|LessThan0~17_combout\);

-- Location: LCCOMB_X24_Y19_N6
\servo_inst|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~18_combout\ = (\servo_inst|period_cnt\(10) & ((\servo_inst|pulse_width\(10)) # (!\servo_inst|LessThan0~17_combout\))) # (!\servo_inst|period_cnt\(10) & (\servo_inst|pulse_width\(10) & !\servo_inst|LessThan0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(10),
	datac => \servo_inst|pulse_width\(10),
	datad => \servo_inst|LessThan0~17_combout\,
	combout => \servo_inst|LessThan0~18_combout\);

-- Location: LCCOMB_X24_Y19_N24
\servo_inst|LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~19_combout\ = (\servo_inst|period_cnt\(11) & ((\servo_inst|LessThan0~18_combout\) # (!\servo_inst|pulse_width\(11)))) # (!\servo_inst|period_cnt\(11) & (!\servo_inst|pulse_width\(11) & \servo_inst|LessThan0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(11),
	datac => \servo_inst|pulse_width\(11),
	datad => \servo_inst|LessThan0~18_combout\,
	combout => \servo_inst|LessThan0~19_combout\);

-- Location: LCCOMB_X24_Y19_N10
\servo_inst|LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~20_combout\ = (\servo_inst|period_cnt\(12) & (\servo_inst|pulse_width\(12) & !\servo_inst|LessThan0~19_combout\)) # (!\servo_inst|period_cnt\(12) & ((\servo_inst|pulse_width\(12)) # (!\servo_inst|LessThan0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(12),
	datac => \servo_inst|pulse_width\(12),
	datad => \servo_inst|LessThan0~19_combout\,
	combout => \servo_inst|LessThan0~20_combout\);

-- Location: LCCOMB_X24_Y19_N20
\servo_inst|LessThan0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~22_combout\ = (\servo_inst|LessThan0~21_combout\ & (\servo_inst|LessThan0~20_combout\ & (\servo_inst|period_cnt\(13) $ (\servo_inst|pulse_width\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|LessThan0~21_combout\,
	datab => \servo_inst|period_cnt\(13),
	datac => \servo_inst|pulse_width\(13),
	datad => \servo_inst|LessThan0~20_combout\,
	combout => \servo_inst|LessThan0~22_combout\);

-- Location: LCCOMB_X24_Y19_N14
\servo_inst|LessThan0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~26_combout\ = (\servo_inst|LessThan0~2_combout\) # ((\servo_inst|LessThan0~10_combout\ & ((\servo_inst|LessThan0~24_combout\) # (\servo_inst|LessThan0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|LessThan0~2_combout\,
	datab => \servo_inst|LessThan0~24_combout\,
	datac => \servo_inst|LessThan0~10_combout\,
	datad => \servo_inst|LessThan0~22_combout\,
	combout => \servo_inst|LessThan0~26_combout\);

-- Location: LCCOMB_X27_Y20_N16
\servo_inst|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~36_combout\ = (\servo_inst|period_cnt\(18) & (\servo_inst|Add0~35\ $ (GND))) # (!\servo_inst|period_cnt\(18) & (!\servo_inst|Add0~35\ & VCC))
-- \servo_inst|Add0~37\ = CARRY((\servo_inst|period_cnt\(18) & !\servo_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|period_cnt\(18),
	datad => VCC,
	cin => \servo_inst|Add0~35\,
	combout => \servo_inst|Add0~36_combout\,
	cout => \servo_inst|Add0~37\);

-- Location: LCCOMB_X27_Y20_N18
\servo_inst|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|Add0~38_combout\ = \servo_inst|Add0~37\ $ (\servo_inst|period_cnt\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \servo_inst|period_cnt\(19),
	cin => \servo_inst|Add0~37\,
	combout => \servo_inst|Add0~38_combout\);

-- Location: LCCOMB_X27_Y20_N28
\servo_inst|period_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|period_cnt~0_combout\ = (!\servo_inst|Equal0~6_combout\ & \servo_inst|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo_inst|Equal0~6_combout\,
	datad => \servo_inst|Add0~38_combout\,
	combout => \servo_inst|period_cnt~0_combout\);

-- Location: FF_X27_Y20_N29
\servo_inst|period_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|period_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(19));

-- Location: LCCOMB_X26_Y20_N14
\servo_inst|pulse_width~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|pulse_width~24_combout\ = (\servo_inst|pulse_width~23_combout\ & ((\servo_inst|dir_up~q\ & (\servo_inst|LessThan2~10_combout\)) # (!\servo_inst|dir_up~q\ & ((\servo_inst|LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width~23_combout\,
	datab => \servo_inst|dir_up~q\,
	datac => \servo_inst|LessThan2~10_combout\,
	datad => \servo_inst|LessThan1~9_combout\,
	combout => \servo_inst|pulse_width~24_combout\);

-- Location: FF_X26_Y20_N15
\servo_inst|pulse_width[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|pulse_width~24_combout\,
	ena => \servo_inst|update_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|pulse_width\(18));

-- Location: LCCOMB_X27_Y20_N30
\servo_inst|period_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|period_cnt~1_combout\ = (!\servo_inst|Equal0~6_combout\ & \servo_inst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo_inst|Equal0~6_combout\,
	datad => \servo_inst|Add0~36_combout\,
	combout => \servo_inst|period_cnt~1_combout\);

-- Location: FF_X27_Y20_N31
\servo_inst|period_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|period_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|period_cnt\(18));

-- Location: LCCOMB_X26_Y20_N20
\servo_inst|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~6_combout\ = (\servo_inst|LessThan0~5_combout\ & ((\servo_inst|period_cnt\(18)) # (!\servo_inst|pulse_width\(18)))) # (!\servo_inst|LessThan0~5_combout\ & (!\servo_inst|pulse_width\(18) & \servo_inst|period_cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|LessThan0~5_combout\,
	datab => \servo_inst|pulse_width\(18),
	datac => \servo_inst|period_cnt\(18),
	combout => \servo_inst|LessThan0~6_combout\);

-- Location: LCCOMB_X27_Y20_N20
\servo_inst|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~7_combout\ = (\servo_inst|period_cnt\(19) & ((\servo_inst|LessThan0~6_combout\) # (!\servo_inst|pulse_width\(19)))) # (!\servo_inst|period_cnt\(19) & (!\servo_inst|pulse_width\(19) & \servo_inst|LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_inst|period_cnt\(19),
	datac => \servo_inst|pulse_width\(19),
	datad => \servo_inst|LessThan0~6_combout\,
	combout => \servo_inst|LessThan0~7_combout\);

-- Location: LCCOMB_X24_Y19_N16
\servo_inst|LessThan0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \servo_inst|LessThan0~27_combout\ = (!\servo_inst|pulse_width\(31) & ((\servo_inst|LessThan0~4_combout\) # ((\servo_inst|LessThan0~26_combout\) # (!\servo_inst|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_inst|pulse_width\(31),
	datab => \servo_inst|LessThan0~4_combout\,
	datac => \servo_inst|LessThan0~26_combout\,
	datad => \servo_inst|LessThan0~7_combout\,
	combout => \servo_inst|LessThan0~27_combout\);

-- Location: FF_X24_Y19_N17
\servo_inst|servo_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \servo_inst|LessThan0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_inst|servo_out~q\);

ww_output <= \output~output_o\;
END structure;


