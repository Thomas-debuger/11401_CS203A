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

-- DATE "09/26/2025 10:58:38"

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

ENTITY 	Lab_3_2_1131417 IS
    PORT (
	CLK : IN std_logic;
	Sin : IN std_logic;
	Preset : IN std_logic;
	Clear : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic
	);
END Lab_3_2_1131417;

-- Design Ports Information
-- QA	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QB	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QC	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QD	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Preset	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sin	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF Lab_3_2_1131417 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Sin : std_logic;
SIGNAL ww_Preset : std_logic;
SIGNAL ww_Clear : std_logic;
SIGNAL ww_QA : std_logic;
SIGNAL ww_QB : std_logic;
SIGNAL ww_QC : std_logic;
SIGNAL ww_QD : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg[3]~clear_lutclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \QA~output_o\ : std_logic;
SIGNAL \QB~output_o\ : std_logic;
SIGNAL \QC~output_o\ : std_logic;
SIGNAL \QD~output_o\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \Preset~input_o\ : std_logic;
SIGNAL \reg[3]~4_combout\ : std_logic;
SIGNAL \reg[3]~latch_combout\ : std_logic;
SIGNAL \Sin~input_o\ : std_logic;
SIGNAL \reg[0]~data_lut_combout\ : std_logic;
SIGNAL \reg[3]~clear_lut_combout\ : std_logic;
SIGNAL \reg[3]~clear_lutclkctrl_outclk\ : std_logic;
SIGNAL \reg[0]~_emulated_q\ : std_logic;
SIGNAL \reg[0]~head_lut_combout\ : std_logic;
SIGNAL \reg[1]~data_lut_combout\ : std_logic;
SIGNAL \reg[1]~_emulated_q\ : std_logic;
SIGNAL \reg[1]~head_lut_combout\ : std_logic;
SIGNAL \reg[2]~data_lut_combout\ : std_logic;
SIGNAL \reg[2]~_emulated_q\ : std_logic;
SIGNAL \reg[2]~head_lut_combout\ : std_logic;
SIGNAL \reg[3]~data_lut_combout\ : std_logic;
SIGNAL \reg[3]~_emulated_q\ : std_logic;
SIGNAL \reg[3]~head_lut_combout\ : std_logic;
SIGNAL \ALT_INV_reg[3]~clear_lutclkctrl_outclk\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_Sin <= Sin;
ww_Preset <= Preset;
ww_Clear <= Clear;
QA <= ww_QA;
QB <= ww_QB;
QC <= ww_QC;
QD <= ww_QD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\reg[3]~clear_lutclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reg[3]~clear_lut_combout\);
\ALT_INV_reg[3]~clear_lutclkctrl_outclk\ <= NOT \reg[3]~clear_lutclkctrl_outclk\;

-- Location: IOIBUF_X0_Y14_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y22_N16
\QA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg[3]~head_lut_combout\,
	devoe => ww_devoe,
	o => \QA~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\QB~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg[2]~head_lut_combout\,
	devoe => ww_devoe,
	o => \QB~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\QC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg[1]~head_lut_combout\,
	devoe => ww_devoe,
	o => \QC~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\QD~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg[0]~head_lut_combout\,
	devoe => ww_devoe,
	o => \QD~output_o\);

-- Location: IOIBUF_X1_Y29_N8
\Clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\Preset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Preset,
	o => \Preset~input_o\);

-- Location: LCCOMB_X2_Y22_N22
\reg[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[3]~4_combout\ = (!\Preset~input_o\ & \Clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Preset~input_o\,
	datad => \Clear~input_o\,
	combout => \reg[3]~4_combout\);

-- Location: LCCOMB_X2_Y22_N20
\reg[3]~latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[3]~latch_combout\ = (\Clear~input_o\ & ((\reg[3]~4_combout\) # (\reg[3]~latch_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clear~input_o\,
	datac => \reg[3]~4_combout\,
	datad => \reg[3]~latch_combout\,
	combout => \reg[3]~latch_combout\);

-- Location: IOIBUF_X3_Y0_N1
\Sin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sin,
	o => \Sin~input_o\);

-- Location: LCCOMB_X2_Y22_N26
\reg[0]~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[0]~data_lut_combout\ = \reg[3]~latch_combout\ $ (\Sin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg[3]~latch_combout\,
	datad => \Sin~input_o\,
	combout => \reg[0]~data_lut_combout\);

-- Location: LCCOMB_X2_Y22_N12
\reg[3]~clear_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[3]~clear_lut_combout\ = (\reg[3]~4_combout\) # (!\Clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clear~input_o\,
	datac => \reg[3]~4_combout\,
	combout => \reg[3]~clear_lut_combout\);

-- Location: CLKCTRL_G3
\reg[3]~clear_lutclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reg[3]~clear_lutclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reg[3]~clear_lutclkctrl_outclk\);

-- Location: FF_X2_Y22_N25
\reg[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \reg[0]~data_lut_combout\,
	clrn => \ALT_INV_reg[3]~clear_lutclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0]~_emulated_q\);

-- Location: LCCOMB_X2_Y22_N24
\reg[0]~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[0]~head_lut_combout\ = (\Clear~input_o\ & ((\reg[3]~4_combout\) # (\reg[3]~latch_combout\ $ (\reg[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3]~4_combout\,
	datab => \reg[3]~latch_combout\,
	datac => \reg[0]~_emulated_q\,
	datad => \Clear~input_o\,
	combout => \reg[0]~head_lut_combout\);

-- Location: LCCOMB_X2_Y22_N28
\reg[1]~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[1]~data_lut_combout\ = \reg[3]~latch_combout\ $ (\reg[0]~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg[3]~latch_combout\,
	datad => \reg[0]~head_lut_combout\,
	combout => \reg[1]~data_lut_combout\);

-- Location: FF_X2_Y22_N29
\reg[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg[1]~data_lut_combout\,
	clrn => \ALT_INV_reg[3]~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1]~_emulated_q\);

-- Location: LCCOMB_X2_Y22_N6
\reg[1]~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[1]~head_lut_combout\ = (\Clear~input_o\ & ((\reg[3]~4_combout\) # (\reg[3]~latch_combout\ $ (\reg[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clear~input_o\,
	datab => \reg[3]~latch_combout\,
	datac => \reg[3]~4_combout\,
	datad => \reg[1]~_emulated_q\,
	combout => \reg[1]~head_lut_combout\);

-- Location: LCCOMB_X2_Y22_N16
\reg[2]~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[2]~data_lut_combout\ = \reg[3]~latch_combout\ $ (\reg[1]~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg[3]~latch_combout\,
	datad => \reg[1]~head_lut_combout\,
	combout => \reg[2]~data_lut_combout\);

-- Location: FF_X2_Y22_N17
\reg[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg[2]~data_lut_combout\,
	clrn => \ALT_INV_reg[3]~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2]~_emulated_q\);

-- Location: LCCOMB_X2_Y22_N10
\reg[2]~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[2]~head_lut_combout\ = (\Clear~input_o\ & ((\reg[3]~4_combout\) # (\reg[3]~latch_combout\ $ (\reg[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clear~input_o\,
	datab => \reg[3]~latch_combout\,
	datac => \reg[3]~4_combout\,
	datad => \reg[2]~_emulated_q\,
	combout => \reg[2]~head_lut_combout\);

-- Location: LCCOMB_X2_Y22_N0
\reg[3]~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[3]~data_lut_combout\ = \reg[3]~latch_combout\ $ (\reg[2]~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg[3]~latch_combout\,
	datad => \reg[2]~head_lut_combout\,
	combout => \reg[3]~data_lut_combout\);

-- Location: FF_X2_Y22_N1
\reg[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg[3]~data_lut_combout\,
	clrn => \ALT_INV_reg[3]~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3]~_emulated_q\);

-- Location: LCCOMB_X2_Y22_N2
\reg[3]~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[3]~head_lut_combout\ = (\Clear~input_o\ & ((\reg[3]~4_combout\) # (\reg[3]~latch_combout\ $ (\reg[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clear~input_o\,
	datab => \reg[3]~latch_combout\,
	datac => \reg[3]~4_combout\,
	datad => \reg[3]~_emulated_q\,
	combout => \reg[3]~head_lut_combout\);

ww_QA <= \QA~output_o\;

ww_QB <= \QB~output_o\;

ww_QC <= \QC~output_o\;

ww_QD <= \QD~output_o\;
END structure;


