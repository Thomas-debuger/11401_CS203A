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

-- DATE "09/23/2025 00:06:14"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	Lab2_3_1131417 IS
    PORT (
	i0 : IN std_logic;
	i1 : IN std_logic;
	i2 : IN std_logic;
	i3 : IN std_logic;
	i4 : IN std_logic;
	i5 : IN std_logic;
	i6 : IN std_logic;
	i7 : IN std_logic;
	enable : IN std_logic;
	o0 : OUT STD.STANDARD.bit;
	o1 : OUT STD.STANDARD.bit;
	o2 : OUT STD.STANDARD.bit
	);
END Lab2_3_1131417;

-- Design Ports Information
-- i0	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o0	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o1	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o2	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i1	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i5	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i3	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i7	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i6	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i4	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF Lab2_3_1131417 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i0 : std_logic;
SIGNAL ww_i1 : std_logic;
SIGNAL ww_i2 : std_logic;
SIGNAL ww_i3 : std_logic;
SIGNAL ww_i4 : std_logic;
SIGNAL ww_i5 : std_logic;
SIGNAL ww_i6 : std_logic;
SIGNAL ww_i7 : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_o0 : std_logic;
SIGNAL ww_o1 : std_logic;
SIGNAL ww_o2 : std_logic;
SIGNAL \i0~input_o\ : std_logic;
SIGNAL \o0~output_o\ : std_logic;
SIGNAL \o1~output_o\ : std_logic;
SIGNAL \o2~output_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \i5~input_o\ : std_logic;
SIGNAL \i1~input_o\ : std_logic;
SIGNAL \i7~input_o\ : std_logic;
SIGNAL \i3~input_o\ : std_logic;
SIGNAL \o0~0_combout\ : std_logic;
SIGNAL \o0~1_combout\ : std_logic;
SIGNAL \i2~input_o\ : std_logic;
SIGNAL \i6~input_o\ : std_logic;
SIGNAL \o1~0_combout\ : std_logic;
SIGNAL \i4~input_o\ : std_logic;
SIGNAL \o2~0_combout\ : std_logic;
SIGNAL \o2~1_combout\ : std_logic;

BEGIN

ww_i0 <= i0;
ww_i1 <= i1;
ww_i2 <= i2;
ww_i3 <= i3;
ww_i4 <= i4;
ww_i5 <= i5;
ww_i6 <= i6;
ww_i7 <= i7;
ww_enable <= enable;
o0 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_o0);
o1 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_o1);
o2 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_o2);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X7_Y0_N9
\o0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o0~1_combout\,
	devoe => ww_devoe,
	o => \o0~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\o1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o1~0_combout\,
	devoe => ww_devoe,
	o => \o1~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\o2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o2~1_combout\,
	devoe => ww_devoe,
	o => \o2~output_o\);

-- Location: IOIBUF_X0_Y25_N1
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\i5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i5,
	o => \i5~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\i1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i1,
	o => \i1~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\i7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i7,
	o => \i7~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\i3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i3,
	o => \i3~input_o\);

-- Location: LCCOMB_X1_Y25_N0
\o0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o0~0_combout\ = (!\i7~input_o\ & !\i3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i7~input_o\,
	datad => \i3~input_o\,
	combout => \o0~0_combout\);

-- Location: LCCOMB_X1_Y25_N2
\o0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o0~1_combout\ = (\enable~input_o\ & ((\i5~input_o\) # ((\i1~input_o\) # (!\o0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \i5~input_o\,
	datac => \i1~input_o\,
	datad => \o0~0_combout\,
	combout => \o0~1_combout\);

-- Location: IOIBUF_X1_Y0_N15
\i2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2,
	o => \i2~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\i6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i6,
	o => \i6~input_o\);

-- Location: LCCOMB_X1_Y25_N12
\o1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o1~0_combout\ = (\enable~input_o\ & ((\i2~input_o\) # ((\i6~input_o\) # (!\o0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \i2~input_o\,
	datac => \i6~input_o\,
	datad => \o0~0_combout\,
	combout => \o1~0_combout\);

-- Location: IOIBUF_X0_Y22_N15
\i4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i4,
	o => \i4~input_o\);

-- Location: LCCOMB_X1_Y25_N6
\o2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o2~0_combout\ = (\i7~input_o\) # ((\i4~input_o\) # ((\i6~input_o\) # (\i5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i7~input_o\,
	datab => \i4~input_o\,
	datac => \i6~input_o\,
	datad => \i5~input_o\,
	combout => \o2~0_combout\);

-- Location: LCCOMB_X1_Y25_N24
\o2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o2~1_combout\ = (\enable~input_o\ & \o2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datad => \o2~0_combout\,
	combout => \o2~1_combout\);

-- Location: IOIBUF_X0_Y22_N8
\i0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i0,
	o => \i0~input_o\);

ww_o0 <= \o0~output_o\;

ww_o1 <= \o1~output_o\;

ww_o2 <= \o2~output_o\;
END structure;


