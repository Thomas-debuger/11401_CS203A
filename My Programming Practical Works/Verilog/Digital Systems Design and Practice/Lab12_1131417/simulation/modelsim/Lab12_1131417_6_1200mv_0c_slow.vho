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

-- DATE "12/12/2025 10:45:40"

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

ENTITY 	Lab12_1131417 IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	vga_vs : OUT std_logic;
	vga_hs : OUT std_logic;
	vga_rgb : OUT std_logic_vector(7 DOWNTO 0)
	);
END Lab12_1131417;

-- Design Ports Information
-- vga_vs	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_hs	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[0]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[2]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[4]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[5]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[6]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[7]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF Lab12_1131417 IS
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
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_vga_vs : std_logic;
SIGNAL ww_vga_hs : std_logic;
SIGNAL ww_vga_rgb : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_vga_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll_vga_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pll_vga_inst|altpll_component|auto_generated|locked~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_ctrl_inst|Add2~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~12_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~14_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[1]~12_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|LessThan8~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|LessThan9~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|always5~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|romout[1][7]~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|romout[0][10]~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|romout[1][5]~5_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|romout[0][8]~7_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|romout[0][6]~9_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|romout[0][5]~10_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|pix_x[4]~5_combout\ : std_logic;
SIGNAL \vga_vs~output_o\ : std_logic;
SIGNAL \vga_hs~output_o\ : std_logic;
SIGNAL \vga_rgb[0]~output_o\ : std_logic;
SIGNAL \vga_rgb[1]~output_o\ : std_logic;
SIGNAL \vga_rgb[2]~output_o\ : std_logic;
SIGNAL \vga_rgb[3]~output_o\ : std_logic;
SIGNAL \vga_rgb[4]~output_o\ : std_logic;
SIGNAL \vga_rgb[5]~output_o\ : std_logic;
SIGNAL \vga_rgb[6]~output_o\ : std_logic;
SIGNAL \vga_rgb[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \pll_vga_inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[0]~10_combout\ : std_logic;
SIGNAL \pll_vga_inst|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \pll_vga_inst|altpll_component|auto_generated|pll_lock_sync~q\ : std_logic;
SIGNAL \pll_vga_inst|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \pll_vga_inst|altpll_component|auto_generated|locked~combout\ : std_logic;
SIGNAL \pll_vga_inst|altpll_component|auto_generated|locked~clkctrl_outclk\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[2]~15\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[3]~16_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[0]~11\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[1]~13\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[2]~14_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[0]~10_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Equal0~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[6]~22_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Equal0~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[2]~15\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[3]~16_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[3]~17\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[4]~18_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[4]~19\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[5]~20_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[5]~21\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[6]~23\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[7]~24_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[7]~25\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[8]~26_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[8]~27\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_hs[9]~28_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Equal0~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Equal0~3_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[3]~17\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[4]~18_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[4]~19\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[5]~20_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[5]~21\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[6]~22_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[6]~23\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[7]~25\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[8]~26_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[8]~27\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[9]~28_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|LessThan2~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[0]~11\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[1]~13\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[2]~14_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|LessThan6~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[1]~12_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vs_en~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|LessThan3~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vga_vs~q\ : std_logic;
SIGNAL \vga_ctrl_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vga_hs~q\ : std_logic;
SIGNAL \vga_ctrl_inst|LessThan6~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|cnt_vs[7]~24_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vs_en~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|vs_en~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|pix_y[7]~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~1_cout\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~3\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~5\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~7\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~9\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~11\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~13\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~15\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~16_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|pix_y[9]~3_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|pix_y[8]~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|romout[1][9]~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|romout[1][8]~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|romout[1][6]~3_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|pix_y[3]~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|pix_y[4]~5_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~8_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|pix_y[5]~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|romout[0][9]~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|romout[0][7]~8_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~10_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|pix_y[6]~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Add2~1\ : std_logic;
SIGNAL \vga_ctrl_inst|Add2~3\ : std_logic;
SIGNAL \vga_ctrl_inst|Add2~5\ : std_logic;
SIGNAL \vga_ctrl_inst|Add2~7\ : std_logic;
SIGNAL \vga_ctrl_inst|Add2~9\ : std_logic;
SIGNAL \vga_ctrl_inst|Add2~10_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hs_en~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|hs_en~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|pix_x[9]~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Add2~8_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|pix_x[8]~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Add2~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|pix_x[7]~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Add2~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|pix_x[6]~3_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Add2~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|pix_x[5]~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|Add3~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|pix_y[2]~7_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[2]~13\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[3]~15\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[4]~17\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[5]~19\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[6]~21\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[7]~23\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[8]~25\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[9]~27\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[10]~29\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[11]~31\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[12]~33\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[13]~34_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|always5~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|always5~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr~36_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr~37_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[2]~12_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[3]~14_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[4]~16_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[5]~18_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[6]~20_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[7]~22_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[8]~24_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[9]~26_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[10]~28_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \vga_ctrl_inst|vga_rgb~0_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[11]~30_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|rom_addr[12]~32_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \vga_ctrl_inst|vga_rgb~1_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \vga_ctrl_inst|vga_rgb~2_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \vga_ctrl_inst|vga_rgb~3_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \vga_ctrl_inst|vga_rgb~4_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \vga_ctrl_inst|vga_rgb~5_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \vga_ctrl_inst|vga_rgb~6_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \vga_ctrl_inst|vga_rgb~7_combout\ : std_logic;
SIGNAL \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_ctrl_inst|cnt_hs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_ctrl_inst|cnt_vs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_ctrl_inst|rom_addr\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \vga_ctrl_inst|vga_rgb\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \vga_ctrl_inst|ALT_INV_rom_addr\ : std_logic_vector(13 DOWNTO 13);
SIGNAL \vga_ctrl_inst|ALT_INV_vga_vs~q\ : std_logic;
SIGNAL \vga_ctrl_inst|ALT_INV_vga_hs~q\ : std_logic;
SIGNAL \ALT_INV_rst_n~input_o\ : std_logic;
SIGNAL \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
vga_vs <= ww_vga_vs;
vga_hs <= ww_vga_hs;
vga_rgb <= ww_vga_rgb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll_vga_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll_vga_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll_vga_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll_vga_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll_vga_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll_vga_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\vga_ctrl_inst|rom_addr\(10) & \vga_ctrl_inst|rom_addr\(9) & \vga_ctrl_inst|rom_addr\(8) & \vga_ctrl_inst|rom_addr\(7) & \vga_ctrl_inst|rom_addr\(6) & 
\vga_ctrl_inst|rom_addr\(5) & \vga_ctrl_inst|rom_addr\(4) & \vga_ctrl_inst|rom_addr\(3) & \vga_ctrl_inst|rom_addr\(2) & \vga_ctrl_inst|rom_addr\(1) & \vga_ctrl_inst|rom_addr\(0));

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a9\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a10\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a11\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\vga_ctrl_inst|rom_addr\(12) & \vga_ctrl_inst|rom_addr\(11) & \vga_ctrl_inst|rom_addr\(10) & \vga_ctrl_inst|rom_addr\(9) & \vga_ctrl_inst|rom_addr\(8) & 
\vga_ctrl_inst|rom_addr\(7) & \vga_ctrl_inst|rom_addr\(6) & \vga_ctrl_inst|rom_addr\(5) & \vga_ctrl_inst|rom_addr\(4) & \vga_ctrl_inst|rom_addr\(3) & \vga_ctrl_inst|rom_addr\(2) & \vga_ctrl_inst|rom_addr\(1) & \vga_ctrl_inst|rom_addr\(0));

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\vga_ctrl_inst|rom_addr\(12) & \vga_ctrl_inst|rom_addr\(11) & \vga_ctrl_inst|rom_addr\(10) & \vga_ctrl_inst|rom_addr\(9) & \vga_ctrl_inst|rom_addr\(8) & 
\vga_ctrl_inst|rom_addr\(7) & \vga_ctrl_inst|rom_addr\(6) & \vga_ctrl_inst|rom_addr\(5) & \vga_ctrl_inst|rom_addr\(4) & \vga_ctrl_inst|rom_addr\(3) & \vga_ctrl_inst|rom_addr\(2) & \vga_ctrl_inst|rom_addr\(1) & \vga_ctrl_inst|rom_addr\(0));

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\vga_ctrl_inst|rom_addr\(12) & \vga_ctrl_inst|rom_addr\(11) & \vga_ctrl_inst|rom_addr\(10) & \vga_ctrl_inst|rom_addr\(9) & \vga_ctrl_inst|rom_addr\(8) & 
\vga_ctrl_inst|rom_addr\(7) & \vga_ctrl_inst|rom_addr\(6) & \vga_ctrl_inst|rom_addr\(5) & \vga_ctrl_inst|rom_addr\(4) & \vga_ctrl_inst|rom_addr\(3) & \vga_ctrl_inst|rom_addr\(2) & \vga_ctrl_inst|rom_addr\(1) & \vga_ctrl_inst|rom_addr\(0));

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\vga_ctrl_inst|rom_addr\(12) & \vga_ctrl_inst|rom_addr\(11) & \vga_ctrl_inst|rom_addr\(10) & \vga_ctrl_inst|rom_addr\(9) & \vga_ctrl_inst|rom_addr\(8) & 
\vga_ctrl_inst|rom_addr\(7) & \vga_ctrl_inst|rom_addr\(6) & \vga_ctrl_inst|rom_addr\(5) & \vga_ctrl_inst|rom_addr\(4) & \vga_ctrl_inst|rom_addr\(3) & \vga_ctrl_inst|rom_addr\(2) & \vga_ctrl_inst|rom_addr\(1) & \vga_ctrl_inst|rom_addr\(0));

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\vga_ctrl_inst|rom_addr\(10) & \vga_ctrl_inst|rom_addr\(9) & \vga_ctrl_inst|rom_addr\(8) & \vga_ctrl_inst|rom_addr\(7) & \vga_ctrl_inst|rom_addr\(6) & 
\vga_ctrl_inst|rom_addr\(5) & \vga_ctrl_inst|rom_addr\(4) & \vga_ctrl_inst|rom_addr\(3) & \vga_ctrl_inst|rom_addr\(2) & \vga_ctrl_inst|rom_addr\(1) & \vga_ctrl_inst|rom_addr\(0));

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a13\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a14\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(2);
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a15\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(3);

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\vga_ctrl_inst|rom_addr\(12) & \vga_ctrl_inst|rom_addr\(11) & \vga_ctrl_inst|rom_addr\(10) & \vga_ctrl_inst|rom_addr\(9) & \vga_ctrl_inst|rom_addr\(8) & 
\vga_ctrl_inst|rom_addr\(7) & \vga_ctrl_inst|rom_addr\(6) & \vga_ctrl_inst|rom_addr\(5) & \vga_ctrl_inst|rom_addr\(4) & \vga_ctrl_inst|rom_addr\(3) & \vga_ctrl_inst|rom_addr\(2) & \vga_ctrl_inst|rom_addr\(1) & \vga_ctrl_inst|rom_addr\(0));

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\vga_ctrl_inst|rom_addr\(12) & \vga_ctrl_inst|rom_addr\(11) & \vga_ctrl_inst|rom_addr\(10) & \vga_ctrl_inst|rom_addr\(9) & \vga_ctrl_inst|rom_addr\(8) & 
\vga_ctrl_inst|rom_addr\(7) & \vga_ctrl_inst|rom_addr\(6) & \vga_ctrl_inst|rom_addr\(5) & \vga_ctrl_inst|rom_addr\(4) & \vga_ctrl_inst|rom_addr\(3) & \vga_ctrl_inst|rom_addr\(2) & \vga_ctrl_inst|rom_addr\(1) & \vga_ctrl_inst|rom_addr\(0));

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\vga_ctrl_inst|rom_addr\(12) & \vga_ctrl_inst|rom_addr\(11) & \vga_ctrl_inst|rom_addr\(10) & \vga_ctrl_inst|rom_addr\(9) & \vga_ctrl_inst|rom_addr\(8) & 
\vga_ctrl_inst|rom_addr\(7) & \vga_ctrl_inst|rom_addr\(6) & \vga_ctrl_inst|rom_addr\(5) & \vga_ctrl_inst|rom_addr\(4) & \vga_ctrl_inst|rom_addr\(3) & \vga_ctrl_inst|rom_addr\(2) & \vga_ctrl_inst|rom_addr\(1) & \vga_ctrl_inst|rom_addr\(0));

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\vga_ctrl_inst|rom_addr\(12) & \vga_ctrl_inst|rom_addr\(11) & \vga_ctrl_inst|rom_addr\(10) & \vga_ctrl_inst|rom_addr\(9) & \vga_ctrl_inst|rom_addr\(8) & 
\vga_ctrl_inst|rom_addr\(7) & \vga_ctrl_inst|rom_addr\(6) & \vga_ctrl_inst|rom_addr\(5) & \vga_ctrl_inst|rom_addr\(4) & \vga_ctrl_inst|rom_addr\(3) & \vga_ctrl_inst|rom_addr\(2) & \vga_ctrl_inst|rom_addr\(1) & \vga_ctrl_inst|rom_addr\(0));

\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\pll_vga_inst|altpll_component|auto_generated|locked~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll_vga_inst|altpll_component|auto_generated|locked~combout\);

\pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk\(0));
\vga_ctrl_inst|ALT_INV_rom_addr\(13) <= NOT \vga_ctrl_inst|rom_addr\(13);
\vga_ctrl_inst|ALT_INV_vga_vs~q\ <= NOT \vga_ctrl_inst|vga_vs~q\;
\vga_ctrl_inst|ALT_INV_vga_hs~q\ <= NOT \vga_ctrl_inst|vga_hs~q\;
\ALT_INV_rst_n~input_o\ <= NOT \rst_n~input_o\;
\pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\ <= NOT \pll_vga_inst|altpll_component|auto_generated|locked~clkctrl_outclk\;

-- Location: LCCOMB_X32_Y25_N10
\vga_ctrl_inst|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add2~0_combout\ = \vga_ctrl_inst|cnt_hs\(4) $ (VCC)
-- \vga_ctrl_inst|Add2~1\ = CARRY(\vga_ctrl_inst|cnt_hs\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_hs\(4),
	datad => VCC,
	combout => \vga_ctrl_inst|Add2~0_combout\,
	cout => \vga_ctrl_inst|Add2~1\);

-- Location: LCCOMB_X35_Y25_N12
\vga_ctrl_inst|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add3~12_combout\ = (\vga_ctrl_inst|cnt_vs\(7) & ((GND) # (!\vga_ctrl_inst|Add3~11\))) # (!\vga_ctrl_inst|cnt_vs\(7) & (\vga_ctrl_inst|Add3~11\ $ (GND)))
-- \vga_ctrl_inst|Add3~13\ = CARRY((\vga_ctrl_inst|cnt_vs\(7)) # (!\vga_ctrl_inst|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_vs\(7),
	datad => VCC,
	cin => \vga_ctrl_inst|Add3~11\,
	combout => \vga_ctrl_inst|Add3~12_combout\,
	cout => \vga_ctrl_inst|Add3~13\);

-- Location: LCCOMB_X35_Y25_N14
\vga_ctrl_inst|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add3~14_combout\ = (\vga_ctrl_inst|cnt_vs\(8) & (\vga_ctrl_inst|Add3~13\ & VCC)) # (!\vga_ctrl_inst|cnt_vs\(8) & (!\vga_ctrl_inst|Add3~13\))
-- \vga_ctrl_inst|Add3~15\ = CARRY((!\vga_ctrl_inst|cnt_vs\(8) & !\vga_ctrl_inst|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_vs\(8),
	datad => VCC,
	cin => \vga_ctrl_inst|Add3~13\,
	combout => \vga_ctrl_inst|Add3~14_combout\,
	cout => \vga_ctrl_inst|Add3~15\);

-- Location: M9K_X25_Y18_N0
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000555555555555555600000000000000000000000000000000000000000000000000000000000000000000000000000000555559AAEE2222EEAA55555500000000000000000000000000000000000000000000000000000000000000000000000005555AE27BFFFFFFFFFFFFB72EA555500000000000000000000000000000000000000000000000000000000000000000000555AE7FFFFFFFFFFBBFFFFFFFFFB7EA55500000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000555E7FFFFFFF6FF6F6DD2FFFFFFFFFFFB2A555000000000000000000000000000000000000000000000000000000000000955E7FFFFFFF2F9EF2FEFFDFFFFFBDD6FFFFF7A55600000000000000000000000000000000000000000000000000000000555A7FFFFF2DFF2F2D62FEFFDFFFFFFF62FD2FFFF7A5500000000000000000000000000000000000000000000000000000055A2FFF69FF2E6F2B6BDDFEFFDFFFFF222BFF29FFFFFE55600000000000000000000000000000000000000000000000000055EBFFFD262F6BEBB66BB4FEFFDFFFFFF69FFBD6FFFFFF7A55000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../Lab_12_tool/img/img/output.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_ctrl:vga_ctrl_inst|my_img_rom:u_rom|altsyncram:altsyncram_component|altsyncram_uvb1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 10000,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 4,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \vga_ctrl_inst|rom_addr\(13),
	portaaddr => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y20_N0
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000DDFBDDFF0BFFB0000000000037CA3FFFFA7FDD800000000006FFFBFF0FFFFFFC00000000005FEDFDFFFBFF17A0000000001B79BEEFFF77E0FF00000000017FF7B7000EDEA9F8000000003F3FEF9FFF9F7FFEC000000006C93FCFFFFF6FF37400000000DE7F5BFFFFFDFF9FA00000000BF3EEFC4627F57F7F00000001F3BFDFAA977FBBD4D8000000379FFFF83637FDDDDE80000003FDF6FFEBBF7FEEFBFC0000006FF6FFFDAAD3FFEFBF400000059EFFFFAA87BFFAF7BE000000DDDEA7FD54A7FE5F0FA000000FE7B6C7FFFFFC76DFFF000000BFFEEFE3FFFC7F7BDFD000001FFFAEFFE3FC7FF76DFD0000017FFDEFFFE6FFFF7FFFF8000017FE7EFFFF6F",
	mem_init2 => X"FFF7B7FE8000037FFBEFFFF6FFFF7EFFE800003FFDBEFFFF6FFFF7DFFFC00002FFEFEFFFF6FFFF7DBFFC00002FFF7EFFFF6FFFF7F7FF400002FFF7EFFFF6FFFF7EFFF400006FFB7EFFFF6FFFF7EFFF400007FF9FF0FFF6FFF0FEDFF400007FFDFFFC7F6FC3FFF9FF600007FFEFFFFDF6FBFFFF9FFE00005FBEFFFFDF6FBFFFFBD7E00005E7EFFFFDF6FBFFFFBE7E00005C3EFFFFDF6FBFFFFBC3E00005FFEFFFFDF6FBFFFFBEFE00007FFEFFFFDF6FBFFFFBFFE00007FFEFFFFDF6FBFFFF9FFE00007FFDFFFE3F6FCFFFFDFF400007FF9FFF3FF6FFCFFEFFF400002FFB7F1FFF6FFF8FEFFF400002FFF7EFFFF6FFFF7EFFF400002FFFFEFFF31CFFF7F3FFC000",
	mem_init1 => X"03FFCFEFF19F18FF7DFFFC00001FFFBEF18FFF39F7DFFE8000017DF7E9CFFFFF397E7FE8000017A2DFCFFFFFFE3FBFFF800001F27FE7FFF0FFFE7DFFD000000A0B6EFFF1F9FFF77F7D000000A1FDEFF9FFF9FF6DA7F000000517F6F8FFFFF1F7FF3A0000005FFDACFFFFFFF35BEBE0000006FFF57FFFFFFFEBFFB40000002FFFAFFFFFFFFF5FFFC00000037FFD7FFFFFFFEBFFE80000001FFFCBFFFFFFFD7FFD80000000BFFF5FFFFFFF7FFFD000000005FFFF7FFFFFEFFFFA000000007FFFFDFFFFFB5FFF6000000002FFFDF7FFFEFFFFFC0000000037FFF7C7FE76FFFF8000000000BFFEDBE0FDBFFFD0000000000DFFEF79F9DFFFFA00000000006FFF7F3F",
	mem_init0 => X"CFFFFF4000000000037FFFFFFFFDFFE800000000000BFCBFFFFFA3FB0000000000006FE9FFFFF97F600000000000037EFFFFFFD3CC0000000000001DEFFFFFFBBB8000000000000067FFFFFFFEE0000000000000039FFFFFFFB8000000000000000F3FFFFFCE00000000000000001E7FFFE78000000000000000007E0F07C00000000000000000003FFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../Lab_12_tool/img/img/output.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_ctrl:vga_ctrl_inst|my_img_rom:u_rom|altsyncram:altsyncram_component|altsyncram_uvb1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 10000,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \vga_ctrl_inst|ALT_INV_rom_addr\(13),
	portaaddr => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y16_N0
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a12\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022455554220000000000000000000000000000000000000000000000000000000000000000000000000000000000000279DFFFFFFFFFFFFD9520000000000000000000000000000000000000000000000000000000000000000000000000000049DFFFFFFFFFFFFFFFFFFFFD92000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000029DFFFFFFFFFFFFEEFFFFFFFFFFFFD700000000000000000000000000000000000000000000000000000000000000000002BFFFFFFFFFEEFFFEFFEFFFFFFEEFFFFFF920000000000000000000000000000000000000000000000000000000000000029FFFFFFEFFFFFEFFFEFFEFFFFFFFFFFEFFFFF90000000000000000000000000000000000000000000000000000000000007FFFFEFFFEFFFFFFEEFEFFEFFFFFFFFFFFFEFFFFD4000000000000000000000000000000000000000000000000000000002BFFFEFFFFFFEFFFFFFEFEFFEFFFFFFFEFFFEFFFFFFF9000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../Lab_12_tool/img/img/output.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_ctrl:vga_ctrl_inst|my_img_rom:u_rom|altsyncram:altsyncram_component|altsyncram_uvb1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 10000,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 4,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \vga_ctrl_inst|rom_addr\(13),
	portaaddr => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y19_N0
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00003FEF7FFFFDFF80000000000007FDFFFFFD3FFE000000000000F6F7FFFFF9F9F000000000001F96FE0007FFBF8000000000039F7F1FFF8FFFFC000000000077CFCF801F3FDFE0000000000FC7F380003CF9BF0000000001FFFCE0000073FCF0000000001FE7B80000019F7F8000000003FFF60110800EF71C000000007FFCC03BBD0037EFE000000007DF9806261001BDEE00000000FE73007BBD000DFDF00000000FEF6006AA58006F3F00000001FFEC002ABD80037FF80000001E3D800319900013A780000003FFD0E000000071BEFC0000003F7B0FE00000FF0DDFC0000007FF60FFF000FFF05FFC0000007FF60FFFF0FFFF06FFE0000007FFC0FFFF0F",
	mem_init2 => X"FFF02FFE000000FFEC0FFFF0FFFF037FE000000FFE80FFFF0FFFF017FF000000FFD80FFFF0FFFF017FF000000FFD80FFFF0FFFF01BFF000001FFD00FFFF0FFFF00BFF000001FFD00FFFF0FFFF00BFF000001FFF001FFF0FFF800BFF800001FFB0000FF0FF0000FFF800001FFB00001F0F80000DFF800001FFB00001F0F80000DFF800001F7A00001F0F80000DEF800001FFA00001F0F80000DEF800001FFA00001F0F80000DFF800001FFB00001F0F80000DFF800001FFB00001F0F80000FFF800001FFB00007F0FE0000BFF800001FFF0003FF0FFC000BFF000001FFD003FFF0FFFC00BFF000000FFD00FFFF0FFFF01BFF000000FFD81FFF801FFF01FFF0000",
	mem_init1 => X"00FFE81FF81F81FF017FF000000FFE81F81FFF81F037FE0000007FEC081FFFFF0103FFE0000007BF400FFFFFFF002FFE0000007F760FFFF9FFFF06FFE0000002FFA1FFF801FFF0DF7C00000037FB1FF80003FF09F7C0000003BFD9FC000003F1BFF80000001FFE9C0000000337FB80000001FFEC00000000027FB00000000FFF60000000006FFF000000007FFB000000000DFFE000000007FFD800000003BFFE000000003FFEE000000067FFC000000001FFF30000000CFFF8000000001FFF9C000003BFFF8000000000FFFE700000E7FFF00000000007FFF9E00079FFFE00000000003FFFE7FFFE7FFFC00000000001FFEF87FE3FFFF800000000000FFFFFC0",
	mem_init0 => X"3FFFFF0000000000007FFFFFFFFFFFE0000000000003FDFFFFFFB7FC0000000000000FF3FFFFFF7F000000000000007EFFFFFFF3E000000000000001EFFFFFFFF8000000000000000FFFFFFFFE00000000000000001FFFFFFF8000000000000000007FFFFFE0000000000000000000FFFFE0000000000000000000003FC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../Lab_12_tool/img/img/output.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_ctrl:vga_ctrl_inst|my_img_rom:u_rom|altsyncram:altsyncram_component|altsyncram_uvb1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 10000,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \vga_ctrl_inst|ALT_INV_rom_addr\(13),
	portaaddr => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y21_N0
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00003FFFFFFFFFFF80000000000003FFFFFFFFFFFE0000000000007FFFFFFFFFFFF000000000000FFFFFFFFFFFFF000000000001FFFFFFFFFFFFF800000000003FFFFE8037FFFFC00000000007FFFF40002FFFFF0000000001FFFFE000003FFFF0000000001FFFF0000000FFFF8000000003FFFE0111800FFFF8000000003FFF801168003FFFE000000007FFF807498000FFFE000000007FFF0010400007FFE00000001FFFE0025408003FFF00000001FFF80050780003FFF00000003FFF00028910001FFF80000001FFF1B0000000B1FFFC0000003FFF1F900000BF07FFC0000003FFE1FFD001BFF07FFE0000007FFE1FFFD03FFF03FFC0000007FFC1FFFF1F",
	mem_init2 => X"FFF03FFE000000FFFC1FFFF1FFFF01FFF0000007FF81FFFF1FFFF01FFF000000FFF01FFFF1FFFF01FFE000000FFF81FFFF1FFFF00FFF000001FFF01FFFF1FFFF01FFF000001FFF00FFFF1FFFF00FFF800000FFE0037FF1FFCC00FFF800000C3E0000BF1FB0000783800001BDF00003F1F8000073D00000181F00003F1F8000076D000001BEF00003F1F80000F4D0000017CF00003F1F80000F3E00000124F00003F1F8000077D00000199F00003F1F80000783000000E3F00003F1F800007C7800000FFE00005F1FA0000FFF800000FFE0005FF1FFA000FFF800001FFF002FFF1FFF400FFF000000FFF01FFFE07FFF01FFF000000FFF81FFE8017FF00FFE0000",
	mem_init1 => X"007FF81FE82E817F01FFE0000007FF81E817FE82F03FFF0000007CF80417FFFE8203DFE000000755C017FFFFFD007FFC0000003D5C0BFFE97FFD07DFE0000002E7E1FFE802FFF0FD7C0000001EBE1FF40002FF0F5780000003EBF9F4000002F0E4D80000001DFF9A000000053F7100000001FFFC0000000007FFB00000000FFFE0000000007FFE00000000FFFF000000001FFFE000000003FFF800000003FFFE000000003FFFE00000003FFF8000000003FFFE0000000FFFF8000000000FFFFC000001FFFF80000000007FFFF000007FFFE00000000007FFFFA0007FFFFC00000000003FFDFF9F9FFFFF800000000001FFF7FFFFFFFFF000000000000FFFFFFF",
	mem_init0 => X"FF17FE0000000000003FF47FFFF21FC0000000000001FD5FFFFFE7FC0000000000001FD3FFFFFE7F000000000000003F4FFFFF3BE000000000000003FFFFFFF7F0000000000000000FFFFFFFFD00000000000000002FFFFFFF0000000000000000007FFFFFA0000000000000000000BFFF90000000000000000000007FE000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../Lab_12_tool/img/img/output.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_ctrl:vga_ctrl_inst|my_img_rom:u_rom|altsyncram:altsyncram_component|altsyncram_uvb1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 10000,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \vga_ctrl_inst|ALT_INV_rom_addr\(13),
	portaaddr => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y15_N0
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a7\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00001FFFFFFFFFFF80000000000007FFFFFFFFFFFC000000000000FFFFFFFFFFFFE000000000001FFFFFFFFFFFFF800000000003FFFFFFFFFFFFFC00000000007FFFFF000FFFFFE0000000000FFFFF80001FFFFE0000000000FFFFC000007FFFF0000000001FFFF8000001FFFF8000000003FFFE00000007FFFC000000007FFFC02A95003FFFC000000007FFF000261001FFFE00000000FFFE006BBD000FFFF00000000FFFC004AA50007FFF00000001FFFC002A858003FFF80000001FFF80011080001FFF80000003FFF0C000000070FFF80000003FFE0FE000007F0FFFC0000007FFE0FFE0007FF07FFC0000007FFC0FFFE0FFFF07FFE0000007FFC0FFFF0F",
	mem_init2 => X"FFF03FFE0000007FF80FFFF0FFFF03FFE000000FFF80FFFF0FFFF01FFE000000FFF80FFFF0FFFF01FFF000000FFF00FFFF0FFFF01FFF000000FFF00FFFF0FFFF00FFF000000FFF00FFFF0FFFF00FFF000001FFF000FFF0FFF000FFF000001FFF00007F0FC0000FFF000001FFE00001F0F80000FFF800001FFE00001F0F80000FD7800001E7E00001F0F800007E7800001C3E00001F0F800007C3800001FFE00001F0F80000FEF800001FFE00001F0F80000FFF800001FFE00001F0F80000FFF000001FFF00003F0FC0000FFF000001FFF0003FF0FFC000FFF000000FFF001FFF0FFF800FFF000000FFF00FFFF0FFFF00FFF000000FFF00FFF000FFF01FFF0000",
	mem_init1 => X"00FFF80FF01F00FF01FFF000000FFF80F00FFF01F01FFE0000007FFC080FFFFF0103FFE0000007ABC00FFFFFFE003FFE000000727E07FFF0FFFE07FFC00000021BE0FFF001FFF07F7C00000021FF0FF80001FF0FA7C000000117F0F8000001F1FF380000001FFF8C000000031FEB80000000FFFC0000000003FFB00000000FFFE0000000007FFF000000007FFF000000000FFFE000000007FFF800000001FFFC000000003FFFC00000007FFFC000000001FFFF0000000FFFF8000000001FFFF8000003FFFF0000000000FFFFE00000FFFFF00000000007FFFFC0003FFFFE00000000003FFEFFE07FFFFFC00000000001FFEFFFFFFBFFF800000000000FFF7FFF",
	mem_init0 => X"FFFFFF0000000000007FFFFFFFFDFFE0000000000003FCBFFFFFB3F80000000000000FE1FFFFF97F000000000000007EFFFFFFD3C000000000000001EFFFFFFBB80000000000000007FFFFFFFE00000000000000001FFFFFFF8000000000000000003FFFFFC00000000000000000007FFFE000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../Lab_12_tool/img/img/output.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_ctrl:vga_ctrl_inst|my_img_rom:u_rom|altsyncram:altsyncram_component|altsyncram_uvb1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 10000,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \vga_ctrl_inst|ALT_INV_rom_addr\(13),
	portaaddr => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: FF_X31_Y26_N13
\vga_ctrl_inst|cnt_hs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_hs[1]~12_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_hs\(1));

-- Location: LCCOMB_X31_Y26_N12
\vga_ctrl_inst|cnt_hs[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_hs[1]~12_combout\ = (\vga_ctrl_inst|cnt_hs\(1) & (!\vga_ctrl_inst|cnt_hs[0]~11\)) # (!\vga_ctrl_inst|cnt_hs\(1) & ((\vga_ctrl_inst|cnt_hs[0]~11\) # (GND)))
-- \vga_ctrl_inst|cnt_hs[1]~13\ = CARRY((!\vga_ctrl_inst|cnt_hs[0]~11\) # (!\vga_ctrl_inst|cnt_hs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_hs\(1),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_hs[0]~11\,
	combout => \vga_ctrl_inst|cnt_hs[1]~12_combout\,
	cout => \vga_ctrl_inst|cnt_hs[1]~13\);

-- Location: LCCOMB_X30_Y25_N8
\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\vga_ctrl_inst|Mult0|mult_core|romout[0][6]~9_combout\ & (\vga_ctrl_inst|pix_y[6]~1_combout\ $ (VCC))) # (!\vga_ctrl_inst|Mult0|mult_core|romout[0][6]~9_combout\ & 
-- (\vga_ctrl_inst|pix_y[6]~1_combout\ & VCC))
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\vga_ctrl_inst|Mult0|mult_core|romout[0][6]~9_combout\ & \vga_ctrl_inst|pix_y[6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Mult0|mult_core|romout[0][6]~9_combout\,
	datab => \vga_ctrl_inst|pix_y[6]~1_combout\,
	datad => VCC,
	combout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X30_Y25_N10
\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\vga_ctrl_inst|pix_y[7]~0_combout\ & ((\vga_ctrl_inst|Mult0|mult_core|romout[0][7]~8_combout\ & (\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) 
-- # (!\vga_ctrl_inst|Mult0|mult_core|romout[0][7]~8_combout\ & (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\vga_ctrl_inst|pix_y[7]~0_combout\ & ((\vga_ctrl_inst|Mult0|mult_core|romout[0][7]~8_combout\ & 
-- (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\vga_ctrl_inst|Mult0|mult_core|romout[0][7]~8_combout\ & ((\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\vga_ctrl_inst|pix_y[7]~0_combout\ & (!\vga_ctrl_inst|Mult0|mult_core|romout[0][7]~8_combout\ & !\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\vga_ctrl_inst|pix_y[7]~0_combout\ & ((!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\vga_ctrl_inst|Mult0|mult_core|romout[0][7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|pix_y[7]~0_combout\,
	datab => \vga_ctrl_inst|Mult0|mult_core|romout[0][7]~8_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X30_Y25_N18
\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\vga_ctrl_inst|Mult0|mult_core|romout[1][7]~2_combout\ & (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\vga_ctrl_inst|Mult0|mult_core|romout[1][7]~2_combout\ & ((\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\vga_ctrl_inst|Mult0|mult_core|romout[1][7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Mult0|mult_core|romout[1][7]~2_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X30_Y25_N20
\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = (\vga_ctrl_inst|Mult0|mult_core|romout[1][8]~1_combout\ & (\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (GND))) # 
-- (!\vga_ctrl_inst|Mult0|mult_core|romout[1][8]~1_combout\ & (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & VCC))
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\vga_ctrl_inst|Mult0|mult_core|romout[1][8]~1_combout\ & !\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|Mult0|mult_core|romout[1][8]~1_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X32_Y25_N26
\vga_ctrl_inst|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|LessThan8~0_combout\ = ((!\vga_ctrl_inst|Add2~2_combout\ & (!\vga_ctrl_inst|Add2~4_combout\ & !\vga_ctrl_inst|Add2~0_combout\))) # (!\vga_ctrl_inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Add2~2_combout\,
	datab => \vga_ctrl_inst|Add2~6_combout\,
	datac => \vga_ctrl_inst|Add2~4_combout\,
	datad => \vga_ctrl_inst|Add2~0_combout\,
	combout => \vga_ctrl_inst|LessThan8~0_combout\);

-- Location: LCCOMB_X29_Y22_N0
\vga_ctrl_inst|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|LessThan9~0_combout\ = ((!\vga_ctrl_inst|Add3~6_combout\ & (!\vga_ctrl_inst|Add3~10_combout\ & !\vga_ctrl_inst|Add3~8_combout\))) # (!\vga_ctrl_inst|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Add3~12_combout\,
	datab => \vga_ctrl_inst|Add3~6_combout\,
	datac => \vga_ctrl_inst|Add3~10_combout\,
	datad => \vga_ctrl_inst|Add3~8_combout\,
	combout => \vga_ctrl_inst|LessThan9~0_combout\);

-- Location: LCCOMB_X29_Y22_N26
\vga_ctrl_inst|always5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|always5~0_combout\ = (\vga_ctrl_inst|LessThan8~0_combout\ & ((\vga_ctrl_inst|LessThan9~0_combout\) # ((!\vga_ctrl_inst|Add3~14_combout\)))) # (!\vga_ctrl_inst|LessThan8~0_combout\ & (!\vga_ctrl_inst|Add2~8_combout\ & 
-- ((\vga_ctrl_inst|LessThan9~0_combout\) # (!\vga_ctrl_inst|Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|LessThan8~0_combout\,
	datab => \vga_ctrl_inst|LessThan9~0_combout\,
	datac => \vga_ctrl_inst|Add3~14_combout\,
	datad => \vga_ctrl_inst|Add2~8_combout\,
	combout => \vga_ctrl_inst|always5~0_combout\);

-- Location: LCCOMB_X32_Y25_N28
\vga_ctrl_inst|Mult0|mult_core|romout[1][7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|romout[1][7]~2_combout\ = \vga_ctrl_inst|pix_y[8]~2_combout\ $ (((\vga_ctrl_inst|pix_y[6]~1_combout\ & (!\vga_ctrl_inst|pix_y[7]~0_combout\ & \vga_ctrl_inst|pix_y[9]~3_combout\)) # (!\vga_ctrl_inst|pix_y[6]~1_combout\ & 
-- (\vga_ctrl_inst|pix_y[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|pix_y[6]~1_combout\,
	datab => \vga_ctrl_inst|pix_y[7]~0_combout\,
	datac => \vga_ctrl_inst|pix_y[9]~3_combout\,
	datad => \vga_ctrl_inst|pix_y[8]~2_combout\,
	combout => \vga_ctrl_inst|Mult0|mult_core|romout[1][7]~2_combout\);

-- Location: LCCOMB_X31_Y22_N0
\vga_ctrl_inst|Mult0|mult_core|romout[0][10]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|romout[0][10]~4_combout\ = (\vga_ctrl_inst|pix_y[5]~4_combout\ & ((\vga_ctrl_inst|pix_y[4]~5_combout\) # ((\vga_ctrl_inst|pix_y[3]~6_combout\ & \vga_ctrl_inst|pix_y[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|pix_y[3]~6_combout\,
	datab => \vga_ctrl_inst|pix_y[2]~7_combout\,
	datac => \vga_ctrl_inst|pix_y[4]~5_combout\,
	datad => \vga_ctrl_inst|pix_y[5]~4_combout\,
	combout => \vga_ctrl_inst|Mult0|mult_core|romout[0][10]~4_combout\);

-- Location: LCCOMB_X30_Y25_N30
\vga_ctrl_inst|Mult0|mult_core|romout[1][5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|romout[1][5]~5_combout\ = \vga_ctrl_inst|pix_y[6]~1_combout\ $ (\vga_ctrl_inst|pix_y[9]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|pix_y[6]~1_combout\,
	datad => \vga_ctrl_inst|pix_y[9]~3_combout\,
	combout => \vga_ctrl_inst|Mult0|mult_core|romout[1][5]~5_combout\);

-- Location: LCCOMB_X30_Y25_N26
\vga_ctrl_inst|Mult0|mult_core|romout[0][8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|romout[0][8]~7_combout\ = (\vga_ctrl_inst|pix_y[3]~6_combout\ & (\vga_ctrl_inst|pix_y[5]~4_combout\ $ (((\vga_ctrl_inst|pix_y[2]~7_combout\ & !\vga_ctrl_inst|pix_y[4]~5_combout\))))) # (!\vga_ctrl_inst|pix_y[3]~6_combout\ & 
-- ((\vga_ctrl_inst|pix_y[4]~5_combout\ & ((\vga_ctrl_inst|pix_y[2]~7_combout\) # (!\vga_ctrl_inst|pix_y[5]~4_combout\))) # (!\vga_ctrl_inst|pix_y[4]~5_combout\ & ((\vga_ctrl_inst|pix_y[5]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|pix_y[2]~7_combout\,
	datab => \vga_ctrl_inst|pix_y[3]~6_combout\,
	datac => \vga_ctrl_inst|pix_y[4]~5_combout\,
	datad => \vga_ctrl_inst|pix_y[5]~4_combout\,
	combout => \vga_ctrl_inst|Mult0|mult_core|romout[0][8]~7_combout\);

-- Location: LCCOMB_X30_Y25_N6
\vga_ctrl_inst|Mult0|mult_core|romout[0][6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|romout[0][6]~9_combout\ = \vga_ctrl_inst|pix_y[3]~6_combout\ $ (((\vga_ctrl_inst|pix_y[2]~7_combout\ & !\vga_ctrl_inst|pix_y[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|pix_y[3]~6_combout\,
	datac => \vga_ctrl_inst|pix_y[2]~7_combout\,
	datad => \vga_ctrl_inst|pix_y[5]~4_combout\,
	combout => \vga_ctrl_inst|Mult0|mult_core|romout[0][6]~9_combout\);

-- Location: LCCOMB_X29_Y22_N30
\vga_ctrl_inst|Mult0|mult_core|romout[0][5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|romout[0][5]~10_combout\ = \vga_ctrl_inst|pix_y[2]~7_combout\ $ (\vga_ctrl_inst|pix_y[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|pix_y[2]~7_combout\,
	datad => \vga_ctrl_inst|pix_y[5]~4_combout\,
	combout => \vga_ctrl_inst|Mult0|mult_core|romout[0][5]~10_combout\);

-- Location: LCCOMB_X30_Y20_N26
\vga_ctrl_inst|pix_x[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|pix_x[4]~5_combout\ = (\vga_ctrl_inst|Add2~0_combout\ & !\vga_ctrl_inst|hs_en~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|Add2~0_combout\,
	datad => \vga_ctrl_inst|hs_en~1_combout\,
	combout => \vga_ctrl_inst|pix_x[4]~5_combout\);

-- Location: IOOBUF_X41_Y18_N23
\vga_vs~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_ctrl_inst|ALT_INV_vga_vs~q\,
	devoe => ww_devoe,
	o => \vga_vs~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\vga_hs~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_ctrl_inst|ALT_INV_vga_hs~q\,
	devoe => ww_devoe,
	o => \vga_hs~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\vga_rgb[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_ctrl_inst|vga_rgb\(0),
	devoe => ww_devoe,
	o => \vga_rgb[0]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\vga_rgb[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_ctrl_inst|vga_rgb\(1),
	devoe => ww_devoe,
	o => \vga_rgb[1]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\vga_rgb[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_ctrl_inst|vga_rgb\(2),
	devoe => ww_devoe,
	o => \vga_rgb[2]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\vga_rgb[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_ctrl_inst|vga_rgb\(3),
	devoe => ww_devoe,
	o => \vga_rgb[3]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\vga_rgb[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_ctrl_inst|vga_rgb\(4),
	devoe => ww_devoe,
	o => \vga_rgb[4]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\vga_rgb[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_ctrl_inst|vga_rgb\(5),
	devoe => ww_devoe,
	o => \vga_rgb[5]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\vga_rgb[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_ctrl_inst|vga_rgb\(6),
	devoe => ww_devoe,
	o => \vga_rgb[6]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\vga_rgb[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_ctrl_inst|vga_rgb\(7),
	devoe => ww_devoe,
	o => \vga_rgb[7]~output_o\);

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

-- Location: PLL_2
\pll_vga_inst|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "auto",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5052,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_rst_n~input_o\,
	fbin => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll_vga_inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll_vga_inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y26_N8
\vga_ctrl_inst|cnt_vs[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_vs[0]~10_combout\ = \vga_ctrl_inst|cnt_vs\(0) $ (VCC)
-- \vga_ctrl_inst|cnt_vs[0]~11\ = CARRY(\vga_ctrl_inst|cnt_vs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_vs\(0),
	datad => VCC,
	combout => \vga_ctrl_inst|cnt_vs[0]~10_combout\,
	cout => \vga_ctrl_inst|cnt_vs[0]~11\);

-- Location: LCCOMB_X29_Y17_N24
\pll_vga_inst|altpll_component|auto_generated|pll_lock_sync~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pll_vga_inst|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \pll_vga_inst|altpll_component|auto_generated|pll_lock_sync~feeder_combout\);

-- Location: IOIBUF_X0_Y21_N8
\rst_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X29_Y17_N25
\pll_vga_inst|altpll_component|auto_generated|pll_lock_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_locked\,
	d => \pll_vga_inst|altpll_component|auto_generated|pll_lock_sync~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pll_vga_inst|altpll_component|auto_generated|pll_lock_sync~q\);

-- Location: LCCOMB_X29_Y17_N2
\pll_vga_inst|altpll_component|auto_generated|locked\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pll_vga_inst|altpll_component|auto_generated|locked~combout\ = (!\pll_vga_inst|altpll_component|auto_generated|wire_pll1_locked\) # (!\pll_vga_inst|altpll_component|auto_generated|pll_lock_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pll_vga_inst|altpll_component|auto_generated|pll_lock_sync~q\,
	datad => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_locked\,
	combout => \pll_vga_inst|altpll_component|auto_generated|locked~combout\);

-- Location: CLKCTRL_G18
\pll_vga_inst|altpll_component|auto_generated|locked~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll_vga_inst|altpll_component|auto_generated|locked~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll_vga_inst|altpll_component|auto_generated|locked~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y26_N12
\vga_ctrl_inst|cnt_vs[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_vs[2]~14_combout\ = (\vga_ctrl_inst|cnt_vs\(2) & (\vga_ctrl_inst|cnt_vs[1]~13\ $ (GND))) # (!\vga_ctrl_inst|cnt_vs\(2) & (!\vga_ctrl_inst|cnt_vs[1]~13\ & VCC))
-- \vga_ctrl_inst|cnt_vs[2]~15\ = CARRY((\vga_ctrl_inst|cnt_vs\(2) & !\vga_ctrl_inst|cnt_vs[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_vs\(2),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_vs[1]~13\,
	combout => \vga_ctrl_inst|cnt_vs[2]~14_combout\,
	cout => \vga_ctrl_inst|cnt_vs[2]~15\);

-- Location: LCCOMB_X36_Y26_N14
\vga_ctrl_inst|cnt_vs[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_vs[3]~16_combout\ = (\vga_ctrl_inst|cnt_vs\(3) & (!\vga_ctrl_inst|cnt_vs[2]~15\)) # (!\vga_ctrl_inst|cnt_vs\(3) & ((\vga_ctrl_inst|cnt_vs[2]~15\) # (GND)))
-- \vga_ctrl_inst|cnt_vs[3]~17\ = CARRY((!\vga_ctrl_inst|cnt_vs[2]~15\) # (!\vga_ctrl_inst|cnt_vs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_vs\(3),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_vs[2]~15\,
	combout => \vga_ctrl_inst|cnt_vs[3]~16_combout\,
	cout => \vga_ctrl_inst|cnt_vs[3]~17\);

-- Location: LCCOMB_X31_Y26_N10
\vga_ctrl_inst|cnt_hs[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_hs[0]~10_combout\ = \vga_ctrl_inst|cnt_hs\(0) $ (VCC)
-- \vga_ctrl_inst|cnt_hs[0]~11\ = CARRY(\vga_ctrl_inst|cnt_hs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_hs\(0),
	datad => VCC,
	combout => \vga_ctrl_inst|cnt_hs[0]~10_combout\,
	cout => \vga_ctrl_inst|cnt_hs[0]~11\);

-- Location: LCCOMB_X31_Y26_N14
\vga_ctrl_inst|cnt_hs[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_hs[2]~14_combout\ = (\vga_ctrl_inst|cnt_hs\(2) & (\vga_ctrl_inst|cnt_hs[1]~13\ $ (GND))) # (!\vga_ctrl_inst|cnt_hs\(2) & (!\vga_ctrl_inst|cnt_hs[1]~13\ & VCC))
-- \vga_ctrl_inst|cnt_hs[2]~15\ = CARRY((\vga_ctrl_inst|cnt_hs\(2) & !\vga_ctrl_inst|cnt_hs[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_hs\(2),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_hs[1]~13\,
	combout => \vga_ctrl_inst|cnt_hs[2]~14_combout\,
	cout => \vga_ctrl_inst|cnt_hs[2]~15\);

-- Location: FF_X31_Y26_N11
\vga_ctrl_inst|cnt_hs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_hs[0]~10_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_hs\(0));

-- Location: LCCOMB_X36_Y26_N30
\vga_ctrl_inst|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Equal0~2_combout\ = (\vga_ctrl_inst|cnt_hs\(1) & (\vga_ctrl_inst|cnt_hs\(0) & (\vga_ctrl_inst|cnt_hs\(2) & \vga_ctrl_inst|cnt_hs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_hs\(1),
	datab => \vga_ctrl_inst|cnt_hs\(0),
	datac => \vga_ctrl_inst|cnt_hs\(2),
	datad => \vga_ctrl_inst|cnt_hs\(4),
	combout => \vga_ctrl_inst|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y26_N22
\vga_ctrl_inst|cnt_hs[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_hs[6]~22_combout\ = (\vga_ctrl_inst|cnt_hs\(6) & (\vga_ctrl_inst|cnt_hs[5]~21\ $ (GND))) # (!\vga_ctrl_inst|cnt_hs\(6) & (!\vga_ctrl_inst|cnt_hs[5]~21\ & VCC))
-- \vga_ctrl_inst|cnt_hs[6]~23\ = CARRY((\vga_ctrl_inst|cnt_hs\(6) & !\vga_ctrl_inst|cnt_hs[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_hs\(6),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_hs[5]~21\,
	combout => \vga_ctrl_inst|cnt_hs[6]~22_combout\,
	cout => \vga_ctrl_inst|cnt_hs[6]~23\);

-- Location: FF_X31_Y26_N23
\vga_ctrl_inst|cnt_hs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_hs[6]~22_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_hs\(6));

-- Location: LCCOMB_X31_Y26_N4
\vga_ctrl_inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Equal0~0_combout\ = (!\vga_ctrl_inst|cnt_hs\(7) & (!\vga_ctrl_inst|cnt_hs\(6) & !\vga_ctrl_inst|cnt_hs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_hs\(7),
	datac => \vga_ctrl_inst|cnt_hs\(6),
	datad => \vga_ctrl_inst|cnt_hs\(5),
	combout => \vga_ctrl_inst|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y26_N6
\vga_ctrl_inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|LessThan0~0_combout\ = (\vga_ctrl_inst|Equal0~1_combout\ & (((\vga_ctrl_inst|cnt_hs\(3) & \vga_ctrl_inst|Equal0~2_combout\)) # (!\vga_ctrl_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_hs\(3),
	datab => \vga_ctrl_inst|Equal0~1_combout\,
	datac => \vga_ctrl_inst|Equal0~2_combout\,
	datad => \vga_ctrl_inst|Equal0~0_combout\,
	combout => \vga_ctrl_inst|LessThan0~0_combout\);

-- Location: FF_X31_Y26_N15
\vga_ctrl_inst|cnt_hs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_hs[2]~14_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_hs\(2));

-- Location: LCCOMB_X31_Y26_N16
\vga_ctrl_inst|cnt_hs[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_hs[3]~16_combout\ = (\vga_ctrl_inst|cnt_hs\(3) & (!\vga_ctrl_inst|cnt_hs[2]~15\)) # (!\vga_ctrl_inst|cnt_hs\(3) & ((\vga_ctrl_inst|cnt_hs[2]~15\) # (GND)))
-- \vga_ctrl_inst|cnt_hs[3]~17\ = CARRY((!\vga_ctrl_inst|cnt_hs[2]~15\) # (!\vga_ctrl_inst|cnt_hs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_hs\(3),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_hs[2]~15\,
	combout => \vga_ctrl_inst|cnt_hs[3]~16_combout\,
	cout => \vga_ctrl_inst|cnt_hs[3]~17\);

-- Location: FF_X31_Y26_N17
\vga_ctrl_inst|cnt_hs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_hs[3]~16_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_hs\(3));

-- Location: LCCOMB_X31_Y26_N18
\vga_ctrl_inst|cnt_hs[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_hs[4]~18_combout\ = (\vga_ctrl_inst|cnt_hs\(4) & (\vga_ctrl_inst|cnt_hs[3]~17\ $ (GND))) # (!\vga_ctrl_inst|cnt_hs\(4) & (!\vga_ctrl_inst|cnt_hs[3]~17\ & VCC))
-- \vga_ctrl_inst|cnt_hs[4]~19\ = CARRY((\vga_ctrl_inst|cnt_hs\(4) & !\vga_ctrl_inst|cnt_hs[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_hs\(4),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_hs[3]~17\,
	combout => \vga_ctrl_inst|cnt_hs[4]~18_combout\,
	cout => \vga_ctrl_inst|cnt_hs[4]~19\);

-- Location: FF_X31_Y26_N19
\vga_ctrl_inst|cnt_hs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_hs[4]~18_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_hs\(4));

-- Location: LCCOMB_X31_Y26_N20
\vga_ctrl_inst|cnt_hs[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_hs[5]~20_combout\ = (\vga_ctrl_inst|cnt_hs\(5) & (!\vga_ctrl_inst|cnt_hs[4]~19\)) # (!\vga_ctrl_inst|cnt_hs\(5) & ((\vga_ctrl_inst|cnt_hs[4]~19\) # (GND)))
-- \vga_ctrl_inst|cnt_hs[5]~21\ = CARRY((!\vga_ctrl_inst|cnt_hs[4]~19\) # (!\vga_ctrl_inst|cnt_hs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_hs\(5),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_hs[4]~19\,
	combout => \vga_ctrl_inst|cnt_hs[5]~20_combout\,
	cout => \vga_ctrl_inst|cnt_hs[5]~21\);

-- Location: FF_X31_Y26_N21
\vga_ctrl_inst|cnt_hs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_hs[5]~20_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_hs\(5));

-- Location: LCCOMB_X31_Y26_N24
\vga_ctrl_inst|cnt_hs[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_hs[7]~24_combout\ = (\vga_ctrl_inst|cnt_hs\(7) & (!\vga_ctrl_inst|cnt_hs[6]~23\)) # (!\vga_ctrl_inst|cnt_hs\(7) & ((\vga_ctrl_inst|cnt_hs[6]~23\) # (GND)))
-- \vga_ctrl_inst|cnt_hs[7]~25\ = CARRY((!\vga_ctrl_inst|cnt_hs[6]~23\) # (!\vga_ctrl_inst|cnt_hs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_hs\(7),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_hs[6]~23\,
	combout => \vga_ctrl_inst|cnt_hs[7]~24_combout\,
	cout => \vga_ctrl_inst|cnt_hs[7]~25\);

-- Location: FF_X31_Y26_N25
\vga_ctrl_inst|cnt_hs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_hs[7]~24_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_hs\(7));

-- Location: LCCOMB_X31_Y26_N26
\vga_ctrl_inst|cnt_hs[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_hs[8]~26_combout\ = (\vga_ctrl_inst|cnt_hs\(8) & (\vga_ctrl_inst|cnt_hs[7]~25\ $ (GND))) # (!\vga_ctrl_inst|cnt_hs\(8) & (!\vga_ctrl_inst|cnt_hs[7]~25\ & VCC))
-- \vga_ctrl_inst|cnt_hs[8]~27\ = CARRY((\vga_ctrl_inst|cnt_hs\(8) & !\vga_ctrl_inst|cnt_hs[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_hs\(8),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_hs[7]~25\,
	combout => \vga_ctrl_inst|cnt_hs[8]~26_combout\,
	cout => \vga_ctrl_inst|cnt_hs[8]~27\);

-- Location: FF_X31_Y26_N27
\vga_ctrl_inst|cnt_hs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_hs[8]~26_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_hs\(8));

-- Location: LCCOMB_X31_Y26_N28
\vga_ctrl_inst|cnt_hs[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_hs[9]~28_combout\ = \vga_ctrl_inst|cnt_hs\(9) $ (\vga_ctrl_inst|cnt_hs[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_hs\(9),
	cin => \vga_ctrl_inst|cnt_hs[8]~27\,
	combout => \vga_ctrl_inst|cnt_hs[9]~28_combout\);

-- Location: FF_X31_Y26_N29
\vga_ctrl_inst|cnt_hs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_hs[9]~28_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_hs\(9));

-- Location: LCCOMB_X31_Y26_N6
\vga_ctrl_inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Equal0~1_combout\ = (\vga_ctrl_inst|cnt_hs\(8) & \vga_ctrl_inst|cnt_hs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|cnt_hs\(8),
	datad => \vga_ctrl_inst|cnt_hs\(9),
	combout => \vga_ctrl_inst|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y26_N4
\vga_ctrl_inst|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Equal0~3_combout\ = (\vga_ctrl_inst|cnt_hs\(3) & (\vga_ctrl_inst|Equal0~1_combout\ & (\vga_ctrl_inst|Equal0~2_combout\ & \vga_ctrl_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_hs\(3),
	datab => \vga_ctrl_inst|Equal0~1_combout\,
	datac => \vga_ctrl_inst|Equal0~2_combout\,
	datad => \vga_ctrl_inst|Equal0~0_combout\,
	combout => \vga_ctrl_inst|Equal0~3_combout\);

-- Location: FF_X36_Y26_N15
\vga_ctrl_inst|cnt_vs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_vs[3]~16_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan2~1_combout\,
	ena => \vga_ctrl_inst|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_vs\(3));

-- Location: LCCOMB_X36_Y26_N16
\vga_ctrl_inst|cnt_vs[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_vs[4]~18_combout\ = (\vga_ctrl_inst|cnt_vs\(4) & (\vga_ctrl_inst|cnt_vs[3]~17\ $ (GND))) # (!\vga_ctrl_inst|cnt_vs\(4) & (!\vga_ctrl_inst|cnt_vs[3]~17\ & VCC))
-- \vga_ctrl_inst|cnt_vs[4]~19\ = CARRY((\vga_ctrl_inst|cnt_vs\(4) & !\vga_ctrl_inst|cnt_vs[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_vs\(4),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_vs[3]~17\,
	combout => \vga_ctrl_inst|cnt_vs[4]~18_combout\,
	cout => \vga_ctrl_inst|cnt_vs[4]~19\);

-- Location: FF_X36_Y26_N17
\vga_ctrl_inst|cnt_vs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_vs[4]~18_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan2~1_combout\,
	ena => \vga_ctrl_inst|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_vs\(4));

-- Location: LCCOMB_X36_Y26_N18
\vga_ctrl_inst|cnt_vs[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_vs[5]~20_combout\ = (\vga_ctrl_inst|cnt_vs\(5) & (!\vga_ctrl_inst|cnt_vs[4]~19\)) # (!\vga_ctrl_inst|cnt_vs\(5) & ((\vga_ctrl_inst|cnt_vs[4]~19\) # (GND)))
-- \vga_ctrl_inst|cnt_vs[5]~21\ = CARRY((!\vga_ctrl_inst|cnt_vs[4]~19\) # (!\vga_ctrl_inst|cnt_vs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_vs\(5),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_vs[4]~19\,
	combout => \vga_ctrl_inst|cnt_vs[5]~20_combout\,
	cout => \vga_ctrl_inst|cnt_vs[5]~21\);

-- Location: FF_X36_Y26_N19
\vga_ctrl_inst|cnt_vs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_vs[5]~20_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan2~1_combout\,
	ena => \vga_ctrl_inst|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_vs\(5));

-- Location: LCCOMB_X36_Y26_N20
\vga_ctrl_inst|cnt_vs[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_vs[6]~22_combout\ = (\vga_ctrl_inst|cnt_vs\(6) & (\vga_ctrl_inst|cnt_vs[5]~21\ $ (GND))) # (!\vga_ctrl_inst|cnt_vs\(6) & (!\vga_ctrl_inst|cnt_vs[5]~21\ & VCC))
-- \vga_ctrl_inst|cnt_vs[6]~23\ = CARRY((\vga_ctrl_inst|cnt_vs\(6) & !\vga_ctrl_inst|cnt_vs[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_vs\(6),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_vs[5]~21\,
	combout => \vga_ctrl_inst|cnt_vs[6]~22_combout\,
	cout => \vga_ctrl_inst|cnt_vs[6]~23\);

-- Location: FF_X36_Y26_N21
\vga_ctrl_inst|cnt_vs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_vs[6]~22_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan2~1_combout\,
	ena => \vga_ctrl_inst|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_vs\(6));

-- Location: LCCOMB_X36_Y26_N22
\vga_ctrl_inst|cnt_vs[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_vs[7]~24_combout\ = (\vga_ctrl_inst|cnt_vs\(7) & (!\vga_ctrl_inst|cnt_vs[6]~23\)) # (!\vga_ctrl_inst|cnt_vs\(7) & ((\vga_ctrl_inst|cnt_vs[6]~23\) # (GND)))
-- \vga_ctrl_inst|cnt_vs[7]~25\ = CARRY((!\vga_ctrl_inst|cnt_vs[6]~23\) # (!\vga_ctrl_inst|cnt_vs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_vs\(7),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_vs[6]~23\,
	combout => \vga_ctrl_inst|cnt_vs[7]~24_combout\,
	cout => \vga_ctrl_inst|cnt_vs[7]~25\);

-- Location: LCCOMB_X36_Y26_N24
\vga_ctrl_inst|cnt_vs[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_vs[8]~26_combout\ = (\vga_ctrl_inst|cnt_vs\(8) & (\vga_ctrl_inst|cnt_vs[7]~25\ $ (GND))) # (!\vga_ctrl_inst|cnt_vs\(8) & (!\vga_ctrl_inst|cnt_vs[7]~25\ & VCC))
-- \vga_ctrl_inst|cnt_vs[8]~27\ = CARRY((\vga_ctrl_inst|cnt_vs\(8) & !\vga_ctrl_inst|cnt_vs[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_vs\(8),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_vs[7]~25\,
	combout => \vga_ctrl_inst|cnt_vs[8]~26_combout\,
	cout => \vga_ctrl_inst|cnt_vs[8]~27\);

-- Location: FF_X36_Y26_N25
\vga_ctrl_inst|cnt_vs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_vs[8]~26_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan2~1_combout\,
	ena => \vga_ctrl_inst|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_vs\(8));

-- Location: LCCOMB_X36_Y26_N26
\vga_ctrl_inst|cnt_vs[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_vs[9]~28_combout\ = \vga_ctrl_inst|cnt_vs\(9) $ (\vga_ctrl_inst|cnt_vs[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_vs\(9),
	cin => \vga_ctrl_inst|cnt_vs[8]~27\,
	combout => \vga_ctrl_inst|cnt_vs[9]~28_combout\);

-- Location: FF_X36_Y26_N27
\vga_ctrl_inst|cnt_vs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_vs[9]~28_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan2~1_combout\,
	ena => \vga_ctrl_inst|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_vs\(9));

-- Location: LCCOMB_X36_Y26_N2
\vga_ctrl_inst|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|LessThan2~0_combout\ = (!\vga_ctrl_inst|cnt_vs\(4) & ((!\vga_ctrl_inst|cnt_vs\(3)) # (!\vga_ctrl_inst|cnt_vs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_vs\(2),
	datac => \vga_ctrl_inst|cnt_vs\(3),
	datad => \vga_ctrl_inst|cnt_vs\(4),
	combout => \vga_ctrl_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X36_Y26_N28
\vga_ctrl_inst|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|LessThan2~1_combout\ = (\vga_ctrl_inst|cnt_vs\(9) & ((!\vga_ctrl_inst|LessThan2~0_combout\) # (!\vga_ctrl_inst|vs_en~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vs_en~0_combout\,
	datac => \vga_ctrl_inst|cnt_vs\(9),
	datad => \vga_ctrl_inst|LessThan2~0_combout\,
	combout => \vga_ctrl_inst|LessThan2~1_combout\);

-- Location: FF_X36_Y26_N9
\vga_ctrl_inst|cnt_vs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_vs[0]~10_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan2~1_combout\,
	ena => \vga_ctrl_inst|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_vs\(0));

-- Location: LCCOMB_X36_Y26_N10
\vga_ctrl_inst|cnt_vs[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|cnt_vs[1]~12_combout\ = (\vga_ctrl_inst|cnt_vs\(1) & (!\vga_ctrl_inst|cnt_vs[0]~11\)) # (!\vga_ctrl_inst|cnt_vs\(1) & ((\vga_ctrl_inst|cnt_vs[0]~11\) # (GND)))
-- \vga_ctrl_inst|cnt_vs[1]~13\ = CARRY((!\vga_ctrl_inst|cnt_vs[0]~11\) # (!\vga_ctrl_inst|cnt_vs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_vs\(1),
	datad => VCC,
	cin => \vga_ctrl_inst|cnt_vs[0]~11\,
	combout => \vga_ctrl_inst|cnt_vs[1]~12_combout\,
	cout => \vga_ctrl_inst|cnt_vs[1]~13\);

-- Location: FF_X36_Y26_N13
\vga_ctrl_inst|cnt_vs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_vs[2]~14_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan2~1_combout\,
	ena => \vga_ctrl_inst|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_vs\(2));

-- Location: LCCOMB_X35_Y25_N28
\vga_ctrl_inst|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|LessThan6~0_combout\ = (!\vga_ctrl_inst|cnt_vs\(2) & (!\vga_ctrl_inst|cnt_vs\(3) & !\vga_ctrl_inst|cnt_vs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_vs\(2),
	datac => \vga_ctrl_inst|cnt_vs\(3),
	datad => \vga_ctrl_inst|cnt_vs\(4),
	combout => \vga_ctrl_inst|LessThan6~0_combout\);

-- Location: FF_X36_Y26_N11
\vga_ctrl_inst|cnt_vs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_vs[1]~12_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan2~1_combout\,
	ena => \vga_ctrl_inst|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_vs\(1));

-- Location: LCCOMB_X35_Y25_N26
\vga_ctrl_inst|vs_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vs_en~0_combout\ = (!\vga_ctrl_inst|cnt_vs\(7) & (!\vga_ctrl_inst|cnt_vs\(8) & (!\vga_ctrl_inst|cnt_vs\(6) & !\vga_ctrl_inst|cnt_vs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_vs\(7),
	datab => \vga_ctrl_inst|cnt_vs\(8),
	datac => \vga_ctrl_inst|cnt_vs\(6),
	datad => \vga_ctrl_inst|cnt_vs\(5),
	combout => \vga_ctrl_inst|vs_en~0_combout\);

-- Location: LCCOMB_X32_Y25_N8
\vga_ctrl_inst|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|LessThan3~0_combout\ = (!\vga_ctrl_inst|cnt_vs\(9) & (\vga_ctrl_inst|LessThan6~0_combout\ & (!\vga_ctrl_inst|cnt_vs\(1) & \vga_ctrl_inst|vs_en~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_vs\(9),
	datab => \vga_ctrl_inst|LessThan6~0_combout\,
	datac => \vga_ctrl_inst|cnt_vs\(1),
	datad => \vga_ctrl_inst|vs_en~0_combout\,
	combout => \vga_ctrl_inst|LessThan3~0_combout\);

-- Location: FF_X32_Y25_N9
\vga_ctrl_inst|vga_vs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|LessThan3~0_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vga_vs~q\);

-- Location: LCCOMB_X31_Y26_N0
\vga_ctrl_inst|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|LessThan1~0_combout\ = (!\vga_ctrl_inst|cnt_hs\(9) & (!\vga_ctrl_inst|cnt_hs\(8) & ((!\vga_ctrl_inst|cnt_hs\(5)) # (!\vga_ctrl_inst|cnt_hs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_hs\(6),
	datab => \vga_ctrl_inst|cnt_hs\(9),
	datac => \vga_ctrl_inst|cnt_hs\(8),
	datad => \vga_ctrl_inst|cnt_hs\(5),
	combout => \vga_ctrl_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X35_Y26_N24
\vga_ctrl_inst|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|LessThan1~1_combout\ = (\vga_ctrl_inst|LessThan1~0_combout\ & !\vga_ctrl_inst|cnt_hs\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|LessThan1~0_combout\,
	datad => \vga_ctrl_inst|cnt_hs\(7),
	combout => \vga_ctrl_inst|LessThan1~1_combout\);

-- Location: FF_X35_Y26_N25
\vga_ctrl_inst|vga_hs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|LessThan1~1_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vga_hs~q\);

-- Location: LCCOMB_X36_Y26_N0
\vga_ctrl_inst|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|LessThan6~1_combout\ = (!\vga_ctrl_inst|cnt_vs\(1)) # (!\vga_ctrl_inst|cnt_vs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|cnt_vs\(0),
	datad => \vga_ctrl_inst|cnt_vs\(1),
	combout => \vga_ctrl_inst|LessThan6~1_combout\);

-- Location: FF_X36_Y26_N23
\vga_ctrl_inst|cnt_vs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|cnt_vs[7]~24_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|LessThan2~1_combout\,
	ena => \vga_ctrl_inst|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|cnt_vs\(7));

-- Location: LCCOMB_X35_Y25_N30
\vga_ctrl_inst|vs_en~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vs_en~1_combout\ = (!\vga_ctrl_inst|cnt_vs\(8) & (!\vga_ctrl_inst|cnt_vs\(9) & (!\vga_ctrl_inst|cnt_vs\(6) & !\vga_ctrl_inst|cnt_vs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_vs\(8),
	datab => \vga_ctrl_inst|cnt_vs\(9),
	datac => \vga_ctrl_inst|cnt_vs\(6),
	datad => \vga_ctrl_inst|cnt_vs\(7),
	combout => \vga_ctrl_inst|vs_en~1_combout\);

-- Location: LCCOMB_X35_Y25_N24
\vga_ctrl_inst|vs_en~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vs_en~2_combout\ = (\vga_ctrl_inst|LessThan6~0_combout\ & ((\vga_ctrl_inst|LessThan6~1_combout\ & ((\vga_ctrl_inst|vs_en~1_combout\))) # (!\vga_ctrl_inst|LessThan6~1_combout\ & (\vga_ctrl_inst|vs_en~0_combout\)))) # 
-- (!\vga_ctrl_inst|LessThan6~0_combout\ & (\vga_ctrl_inst|vs_en~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vs_en~0_combout\,
	datab => \vga_ctrl_inst|LessThan6~0_combout\,
	datac => \vga_ctrl_inst|LessThan6~1_combout\,
	datad => \vga_ctrl_inst|vs_en~1_combout\,
	combout => \vga_ctrl_inst|vs_en~2_combout\);

-- Location: LCCOMB_X32_Y25_N0
\vga_ctrl_inst|pix_y[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|pix_y[7]~0_combout\ = (\vga_ctrl_inst|Add3~12_combout\ & (!\vga_ctrl_inst|vs_en~2_combout\ & ((\vga_ctrl_inst|vs_en~0_combout\) # (!\vga_ctrl_inst|cnt_vs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Add3~12_combout\,
	datab => \vga_ctrl_inst|vs_en~2_combout\,
	datac => \vga_ctrl_inst|cnt_vs\(9),
	datad => \vga_ctrl_inst|vs_en~0_combout\,
	combout => \vga_ctrl_inst|pix_y[7]~0_combout\);

-- Location: LCCOMB_X35_Y25_N0
\vga_ctrl_inst|Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add3~1_cout\ = CARRY((\vga_ctrl_inst|cnt_vs\(1) & \vga_ctrl_inst|cnt_vs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_vs\(1),
	datab => \vga_ctrl_inst|cnt_vs\(0),
	datad => VCC,
	cout => \vga_ctrl_inst|Add3~1_cout\);

-- Location: LCCOMB_X35_Y25_N2
\vga_ctrl_inst|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add3~2_combout\ = (\vga_ctrl_inst|cnt_vs\(2) & (\vga_ctrl_inst|Add3~1_cout\ & VCC)) # (!\vga_ctrl_inst|cnt_vs\(2) & (!\vga_ctrl_inst|Add3~1_cout\))
-- \vga_ctrl_inst|Add3~3\ = CARRY((!\vga_ctrl_inst|cnt_vs\(2) & !\vga_ctrl_inst|Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_vs\(2),
	datad => VCC,
	cin => \vga_ctrl_inst|Add3~1_cout\,
	combout => \vga_ctrl_inst|Add3~2_combout\,
	cout => \vga_ctrl_inst|Add3~3\);

-- Location: LCCOMB_X35_Y25_N4
\vga_ctrl_inst|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add3~4_combout\ = (\vga_ctrl_inst|cnt_vs\(3) & ((GND) # (!\vga_ctrl_inst|Add3~3\))) # (!\vga_ctrl_inst|cnt_vs\(3) & (\vga_ctrl_inst|Add3~3\ $ (GND)))
-- \vga_ctrl_inst|Add3~5\ = CARRY((\vga_ctrl_inst|cnt_vs\(3)) # (!\vga_ctrl_inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_vs\(3),
	datad => VCC,
	cin => \vga_ctrl_inst|Add3~3\,
	combout => \vga_ctrl_inst|Add3~4_combout\,
	cout => \vga_ctrl_inst|Add3~5\);

-- Location: LCCOMB_X35_Y25_N6
\vga_ctrl_inst|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add3~6_combout\ = (\vga_ctrl_inst|cnt_vs\(4) & (\vga_ctrl_inst|Add3~5\ & VCC)) # (!\vga_ctrl_inst|cnt_vs\(4) & (!\vga_ctrl_inst|Add3~5\))
-- \vga_ctrl_inst|Add3~7\ = CARRY((!\vga_ctrl_inst|cnt_vs\(4) & !\vga_ctrl_inst|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_vs\(4),
	datad => VCC,
	cin => \vga_ctrl_inst|Add3~5\,
	combout => \vga_ctrl_inst|Add3~6_combout\,
	cout => \vga_ctrl_inst|Add3~7\);

-- Location: LCCOMB_X35_Y25_N8
\vga_ctrl_inst|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add3~8_combout\ = (\vga_ctrl_inst|cnt_vs\(5) & (\vga_ctrl_inst|Add3~7\ $ (GND))) # (!\vga_ctrl_inst|cnt_vs\(5) & (!\vga_ctrl_inst|Add3~7\ & VCC))
-- \vga_ctrl_inst|Add3~9\ = CARRY((\vga_ctrl_inst|cnt_vs\(5) & !\vga_ctrl_inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_vs\(5),
	datad => VCC,
	cin => \vga_ctrl_inst|Add3~7\,
	combout => \vga_ctrl_inst|Add3~8_combout\,
	cout => \vga_ctrl_inst|Add3~9\);

-- Location: LCCOMB_X35_Y25_N10
\vga_ctrl_inst|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add3~10_combout\ = (\vga_ctrl_inst|cnt_vs\(6) & (\vga_ctrl_inst|Add3~9\ & VCC)) # (!\vga_ctrl_inst|cnt_vs\(6) & (!\vga_ctrl_inst|Add3~9\))
-- \vga_ctrl_inst|Add3~11\ = CARRY((!\vga_ctrl_inst|cnt_vs\(6) & !\vga_ctrl_inst|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_vs\(6),
	datad => VCC,
	cin => \vga_ctrl_inst|Add3~9\,
	combout => \vga_ctrl_inst|Add3~10_combout\,
	cout => \vga_ctrl_inst|Add3~11\);

-- Location: LCCOMB_X35_Y25_N16
\vga_ctrl_inst|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add3~16_combout\ = \vga_ctrl_inst|Add3~15\ $ (\vga_ctrl_inst|cnt_vs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_ctrl_inst|cnt_vs\(9),
	cin => \vga_ctrl_inst|Add3~15\,
	combout => \vga_ctrl_inst|Add3~16_combout\);

-- Location: LCCOMB_X30_Y25_N2
\vga_ctrl_inst|pix_y[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|pix_y[9]~3_combout\ = (!\vga_ctrl_inst|vs_en~2_combout\ & (\vga_ctrl_inst|Add3~16_combout\ & ((\vga_ctrl_inst|vs_en~0_combout\) # (!\vga_ctrl_inst|cnt_vs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vs_en~0_combout\,
	datab => \vga_ctrl_inst|vs_en~2_combout\,
	datac => \vga_ctrl_inst|Add3~16_combout\,
	datad => \vga_ctrl_inst|cnt_vs\(9),
	combout => \vga_ctrl_inst|pix_y[9]~3_combout\);

-- Location: LCCOMB_X32_Y25_N6
\vga_ctrl_inst|pix_y[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|pix_y[8]~2_combout\ = (\vga_ctrl_inst|Add3~14_combout\ & (!\vga_ctrl_inst|vs_en~2_combout\ & ((\vga_ctrl_inst|vs_en~0_combout\) # (!\vga_ctrl_inst|cnt_vs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Add3~14_combout\,
	datab => \vga_ctrl_inst|vs_en~2_combout\,
	datac => \vga_ctrl_inst|cnt_vs\(9),
	datad => \vga_ctrl_inst|vs_en~0_combout\,
	combout => \vga_ctrl_inst|pix_y[8]~2_combout\);

-- Location: LCCOMB_X32_Y25_N24
\vga_ctrl_inst|Mult0|mult_core|romout[1][9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|romout[1][9]~0_combout\ = (\vga_ctrl_inst|pix_y[9]~3_combout\ & (!\vga_ctrl_inst|pix_y[8]~2_combout\ & ((!\vga_ctrl_inst|pix_y[7]~0_combout\) # (!\vga_ctrl_inst|pix_y[6]~1_combout\)))) # (!\vga_ctrl_inst|pix_y[9]~3_combout\ 
-- & (((\vga_ctrl_inst|pix_y[7]~0_combout\ & \vga_ctrl_inst|pix_y[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|pix_y[6]~1_combout\,
	datab => \vga_ctrl_inst|pix_y[7]~0_combout\,
	datac => \vga_ctrl_inst|pix_y[9]~3_combout\,
	datad => \vga_ctrl_inst|pix_y[8]~2_combout\,
	combout => \vga_ctrl_inst|Mult0|mult_core|romout[1][9]~0_combout\);

-- Location: LCCOMB_X32_Y25_N2
\vga_ctrl_inst|Mult0|mult_core|romout[1][8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|romout[1][8]~1_combout\ = (\vga_ctrl_inst|pix_y[7]~0_combout\ & (\vga_ctrl_inst|pix_y[9]~3_combout\ $ (((\vga_ctrl_inst|pix_y[6]~1_combout\ & !\vga_ctrl_inst|pix_y[8]~2_combout\))))) # (!\vga_ctrl_inst|pix_y[7]~0_combout\ & 
-- ((\vga_ctrl_inst|pix_y[9]~3_combout\ & ((\vga_ctrl_inst|pix_y[6]~1_combout\) # (!\vga_ctrl_inst|pix_y[8]~2_combout\))) # (!\vga_ctrl_inst|pix_y[9]~3_combout\ & ((\vga_ctrl_inst|pix_y[8]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|pix_y[6]~1_combout\,
	datab => \vga_ctrl_inst|pix_y[7]~0_combout\,
	datac => \vga_ctrl_inst|pix_y[9]~3_combout\,
	datad => \vga_ctrl_inst|pix_y[8]~2_combout\,
	combout => \vga_ctrl_inst|Mult0|mult_core|romout[1][8]~1_combout\);

-- Location: LCCOMB_X32_Y25_N22
\vga_ctrl_inst|Mult0|mult_core|romout[1][6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|romout[1][6]~3_combout\ = \vga_ctrl_inst|pix_y[7]~0_combout\ $ (((\vga_ctrl_inst|pix_y[6]~1_combout\ & !\vga_ctrl_inst|pix_y[9]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|pix_y[6]~1_combout\,
	datac => \vga_ctrl_inst|pix_y[9]~3_combout\,
	datad => \vga_ctrl_inst|pix_y[7]~0_combout\,
	combout => \vga_ctrl_inst|Mult0|mult_core|romout[1][6]~3_combout\);

-- Location: LCCOMB_X35_Y25_N20
\vga_ctrl_inst|pix_y[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|pix_y[3]~6_combout\ = (!\vga_ctrl_inst|vs_en~2_combout\ & (\vga_ctrl_inst|Add3~4_combout\ & ((\vga_ctrl_inst|vs_en~0_combout\) # (!\vga_ctrl_inst|cnt_vs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vs_en~2_combout\,
	datab => \vga_ctrl_inst|Add3~4_combout\,
	datac => \vga_ctrl_inst|vs_en~0_combout\,
	datad => \vga_ctrl_inst|cnt_vs\(9),
	combout => \vga_ctrl_inst|pix_y[3]~6_combout\);

-- Location: LCCOMB_X30_Y25_N4
\vga_ctrl_inst|pix_y[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|pix_y[4]~5_combout\ = (!\vga_ctrl_inst|vs_en~2_combout\ & (\vga_ctrl_inst|Add3~6_combout\ & ((\vga_ctrl_inst|vs_en~0_combout\) # (!\vga_ctrl_inst|cnt_vs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vs_en~0_combout\,
	datab => \vga_ctrl_inst|vs_en~2_combout\,
	datac => \vga_ctrl_inst|Add3~6_combout\,
	datad => \vga_ctrl_inst|cnt_vs\(9),
	combout => \vga_ctrl_inst|pix_y[4]~5_combout\);

-- Location: LCCOMB_X35_Y25_N18
\vga_ctrl_inst|pix_y[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|pix_y[5]~4_combout\ = (!\vga_ctrl_inst|vs_en~2_combout\ & (\vga_ctrl_inst|Add3~8_combout\ & ((\vga_ctrl_inst|vs_en~0_combout\) # (!\vga_ctrl_inst|cnt_vs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vs_en~2_combout\,
	datab => \vga_ctrl_inst|Add3~8_combout\,
	datac => \vga_ctrl_inst|vs_en~0_combout\,
	datad => \vga_ctrl_inst|cnt_vs\(9),
	combout => \vga_ctrl_inst|pix_y[5]~4_combout\);

-- Location: LCCOMB_X30_Y25_N24
\vga_ctrl_inst|Mult0|mult_core|romout[0][9]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|romout[0][9]~6_combout\ = (\vga_ctrl_inst|pix_y[4]~5_combout\ & (((\vga_ctrl_inst|pix_y[3]~6_combout\ & !\vga_ctrl_inst|pix_y[5]~4_combout\)))) # (!\vga_ctrl_inst|pix_y[4]~5_combout\ & (\vga_ctrl_inst|pix_y[5]~4_combout\ & 
-- ((!\vga_ctrl_inst|pix_y[3]~6_combout\) # (!\vga_ctrl_inst|pix_y[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|pix_y[2]~7_combout\,
	datab => \vga_ctrl_inst|pix_y[3]~6_combout\,
	datac => \vga_ctrl_inst|pix_y[4]~5_combout\,
	datad => \vga_ctrl_inst|pix_y[5]~4_combout\,
	combout => \vga_ctrl_inst|Mult0|mult_core|romout[0][9]~6_combout\);

-- Location: LCCOMB_X30_Y25_N28
\vga_ctrl_inst|Mult0|mult_core|romout[0][7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|romout[0][7]~8_combout\ = \vga_ctrl_inst|pix_y[4]~5_combout\ $ (((\vga_ctrl_inst|pix_y[2]~7_combout\ & (!\vga_ctrl_inst|pix_y[3]~6_combout\ & \vga_ctrl_inst|pix_y[5]~4_combout\)) # (!\vga_ctrl_inst|pix_y[2]~7_combout\ & 
-- (\vga_ctrl_inst|pix_y[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|pix_y[2]~7_combout\,
	datab => \vga_ctrl_inst|pix_y[3]~6_combout\,
	datac => \vga_ctrl_inst|pix_y[4]~5_combout\,
	datad => \vga_ctrl_inst|pix_y[5]~4_combout\,
	combout => \vga_ctrl_inst|Mult0|mult_core|romout[0][7]~8_combout\);

-- Location: LCCOMB_X30_Y25_N0
\vga_ctrl_inst|pix_y[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|pix_y[6]~1_combout\ = (!\vga_ctrl_inst|vs_en~2_combout\ & (\vga_ctrl_inst|Add3~10_combout\ & ((\vga_ctrl_inst|vs_en~0_combout\) # (!\vga_ctrl_inst|cnt_vs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vs_en~0_combout\,
	datab => \vga_ctrl_inst|vs_en~2_combout\,
	datac => \vga_ctrl_inst|Add3~10_combout\,
	datad => \vga_ctrl_inst|cnt_vs\(9),
	combout => \vga_ctrl_inst|pix_y[6]~1_combout\);

-- Location: LCCOMB_X30_Y25_N12
\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\vga_ctrl_inst|Mult0|mult_core|romout[0][8]~7_combout\ $ (\vga_ctrl_inst|pix_y[8]~2_combout\ $ (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # 
-- (GND)
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\vga_ctrl_inst|Mult0|mult_core|romout[0][8]~7_combout\ & ((\vga_ctrl_inst|pix_y[8]~2_combout\) # (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\vga_ctrl_inst|Mult0|mult_core|romout[0][8]~7_combout\ & (\vga_ctrl_inst|pix_y[8]~2_combout\ & !\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Mult0|mult_core|romout[0][8]~7_combout\,
	datab => \vga_ctrl_inst|pix_y[8]~2_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X30_Y25_N14
\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\vga_ctrl_inst|Mult0|mult_core|romout[1][5]~5_combout\ & ((\vga_ctrl_inst|Mult0|mult_core|romout[0][9]~6_combout\ & 
-- (\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\vga_ctrl_inst|Mult0|mult_core|romout[0][9]~6_combout\ & (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\vga_ctrl_inst|Mult0|mult_core|romout[1][5]~5_combout\ & ((\vga_ctrl_inst|Mult0|mult_core|romout[0][9]~6_combout\ & (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\vga_ctrl_inst|Mult0|mult_core|romout[0][9]~6_combout\ & 
-- ((\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\vga_ctrl_inst|Mult0|mult_core|romout[1][5]~5_combout\ & (!\vga_ctrl_inst|Mult0|mult_core|romout[0][9]~6_combout\ & 
-- !\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\vga_ctrl_inst|Mult0|mult_core|romout[1][5]~5_combout\ & ((!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # 
-- (!\vga_ctrl_inst|Mult0|mult_core|romout[0][9]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Mult0|mult_core|romout[1][5]~5_combout\,
	datab => \vga_ctrl_inst|Mult0|mult_core|romout[0][9]~6_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X30_Y25_N16
\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\vga_ctrl_inst|Mult0|mult_core|romout[0][10]~4_combout\ $ (\vga_ctrl_inst|Mult0|mult_core|romout[1][6]~3_combout\ $ 
-- (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\vga_ctrl_inst|Mult0|mult_core|romout[0][10]~4_combout\ & ((\vga_ctrl_inst|Mult0|mult_core|romout[1][6]~3_combout\) # 
-- (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # (!\vga_ctrl_inst|Mult0|mult_core|romout[0][10]~4_combout\ & (\vga_ctrl_inst|Mult0|mult_core|romout[1][6]~3_combout\ & 
-- !\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Mult0|mult_core|romout[0][10]~4_combout\,
	datab => \vga_ctrl_inst|Mult0|mult_core|romout[1][6]~3_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X30_Y25_N22
\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ $ (\vga_ctrl_inst|Mult0|mult_core|romout[1][9]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_ctrl_inst|Mult0|mult_core|romout[1][9]~0_combout\,
	cin => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\);

-- Location: LCCOMB_X32_Y25_N12
\vga_ctrl_inst|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add2~2_combout\ = (\vga_ctrl_inst|cnt_hs\(5) & (\vga_ctrl_inst|Add2~1\ & VCC)) # (!\vga_ctrl_inst|cnt_hs\(5) & (!\vga_ctrl_inst|Add2~1\))
-- \vga_ctrl_inst|Add2~3\ = CARRY((!\vga_ctrl_inst|cnt_hs\(5) & !\vga_ctrl_inst|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_hs\(5),
	datad => VCC,
	cin => \vga_ctrl_inst|Add2~1\,
	combout => \vga_ctrl_inst|Add2~2_combout\,
	cout => \vga_ctrl_inst|Add2~3\);

-- Location: LCCOMB_X32_Y25_N14
\vga_ctrl_inst|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add2~4_combout\ = (\vga_ctrl_inst|cnt_hs\(6) & ((GND) # (!\vga_ctrl_inst|Add2~3\))) # (!\vga_ctrl_inst|cnt_hs\(6) & (\vga_ctrl_inst|Add2~3\ $ (GND)))
-- \vga_ctrl_inst|Add2~5\ = CARRY((\vga_ctrl_inst|cnt_hs\(6)) # (!\vga_ctrl_inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_hs\(6),
	datad => VCC,
	cin => \vga_ctrl_inst|Add2~3\,
	combout => \vga_ctrl_inst|Add2~4_combout\,
	cout => \vga_ctrl_inst|Add2~5\);

-- Location: LCCOMB_X32_Y25_N16
\vga_ctrl_inst|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add2~6_combout\ = (\vga_ctrl_inst|cnt_hs\(7) & (!\vga_ctrl_inst|Add2~5\)) # (!\vga_ctrl_inst|cnt_hs\(7) & ((\vga_ctrl_inst|Add2~5\) # (GND)))
-- \vga_ctrl_inst|Add2~7\ = CARRY((!\vga_ctrl_inst|Add2~5\) # (!\vga_ctrl_inst|cnt_hs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_hs\(7),
	datad => VCC,
	cin => \vga_ctrl_inst|Add2~5\,
	combout => \vga_ctrl_inst|Add2~6_combout\,
	cout => \vga_ctrl_inst|Add2~7\);

-- Location: LCCOMB_X32_Y25_N18
\vga_ctrl_inst|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add2~8_combout\ = (\vga_ctrl_inst|cnt_hs\(8) & ((GND) # (!\vga_ctrl_inst|Add2~7\))) # (!\vga_ctrl_inst|cnt_hs\(8) & (\vga_ctrl_inst|Add2~7\ $ (GND)))
-- \vga_ctrl_inst|Add2~9\ = CARRY((\vga_ctrl_inst|cnt_hs\(8)) # (!\vga_ctrl_inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_hs\(8),
	datad => VCC,
	cin => \vga_ctrl_inst|Add2~7\,
	combout => \vga_ctrl_inst|Add2~8_combout\,
	cout => \vga_ctrl_inst|Add2~9\);

-- Location: LCCOMB_X32_Y25_N20
\vga_ctrl_inst|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|Add2~10_combout\ = \vga_ctrl_inst|cnt_hs\(9) $ (!\vga_ctrl_inst|Add2~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_hs\(9),
	cin => \vga_ctrl_inst|Add2~9\,
	combout => \vga_ctrl_inst|Add2~10_combout\);

-- Location: LCCOMB_X31_Y26_N2
\vga_ctrl_inst|hs_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hs_en~0_combout\ = (\vga_ctrl_inst|cnt_hs\(4)) # ((\vga_ctrl_inst|cnt_hs\(6)) # (\vga_ctrl_inst|cnt_hs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|cnt_hs\(4),
	datac => \vga_ctrl_inst|cnt_hs\(6),
	datad => \vga_ctrl_inst|cnt_hs\(5),
	combout => \vga_ctrl_inst|hs_en~0_combout\);

-- Location: LCCOMB_X32_Y25_N4
\vga_ctrl_inst|hs_en~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|hs_en~1_combout\ = (\vga_ctrl_inst|cnt_hs\(9) & (\vga_ctrl_inst|cnt_hs\(8) & ((\vga_ctrl_inst|cnt_hs\(7)) # (\vga_ctrl_inst|hs_en~0_combout\)))) # (!\vga_ctrl_inst|cnt_hs\(9) & (!\vga_ctrl_inst|cnt_hs\(8) & 
-- ((!\vga_ctrl_inst|hs_en~0_combout\) # (!\vga_ctrl_inst|cnt_hs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|cnt_hs\(7),
	datab => \vga_ctrl_inst|cnt_hs\(9),
	datac => \vga_ctrl_inst|cnt_hs\(8),
	datad => \vga_ctrl_inst|hs_en~0_combout\,
	combout => \vga_ctrl_inst|hs_en~1_combout\);

-- Location: LCCOMB_X30_Y20_N8
\vga_ctrl_inst|pix_x[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|pix_x[9]~0_combout\ = (\vga_ctrl_inst|Add2~10_combout\ & !\vga_ctrl_inst|hs_en~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|Add2~10_combout\,
	datad => \vga_ctrl_inst|hs_en~1_combout\,
	combout => \vga_ctrl_inst|pix_x[9]~0_combout\);

-- Location: LCCOMB_X30_Y20_N10
\vga_ctrl_inst|pix_x[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|pix_x[8]~1_combout\ = (\vga_ctrl_inst|Add2~8_combout\ & !\vga_ctrl_inst|hs_en~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|Add2~8_combout\,
	datad => \vga_ctrl_inst|hs_en~1_combout\,
	combout => \vga_ctrl_inst|pix_x[8]~1_combout\);

-- Location: LCCOMB_X30_Y20_N12
\vga_ctrl_inst|pix_x[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|pix_x[7]~2_combout\ = (\vga_ctrl_inst|Add2~6_combout\ & !\vga_ctrl_inst|hs_en~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|Add2~6_combout\,
	datad => \vga_ctrl_inst|hs_en~1_combout\,
	combout => \vga_ctrl_inst|pix_x[7]~2_combout\);

-- Location: LCCOMB_X30_Y20_N14
\vga_ctrl_inst|pix_x[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|pix_x[6]~3_combout\ = (\vga_ctrl_inst|Add2~4_combout\ & !\vga_ctrl_inst|hs_en~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_ctrl_inst|Add2~4_combout\,
	datad => \vga_ctrl_inst|hs_en~1_combout\,
	combout => \vga_ctrl_inst|pix_x[6]~3_combout\);

-- Location: LCCOMB_X30_Y20_N16
\vga_ctrl_inst|pix_x[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|pix_x[5]~4_combout\ = (\vga_ctrl_inst|Add2~2_combout\ & !\vga_ctrl_inst|hs_en~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|Add2~2_combout\,
	datad => \vga_ctrl_inst|hs_en~1_combout\,
	combout => \vga_ctrl_inst|pix_x[5]~4_combout\);

-- Location: LCCOMB_X35_Y25_N22
\vga_ctrl_inst|pix_y[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|pix_y[2]~7_combout\ = (\vga_ctrl_inst|Add3~2_combout\ & (!\vga_ctrl_inst|vs_en~2_combout\ & ((\vga_ctrl_inst|vs_en~0_combout\) # (!\vga_ctrl_inst|cnt_vs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|vs_en~0_combout\,
	datab => \vga_ctrl_inst|Add3~2_combout\,
	datac => \vga_ctrl_inst|vs_en~2_combout\,
	datad => \vga_ctrl_inst|cnt_vs\(9),
	combout => \vga_ctrl_inst|pix_y[2]~7_combout\);

-- Location: LCCOMB_X29_Y22_N2
\vga_ctrl_inst|rom_addr[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|rom_addr[2]~12_combout\ = (\vga_ctrl_inst|pix_x[4]~5_combout\ & (\vga_ctrl_inst|pix_y[2]~7_combout\ $ (VCC))) # (!\vga_ctrl_inst|pix_x[4]~5_combout\ & (\vga_ctrl_inst|pix_y[2]~7_combout\ & VCC))
-- \vga_ctrl_inst|rom_addr[2]~13\ = CARRY((\vga_ctrl_inst|pix_x[4]~5_combout\ & \vga_ctrl_inst|pix_y[2]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|pix_x[4]~5_combout\,
	datab => \vga_ctrl_inst|pix_y[2]~7_combout\,
	datad => VCC,
	combout => \vga_ctrl_inst|rom_addr[2]~12_combout\,
	cout => \vga_ctrl_inst|rom_addr[2]~13\);

-- Location: LCCOMB_X29_Y22_N4
\vga_ctrl_inst|rom_addr[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|rom_addr[3]~14_combout\ = (\vga_ctrl_inst|pix_y[3]~6_combout\ & ((\vga_ctrl_inst|pix_x[5]~4_combout\ & (\vga_ctrl_inst|rom_addr[2]~13\ & VCC)) # (!\vga_ctrl_inst|pix_x[5]~4_combout\ & (!\vga_ctrl_inst|rom_addr[2]~13\)))) # 
-- (!\vga_ctrl_inst|pix_y[3]~6_combout\ & ((\vga_ctrl_inst|pix_x[5]~4_combout\ & (!\vga_ctrl_inst|rom_addr[2]~13\)) # (!\vga_ctrl_inst|pix_x[5]~4_combout\ & ((\vga_ctrl_inst|rom_addr[2]~13\) # (GND)))))
-- \vga_ctrl_inst|rom_addr[3]~15\ = CARRY((\vga_ctrl_inst|pix_y[3]~6_combout\ & (!\vga_ctrl_inst|pix_x[5]~4_combout\ & !\vga_ctrl_inst|rom_addr[2]~13\)) # (!\vga_ctrl_inst|pix_y[3]~6_combout\ & ((!\vga_ctrl_inst|rom_addr[2]~13\) # 
-- (!\vga_ctrl_inst|pix_x[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|pix_y[3]~6_combout\,
	datab => \vga_ctrl_inst|pix_x[5]~4_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|rom_addr[2]~13\,
	combout => \vga_ctrl_inst|rom_addr[3]~14_combout\,
	cout => \vga_ctrl_inst|rom_addr[3]~15\);

-- Location: LCCOMB_X29_Y22_N6
\vga_ctrl_inst|rom_addr[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|rom_addr[4]~16_combout\ = ((\vga_ctrl_inst|pix_y[4]~5_combout\ $ (\vga_ctrl_inst|pix_x[6]~3_combout\ $ (!\vga_ctrl_inst|rom_addr[3]~15\)))) # (GND)
-- \vga_ctrl_inst|rom_addr[4]~17\ = CARRY((\vga_ctrl_inst|pix_y[4]~5_combout\ & ((\vga_ctrl_inst|pix_x[6]~3_combout\) # (!\vga_ctrl_inst|rom_addr[3]~15\))) # (!\vga_ctrl_inst|pix_y[4]~5_combout\ & (\vga_ctrl_inst|pix_x[6]~3_combout\ & 
-- !\vga_ctrl_inst|rom_addr[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|pix_y[4]~5_combout\,
	datab => \vga_ctrl_inst|pix_x[6]~3_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|rom_addr[3]~15\,
	combout => \vga_ctrl_inst|rom_addr[4]~16_combout\,
	cout => \vga_ctrl_inst|rom_addr[4]~17\);

-- Location: LCCOMB_X29_Y22_N8
\vga_ctrl_inst|rom_addr[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|rom_addr[5]~18_combout\ = (\vga_ctrl_inst|Mult0|mult_core|romout[0][5]~10_combout\ & ((\vga_ctrl_inst|pix_x[7]~2_combout\ & (\vga_ctrl_inst|rom_addr[4]~17\ & VCC)) # (!\vga_ctrl_inst|pix_x[7]~2_combout\ & 
-- (!\vga_ctrl_inst|rom_addr[4]~17\)))) # (!\vga_ctrl_inst|Mult0|mult_core|romout[0][5]~10_combout\ & ((\vga_ctrl_inst|pix_x[7]~2_combout\ & (!\vga_ctrl_inst|rom_addr[4]~17\)) # (!\vga_ctrl_inst|pix_x[7]~2_combout\ & ((\vga_ctrl_inst|rom_addr[4]~17\) # 
-- (GND)))))
-- \vga_ctrl_inst|rom_addr[5]~19\ = CARRY((\vga_ctrl_inst|Mult0|mult_core|romout[0][5]~10_combout\ & (!\vga_ctrl_inst|pix_x[7]~2_combout\ & !\vga_ctrl_inst|rom_addr[4]~17\)) # (!\vga_ctrl_inst|Mult0|mult_core|romout[0][5]~10_combout\ & 
-- ((!\vga_ctrl_inst|rom_addr[4]~17\) # (!\vga_ctrl_inst|pix_x[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Mult0|mult_core|romout[0][5]~10_combout\,
	datab => \vga_ctrl_inst|pix_x[7]~2_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|rom_addr[4]~17\,
	combout => \vga_ctrl_inst|rom_addr[5]~18_combout\,
	cout => \vga_ctrl_inst|rom_addr[5]~19\);

-- Location: LCCOMB_X29_Y22_N10
\vga_ctrl_inst|rom_addr[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|rom_addr[6]~20_combout\ = ((\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (\vga_ctrl_inst|pix_x[8]~1_combout\ $ (!\vga_ctrl_inst|rom_addr[5]~19\)))) # (GND)
-- \vga_ctrl_inst|rom_addr[6]~21\ = CARRY((\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((\vga_ctrl_inst|pix_x[8]~1_combout\) # (!\vga_ctrl_inst|rom_addr[5]~19\))) # 
-- (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (\vga_ctrl_inst|pix_x[8]~1_combout\ & !\vga_ctrl_inst|rom_addr[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datab => \vga_ctrl_inst|pix_x[8]~1_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|rom_addr[5]~19\,
	combout => \vga_ctrl_inst|rom_addr[6]~20_combout\,
	cout => \vga_ctrl_inst|rom_addr[6]~21\);

-- Location: LCCOMB_X29_Y22_N12
\vga_ctrl_inst|rom_addr[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|rom_addr[7]~22_combout\ = (\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\vga_ctrl_inst|pix_x[9]~0_combout\ & (\vga_ctrl_inst|rom_addr[6]~21\ & VCC)) # (!\vga_ctrl_inst|pix_x[9]~0_combout\ & 
-- (!\vga_ctrl_inst|rom_addr[6]~21\)))) # (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\vga_ctrl_inst|pix_x[9]~0_combout\ & (!\vga_ctrl_inst|rom_addr[6]~21\)) # (!\vga_ctrl_inst|pix_x[9]~0_combout\ & 
-- ((\vga_ctrl_inst|rom_addr[6]~21\) # (GND)))))
-- \vga_ctrl_inst|rom_addr[7]~23\ = CARRY((\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\vga_ctrl_inst|pix_x[9]~0_combout\ & !\vga_ctrl_inst|rom_addr[6]~21\)) # 
-- (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((!\vga_ctrl_inst|rom_addr[6]~21\) # (!\vga_ctrl_inst|pix_x[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \vga_ctrl_inst|pix_x[9]~0_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|rom_addr[6]~21\,
	combout => \vga_ctrl_inst|rom_addr[7]~22_combout\,
	cout => \vga_ctrl_inst|rom_addr[7]~23\);

-- Location: LCCOMB_X29_Y22_N14
\vga_ctrl_inst|rom_addr[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|rom_addr[8]~24_combout\ = (\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\vga_ctrl_inst|rom_addr[7]~23\ $ (GND))) # (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- (!\vga_ctrl_inst|rom_addr[7]~23\ & VCC))
-- \vga_ctrl_inst|rom_addr[8]~25\ = CARRY((\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\vga_ctrl_inst|rom_addr[7]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|rom_addr[7]~23\,
	combout => \vga_ctrl_inst|rom_addr[8]~24_combout\,
	cout => \vga_ctrl_inst|rom_addr[8]~25\);

-- Location: LCCOMB_X29_Y22_N16
\vga_ctrl_inst|rom_addr[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|rom_addr[9]~26_combout\ = (\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\vga_ctrl_inst|rom_addr[8]~25\)) # (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- ((\vga_ctrl_inst|rom_addr[8]~25\) # (GND)))
-- \vga_ctrl_inst|rom_addr[9]~27\ = CARRY((!\vga_ctrl_inst|rom_addr[8]~25\) # (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|rom_addr[8]~25\,
	combout => \vga_ctrl_inst|rom_addr[9]~26_combout\,
	cout => \vga_ctrl_inst|rom_addr[9]~27\);

-- Location: LCCOMB_X29_Y22_N18
\vga_ctrl_inst|rom_addr[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|rom_addr[10]~28_combout\ = (\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\vga_ctrl_inst|rom_addr[9]~27\ $ (GND))) # (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- (!\vga_ctrl_inst|rom_addr[9]~27\ & VCC))
-- \vga_ctrl_inst|rom_addr[10]~29\ = CARRY((\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & !\vga_ctrl_inst|rom_addr[9]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|rom_addr[9]~27\,
	combout => \vga_ctrl_inst|rom_addr[10]~28_combout\,
	cout => \vga_ctrl_inst|rom_addr[10]~29\);

-- Location: LCCOMB_X29_Y22_N20
\vga_ctrl_inst|rom_addr[11]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|rom_addr[11]~30_combout\ = (\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\vga_ctrl_inst|rom_addr[10]~29\)) # (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- ((\vga_ctrl_inst|rom_addr[10]~29\) # (GND)))
-- \vga_ctrl_inst|rom_addr[11]~31\ = CARRY((!\vga_ctrl_inst|rom_addr[10]~29\) # (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|rom_addr[10]~29\,
	combout => \vga_ctrl_inst|rom_addr[11]~30_combout\,
	cout => \vga_ctrl_inst|rom_addr[11]~31\);

-- Location: LCCOMB_X29_Y22_N22
\vga_ctrl_inst|rom_addr[12]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|rom_addr[12]~32_combout\ = (\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (\vga_ctrl_inst|rom_addr[11]~31\ $ (GND))) # (!\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & 
-- (!\vga_ctrl_inst|rom_addr[11]~31\ & VCC))
-- \vga_ctrl_inst|rom_addr[12]~33\ = CARRY((\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & !\vga_ctrl_inst|rom_addr[11]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \vga_ctrl_inst|rom_addr[11]~31\,
	combout => \vga_ctrl_inst|rom_addr[12]~32_combout\,
	cout => \vga_ctrl_inst|rom_addr[12]~33\);

-- Location: LCCOMB_X29_Y22_N24
\vga_ctrl_inst|rom_addr[13]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|rom_addr[13]~34_combout\ = \vga_ctrl_inst|rom_addr[12]~33\ $ (\vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_ctrl_inst|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cin => \vga_ctrl_inst|rom_addr[12]~33\,
	combout => \vga_ctrl_inst|rom_addr[13]~34_combout\);

-- Location: LCCOMB_X32_Y25_N30
\vga_ctrl_inst|always5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|always5~1_combout\ = (\vga_ctrl_inst|Add3~16_combout\) # ((\vga_ctrl_inst|Add2~10_combout\) # ((\vga_ctrl_inst|cnt_vs\(9) & !\vga_ctrl_inst|vs_en~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|Add3~16_combout\,
	datab => \vga_ctrl_inst|Add2~10_combout\,
	datac => \vga_ctrl_inst|cnt_vs\(9),
	datad => \vga_ctrl_inst|vs_en~0_combout\,
	combout => \vga_ctrl_inst|always5~1_combout\);

-- Location: LCCOMB_X29_Y22_N28
\vga_ctrl_inst|always5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|always5~2_combout\ = ((\vga_ctrl_inst|always5~1_combout\) # ((\vga_ctrl_inst|hs_en~1_combout\) # (\vga_ctrl_inst|vs_en~2_combout\))) # (!\vga_ctrl_inst|always5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|always5~0_combout\,
	datab => \vga_ctrl_inst|always5~1_combout\,
	datac => \vga_ctrl_inst|hs_en~1_combout\,
	datad => \vga_ctrl_inst|vs_en~2_combout\,
	combout => \vga_ctrl_inst|always5~2_combout\);

-- Location: FF_X29_Y22_N25
\vga_ctrl_inst|rom_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|rom_addr[13]~34_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|always5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|rom_addr\(13));

-- Location: FF_X27_Y19_N25
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \vga_ctrl_inst|rom_addr\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: LCCOMB_X31_Y26_N8
\vga_ctrl_inst|rom_addr~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|rom_addr~36_combout\ = (!\vga_ctrl_inst|always5~2_combout\ & (\vga_ctrl_inst|cnt_hs\(2) & !\vga_ctrl_inst|hs_en~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_ctrl_inst|always5~2_combout\,
	datac => \vga_ctrl_inst|cnt_hs\(2),
	datad => \vga_ctrl_inst|hs_en~1_combout\,
	combout => \vga_ctrl_inst|rom_addr~36_combout\);

-- Location: FF_X31_Y26_N9
\vga_ctrl_inst|rom_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|rom_addr~36_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|rom_addr\(0));

-- Location: LCCOMB_X31_Y26_N30
\vga_ctrl_inst|rom_addr~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|rom_addr~37_combout\ = (!\vga_ctrl_inst|hs_en~1_combout\ & (\vga_ctrl_inst|cnt_hs\(3) & !\vga_ctrl_inst|always5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|hs_en~1_combout\,
	datab => \vga_ctrl_inst|cnt_hs\(3),
	datad => \vga_ctrl_inst|always5~2_combout\,
	combout => \vga_ctrl_inst|rom_addr~37_combout\);

-- Location: FF_X31_Y26_N31
\vga_ctrl_inst|rom_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|rom_addr~37_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|rom_addr\(1));

-- Location: FF_X29_Y22_N3
\vga_ctrl_inst|rom_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|rom_addr[2]~12_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|always5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|rom_addr\(2));

-- Location: FF_X29_Y22_N5
\vga_ctrl_inst|rom_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|rom_addr[3]~14_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|always5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|rom_addr\(3));

-- Location: FF_X29_Y22_N7
\vga_ctrl_inst|rom_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|rom_addr[4]~16_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|always5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|rom_addr\(4));

-- Location: FF_X29_Y22_N9
\vga_ctrl_inst|rom_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|rom_addr[5]~18_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|always5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|rom_addr\(5));

-- Location: FF_X29_Y22_N11
\vga_ctrl_inst|rom_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|rom_addr[6]~20_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|always5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|rom_addr\(6));

-- Location: FF_X29_Y22_N13
\vga_ctrl_inst|rom_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|rom_addr[7]~22_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|always5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|rom_addr\(7));

-- Location: FF_X29_Y22_N15
\vga_ctrl_inst|rom_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|rom_addr[8]~24_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|always5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|rom_addr\(8));

-- Location: FF_X29_Y22_N17
\vga_ctrl_inst|rom_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|rom_addr[9]~26_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|always5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|rom_addr\(9));

-- Location: FF_X29_Y22_N19
\vga_ctrl_inst|rom_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|rom_addr[10]~28_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|always5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|rom_addr\(10));

-- Location: LCCOMB_X27_Y19_N8
\vga_ctrl_inst|vga_rgb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vga_rgb~0_combout\ = (!\vga_ctrl_inst|always5~2_combout\ & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a8~portadataout\))) # 
-- (!\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & (\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datab => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	datad => \vga_ctrl_inst|always5~2_combout\,
	combout => \vga_ctrl_inst|vga_rgb~0_combout\);

-- Location: FF_X27_Y19_N9
\vga_ctrl_inst|vga_rgb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vga_rgb~0_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vga_rgb\(0));

-- Location: FF_X29_Y22_N21
\vga_ctrl_inst|rom_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|rom_addr[11]~30_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|always5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|rom_addr\(11));

-- Location: FF_X29_Y22_N23
\vga_ctrl_inst|rom_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|rom_addr[12]~32_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \vga_ctrl_inst|always5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|rom_addr\(12));

-- Location: M9K_X13_Y17_N0
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00003FEF7FFFFDFFC000000000000FFDFFFFFDBFFE000000000001F6F7FFFFF9F9F00000000000BF96FE0007FFFFC000000000079F7F1FFF8FFFFC0000000000F7CFCFFFFF3FDFE0000000000FC7F3E0007CF9BF0000000001FFFCF00000F3FCFA000000003FE7BC0000039F7FC000000007FFF703B9D80EF79C000000007FFCE07FFD8077EFE00000000FFF9807EFD803BFEF00000000FE7B007FFD801DFDF00000001FEF6006FF7C006F7F80000003FFEC007FFDC0077FF80000003E3DD803BBD801B3F7C0000003FFD9F8000003F9BEFC0000007F7B1FFC0003FF8DFFE0000007FF71FFFC03FFF8DFFE000000FFF61FFFF9FFFF86FFE000000FFFC1FFFF9F",
	mem_init2 => X"FFF86FFF000000FFEC1FFFF9FFFF837FF000000FFEC1FFFF9FFFF837FF000001FFD81FFFF9FFFF837FF000001FFD81FFFF9FFFF81BFF800001FFD81FFFF9FFFF81BFF800001FFD81FFFF9FFFF81BFF800001FFF00FFFF9FFFF01BFF800001FFB0003FF9FFC000FFF800001FFB00003F9FC0000FFF800003FFB00003F9FC0000DFF800003FFB00003F9FC0000DFF800003FFB00003F9FC0000DFF800003FFB00003F9FC0000DFF800001FFB00003F9FC0000DFF800001FFB00003F9FC0000FFF800001FFB0001FF9FF0000BFF800001FFF000FFF9FFF001BFF800001FFD80FFFF9FFFF01BFF800001FFD81FFFF9FFFF81BFF800001FFD81FFFCE3FFF81FFF0000",
	mem_init1 => X"00FFF81FFE7FE7FF837FF000002FFEC1FE7FFFC7F837FF000000FFEC1E3FFFFFC783FFF000000FFF603FFFFFFFC06FFE0000007FF61FFFFFFFFF86FFE0000007FFB1FFFE07FFF8DFFE0000007FFB1FFE0007FF9BFFC000000BFFD9FF00000FF9BFFC0000003FFEDF0000000FB7FF80000001FFEE80000000167FF80000001FFF7000000000EFFF00000000FFFB800000001DFFF000000007FFDC00000003BFFE000000007FFEE0000000E7FFE00000000BFFF38000001CFFFD000000001FFF9E000007BFFF8000000001FFFE780001E7FFF0000000002FFFF9F801F9FFFE00000000017FFFE7FFFE7FFFE00000000003FFFF87FE3FFFFD00000000001FFFFFC0",
	mem_init0 => X"3FFFFFA00000000000FFFFFFFFFFFFF4000000000017FFFFFFFFFFFC0000000000001FF7FFFFFFFF80000000000000FFFFFFFFFFF000000000000003FFFFFFFFFC000000000000001FFFFFFFFF00000000000000007FFFFFFFC00000000000000000FFFFFFF0000000000000000001FFFFF800000000000000000001FFF800000000000000000000400020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../Lab_12_tool/img/img/output.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_ctrl:vga_ctrl_inst|my_img_rom:u_rom|altsyncram:altsyncram_component|altsyncram_uvb1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 10000,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \vga_ctrl_inst|ALT_INV_rom_addr\(13),
	portaaddr => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y19_N10
\vga_ctrl_inst|vga_rgb~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vga_rgb~1_combout\ = (!\vga_ctrl_inst|always5~2_combout\ & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & (\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a9\)) # 
-- (!\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a1~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a9\,
	datab => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	datad => \vga_ctrl_inst|always5~2_combout\,
	combout => \vga_ctrl_inst|vga_rgb~1_combout\);

-- Location: FF_X27_Y19_N11
\vga_ctrl_inst|vga_rgb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vga_rgb~1_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vga_rgb\(1));

-- Location: M9K_X25_Y17_N0
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000DFCC876FAEFF70000000000017EA53FFFFFF9D800000000006EE67FDF3F7FBEC00000000004D4D7B0F0FDF77A00000000019FBDF37FE5FF65F00000000013E379E40673FDBF8000000003F3BEDDFFF88FF9E8000000006DF784FFFFFF7BB7E00000000FEDFDBFFFFFECF0FA000000009F3E3FC4F37F7EBFF00000001F39EDFC8D77F8BEED80000003FB7FFF9FFF7FC9FFE800000037F3AFFC35F7FEFFEFC0000007FFE5FFDFC97FF17FF40000004DFD7FFF5C63FF96F3C0000007EDD27FDF0A7FC5FDBA000000DF7B797FFFFFCC6BAFB000000FFB6FFB3FFFD5F75FFD000000FF3AFFFABFD3FF75DFF0000013FE5FFFFC6BFFF7CFFF800001FFE1FFFFF7F",
	mem_init2 => X"FFF7AFFE8000017FE3FFFFF7FFFF7F7FF8000037FEBFFFFF7FFFF7F3FEC00002FFF7FFFFF7FFFF7DBFEC00003FFC7FFFFF7FFFF7FFFF400002FF97FFFFF7FFFF7FBFFC00002FFE7FFFFF7FFFE7E9FFC00007FF8FF6BFF7FFD4FEFFF400006F5FFFF95F7F8BFFF1A7600006DB8FFFFFF7FBFFFFB13E00004FC8FFFFFF7FFFFFFF13E00005299FFFFFF7FFFFFFFF7E00005819FFFFFF7FFFFFFFD06000046D9FFFFFF7FFFFFFFABE00004A78FFFFFF7FFFFFFFE5E00006DBCFFFFFF7FBFFFF1FF400007FFFFFFE1F7FC7FFE7FF400007FF8FFF6FF7FF6FFE9FFC00002FFD7F4FFF7FFF2FFBFFC00003FFDFFFFFD6FFFE7E3FF400002FFC7EFFF31A7FFFE3FEC000",
	mem_init1 => X"037FD3EFE5B65A7F7D7FFC00003FFCFEE5A7FF3B7FC7FF800001FCEFFDCFFFFDBB785FE8000017C95FDBFFFFFCBFE5FF800001F0B3E3FFF27FFE71DFD000000D03BEFFE5FB7FF740BD000000A9BA6FEDFFF1FF6FA7F000000C53B6F2FFFFF4F7271E00000059FDE6FFFFFFF656E9E0000006FFE47FFFFFFFEFFFFC00000027FFEFFFFFFFFFCFFFC0000001FFF67FFFFFFFF9FFE80000001FFFBFFFFFFFFD3FFD80000000BFFD5FFFFFFF77FF9000000007FFE67FFFFFF1FFFA000000007FFFC9FFFFFBDFFF60000000027FFEB7FFFDC3FFFC0000000013FFF297FE99FFFF80000000009FFEC1A0583FFF90000000000CFFFFCA05033FF2000000000027FF7EA0",
	mem_init0 => X"57B7FF6000000000013FFDBFFFF47FEC00000000000BF83FFFFF7BFB0000000000007FE9FFFFF93EE00000000000037FEFFFFF49CC0000000000000EDFFFFFFB9F8000000000000063FFFFFFFFE000000000000001AFFFFFFFF800000000000000071FFFFF8E00000000000000001C5FFFB78000000000000000007CC237C00000000000000000003FFFE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../Lab_12_tool/img/img/output.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_ctrl:vga_ctrl_inst|my_img_rom:u_rom|altsyncram:altsyncram_component|altsyncram_uvb1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 10000,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \vga_ctrl_inst|ALT_INV_rom_addr\(13),
	portaaddr => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y19_N12
\vga_ctrl_inst|vga_rgb~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vga_rgb~2_combout\ = (!\vga_ctrl_inst|always5~2_combout\ & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & (\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a10\)) # 
-- (!\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a2~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a10\,
	datab => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datad => \vga_ctrl_inst|always5~2_combout\,
	combout => \vga_ctrl_inst|vga_rgb~2_combout\);

-- Location: FF_X27_Y19_N13
\vga_ctrl_inst|vga_rgb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vga_rgb~2_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vga_rgb\(2));

-- Location: M9K_X25_Y16_N0
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00001DFBDDFF0BFFC000000000002BCA3FFFFAFFDC0000000000017BFBFE0FFFFFE00000000000BFEDFDFFFBFF5740000000001779BEEFFF77E0F80000000000FFF7B77FEEDEA9C000000000073FE760005F7FFE4000000000C93FD00000AFF378000000003E7F14000003FF9FC000000007F3EF02A958047FF80000000033BFA066408073D4C00000002FBFF001C9C803DFDF00000000FDFE002CE08014FBE00000001FF6C000576400EFFF800000039EE8005F41C006F7B20000003DDED800A64803BF5FC0000003E7B9D8000003B8DDF80000007FFA1FDC00033F8BEFE0000013FFB1FFCC037FF8EDFE000000FFFC1FFFE97FFF83FFC000000FFE61FFFF9F",
	mem_init2 => X"FFF877FF0000027FF81FFFF9FFFF80FFF000000FFDC1FFFF9FFFF83FFE000001FFE81FFFF9FFFF83BFF000001FFF01FFFF9FFFF807FF800000FFF81FFFF9FFFF81FFF800004FFB81FFFF9FFFF81FFF800000FF900E7FF9FFE701DFF000001CBC00073F9FCC0009DB200001BDE00003F9FC00003FD00000383E00003F9FC00003C5000003EEF00003F9FC000035500000342F00003F9FC0000313800003B6F00003F9FC000036D000003D9E00003F9FC000039B000001E7E00003F9FC00009C7200000FFC0001BF9F98001DFF000000FF9000DFF9FFB001FFF800000FFB80DFFF9FFFB01FFF800001FFF81FFFE97FFF80FFF800001FFF00FFE4E6FFF813FF0000",
	mem_init1 => X"00FFDC0FF66F66FF83BFE0000007FFC0F66FFE46F81FFF000000FDF01627FFFEC6867FF000000F62E037FFFFFEC07FFC00000032DC17FFE6FFFC8DFFC00000070B70FFF606FFF87FFE00000048FD8FF6000CFF9F0F8000000147D0FB00000DF8FC3C0000003FFDCB0000000D9B6700000000FFF78000000017FFF80000001FFF3000000000DFFE00000002FFF9800000001BFFF000000003FFCC000000017FFC000000007FFE40000000BFFFE00000000BFFFF8000001FFFFD000000000FFFFA0000051FFF0000000001FFFDE800037FFFE0000000000FFFF7D801B6FFFC00000000017FFCDBC03DBFFFE00000000003FFF779F9DBFFFD00000000005FFF7F3F",
	mem_init0 => X"CF5FFEA00000000002FFF67FFFF99FD0000000000015FE9FFFFFEBF80000000000001FC5FFFFF8FF80000000000000BF5FFFFF9FD000000000000013FFFFFFF3B40000000000000017FFFFFFFD00000000000000007FFFFFFF400000000000000008BFFFFFD00000000000000000033FFFD800000000000000000003C03800000000000000000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../Lab_12_tool/img/img/output.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_ctrl:vga_ctrl_inst|my_img_rom:u_rom|altsyncram:altsyncram_component|altsyncram_uvb1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 10000,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \vga_ctrl_inst|ALT_INV_rom_addr\(13),
	portaaddr => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y19_N14
\vga_ctrl_inst|vga_rgb~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vga_rgb~3_combout\ = (!\vga_ctrl_inst|always5~2_combout\ & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & (\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a11\)) # 
-- (!\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a3~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a11\,
	datab => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datad => \vga_ctrl_inst|always5~2_combout\,
	combout => \vga_ctrl_inst|vga_rgb~3_combout\);

-- Location: FF_X27_Y19_N15
\vga_ctrl_inst|vga_rgb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vga_rgb~3_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vga_rgb\(3));

-- Location: LCCOMB_X27_Y19_N0
\vga_ctrl_inst|vga_rgb~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vga_rgb~4_combout\ = (!\vga_ctrl_inst|always5~2_combout\ & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a12~portadataout\))) # 
-- (!\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & (\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a4~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	datab => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	datad => \vga_ctrl_inst|always5~2_combout\,
	combout => \vga_ctrl_inst|vga_rgb~4_combout\);

-- Location: FF_X27_Y19_N1
\vga_ctrl_inst|vga_rgb[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vga_rgb~4_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vga_rgb\(4));

-- Location: M9K_X13_Y20_N0
\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a5\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00003FFFFFFFFFFF40000000000003FFFFFFFFFFFE000000000000FFFFFFFFFFFFF000000000001FFFFFFFFFFFFF000000000003FFFFFF0FFFFFF800000000007FFFFDE05FFFFFC00000000007FFFF00001FFFFF0000000001FFFFE00000BFFFF8000000003FFFF0000003FFFF0000000001FFFD02881007FFFC000000003FFF807F88805FFFC00000000FFFF806A04801FFFC00000000FFFF003AA08007FFE00000000FFFE0002A4C007FFF80000000FFF8000FB5C001FFF00000001FFF80002940003FFFC0000003FFF86000000100FFFC0000007FFF0FC800019F8FFF80000003FFC0FF9800DFF8FFFC0000003FFC0FFFB07FFF83FFC000000FFF80FFFF8F",
	mem_init2 => X"FFF83FFC000000FFFC0FFFF8FFFF81FFE000000FFF80FFFF8FFFF83FFF000000FFF80FFFF8FFFF80FFF000001FFF00FFFF8FFFF80FFE000000FFF80FFFF8FFFF80FFF800001FFE017FFF8FFFE01FFF000000FFF005BFF8FFEA007FF800001FDE00019F8FE8000FFF80000081F00001F8FC00007D3000000AAE00001F8FC00007B100000041E00001F8FC0000F5D80000016E00001F8FC0000EAD800000D6E00001F8FC0000738800000C1E00001F8FC0000739000001C7F00001F8FC0000FE7800001FFE0000FF8FD00007FF800000FFF0000FF8FF0000FFF000000FFE007FFF8FFFE01FFF800001FFF807FFC13FFE01FFF000000FFF81FFDC43BFF81FFF0000",
	mem_init1 => X"00FFF00FDC07C3FF81FFE0000007FFC1FC3FFDC0783FFE000000FDF8103BFFFC0001FFE000000337E003FFFFFF803DFE0000002F9C0FFFC7FFF803FFC00000054FF1FFFC007FF872BC00000032FF0FE000077F865F800000029FF8FE000007F9FEFC0000000BFFC000000000BE6780000001FFFA0000000003FE7800000007FFC000000000FFFA000000007FFE800000000FFFF000000007FFF400000001FFFE000000003FFFE00000003FFFC000000001FFFF80000017FFFC000000000FFFFC000005FFFF0000000000FFFFF800017FFFE00000000003FFFFF000DFFFFC00000000005FFDFF59BFFFFFC00000000002FFE7FFFFF53FF8000000000017FFFFFF",
	mem_init0 => X"FF5FFF0000000000007FFEBFFFFF9FC0000000000001FBCFFFFF2FF800000000000007C2FFFFF8BE800000000000003E1FFFFFA1E000000000000000CFFFFFFFDC0000000000000003FFFFFFFE00000000000000001FFFFFFF400000000000000000DFFFFFE00000000000000000011FFFC000000000000000000000BF9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../Lab_12_tool/img/img/output.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_ctrl:vga_ctrl_inst|my_img_rom:u_rom|altsyncram:altsyncram_component|altsyncram_uvb1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 10000,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \vga_ctrl_inst|ALT_INV_rom_addr\(13),
	portaaddr => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y19_N2
\vga_ctrl_inst|vga_rgb~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vga_rgb~5_combout\ = (!\vga_ctrl_inst|always5~2_combout\ & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & (\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a13\)) # 
-- (!\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a5~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a13\,
	datab => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	datad => \vga_ctrl_inst|always5~2_combout\,
	combout => \vga_ctrl_inst|vga_rgb~5_combout\);

-- Location: FF_X27_Y19_N3
\vga_ctrl_inst|vga_rgb[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vga_rgb~5_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vga_rgb\(5));

-- Location: LCCOMB_X27_Y19_N4
\vga_ctrl_inst|vga_rgb~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vga_rgb~6_combout\ = (!\vga_ctrl_inst|always5~2_combout\ & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a14\))) # 
-- (!\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & (\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a6~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datab => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a14\,
	datad => \vga_ctrl_inst|always5~2_combout\,
	combout => \vga_ctrl_inst|vga_rgb~6_combout\);

-- Location: FF_X27_Y19_N5
\vga_ctrl_inst|vga_rgb[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vga_rgb~6_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vga_rgb\(6));

-- Location: LCCOMB_X27_Y19_N6
\vga_ctrl_inst|vga_rgb~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_ctrl_inst|vga_rgb~7_combout\ = (!\vga_ctrl_inst|always5~2_combout\ & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & ((\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a15\))) # 
-- (!\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0) & (\vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a7~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datab => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \vga_ctrl_inst|u_rom|altsyncram_component|auto_generated|ram_block1a15\,
	datad => \vga_ctrl_inst|always5~2_combout\,
	combout => \vga_ctrl_inst|vga_rgb~7_combout\);

-- Location: FF_X27_Y19_N7
\vga_ctrl_inst|vga_rgb[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_vga_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga_ctrl_inst|vga_rgb~7_combout\,
	clrn => \pll_vga_inst|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_ctrl_inst|vga_rgb\(7));

ww_vga_vs <= \vga_vs~output_o\;

ww_vga_hs <= \vga_hs~output_o\;

ww_vga_rgb(0) <= \vga_rgb[0]~output_o\;

ww_vga_rgb(1) <= \vga_rgb[1]~output_o\;

ww_vga_rgb(2) <= \vga_rgb[2]~output_o\;

ww_vga_rgb(3) <= \vga_rgb[3]~output_o\;

ww_vga_rgb(4) <= \vga_rgb[4]~output_o\;

ww_vga_rgb(5) <= \vga_rgb[5]~output_o\;

ww_vga_rgb(6) <= \vga_rgb[6]~output_o\;

ww_vga_rgb(7) <= \vga_rgb[7]~output_o\;
END structure;


