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

-- DATE "10/20/2025 23:47:04"

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

ENTITY 	Lab5_1131417 IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	sel : IN std_logic_vector(1 DOWNTO 0);
	aluo : OUT std_logic_vector(4 DOWNTO 0)
	);
END Lab5_1131417;

-- Design Ports Information
-- aluo[0]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluo[1]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluo[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluo[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluo[4]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF Lab5_1131417 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_aluo : std_logic_vector(4 DOWNTO 0);
SIGNAL \aluo[0]~output_o\ : std_logic;
SIGNAL \aluo[1]~output_o\ : std_logic;
SIGNAL \aluo[2]~output_o\ : std_logic;
SIGNAL \aluo[3]~output_o\ : std_logic;
SIGNAL \aluo[4]~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_sel <= sel;
aluo <= ww_aluo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y20_N2
\aluo[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \aluo[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\aluo[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \aluo[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\aluo[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \aluo[2]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\aluo[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \aluo[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\aluo[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \aluo[4]~output_o\);

-- Location: IOIBUF_X5_Y29_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X5_Y21_N10
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X0_Y13_N8
\sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X5_Y21_N20
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\sel[1]~input_o\ & (\sel[0]~input_o\)) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)) # (!\sel[0]~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X0_Y20_N8
\sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: LCCOMB_X5_Y21_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[0]~input_o\) # (GND)))
-- \Add0~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X4_Y23_N0
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & ((\Add1~0_combout\) # ((!\sel[1]~input_o\)))) # (!\Mux4~0_combout\ & (((\sel[1]~input_o\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Mux4~0_combout\,
	datac => \sel[1]~input_o\,
	datad => \Add0~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X0_Y21_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X5_Y21_N30
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\sel[1]~input_o\ & (\sel[0]~input_o\)) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\B[1]~input_o\ & \A[1]~input_o\)) # (!\sel[0]~input_o\ & ((\B[1]~input_o\) # (\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X5_Y21_N12
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (\Add1~1\ & VCC)) # (!\B[1]~input_o\ & (!\Add1~1\)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & (!\Add1~1\)) # (!\B[1]~input_o\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\A[1]~input_o\ & (!\B[1]~input_o\ & !\Add1~1\)) # (!\A[1]~input_o\ & ((!\Add1~1\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X5_Y21_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (!\Add0~1\)) # (!\B[1]~input_o\ & (\Add0~1\ & VCC)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & ((\Add0~1\) # (GND))) # (!\B[1]~input_o\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\A[1]~input_o\ & (\B[1]~input_o\ & !\Add0~1\)) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X4_Y23_N10
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & ((\Add1~2_combout\) # ((!\sel[1]~input_o\)))) # (!\Mux3~0_combout\ & (((\sel[1]~input_o\ & \Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Add1~2_combout\,
	datac => \sel[1]~input_o\,
	datad => \Add0~2_combout\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X0_Y13_N1
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X5_Y21_N24
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\sel[1]~input_o\ & (\sel[0]~input_o\)) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\A[2]~input_o\ & \B[2]~input_o\)) # (!\sel[0]~input_o\ & ((\A[2]~input_o\) # (\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X5_Y21_N14
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\Add1~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X5_Y21_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\A[2]~input_o\ & ((!\Add0~3\) # (!\B[2]~input_o\))) # (!\A[2]~input_o\ & (!\B[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X4_Y23_N28
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\Add1~4_combout\)) # (!\sel[1]~input_o\))) # (!\Mux2~0_combout\ & (\sel[1]~input_o\ & ((\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \sel[1]~input_o\,
	datac => \Add1~4_combout\,
	datad => \Add0~4_combout\,
	combout => \Mux2~1_combout\);

-- Location: IOIBUF_X0_Y13_N22
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X5_Y21_N16
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\Add1~5\ & VCC)) # (!\B[3]~input_o\ & (!\Add1~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\Add1~5\)) # (!\B[3]~input_o\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\Add1~5\)) # (!\A[3]~input_o\ & ((!\Add1~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: IOIBUF_X0_Y21_N22
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X5_Y21_N26
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\sel[1]~input_o\ & (\sel[0]~input_o\)) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\B[3]~input_o\ & \A[3]~input_o\)) # (!\sel[0]~input_o\ & ((\B[3]~input_o\) # (\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X5_Y21_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (!\Add0~5\)) # (!\B[3]~input_o\ & (\Add0~5\ & VCC)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & ((\Add0~5\) # (GND))) # (!\B[3]~input_o\ & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\A[3]~input_o\ & (\B[3]~input_o\ & !\Add0~5\)) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # (!\Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X5_Y21_N28
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\sel[1]~input_o\ & ((\Mux1~0_combout\ & (\Add1~6_combout\)) # (!\Mux1~0_combout\ & ((\Add0~6_combout\))))) # (!\sel[1]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Add1~6_combout\,
	datac => \Mux1~0_combout\,
	datad => \Add0~6_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X5_Y21_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = !\Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X5_Y21_N18
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = !\Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~7\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X5_Y21_N22
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\Add1~8_combout\))) # (!\sel[0]~input_o\ & (!\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \Add0~8_combout\,
	datad => \Add1~8_combout\,
	combout => \Mux0~0_combout\);

ww_aluo(0) <= \aluo[0]~output_o\;

ww_aluo(1) <= \aluo[1]~output_o\;

ww_aluo(2) <= \aluo[2]~output_o\;

ww_aluo(3) <= \aluo[3]~output_o\;

ww_aluo(4) <= \aluo[4]~output_o\;
END structure;


