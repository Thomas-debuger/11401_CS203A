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

-- DATE "10/03/2025 11:34:34"

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

ENTITY 	Lab4_2_1131417 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	str_in : IN std_logic;
	match : OUT std_logic;
	str_out : OUT std_logic_vector(2 DOWNTO 0)
	);
END Lab4_2_1131417;

-- Design Ports Information
-- match	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- str_out[0]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- str_out[1]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- str_out[2]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- str_in	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF Lab4_2_1131417 IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_str_in : std_logic;
SIGNAL ww_match : std_logic;
SIGNAL ww_str_out : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \match~output_o\ : std_logic;
SIGNAL \str_out[0]~output_o\ : std_logic;
SIGNAL \str_out[1]~output_o\ : std_logic;
SIGNAL \str_out[2]~output_o\ : std_logic;
SIGNAL \str_in~input_o\ : std_logic;
SIGNAL \state~1_combout\ : std_logic;
SIGNAL \state~0_combout\ : std_logic;
SIGNAL \shift_reg~2_combout\ : std_logic;
SIGNAL \shift_reg~0_combout\ : std_logic;
SIGNAL \shift_reg~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL shift_reg : std_logic_vector(2 DOWNTO 0);
SIGNAL state : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_str_in <= str_in;
match <= ww_match;
str_out <= ww_str_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOOBUF_X0_Y27_N16
\match~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \match~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\str_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shift_reg(0),
	devoe => ww_devoe,
	o => \str_out[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\str_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shift_reg(1),
	devoe => ww_devoe,
	o => \str_out[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\str_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shift_reg(2),
	devoe => ww_devoe,
	o => \str_out[2]~output_o\);

-- Location: IOIBUF_X5_Y29_N1
\str_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_str_in,
	o => \str_in~input_o\);

-- Location: LCCOMB_X1_Y27_N6
\state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~1_combout\ = (!\rst~input_o\ & ((\str_in~input_o\ & (state(0) $ (!state(1)))) # (!\str_in~input_o\ & (!state(0) & state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \str_in~input_o\,
	datac => state(0),
	datad => state(1),
	combout => \state~1_combout\);

-- Location: FF_X1_Y27_N7
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X1_Y27_N0
\state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~0_combout\ = (!\rst~input_o\ & ((state(1) & ((!state(0)))) # (!state(1) & (\str_in~input_o\ & state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \str_in~input_o\,
	datac => state(1),
	datad => state(0),
	combout => \state~0_combout\);

-- Location: FF_X1_Y27_N1
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X1_Y27_N24
\shift_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \shift_reg~2_combout\ = (!\rst~input_o\ & \str_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \str_in~input_o\,
	combout => \shift_reg~2_combout\);

-- Location: FF_X1_Y27_N25
\shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(0));

-- Location: LCCOMB_X1_Y27_N10
\shift_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \shift_reg~0_combout\ = (!\rst~input_o\ & shift_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => shift_reg(0),
	combout => \shift_reg~0_combout\);

-- Location: FF_X1_Y27_N11
\shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(1));

-- Location: LCCOMB_X1_Y27_N12
\shift_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \shift_reg~1_combout\ = (!\rst~input_o\ & shift_reg(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => shift_reg(1),
	combout => \shift_reg~1_combout\);

-- Location: FF_X1_Y27_N13
\shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(2));

-- Location: LCCOMB_X1_Y27_N2
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!shift_reg(0) & (state(0) & (shift_reg(1) & shift_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_reg(0),
	datab => state(0),
	datac => shift_reg(1),
	datad => shift_reg(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y27_N20
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (state(1) & \Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(1),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

ww_match <= \match~output_o\;

ww_str_out(0) <= \str_out[0]~output_o\;

ww_str_out(1) <= \str_out[1]~output_o\;

ww_str_out(2) <= \str_out[2]~output_o\;
END structure;


