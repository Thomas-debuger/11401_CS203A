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

-- DATE "11/21/2025 11:19:39"

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

ENTITY 	pwm_led IS
    PORT (
	clk : IN std_logic;
	sw_en : IN std_logic;
	sw_d : IN std_logic_vector(2 DOWNTO 0);
	led0 : OUT std_logic
	);
END pwm_led;

-- Design Ports Information
-- led0	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_d[2]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_d[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_d[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_en	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF pwm_led IS
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
SIGNAL ww_sw_en : std_logic;
SIGNAL ww_sw_d : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_led0 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw_en~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \led0~output_o\ : std_logic;
SIGNAL \pwm_count~1_combout\ : std_logic;
SIGNAL \pwm_count~0_combout\ : std_logic;
SIGNAL \pwm_count~3_combout\ : std_logic;
SIGNAL \pwm_count~2_combout\ : std_logic;
SIGNAL \sw_d[1]~input_o\ : std_logic;
SIGNAL \sw_d[0]~input_o\ : std_logic;
SIGNAL \led0~1_combout\ : std_logic;
SIGNAL \led0~3_combout\ : std_logic;
SIGNAL \led0~2_combout\ : std_logic;
SIGNAL \sw_d[2]~input_o\ : std_logic;
SIGNAL \led0~0_combout\ : std_logic;
SIGNAL \led0~4_combout\ : std_logic;
SIGNAL pwm_count : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_sw_en <= sw_en;
ww_sw_d <= sw_d;
led0 <= ww_led0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\sw_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_en,
	o => \sw_en~input_o\);

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
	i => \led0~4_combout\,
	devoe => ww_devoe,
	o => \led0~output_o\);

-- Location: LCCOMB_X1_Y24_N10
\pwm_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count~1_combout\ = (!pwm_count(0) & (((!pwm_count(2) & !pwm_count(1))) # (!pwm_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(3),
	datab => pwm_count(2),
	datac => pwm_count(0),
	datad => pwm_count(1),
	combout => \pwm_count~1_combout\);

-- Location: FF_X1_Y24_N11
\pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(0));

-- Location: LCCOMB_X1_Y24_N24
\pwm_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count~0_combout\ = (!pwm_count(3) & (pwm_count(1) $ (pwm_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(3),
	datac => pwm_count(1),
	datad => pwm_count(0),
	combout => \pwm_count~0_combout\);

-- Location: FF_X1_Y24_N25
\pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(1));

-- Location: LCCOMB_X1_Y24_N0
\pwm_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count~3_combout\ = (!pwm_count(3) & (pwm_count(2) $ (((pwm_count(1) & pwm_count(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(3),
	datab => pwm_count(1),
	datac => pwm_count(2),
	datad => pwm_count(0),
	combout => \pwm_count~3_combout\);

-- Location: FF_X1_Y24_N1
\pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(2));

-- Location: LCCOMB_X1_Y24_N22
\pwm_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count~2_combout\ = (pwm_count(0) & (pwm_count(2) & (!pwm_count(3) & pwm_count(1)))) # (!pwm_count(0) & (!pwm_count(2) & (pwm_count(3) & !pwm_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(0),
	datab => pwm_count(2),
	datac => pwm_count(3),
	datad => pwm_count(1),
	combout => \pwm_count~2_combout\);

-- Location: FF_X1_Y24_N23
\pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(3));

-- Location: IOIBUF_X0_Y25_N22
\sw_d[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_d(1),
	o => \sw_d[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\sw_d[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_d(0),
	o => \sw_d[0]~input_o\);

-- Location: LCCOMB_X1_Y24_N18
\led0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led0~1_combout\ = (pwm_count(1) & (!\sw_d[1]~input_o\ & ((pwm_count(0)) # (!\sw_d[0]~input_o\)))) # (!pwm_count(1) & ((\sw_d[1]~input_o\ & ((\sw_d[0]~input_o\))) # (!\sw_d[1]~input_o\ & (pwm_count(0) & !\sw_d[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(0),
	datab => pwm_count(1),
	datac => \sw_d[1]~input_o\,
	datad => \sw_d[0]~input_o\,
	combout => \led0~1_combout\);

-- Location: LCCOMB_X1_Y24_N30
\led0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led0~3_combout\ = (\sw_en~input_o\ & ((pwm_count(3) & (!pwm_count(2) & \led0~1_combout\)) # (!pwm_count(3) & (pwm_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_en~input_o\,
	datab => pwm_count(3),
	datac => pwm_count(2),
	datad => \led0~1_combout\,
	combout => \led0~3_combout\);

-- Location: LCCOMB_X1_Y24_N28
\led0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led0~2_combout\ = (\sw_en~input_o\ & ((pwm_count(3) & (!pwm_count(2) & \led0~1_combout\)) # (!pwm_count(3) & ((\led0~1_combout\) # (!pwm_count(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_en~input_o\,
	datab => pwm_count(3),
	datac => pwm_count(2),
	datad => \led0~1_combout\,
	combout => \led0~2_combout\);

-- Location: IOIBUF_X0_Y23_N8
\sw_d[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_d(2),
	o => \sw_d[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N12
\led0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led0~0_combout\ = (pwm_count(1) & (((\sw_d[1]~input_o\ & \sw_d[0]~input_o\)))) # (!pwm_count(1) & ((\sw_d[1]~input_o\) # ((!pwm_count(0) & \sw_d[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(0),
	datab => pwm_count(1),
	datac => \sw_d[1]~input_o\,
	datad => \sw_d[0]~input_o\,
	combout => \led0~0_combout\);

-- Location: LCCOMB_X1_Y24_N8
\led0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led0~4_combout\ = (\led0~3_combout\ & (\sw_d[2]~input_o\ & ((\led0~0_combout\) # (!\led0~2_combout\)))) # (!\led0~3_combout\ & (\led0~2_combout\ & ((\sw_d[2]~input_o\) # (\led0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led0~3_combout\,
	datab => \led0~2_combout\,
	datac => \sw_d[2]~input_o\,
	datad => \led0~0_combout\,
	combout => \led0~4_combout\);

ww_led0 <= \led0~output_o\;
END structure;


