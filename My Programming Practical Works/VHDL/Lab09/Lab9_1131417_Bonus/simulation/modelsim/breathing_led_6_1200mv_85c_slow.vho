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

-- DATE "11/21/2025 11:41:51"

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

ENTITY 	breathing_led IS
    PORT (
	clk : IN std_logic;
	led0 : OUT std_logic
	);
END breathing_led;

-- Design Ports Information
-- led0	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF breathing_led IS
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
SIGNAL ww_led0 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_count[1]~11_combout\ : std_logic;
SIGNAL \pwm_count[4]~17_combout\ : std_logic;
SIGNAL \duty[5]~19_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \direction[0]~0_combout\ : std_logic;
SIGNAL \direction[0]~1_combout\ : std_logic;
SIGNAL \direction[0]~2_combout\ : std_logic;
SIGNAL \clk_count~3_combout\ : std_logic;
SIGNAL \clk_count~5_combout\ : std_logic;
SIGNAL \clk_count~7_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \led0~output_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \clk_count~8_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \clk_count~9_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \clk_count~10_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \clk_count~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \clk_count~6_combout\ : std_logic;
SIGNAL \clk_count~4_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \duty[0]~10\ : std_logic;
SIGNAL \duty[1]~12\ : std_logic;
SIGNAL \duty[2]~14\ : std_logic;
SIGNAL \duty[3]~16\ : std_logic;
SIGNAL \duty[4]~17_combout\ : std_logic;
SIGNAL \duty[4]~18\ : std_logic;
SIGNAL \duty[5]~20\ : std_logic;
SIGNAL \duty[6]~22\ : std_logic;
SIGNAL \duty[7]~23_combout\ : std_logic;
SIGNAL \duty[2]~13_combout\ : std_logic;
SIGNAL \duty[3]~15_combout\ : std_logic;
SIGNAL \direction[1]~3_combout\ : std_logic;
SIGNAL \duty[6]~21_combout\ : std_logic;
SIGNAL \direction[1]~4_combout\ : std_logic;
SIGNAL \direction[1]~5_combout\ : std_logic;
SIGNAL \duty[7]~24\ : std_logic;
SIGNAL \duty[8]~25_combout\ : std_logic;
SIGNAL \pwm_count[0]~9_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \pwm_count[3]~15_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \pwm_count[0]~10\ : std_logic;
SIGNAL \pwm_count[1]~12\ : std_logic;
SIGNAL \pwm_count[2]~13_combout\ : std_logic;
SIGNAL \pwm_count[2]~14\ : std_logic;
SIGNAL \pwm_count[3]~16\ : std_logic;
SIGNAL \pwm_count[4]~18\ : std_logic;
SIGNAL \pwm_count[5]~19_combout\ : std_logic;
SIGNAL \pwm_count[5]~20\ : std_logic;
SIGNAL \pwm_count[6]~21_combout\ : std_logic;
SIGNAL \pwm_count[6]~22\ : std_logic;
SIGNAL \pwm_count[7]~23_combout\ : std_logic;
SIGNAL \pwm_count[7]~24\ : std_logic;
SIGNAL \pwm_count[8]~25_combout\ : std_logic;
SIGNAL \duty[1]~11_combout\ : std_logic;
SIGNAL \duty[0]~9_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~15_cout\ : std_logic;
SIGNAL \LessThan3~16_combout\ : std_logic;
SIGNAL clk_count : std_logic_vector(23 DOWNTO 0);
SIGNAL direction : std_logic_vector(31 DOWNTO 0);
SIGNAL duty : std_logic_vector(8 DOWNTO 0);
SIGNAL pwm_count : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_clk <= clk;
led0 <= ww_led0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X8_Y12_N21
\duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[5]~19_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(5));

-- Location: FF_X7_Y13_N13
\pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[4]~17_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(4));

-- Location: FF_X7_Y13_N7
\pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[1]~11_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(1));

-- Location: LCCOMB_X7_Y13_N6
\pwm_count[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[1]~11_combout\ = (pwm_count(1) & (!\pwm_count[0]~10\)) # (!pwm_count(1) & ((\pwm_count[0]~10\) # (GND)))
-- \pwm_count[1]~12\ = CARRY((!\pwm_count[0]~10\) # (!pwm_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(1),
	datad => VCC,
	cin => \pwm_count[0]~10\,
	combout => \pwm_count[1]~11_combout\,
	cout => \pwm_count[1]~12\);

-- Location: LCCOMB_X7_Y13_N12
\pwm_count[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[4]~17_combout\ = (pwm_count(4) & (\pwm_count[3]~16\ $ (GND))) # (!pwm_count(4) & (!\pwm_count[3]~16\ & VCC))
-- \pwm_count[4]~18\ = CARRY((pwm_count(4) & !\pwm_count[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(4),
	datad => VCC,
	cin => \pwm_count[3]~16\,
	combout => \pwm_count[4]~17_combout\,
	cout => \pwm_count[4]~18\);

-- Location: LCCOMB_X8_Y12_N20
\duty[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[5]~19_combout\ = (duty(5) & ((direction(1) & (\duty[4]~18\ & VCC)) # (!direction(1) & (!\duty[4]~18\)))) # (!duty(5) & ((direction(1) & (!\duty[4]~18\)) # (!direction(1) & ((\duty[4]~18\) # (GND)))))
-- \duty[5]~20\ = CARRY((duty(5) & (!direction(1) & !\duty[4]~18\)) # (!duty(5) & ((!\duty[4]~18\) # (!direction(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(5),
	datab => direction(1),
	datad => VCC,
	cin => \duty[4]~18\,
	combout => \duty[5]~19_combout\,
	cout => \duty[5]~20\);

-- Location: LCCOMB_X40_Y28_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clk_count(1) & (!\Add0~1\)) # (!clk_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clk_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X40_Y28_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clk_count(2) & (\Add0~3\ $ (GND))) # (!clk_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clk_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X40_Y28_N20
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clk_count(6) & (\Add0~11\ $ (GND))) # (!clk_count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clk_count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X40_Y28_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clk_count(8) & (\Add0~15\ $ (GND))) # (!clk_count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clk_count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X40_Y28_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clk_count(9) & (!\Add0~17\)) # (!clk_count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clk_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X40_Y27_N4
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clk_count(14) & (\Add0~27\ $ (GND))) # (!clk_count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clk_count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X40_Y27_N10
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (clk_count(17) & (!\Add0~33\)) # (!clk_count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!clk_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X40_Y27_N20
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (clk_count(22) & (\Add0~43\ $ (GND))) # (!clk_count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((clk_count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X40_Y27_N22
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = clk_count(23) $ (\Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(23),
	cin => \Add0~45\,
	combout => \Add0~46_combout\);

-- Location: FF_X40_Y28_N11
\clk_count[1]\ : dffeas
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
	q => clk_count(1));

-- Location: FF_X40_Y28_N13
\clk_count[2]\ : dffeas
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
	q => clk_count(2));

-- Location: LCCOMB_X40_Y28_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!clk_count(2) & (!clk_count(0) & (!clk_count(3) & !clk_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(2),
	datab => clk_count(0),
	datac => clk_count(3),
	datad => clk_count(1),
	combout => \Equal0~0_combout\);

-- Location: FF_X39_Y27_N1
\clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(6));

-- Location: FF_X39_Y27_N31
\clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(9));

-- Location: FF_X39_Y27_N13
\clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(14));

-- Location: FF_X40_Y27_N11
\clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(17));

-- Location: FF_X40_Y27_N23
\clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(23));

-- Location: LCCOMB_X8_Y12_N2
\direction[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \direction[0]~0_combout\ = (!duty(8) & (!duty(7) & (!duty(2) & !duty(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(8),
	datab => duty(7),
	datac => duty(2),
	datad => duty(3),
	combout => \direction[0]~0_combout\);

-- Location: LCCOMB_X8_Y12_N4
\direction[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \direction[0]~1_combout\ = (!duty(0) & (!duty(5) & (!duty(6) & !duty(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(0),
	datab => duty(5),
	datac => duty(6),
	datad => duty(4),
	combout => \direction[0]~1_combout\);

-- Location: LCCOMB_X8_Y12_N6
\direction[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \direction[0]~2_combout\ = (\direction[0]~0_combout\ & (\direction[0]~1_combout\ & !duty(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \direction[0]~0_combout\,
	datac => \direction[0]~1_combout\,
	datad => duty(1),
	combout => \direction[0]~2_combout\);

-- Location: LCCOMB_X39_Y27_N0
\clk_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~3_combout\ = (\Add0~12_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \clk_count~3_combout\);

-- Location: LCCOMB_X39_Y27_N30
\clk_count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~5_combout\ = (\Add0~18_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \clk_count~5_combout\);

-- Location: LCCOMB_X39_Y27_N12
\clk_count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~7_combout\ = (\Add0~28_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \clk_count~7_combout\);

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

-- Location: IOOBUF_X0_Y20_N9
\led0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan3~16_combout\,
	devoe => ww_devoe,
	o => \led0~output_o\);

-- Location: LCCOMB_X40_Y28_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clk_count(0) $ (VCC)
-- \Add0~1\ = CARRY(clk_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X40_Y27_N0
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (clk_count(12) & (\Add0~23\ $ (GND))) # (!clk_count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((clk_count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X40_Y27_N2
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (clk_count(13) & (!\Add0~25\)) # (!clk_count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!clk_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X40_Y27_N3
\clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(13));

-- Location: LCCOMB_X40_Y27_N6
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clk_count(15) & (!\Add0~29\)) # (!clk_count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clk_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X40_Y27_N7
\clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(15));

-- Location: LCCOMB_X40_Y27_N8
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clk_count(16) & (\Add0~31\ $ (GND))) # (!clk_count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clk_count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X40_Y27_N9
\clk_count[16]\ : dffeas
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
	q => clk_count(16));

-- Location: LCCOMB_X40_Y27_N12
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (clk_count(18) & (\Add0~35\ $ (GND))) # (!clk_count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((clk_count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X40_Y27_N26
\clk_count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~8_combout\ = (\Add0~36_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~6_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add0~36_combout\,
	combout => \clk_count~8_combout\);

-- Location: FF_X40_Y27_N27
\clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(18));

-- Location: LCCOMB_X39_Y27_N14
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!clk_count(17) & (clk_count(18) & (!clk_count(16) & clk_count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(17),
	datab => clk_count(18),
	datac => clk_count(16),
	datad => clk_count(19),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X40_Y27_N14
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (clk_count(19) & (!\Add0~37\)) # (!clk_count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!clk_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X40_Y27_N28
\clk_count~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~9_combout\ = (\Add0~38_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Add0~38_combout\,
	datad => \Equal0~6_combout\,
	combout => \clk_count~9_combout\);

-- Location: FF_X40_Y27_N29
\clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(19));

-- Location: LCCOMB_X40_Y27_N16
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (clk_count(20) & (\Add0~39\ $ (GND))) # (!clk_count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((clk_count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X40_Y27_N17
\clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(20));

-- Location: LCCOMB_X40_Y27_N18
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (clk_count(21) & (!\Add0~41\)) # (!clk_count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!clk_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X40_Y27_N19
\clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(21));

-- Location: LCCOMB_X40_Y27_N30
\clk_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~10_combout\ = (\Add0~44_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~6_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add0~44_combout\,
	combout => \clk_count~10_combout\);

-- Location: FF_X40_Y27_N31
\clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(22));

-- Location: LCCOMB_X39_Y27_N24
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!clk_count(23) & (!clk_count(20) & (clk_count(22) & !clk_count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(23),
	datab => clk_count(20),
	datac => clk_count(22),
	datad => clk_count(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X40_Y28_N0
\clk_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~2_combout\ = (\Add0~0_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Add0~0_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_count~2_combout\);

-- Location: FF_X40_Y28_N1
\clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(0));

-- Location: LCCOMB_X40_Y28_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clk_count(3) & (!\Add0~5\)) # (!clk_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X40_Y28_N15
\clk_count[3]\ : dffeas
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
	q => clk_count(3));

-- Location: LCCOMB_X40_Y28_N16
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clk_count(4) & (\Add0~7\ $ (GND))) # (!clk_count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clk_count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X40_Y28_N17
\clk_count[4]\ : dffeas
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
	q => clk_count(4));

-- Location: LCCOMB_X40_Y28_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clk_count(5) & (!\Add0~9\)) # (!clk_count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clk_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X40_Y28_N19
\clk_count[5]\ : dffeas
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
	q => clk_count(5));

-- Location: LCCOMB_X40_Y28_N22
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clk_count(7) & (!\Add0~13\)) # (!clk_count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clk_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X40_Y28_N28
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clk_count(10) & (\Add0~19\ $ (GND))) # (!clk_count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clk_count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X40_Y28_N30
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clk_count(11) & (!\Add0~21\)) # (!clk_count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clk_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X40_Y27_N1
\clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(12));

-- Location: LCCOMB_X40_Y27_N24
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (clk_count(14) & (!clk_count(12) & (!clk_count(15) & !clk_count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(14),
	datab => clk_count(12),
	datac => clk_count(15),
	datad => clk_count(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X39_Y27_N16
\clk_count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~6_combout\ = (\Add0~22_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~22_combout\,
	combout => \clk_count~6_combout\);

-- Location: FF_X39_Y27_N17
\clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(11));

-- Location: LCCOMB_X39_Y27_N4
\clk_count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~4_combout\ = (\Add0~16_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \clk_count~4_combout\);

-- Location: FF_X39_Y27_N5
\clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(8));

-- Location: FF_X40_Y28_N29
\clk_count[10]\ : dffeas
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
	q => clk_count(10));

-- Location: LCCOMB_X39_Y27_N26
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (clk_count(9) & (clk_count(11) & (clk_count(8) & !clk_count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(9),
	datab => clk_count(11),
	datac => clk_count(8),
	datad => clk_count(10),
	combout => \Equal0~2_combout\);

-- Location: FF_X40_Y28_N23
\clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(7));

-- Location: LCCOMB_X39_Y27_N10
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (clk_count(6) & (!clk_count(5) & (!clk_count(7) & !clk_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(6),
	datab => clk_count(5),
	datac => clk_count(7),
	datad => clk_count(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X40_Y28_N4
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X40_Y28_N6
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (\Equal0~4_combout\ & \Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X8_Y12_N10
\duty[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[0]~9_combout\ = duty(0) $ (VCC)
-- \duty[0]~10\ = CARRY(duty(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(0),
	datad => VCC,
	combout => \duty[0]~9_combout\,
	cout => \duty[0]~10\);

-- Location: LCCOMB_X8_Y12_N12
\duty[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[1]~11_combout\ = (duty(1) & ((direction(1) & (\duty[0]~10\ & VCC)) # (!direction(1) & (!\duty[0]~10\)))) # (!duty(1) & ((direction(1) & (!\duty[0]~10\)) # (!direction(1) & ((\duty[0]~10\) # (GND)))))
-- \duty[1]~12\ = CARRY((duty(1) & (!direction(1) & !\duty[0]~10\)) # (!duty(1) & ((!\duty[0]~10\) # (!direction(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(1),
	datab => direction(1),
	datad => VCC,
	cin => \duty[0]~10\,
	combout => \duty[1]~11_combout\,
	cout => \duty[1]~12\);

-- Location: LCCOMB_X8_Y12_N14
\duty[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[2]~13_combout\ = ((duty(2) $ (direction(1) $ (!\duty[1]~12\)))) # (GND)
-- \duty[2]~14\ = CARRY((duty(2) & ((direction(1)) # (!\duty[1]~12\))) # (!duty(2) & (direction(1) & !\duty[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(2),
	datab => direction(1),
	datad => VCC,
	cin => \duty[1]~12\,
	combout => \duty[2]~13_combout\,
	cout => \duty[2]~14\);

-- Location: LCCOMB_X8_Y12_N16
\duty[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[3]~15_combout\ = (duty(3) & ((direction(1) & (\duty[2]~14\ & VCC)) # (!direction(1) & (!\duty[2]~14\)))) # (!duty(3) & ((direction(1) & (!\duty[2]~14\)) # (!direction(1) & ((\duty[2]~14\) # (GND)))))
-- \duty[3]~16\ = CARRY((duty(3) & (!direction(1) & !\duty[2]~14\)) # (!duty(3) & ((!\duty[2]~14\) # (!direction(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(3),
	datab => direction(1),
	datad => VCC,
	cin => \duty[2]~14\,
	combout => \duty[3]~15_combout\,
	cout => \duty[3]~16\);

-- Location: LCCOMB_X8_Y12_N18
\duty[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[4]~17_combout\ = ((direction(1) $ (duty(4) $ (!\duty[3]~16\)))) # (GND)
-- \duty[4]~18\ = CARRY((direction(1) & ((duty(4)) # (!\duty[3]~16\))) # (!direction(1) & (duty(4) & !\duty[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => direction(1),
	datab => duty(4),
	datad => VCC,
	cin => \duty[3]~16\,
	combout => \duty[4]~17_combout\,
	cout => \duty[4]~18\);

-- Location: FF_X8_Y12_N19
\duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[4]~17_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(4));

-- Location: LCCOMB_X8_Y12_N22
\duty[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[6]~21_combout\ = ((duty(6) $ (direction(1) $ (!\duty[5]~20\)))) # (GND)
-- \duty[6]~22\ = CARRY((duty(6) & ((direction(1)) # (!\duty[5]~20\))) # (!duty(6) & (direction(1) & !\duty[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(6),
	datab => direction(1),
	datad => VCC,
	cin => \duty[5]~20\,
	combout => \duty[6]~21_combout\,
	cout => \duty[6]~22\);

-- Location: LCCOMB_X8_Y12_N24
\duty[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[7]~23_combout\ = (duty(7) & ((direction(1) & (\duty[6]~22\ & VCC)) # (!direction(1) & (!\duty[6]~22\)))) # (!duty(7) & ((direction(1) & (!\duty[6]~22\)) # (!direction(1) & ((\duty[6]~22\) # (GND)))))
-- \duty[7]~24\ = CARRY((duty(7) & (!direction(1) & !\duty[6]~22\)) # (!duty(7) & ((!\duty[6]~22\) # (!direction(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(7),
	datab => direction(1),
	datad => VCC,
	cin => \duty[6]~22\,
	combout => \duty[7]~23_combout\,
	cout => \duty[7]~24\);

-- Location: FF_X8_Y12_N25
\duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[7]~23_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(7));

-- Location: FF_X8_Y12_N15
\duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[2]~13_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(2));

-- Location: FF_X8_Y12_N17
\duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[3]~15_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(3));

-- Location: LCCOMB_X8_Y12_N0
\direction[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \direction[1]~3_combout\ = (((!duty(2) & !duty(3))) # (!duty(7))) # (!duty(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(8),
	datab => duty(7),
	datac => duty(2),
	datad => duty(3),
	combout => \direction[1]~3_combout\);

-- Location: FF_X8_Y12_N23
\duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[6]~21_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(6));

-- Location: LCCOMB_X8_Y12_N28
\direction[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \direction[1]~4_combout\ = ((\direction[1]~3_combout\) # ((!duty(4)) # (!duty(6)))) # (!duty(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(5),
	datab => \direction[1]~3_combout\,
	datac => duty(6),
	datad => duty(4),
	combout => \direction[1]~4_combout\);

-- Location: LCCOMB_X8_Y12_N8
\direction[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \direction[1]~5_combout\ = (\Equal0~7_combout\ & (((!\direction[0]~2_combout\ & direction(1))) # (!\direction[1]~4_combout\))) # (!\Equal0~7_combout\ & (((direction(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction[0]~2_combout\,
	datab => \Equal0~7_combout\,
	datac => direction(1),
	datad => \direction[1]~4_combout\,
	combout => \direction[1]~5_combout\);

-- Location: FF_X8_Y12_N9
\direction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \direction[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => direction(1));

-- Location: LCCOMB_X8_Y12_N26
\duty[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[8]~25_combout\ = duty(8) $ (direction(1) $ (!\duty[7]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(8),
	datab => direction(1),
	cin => \duty[7]~24\,
	combout => \duty[8]~25_combout\);

-- Location: FF_X8_Y12_N27
\duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[8]~25_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(8));

-- Location: LCCOMB_X7_Y13_N4
\pwm_count[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[0]~9_combout\ = pwm_count(0) $ (VCC)
-- \pwm_count[0]~10\ = CARRY(pwm_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(0),
	datad => VCC,
	combout => \pwm_count[0]~9_combout\,
	cout => \pwm_count[0]~10\);

-- Location: LCCOMB_X7_Y13_N26
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (((!pwm_count(6)) # (!pwm_count(5))) # (!pwm_count(8))) # (!pwm_count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(4),
	datab => pwm_count(8),
	datac => pwm_count(5),
	datad => pwm_count(6),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X7_Y13_N10
\pwm_count[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[3]~15_combout\ = (pwm_count(3) & (!\pwm_count[2]~14\)) # (!pwm_count(3) & ((\pwm_count[2]~14\) # (GND)))
-- \pwm_count[3]~16\ = CARRY((!\pwm_count[2]~14\) # (!pwm_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(3),
	datad => VCC,
	cin => \pwm_count[2]~14\,
	combout => \pwm_count[3]~15_combout\,
	cout => \pwm_count[3]~16\);

-- Location: FF_X7_Y13_N11
\pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[3]~15_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(3));

-- Location: LCCOMB_X7_Y13_N0
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!pwm_count(2) & (!pwm_count(3) & ((!pwm_count(0)) # (!pwm_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(1),
	datab => pwm_count(0),
	datac => pwm_count(2),
	datad => pwm_count(3),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X7_Y13_N30
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (pwm_count(7) & (!\LessThan2~1_combout\ & !\LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(7),
	datac => \LessThan2~1_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~2_combout\);

-- Location: FF_X7_Y13_N5
\pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[0]~9_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(0));

-- Location: LCCOMB_X7_Y13_N8
\pwm_count[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[2]~13_combout\ = (pwm_count(2) & (\pwm_count[1]~12\ $ (GND))) # (!pwm_count(2) & (!\pwm_count[1]~12\ & VCC))
-- \pwm_count[2]~14\ = CARRY((pwm_count(2) & !\pwm_count[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(2),
	datad => VCC,
	cin => \pwm_count[1]~12\,
	combout => \pwm_count[2]~13_combout\,
	cout => \pwm_count[2]~14\);

-- Location: FF_X7_Y13_N9
\pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[2]~13_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(2));

-- Location: LCCOMB_X7_Y13_N14
\pwm_count[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[5]~19_combout\ = (pwm_count(5) & (!\pwm_count[4]~18\)) # (!pwm_count(5) & ((\pwm_count[4]~18\) # (GND)))
-- \pwm_count[5]~20\ = CARRY((!\pwm_count[4]~18\) # (!pwm_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(5),
	datad => VCC,
	cin => \pwm_count[4]~18\,
	combout => \pwm_count[5]~19_combout\,
	cout => \pwm_count[5]~20\);

-- Location: FF_X7_Y13_N15
\pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[5]~19_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(5));

-- Location: LCCOMB_X7_Y13_N16
\pwm_count[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[6]~21_combout\ = (pwm_count(6) & (\pwm_count[5]~20\ $ (GND))) # (!pwm_count(6) & (!\pwm_count[5]~20\ & VCC))
-- \pwm_count[6]~22\ = CARRY((pwm_count(6) & !\pwm_count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(6),
	datad => VCC,
	cin => \pwm_count[5]~20\,
	combout => \pwm_count[6]~21_combout\,
	cout => \pwm_count[6]~22\);

-- Location: FF_X7_Y13_N17
\pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[6]~21_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(6));

-- Location: LCCOMB_X7_Y13_N18
\pwm_count[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[7]~23_combout\ = (pwm_count(7) & (!\pwm_count[6]~22\)) # (!pwm_count(7) & ((\pwm_count[6]~22\) # (GND)))
-- \pwm_count[7]~24\ = CARRY((!\pwm_count[6]~22\) # (!pwm_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(7),
	datad => VCC,
	cin => \pwm_count[6]~22\,
	combout => \pwm_count[7]~23_combout\,
	cout => \pwm_count[7]~24\);

-- Location: FF_X7_Y13_N19
\pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[7]~23_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(7));

-- Location: LCCOMB_X7_Y13_N20
\pwm_count[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[8]~25_combout\ = pwm_count(8) $ (!\pwm_count[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(8),
	cin => \pwm_count[7]~24\,
	combout => \pwm_count[8]~25_combout\);

-- Location: FF_X7_Y13_N21
\pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[8]~25_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(8));

-- Location: FF_X8_Y12_N13
\duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[1]~11_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(1));

-- Location: FF_X8_Y12_N11
\duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[0]~9_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(0));

-- Location: LCCOMB_X7_Y12_N10
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((!pwm_count(0) & duty(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(0),
	datab => duty(0),
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X7_Y12_N12
\LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((pwm_count(1) & ((!\LessThan3~1_cout\) # (!duty(1)))) # (!pwm_count(1) & (!duty(1) & !\LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(1),
	datab => duty(1),
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X7_Y12_N14
\LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((pwm_count(2) & (duty(2) & !\LessThan3~3_cout\)) # (!pwm_count(2) & ((duty(2)) # (!\LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(2),
	datab => duty(2),
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X7_Y12_N16
\LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((pwm_count(3) & ((!\LessThan3~5_cout\) # (!duty(3)))) # (!pwm_count(3) & (!duty(3) & !\LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(3),
	datab => duty(3),
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X7_Y12_N18
\LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((pwm_count(4) & (duty(4) & !\LessThan3~7_cout\)) # (!pwm_count(4) & ((duty(4)) # (!\LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(4),
	datab => duty(4),
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X7_Y12_N20
\LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((duty(5) & (pwm_count(5) & !\LessThan3~9_cout\)) # (!duty(5) & ((pwm_count(5)) # (!\LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(5),
	datab => pwm_count(5),
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X7_Y12_N22
\LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((pwm_count(6) & (duty(6) & !\LessThan3~11_cout\)) # (!pwm_count(6) & ((duty(6)) # (!\LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(6),
	datab => duty(6),
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X7_Y12_N24
\LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~15_cout\ = CARRY((pwm_count(7) & ((!\LessThan3~13_cout\) # (!duty(7)))) # (!pwm_count(7) & (!duty(7) & !\LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(7),
	datab => duty(7),
	datad => VCC,
	cin => \LessThan3~13_cout\,
	cout => \LessThan3~15_cout\);

-- Location: LCCOMB_X7_Y12_N26
\LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~16_combout\ = (duty(8) & ((!\LessThan3~15_cout\) # (!pwm_count(8)))) # (!duty(8) & (!pwm_count(8) & !\LessThan3~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(8),
	datab => pwm_count(8),
	cin => \LessThan3~15_cout\,
	combout => \LessThan3~16_combout\);

ww_led0 <= \led0~output_o\;
END structure;


