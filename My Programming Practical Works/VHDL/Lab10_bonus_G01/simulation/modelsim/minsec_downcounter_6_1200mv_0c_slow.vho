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

-- DATE "11/28/2025 11:20:12"

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

ENTITY 	minsec_downcounter IS
    PORT (
	clk : IN std_logic;
	btn0 : IN std_logic;
	btn1 : IN std_logic;
	btn2 : IN std_logic;
	sw0 : IN std_logic;
	hex0 : OUT std_logic_vector(7 DOWNTO 0);
	hex1 : OUT std_logic_vector(7 DOWNTO 0);
	hex2 : OUT std_logic_vector(7 DOWNTO 0);
	hex3 : OUT std_logic_vector(7 DOWNTO 0)
	);
END minsec_downcounter;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn0	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF minsec_downcounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_btn0 : std_logic;
SIGNAL ww_btn1 : std_logic;
SIGNAL ww_btn2 : std_logic;
SIGNAL ww_sw0 : std_logic;
SIGNAL ww_hex0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add3~7_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \s_units~16_combout\ : std_logic;
SIGNAL \s_tens~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \cnt_1hz~3_combout\ : std_logic;
SIGNAL \cnt_1hz~8_combout\ : std_logic;
SIGNAL \cnt_1hz~10_combout\ : std_logic;
SIGNAL \s_units~18_combout\ : std_logic;
SIGNAL \m_tens~11_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex0[7]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex1[7]~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex2[4]~output_o\ : std_logic;
SIGNAL \hex2[5]~output_o\ : std_logic;
SIGNAL \hex2[6]~output_o\ : std_logic;
SIGNAL \hex2[7]~output_o\ : std_logic;
SIGNAL \hex3[0]~output_o\ : std_logic;
SIGNAL \hex3[1]~output_o\ : std_logic;
SIGNAL \hex3[2]~output_o\ : std_logic;
SIGNAL \hex3[3]~output_o\ : std_logic;
SIGNAL \hex3[4]~output_o\ : std_logic;
SIGNAL \hex3[5]~output_o\ : std_logic;
SIGNAL \hex3[6]~output_o\ : std_logic;
SIGNAL \hex3[7]~output_o\ : std_logic;
SIGNAL \btn2~input_o\ : std_logic;
SIGNAL \btn2_sync~q\ : std_logic;
SIGNAL \btn2_prev~q\ : std_logic;
SIGNAL \btn1~input_o\ : std_logic;
SIGNAL \btn1_sync~q\ : std_logic;
SIGNAL \btn1_prev~q\ : std_logic;
SIGNAL \s_units~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \cnt_1hz~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \cnt_1hz~1_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \cnt_1hz~4_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \cnt_1hz~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \cnt_1hz~5_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \cnt_1hz~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \cnt_1hz~7_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \cnt_1hz~9_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \cnt_1hz~11_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \tick_1hz~q\ : std_logic;
SIGNAL \s_units~3_combout\ : std_logic;
SIGNAL \s_units~5_combout\ : std_logic;
SIGNAL \sw0~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \s_units[2]~6_combout\ : std_logic;
SIGNAL \s_units[2]~7_combout\ : std_logic;
SIGNAL \s_units[2]~9_combout\ : std_logic;
SIGNAL \s_units~4_combout\ : std_logic;
SIGNAL \Add3~4_cout\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \s_units~10_combout\ : std_logic;
SIGNAL \btn0~input_o\ : std_logic;
SIGNAL \btn0_sync~q\ : std_logic;
SIGNAL \btn0_prev~q\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \s_units[2]~11_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \s_units~8_combout\ : std_logic;
SIGNAL \s_units~13_combout\ : std_logic;
SIGNAL \s_units~14_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~8\ : std_logic;
SIGNAL \Add3~9_combout\ : std_logic;
SIGNAL \s_units~15_combout\ : std_logic;
SIGNAL \s_units~17_combout\ : std_logic;
SIGNAL \s_units~12_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \s_tens~1_combout\ : std_logic;
SIGNAL \s_tens~0_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \s_tens~2_combout\ : std_logic;
SIGNAL \s_tens~11_combout\ : std_logic;
SIGNAL \s_tens~3_combout\ : std_logic;
SIGNAL \s_tens~4_combout\ : std_logic;
SIGNAL \Add4~3_combout\ : std_logic;
SIGNAL \s_tens~7_combout\ : std_logic;
SIGNAL \s_tens~9_combout\ : std_logic;
SIGNAL \s_tens~10_combout\ : std_logic;
SIGNAL \s_tens~5_combout\ : std_logic;
SIGNAL \s_tens~6_combout\ : std_logic;
SIGNAL \s_tens~12_combout\ : std_logic;
SIGNAL \s_tens~13_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \m_units~8_combout\ : std_logic;
SIGNAL \m_tens~4_combout\ : std_logic;
SIGNAL \m_tens~5_combout\ : std_logic;
SIGNAL \m_units~2_combout\ : std_logic;
SIGNAL \m_units~3_combout\ : std_logic;
SIGNAL \m_units~4_combout\ : std_logic;
SIGNAL \m_units~0_combout\ : std_logic;
SIGNAL \m_units~7_combout\ : std_logic;
SIGNAL \m_units~5_combout\ : std_logic;
SIGNAL \m_units~9_combout\ : std_logic;
SIGNAL \m_units~1_combout\ : std_logic;
SIGNAL \m_units~6_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \m_tens~10_combout\ : std_logic;
SIGNAL \m_tens~8_combout\ : std_logic;
SIGNAL \m_tens~9_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \m_tens~6_combout\ : std_logic;
SIGNAL \m_tens~7_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL cnt_1hz : std_logic_vector(31 DOWNTO 0);
SIGNAL m_tens : std_logic_vector(2 DOWNTO 0);
SIGNAL m_units : std_logic_vector(3 DOWNTO 0);
SIGNAL s_tens : std_logic_vector(2 DOWNTO 0);
SIGNAL s_units : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_btn0 <= btn0;
ww_btn1 <= btn1;
ww_btn2 <= btn2;
ww_sw0 <= sw0;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;

-- Location: LCCOMB_X14_Y17_N10
\Add3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~7_combout\ = ((s_units(2) $ (\s_units~4_combout\ $ (\Add3~6\)))) # (GND)
-- \Add3~8\ = CARRY((s_units(2) & (\s_units~4_combout\ & !\Add3~6\)) # (!s_units(2) & ((\s_units~4_combout\) # (!\Add3~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_units(2),
	datab => \s_units~4_combout\,
	datad => VCC,
	cin => \Add3~6\,
	combout => \Add3~7_combout\,
	cout => \Add3~8\);

-- Location: LCCOMB_X37_Y23_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cnt_1hz(3) & (!\Add0~5\)) # (!cnt_1hz(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!cnt_1hz(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X37_Y23_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (cnt_1hz(5) & (!\Add0~9\)) # (!cnt_1hz(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!cnt_1hz(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X37_Y23_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (cnt_1hz(7) & (!\Add0~13\)) # (!cnt_1hz(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!cnt_1hz(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X37_Y23_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (cnt_1hz(11) & (!\Add0~21\)) # (!cnt_1hz(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!cnt_1hz(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X37_Y23_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (cnt_1hz(14) & (\Add0~27\ $ (GND))) # (!cnt_1hz(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((cnt_1hz(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X37_Y22_N10
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (cnt_1hz(21) & (!\Add0~41\)) # (!cnt_1hz(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!cnt_1hz(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X37_Y22_N14
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (cnt_1hz(23) & (!\Add0~45\)) # (!cnt_1hz(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!cnt_1hz(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X37_Y22_N20
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (cnt_1hz(26) & (\Add0~51\ $ (GND))) # (!cnt_1hz(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((cnt_1hz(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X37_Y22_N22
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (cnt_1hz(27) & (!\Add0~53\)) # (!cnt_1hz(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!cnt_1hz(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X37_Y22_N24
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (cnt_1hz(28) & (\Add0~55\ $ (GND))) # (!cnt_1hz(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((cnt_1hz(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X37_Y22_N26
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (cnt_1hz(29) & (!\Add0~57\)) # (!cnt_1hz(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!cnt_1hz(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X37_Y22_N28
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (cnt_1hz(30) & (\Add0~59\ $ (GND))) # (!cnt_1hz(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((cnt_1hz(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X37_Y22_N30
\Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = cnt_1hz(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X14_Y17_N14
\Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = (((\btn1_sync~q\ & !\btn1_prev~q\)) # (!s_units(0))) # (!\sw0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datab => s_units(0),
	datac => \btn1_sync~q\,
	datad => \btn1_prev~q\,
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X14_Y17_N16
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (!s_units(0) & (((\btn1_sync~q\ & !\btn1_prev~q\)) # (!\sw0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datab => \btn1_sync~q\,
	datac => \btn1_prev~q\,
	datad => s_units(0),
	combout => \Add3~2_combout\);

-- Location: LCCOMB_X14_Y17_N26
\s_units~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units~16_combout\ = (\sw0~input_o\ & (!\btn2_prev~q\ & (\btn2_sync~q\ & \Add3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datab => \btn2_prev~q\,
	datac => \btn2_sync~q\,
	datad => \Add3~9_combout\,
	combout => \s_units~16_combout\);

-- Location: LCCOMB_X22_Y20_N12
\s_tens~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tens~8_combout\ = (\s_tens~0_combout\ & (((\m_tens~4_combout\)))) # (!\s_tens~0_combout\ & (!\sw0~input_o\ & ((!s_tens(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datab => \m_tens~4_combout\,
	datac => s_tens(2),
	datad => \s_tens~0_combout\,
	combout => \s_tens~8_combout\);

-- Location: FF_X37_Y23_N7
\cnt_1hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(3));

-- Location: LCCOMB_X38_Y23_N10
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (cnt_1hz(0) & (cnt_1hz(2) & (cnt_1hz(3) & cnt_1hz(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(0),
	datab => cnt_1hz(2),
	datac => cnt_1hz(3),
	datad => cnt_1hz(1),
	combout => \Equal0~0_combout\);

-- Location: FF_X37_Y23_N11
\cnt_1hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(5));

-- Location: FF_X37_Y23_N23
\cnt_1hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(11));

-- Location: FF_X38_Y23_N7
\cnt_1hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_1hz~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(14));

-- Location: FF_X38_Y22_N7
\cnt_1hz[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_1hz~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(21));

-- Location: FF_X38_Y22_N3
\cnt_1hz[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_1hz~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(23));

-- Location: LCCOMB_X38_Y22_N4
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (cnt_1hz(20) & (cnt_1hz(22) & (cnt_1hz(23) & cnt_1hz(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(20),
	datab => cnt_1hz(22),
	datac => cnt_1hz(23),
	datad => cnt_1hz(21),
	combout => \Equal0~6_combout\);

-- Location: FF_X37_Y22_N23
\cnt_1hz[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(27));

-- Location: FF_X37_Y22_N25
\cnt_1hz[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(28));

-- Location: FF_X37_Y22_N27
\cnt_1hz[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(29));

-- Location: FF_X37_Y22_N29
\cnt_1hz[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(30));

-- Location: FF_X37_Y22_N31
\cnt_1hz[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(31));

-- Location: LCCOMB_X38_Y23_N12
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!cnt_1hz(29) & (!cnt_1hz(31) & (!cnt_1hz(30) & !cnt_1hz(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(29),
	datab => cnt_1hz(31),
	datac => cnt_1hz(30),
	datad => cnt_1hz(28),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X38_Y23_N6
\cnt_1hz~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1hz~3_combout\ = (!\Equal0~10_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~28_combout\,
	combout => \cnt_1hz~3_combout\);

-- Location: LCCOMB_X38_Y22_N6
\cnt_1hz~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1hz~8_combout\ = (!\Equal0~10_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~42_combout\,
	combout => \cnt_1hz~8_combout\);

-- Location: LCCOMB_X38_Y22_N2
\cnt_1hz~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1hz~10_combout\ = (!\Equal0~10_combout\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~46_combout\,
	combout => \cnt_1hz~10_combout\);

-- Location: LCCOMB_X15_Y20_N30
\s_units~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units~18_combout\ = (\s_units~4_combout\ & (s_units(0))) # (!\s_units~4_combout\ & (!s_units(0) & (\btn0_sync~q\ & !\btn0_prev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units~4_combout\,
	datab => s_units(0),
	datac => \btn0_sync~q\,
	datad => \btn0_prev~q\,
	combout => \s_units~18_combout\);

-- Location: LCCOMB_X23_Y20_N22
\m_tens~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tens~11_combout\ = (!m_tens(1) & (m_tens(0) & (!m_tens(2) & \m_units~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_tens(1),
	datab => m_tens(0),
	datac => m_tens(2),
	datad => \m_units~7_combout\,
	combout => \m_tens~11_combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOOBUF_X21_Y29_N23
\hex0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\hex0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\hex0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\hex0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\hex0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\hex0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\hex0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\hex0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex0[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\hex1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\hex1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\hex1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\hex1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\hex1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\hex1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\hex1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\hex1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[7]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\hex2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \hex2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\hex2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \hex2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\hex2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \hex2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\hex2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \hex2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\hex2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \hex2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\hex2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \hex2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\hex2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => \hex2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\hex2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex2[7]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\hex3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \hex3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\hex3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \hex3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\hex3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \hex3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\hex3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \hex3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\hex3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \hex3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\hex3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \hex3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\hex3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \hex3[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\hex3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex3[7]~output_o\);

-- Location: IOIBUF_X0_Y23_N1
\btn2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn2,
	o => \btn2~input_o\);

-- Location: FF_X14_Y17_N27
btn2_sync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn2_sync~q\);

-- Location: FF_X15_Y20_N1
btn2_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn2_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn2_prev~q\);

-- Location: IOIBUF_X0_Y23_N15
\btn1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn1,
	o => \btn1~input_o\);

-- Location: FF_X14_Y17_N15
btn1_sync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn1_sync~q\);

-- Location: FF_X14_Y17_N17
btn1_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn1_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn1_prev~q\);

-- Location: LCCOMB_X15_Y20_N26
\s_units~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units~2_combout\ = (\btn2_sync~q\ & (\btn2_prev~q\ & ((\btn1_prev~q\) # (!\btn1_sync~q\)))) # (!\btn2_sync~q\ & (((\btn1_prev~q\) # (!\btn1_sync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn2_sync~q\,
	datab => \btn2_prev~q\,
	datac => \btn1_prev~q\,
	datad => \btn1_sync~q\,
	combout => \s_units~2_combout\);

-- Location: LCCOMB_X37_Y23_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cnt_1hz(0) $ (VCC)
-- \Add0~1\ = CARRY(cnt_1hz(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X37_Y23_N1
\cnt_1hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(0));

-- Location: LCCOMB_X37_Y23_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (cnt_1hz(1) & (!\Add0~1\)) # (!cnt_1hz(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!cnt_1hz(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X37_Y23_N3
\cnt_1hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(1));

-- Location: LCCOMB_X37_Y23_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (cnt_1hz(2) & (\Add0~3\ $ (GND))) # (!cnt_1hz(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((cnt_1hz(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X37_Y23_N5
\cnt_1hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(2));

-- Location: LCCOMB_X37_Y23_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (cnt_1hz(4) & (\Add0~7\ $ (GND))) # (!cnt_1hz(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((cnt_1hz(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X37_Y23_N9
\cnt_1hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(4));

-- Location: LCCOMB_X37_Y23_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (cnt_1hz(6) & (\Add0~11\ $ (GND))) # (!cnt_1hz(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((cnt_1hz(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X37_Y23_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (cnt_1hz(8) & (\Add0~15\ $ (GND))) # (!cnt_1hz(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((cnt_1hz(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X37_Y23_N17
\cnt_1hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(8));

-- Location: LCCOMB_X37_Y23_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (cnt_1hz(9) & (!\Add0~17\)) # (!cnt_1hz(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!cnt_1hz(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X37_Y23_N19
\cnt_1hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(9));

-- Location: LCCOMB_X37_Y23_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (cnt_1hz(10) & (\Add0~19\ $ (GND))) # (!cnt_1hz(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((cnt_1hz(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X37_Y23_N21
\cnt_1hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(10));

-- Location: LCCOMB_X38_Y23_N8
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!cnt_1hz(11) & (!cnt_1hz(10) & (!cnt_1hz(8) & !cnt_1hz(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(11),
	datab => cnt_1hz(10),
	datac => cnt_1hz(8),
	datad => cnt_1hz(9),
	combout => \Equal0~2_combout\);

-- Location: FF_X37_Y23_N13
\cnt_1hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(6));

-- Location: LCCOMB_X38_Y23_N4
\cnt_1hz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1hz~0_combout\ = (\Add0~14_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datac => \Equal0~10_combout\,
	combout => \cnt_1hz~0_combout\);

-- Location: FF_X38_Y23_N5
\cnt_1hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_1hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(7));

-- Location: LCCOMB_X38_Y23_N14
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (cnt_1hz(5) & (cnt_1hz(6) & (!cnt_1hz(7) & cnt_1hz(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(5),
	datab => cnt_1hz(6),
	datac => cnt_1hz(7),
	datad => cnt_1hz(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X37_Y23_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (cnt_1hz(12) & (\Add0~23\ $ (GND))) # (!cnt_1hz(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((cnt_1hz(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X38_Y23_N2
\cnt_1hz~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1hz~1_combout\ = (!\Equal0~10_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~24_combout\,
	combout => \cnt_1hz~1_combout\);

-- Location: FF_X38_Y23_N3
\cnt_1hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_1hz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(12));

-- Location: LCCOMB_X37_Y23_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (cnt_1hz(13) & (!\Add0~25\)) # (!cnt_1hz(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!cnt_1hz(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X37_Y23_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (cnt_1hz(15) & (!\Add0~29\)) # (!cnt_1hz(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!cnt_1hz(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X38_Y23_N0
\cnt_1hz~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1hz~4_combout\ = (!\Equal0~10_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~30_combout\,
	combout => \cnt_1hz~4_combout\);

-- Location: FF_X38_Y23_N1
\cnt_1hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_1hz~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(15));

-- Location: LCCOMB_X38_Y23_N20
\cnt_1hz~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1hz~2_combout\ = (!\Equal0~10_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datac => \Add0~26_combout\,
	combout => \cnt_1hz~2_combout\);

-- Location: FF_X38_Y23_N21
\cnt_1hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_1hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(13));

-- Location: LCCOMB_X38_Y23_N26
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (cnt_1hz(14) & (cnt_1hz(12) & (cnt_1hz(15) & cnt_1hz(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(14),
	datab => cnt_1hz(12),
	datac => cnt_1hz(15),
	datad => cnt_1hz(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X38_Y23_N28
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X37_Y22_N0
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (cnt_1hz(16) & (\Add0~31\ $ (GND))) # (!cnt_1hz(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((cnt_1hz(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X37_Y22_N1
\cnt_1hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(16));

-- Location: LCCOMB_X37_Y22_N2
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (cnt_1hz(17) & (!\Add0~33\)) # (!cnt_1hz(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!cnt_1hz(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X38_Y23_N22
\cnt_1hz~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1hz~5_combout\ = (!\Equal0~10_combout\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datac => \Add0~34_combout\,
	combout => \cnt_1hz~5_combout\);

-- Location: FF_X38_Y23_N23
\cnt_1hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_1hz~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(17));

-- Location: LCCOMB_X37_Y22_N4
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (cnt_1hz(18) & (\Add0~35\ $ (GND))) # (!cnt_1hz(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((cnt_1hz(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X37_Y22_N5
\cnt_1hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(18));

-- Location: LCCOMB_X37_Y22_N6
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (cnt_1hz(19) & (!\Add0~37\)) # (!cnt_1hz(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!cnt_1hz(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X38_Y22_N8
\cnt_1hz~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1hz~6_combout\ = (!\Equal0~10_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datac => \Add0~38_combout\,
	combout => \cnt_1hz~6_combout\);

-- Location: FF_X38_Y22_N9
\cnt_1hz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_1hz~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(19));

-- Location: LCCOMB_X38_Y22_N26
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (cnt_1hz(17) & (!cnt_1hz(18) & (cnt_1hz(19) & !cnt_1hz(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(17),
	datab => cnt_1hz(18),
	datac => cnt_1hz(19),
	datad => cnt_1hz(16),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X37_Y22_N8
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (cnt_1hz(20) & (\Add0~39\ $ (GND))) # (!cnt_1hz(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((cnt_1hz(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X38_Y22_N12
\cnt_1hz~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1hz~7_combout\ = (!\Equal0~10_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~40_combout\,
	combout => \cnt_1hz~7_combout\);

-- Location: FF_X38_Y22_N13
\cnt_1hz[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_1hz~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(20));

-- Location: LCCOMB_X37_Y22_N12
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (cnt_1hz(22) & (\Add0~43\ $ (GND))) # (!cnt_1hz(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((cnt_1hz(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X38_Y22_N0
\cnt_1hz~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1hz~9_combout\ = (!\Equal0~10_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~44_combout\,
	combout => \cnt_1hz~9_combout\);

-- Location: FF_X38_Y22_N1
\cnt_1hz[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_1hz~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(22));

-- Location: LCCOMB_X37_Y22_N16
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (cnt_1hz(24) & (\Add0~47\ $ (GND))) # (!cnt_1hz(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((cnt_1hz(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1hz(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X37_Y22_N17
\cnt_1hz[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(24));

-- Location: LCCOMB_X37_Y22_N18
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (cnt_1hz(25) & (!\Add0~49\)) # (!cnt_1hz(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!cnt_1hz(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X38_Y23_N24
\cnt_1hz~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1hz~11_combout\ = (!\Equal0~10_combout\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datac => \Add0~50_combout\,
	combout => \cnt_1hz~11_combout\);

-- Location: FF_X38_Y23_N25
\cnt_1hz[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_1hz~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(25));

-- Location: FF_X37_Y22_N21
\cnt_1hz[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1hz(26));

-- Location: LCCOMB_X38_Y23_N18
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!cnt_1hz(27) & (cnt_1hz(25) & (!cnt_1hz(26) & !cnt_1hz(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1hz(27),
	datab => cnt_1hz(25),
	datac => cnt_1hz(26),
	datad => cnt_1hz(24),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X38_Y23_N16
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & \Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X38_Y23_N30
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~6_combout\ & (\Equal0~4_combout\ & (\Equal0~5_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: FF_X38_Y23_N17
tick_1hz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Equal0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tick_1hz~q\);

-- Location: LCCOMB_X22_Y20_N30
\s_units~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units~3_combout\ = (\sw0~input_o\ & (!\s_units~2_combout\)) # (!\sw0~input_o\ & ((\tick_1hz~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datac => \s_units~2_combout\,
	datad => \tick_1hz~q\,
	combout => \s_units~3_combout\);

-- Location: LCCOMB_X14_Y17_N4
\s_units~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units~5_combout\ = (s_units(0) & (((!\s_units~18_combout\ & !\LessThan4~0_combout\)) # (!\s_units~3_combout\))) # (!s_units(0) & ((\s_units~18_combout\) # ((\s_units~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units~18_combout\,
	datab => \LessThan4~0_combout\,
	datac => s_units(0),
	datad => \s_units~3_combout\,
	combout => \s_units~5_combout\);

-- Location: FF_X14_Y17_N5
\s_units[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_units~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_units(0));

-- Location: IOIBUF_X0_Y24_N1
\sw0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw0,
	o => \sw0~input_o\);

-- Location: LCCOMB_X14_Y17_N22
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((s_units(3)) # ((!s_units(1)) # (!s_units(0)))) # (!s_units(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_units(2),
	datab => s_units(3),
	datac => s_units(0),
	datad => s_units(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y20_N8
\s_units[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units[2]~6_combout\ = (\btn1_sync~q\ & !\btn1_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn1_sync~q\,
	datad => \btn1_prev~q\,
	combout => \s_units[2]~6_combout\);

-- Location: LCCOMB_X15_Y20_N8
\s_units[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units[2]~7_combout\ = (\sw0~input_o\ & ((\s_units[2]~6_combout\ & (\LessThan0~0_combout\)) # (!\s_units[2]~6_combout\ & ((\LessThan4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \sw0~input_o\,
	datac => \LessThan4~0_combout\,
	datad => \s_units[2]~6_combout\,
	combout => \s_units[2]~7_combout\);

-- Location: LCCOMB_X15_Y20_N4
\s_units[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units[2]~9_combout\ = (\s_units~8_combout\ & (!\sw0~input_o\ & (\LessThan0~0_combout\))) # (!\s_units~8_combout\ & ((\s_units[2]~7_combout\) # ((!\sw0~input_o\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units~8_combout\,
	datab => \sw0~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \s_units[2]~7_combout\,
	combout => \s_units[2]~9_combout\);

-- Location: LCCOMB_X14_Y17_N18
\s_units~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units~4_combout\ = ((\btn1_sync~q\ & !\btn1_prev~q\)) # (!\sw0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datac => \btn1_sync~q\,
	datad => \btn1_prev~q\,
	combout => \s_units~4_combout\);

-- Location: LCCOMB_X14_Y17_N6
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_cout\ = CARRY((\Add3~2_combout\ & \s_units~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \s_units~4_combout\,
	datad => VCC,
	cout => \Add3~4_cout\);

-- Location: LCCOMB_X14_Y17_N8
\Add3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~5_combout\ = (\Add3~1_combout\ & ((s_units(1) & (!\Add3~4_cout\)) # (!s_units(1) & (\Add3~4_cout\ & VCC)))) # (!\Add3~1_combout\ & ((s_units(1) & ((\Add3~4_cout\) # (GND))) # (!s_units(1) & (!\Add3~4_cout\))))
-- \Add3~6\ = CARRY((\Add3~1_combout\ & (s_units(1) & !\Add3~4_cout\)) # (!\Add3~1_combout\ & ((s_units(1)) # (!\Add3~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => s_units(1),
	datad => VCC,
	cin => \Add3~4_cout\,
	combout => \Add3~5_combout\,
	cout => \Add3~6\);

-- Location: LCCOMB_X15_Y20_N24
\s_units~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units~10_combout\ = (!\Add3~5_combout\) # (!\s_units[2]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_units[2]~9_combout\,
	datac => \Add3~5_combout\,
	combout => \s_units~10_combout\);

-- Location: IOIBUF_X0_Y21_N8
\btn0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn0,
	o => \btn0~input_o\);

-- Location: FF_X14_Y17_N3
btn0_sync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn0_sync~q\);

-- Location: FF_X15_Y20_N29
btn0_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn0_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn0_prev~q\);

-- Location: LCCOMB_X15_Y20_N22
\process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (!\btn0_prev~q\ & \btn0_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn0_prev~q\,
	datad => \btn0_sync~q\,
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X22_Y20_N8
\s_units[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units[2]~11_combout\ = (\sw0~input_o\ & (((\process_2~0_combout\) # (!\s_units~2_combout\)))) # (!\sw0~input_o\ & (\tick_1hz~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datab => \tick_1hz~q\,
	datac => \s_units~2_combout\,
	datad => \process_2~0_combout\,
	combout => \s_units[2]~11_combout\);

-- Location: FF_X15_Y20_N25
\s_units[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_units~10_combout\,
	ena => \s_units[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_units(1));

-- Location: LCCOMB_X14_Y17_N0
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ((s_units(2) & (s_units(0) & s_units(1)))) # (!s_units(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_units(2),
	datab => s_units(3),
	datac => s_units(0),
	datad => s_units(1),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X15_Y20_N10
\s_units~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units~8_combout\ = (!\s_units~4_combout\ & ((\btn2_prev~q\) # (!\btn2_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn2_sync~q\,
	datac => \s_units~4_combout\,
	datad => \btn2_prev~q\,
	combout => \s_units~8_combout\);

-- Location: LCCOMB_X22_Y20_N18
\s_units~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units~13_combout\ = (\sw0~input_o\) # (\tick_1hz~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datad => \tick_1hz~q\,
	combout => \s_units~13_combout\);

-- Location: LCCOMB_X22_Y20_N28
\s_units~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units~14_combout\ = (s_units(3) & (((!\process_2~0_combout\ & \s_units~8_combout\)) # (!\s_units~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => s_units(3),
	datac => \s_units~8_combout\,
	datad => \s_units~13_combout\,
	combout => \s_units~14_combout\);

-- Location: LCCOMB_X14_Y17_N12
\Add3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~9_combout\ = \s_units~4_combout\ $ (\Add3~8\ $ (s_units(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_units~4_combout\,
	datad => s_units(3),
	cin => \Add3~8\,
	combout => \Add3~9_combout\);

-- Location: LCCOMB_X14_Y17_N24
\s_units~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units~15_combout\ = (\s_units~4_combout\ & (\s_units~13_combout\ & ((\Add3~9_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units~4_combout\,
	datab => \LessThan0~0_combout\,
	datac => \s_units~13_combout\,
	datad => \Add3~9_combout\,
	combout => \s_units~15_combout\);

-- Location: LCCOMB_X14_Y17_N20
\s_units~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units~17_combout\ = (\s_units~14_combout\) # ((\s_units~15_combout\) # ((\s_units~16_combout\ & \LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units~16_combout\,
	datab => \LessThan4~0_combout\,
	datac => \s_units~14_combout\,
	datad => \s_units~15_combout\,
	combout => \s_units~17_combout\);

-- Location: FF_X14_Y17_N21
\s_units[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_units~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_units(3));

-- Location: LCCOMB_X14_Y17_N30
\s_units~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_units~12_combout\ = (!\s_units[2]~9_combout\) # (!\Add3~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~7_combout\,
	datad => \s_units[2]~9_combout\,
	combout => \s_units~12_combout\);

-- Location: FF_X14_Y17_N31
\s_units[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_units~12_combout\,
	ena => \s_units[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_units(2));

-- Location: LCCOMB_X27_Y28_N8
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (s_units(1) & (s_units(2) $ (((s_units(3)) # (s_units(0)))))) # (!s_units(1) & (s_units(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_units(3),
	datab => s_units(1),
	datac => s_units(2),
	datad => s_units(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X27_Y28_N2
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (s_units(3) & (((!s_units(2))) # (!s_units(1)))) # (!s_units(3) & (!s_units(2) & (s_units(1) $ (s_units(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_units(3),
	datab => s_units(1),
	datac => s_units(2),
	datad => s_units(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X27_Y28_N4
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (s_units(2) & (!s_units(1) & ((s_units(3)) # (s_units(0))))) # (!s_units(2) & (s_units(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_units(3),
	datab => s_units(1),
	datac => s_units(2),
	datad => s_units(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X27_Y28_N6
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (s_units(1) & (s_units(2) $ (((s_units(3)) # (s_units(0)))))) # (!s_units(1) & ((s_units(3)) # ((!s_units(2) & !s_units(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_units(3),
	datab => s_units(1),
	datac => s_units(2),
	datad => s_units(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ((s_units(1) & ((!s_units(2)))) # (!s_units(1) & (s_units(3)))) # (!s_units(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_units(3),
	datab => s_units(1),
	datac => s_units(2),
	datad => s_units(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X27_Y28_N26
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (s_units(2) & (((!s_units(3) & !s_units(0))) # (!s_units(1)))) # (!s_units(2) & ((s_units(3)) # ((!s_units(1) & !s_units(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_units(3),
	datab => s_units(1),
	datac => s_units(2),
	datad => s_units(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X27_Y28_N20
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (s_units(1) & (s_units(3) $ ((!s_units(2))))) # (!s_units(1) & (!s_units(3) & ((s_units(2)) # (s_units(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_units(3),
	datab => s_units(1),
	datac => s_units(2),
	datad => s_units(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X14_Y17_N2
\s_tens~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tens~1_combout\ = (\btn2_sync~q\ & (!\btn2_prev~q\ & !\LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn2_sync~q\,
	datab => \btn2_prev~q\,
	datad => \LessThan4~0_combout\,
	combout => \s_tens~1_combout\);

-- Location: LCCOMB_X23_Y20_N26
\s_tens~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tens~0_combout\ = (!\LessThan0~0_combout\ & ((\sw0~input_o\ & (\s_units[2]~6_combout\)) # (!\sw0~input_o\ & ((\tick_1hz~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units[2]~6_combout\,
	datab => \LessThan0~0_combout\,
	datac => \sw0~input_o\,
	datad => \tick_1hz~q\,
	combout => \s_tens~0_combout\);

-- Location: LCCOMB_X23_Y20_N12
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\sw0~input_o\ & ((\btn1_prev~q\) # ((\LessThan0~0_combout\) # (!\btn1_sync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datab => \btn1_prev~q\,
	datac => \btn1_sync~q\,
	datad => \LessThan0~0_combout\,
	combout => \Add4~4_combout\);

-- Location: LCCOMB_X23_Y20_N4
\s_tens~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tens~2_combout\ = (\s_tens~0_combout\) # ((\s_tens~1_combout\ & \Add4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_tens~1_combout\,
	datac => \s_tens~0_combout\,
	datad => \Add4~4_combout\,
	combout => \s_tens~2_combout\);

-- Location: LCCOMB_X23_Y20_N2
\s_tens~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tens~11_combout\ = (\s_tens~2_combout\ & (!\m_tens~4_combout\ & ((!\Add4~4_combout\)))) # (!\s_tens~2_combout\ & (((!\Add4~4_combout\) # (!\process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens~4_combout\,
	datab => \process_2~0_combout\,
	datac => \s_tens~2_combout\,
	datad => \Add4~4_combout\,
	combout => \s_tens~11_combout\);

-- Location: LCCOMB_X22_Y20_N22
\s_tens~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tens~3_combout\ = (s_tens(0) & (((s_tens(1) & !s_tens(2))))) # (!s_tens(0) & (\process_2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => s_tens(1),
	datac => s_tens(2),
	datad => s_tens(0),
	combout => \s_tens~3_combout\);

-- Location: LCCOMB_X23_Y20_N16
\s_tens~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tens~4_combout\ = (\Add4~4_combout\ & ((\s_tens~3_combout\) # (\s_tens~2_combout\ $ (s_tens(0))))) # (!\Add4~4_combout\ & (\s_tens~2_combout\ $ ((s_tens(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \s_tens~2_combout\,
	datac => s_tens(0),
	datad => \s_tens~3_combout\,
	combout => \s_tens~4_combout\);

-- Location: FF_X23_Y20_N17
\s_tens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_tens~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_tens(0));

-- Location: LCCOMB_X22_Y20_N6
\Add4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~3_combout\ = s_tens(2) $ (((s_tens(1) & ((s_tens(0)) # (!\Add4~4_combout\))) # (!s_tens(1) & ((\Add4~4_combout\) # (!s_tens(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_tens(2),
	datab => s_tens(1),
	datac => \Add4~4_combout\,
	datad => s_tens(0),
	combout => \Add4~3_combout\);

-- Location: LCCOMB_X22_Y20_N26
\s_tens~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tens~7_combout\ = (!\s_tens~1_combout\ & (!s_tens(2) & (!\s_tens~6_combout\ & !\s_tens~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens~1_combout\,
	datab => s_tens(2),
	datac => \s_tens~6_combout\,
	datad => \s_tens~0_combout\,
	combout => \s_tens~7_combout\);

-- Location: LCCOMB_X23_Y20_N0
\s_tens~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tens~9_combout\ = (\s_tens~0_combout\) # ((\sw0~input_o\ & (\s_tens~1_combout\ & !\s_tens~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datab => \s_tens~1_combout\,
	datac => \s_tens~0_combout\,
	datad => \s_tens~6_combout\,
	combout => \s_tens~9_combout\);

-- Location: LCCOMB_X23_Y20_N10
\s_tens~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tens~10_combout\ = (!\s_tens~8_combout\ & (!\s_tens~7_combout\ & ((!\s_tens~9_combout\) # (!\Add4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens~8_combout\,
	datab => \Add4~3_combout\,
	datac => \s_tens~7_combout\,
	datad => \s_tens~9_combout\,
	combout => \s_tens~10_combout\);

-- Location: FF_X23_Y20_N11
\s_tens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_tens~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_tens(2));

-- Location: LCCOMB_X22_Y20_N16
\s_tens~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tens~5_combout\ = (!s_tens(2) & ((s_tens(1)) # (!s_tens(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_tens(1),
	datac => s_tens(2),
	datad => s_tens(0),
	combout => \s_tens~5_combout\);

-- Location: LCCOMB_X14_Y17_N28
\s_tens~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tens~6_combout\ = (\s_tens~1_combout\ & (((\s_tens~5_combout\)))) # (!\s_tens~1_combout\ & (\btn0_sync~q\ & (!\btn0_prev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn0_sync~q\,
	datab => \btn0_prev~q\,
	datac => \s_tens~5_combout\,
	datad => \s_tens~1_combout\,
	combout => \s_tens~6_combout\);

-- Location: LCCOMB_X23_Y20_N20
\s_tens~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tens~12_combout\ = (\s_tens~0_combout\) # ((\Add4~4_combout\ & \s_tens~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datac => \s_tens~0_combout\,
	datad => \s_tens~6_combout\,
	combout => \s_tens~12_combout\);

-- Location: LCCOMB_X23_Y20_N28
\s_tens~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tens~13_combout\ = (\s_tens~11_combout\ & (s_tens(1) $ (((s_tens(0) & \s_tens~12_combout\))))) # (!\s_tens~11_combout\ & (!\s_tens~12_combout\ & (s_tens(0) $ (!s_tens(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_tens(0),
	datab => \s_tens~11_combout\,
	datac => s_tens(1),
	datad => \s_tens~12_combout\,
	combout => \s_tens~13_combout\);

-- Location: FF_X23_Y20_N29
\s_tens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_tens~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_tens(1));

-- Location: LCCOMB_X22_Y20_N0
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!s_tens(1) & (s_tens(2) $ (s_tens(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_tens(1),
	datac => s_tens(2),
	datad => s_tens(0),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X22_Y20_N2
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!s_tens(2) & (s_tens(1) $ (!s_tens(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_tens(1),
	datac => s_tens(2),
	datad => s_tens(0),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X22_Y20_N4
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (s_tens(1) & (s_tens(2) & s_tens(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_tens(1),
	datac => s_tens(2),
	datad => s_tens(0),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X22_Y20_N14
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (s_tens(1) & (!s_tens(2) & !s_tens(0))) # (!s_tens(1) & (s_tens(2) $ (s_tens(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_tens(1),
	datac => s_tens(2),
	datad => s_tens(0),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X22_Y20_N24
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ((!s_tens(1) & !s_tens(2))) # (!s_tens(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_tens(1),
	datac => s_tens(2),
	datad => s_tens(0),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X22_Y20_N10
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (s_tens(1) & ((s_tens(2)) # (!s_tens(0)))) # (!s_tens(1) & (s_tens(2) & !s_tens(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_tens(1),
	datac => s_tens(2),
	datad => s_tens(0),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X22_Y20_N20
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (s_tens(1) & (!s_tens(2) & !s_tens(0))) # (!s_tens(1) & (s_tens(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_tens(1),
	datac => s_tens(2),
	datad => s_tens(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X15_Y20_N18
\m_units~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_units~8_combout\ = (!m_units(3) & (((\btn0_prev~q\) # (!\btn0_sync~q\)) # (!\sw0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datab => m_units(3),
	datac => \btn0_sync~q\,
	datad => \btn0_prev~q\,
	combout => \m_units~8_combout\);

-- Location: LCCOMB_X23_Y20_N6
\m_tens~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tens~4_combout\ = (s_tens(2) & (!s_tens(1) & s_tens(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_tens(2),
	datab => s_tens(1),
	datad => s_tens(0),
	combout => \m_tens~4_combout\);

-- Location: LCCOMB_X23_Y20_N30
\m_tens~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tens~5_combout\ = (!\sw0~input_o\ & (\tick_1hz~q\ & (\m_tens~4_combout\ & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datab => \tick_1hz~q\,
	datac => \m_tens~4_combout\,
	datad => \LessThan0~0_combout\,
	combout => \m_tens~5_combout\);

-- Location: LCCOMB_X27_Y25_N0
\m_units~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_units~2_combout\ = \m_tens~5_combout\ $ ((((m_units(0)) # (\m_units~0_combout\)) # (!\m_units~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units~1_combout\,
	datab => \m_tens~5_combout\,
	datac => m_units(0),
	datad => \m_units~0_combout\,
	combout => \m_units~2_combout\);

-- Location: FF_X27_Y25_N1
\m_units[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_units~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_units(0));

-- Location: LCCOMB_X15_Y20_N28
\m_units~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_units~3_combout\ = (m_units(1) & (((\btn0_prev~q\) # (!\btn0_sync~q\)) # (!\sw0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datab => \btn0_sync~q\,
	datac => \btn0_prev~q\,
	datad => m_units(1),
	combout => \m_units~3_combout\);

-- Location: LCCOMB_X15_Y20_N2
\m_units~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_units~4_combout\ = \m_units~3_combout\ $ (((!\m_units~0_combout\ & (m_units(0) & \m_tens~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units~0_combout\,
	datab => m_units(0),
	datac => \m_tens~5_combout\,
	datad => \m_units~3_combout\,
	combout => \m_units~4_combout\);

-- Location: FF_X15_Y20_N3
\m_units[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_units~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_units(1));

-- Location: LCCOMB_X15_Y20_N6
\m_units~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_units~0_combout\ = (!m_units(2) & (!m_units(1) & (m_units(3) & m_units(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_units(2),
	datab => m_units(1),
	datac => m_units(3),
	datad => m_units(0),
	combout => \m_units~0_combout\);

-- Location: LCCOMB_X23_Y20_N24
\m_units~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_units~7_combout\ = (\m_tens~5_combout\ & \m_units~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_tens~5_combout\,
	datad => \m_units~0_combout\,
	combout => \m_units~7_combout\);

-- Location: LCCOMB_X15_Y20_N16
\m_units~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_units~5_combout\ = (!\m_units~0_combout\ & (!m_units(1) & (\m_tens~5_combout\ & m_units(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units~0_combout\,
	datab => m_units(1),
	datac => \m_tens~5_combout\,
	datad => m_units(0),
	combout => \m_units~5_combout\);

-- Location: LCCOMB_X15_Y20_N14
\m_units~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_units~9_combout\ = (m_units(2) & (!\m_units~8_combout\ & (!\m_units~7_combout\))) # (!m_units(2) & ((\m_units~5_combout\) # ((!\m_units~8_combout\ & !\m_units~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_units(2),
	datab => \m_units~8_combout\,
	datac => \m_units~7_combout\,
	datad => \m_units~5_combout\,
	combout => \m_units~9_combout\);

-- Location: FF_X15_Y20_N15
\m_units[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_units~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_units(3));

-- Location: LCCOMB_X15_Y20_N0
\m_units~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_units~1_combout\ = ((\btn0_prev~q\) # (!\btn0_sync~q\)) # (!\sw0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datab => \btn0_prev~q\,
	datad => \btn0_sync~q\,
	combout => \m_units~1_combout\);

-- Location: LCCOMB_X15_Y20_N12
\m_units~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_units~6_combout\ = \m_units~5_combout\ $ (((\m_units~1_combout\ & m_units(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_units~1_combout\,
	datac => m_units(2),
	datad => \m_units~5_combout\,
	combout => \m_units~6_combout\);

-- Location: FF_X15_Y20_N13
\m_units[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_units~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_units(2));

-- Location: LCCOMB_X27_Y25_N26
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (m_units(1) & (!m_units(3))) # (!m_units(1) & (m_units(2) $ (((m_units(3) & !m_units(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_units(3),
	datab => m_units(0),
	datac => m_units(2),
	datad => m_units(1),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X27_Y25_N4
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (m_units(3) & (m_units(2) & (m_units(0) $ (!m_units(1))))) # (!m_units(3) & (((m_units(2)) # (m_units(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_units(3),
	datab => m_units(0),
	datac => m_units(2),
	datad => m_units(1),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X27_Y25_N14
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (m_units(2) & (!m_units(3))) # (!m_units(2) & (m_units(1) & ((m_units(0)) # (!m_units(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_units(3),
	datab => m_units(0),
	datac => m_units(2),
	datad => m_units(1),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X27_Y25_N24
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (m_units(1) & (((!m_units(0) & m_units(2))) # (!m_units(3)))) # (!m_units(1) & (m_units(2) $ (((m_units(3) & !m_units(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_units(3),
	datab => m_units(0),
	datac => m_units(2),
	datad => m_units(1),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X27_Y25_N10
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ((m_units(1) & (!m_units(3))) # (!m_units(1) & ((m_units(2))))) # (!m_units(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_units(3),
	datab => m_units(0),
	datac => m_units(2),
	datad => m_units(1),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X22_Y18_N8
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (m_units(0) & ((m_units(2) & ((!m_units(3)))) # (!m_units(2) & (m_units(1))))) # (!m_units(0) & ((m_units(1)) # (m_units(3) $ (m_units(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_units(1),
	datab => m_units(0),
	datac => m_units(3),
	datad => m_units(2),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X22_Y18_N18
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (m_units(1) & (m_units(3) & ((m_units(0)) # (!m_units(2))))) # (!m_units(1) & ((m_units(3) $ (!m_units(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_units(1),
	datab => m_units(0),
	datac => m_units(3),
	datad => m_units(2),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X27_Y25_N12
\m_tens~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tens~10_combout\ = (\m_units~1_combout\ & (m_tens(0) $ (((\m_tens~5_combout\ & \m_units~0_combout\))))) # (!\m_units~1_combout\ & (((!\m_units~0_combout\)) # (!\m_tens~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units~1_combout\,
	datab => \m_tens~5_combout\,
	datac => m_tens(0),
	datad => \m_units~0_combout\,
	combout => \m_tens~10_combout\);

-- Location: FF_X27_Y25_N13
\m_tens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_tens~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_tens(0));

-- Location: LCCOMB_X15_Y20_N20
\m_tens~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tens~8_combout\ = (m_tens(1) & (((\btn0_prev~q\) # (!\btn0_sync~q\)) # (!\sw0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datab => \btn0_prev~q\,
	datac => m_tens(1),
	datad => \btn0_sync~q\,
	combout => \m_tens~8_combout\);

-- Location: LCCOMB_X27_Y25_N22
\m_tens~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tens~9_combout\ = \m_tens~8_combout\ $ (((!\Mux21~1_combout\ & (m_tens(0) & \m_units~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~1_combout\,
	datab => m_tens(0),
	datac => \m_tens~8_combout\,
	datad => \m_units~7_combout\,
	combout => \m_tens~9_combout\);

-- Location: FF_X27_Y25_N23
\m_tens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_tens~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_tens(1));

-- Location: LCCOMB_X27_Y25_N30
\Mux21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (!m_tens(1) & m_tens(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m_tens(1),
	datad => m_tens(2),
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X23_Y20_N18
\m_tens~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tens~6_combout\ = (\m_tens~5_combout\ & (m_tens(0) & (\Mux21~1_combout\ & \m_units~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens~5_combout\,
	datab => m_tens(0),
	datac => \Mux21~1_combout\,
	datad => \m_units~0_combout\,
	combout => \m_tens~6_combout\);

-- Location: LCCOMB_X23_Y20_N14
\m_tens~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tens~7_combout\ = (\m_tens~11_combout\) # ((!\m_tens~6_combout\ & ((m_tens(2)) # (!\m_units~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens~11_combout\,
	datab => \m_units~1_combout\,
	datac => m_tens(2),
	datad => \m_tens~6_combout\,
	combout => \m_tens~7_combout\);

-- Location: FF_X23_Y20_N15
\m_tens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_tens~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_tens(2));

-- Location: LCCOMB_X27_Y25_N8
\Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!m_tens(1) & (m_tens(2) $ (m_tens(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_tens(2),
	datac => m_tens(1),
	datad => m_tens(0),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X27_Y25_N2
\Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (!m_tens(2) & (m_tens(1) $ (!m_tens(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_tens(2),
	datac => m_tens(1),
	datad => m_tens(0),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X27_Y25_N28
\Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (m_tens(2) & (m_tens(1) & m_tens(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_tens(2),
	datac => m_tens(1),
	datad => m_tens(0),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X27_Y25_N6
\Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (m_tens(2) & (!m_tens(1) & !m_tens(0))) # (!m_tens(2) & (m_tens(1) $ (m_tens(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_tens(2),
	datac => m_tens(1),
	datad => m_tens(0),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X27_Y25_N16
\Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ((!m_tens(2) & !m_tens(1))) # (!m_tens(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_tens(2),
	datac => m_tens(1),
	datad => m_tens(0),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X27_Y25_N18
\Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (m_tens(2) & ((m_tens(1)) # (!m_tens(0)))) # (!m_tens(2) & (m_tens(1) & !m_tens(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_tens(2),
	datac => m_tens(1),
	datad => m_tens(0),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X27_Y25_N20
\Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (m_tens(2) & (!m_tens(1))) # (!m_tens(2) & (m_tens(1) & !m_tens(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_tens(2),
	datac => m_tens(1),
	datad => m_tens(0),
	combout => \Mux21~0_combout\);

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex0(7) <= \hex0[7]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex1(7) <= \hex1[7]~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex2(4) <= \hex2[4]~output_o\;

ww_hex2(5) <= \hex2[5]~output_o\;

ww_hex2(6) <= \hex2[6]~output_o\;

ww_hex2(7) <= \hex2[7]~output_o\;

ww_hex3(0) <= \hex3[0]~output_o\;

ww_hex3(1) <= \hex3[1]~output_o\;

ww_hex3(2) <= \hex3[2]~output_o\;

ww_hex3(3) <= \hex3[3]~output_o\;

ww_hex3(4) <= \hex3[4]~output_o\;

ww_hex3(5) <= \hex3[5]~output_o\;

ww_hex3(6) <= \hex3[6]~output_o\;

ww_hex3(7) <= \hex3[7]~output_o\;
END structure;


