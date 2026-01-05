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

-- DATE "09/16/2025 14:23:27"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	\1131417_Lab1-3\ IS
    PORT (
	Y : OUT std_logic;
	I0 : IN std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I1 : IN std_logic
	);
END \1131417_Lab1-3\;

-- Design Ports Information
-- Y	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I3	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF \1131417_Lab1-3\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_I0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_I2 : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_I1 : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \Y~output_o\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \inst11~1_combout\ : std_logic;

BEGIN

Y <= ww_Y;
ww_I0 <= I0;
ww_S1 <= S1;
ww_S0 <= S0;
ww_I2 <= I2;
ww_I3 <= I3;
ww_I1 <= I1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X9_Y29_N22
\I0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: IOOBUF_X0_Y8_N16
\Y~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~1_combout\,
	devoe => ww_devoe,
	o => \Y~output_o\);

-- Location: IOIBUF_X0_Y27_N22
\I2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\I1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\S0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X28_Y29_N1
\S1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: LCCOMB_X1_Y28_N0
\inst11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = (\S0~input_o\ & (((\I1~input_o\) # (\S1~input_o\)))) # (!\S0~input_o\ & (\I0~input_o\ & ((!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0~input_o\,
	datab => \I1~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \inst11~0_combout\);

-- Location: IOIBUF_X1_Y29_N1
\I3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: LCCOMB_X1_Y28_N2
\inst11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11~1_combout\ = (\inst11~0_combout\ & (((\I3~input_o\) # (!\S1~input_o\)))) # (!\inst11~0_combout\ & (\I2~input_o\ & ((\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2~input_o\,
	datab => \inst11~0_combout\,
	datac => \I3~input_o\,
	datad => \S1~input_o\,
	combout => \inst11~1_combout\);

ww_Y <= \Y~output_o\;
END structure;


