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

-- DATE "10/22/2025 17:48:23"

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

ENTITY 	Lab4_1_1131417 IS
    PORT (
	CLK : IN std_logic;
	RESET : IN std_logic;
	Din : IN std_logic;
	Qout : OUT std_logic
	);
END Lab4_1_1131417;

-- Design Ports Information
-- Qout	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF Lab4_1_1131417 IS
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
SIGNAL ww_RESET : std_logic;
SIGNAL ww_Din : std_logic;
SIGNAL ww_Qout : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Qout~output_o\ : std_logic;
SIGNAL \Din~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.S3~q\ : std_logic;
SIGNAL \next_state.S1~0_combout\ : std_logic;
SIGNAL \state.S1~q\ : std_logic;
SIGNAL \next_state~4_combout\ : std_logic;
SIGNAL \state.S2~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \Qout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Qout~0_combout\ : std_logic;
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
ww_Din <= Din;
Qout <= ww_Qout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\ALT_INV_Qout~0_combout\ <= NOT \Qout~0_combout\;
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;

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

-- Location: IOOBUF_X35_Y29_N23
\Qout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Qout~0_combout\,
	devoe => ww_devoe,
	o => \Qout~output_o\);

-- Location: IOIBUF_X41_Y23_N1
\Din~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din,
	o => \Din~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\RESET~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G2
\RESET~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X37_Y23_N1
\state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \state.S2~q\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Din~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S3~q\);

-- Location: LCCOMB_X37_Y23_N22
\next_state.S1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S1~0_combout\ = (\Din~input_o\ & \state.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Din~input_o\,
	datad => \state.S3~q\,
	combout => \next_state.S1~0_combout\);

-- Location: FF_X37_Y23_N23
\state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.S1~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~q\);

-- Location: LCCOMB_X37_Y23_N4
\next_state~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state~4_combout\ = (\state.S1~q\) # (!\state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S1~q\,
	datad => \state.S0~q\,
	combout => \next_state~4_combout\);

-- Location: FF_X37_Y23_N5
\state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Din~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S2~q\);

-- Location: LCCOMB_X37_Y23_N2
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Din~input_o\) # ((\state.S2~q\) # (\state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Din~input_o\,
	datac => \state.S2~q\,
	datad => \state.S3~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X37_Y23_N3
\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

-- Location: LCCOMB_X37_Y23_N0
\Qout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Qout~0_combout\ = (\state.S3~q\) # (!\state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S0~q\,
	datac => \state.S3~q\,
	combout => \Qout~0_combout\);

ww_Qout <= \Qout~output_o\;
END structure;


