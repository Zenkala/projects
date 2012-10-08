-- Copyright (C) 1991-2012 Altera Corporation
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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.0 Build 263 08/02/2012 Service Pack 2 SJ Web Edition"

-- DATE "10/08/2012 17:31:59"

-- 
-- Device: Altera EPM2210F324C3 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	pwm_gen IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	data_in : IN std_logic;
	data_clk : IN std_logic;
	data_rdy : OUT std_logic;
	channel_sel : IN std_logic_vector(1 DOWNTO 0);
	pwm_pin4_block : OUT std_logic_vector(3 DOWNTO 0);
	pwm_pin3_block : OUT std_logic_vector(3 DOWNTO 0)
	);
END pwm_gen;

-- Design Ports Information
-- clk	=>  Location: PIN_K13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_clk	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- channel_sel[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- channel_sel[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_rdy	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[0]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[1]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[2]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[3]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[0]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[1]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[2]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[3]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF pwm_gen IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_data_clk : std_logic;
SIGNAL ww_data_rdy : std_logic;
SIGNAL ww_channel_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_pwm_pin4_block : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pwm_pin3_block : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~5\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~5\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~5\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~5\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~10\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~10\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~10\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~10\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~15\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~15\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~15\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~15\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~20\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~20\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~20\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~20\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~25\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~25\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~25\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~25\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~30\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~30\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~30\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~30\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~35\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~35\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~35\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~35\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \pwm_counter|counter_value[0]~5\ : std_logic;
SIGNAL \pwm_counter|counter_value[0]~5COUT1_24\ : std_logic;
SIGNAL \pwm_counter|counter_value[1]~7\ : std_logic;
SIGNAL \pwm_counter|counter_value[1]~7COUT1_26\ : std_logic;
SIGNAL \pwm_counter|counter_value[2]~9\ : std_logic;
SIGNAL \pwm_counter|counter_value[2]~9COUT1_28\ : std_logic;
SIGNAL \pwm_counter|counter_value[3]~11\ : std_logic;
SIGNAL \pwm_counter|counter_value[3]~11COUT1_30\ : std_logic;
SIGNAL \pwm_counter|counter_value[4]~13\ : std_logic;
SIGNAL \pwm_counter|counter_value[5]~15\ : std_logic;
SIGNAL \pwm_counter|counter_value[5]~15COUT1_32\ : std_logic;
SIGNAL \pwm_counter|counter_value[6]~3\ : std_logic;
SIGNAL \pwm_counter|counter_value[6]~3COUT1_34\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \data_interface|LessThan0~0_combout\ : std_logic;
SIGNAL \data_clk~combout\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|data_updated_int~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|update_data~1\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~37_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~32_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~27_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~22_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~17_cout\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~12_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~7_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|reset_internal~regout\ : std_logic;
SIGNAL \pwm_counter|Equal0~0_combout\ : std_logic;
SIGNAL \pwm_counter|Equal0~1_combout\ : std_logic;
SIGNAL \pwm_counter|ovf_out~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|update_data~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|data_updated_int~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \interface_reset~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \data_interface|reset_int~regout\ : std_logic;
SIGNAL \data_interface|gather_data:bits_written[1]~regout\ : std_logic;
SIGNAL \data_interface|gather_data:bits_written[2]~regout\ : std_logic;
SIGNAL \data_interface|gather_data:bits_written[0]~regout\ : std_logic;
SIGNAL \data_interface|gather_data:bits_written[3]~regout\ : std_logic;
SIGNAL \data_interface|LessThan0~1_combout\ : std_logic;
SIGNAL \data_interface|data_rdy_int~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|update_data~1\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~37_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~32_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~27_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~22_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~17_cout\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~12_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~7_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~37_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~32_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~27_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~22_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~17_cout\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~12_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~7_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~37_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~32_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~27_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~22_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~17_cout\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~12_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~7_cout0\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|pwm_pin3~0\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|pwm_pin3~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|pwm_pin3~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|pwm_pin3~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_compare_blocks:2:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_compare_blocks:3:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \channel_sel~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm_counter|counter_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_interface|input_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \data_interface|data_rdy_buff\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm_compare_blocks:0:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_data_clk~combout\ : std_logic;
SIGNAL \ALT_INV_clk~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_data_in <= data_in;
ww_data_clk <= data_clk;
data_rdy <= ww_data_rdy;
ww_channel_sel <= channel_sel;
pwm_pin4_block <= ww_pwm_pin4_block;
pwm_pin3_block <= ww_pwm_pin3_block;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_data_clk~combout\ <= NOT \data_clk~combout\;
\ALT_INV_clk~combout\ <= NOT \clk~combout\;

-- Location: PIN_K13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\channel_sel[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_channel_sel(0),
	combout => \channel_sel~combout\(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\channel_sel[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_channel_sel(1),
	combout => \channel_sel~combout\(1));

-- Location: LC_X15_Y8_N0
\pwm_counter|counter_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(0) = DFFEAS(((!\pwm_counter|counter_value\(0))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )
-- \pwm_counter|counter_value[0]~5\ = CARRY(((\pwm_counter|counter_value\(0))))
-- \pwm_counter|counter_value[0]~5COUT1_24\ = CARRY(((\pwm_counter|counter_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_counter|counter_value\(0),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(0),
	cout0 => \pwm_counter|counter_value[0]~5\,
	cout1 => \pwm_counter|counter_value[0]~5COUT1_24\);

-- Location: LC_X15_Y8_N1
\pwm_counter|counter_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(1) = DFFEAS((\pwm_counter|counter_value\(1) $ ((\pwm_counter|counter_value[0]~5\))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )
-- \pwm_counter|counter_value[1]~7\ = CARRY(((!\pwm_counter|counter_value[0]~5\) # (!\pwm_counter|counter_value\(1))))
-- \pwm_counter|counter_value[1]~7COUT1_26\ = CARRY(((!\pwm_counter|counter_value[0]~5COUT1_24\) # (!\pwm_counter|counter_value\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_counter|counter_value\(1),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	cin0 => \pwm_counter|counter_value[0]~5\,
	cin1 => \pwm_counter|counter_value[0]~5COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(1),
	cout0 => \pwm_counter|counter_value[1]~7\,
	cout1 => \pwm_counter|counter_value[1]~7COUT1_26\);

-- Location: LC_X15_Y8_N2
\pwm_counter|counter_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(2) = DFFEAS((\pwm_counter|counter_value\(2) $ ((!\pwm_counter|counter_value[1]~7\))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )
-- \pwm_counter|counter_value[2]~9\ = CARRY(((\pwm_counter|counter_value\(2) & !\pwm_counter|counter_value[1]~7\)))
-- \pwm_counter|counter_value[2]~9COUT1_28\ = CARRY(((\pwm_counter|counter_value\(2) & !\pwm_counter|counter_value[1]~7COUT1_26\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_counter|counter_value\(2),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	cin0 => \pwm_counter|counter_value[1]~7\,
	cin1 => \pwm_counter|counter_value[1]~7COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(2),
	cout0 => \pwm_counter|counter_value[2]~9\,
	cout1 => \pwm_counter|counter_value[2]~9COUT1_28\);

-- Location: LC_X15_Y8_N3
\pwm_counter|counter_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(3) = DFFEAS(\pwm_counter|counter_value\(3) $ ((((\pwm_counter|counter_value[2]~9\)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )
-- \pwm_counter|counter_value[3]~11\ = CARRY(((!\pwm_counter|counter_value[2]~9\)) # (!\pwm_counter|counter_value\(3)))
-- \pwm_counter|counter_value[3]~11COUT1_30\ = CARRY(((!\pwm_counter|counter_value[2]~9COUT1_28\)) # (!\pwm_counter|counter_value\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(3),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	cin0 => \pwm_counter|counter_value[2]~9\,
	cin1 => \pwm_counter|counter_value[2]~9COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(3),
	cout0 => \pwm_counter|counter_value[3]~11\,
	cout1 => \pwm_counter|counter_value[3]~11COUT1_30\);

-- Location: LC_X15_Y8_N4
\pwm_counter|counter_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(4) = DFFEAS(\pwm_counter|counter_value\(4) $ ((((!\pwm_counter|counter_value[3]~11\)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )
-- \pwm_counter|counter_value[4]~13\ = CARRY((\pwm_counter|counter_value\(4) & ((!\pwm_counter|counter_value[3]~11COUT1_30\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(4),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	cin0 => \pwm_counter|counter_value[3]~11\,
	cin1 => \pwm_counter|counter_value[3]~11COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(4),
	cout => \pwm_counter|counter_value[4]~13\);

-- Location: LC_X15_Y8_N5
\pwm_counter|counter_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(5) = DFFEAS(\pwm_counter|counter_value\(5) $ ((((\pwm_counter|counter_value[4]~13\)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )
-- \pwm_counter|counter_value[5]~15\ = CARRY(((!\pwm_counter|counter_value[4]~13\)) # (!\pwm_counter|counter_value\(5)))
-- \pwm_counter|counter_value[5]~15COUT1_32\ = CARRY(((!\pwm_counter|counter_value[4]~13\)) # (!\pwm_counter|counter_value\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(5),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	cin => \pwm_counter|counter_value[4]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(5),
	cout0 => \pwm_counter|counter_value[5]~15\,
	cout1 => \pwm_counter|counter_value[5]~15COUT1_32\);

-- Location: LC_X15_Y8_N6
\pwm_counter|counter_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(6) = DFFEAS(\pwm_counter|counter_value\(6) $ ((((!(!\pwm_counter|counter_value[4]~13\ & \pwm_counter|counter_value[5]~15\) # (\pwm_counter|counter_value[4]~13\ & \pwm_counter|counter_value[5]~15COUT1_32\))))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )
-- \pwm_counter|counter_value[6]~3\ = CARRY((\pwm_counter|counter_value\(6) & ((!\pwm_counter|counter_value[5]~15\))))
-- \pwm_counter|counter_value[6]~3COUT1_34\ = CARRY((\pwm_counter|counter_value\(6) & ((!\pwm_counter|counter_value[5]~15COUT1_32\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(6),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	cin => \pwm_counter|counter_value[4]~13\,
	cin0 => \pwm_counter|counter_value[5]~15\,
	cin1 => \pwm_counter|counter_value[5]~15COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(6),
	cout0 => \pwm_counter|counter_value[6]~3\,
	cout1 => \pwm_counter|counter_value[6]~3COUT1_34\);

-- Location: LC_X15_Y8_N7
\pwm_counter|counter_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(7) = DFFEAS((\pwm_counter|counter_value\(7) $ (((!\pwm_counter|counter_value[4]~13\ & \pwm_counter|counter_value[6]~3\) # (\pwm_counter|counter_value[4]~13\ & \pwm_counter|counter_value[6]~3COUT1_34\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_counter|counter_value\(7),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	cin => \pwm_counter|counter_value[4]~13\,
	cin0 => \pwm_counter|counter_value[6]~3\,
	cin1 => \pwm_counter|counter_value[6]~3COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(7));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in,
	combout => \data_in~combout\);

-- Location: LC_X14_Y10_N4
\data_interface|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \data_interface|LessThan0~0_combout\ = ((!\data_interface|gather_data:bits_written[1]~regout\ & (!\data_interface|gather_data:bits_written[0]~regout\ & !\data_interface|gather_data:bits_written[2]~regout\))) # 
-- (!\data_interface|gather_data:bits_written[3]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f1f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_interface|gather_data:bits_written[1]~regout\,
	datab => \data_interface|gather_data:bits_written[0]~regout\,
	datac => \data_interface|gather_data:bits_written[3]~regout\,
	datad => \data_interface|gather_data:bits_written[2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_interface|LessThan0~0_combout\);

-- Location: LC_X14_Y10_N8
\data_interface|input_reg[0]\ : maxii_lcell
-- Equation(s):
-- \data_interface|input_reg\(0) = DFFEAS(GND, GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, \data_in~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	datac => \data_in~combout\,
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|input_reg\(0));

-- Location: LC_X15_Y11_N0
\data_interface|input_reg[1]\ : maxii_lcell
-- Equation(s):
-- \data_interface|input_reg\(1) = DFFEAS(GND, GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, \data_interface|input_reg\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	datac => \data_interface|input_reg\(0),
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|input_reg\(1));

-- Location: LC_X15_Y11_N9
\data_interface|input_reg[2]\ : maxii_lcell
-- Equation(s):
-- \data_interface|input_reg\(2) = DFFEAS(GND, GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, \data_interface|input_reg\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	datac => \data_interface|input_reg\(1),
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|input_reg\(2));

-- Location: LC_X15_Y11_N1
\data_interface|input_reg[3]\ : maxii_lcell
-- Equation(s):
-- \data_interface|input_reg\(3) = DFFEAS((((\data_interface|input_reg\(2)))), GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	datad => \data_interface|input_reg\(2),
	aclr => \data_interface|reset_int~regout\,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|input_reg\(3));

-- Location: LC_X15_Y11_N3
\data_interface|input_reg[4]\ : maxii_lcell
-- Equation(s):
-- \data_interface|input_reg\(4) = DFFEAS((((\data_interface|input_reg\(3)))), GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	datad => \data_interface|input_reg\(3),
	aclr => \data_interface|reset_int~regout\,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|input_reg\(4));

-- Location: LC_X15_Y11_N7
\data_interface|input_reg[5]\ : maxii_lcell
-- Equation(s):
-- \data_interface|input_reg\(5) = DFFEAS((((\data_interface|input_reg\(4)))), GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	datad => \data_interface|input_reg\(4),
	aclr => \data_interface|reset_int~regout\,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|input_reg\(5));

-- Location: LC_X13_Y10_N9
\data_interface|input_reg[6]\ : maxii_lcell
-- Equation(s):
-- \data_interface|input_reg\(6) = DFFEAS((((\data_interface|input_reg\(5)))), GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	datad => \data_interface|input_reg\(5),
	aclr => \data_interface|reset_int~regout\,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|input_reg\(6));

-- Location: LC_X15_Y10_N1
\data_interface|input_reg[7]\ : maxii_lcell
-- Equation(s):
-- \data_interface|input_reg\(7) = DFFEAS(GND, GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, \data_interface|input_reg\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	datac => \data_interface|input_reg\(6),
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|input_reg\(7));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_clk,
	combout => \data_clk~combout\);

-- Location: LC_X12_Y13_N6
\data_interface|data_rdy_buff[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|update_data~0\ = ((!\channel_sel~combout\(0) & (C1_data_rdy_buff[1] & \pwm_counter|ovf_out~regout\)))
-- \data_interface|data_rdy_buff\(1) = DFFEAS(\pwm_compare_blocks:0:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , !\data_clk~combout\, \data_interface|data_rdy_buff\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \channel_sel~combout\(0),
	datac => \data_interface|data_rdy_buff\(0),
	datad => \pwm_counter|ovf_out~regout\,
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \ALT_INV_data_clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	regout => \data_interface|data_rdy_buff\(1));

-- Location: LC_X12_Y12_N7
\pwm_compare_blocks:0:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|update_data~1\ = (!\pwm_compare_blocks:0:pwm_x|data_updated_int~regout\ & (!\channel_sel~combout\(1) & (!B1_\update_data:data_stored & \pwm_compare_blocks:0:pwm_x|update_data~0\)))
-- \pwm_compare_blocks:0:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:0:pwm_x|update_data~1\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:0:pwm_x|data_updated_int~regout\,
	datab => \channel_sel~combout\(1),
	datad => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	regout => \pwm_compare_blocks:0:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X12_Y12_N1
\pwm_compare_blocks:0:pwm_x|data_updated_int~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|data_updated_int~0_combout\ = (((\data_interface|data_rdy_buff\(1) & !\channel_sel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \data_interface|data_rdy_buff\(1),
	datad => \channel_sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|data_updated_int~0_combout\);

-- Location: LC_X12_Y12_N4
\pwm_compare_blocks:0:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:0:pwm_x|update_data:data_stored~regout\) # ((\pwm_compare_blocks:0:pwm_x|data_updated_int~regout\ & (!\channel_sel~combout\(1) & 
-- \pwm_compare_blocks:0:pwm_x|data_updated_int~0_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:0:pwm_x|data_updated_int~regout\,
	datab => \pwm_compare_blocks:0:pwm_x|update_data:data_stored~regout\,
	datac => \channel_sel~combout\(1),
	datad => \pwm_compare_blocks:0:pwm_x|data_updated_int~0_combout\,
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|data_updated_int~regout\);

-- Location: LC_X14_Y11_N8
\pwm_compare_blocks:0:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, \data_interface|input_reg\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(7));

-- Location: LC_X15_Y11_N5
\pwm_compare_blocks:0:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(4) = DFFEAS((((\data_interface|input_reg\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(4));

-- Location: LC_X15_Y11_N6
\pwm_compare_blocks:0:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(3) = DFFEAS((((\data_interface|input_reg\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(3));

-- Location: LC_X15_Y11_N2
\pwm_compare_blocks:0:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(2) = DFFEAS((((\data_interface|input_reg\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(2));

-- Location: LC_X15_Y11_N4
\pwm_compare_blocks:0:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, \data_interface|input_reg\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(1));

-- Location: LC_X13_Y11_N5
\pwm_compare_blocks:0:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(0) = DFFEAS((((\data_interface|input_reg\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(0),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(0));

-- Location: LC_X14_Y12_N0
\pwm_compare_blocks:0:pwm_x|LessThan0~37\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|LessThan0~37_cout0\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:0:pwm_x|compare_value\(0))))
-- \pwm_compare_blocks:0:pwm_x|LessThan0~37COUT1_48\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:0:pwm_x|compare_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(0),
	datab => \pwm_compare_blocks:0:pwm_x|compare_value\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|LessThan0~35\,
	cout0 => \pwm_compare_blocks:0:pwm_x|LessThan0~37_cout0\,
	cout1 => \pwm_compare_blocks:0:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X14_Y12_N1
\pwm_compare_blocks:0:pwm_x|LessThan0~32\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|LessThan0~32_cout0\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~37_cout0\) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:0:pwm_x|compare_value\(1) & !\pwm_compare_blocks:0:pwm_x|LessThan0~37_cout0\)))
-- \pwm_compare_blocks:0:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~37COUT1_48\) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:0:pwm_x|compare_value\(1) & !\pwm_compare_blocks:0:pwm_x|LessThan0~37COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(1),
	datab => \pwm_compare_blocks:0:pwm_x|compare_value\(1),
	cin0 => \pwm_compare_blocks:0:pwm_x|LessThan0~37_cout0\,
	cin1 => \pwm_compare_blocks:0:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|LessThan0~30\,
	cout0 => \pwm_compare_blocks:0:pwm_x|LessThan0~32_cout0\,
	cout1 => \pwm_compare_blocks:0:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X14_Y12_N2
\pwm_compare_blocks:0:pwm_x|LessThan0~27\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|LessThan0~27_cout0\ = CARRY((\pwm_compare_blocks:0:pwm_x|compare_value\(2) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~32_cout0\) # (!\pwm_counter|counter_value\(2)))) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(2) & 
-- (!\pwm_counter|counter_value\(2) & !\pwm_compare_blocks:0:pwm_x|LessThan0~32_cout0\)))
-- \pwm_compare_blocks:0:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_compare_blocks:0:pwm_x|compare_value\(2) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~32COUT1_50\) # (!\pwm_counter|counter_value\(2)))) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(2) & 
-- (!\pwm_counter|counter_value\(2) & !\pwm_compare_blocks:0:pwm_x|LessThan0~32COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:0:pwm_x|compare_value\(2),
	datab => \pwm_counter|counter_value\(2),
	cin0 => \pwm_compare_blocks:0:pwm_x|LessThan0~32_cout0\,
	cin1 => \pwm_compare_blocks:0:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|LessThan0~25\,
	cout0 => \pwm_compare_blocks:0:pwm_x|LessThan0~27_cout0\,
	cout1 => \pwm_compare_blocks:0:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X14_Y12_N3
\pwm_compare_blocks:0:pwm_x|LessThan0~22\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|LessThan0~22_cout0\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~27_cout0\) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:0:pwm_x|compare_value\(3) & !\pwm_compare_blocks:0:pwm_x|LessThan0~27_cout0\)))
-- \pwm_compare_blocks:0:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:0:pwm_x|compare_value\(3) & !\pwm_compare_blocks:0:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:0:pwm_x|compare_value\(3),
	cin0 => \pwm_compare_blocks:0:pwm_x|LessThan0~27_cout0\,
	cin1 => \pwm_compare_blocks:0:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|LessThan0~20\,
	cout0 => \pwm_compare_blocks:0:pwm_x|LessThan0~22_cout0\,
	cout1 => \pwm_compare_blocks:0:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X14_Y12_N4
\pwm_compare_blocks:0:pwm_x|LessThan0~17\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|LessThan0~17_cout\ = CARRY((\pwm_compare_blocks:0:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:0:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:0:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	cin0 => \pwm_compare_blocks:0:pwm_x|LessThan0~22_cout0\,
	cin1 => \pwm_compare_blocks:0:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|LessThan0~15\,
	cout => \pwm_compare_blocks:0:pwm_x|LessThan0~17_cout\);

-- Location: LC_X13_Y11_N8
\pwm_compare_blocks:0:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(6) = DFFEAS((((\data_interface|input_reg\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(6));

-- Location: LC_X15_Y11_N8
\pwm_compare_blocks:0:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, \data_interface|input_reg\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(5));

-- Location: LC_X14_Y12_N5
\pwm_compare_blocks:0:pwm_x|LessThan0~12\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|LessThan0~12_cout0\ = CARRY((\pwm_compare_blocks:0:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:0:pwm_x|LessThan0~17_cout\)) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:0:pwm_x|LessThan0~17_cout\))))
-- \pwm_compare_blocks:0:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_compare_blocks:0:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:0:pwm_x|LessThan0~17_cout\)) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:0:pwm_x|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:0:pwm_x|compare_value\(5),
	datab => \pwm_counter|counter_value\(5),
	cin => \pwm_compare_blocks:0:pwm_x|LessThan0~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|LessThan0~10\,
	cout0 => \pwm_compare_blocks:0:pwm_x|LessThan0~12_cout0\,
	cout1 => \pwm_compare_blocks:0:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X14_Y12_N6
\pwm_compare_blocks:0:pwm_x|LessThan0~7\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|LessThan0~7_cout0\ = CARRY((\pwm_compare_blocks:0:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~12_cout0\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:0:pwm_x|LessThan0~12_cout0\)))
-- \pwm_compare_blocks:0:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_compare_blocks:0:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~12COUT1_56\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:0:pwm_x|LessThan0~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:0:pwm_x|compare_value\(6),
	datab => \pwm_counter|counter_value\(6),
	cin => \pwm_compare_blocks:0:pwm_x|LessThan0~17_cout\,
	cin0 => \pwm_compare_blocks:0:pwm_x|LessThan0~12_cout0\,
	cin1 => \pwm_compare_blocks:0:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|LessThan0~5\,
	cout0 => \pwm_compare_blocks:0:pwm_x|LessThan0~7_cout0\,
	cout1 => \pwm_compare_blocks:0:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X14_Y12_N7
\pwm_compare_blocks:0:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|LessThan0~0_combout\ = (\pwm_counter|counter_value\(7) & ((((!\pwm_compare_blocks:0:pwm_x|LessThan0~17_cout\ & \pwm_compare_blocks:0:pwm_x|LessThan0~7_cout0\) # (\pwm_compare_blocks:0:pwm_x|LessThan0~17_cout\ & 
-- \pwm_compare_blocks:0:pwm_x|LessThan0~7COUT1_58\) & \pwm_compare_blocks:0:pwm_x|compare_value\(7))))) # (!\pwm_counter|counter_value\(7) & ((((!\pwm_compare_blocks:0:pwm_x|LessThan0~17_cout\ & \pwm_compare_blocks:0:pwm_x|LessThan0~7_cout0\) # 
-- (\pwm_compare_blocks:0:pwm_x|LessThan0~17_cout\ & \pwm_compare_blocks:0:pwm_x|LessThan0~7COUT1_58\)) # (\pwm_compare_blocks:0:pwm_x|compare_value\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(7),
	datad => \pwm_compare_blocks:0:pwm_x|compare_value\(7),
	cin => \pwm_compare_blocks:0:pwm_x|LessThan0~17_cout\,
	cin0 => \pwm_compare_blocks:0:pwm_x|LessThan0~7_cout0\,
	cin1 => \pwm_compare_blocks:0:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|LessThan0~0_combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X14_Y12_N9
\data_interface|input_reg[8]\ : maxii_lcell
-- Equation(s):
-- \data_interface|input_reg\(8) = DFFEAS(GND, GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, \data_interface|input_reg\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	datac => \data_interface|input_reg\(7),
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|input_reg\(8));

-- Location: LC_X14_Y12_N8
\pwm_compare_blocks:0:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|pwm_pin3~0\ = (!\pwm_compare_blocks:3:pwm_x|reset_internal~regout\ & (((!B1_pwm_out_sel & \pwm_compare_blocks:0:pwm_x|LessThan0~0_combout\))))
-- \pwm_compare_blocks:0:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:0:pwm_x|pwm_pin3~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:0:pwm_x|LessThan0~0_combout\,
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|pwm_pin3~0\,
	regout => \pwm_compare_blocks:0:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X14_Y13_N2
\pwm_compare_blocks:3:pwm_x|reset_internal\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|pwm_pin4~0\ = (((\pwm_compare_blocks:0:pwm_x|LessThan0~0_combout\ & !B4_reset_internal)) # (!\pwm_compare_blocks:0:pwm_x|pwm_out_sel~regout\))
-- \pwm_compare_blocks:3:pwm_x|reset_internal~regout\ = DFFEAS(\pwm_compare_blocks:0:pwm_x|pwm_pin4~0\, !GLOBAL(\clk~combout\), VCC, , , \reset~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \pwm_compare_blocks:0:pwm_x|LessThan0~0_combout\,
	datac => \reset~combout\,
	datad => \pwm_compare_blocks:0:pwm_x|pwm_out_sel~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\);

-- Location: LC_X14_Y7_N2
\pwm_counter|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|Equal0~0_combout\ = (\pwm_counter|counter_value\(1) & (((\pwm_counter|counter_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(1),
	datac => \pwm_counter|counter_value\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_counter|Equal0~0_combout\);

-- Location: LC_X15_Y8_N8
\pwm_counter|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|Equal0~1_combout\ = (\pwm_counter|counter_value\(6) & (\pwm_counter|counter_value\(7) & (\pwm_counter|counter_value\(5) & \pwm_counter|counter_value\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(6),
	datab => \pwm_counter|counter_value\(7),
	datac => \pwm_counter|counter_value\(5),
	datad => \pwm_counter|counter_value\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_counter|Equal0~1_combout\);

-- Location: LC_X15_Y8_N9
\pwm_counter|ovf_out\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|ovf_out~regout\ = DFFEAS((\pwm_counter|counter_value\(3) & (\pwm_counter|Equal0~0_combout\ & (\pwm_counter|counter_value\(2) & \pwm_counter|Equal0~1_combout\))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_counter|Equal0~0_combout\,
	datac => \pwm_counter|counter_value\(2),
	datad => \pwm_counter|Equal0~1_combout\,
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|ovf_out~regout\);

-- Location: LC_X12_Y12_N2
\pwm_compare_blocks:1:pwm_x|update_data~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|update_data~0_combout\ = ((\channel_sel~combout\(0) & (\data_interface|data_rdy_buff\(1) & \pwm_counter|ovf_out~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \channel_sel~combout\(0),
	datac => \data_interface|data_rdy_buff\(1),
	datad => \pwm_counter|ovf_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|update_data~0_combout\);

-- Location: LC_X12_Y12_N0
\pwm_compare_blocks:3:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|update_data~0\ = (\channel_sel~combout\(1) & (\pwm_compare_blocks:1:pwm_x|update_data~0_combout\ & (!B4_\update_data:data_stored & !\pwm_compare_blocks:3:pwm_x|data_updated_int~regout\)))
-- \pwm_compare_blocks:3:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:3:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \channel_sel~combout\(1),
	datab => \pwm_compare_blocks:1:pwm_x|update_data~0_combout\,
	datad => \pwm_compare_blocks:3:pwm_x|data_updated_int~regout\,
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	regout => \pwm_compare_blocks:3:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X12_Y13_N8
\pwm_compare_blocks:1:pwm_x|data_updated_int~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|data_updated_int~0_combout\ = (((\data_interface|data_rdy_buff\(1) & \channel_sel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \data_interface|data_rdy_buff\(1),
	datad => \channel_sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|data_updated_int~0_combout\);

-- Location: LC_X12_Y12_N8
\pwm_compare_blocks:3:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:3:pwm_x|update_data:data_stored~regout\) # ((\pwm_compare_blocks:3:pwm_x|data_updated_int~regout\ & (\channel_sel~combout\(1) & 
-- \pwm_compare_blocks:1:pwm_x|data_updated_int~0_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:3:pwm_x|data_updated_int~regout\,
	datab => \pwm_compare_blocks:3:pwm_x|update_data:data_stored~regout\,
	datac => \channel_sel~combout\(1),
	datad => \pwm_compare_blocks:1:pwm_x|data_updated_int~0_combout\,
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|data_updated_int~regout\);

-- Location: LC_X12_Y13_N5
\pwm_compare_blocks:1:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|update_data~1\ = (\pwm_compare_blocks:1:pwm_x|update_data~0_combout\ & (!\channel_sel~combout\(1) & (!B2_\update_data:data_stored & !\pwm_compare_blocks:1:pwm_x|data_updated_int~regout\)))
-- \pwm_compare_blocks:1:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:1:pwm_x|update_data~1\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:1:pwm_x|update_data~0_combout\,
	datab => \channel_sel~combout\(1),
	datad => \pwm_compare_blocks:1:pwm_x|data_updated_int~regout\,
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|update_data~1\,
	regout => \pwm_compare_blocks:1:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X12_Y13_N2
\pwm_compare_blocks:1:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:1:pwm_x|update_data:data_stored~regout\) # ((\pwm_compare_blocks:1:pwm_x|data_updated_int~0_combout\ & (!\channel_sel~combout\(1) & 
-- \pwm_compare_blocks:1:pwm_x|data_updated_int~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:1:pwm_x|data_updated_int~0_combout\,
	datab => \channel_sel~combout\(1),
	datac => \pwm_compare_blocks:1:pwm_x|update_data:data_stored~regout\,
	datad => \pwm_compare_blocks:1:pwm_x|data_updated_int~regout\,
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|data_updated_int~regout\);

-- Location: LC_X12_Y12_N6
\interface_reset~0\ : maxii_lcell
-- Equation(s):
-- \interface_reset~0_combout\ = (((\pwm_compare_blocks:0:pwm_x|data_updated_int~regout\) # (\reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_compare_blocks:0:pwm_x|data_updated_int~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \interface_reset~0_combout\);

-- Location: LC_X12_Y12_N9
\pwm_compare_blocks:2:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|update_data~0\ = (\channel_sel~combout\(1) & (\pwm_compare_blocks:0:pwm_x|update_data~0\ & (!B3_\update_data:data_stored & !\pwm_compare_blocks:2:pwm_x|data_updated_int~regout\)))
-- \pwm_compare_blocks:2:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:2:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \channel_sel~combout\(1),
	datab => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	datad => \pwm_compare_blocks:2:pwm_x|data_updated_int~regout\,
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	regout => \pwm_compare_blocks:2:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X12_Y12_N3
\pwm_compare_blocks:2:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:2:pwm_x|update_data:data_stored~regout\) # ((\pwm_compare_blocks:2:pwm_x|data_updated_int~regout\ & (\channel_sel~combout\(1) & 
-- \pwm_compare_blocks:0:pwm_x|data_updated_int~0_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:2:pwm_x|data_updated_int~regout\,
	datab => \pwm_compare_blocks:2:pwm_x|update_data:data_stored~regout\,
	datac => \channel_sel~combout\(1),
	datad => \pwm_compare_blocks:0:pwm_x|data_updated_int~0_combout\,
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|data_updated_int~regout\);

-- Location: LC_X12_Y12_N5
\data_interface|reset_int\ : maxii_lcell
-- Equation(s):
-- \data_interface|reset_int~regout\ = DFFEAS((\pwm_compare_blocks:3:pwm_x|data_updated_int~regout\) # ((\pwm_compare_blocks:1:pwm_x|data_updated_int~regout\) # ((\interface_reset~0_combout\) # (\pwm_compare_blocks:2:pwm_x|data_updated_int~regout\))), 
-- !GLOBAL(\clk~combout\), VCC, , !\data_clk~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \pwm_compare_blocks:3:pwm_x|data_updated_int~regout\,
	datab => \pwm_compare_blocks:1:pwm_x|data_updated_int~regout\,
	datac => \interface_reset~0_combout\,
	datad => \pwm_compare_blocks:2:pwm_x|data_updated_int~regout\,
	aclr => GND,
	ena => \ALT_INV_data_clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|reset_int~regout\);

-- Location: LC_X15_Y12_N8
\data_interface|gather_data:bits_written[1]\ : maxii_lcell
-- Equation(s):
-- \data_interface|gather_data:bits_written[1]~regout\ = DFFEAS((\data_interface|gather_data:bits_written[1]~regout\ $ (((\data_interface|gather_data:bits_written[0]~regout\ & !\data_interface|gather_data:bits_written[3]~regout\)))), 
-- GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f50a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	dataa => \data_interface|gather_data:bits_written[0]~regout\,
	datac => \data_interface|gather_data:bits_written[3]~regout\,
	datad => \data_interface|gather_data:bits_written[1]~regout\,
	aclr => \data_interface|reset_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|gather_data:bits_written[1]~regout\);

-- Location: LC_X15_Y12_N9
\data_interface|gather_data:bits_written[2]\ : maxii_lcell
-- Equation(s):
-- \data_interface|gather_data:bits_written[2]~regout\ = DFFEAS(\data_interface|gather_data:bits_written[2]~regout\ $ (((\data_interface|gather_data:bits_written[0]~regout\ & (!\data_interface|gather_data:bits_written[3]~regout\ & 
-- \data_interface|gather_data:bits_written[1]~regout\)))), GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c6cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	dataa => \data_interface|gather_data:bits_written[0]~regout\,
	datab => \data_interface|gather_data:bits_written[2]~regout\,
	datac => \data_interface|gather_data:bits_written[3]~regout\,
	datad => \data_interface|gather_data:bits_written[1]~regout\,
	aclr => \data_interface|reset_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|gather_data:bits_written[2]~regout\);

-- Location: LC_X15_Y12_N6
\data_interface|gather_data:bits_written[0]\ : maxii_lcell
-- Equation(s):
-- \data_interface|gather_data:bits_written[0]~regout\ = DFFEAS((\data_interface|gather_data:bits_written[0]~regout\ & (((\data_interface|gather_data:bits_written[3]~regout\)))) # (!\data_interface|gather_data:bits_written[0]~regout\ & 
-- (((!\data_interface|gather_data:bits_written[2]~regout\ & !\data_interface|gather_data:bits_written[1]~regout\)) # (!\data_interface|gather_data:bits_written[3]~regout\))), GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5b5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	dataa => \data_interface|gather_data:bits_written[0]~regout\,
	datab => \data_interface|gather_data:bits_written[2]~regout\,
	datac => \data_interface|gather_data:bits_written[3]~regout\,
	datad => \data_interface|gather_data:bits_written[1]~regout\,
	aclr => \data_interface|reset_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|gather_data:bits_written[0]~regout\);

-- Location: LC_X15_Y12_N4
\data_interface|gather_data:bits_written[3]\ : maxii_lcell
-- Equation(s):
-- \data_interface|gather_data:bits_written[3]~regout\ = DFFEAS((\data_interface|gather_data:bits_written[3]~regout\) # ((\data_interface|gather_data:bits_written[0]~regout\ & (\data_interface|gather_data:bits_written[2]~regout\ & 
-- \data_interface|gather_data:bits_written[1]~regout\))), GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	dataa => \data_interface|gather_data:bits_written[0]~regout\,
	datab => \data_interface|gather_data:bits_written[2]~regout\,
	datac => \data_interface|gather_data:bits_written[3]~regout\,
	datad => \data_interface|gather_data:bits_written[1]~regout\,
	aclr => \data_interface|reset_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|gather_data:bits_written[3]~regout\);

-- Location: LC_X15_Y12_N5
\data_interface|LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \data_interface|LessThan0~1_combout\ = (!\data_interface|gather_data:bits_written[1]~regout\ & (((!\data_interface|gather_data:bits_written[0]~regout\ & !\data_interface|gather_data:bits_written[2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_interface|gather_data:bits_written[1]~regout\,
	datac => \data_interface|gather_data:bits_written[0]~regout\,
	datad => \data_interface|gather_data:bits_written[2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_interface|LessThan0~1_combout\);

-- Location: LC_X15_Y12_N2
\data_interface|data_rdy_int\ : maxii_lcell
-- Equation(s):
-- \data_interface|data_rdy_int~regout\ = DFFEAS(((\data_interface|data_rdy_int~regout\) # ((\data_interface|gather_data:bits_written[3]~regout\ & \data_interface|LessThan0~1_combout\))), GLOBAL(\data_clk~combout\), 
-- !GLOBAL(\data_interface|reset_int~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	dataa => \data_interface|gather_data:bits_written[3]~regout\,
	datac => \data_interface|LessThan0~1_combout\,
	datad => \data_interface|data_rdy_int~regout\,
	aclr => \data_interface|reset_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|data_rdy_int~regout\);

-- Location: LC_X12_Y13_N4
\data_interface|data_rdy_buff[0]\ : maxii_lcell
-- Equation(s):
-- \data_interface|data_rdy_buff\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , !\data_clk~combout\, \data_interface|data_rdy_int~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|data_rdy_int~regout\,
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \ALT_INV_data_clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|data_rdy_buff\(0));

-- Location: LC_X14_Y11_N9
\pwm_compare_blocks:1:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~1\, \data_interface|input_reg\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(7));

-- Location: LC_X13_Y11_N1
\pwm_compare_blocks:1:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~1\, \data_interface|input_reg\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(4));

-- Location: LC_X13_Y11_N7
\pwm_compare_blocks:1:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~1\, \data_interface|input_reg\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(3));

-- Location: LC_X13_Y11_N0
\pwm_compare_blocks:1:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~1\, \data_interface|input_reg\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(2));

-- Location: LC_X13_Y12_N5
\pwm_compare_blocks:1:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~1\, \data_interface|input_reg\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(1));

-- Location: LC_X13_Y11_N4
\pwm_compare_blocks:1:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(0) = DFFEAS((((\data_interface|input_reg\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(0),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(0));

-- Location: LC_X14_Y11_N0
\pwm_compare_blocks:1:pwm_x|LessThan0~37\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|LessThan0~37_cout0\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:1:pwm_x|compare_value\(0))))
-- \pwm_compare_blocks:1:pwm_x|LessThan0~37COUT1_48\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:1:pwm_x|compare_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(0),
	datab => \pwm_compare_blocks:1:pwm_x|compare_value\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|LessThan0~35\,
	cout0 => \pwm_compare_blocks:1:pwm_x|LessThan0~37_cout0\,
	cout1 => \pwm_compare_blocks:1:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X14_Y11_N1
\pwm_compare_blocks:1:pwm_x|LessThan0~32\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|LessThan0~32_cout0\ = CARRY((\pwm_compare_blocks:1:pwm_x|compare_value\(1) & (\pwm_counter|counter_value\(1) & !\pwm_compare_blocks:1:pwm_x|LessThan0~37_cout0\)) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(1) & 
-- ((\pwm_counter|counter_value\(1)) # (!\pwm_compare_blocks:1:pwm_x|LessThan0~37_cout0\))))
-- \pwm_compare_blocks:1:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_compare_blocks:1:pwm_x|compare_value\(1) & (\pwm_counter|counter_value\(1) & !\pwm_compare_blocks:1:pwm_x|LessThan0~37COUT1_48\)) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(1) & 
-- ((\pwm_counter|counter_value\(1)) # (!\pwm_compare_blocks:1:pwm_x|LessThan0~37COUT1_48\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:1:pwm_x|compare_value\(1),
	datab => \pwm_counter|counter_value\(1),
	cin0 => \pwm_compare_blocks:1:pwm_x|LessThan0~37_cout0\,
	cin1 => \pwm_compare_blocks:1:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|LessThan0~30\,
	cout0 => \pwm_compare_blocks:1:pwm_x|LessThan0~32_cout0\,
	cout1 => \pwm_compare_blocks:1:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X14_Y11_N2
\pwm_compare_blocks:1:pwm_x|LessThan0~27\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|LessThan0~27_cout0\ = CARRY((\pwm_compare_blocks:1:pwm_x|compare_value\(2) & ((!\pwm_compare_blocks:1:pwm_x|LessThan0~32_cout0\) # (!\pwm_counter|counter_value\(2)))) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(2) & 
-- (!\pwm_counter|counter_value\(2) & !\pwm_compare_blocks:1:pwm_x|LessThan0~32_cout0\)))
-- \pwm_compare_blocks:1:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_compare_blocks:1:pwm_x|compare_value\(2) & ((!\pwm_compare_blocks:1:pwm_x|LessThan0~32COUT1_50\) # (!\pwm_counter|counter_value\(2)))) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(2) & 
-- (!\pwm_counter|counter_value\(2) & !\pwm_compare_blocks:1:pwm_x|LessThan0~32COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:1:pwm_x|compare_value\(2),
	datab => \pwm_counter|counter_value\(2),
	cin0 => \pwm_compare_blocks:1:pwm_x|LessThan0~32_cout0\,
	cin1 => \pwm_compare_blocks:1:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|LessThan0~25\,
	cout0 => \pwm_compare_blocks:1:pwm_x|LessThan0~27_cout0\,
	cout1 => \pwm_compare_blocks:1:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X14_Y11_N3
\pwm_compare_blocks:1:pwm_x|LessThan0~22\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|LessThan0~22_cout0\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:1:pwm_x|LessThan0~27_cout0\) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:1:pwm_x|compare_value\(3) & !\pwm_compare_blocks:1:pwm_x|LessThan0~27_cout0\)))
-- \pwm_compare_blocks:1:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:1:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:1:pwm_x|compare_value\(3) & !\pwm_compare_blocks:1:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:1:pwm_x|compare_value\(3),
	cin0 => \pwm_compare_blocks:1:pwm_x|LessThan0~27_cout0\,
	cin1 => \pwm_compare_blocks:1:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|LessThan0~20\,
	cout0 => \pwm_compare_blocks:1:pwm_x|LessThan0~22_cout0\,
	cout1 => \pwm_compare_blocks:1:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X14_Y11_N4
\pwm_compare_blocks:1:pwm_x|LessThan0~17\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|LessThan0~17_cout\ = CARRY((\pwm_compare_blocks:1:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:1:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:1:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:1:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	cin0 => \pwm_compare_blocks:1:pwm_x|LessThan0~22_cout0\,
	cin1 => \pwm_compare_blocks:1:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|LessThan0~15\,
	cout => \pwm_compare_blocks:1:pwm_x|LessThan0~17_cout\);

-- Location: LC_X13_Y11_N2
\pwm_compare_blocks:1:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(6) = DFFEAS((((\data_interface|input_reg\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(6));

-- Location: LC_X13_Y11_N6
\pwm_compare_blocks:1:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(5) = DFFEAS((((\data_interface|input_reg\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(5));

-- Location: LC_X14_Y11_N5
\pwm_compare_blocks:1:pwm_x|LessThan0~12\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|LessThan0~12_cout0\ = CARRY((\pwm_counter|counter_value\(5) & ((!\pwm_compare_blocks:1:pwm_x|LessThan0~17_cout\) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(5)))) # (!\pwm_counter|counter_value\(5) & 
-- (!\pwm_compare_blocks:1:pwm_x|compare_value\(5) & !\pwm_compare_blocks:1:pwm_x|LessThan0~17_cout\)))
-- \pwm_compare_blocks:1:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_counter|counter_value\(5) & ((!\pwm_compare_blocks:1:pwm_x|LessThan0~17_cout\) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(5)))) # (!\pwm_counter|counter_value\(5) & 
-- (!\pwm_compare_blocks:1:pwm_x|compare_value\(5) & !\pwm_compare_blocks:1:pwm_x|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(5),
	datab => \pwm_compare_blocks:1:pwm_x|compare_value\(5),
	cin => \pwm_compare_blocks:1:pwm_x|LessThan0~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|LessThan0~10\,
	cout0 => \pwm_compare_blocks:1:pwm_x|LessThan0~12_cout0\,
	cout1 => \pwm_compare_blocks:1:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X14_Y11_N6
\pwm_compare_blocks:1:pwm_x|LessThan0~7\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|LessThan0~7_cout0\ = CARRY((\pwm_counter|counter_value\(6) & (\pwm_compare_blocks:1:pwm_x|compare_value\(6) & !\pwm_compare_blocks:1:pwm_x|LessThan0~12_cout0\)) # (!\pwm_counter|counter_value\(6) & 
-- ((\pwm_compare_blocks:1:pwm_x|compare_value\(6)) # (!\pwm_compare_blocks:1:pwm_x|LessThan0~12_cout0\))))
-- \pwm_compare_blocks:1:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_counter|counter_value\(6) & (\pwm_compare_blocks:1:pwm_x|compare_value\(6) & !\pwm_compare_blocks:1:pwm_x|LessThan0~12COUT1_56\)) # (!\pwm_counter|counter_value\(6) & 
-- ((\pwm_compare_blocks:1:pwm_x|compare_value\(6)) # (!\pwm_compare_blocks:1:pwm_x|LessThan0~12COUT1_56\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(6),
	datab => \pwm_compare_blocks:1:pwm_x|compare_value\(6),
	cin => \pwm_compare_blocks:1:pwm_x|LessThan0~17_cout\,
	cin0 => \pwm_compare_blocks:1:pwm_x|LessThan0~12_cout0\,
	cin1 => \pwm_compare_blocks:1:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|LessThan0~5\,
	cout0 => \pwm_compare_blocks:1:pwm_x|LessThan0~7_cout0\,
	cout1 => \pwm_compare_blocks:1:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X14_Y11_N7
\pwm_compare_blocks:1:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|LessThan0~0_combout\ = (\pwm_counter|counter_value\(7) & ((((!\pwm_compare_blocks:1:pwm_x|LessThan0~17_cout\ & \pwm_compare_blocks:1:pwm_x|LessThan0~7_cout0\) # (\pwm_compare_blocks:1:pwm_x|LessThan0~17_cout\ & 
-- \pwm_compare_blocks:1:pwm_x|LessThan0~7COUT1_58\) & \pwm_compare_blocks:1:pwm_x|compare_value\(7))))) # (!\pwm_counter|counter_value\(7) & ((((!\pwm_compare_blocks:1:pwm_x|LessThan0~17_cout\ & \pwm_compare_blocks:1:pwm_x|LessThan0~7_cout0\) # 
-- (\pwm_compare_blocks:1:pwm_x|LessThan0~17_cout\ & \pwm_compare_blocks:1:pwm_x|LessThan0~7COUT1_58\)) # (\pwm_compare_blocks:1:pwm_x|compare_value\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(7),
	datad => \pwm_compare_blocks:1:pwm_x|compare_value\(7),
	cin => \pwm_compare_blocks:1:pwm_x|LessThan0~17_cout\,
	cin0 => \pwm_compare_blocks:1:pwm_x|LessThan0~7_cout0\,
	cin1 => \pwm_compare_blocks:1:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|LessThan0~0_combout\);

-- Location: LC_X13_Y11_N9
\pwm_compare_blocks:1:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|pwm_pin4~0\ = (((!\pwm_compare_blocks:3:pwm_x|reset_internal~regout\ & \pwm_compare_blocks:1:pwm_x|LessThan0~0_combout\)) # (!B2_pwm_out_sel))
-- \pwm_compare_blocks:1:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:1:pwm_x|pwm_pin4~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~1\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f0f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:1:pwm_x|LessThan0~0_combout\,
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:1:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X15_Y10_N9
\pwm_compare_blocks:2:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(7) = DFFEAS((((\data_interface|input_reg\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(7));

-- Location: LC_X15_Y10_N0
\pwm_compare_blocks:2:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, \data_interface|input_reg\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(4));

-- Location: LC_X15_Y10_N6
\pwm_compare_blocks:2:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(3) = DFFEAS((((\data_interface|input_reg\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(3));

-- Location: LC_X15_Y10_N8
\pwm_compare_blocks:2:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, \data_interface|input_reg\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(2));

-- Location: LC_X15_Y10_N4
\pwm_compare_blocks:2:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, \data_interface|input_reg\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(1));

-- Location: LC_X15_Y10_N7
\pwm_compare_blocks:2:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(0) = DFFEAS((((\data_interface|input_reg\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(0),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(0));

-- Location: LC_X13_Y10_N0
\pwm_compare_blocks:2:pwm_x|LessThan0~37\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|LessThan0~37_cout0\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:2:pwm_x|compare_value\(0))))
-- \pwm_compare_blocks:2:pwm_x|LessThan0~37COUT1_48\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:2:pwm_x|compare_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(0),
	datab => \pwm_compare_blocks:2:pwm_x|compare_value\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|LessThan0~35\,
	cout0 => \pwm_compare_blocks:2:pwm_x|LessThan0~37_cout0\,
	cout1 => \pwm_compare_blocks:2:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X13_Y10_N1
\pwm_compare_blocks:2:pwm_x|LessThan0~32\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|LessThan0~32_cout0\ = CARRY((\pwm_compare_blocks:2:pwm_x|compare_value\(1) & (\pwm_counter|counter_value\(1) & !\pwm_compare_blocks:2:pwm_x|LessThan0~37_cout0\)) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(1) & 
-- ((\pwm_counter|counter_value\(1)) # (!\pwm_compare_blocks:2:pwm_x|LessThan0~37_cout0\))))
-- \pwm_compare_blocks:2:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_compare_blocks:2:pwm_x|compare_value\(1) & (\pwm_counter|counter_value\(1) & !\pwm_compare_blocks:2:pwm_x|LessThan0~37COUT1_48\)) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(1) & 
-- ((\pwm_counter|counter_value\(1)) # (!\pwm_compare_blocks:2:pwm_x|LessThan0~37COUT1_48\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:2:pwm_x|compare_value\(1),
	datab => \pwm_counter|counter_value\(1),
	cin0 => \pwm_compare_blocks:2:pwm_x|LessThan0~37_cout0\,
	cin1 => \pwm_compare_blocks:2:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|LessThan0~30\,
	cout0 => \pwm_compare_blocks:2:pwm_x|LessThan0~32_cout0\,
	cout1 => \pwm_compare_blocks:2:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X13_Y10_N2
\pwm_compare_blocks:2:pwm_x|LessThan0~27\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|LessThan0~27_cout0\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:2:pwm_x|compare_value\(2) & !\pwm_compare_blocks:2:pwm_x|LessThan0~32_cout0\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:2:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:2:pwm_x|LessThan0~32_cout0\))))
-- \pwm_compare_blocks:2:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:2:pwm_x|compare_value\(2) & !\pwm_compare_blocks:2:pwm_x|LessThan0~32COUT1_50\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:2:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:2:pwm_x|LessThan0~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(2),
	datab => \pwm_compare_blocks:2:pwm_x|compare_value\(2),
	cin0 => \pwm_compare_blocks:2:pwm_x|LessThan0~32_cout0\,
	cin1 => \pwm_compare_blocks:2:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|LessThan0~25\,
	cout0 => \pwm_compare_blocks:2:pwm_x|LessThan0~27_cout0\,
	cout1 => \pwm_compare_blocks:2:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X13_Y10_N3
\pwm_compare_blocks:2:pwm_x|LessThan0~22\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|LessThan0~22_cout0\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:2:pwm_x|LessThan0~27_cout0\) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:2:pwm_x|compare_value\(3) & !\pwm_compare_blocks:2:pwm_x|LessThan0~27_cout0\)))
-- \pwm_compare_blocks:2:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:2:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:2:pwm_x|compare_value\(3) & !\pwm_compare_blocks:2:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:2:pwm_x|compare_value\(3),
	cin0 => \pwm_compare_blocks:2:pwm_x|LessThan0~27_cout0\,
	cin1 => \pwm_compare_blocks:2:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|LessThan0~20\,
	cout0 => \pwm_compare_blocks:2:pwm_x|LessThan0~22_cout0\,
	cout1 => \pwm_compare_blocks:2:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X13_Y10_N4
\pwm_compare_blocks:2:pwm_x|LessThan0~17\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|LessThan0~17_cout\ = CARRY((\pwm_compare_blocks:2:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:2:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:2:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:2:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	cin0 => \pwm_compare_blocks:2:pwm_x|LessThan0~22_cout0\,
	cin1 => \pwm_compare_blocks:2:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|LessThan0~15\,
	cout => \pwm_compare_blocks:2:pwm_x|LessThan0~17_cout\);

-- Location: LC_X13_Y10_N8
\pwm_compare_blocks:2:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(6) = DFFEAS((((\data_interface|input_reg\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(6));

-- Location: LC_X15_Y10_N3
\pwm_compare_blocks:2:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(5) = DFFEAS((((\data_interface|input_reg\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(5));

-- Location: LC_X13_Y10_N5
\pwm_compare_blocks:2:pwm_x|LessThan0~12\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|LessThan0~12_cout0\ = CARRY((\pwm_counter|counter_value\(5) & ((!\pwm_compare_blocks:2:pwm_x|LessThan0~17_cout\) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(5)))) # (!\pwm_counter|counter_value\(5) & 
-- (!\pwm_compare_blocks:2:pwm_x|compare_value\(5) & !\pwm_compare_blocks:2:pwm_x|LessThan0~17_cout\)))
-- \pwm_compare_blocks:2:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_counter|counter_value\(5) & ((!\pwm_compare_blocks:2:pwm_x|LessThan0~17_cout\) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(5)))) # (!\pwm_counter|counter_value\(5) & 
-- (!\pwm_compare_blocks:2:pwm_x|compare_value\(5) & !\pwm_compare_blocks:2:pwm_x|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(5),
	datab => \pwm_compare_blocks:2:pwm_x|compare_value\(5),
	cin => \pwm_compare_blocks:2:pwm_x|LessThan0~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|LessThan0~10\,
	cout0 => \pwm_compare_blocks:2:pwm_x|LessThan0~12_cout0\,
	cout1 => \pwm_compare_blocks:2:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X13_Y10_N6
\pwm_compare_blocks:2:pwm_x|LessThan0~7\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|LessThan0~7_cout0\ = CARRY((\pwm_compare_blocks:2:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:2:pwm_x|LessThan0~12_cout0\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:2:pwm_x|LessThan0~12_cout0\)))
-- \pwm_compare_blocks:2:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_compare_blocks:2:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:2:pwm_x|LessThan0~12COUT1_56\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:2:pwm_x|LessThan0~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:2:pwm_x|compare_value\(6),
	datab => \pwm_counter|counter_value\(6),
	cin => \pwm_compare_blocks:2:pwm_x|LessThan0~17_cout\,
	cin0 => \pwm_compare_blocks:2:pwm_x|LessThan0~12_cout0\,
	cin1 => \pwm_compare_blocks:2:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|LessThan0~5\,
	cout0 => \pwm_compare_blocks:2:pwm_x|LessThan0~7_cout0\,
	cout1 => \pwm_compare_blocks:2:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X13_Y10_N7
\pwm_compare_blocks:2:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|LessThan0~0_combout\ = (\pwm_compare_blocks:2:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:2:pwm_x|LessThan0~17_cout\ & \pwm_compare_blocks:2:pwm_x|LessThan0~7_cout0\) # (\pwm_compare_blocks:2:pwm_x|LessThan0~17_cout\ & 
-- \pwm_compare_blocks:2:pwm_x|LessThan0~7COUT1_58\)) # (!\pwm_counter|counter_value\(7))))) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:2:pwm_x|LessThan0~17_cout\ & \pwm_compare_blocks:2:pwm_x|LessThan0~7_cout0\) # 
-- (\pwm_compare_blocks:2:pwm_x|LessThan0~17_cout\ & \pwm_compare_blocks:2:pwm_x|LessThan0~7COUT1_58\) & !\pwm_counter|counter_value\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a0fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:2:pwm_x|compare_value\(7),
	datad => \pwm_counter|counter_value\(7),
	cin => \pwm_compare_blocks:2:pwm_x|LessThan0~17_cout\,
	cin0 => \pwm_compare_blocks:2:pwm_x|LessThan0~7_cout0\,
	cin1 => \pwm_compare_blocks:2:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|LessThan0~0_combout\);

-- Location: LC_X15_Y10_N2
\pwm_compare_blocks:2:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|pwm_pin4~0\ = (((\pwm_compare_blocks:2:pwm_x|LessThan0~0_combout\ & !\pwm_compare_blocks:3:pwm_x|reset_internal~regout\)) # (!B3_pwm_out_sel))
-- \pwm_compare_blocks:2:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:2:pwm_x|pwm_pin4~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fcf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_compare_blocks:2:pwm_x|LessThan0~0_combout\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:2:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X14_Y10_N3
\pwm_compare_blocks:3:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(7) = DFFEAS((((\data_interface|input_reg\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(7));

-- Location: LC_X14_Y10_N9
\pwm_compare_blocks:3:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, \data_interface|input_reg\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(4));

-- Location: LC_X14_Y10_N7
\pwm_compare_blocks:3:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, \data_interface|input_reg\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(3));

-- Location: LC_X14_Y10_N0
\pwm_compare_blocks:3:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, \data_interface|input_reg\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(2));

-- Location: LC_X14_Y10_N6
\pwm_compare_blocks:3:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(1) = DFFEAS((((\data_interface|input_reg\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(1));

-- Location: LC_X14_Y10_N1
\pwm_compare_blocks:3:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(0) = DFFEAS((((\data_interface|input_reg\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \data_interface|input_reg\(0),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(0));

-- Location: LC_X14_Y9_N0
\pwm_compare_blocks:3:pwm_x|LessThan0~37\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|LessThan0~37_cout0\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:3:pwm_x|compare_value\(0))))
-- \pwm_compare_blocks:3:pwm_x|LessThan0~37COUT1_48\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:3:pwm_x|compare_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(0),
	datab => \pwm_compare_blocks:3:pwm_x|compare_value\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|LessThan0~35\,
	cout0 => \pwm_compare_blocks:3:pwm_x|LessThan0~37_cout0\,
	cout1 => \pwm_compare_blocks:3:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X14_Y9_N1
\pwm_compare_blocks:3:pwm_x|LessThan0~32\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|LessThan0~32_cout0\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~37_cout0\) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:3:pwm_x|compare_value\(1) & !\pwm_compare_blocks:3:pwm_x|LessThan0~37_cout0\)))
-- \pwm_compare_blocks:3:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~37COUT1_48\) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:3:pwm_x|compare_value\(1) & !\pwm_compare_blocks:3:pwm_x|LessThan0~37COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(1),
	datab => \pwm_compare_blocks:3:pwm_x|compare_value\(1),
	cin0 => \pwm_compare_blocks:3:pwm_x|LessThan0~37_cout0\,
	cin1 => \pwm_compare_blocks:3:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|LessThan0~30\,
	cout0 => \pwm_compare_blocks:3:pwm_x|LessThan0~32_cout0\,
	cout1 => \pwm_compare_blocks:3:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X14_Y9_N2
\pwm_compare_blocks:3:pwm_x|LessThan0~27\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|LessThan0~27_cout0\ = CARRY((\pwm_compare_blocks:3:pwm_x|compare_value\(2) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~32_cout0\) # (!\pwm_counter|counter_value\(2)))) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(2) & 
-- (!\pwm_counter|counter_value\(2) & !\pwm_compare_blocks:3:pwm_x|LessThan0~32_cout0\)))
-- \pwm_compare_blocks:3:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_compare_blocks:3:pwm_x|compare_value\(2) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~32COUT1_50\) # (!\pwm_counter|counter_value\(2)))) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(2) & 
-- (!\pwm_counter|counter_value\(2) & !\pwm_compare_blocks:3:pwm_x|LessThan0~32COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:3:pwm_x|compare_value\(2),
	datab => \pwm_counter|counter_value\(2),
	cin0 => \pwm_compare_blocks:3:pwm_x|LessThan0~32_cout0\,
	cin1 => \pwm_compare_blocks:3:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|LessThan0~25\,
	cout0 => \pwm_compare_blocks:3:pwm_x|LessThan0~27_cout0\,
	cout1 => \pwm_compare_blocks:3:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X14_Y9_N3
\pwm_compare_blocks:3:pwm_x|LessThan0~22\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|LessThan0~22_cout0\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~27_cout0\) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:3:pwm_x|compare_value\(3) & !\pwm_compare_blocks:3:pwm_x|LessThan0~27_cout0\)))
-- \pwm_compare_blocks:3:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:3:pwm_x|compare_value\(3) & !\pwm_compare_blocks:3:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:3:pwm_x|compare_value\(3),
	cin0 => \pwm_compare_blocks:3:pwm_x|LessThan0~27_cout0\,
	cin1 => \pwm_compare_blocks:3:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|LessThan0~20\,
	cout0 => \pwm_compare_blocks:3:pwm_x|LessThan0~22_cout0\,
	cout1 => \pwm_compare_blocks:3:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X14_Y9_N4
\pwm_compare_blocks:3:pwm_x|LessThan0~17\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|LessThan0~17_cout\ = CARRY((\pwm_compare_blocks:3:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:3:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:3:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	cin0 => \pwm_compare_blocks:3:pwm_x|LessThan0~22_cout0\,
	cin1 => \pwm_compare_blocks:3:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|LessThan0~15\,
	cout => \pwm_compare_blocks:3:pwm_x|LessThan0~17_cout\);

-- Location: LC_X14_Y10_N2
\pwm_compare_blocks:3:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, \data_interface|input_reg\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(6));

-- Location: LC_X14_Y10_N5
\pwm_compare_blocks:3:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, \data_interface|input_reg\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(5));

-- Location: LC_X14_Y9_N5
\pwm_compare_blocks:3:pwm_x|LessThan0~12\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|LessThan0~12_cout0\ = CARRY((\pwm_compare_blocks:3:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:3:pwm_x|LessThan0~17_cout\)) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:3:pwm_x|LessThan0~17_cout\))))
-- \pwm_compare_blocks:3:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_compare_blocks:3:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:3:pwm_x|LessThan0~17_cout\)) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:3:pwm_x|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:3:pwm_x|compare_value\(5),
	datab => \pwm_counter|counter_value\(5),
	cin => \pwm_compare_blocks:3:pwm_x|LessThan0~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|LessThan0~10\,
	cout0 => \pwm_compare_blocks:3:pwm_x|LessThan0~12_cout0\,
	cout1 => \pwm_compare_blocks:3:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X14_Y9_N6
\pwm_compare_blocks:3:pwm_x|LessThan0~7\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|LessThan0~7_cout0\ = CARRY((\pwm_compare_blocks:3:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~12_cout0\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:3:pwm_x|LessThan0~12_cout0\)))
-- \pwm_compare_blocks:3:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_compare_blocks:3:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~12COUT1_56\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:3:pwm_x|LessThan0~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:3:pwm_x|compare_value\(6),
	datab => \pwm_counter|counter_value\(6),
	cin => \pwm_compare_blocks:3:pwm_x|LessThan0~17_cout\,
	cin0 => \pwm_compare_blocks:3:pwm_x|LessThan0~12_cout0\,
	cin1 => \pwm_compare_blocks:3:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|LessThan0~5\,
	cout0 => \pwm_compare_blocks:3:pwm_x|LessThan0~7_cout0\,
	cout1 => \pwm_compare_blocks:3:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X14_Y9_N7
\pwm_compare_blocks:3:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|LessThan0~0_combout\ = ((\pwm_counter|counter_value\(7) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~17_cout\ & \pwm_compare_blocks:3:pwm_x|LessThan0~7_cout0\) # (\pwm_compare_blocks:3:pwm_x|LessThan0~17_cout\ & 
-- \pwm_compare_blocks:3:pwm_x|LessThan0~7COUT1_58\) & \pwm_compare_blocks:3:pwm_x|compare_value\(7))) # (!\pwm_counter|counter_value\(7) & (((!\pwm_compare_blocks:3:pwm_x|LessThan0~17_cout\ & \pwm_compare_blocks:3:pwm_x|LessThan0~7_cout0\) # 
-- (\pwm_compare_blocks:3:pwm_x|LessThan0~17_cout\ & \pwm_compare_blocks:3:pwm_x|LessThan0~7COUT1_58\)) # (\pwm_compare_blocks:3:pwm_x|compare_value\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_counter|counter_value\(7),
	datad => \pwm_compare_blocks:3:pwm_x|compare_value\(7),
	cin => \pwm_compare_blocks:3:pwm_x|LessThan0~17_cout\,
	cin0 => \pwm_compare_blocks:3:pwm_x|LessThan0~7_cout0\,
	cin1 => \pwm_compare_blocks:3:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|LessThan0~0_combout\);

-- Location: LC_X14_Y9_N9
\pwm_compare_blocks:3:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|pwm_pin4~0\ = (((\pwm_compare_blocks:3:pwm_x|LessThan0~0_combout\ & !\pwm_compare_blocks:3:pwm_x|reset_internal~regout\)) # (!B4_pwm_out_sel))
-- \pwm_compare_blocks:3:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:3:pwm_x|pwm_pin4~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:3:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fcf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_compare_blocks:3:pwm_x|LessThan0~0_combout\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	aclr => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:3:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X13_Y11_N3
\pwm_compare_blocks:1:pwm_x|pwm_pin3~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|pwm_pin3~0_combout\ = (\pwm_compare_blocks:1:pwm_x|LessThan0~0_combout\ & (((!\pwm_compare_blocks:3:pwm_x|reset_internal~regout\ & !\pwm_compare_blocks:1:pwm_x|pwm_out_sel~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:1:pwm_x|LessThan0~0_combout\,
	datac => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	datad => \pwm_compare_blocks:1:pwm_x|pwm_out_sel~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|pwm_pin3~0_combout\);

-- Location: LC_X15_Y10_N5
\pwm_compare_blocks:2:pwm_x|pwm_pin3~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|pwm_pin3~0_combout\ = ((!\pwm_compare_blocks:3:pwm_x|reset_internal~regout\ & (\pwm_compare_blocks:2:pwm_x|LessThan0~0_combout\ & !\pwm_compare_blocks:2:pwm_x|pwm_out_sel~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	datac => \pwm_compare_blocks:2:pwm_x|LessThan0~0_combout\,
	datad => \pwm_compare_blocks:2:pwm_x|pwm_out_sel~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|pwm_pin3~0_combout\);

-- Location: LC_X14_Y9_N8
\pwm_compare_blocks:3:pwm_x|pwm_pin3~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|pwm_pin3~0_combout\ = ((!\pwm_compare_blocks:3:pwm_x|pwm_out_sel~regout\ & (\pwm_compare_blocks:3:pwm_x|LessThan0~0_combout\ & !\pwm_compare_blocks:3:pwm_x|reset_internal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_compare_blocks:3:pwm_x|pwm_out_sel~regout\,
	datac => \pwm_compare_blocks:3:pwm_x|LessThan0~0_combout\,
	datad => \pwm_compare_blocks:3:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|pwm_pin3~0_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_rdy~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_interface|data_rdy_buff\(1),
	oe => VCC,
	padio => ww_data_rdy);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:0:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(0));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:1:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(1));

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:2:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(2));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:3:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(3));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:0:pwm_x|pwm_pin3~0\,
	oe => VCC,
	padio => ww_pwm_pin3_block(0));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:1:pwm_x|pwm_pin3~0_combout\,
	oe => VCC,
	padio => ww_pwm_pin3_block(1));

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:2:pwm_x|pwm_pin3~0_combout\,
	oe => VCC,
	padio => ww_pwm_pin3_block(2));

-- Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:3:pwm_x|pwm_pin3~0_combout\,
	oe => VCC,
	padio => ww_pwm_pin3_block(3));
END structure;


