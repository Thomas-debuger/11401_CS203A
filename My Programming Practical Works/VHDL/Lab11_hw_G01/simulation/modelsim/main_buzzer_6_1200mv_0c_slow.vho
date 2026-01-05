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

-- DATE "12/05/2025 10:41:40"

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

ENTITY 	main_buzzer IS
    PORT (
	clk : IN std_logic;
	btn : IN std_logic_vector(0 TO 2);
	led : OUT std_logic_vector(0 TO 2);
	output : OUT std_logic
	);
END main_buzzer;

-- Design Ports Information
-- led[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF main_buzzer IS
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
SIGNAL ww_btn : std_logic_vector(0 TO 2);
SIGNAL ww_led : std_logic_vector(0 TO 2);
SIGNAL ww_output : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \buz_inst|Add0~2_combout\ : std_logic;
SIGNAL \buz_inst|Add0~4_combout\ : std_logic;
SIGNAL \buz_inst|Add0~8_combout\ : std_logic;
SIGNAL \buz_inst|Add0~16_combout\ : std_logic;
SIGNAL \buz_inst|Add0~20_combout\ : std_logic;
SIGNAL \buz_inst|Add0~24_combout\ : std_logic;
SIGNAL \buz_inst|cnt[3]~40_combout\ : std_logic;
SIGNAL \buz_inst|cnt[5]~44_combout\ : std_logic;
SIGNAL \buz_inst|cnt[21]~76_combout\ : std_logic;
SIGNAL \buz_inst|cnt[29]~93\ : std_logic;
SIGNAL \buz_inst|cnt[30]~94_combout\ : std_logic;
SIGNAL \buz_inst|cnt[30]~95\ : std_logic;
SIGNAL \buz_inst|cnt[31]~96_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~22_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~23_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~29_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~30_combout\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \output~output_o\ : std_logic;
SIGNAL \btn[2]~input_o\ : std_logic;
SIGNAL \btn[1]~input_o\ : std_logic;
SIGNAL \btn[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \buz_inst|cnt[0]~34_combout\ : std_logic;
SIGNAL \buz_inst|cnt[19]~98_combout\ : std_logic;
SIGNAL \buz_inst|cnt[0]~35\ : std_logic;
SIGNAL \buz_inst|cnt[1]~36_combout\ : std_logic;
SIGNAL \buz_inst|cnt[1]~37\ : std_logic;
SIGNAL \buz_inst|cnt[2]~38_combout\ : std_logic;
SIGNAL \buz_inst|cnt[2]~39\ : std_logic;
SIGNAL \buz_inst|cnt[3]~41\ : std_logic;
SIGNAL \buz_inst|cnt[4]~42_combout\ : std_logic;
SIGNAL \buz_inst|cnt[4]~43\ : std_logic;
SIGNAL \buz_inst|cnt[5]~45\ : std_logic;
SIGNAL \buz_inst|cnt[6]~47\ : std_logic;
SIGNAL \buz_inst|cnt[7]~48_combout\ : std_logic;
SIGNAL \buz_inst|cnt[7]~49\ : std_logic;
SIGNAL \buz_inst|cnt[8]~50_combout\ : std_logic;
SIGNAL \buz_inst|cnt[8]~51\ : std_logic;
SIGNAL \buz_inst|cnt[9]~52_combout\ : std_logic;
SIGNAL \buz_inst|cnt[9]~53\ : std_logic;
SIGNAL \buz_inst|cnt[10]~54_combout\ : std_logic;
SIGNAL \buz_inst|cnt[10]~55\ : std_logic;
SIGNAL \buz_inst|cnt[11]~57\ : std_logic;
SIGNAL \buz_inst|cnt[12]~58_combout\ : std_logic;
SIGNAL \buz_inst|cnt[12]~59\ : std_logic;
SIGNAL \buz_inst|cnt[13]~61\ : std_logic;
SIGNAL \buz_inst|cnt[14]~62_combout\ : std_logic;
SIGNAL \buz_inst|cnt[14]~63\ : std_logic;
SIGNAL \buz_inst|cnt[15]~65\ : std_logic;
SIGNAL \buz_inst|cnt[16]~66_combout\ : std_logic;
SIGNAL \buz_inst|cnt[16]~67\ : std_logic;
SIGNAL \buz_inst|cnt[17]~68_combout\ : std_logic;
SIGNAL \buz_inst|cnt[17]~69\ : std_logic;
SIGNAL \buz_inst|cnt[18]~70_combout\ : std_logic;
SIGNAL \buz_inst|cnt[18]~71\ : std_logic;
SIGNAL \buz_inst|cnt[19]~73\ : std_logic;
SIGNAL \buz_inst|cnt[20]~74_combout\ : std_logic;
SIGNAL \buz_inst|cnt[20]~75\ : std_logic;
SIGNAL \buz_inst|cnt[21]~77\ : std_logic;
SIGNAL \buz_inst|cnt[22]~79\ : std_logic;
SIGNAL \buz_inst|cnt[23]~80_combout\ : std_logic;
SIGNAL \buz_inst|cnt[23]~81\ : std_logic;
SIGNAL \buz_inst|cnt[24]~82_combout\ : std_logic;
SIGNAL \buz_inst|cnt[24]~83\ : std_logic;
SIGNAL \buz_inst|cnt[25]~84_combout\ : std_logic;
SIGNAL \buz_inst|cnt[25]~85\ : std_logic;
SIGNAL \buz_inst|cnt[26]~86_combout\ : std_logic;
SIGNAL \buz_inst|cnt[26]~87\ : std_logic;
SIGNAL \buz_inst|cnt[27]~89\ : std_logic;
SIGNAL \buz_inst|cnt[28]~90_combout\ : std_logic;
SIGNAL \buz_inst|cnt[28]~91\ : std_logic;
SIGNAL \buz_inst|cnt[29]~92_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \buz_inst|Add0~1_cout\ : std_logic;
SIGNAL \buz_inst|Add0~3\ : std_logic;
SIGNAL \buz_inst|Add0~5\ : std_logic;
SIGNAL \buz_inst|Add0~7\ : std_logic;
SIGNAL \buz_inst|Add0~9\ : std_logic;
SIGNAL \buz_inst|Add0~11\ : std_logic;
SIGNAL \buz_inst|Add0~13\ : std_logic;
SIGNAL \buz_inst|Add0~15\ : std_logic;
SIGNAL \buz_inst|Add0~17\ : std_logic;
SIGNAL \buz_inst|Add0~19\ : std_logic;
SIGNAL \buz_inst|Add0~21\ : std_logic;
SIGNAL \buz_inst|Add0~23\ : std_logic;
SIGNAL \buz_inst|Add0~25\ : std_logic;
SIGNAL \buz_inst|Add0~26_combout\ : std_logic;
SIGNAL \buz_inst|cnt[27]~88_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \buz_inst|cnt[22]~78_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \buz_inst|cnt[15]~64_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \buz_inst|cnt[19]~72_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \buz_inst|Add0~22_combout\ : std_logic;
SIGNAL \buz_inst|cnt[11]~56_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~9_combout\ : std_logic;
SIGNAL \buz_inst|cnt[13]~60_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~10_combout\ : std_logic;
SIGNAL \buz_inst|Add0~18_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~21_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~27_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~18_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~19_combout\ : std_logic;
SIGNAL \buz_inst|cnt[6]~46_combout\ : std_logic;
SIGNAL \buz_inst|Add0~12_combout\ : std_logic;
SIGNAL \buz_inst|Add0~10_combout\ : std_logic;
SIGNAL \buz_inst|Add0~6_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~11_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~12_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~13_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~14_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~15_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~16_combout\ : std_logic;
SIGNAL \buz_inst|Add0~14_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~17_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~20_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~28_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~24_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~25_combout\ : std_logic;
SIGNAL \buz_inst|LessThan0~26_combout\ : std_logic;
SIGNAL \buz_inst|out_s~0_combout\ : std_logic;
SIGNAL \buz_inst|out_s~q\ : std_logic;
SIGNAL \buz_inst|cnt\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_btn <= btn;
led <= ww_led;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: LCCOMB_X32_Y26_N2
\buz_inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|Add0~2_combout\ = (\Mux9~1_combout\ & (\buz_inst|Add0~1_cout\ & VCC)) # (!\Mux9~1_combout\ & (!\buz_inst|Add0~1_cout\))
-- \buz_inst|Add0~3\ = CARRY((!\Mux9~1_combout\ & !\buz_inst|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~1_combout\,
	datad => VCC,
	cin => \buz_inst|Add0~1_cout\,
	combout => \buz_inst|Add0~2_combout\,
	cout => \buz_inst|Add0~3\);

-- Location: LCCOMB_X32_Y26_N4
\buz_inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|Add0~4_combout\ = (\Mux8~0_combout\ & ((GND) # (!\buz_inst|Add0~3\))) # (!\Mux8~0_combout\ & (\buz_inst|Add0~3\ $ (GND)))
-- \buz_inst|Add0~5\ = CARRY((\Mux8~0_combout\) # (!\buz_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datad => VCC,
	cin => \buz_inst|Add0~3\,
	combout => \buz_inst|Add0~4_combout\,
	cout => \buz_inst|Add0~5\);

-- Location: LCCOMB_X32_Y26_N8
\buz_inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|Add0~8_combout\ = (\buz_inst|Add0~7\ & ((((\Mux6~0_combout\) # (!\btn[2]~input_o\))))) # (!\buz_inst|Add0~7\ & (((\Mux6~0_combout\) # (GND)) # (!\btn[2]~input_o\)))
-- \buz_inst|Add0~9\ = CARRY(((\Mux6~0_combout\) # (!\buz_inst|Add0~7\)) # (!\btn[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn[2]~input_o\,
	datab => \Mux6~0_combout\,
	datad => VCC,
	cin => \buz_inst|Add0~7\,
	combout => \buz_inst|Add0~8_combout\,
	cout => \buz_inst|Add0~9\);

-- Location: LCCOMB_X32_Y26_N16
\buz_inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|Add0~16_combout\ = (\buz_inst|Add0~15\ & ((((\Mux9~0_combout\) # (!\btn[0]~input_o\))))) # (!\buz_inst|Add0~15\ & ((\Mux9~0_combout\) # ((GND) # (!\btn[0]~input_o\))))
-- \buz_inst|Add0~17\ = CARRY((\Mux9~0_combout\) # ((!\buz_inst|Add0~15\) # (!\btn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \btn[0]~input_o\,
	datad => VCC,
	cin => \buz_inst|Add0~15\,
	combout => \buz_inst|Add0~16_combout\,
	cout => \buz_inst|Add0~17\);

-- Location: LCCOMB_X32_Y26_N20
\buz_inst|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|Add0~20_combout\ = \buz_inst|Add0~19\ $ (GND)
-- \buz_inst|Add0~21\ = CARRY(!\buz_inst|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \buz_inst|Add0~19\,
	combout => \buz_inst|Add0~20_combout\,
	cout => \buz_inst|Add0~21\);

-- Location: LCCOMB_X32_Y26_N24
\buz_inst|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|Add0~24_combout\ = \buz_inst|Add0~23\ $ (GND)
-- \buz_inst|Add0~25\ = CARRY(!\buz_inst|Add0~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \buz_inst|Add0~23\,
	combout => \buz_inst|Add0~24_combout\,
	cout => \buz_inst|Add0~25\);

-- Location: FF_X33_Y27_N31
\buz_inst|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[31]~96_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(31));

-- Location: FF_X33_Y27_N29
\buz_inst|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[30]~94_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(30));

-- Location: FF_X33_Y27_N11
\buz_inst|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[21]~76_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(21));

-- Location: FF_X33_Y28_N11
\buz_inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[5]~44_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(5));

-- Location: FF_X33_Y28_N7
\buz_inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[3]~40_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(3));

-- Location: LCCOMB_X33_Y28_N6
\buz_inst|cnt[3]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[3]~40_combout\ = (\buz_inst|cnt\(3) & (!\buz_inst|cnt[2]~39\)) # (!\buz_inst|cnt\(3) & ((\buz_inst|cnt[2]~39\) # (GND)))
-- \buz_inst|cnt[3]~41\ = CARRY((!\buz_inst|cnt[2]~39\) # (!\buz_inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(3),
	datad => VCC,
	cin => \buz_inst|cnt[2]~39\,
	combout => \buz_inst|cnt[3]~40_combout\,
	cout => \buz_inst|cnt[3]~41\);

-- Location: LCCOMB_X33_Y28_N10
\buz_inst|cnt[5]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[5]~44_combout\ = (\buz_inst|cnt\(5) & (!\buz_inst|cnt[4]~43\)) # (!\buz_inst|cnt\(5) & ((\buz_inst|cnt[4]~43\) # (GND)))
-- \buz_inst|cnt[5]~45\ = CARRY((!\buz_inst|cnt[4]~43\) # (!\buz_inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(5),
	datad => VCC,
	cin => \buz_inst|cnt[4]~43\,
	combout => \buz_inst|cnt[5]~44_combout\,
	cout => \buz_inst|cnt[5]~45\);

-- Location: LCCOMB_X33_Y27_N10
\buz_inst|cnt[21]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[21]~76_combout\ = (\buz_inst|cnt\(21) & (!\buz_inst|cnt[20]~75\)) # (!\buz_inst|cnt\(21) & ((\buz_inst|cnt[20]~75\) # (GND)))
-- \buz_inst|cnt[21]~77\ = CARRY((!\buz_inst|cnt[20]~75\) # (!\buz_inst|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(21),
	datad => VCC,
	cin => \buz_inst|cnt[20]~75\,
	combout => \buz_inst|cnt[21]~76_combout\,
	cout => \buz_inst|cnt[21]~77\);

-- Location: LCCOMB_X33_Y27_N26
\buz_inst|cnt[29]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[29]~92_combout\ = (\buz_inst|cnt\(29) & (!\buz_inst|cnt[28]~91\)) # (!\buz_inst|cnt\(29) & ((\buz_inst|cnt[28]~91\) # (GND)))
-- \buz_inst|cnt[29]~93\ = CARRY((!\buz_inst|cnt[28]~91\) # (!\buz_inst|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(29),
	datad => VCC,
	cin => \buz_inst|cnt[28]~91\,
	combout => \buz_inst|cnt[29]~92_combout\,
	cout => \buz_inst|cnt[29]~93\);

-- Location: LCCOMB_X33_Y27_N28
\buz_inst|cnt[30]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[30]~94_combout\ = (\buz_inst|cnt\(30) & (\buz_inst|cnt[29]~93\ $ (GND))) # (!\buz_inst|cnt\(30) & (!\buz_inst|cnt[29]~93\ & VCC))
-- \buz_inst|cnt[30]~95\ = CARRY((\buz_inst|cnt\(30) & !\buz_inst|cnt[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(30),
	datad => VCC,
	cin => \buz_inst|cnt[29]~93\,
	combout => \buz_inst|cnt[30]~94_combout\,
	cout => \buz_inst|cnt[30]~95\);

-- Location: LCCOMB_X33_Y27_N30
\buz_inst|cnt[31]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[31]~96_combout\ = \buz_inst|cnt\(31) $ (\buz_inst|cnt[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(31),
	cin => \buz_inst|cnt[30]~95\,
	combout => \buz_inst|cnt[31]~96_combout\);

-- Location: LCCOMB_X31_Y28_N8
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\btn[2]~input_o\ & (\btn[1]~input_o\ & \btn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[2]~input_o\,
	datab => \btn[1]~input_o\,
	datad => \btn[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X35_Y25_N24
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\btn[2]~input_o\ & !\btn[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[2]~input_o\,
	datad => \btn[1]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X32_Y26_N30
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\btn[0]~input_o\ & (\btn[1]~input_o\ $ (\btn[2]~input_o\))) # (!\btn[0]~input_o\ & (\btn[1]~input_o\ & \btn[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn[0]~input_o\,
	datac => \btn[1]~input_o\,
	datad => \btn[2]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X32_Y28_N12
\buz_inst|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~4_combout\ = (\buz_inst|Add0~26_combout\ & (\buz_inst|cnt\(26) & (\buz_inst|cnt\(27) & \buz_inst|cnt\(25)))) # (!\buz_inst|Add0~26_combout\ & (!\buz_inst|cnt\(26) & (!\buz_inst|cnt\(27) & !\buz_inst|cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|Add0~26_combout\,
	datab => \buz_inst|cnt\(26),
	datac => \buz_inst|cnt\(27),
	datad => \buz_inst|cnt\(25),
	combout => \buz_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y28_N16
\buz_inst|LessThan0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~22_combout\ = (((!\buz_inst|cnt\(18)) # (!\buz_inst|cnt\(19))) # (!\buz_inst|cnt\(20))) # (!\buz_inst|cnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(21),
	datab => \buz_inst|cnt\(20),
	datac => \buz_inst|cnt\(19),
	datad => \buz_inst|cnt\(18),
	combout => \buz_inst|LessThan0~22_combout\);

-- Location: LCCOMB_X32_Y28_N2
\buz_inst|LessThan0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~23_combout\ = ((\buz_inst|LessThan0~22_combout\) # ((!\buz_inst|cnt\(16)) # (!\buz_inst|cnt\(15)))) # (!\buz_inst|cnt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(17),
	datab => \buz_inst|LessThan0~22_combout\,
	datac => \buz_inst|cnt\(15),
	datad => \buz_inst|cnt\(16),
	combout => \buz_inst|LessThan0~23_combout\);

-- Location: LCCOMB_X32_Y28_N4
\buz_inst|LessThan0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~29_combout\ = (\buz_inst|Add0~24_combout\ & (((\buz_inst|Add0~22_combout\ & !\buz_inst|cnt\(11))) # (!\buz_inst|cnt\(12)))) # (!\buz_inst|Add0~24_combout\ & (\buz_inst|Add0~22_combout\ & (!\buz_inst|cnt\(11) & !\buz_inst|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|Add0~24_combout\,
	datab => \buz_inst|Add0~22_combout\,
	datac => \buz_inst|cnt\(11),
	datad => \buz_inst|cnt\(12),
	combout => \buz_inst|LessThan0~29_combout\);

-- Location: LCCOMB_X32_Y28_N30
\buz_inst|LessThan0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~30_combout\ = (\buz_inst|Add0~26_combout\ & (((\buz_inst|LessThan0~29_combout\) # (!\buz_inst|cnt\(13))) # (!\buz_inst|cnt\(14)))) # (!\buz_inst|Add0~26_combout\ & (!\buz_inst|cnt\(14) & (\buz_inst|LessThan0~29_combout\ & 
-- !\buz_inst|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|Add0~26_combout\,
	datab => \buz_inst|cnt\(14),
	datac => \buz_inst|LessThan0~29_combout\,
	datad => \buz_inst|cnt\(13),
	combout => \buz_inst|LessThan0~30_combout\);

-- Location: IOOBUF_X0_Y21_N23
\led[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \btn[2]~input_o\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \btn[1]~input_o\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\led[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \btn[0]~input_o\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\output~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buz_inst|out_s~q\,
	devoe => ww_devoe,
	o => \output~output_o\);

-- Location: IOIBUF_X0_Y23_N1
\btn[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn(2),
	o => \btn[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\btn[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn(1),
	o => \btn[1]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\btn[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn(0),
	o => \btn[0]~input_o\);

-- Location: IOIBUF_X19_Y29_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G12
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

-- Location: LCCOMB_X33_Y28_N0
\buz_inst|cnt[0]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[0]~34_combout\ = \buz_inst|cnt\(0) $ (VCC)
-- \buz_inst|cnt[0]~35\ = CARRY(\buz_inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(0),
	datad => VCC,
	combout => \buz_inst|cnt[0]~34_combout\,
	cout => \buz_inst|cnt[0]~35\);

-- Location: LCCOMB_X31_Y28_N30
\buz_inst|cnt[19]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[19]~98_combout\ = ((\btn[0]~input_o\ & (\btn[1]~input_o\ & \btn[2]~input_o\))) # (!\buz_inst|LessThan0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[0]~input_o\,
	datab => \btn[1]~input_o\,
	datac => \btn[2]~input_o\,
	datad => \buz_inst|LessThan0~26_combout\,
	combout => \buz_inst|cnt[19]~98_combout\);

-- Location: FF_X33_Y28_N1
\buz_inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[0]~34_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(0));

-- Location: LCCOMB_X33_Y28_N2
\buz_inst|cnt[1]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[1]~36_combout\ = (\buz_inst|cnt\(1) & (!\buz_inst|cnt[0]~35\)) # (!\buz_inst|cnt\(1) & ((\buz_inst|cnt[0]~35\) # (GND)))
-- \buz_inst|cnt[1]~37\ = CARRY((!\buz_inst|cnt[0]~35\) # (!\buz_inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(1),
	datad => VCC,
	cin => \buz_inst|cnt[0]~35\,
	combout => \buz_inst|cnt[1]~36_combout\,
	cout => \buz_inst|cnt[1]~37\);

-- Location: FF_X33_Y28_N3
\buz_inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[1]~36_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(1));

-- Location: LCCOMB_X33_Y28_N4
\buz_inst|cnt[2]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[2]~38_combout\ = (\buz_inst|cnt\(2) & (\buz_inst|cnt[1]~37\ $ (GND))) # (!\buz_inst|cnt\(2) & (!\buz_inst|cnt[1]~37\ & VCC))
-- \buz_inst|cnt[2]~39\ = CARRY((\buz_inst|cnt\(2) & !\buz_inst|cnt[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(2),
	datad => VCC,
	cin => \buz_inst|cnt[1]~37\,
	combout => \buz_inst|cnt[2]~38_combout\,
	cout => \buz_inst|cnt[2]~39\);

-- Location: FF_X33_Y28_N5
\buz_inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[2]~38_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(2));

-- Location: LCCOMB_X33_Y28_N8
\buz_inst|cnt[4]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[4]~42_combout\ = (\buz_inst|cnt\(4) & (\buz_inst|cnt[3]~41\ $ (GND))) # (!\buz_inst|cnt\(4) & (!\buz_inst|cnt[3]~41\ & VCC))
-- \buz_inst|cnt[4]~43\ = CARRY((\buz_inst|cnt\(4) & !\buz_inst|cnt[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(4),
	datad => VCC,
	cin => \buz_inst|cnt[3]~41\,
	combout => \buz_inst|cnt[4]~42_combout\,
	cout => \buz_inst|cnt[4]~43\);

-- Location: FF_X33_Y28_N9
\buz_inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[4]~42_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(4));

-- Location: LCCOMB_X33_Y28_N12
\buz_inst|cnt[6]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[6]~46_combout\ = (\buz_inst|cnt\(6) & (\buz_inst|cnt[5]~45\ $ (GND))) # (!\buz_inst|cnt\(6) & (!\buz_inst|cnt[5]~45\ & VCC))
-- \buz_inst|cnt[6]~47\ = CARRY((\buz_inst|cnt\(6) & !\buz_inst|cnt[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(6),
	datad => VCC,
	cin => \buz_inst|cnt[5]~45\,
	combout => \buz_inst|cnt[6]~46_combout\,
	cout => \buz_inst|cnt[6]~47\);

-- Location: LCCOMB_X33_Y28_N14
\buz_inst|cnt[7]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[7]~48_combout\ = (\buz_inst|cnt\(7) & (!\buz_inst|cnt[6]~47\)) # (!\buz_inst|cnt\(7) & ((\buz_inst|cnt[6]~47\) # (GND)))
-- \buz_inst|cnt[7]~49\ = CARRY((!\buz_inst|cnt[6]~47\) # (!\buz_inst|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(7),
	datad => VCC,
	cin => \buz_inst|cnt[6]~47\,
	combout => \buz_inst|cnt[7]~48_combout\,
	cout => \buz_inst|cnt[7]~49\);

-- Location: FF_X33_Y28_N15
\buz_inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[7]~48_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(7));

-- Location: LCCOMB_X33_Y28_N16
\buz_inst|cnt[8]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[8]~50_combout\ = (\buz_inst|cnt\(8) & (\buz_inst|cnt[7]~49\ $ (GND))) # (!\buz_inst|cnt\(8) & (!\buz_inst|cnt[7]~49\ & VCC))
-- \buz_inst|cnt[8]~51\ = CARRY((\buz_inst|cnt\(8) & !\buz_inst|cnt[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(8),
	datad => VCC,
	cin => \buz_inst|cnt[7]~49\,
	combout => \buz_inst|cnt[8]~50_combout\,
	cout => \buz_inst|cnt[8]~51\);

-- Location: FF_X33_Y28_N17
\buz_inst|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[8]~50_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(8));

-- Location: LCCOMB_X33_Y28_N18
\buz_inst|cnt[9]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[9]~52_combout\ = (\buz_inst|cnt\(9) & (!\buz_inst|cnt[8]~51\)) # (!\buz_inst|cnt\(9) & ((\buz_inst|cnt[8]~51\) # (GND)))
-- \buz_inst|cnt[9]~53\ = CARRY((!\buz_inst|cnt[8]~51\) # (!\buz_inst|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(9),
	datad => VCC,
	cin => \buz_inst|cnt[8]~51\,
	combout => \buz_inst|cnt[9]~52_combout\,
	cout => \buz_inst|cnt[9]~53\);

-- Location: FF_X33_Y28_N19
\buz_inst|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[9]~52_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(9));

-- Location: LCCOMB_X33_Y28_N20
\buz_inst|cnt[10]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[10]~54_combout\ = (\buz_inst|cnt\(10) & (\buz_inst|cnt[9]~53\ $ (GND))) # (!\buz_inst|cnt\(10) & (!\buz_inst|cnt[9]~53\ & VCC))
-- \buz_inst|cnt[10]~55\ = CARRY((\buz_inst|cnt\(10) & !\buz_inst|cnt[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(10),
	datad => VCC,
	cin => \buz_inst|cnt[9]~53\,
	combout => \buz_inst|cnt[10]~54_combout\,
	cout => \buz_inst|cnt[10]~55\);

-- Location: FF_X33_Y28_N21
\buz_inst|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[10]~54_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(10));

-- Location: LCCOMB_X33_Y28_N22
\buz_inst|cnt[11]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[11]~56_combout\ = (\buz_inst|cnt\(11) & (!\buz_inst|cnt[10]~55\)) # (!\buz_inst|cnt\(11) & ((\buz_inst|cnt[10]~55\) # (GND)))
-- \buz_inst|cnt[11]~57\ = CARRY((!\buz_inst|cnt[10]~55\) # (!\buz_inst|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(11),
	datad => VCC,
	cin => \buz_inst|cnt[10]~55\,
	combout => \buz_inst|cnt[11]~56_combout\,
	cout => \buz_inst|cnt[11]~57\);

-- Location: LCCOMB_X33_Y28_N24
\buz_inst|cnt[12]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[12]~58_combout\ = (\buz_inst|cnt\(12) & (\buz_inst|cnt[11]~57\ $ (GND))) # (!\buz_inst|cnt\(12) & (!\buz_inst|cnt[11]~57\ & VCC))
-- \buz_inst|cnt[12]~59\ = CARRY((\buz_inst|cnt\(12) & !\buz_inst|cnt[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(12),
	datad => VCC,
	cin => \buz_inst|cnt[11]~57\,
	combout => \buz_inst|cnt[12]~58_combout\,
	cout => \buz_inst|cnt[12]~59\);

-- Location: FF_X33_Y28_N25
\buz_inst|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[12]~58_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(12));

-- Location: LCCOMB_X33_Y28_N26
\buz_inst|cnt[13]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[13]~60_combout\ = (\buz_inst|cnt\(13) & (!\buz_inst|cnt[12]~59\)) # (!\buz_inst|cnt\(13) & ((\buz_inst|cnt[12]~59\) # (GND)))
-- \buz_inst|cnt[13]~61\ = CARRY((!\buz_inst|cnt[12]~59\) # (!\buz_inst|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(13),
	datad => VCC,
	cin => \buz_inst|cnt[12]~59\,
	combout => \buz_inst|cnt[13]~60_combout\,
	cout => \buz_inst|cnt[13]~61\);

-- Location: LCCOMB_X33_Y28_N28
\buz_inst|cnt[14]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[14]~62_combout\ = (\buz_inst|cnt\(14) & (\buz_inst|cnt[13]~61\ $ (GND))) # (!\buz_inst|cnt\(14) & (!\buz_inst|cnt[13]~61\ & VCC))
-- \buz_inst|cnt[14]~63\ = CARRY((\buz_inst|cnt\(14) & !\buz_inst|cnt[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(14),
	datad => VCC,
	cin => \buz_inst|cnt[13]~61\,
	combout => \buz_inst|cnt[14]~62_combout\,
	cout => \buz_inst|cnt[14]~63\);

-- Location: FF_X33_Y28_N29
\buz_inst|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[14]~62_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(14));

-- Location: LCCOMB_X33_Y28_N30
\buz_inst|cnt[15]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[15]~64_combout\ = (\buz_inst|cnt\(15) & (!\buz_inst|cnt[14]~63\)) # (!\buz_inst|cnt\(15) & ((\buz_inst|cnt[14]~63\) # (GND)))
-- \buz_inst|cnt[15]~65\ = CARRY((!\buz_inst|cnt[14]~63\) # (!\buz_inst|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(15),
	datad => VCC,
	cin => \buz_inst|cnt[14]~63\,
	combout => \buz_inst|cnt[15]~64_combout\,
	cout => \buz_inst|cnt[15]~65\);

-- Location: LCCOMB_X33_Y27_N0
\buz_inst|cnt[16]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[16]~66_combout\ = (\buz_inst|cnt\(16) & (\buz_inst|cnt[15]~65\ $ (GND))) # (!\buz_inst|cnt\(16) & (!\buz_inst|cnt[15]~65\ & VCC))
-- \buz_inst|cnt[16]~67\ = CARRY((\buz_inst|cnt\(16) & !\buz_inst|cnt[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(16),
	datad => VCC,
	cin => \buz_inst|cnt[15]~65\,
	combout => \buz_inst|cnt[16]~66_combout\,
	cout => \buz_inst|cnt[16]~67\);

-- Location: FF_X33_Y27_N1
\buz_inst|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[16]~66_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(16));

-- Location: LCCOMB_X33_Y27_N2
\buz_inst|cnt[17]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[17]~68_combout\ = (\buz_inst|cnt\(17) & (!\buz_inst|cnt[16]~67\)) # (!\buz_inst|cnt\(17) & ((\buz_inst|cnt[16]~67\) # (GND)))
-- \buz_inst|cnt[17]~69\ = CARRY((!\buz_inst|cnt[16]~67\) # (!\buz_inst|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(17),
	datad => VCC,
	cin => \buz_inst|cnt[16]~67\,
	combout => \buz_inst|cnt[17]~68_combout\,
	cout => \buz_inst|cnt[17]~69\);

-- Location: FF_X33_Y27_N3
\buz_inst|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[17]~68_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(17));

-- Location: LCCOMB_X33_Y27_N4
\buz_inst|cnt[18]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[18]~70_combout\ = (\buz_inst|cnt\(18) & (\buz_inst|cnt[17]~69\ $ (GND))) # (!\buz_inst|cnt\(18) & (!\buz_inst|cnt[17]~69\ & VCC))
-- \buz_inst|cnt[18]~71\ = CARRY((\buz_inst|cnt\(18) & !\buz_inst|cnt[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(18),
	datad => VCC,
	cin => \buz_inst|cnt[17]~69\,
	combout => \buz_inst|cnt[18]~70_combout\,
	cout => \buz_inst|cnt[18]~71\);

-- Location: FF_X33_Y27_N5
\buz_inst|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[18]~70_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(18));

-- Location: LCCOMB_X33_Y27_N6
\buz_inst|cnt[19]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[19]~72_combout\ = (\buz_inst|cnt\(19) & (!\buz_inst|cnt[18]~71\)) # (!\buz_inst|cnt\(19) & ((\buz_inst|cnt[18]~71\) # (GND)))
-- \buz_inst|cnt[19]~73\ = CARRY((!\buz_inst|cnt[18]~71\) # (!\buz_inst|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(19),
	datad => VCC,
	cin => \buz_inst|cnt[18]~71\,
	combout => \buz_inst|cnt[19]~72_combout\,
	cout => \buz_inst|cnt[19]~73\);

-- Location: LCCOMB_X33_Y27_N8
\buz_inst|cnt[20]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[20]~74_combout\ = (\buz_inst|cnt\(20) & (\buz_inst|cnt[19]~73\ $ (GND))) # (!\buz_inst|cnt\(20) & (!\buz_inst|cnt[19]~73\ & VCC))
-- \buz_inst|cnt[20]~75\ = CARRY((\buz_inst|cnt\(20) & !\buz_inst|cnt[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(20),
	datad => VCC,
	cin => \buz_inst|cnt[19]~73\,
	combout => \buz_inst|cnt[20]~74_combout\,
	cout => \buz_inst|cnt[20]~75\);

-- Location: FF_X33_Y27_N9
\buz_inst|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[20]~74_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(20));

-- Location: LCCOMB_X33_Y27_N12
\buz_inst|cnt[22]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[22]~78_combout\ = (\buz_inst|cnt\(22) & (\buz_inst|cnt[21]~77\ $ (GND))) # (!\buz_inst|cnt\(22) & (!\buz_inst|cnt[21]~77\ & VCC))
-- \buz_inst|cnt[22]~79\ = CARRY((\buz_inst|cnt\(22) & !\buz_inst|cnt[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(22),
	datad => VCC,
	cin => \buz_inst|cnt[21]~77\,
	combout => \buz_inst|cnt[22]~78_combout\,
	cout => \buz_inst|cnt[22]~79\);

-- Location: LCCOMB_X33_Y27_N14
\buz_inst|cnt[23]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[23]~80_combout\ = (\buz_inst|cnt\(23) & (!\buz_inst|cnt[22]~79\)) # (!\buz_inst|cnt\(23) & ((\buz_inst|cnt[22]~79\) # (GND)))
-- \buz_inst|cnt[23]~81\ = CARRY((!\buz_inst|cnt[22]~79\) # (!\buz_inst|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(23),
	datad => VCC,
	cin => \buz_inst|cnt[22]~79\,
	combout => \buz_inst|cnt[23]~80_combout\,
	cout => \buz_inst|cnt[23]~81\);

-- Location: FF_X33_Y27_N15
\buz_inst|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[23]~80_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(23));

-- Location: LCCOMB_X33_Y27_N16
\buz_inst|cnt[24]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[24]~82_combout\ = (\buz_inst|cnt\(24) & (\buz_inst|cnt[23]~81\ $ (GND))) # (!\buz_inst|cnt\(24) & (!\buz_inst|cnt[23]~81\ & VCC))
-- \buz_inst|cnt[24]~83\ = CARRY((\buz_inst|cnt\(24) & !\buz_inst|cnt[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(24),
	datad => VCC,
	cin => \buz_inst|cnt[23]~81\,
	combout => \buz_inst|cnt[24]~82_combout\,
	cout => \buz_inst|cnt[24]~83\);

-- Location: FF_X33_Y27_N17
\buz_inst|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[24]~82_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(24));

-- Location: LCCOMB_X33_Y27_N18
\buz_inst|cnt[25]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[25]~84_combout\ = (\buz_inst|cnt\(25) & (!\buz_inst|cnt[24]~83\)) # (!\buz_inst|cnt\(25) & ((\buz_inst|cnt[24]~83\) # (GND)))
-- \buz_inst|cnt[25]~85\ = CARRY((!\buz_inst|cnt[24]~83\) # (!\buz_inst|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(25),
	datad => VCC,
	cin => \buz_inst|cnt[24]~83\,
	combout => \buz_inst|cnt[25]~84_combout\,
	cout => \buz_inst|cnt[25]~85\);

-- Location: FF_X33_Y27_N19
\buz_inst|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[25]~84_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(25));

-- Location: LCCOMB_X33_Y27_N20
\buz_inst|cnt[26]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[26]~86_combout\ = (\buz_inst|cnt\(26) & (\buz_inst|cnt[25]~85\ $ (GND))) # (!\buz_inst|cnt\(26) & (!\buz_inst|cnt[25]~85\ & VCC))
-- \buz_inst|cnt[26]~87\ = CARRY((\buz_inst|cnt\(26) & !\buz_inst|cnt[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(26),
	datad => VCC,
	cin => \buz_inst|cnt[25]~85\,
	combout => \buz_inst|cnt[26]~86_combout\,
	cout => \buz_inst|cnt[26]~87\);

-- Location: FF_X33_Y27_N21
\buz_inst|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[26]~86_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(26));

-- Location: LCCOMB_X33_Y27_N22
\buz_inst|cnt[27]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[27]~88_combout\ = (\buz_inst|cnt\(27) & (!\buz_inst|cnt[26]~87\)) # (!\buz_inst|cnt\(27) & ((\buz_inst|cnt[26]~87\) # (GND)))
-- \buz_inst|cnt[27]~89\ = CARRY((!\buz_inst|cnt[26]~87\) # (!\buz_inst|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(27),
	datad => VCC,
	cin => \buz_inst|cnt[26]~87\,
	combout => \buz_inst|cnt[27]~88_combout\,
	cout => \buz_inst|cnt[27]~89\);

-- Location: LCCOMB_X33_Y27_N24
\buz_inst|cnt[28]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|cnt[28]~90_combout\ = (\buz_inst|cnt\(28) & (\buz_inst|cnt[27]~89\ $ (GND))) # (!\buz_inst|cnt\(28) & (!\buz_inst|cnt[27]~89\ & VCC))
-- \buz_inst|cnt[28]~91\ = CARRY((\buz_inst|cnt\(28) & !\buz_inst|cnt[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(28),
	datad => VCC,
	cin => \buz_inst|cnt[27]~89\,
	combout => \buz_inst|cnt[28]~90_combout\,
	cout => \buz_inst|cnt[28]~91\);

-- Location: FF_X33_Y27_N25
\buz_inst|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[28]~90_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(28));

-- Location: FF_X33_Y27_N27
\buz_inst|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[29]~92_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(29));

-- Location: LCCOMB_X35_Y25_N2
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\btn[2]~input_o\ & \btn[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn[2]~input_o\,
	datad => \btn[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X35_Y25_N4
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\btn[1]~input_o\ & \btn[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn[1]~input_o\,
	datad => \btn[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X35_Y25_N6
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = \btn[1]~input_o\ $ (\btn[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn[1]~input_o\,
	datad => \btn[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X35_Y25_N0
\Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (!\btn[2]~input_o\ & (!\btn[1]~input_o\ & !\btn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[2]~input_o\,
	datab => \btn[1]~input_o\,
	datad => \btn[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X32_Y26_N0
\buz_inst|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|Add0~1_cout\ = CARRY(!\Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datad => VCC,
	cout => \buz_inst|Add0~1_cout\);

-- Location: LCCOMB_X32_Y26_N6
\buz_inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|Add0~6_combout\ = (\buz_inst|Add0~5\ & (((\Mux9~0_combout\) # (!\btn[0]~input_o\)))) # (!\buz_inst|Add0~5\ & (!\Mux9~0_combout\ & (\btn[0]~input_o\)))
-- \buz_inst|Add0~7\ = CARRY((!\Mux9~0_combout\ & (\btn[0]~input_o\ & !\buz_inst|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \btn[0]~input_o\,
	datad => VCC,
	cin => \buz_inst|Add0~5\,
	combout => \buz_inst|Add0~6_combout\,
	cout => \buz_inst|Add0~7\);

-- Location: LCCOMB_X32_Y26_N10
\buz_inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|Add0~10_combout\ = (\btn[2]~input_o\ & ((\Mux5~0_combout\ & (\buz_inst|Add0~9\ & VCC)) # (!\Mux5~0_combout\ & (!\buz_inst|Add0~9\)))) # (!\btn[2]~input_o\ & (((!\buz_inst|Add0~9\))))
-- \buz_inst|Add0~11\ = CARRY((!\buz_inst|Add0~9\ & ((!\Mux5~0_combout\) # (!\btn[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn[2]~input_o\,
	datab => \Mux5~0_combout\,
	datad => VCC,
	cin => \buz_inst|Add0~9\,
	combout => \buz_inst|Add0~10_combout\,
	cout => \buz_inst|Add0~11\);

-- Location: LCCOMB_X32_Y26_N12
\buz_inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|Add0~12_combout\ = (\buz_inst|Add0~11\ & (\btn[2]~input_o\ $ (\Mux6~0_combout\ $ (GND)))) # (!\buz_inst|Add0~11\ & ((\btn[2]~input_o\ $ (!\Mux6~0_combout\)) # (GND)))
-- \buz_inst|Add0~13\ = CARRY((\btn[2]~input_o\ $ (!\Mux6~0_combout\)) # (!\buz_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn[2]~input_o\,
	datab => \Mux6~0_combout\,
	datad => VCC,
	cin => \buz_inst|Add0~11\,
	combout => \buz_inst|Add0~12_combout\,
	cout => \buz_inst|Add0~13\);

-- Location: LCCOMB_X32_Y26_N14
\buz_inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|Add0~14_combout\ = (\buz_inst|Add0~13\ & ((\btn[1]~input_o\ $ (!\Mux3~0_combout\)))) # (!\buz_inst|Add0~13\ & (\btn[1]~input_o\ $ ((\Mux3~0_combout\))))
-- \buz_inst|Add0~15\ = CARRY((!\buz_inst|Add0~13\ & (\btn[1]~input_o\ $ (\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn[1]~input_o\,
	datab => \Mux3~0_combout\,
	datad => VCC,
	cin => \buz_inst|Add0~13\,
	combout => \buz_inst|Add0~14_combout\,
	cout => \buz_inst|Add0~15\);

-- Location: LCCOMB_X32_Y26_N18
\buz_inst|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|Add0~18_combout\ = !\buz_inst|Add0~17\
-- \buz_inst|Add0~19\ = CARRY(!\buz_inst|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \buz_inst|Add0~17\,
	combout => \buz_inst|Add0~18_combout\,
	cout => \buz_inst|Add0~19\);

-- Location: LCCOMB_X32_Y26_N22
\buz_inst|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|Add0~22_combout\ = (\Mux1~0_combout\ & (!\buz_inst|Add0~21\)) # (!\Mux1~0_combout\ & (\buz_inst|Add0~21\ & VCC))
-- \buz_inst|Add0~23\ = CARRY((\Mux1~0_combout\ & !\buz_inst|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datad => VCC,
	cin => \buz_inst|Add0~21\,
	combout => \buz_inst|Add0~22_combout\,
	cout => \buz_inst|Add0~23\);

-- Location: LCCOMB_X32_Y26_N26
\buz_inst|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|Add0~26_combout\ = !\buz_inst|Add0~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \buz_inst|Add0~25\,
	combout => \buz_inst|Add0~26_combout\);

-- Location: FF_X33_Y27_N23
\buz_inst|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[27]~88_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(27));

-- Location: LCCOMB_X32_Y28_N0
\buz_inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~0_combout\ = (((!\buz_inst|cnt\(25)) # (!\buz_inst|cnt\(27))) # (!\buz_inst|cnt\(28))) # (!\buz_inst|cnt\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(26),
	datab => \buz_inst|cnt\(28),
	datac => \buz_inst|cnt\(27),
	datad => \buz_inst|cnt\(25),
	combout => \buz_inst|LessThan0~0_combout\);

-- Location: FF_X33_Y27_N13
\buz_inst|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[22]~78_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(22));

-- Location: LCCOMB_X36_Y24_N0
\buz_inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~1_combout\ = ((!\buz_inst|cnt\(23)) # (!\buz_inst|cnt\(22))) # (!\buz_inst|cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(24),
	datac => \buz_inst|cnt\(22),
	datad => \buz_inst|cnt\(23),
	combout => \buz_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y24_N10
\buz_inst|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~2_combout\ = (\buz_inst|Add0~26_combout\ & ((\buz_inst|LessThan0~0_combout\) # (\buz_inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|Add0~26_combout\,
	datac => \buz_inst|LessThan0~0_combout\,
	datad => \buz_inst|LessThan0~1_combout\,
	combout => \buz_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y28_N26
\buz_inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~3_combout\ = (\buz_inst|cnt\(24) & (\buz_inst|Add0~26_combout\ & (\buz_inst|cnt\(22) & \buz_inst|cnt\(23)))) # (!\buz_inst|cnt\(24) & (!\buz_inst|Add0~26_combout\ & (!\buz_inst|cnt\(22) & !\buz_inst|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(24),
	datab => \buz_inst|Add0~26_combout\,
	datac => \buz_inst|cnt\(22),
	datad => \buz_inst|cnt\(23),
	combout => \buz_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y28_N14
\buz_inst|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~5_combout\ = (\buz_inst|LessThan0~4_combout\ & (\buz_inst|LessThan0~3_combout\ & (\buz_inst|Add0~26_combout\ $ (!\buz_inst|cnt\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|LessThan0~4_combout\,
	datab => \buz_inst|Add0~26_combout\,
	datac => \buz_inst|LessThan0~3_combout\,
	datad => \buz_inst|cnt\(28),
	combout => \buz_inst|LessThan0~5_combout\);

-- Location: FF_X33_Y28_N31
\buz_inst|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[15]~64_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(15));

-- Location: LCCOMB_X32_Y28_N24
\buz_inst|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~6_combout\ = (\buz_inst|cnt\(17) & (\buz_inst|Add0~26_combout\ & (\buz_inst|cnt\(15) & \buz_inst|cnt\(16)))) # (!\buz_inst|cnt\(17) & (!\buz_inst|Add0~26_combout\ & (!\buz_inst|cnt\(15) & !\buz_inst|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(17),
	datab => \buz_inst|Add0~26_combout\,
	datac => \buz_inst|cnt\(15),
	datad => \buz_inst|cnt\(16),
	combout => \buz_inst|LessThan0~6_combout\);

-- Location: FF_X33_Y27_N7
\buz_inst|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[19]~72_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(19));

-- Location: LCCOMB_X32_Y28_N10
\buz_inst|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~7_combout\ = (\buz_inst|cnt\(18) & (\buz_inst|Add0~26_combout\ & (\buz_inst|cnt\(19) & \buz_inst|cnt\(20)))) # (!\buz_inst|cnt\(18) & (!\buz_inst|Add0~26_combout\ & (!\buz_inst|cnt\(19) & !\buz_inst|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(18),
	datab => \buz_inst|Add0~26_combout\,
	datac => \buz_inst|cnt\(19),
	datad => \buz_inst|cnt\(20),
	combout => \buz_inst|LessThan0~7_combout\);

-- Location: LCCOMB_X32_Y28_N28
\buz_inst|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~8_combout\ = (\buz_inst|LessThan0~6_combout\ & (\buz_inst|LessThan0~7_combout\ & (\buz_inst|cnt\(21) $ (!\buz_inst|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(21),
	datab => \buz_inst|LessThan0~6_combout\,
	datac => \buz_inst|Add0~26_combout\,
	datad => \buz_inst|LessThan0~7_combout\,
	combout => \buz_inst|LessThan0~8_combout\);

-- Location: FF_X33_Y28_N23
\buz_inst|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[11]~56_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(11));

-- Location: LCCOMB_X32_Y28_N22
\buz_inst|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~9_combout\ = (\buz_inst|Add0~24_combout\ & ((\buz_inst|Add0~22_combout\ $ (\buz_inst|cnt\(11))) # (!\buz_inst|cnt\(12)))) # (!\buz_inst|Add0~24_combout\ & ((\buz_inst|cnt\(12)) # (\buz_inst|Add0~22_combout\ $ (\buz_inst|cnt\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|Add0~24_combout\,
	datab => \buz_inst|Add0~22_combout\,
	datac => \buz_inst|cnt\(11),
	datad => \buz_inst|cnt\(12),
	combout => \buz_inst|LessThan0~9_combout\);

-- Location: FF_X33_Y28_N27
\buz_inst|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[13]~60_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(13));

-- Location: LCCOMB_X32_Y28_N8
\buz_inst|LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~10_combout\ = (!\buz_inst|LessThan0~9_combout\ & ((\buz_inst|Add0~26_combout\ & (\buz_inst|cnt\(14) & \buz_inst|cnt\(13))) # (!\buz_inst|Add0~26_combout\ & (!\buz_inst|cnt\(14) & !\buz_inst|cnt\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|Add0~26_combout\,
	datab => \buz_inst|cnt\(14),
	datac => \buz_inst|LessThan0~9_combout\,
	datad => \buz_inst|cnt\(13),
	combout => \buz_inst|LessThan0~10_combout\);

-- Location: LCCOMB_X32_Y28_N6
\buz_inst|LessThan0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~21_combout\ = (\buz_inst|cnt\(9) & (\buz_inst|Add0~16_combout\ & (\buz_inst|Add0~18_combout\ & !\buz_inst|cnt\(8)))) # (!\buz_inst|cnt\(9) & ((\buz_inst|Add0~18_combout\) # ((\buz_inst|Add0~16_combout\ & !\buz_inst|cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|Add0~16_combout\,
	datab => \buz_inst|cnt\(9),
	datac => \buz_inst|Add0~18_combout\,
	datad => \buz_inst|cnt\(8),
	combout => \buz_inst|LessThan0~21_combout\);

-- Location: LCCOMB_X31_Y28_N4
\buz_inst|LessThan0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~27_combout\ = (\buz_inst|LessThan0~10_combout\ & ((\buz_inst|Add0~20_combout\ & ((\buz_inst|LessThan0~21_combout\) # (!\buz_inst|cnt\(10)))) # (!\buz_inst|Add0~20_combout\ & (!\buz_inst|cnt\(10) & \buz_inst|LessThan0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|Add0~20_combout\,
	datab => \buz_inst|cnt\(10),
	datac => \buz_inst|LessThan0~10_combout\,
	datad => \buz_inst|LessThan0~21_combout\,
	combout => \buz_inst|LessThan0~27_combout\);

-- Location: LCCOMB_X32_Y28_N18
\buz_inst|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~18_combout\ = (\buz_inst|LessThan0~10_combout\ & (\buz_inst|Add0~16_combout\ $ (!\buz_inst|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|Add0~16_combout\,
	datac => \buz_inst|LessThan0~10_combout\,
	datad => \buz_inst|cnt\(8),
	combout => \buz_inst|LessThan0~18_combout\);

-- Location: LCCOMB_X32_Y28_N20
\buz_inst|LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~19_combout\ = (\buz_inst|LessThan0~18_combout\ & (\buz_inst|cnt\(9) $ (!\buz_inst|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(9),
	datac => \buz_inst|Add0~18_combout\,
	datad => \buz_inst|LessThan0~18_combout\,
	combout => \buz_inst|LessThan0~19_combout\);

-- Location: FF_X33_Y28_N13
\buz_inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|cnt[6]~46_combout\,
	sclr => \buz_inst|cnt[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|cnt\(6));

-- Location: LCCOMB_X31_Y28_N26
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\btn[2]~input_o\ & (\btn[1]~input_o\ $ (!\btn[0]~input_o\))) # (!\btn[2]~input_o\ & (\btn[1]~input_o\ & !\btn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[2]~input_o\,
	datab => \btn[1]~input_o\,
	datad => \btn[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X31_Y28_N28
\buz_inst|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~11_combout\ = (\buz_inst|Add0~2_combout\ & (((\Mux10~0_combout\ & !\buz_inst|cnt\(0))) # (!\buz_inst|cnt\(1)))) # (!\buz_inst|Add0~2_combout\ & (\Mux10~0_combout\ & (!\buz_inst|cnt\(0) & !\buz_inst|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|Add0~2_combout\,
	datab => \Mux10~0_combout\,
	datac => \buz_inst|cnt\(0),
	datad => \buz_inst|cnt\(1),
	combout => \buz_inst|LessThan0~11_combout\);

-- Location: LCCOMB_X31_Y28_N14
\buz_inst|LessThan0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~12_combout\ = (\buz_inst|Add0~4_combout\ & ((\buz_inst|LessThan0~11_combout\) # (!\buz_inst|cnt\(2)))) # (!\buz_inst|Add0~4_combout\ & (!\buz_inst|cnt\(2) & \buz_inst|LessThan0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|Add0~4_combout\,
	datac => \buz_inst|cnt\(2),
	datad => \buz_inst|LessThan0~11_combout\,
	combout => \buz_inst|LessThan0~12_combout\);

-- Location: LCCOMB_X31_Y28_N0
\buz_inst|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~13_combout\ = (\buz_inst|cnt\(3) & (\buz_inst|Add0~6_combout\ & \buz_inst|LessThan0~12_combout\)) # (!\buz_inst|cnt\(3) & ((\buz_inst|Add0~6_combout\) # (\buz_inst|LessThan0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(3),
	datab => \buz_inst|Add0~6_combout\,
	datac => \buz_inst|LessThan0~12_combout\,
	combout => \buz_inst|LessThan0~13_combout\);

-- Location: LCCOMB_X31_Y28_N18
\buz_inst|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~14_combout\ = (\buz_inst|Add0~8_combout\ & ((\buz_inst|LessThan0~13_combout\) # (!\buz_inst|cnt\(4)))) # (!\buz_inst|Add0~8_combout\ & (!\buz_inst|cnt\(4) & \buz_inst|LessThan0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|Add0~8_combout\,
	datac => \buz_inst|cnt\(4),
	datad => \buz_inst|LessThan0~13_combout\,
	combout => \buz_inst|LessThan0~14_combout\);

-- Location: LCCOMB_X31_Y28_N12
\buz_inst|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~15_combout\ = (\buz_inst|cnt\(5) & (\buz_inst|Add0~10_combout\ & \buz_inst|LessThan0~14_combout\)) # (!\buz_inst|cnt\(5) & ((\buz_inst|Add0~10_combout\) # (\buz_inst|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(5),
	datab => \buz_inst|Add0~10_combout\,
	datad => \buz_inst|LessThan0~14_combout\,
	combout => \buz_inst|LessThan0~15_combout\);

-- Location: LCCOMB_X31_Y28_N22
\buz_inst|LessThan0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~16_combout\ = (\buz_inst|cnt\(6) & (\buz_inst|Add0~12_combout\ & \buz_inst|LessThan0~15_combout\)) # (!\buz_inst|cnt\(6) & ((\buz_inst|Add0~12_combout\) # (\buz_inst|LessThan0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buz_inst|cnt\(6),
	datac => \buz_inst|Add0~12_combout\,
	datad => \buz_inst|LessThan0~15_combout\,
	combout => \buz_inst|LessThan0~16_combout\);

-- Location: LCCOMB_X31_Y28_N24
\buz_inst|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~17_combout\ = (\buz_inst|cnt\(7) & (\buz_inst|LessThan0~16_combout\ & \buz_inst|Add0~14_combout\)) # (!\buz_inst|cnt\(7) & ((\buz_inst|LessThan0~16_combout\) # (\buz_inst|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(7),
	datac => \buz_inst|LessThan0~16_combout\,
	datad => \buz_inst|Add0~14_combout\,
	combout => \buz_inst|LessThan0~17_combout\);

-- Location: LCCOMB_X31_Y28_N10
\buz_inst|LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~20_combout\ = (\buz_inst|LessThan0~19_combout\ & (\buz_inst|LessThan0~17_combout\ & (\buz_inst|Add0~20_combout\ $ (!\buz_inst|cnt\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|Add0~20_combout\,
	datab => \buz_inst|cnt\(10),
	datac => \buz_inst|LessThan0~19_combout\,
	datad => \buz_inst|LessThan0~17_combout\,
	combout => \buz_inst|LessThan0~20_combout\);

-- Location: LCCOMB_X31_Y28_N6
\buz_inst|LessThan0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~28_combout\ = (\buz_inst|LessThan0~8_combout\ & ((\buz_inst|LessThan0~30_combout\) # ((\buz_inst|LessThan0~27_combout\) # (\buz_inst|LessThan0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|LessThan0~30_combout\,
	datab => \buz_inst|LessThan0~8_combout\,
	datac => \buz_inst|LessThan0~27_combout\,
	datad => \buz_inst|LessThan0~20_combout\,
	combout => \buz_inst|LessThan0~28_combout\);

-- Location: LCCOMB_X31_Y28_N20
\buz_inst|LessThan0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~24_combout\ = (\buz_inst|LessThan0~5_combout\ & ((\buz_inst|LessThan0~28_combout\) # ((\buz_inst|LessThan0~23_combout\ & \buz_inst|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|LessThan0~23_combout\,
	datab => \buz_inst|Add0~26_combout\,
	datac => \buz_inst|LessThan0~5_combout\,
	datad => \buz_inst|LessThan0~28_combout\,
	combout => \buz_inst|LessThan0~24_combout\);

-- Location: LCCOMB_X31_Y28_N16
\buz_inst|LessThan0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~25_combout\ = (\buz_inst|cnt\(31) & (\buz_inst|cnt\(29) & ((\buz_inst|LessThan0~2_combout\) # (\buz_inst|LessThan0~24_combout\)))) # (!\buz_inst|cnt\(31) & ((\buz_inst|cnt\(29)) # ((\buz_inst|LessThan0~2_combout\) # 
-- (\buz_inst|LessThan0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(31),
	datab => \buz_inst|cnt\(29),
	datac => \buz_inst|LessThan0~2_combout\,
	datad => \buz_inst|LessThan0~24_combout\,
	combout => \buz_inst|LessThan0~25_combout\);

-- Location: LCCOMB_X31_Y28_N2
\buz_inst|LessThan0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|LessThan0~26_combout\ = (\buz_inst|cnt\(30) & (\buz_inst|Add0~26_combout\ & ((\buz_inst|LessThan0~25_combout\) # (!\buz_inst|cnt\(29))))) # (!\buz_inst|cnt\(30) & ((\buz_inst|Add0~26_combout\) # ((!\buz_inst|cnt\(29) & 
-- \buz_inst|LessThan0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buz_inst|cnt\(30),
	datab => \buz_inst|cnt\(29),
	datac => \buz_inst|Add0~26_combout\,
	datad => \buz_inst|LessThan0~25_combout\,
	combout => \buz_inst|LessThan0~26_combout\);

-- Location: LCCOMB_X32_Y26_N28
\buz_inst|out_s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buz_inst|out_s~0_combout\ = (!\Mux1~0_combout\ & (\buz_inst|out_s~q\ $ (!\buz_inst|LessThan0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datac => \buz_inst|out_s~q\,
	datad => \buz_inst|LessThan0~26_combout\,
	combout => \buz_inst|out_s~0_combout\);

-- Location: FF_X32_Y26_N29
\buz_inst|out_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buz_inst|out_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buz_inst|out_s~q\);

ww_led(2) <= \led[2]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(0) <= \led[0]~output_o\;

ww_output <= \output~output_o\;
END structure;


