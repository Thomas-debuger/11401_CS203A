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

-- DATE "09/16/2025 01:57:43"

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

ENTITY 	\1131417_Lab1-2\ IS
    PORT (
	Q0 : OUT std_logic;
	A1 : IN std_logic;
	A5 : IN std_logic;
	A7 : IN std_logic;
	A3 : IN std_logic;
	Q1 : OUT std_logic;
	A2 : IN std_logic;
	A6 : IN std_logic;
	Q2 : OUT std_logic;
	A4 : IN std_logic;
	A0 : IN std_logic
	);
END \1131417_Lab1-2\;

-- Design Ports Information
-- Q0	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A5	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A7	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A6	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF \1131417_Lab1-2\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A5 : std_logic;
SIGNAL ww_A7 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A6 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_A4 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \A7~input_o\ : std_logic;
SIGNAL \A5~input_o\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \A6~input_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \A4~input_o\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;

BEGIN

Q0 <= ww_Q0;
ww_A1 <= A1;
ww_A5 <= A5;
ww_A7 <= A7;
ww_A3 <= A3;
Q1 <= ww_Q1;
ww_A2 <= A2;
ww_A6 <= A6;
Q2 <= ww_Q2;
ww_A4 <= A4;
ww_A0 <= A0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y21_N2
\Q0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~0_combout\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Q1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~0_combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\Q2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~0_combout\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOIBUF_X0_Y12_N1
\A3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\A7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A7,
	o => \A7~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\A5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A5,
	o => \A5~input_o\);

-- Location: LCCOMB_X1_Y21_N16
\inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\A3~input_o\) # ((\A1~input_o\) # ((\A7~input_o\) # (\A5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \A1~input_o\,
	datac => \A7~input_o\,
	datad => \A5~input_o\,
	combout => \inst~0_combout\);

-- Location: IOIBUF_X26_Y29_N1
\A6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A6,
	o => \A6~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LCCOMB_X1_Y21_N10
\inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = (\A3~input_o\) # ((\A7~input_o\) # ((\A6~input_o\) # (\A2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \A7~input_o\,
	datac => \A6~input_o\,
	datad => \A2~input_o\,
	combout => \inst4~0_combout\);

-- Location: IOIBUF_X9_Y0_N1
\A4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A4,
	o => \A4~input_o\);

-- Location: LCCOMB_X1_Y21_N4
\inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = (\A4~input_o\) # ((\A7~input_o\) # ((\A6~input_o\) # (\A5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4~input_o\,
	datab => \A7~input_o\,
	datac => \A6~input_o\,
	datad => \A5~input_o\,
	combout => \inst5~0_combout\);

-- Location: IOIBUF_X0_Y10_N1
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

ww_Q0 <= \Q0~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;
END structure;


