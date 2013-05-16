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

-- DATE "10/10/2012 13:16:56"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
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
	reset_intf : IN std_logic;
	data_in : IN std_logic;
	data_clk : IN std_logic;
	data_rdy : OUT std_logic;
	channel_sel : IN IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	pwm_pin4_block : OUT std_logic_vector(11 DOWNTO 0);
	pwm_pin3_block : OUT std_logic_vector(11 DOWNTO 0)
	);
END pwm_gen;

-- Design Ports Information
-- clk	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_clk	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- channel_sel[3]	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- channel_sel[2]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- channel_sel[1]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- channel_sel[0]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_intf	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_rdy	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[0]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[1]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[2]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[3]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[4]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[6]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[7]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[8]	=>  Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[9]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[10]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin4_block[11]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[0]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[1]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[2]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[3]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[4]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[5]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[6]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[7]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[8]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[9]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[10]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pwm_pin3_block[11]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


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
SIGNAL ww_reset_intf : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_data_clk : std_logic;
SIGNAL ww_data_rdy : std_logic;
SIGNAL ww_channel_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pwm_pin4_block : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_pwm_pin3_block : std_logic_vector(11 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \pwm_counter|counter_value[0]~3\ : std_logic;
SIGNAL \pwm_counter|counter_value[0]~3COUT1_24\ : std_logic;
SIGNAL \pwm_counter|counter_value[1]~5\ : std_logic;
SIGNAL \pwm_counter|counter_value[1]~5COUT1_26\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \signal_demux|Equal0~8_combout\ : std_logic;
SIGNAL \data_interface|gather_data:bits_written[2]~regout\ : std_logic;
SIGNAL \data_interface|gather_data:bits_written[3]~regout\ : std_logic;
SIGNAL \data_interface|gather_data:bits_written[0]~regout\ : std_logic;
SIGNAL \data_interface|gather_data:bits_written[1]~regout\ : std_logic;
SIGNAL \data_clk~combout\ : std_logic;
SIGNAL \data_interface|LessThan0~1\ : std_logic;
SIGNAL \data_interface|data_rdy_int~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \signal_demux|Equal0~7_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \signal_demux|Equal0~9_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \signal_demux|Equal0~6_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \interface_reset~2_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \signal_demux|Equal0~1_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \signal_demux|Equal0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \reset_intf~combout\ : std_logic;
SIGNAL \interface_reset~0_combout\ : std_logic;
SIGNAL \signal_demux|Equal0~11_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \data_interface|LessThan0~0_combout\ : std_logic;
SIGNAL \signal_demux|Equal0~10_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \interface_reset~3\ : std_logic;
SIGNAL \signal_demux|Equal0~4_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \signal_demux|Equal0~5_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \signal_demux|Equal0~3_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \signal_demux|Equal0~2_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|update_data:data_stored~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|data_updated_int~regout\ : std_logic;
SIGNAL \interface_reset~1_combout\ : std_logic;
SIGNAL \data_interface|reset_int~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|update_data~1\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~37\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~32\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~27\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_counter|counter_value[2]~7\ : std_logic;
SIGNAL \pwm_counter|counter_value[2]~7COUT1_28\ : std_logic;
SIGNAL \pwm_counter|counter_value[3]~9\ : std_logic;
SIGNAL \pwm_counter|counter_value[3]~9COUT1_30\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~22\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_counter|counter_value[4]~11\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~17\ : std_logic;
SIGNAL \pwm_counter|counter_value[5]~13\ : std_logic;
SIGNAL \pwm_counter|counter_value[5]~13COUT1_32\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~12\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_counter|counter_value[6]~15\ : std_logic;
SIGNAL \pwm_counter|counter_value[6]~15COUT1_34\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~7\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|LessThan0~0\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|reset_internal~regout\ : std_logic;
SIGNAL \pwm_counter|Equal0~1_combout\ : std_logic;
SIGNAL \pwm_counter|Equal0~0\ : std_logic;
SIGNAL \pwm_counter|ovf_out~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~37\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~32\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~27\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~22\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~17\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~12\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~7\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~37\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~32\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~27\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~22\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~17\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~12\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~7\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~37\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~32\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~27\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~22\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~17\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~12\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~7\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|LessThan0~37\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|LessThan0~32\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|LessThan0~27\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|LessThan0~22\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|LessThan0~17\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|LessThan0~12\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|LessThan0~7\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|LessThan0~37\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|LessThan0~32\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|LessThan0~27\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|LessThan0~22\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|LessThan0~17\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|LessThan0~12\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|LessThan0~7\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|LessThan0~37\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|LessThan0~32\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|LessThan0~27\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|LessThan0~22\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|LessThan0~17\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|LessThan0~12\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|LessThan0~7\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|LessThan0~37\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|LessThan0~32\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|LessThan0~27\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|LessThan0~22\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|LessThan0~17\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|LessThan0~12\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|LessThan0~7\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|LessThan0~37\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|LessThan0~32\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|LessThan0~27\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|LessThan0~22\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|LessThan0~17\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|LessThan0~12\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|LessThan0~7\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|LessThan0~37\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|LessThan0~32\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|LessThan0~27\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|LessThan0~22\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|LessThan0~17\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|LessThan0~12\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|LessThan0~7\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|LessThan0~37\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|LessThan0~32\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|LessThan0~27\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|LessThan0~22\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|LessThan0~17\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|LessThan0~12\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|LessThan0~7\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|update_data~0\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|pwm_out_sel~regout\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|LessThan0~37\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|LessThan0~37COUT1_48\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|LessThan0~32\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|LessThan0~32COUT1_50\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|LessThan0~27\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|LessThan0~27COUT1_52\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|LessThan0~22\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|LessThan0~22COUT1_54\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|LessThan0~17\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|LessThan0~12\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|LessThan0~12COUT1_56\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|LessThan0~7\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|LessThan0~7COUT1_58\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|pwm_pin4~0\ : std_logic;
SIGNAL \pwm_compare_blocks:0:pwm_x|pwm_pin3~0\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|pwm_pin3~0\ : std_logic;
SIGNAL \pwm_compare_blocks:2:pwm_x|pwm_pin3~0\ : std_logic;
SIGNAL \pwm_compare_blocks:3:pwm_x|pwm_pin3~0\ : std_logic;
SIGNAL \pwm_compare_blocks:4:pwm_x|pwm_pin3~0\ : std_logic;
SIGNAL \pwm_compare_blocks:5:pwm_x|pwm_pin3~0\ : std_logic;
SIGNAL \pwm_compare_blocks:6:pwm_x|pwm_pin3~0\ : std_logic;
SIGNAL \pwm_compare_blocks:7:pwm_x|pwm_pin3~0\ : std_logic;
SIGNAL \pwm_compare_blocks:8:pwm_x|pwm_pin3~0\ : std_logic;
SIGNAL \pwm_compare_blocks:9:pwm_x|pwm_pin3~0\ : std_logic;
SIGNAL \pwm_compare_blocks:10:pwm_x|pwm_pin3~0\ : std_logic;
SIGNAL \pwm_compare_blocks:11:pwm_x|pwm_pin3~0\ : std_logic;
SIGNAL \pwm_compare_blocks:1:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_compare_blocks:2:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_compare_blocks:3:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_compare_blocks:4:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_compare_blocks:5:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_compare_blocks:6:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_compare_blocks:7:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_compare_blocks:8:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_compare_blocks:9:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_compare_blocks:10:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_compare_blocks:11:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \channel_sel~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_counter|counter_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_interface|input_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \data_interface|data_rdy_buff\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm_compare_blocks:0:pwm_x|compare_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_data_clk~combout\ : std_logic;
SIGNAL \ALT_INV_clk~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_reset_intf <= reset_intf;
ww_data_in <= data_in;
ww_data_clk <= data_clk;
data_rdy <= ww_data_rdy;
ww_channel_sel <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(channel_sel);
pwm_pin4_block <= ww_pwm_pin4_block;
pwm_pin3_block <= ww_pwm_pin3_block;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_data_clk~combout\ <= NOT \data_clk~combout\;
\ALT_INV_clk~combout\ <= NOT \clk~combout\;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X4_Y4_N0
\pwm_counter|counter_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(0) = DFFEAS(((!\pwm_counter|counter_value\(0))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )
-- \pwm_counter|counter_value[0]~3\ = CARRY(((\pwm_counter|counter_value\(0))))
-- \pwm_counter|counter_value[0]~3COUT1_24\ = CARRY(((\pwm_counter|counter_value\(0))))

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
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(0),
	cout0 => \pwm_counter|counter_value[0]~3\,
	cout1 => \pwm_counter|counter_value[0]~3COUT1_24\);

-- Location: LC_X4_Y4_N1
\pwm_counter|counter_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(1) = DFFEAS((\pwm_counter|counter_value\(1) $ ((\pwm_counter|counter_value[0]~3\))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )
-- \pwm_counter|counter_value[1]~5\ = CARRY(((!\pwm_counter|counter_value[0]~3\) # (!\pwm_counter|counter_value\(1))))
-- \pwm_counter|counter_value[1]~5COUT1_26\ = CARRY(((!\pwm_counter|counter_value[0]~3COUT1_24\) # (!\pwm_counter|counter_value\(1))))

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
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	cin0 => \pwm_counter|counter_value[0]~3\,
	cin1 => \pwm_counter|counter_value[0]~3COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(1),
	cout0 => \pwm_counter|counter_value[1]~5\,
	cout1 => \pwm_counter|counter_value[1]~5COUT1_26\);

-- Location: LC_X4_Y4_N2
\pwm_counter|counter_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(2) = DFFEAS((\pwm_counter|counter_value\(2) $ ((!\pwm_counter|counter_value[1]~5\))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )
-- \pwm_counter|counter_value[2]~7\ = CARRY(((\pwm_counter|counter_value\(2) & !\pwm_counter|counter_value[1]~5\)))
-- \pwm_counter|counter_value[2]~7COUT1_28\ = CARRY(((\pwm_counter|counter_value\(2) & !\pwm_counter|counter_value[1]~5COUT1_26\)))

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
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	cin0 => \pwm_counter|counter_value[1]~5\,
	cin1 => \pwm_counter|counter_value[1]~5COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(2),
	cout0 => \pwm_counter|counter_value[2]~7\,
	cout1 => \pwm_counter|counter_value[2]~7COUT1_28\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in,
	combout => \data_in~combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\channel_sel[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_channel_sel(0),
	combout => \channel_sel~combout\(0));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\channel_sel[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_channel_sel(2),
	combout => \channel_sel~combout\(2));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\channel_sel[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_channel_sel(1),
	combout => \channel_sel~combout\(1));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\channel_sel[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_channel_sel(3),
	combout => \channel_sel~combout\(3));

-- Location: LC_X4_Y2_N2
\signal_demux|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \signal_demux|Equal0~8_combout\ = (!\channel_sel~combout\(0) & (!\channel_sel~combout\(2) & (!\channel_sel~combout\(1) & \channel_sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \channel_sel~combout\(0),
	datab => \channel_sel~combout\(2),
	datac => \channel_sel~combout\(1),
	datad => \channel_sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \signal_demux|Equal0~8_combout\);

-- Location: LC_X7_Y3_N6
\data_interface|gather_data:bits_written[2]\ : maxii_lcell
-- Equation(s):
-- \data_interface|gather_data:bits_written[2]~regout\ = DFFEAS(\data_interface|gather_data:bits_written[2]~regout\ $ (((\data_interface|gather_data:bits_written[1]~regout\ & (\data_interface|gather_data:bits_written[0]~regout\ & 
-- !\data_interface|gather_data:bits_written[3]~regout\)))), GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f708",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	dataa => \data_interface|gather_data:bits_written[1]~regout\,
	datab => \data_interface|gather_data:bits_written[0]~regout\,
	datac => \data_interface|gather_data:bits_written[3]~regout\,
	datad => \data_interface|gather_data:bits_written[2]~regout\,
	aclr => \data_interface|reset_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|gather_data:bits_written[2]~regout\);

-- Location: LC_X7_Y3_N7
\data_interface|gather_data:bits_written[3]\ : maxii_lcell
-- Equation(s):
-- \data_interface|gather_data:bits_written[3]~regout\ = DFFEAS((\data_interface|gather_data:bits_written[3]~regout\) # ((\data_interface|gather_data:bits_written[1]~regout\ & (\data_interface|gather_data:bits_written[0]~regout\ & 
-- \data_interface|gather_data:bits_written[2]~regout\))), GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , , , , , )

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
	dataa => \data_interface|gather_data:bits_written[1]~regout\,
	datab => \data_interface|gather_data:bits_written[0]~regout\,
	datac => \data_interface|gather_data:bits_written[3]~regout\,
	datad => \data_interface|gather_data:bits_written[2]~regout\,
	aclr => \data_interface|reset_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|gather_data:bits_written[3]~regout\);

-- Location: LC_X7_Y3_N9
\data_interface|gather_data:bits_written[0]\ : maxii_lcell
-- Equation(s):
-- \data_interface|gather_data:bits_written[0]~regout\ = DFFEAS((\data_interface|gather_data:bits_written[0]~regout\ & (((\data_interface|gather_data:bits_written[3]~regout\)))) # (!\data_interface|gather_data:bits_written[0]~regout\ & 
-- (((!\data_interface|gather_data:bits_written[1]~regout\ & !\data_interface|gather_data:bits_written[2]~regout\)) # (!\data_interface|gather_data:bits_written[3]~regout\))), GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3d3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	dataa => \data_interface|gather_data:bits_written[1]~regout\,
	datab => \data_interface|gather_data:bits_written[0]~regout\,
	datac => \data_interface|gather_data:bits_written[3]~regout\,
	datad => \data_interface|gather_data:bits_written[2]~regout\,
	aclr => \data_interface|reset_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|gather_data:bits_written[0]~regout\);

-- Location: LC_X7_Y3_N8
\data_interface|gather_data:bits_written[1]\ : maxii_lcell
-- Equation(s):
-- \data_interface|gather_data:bits_written[1]~regout\ = DFFEAS((\data_interface|gather_data:bits_written[1]~regout\ $ (((\data_interface|gather_data:bits_written[0]~regout\ & !\data_interface|gather_data:bits_written[3]~regout\)))), 
-- GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f30c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	datab => \data_interface|gather_data:bits_written[0]~regout\,
	datac => \data_interface|gather_data:bits_written[3]~regout\,
	datad => \data_interface|gather_data:bits_written[1]~regout\,
	aclr => \data_interface|reset_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|gather_data:bits_written[1]~regout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_clk,
	combout => \data_clk~combout\);

-- Location: LC_X7_Y3_N2
\data_interface|data_rdy_buff[0]\ : maxii_lcell
-- Equation(s):
-- \data_interface|LessThan0~1\ = (!\data_interface|gather_data:bits_written[1]~regout\ & (!\data_interface|gather_data:bits_written[0]~regout\ & ((!\data_interface|gather_data:bits_written[2]~regout\))))
-- \data_interface|data_rdy_buff\(0) = DFFEAS(\data_interface|LessThan0~1\, GLOBAL(\clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , !\data_clk~combout\, \data_interface|data_rdy_int~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_interface|gather_data:bits_written[1]~regout\,
	datab => \data_interface|gather_data:bits_written[0]~regout\,
	datac => \data_interface|data_rdy_int~regout\,
	datad => \data_interface|gather_data:bits_written[2]~regout\,
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \ALT_INV_data_clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_interface|LessThan0~1\,
	regout => \data_interface|data_rdy_buff\(0));

-- Location: LC_X7_Y3_N4
\data_interface|data_rdy_int\ : maxii_lcell
-- Equation(s):
-- \data_interface|data_rdy_int~regout\ = DFFEAS((\data_interface|data_rdy_int~regout\) # (((\data_interface|gather_data:bits_written[3]~regout\ & \data_interface|LessThan0~1\))), GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	dataa => \data_interface|data_rdy_int~regout\,
	datac => \data_interface|gather_data:bits_written[3]~regout\,
	datad => \data_interface|LessThan0~1\,
	aclr => \data_interface|reset_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|data_rdy_int~regout\);

-- Location: LC_X5_Y2_N6
\data_interface|data_rdy_buff[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|update_data~0\ = (\pwm_counter|ovf_out~regout\ & (((C1_data_rdy_buff[1]))))
-- \data_interface|data_rdy_buff\(1) = DFFEAS(\pwm_compare_blocks:0:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , !\data_clk~combout\, \data_interface|data_rdy_buff\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|ovf_out~regout\,
	datac => \data_interface|data_rdy_buff\(0),
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \ALT_INV_data_clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	regout => \data_interface|data_rdy_buff\(1));

-- Location: LC_X5_Y2_N1
\pwm_compare_blocks:8:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:8:pwm_x|update_data~0\ = (\pwm_compare_blocks:0:pwm_x|update_data~0\ & (!\pwm_compare_blocks:8:pwm_x|data_updated_int~regout\ & (!B9_\update_data:data_stored & \signal_demux|Equal0~8_combout\)))
-- \pwm_compare_blocks:8:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:8:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	datab => \pwm_compare_blocks:8:pwm_x|data_updated_int~regout\,
	datad => \signal_demux|Equal0~8_combout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:8:pwm_x|update_data~0\,
	regout => \pwm_compare_blocks:8:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X5_Y3_N8
\pwm_compare_blocks:8:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:8:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:8:pwm_x|update_data:data_stored~regout\) # ((\pwm_compare_blocks:8:pwm_x|data_updated_int~regout\ & (\signal_demux|Equal0~8_combout\ & \data_interface|data_rdy_buff\(1)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

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
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:8:pwm_x|data_updated_int~regout\,
	datab => \signal_demux|Equal0~8_combout\,
	datac => \pwm_compare_blocks:8:pwm_x|update_data:data_stored~regout\,
	datad => \data_interface|data_rdy_buff\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:8:pwm_x|data_updated_int~regout\);

-- Location: LC_X4_Y2_N7
\signal_demux|Equal0~7\ : maxii_lcell
-- Equation(s):
-- \signal_demux|Equal0~7_combout\ = (\channel_sel~combout\(0) & (\channel_sel~combout\(2) & (\channel_sel~combout\(1) & !\channel_sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \channel_sel~combout\(0),
	datab => \channel_sel~combout\(2),
	datac => \channel_sel~combout\(1),
	datad => \channel_sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \signal_demux|Equal0~7_combout\);

-- Location: LC_X5_Y2_N5
\pwm_compare_blocks:7:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:7:pwm_x|update_data~0\ = (\pwm_compare_blocks:0:pwm_x|update_data~0\ & (\signal_demux|Equal0~7_combout\ & (!B8_\update_data:data_stored & !\pwm_compare_blocks:7:pwm_x|data_updated_int~regout\)))
-- \pwm_compare_blocks:7:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:7:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

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
	dataa => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	datab => \signal_demux|Equal0~7_combout\,
	datad => \pwm_compare_blocks:7:pwm_x|data_updated_int~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:7:pwm_x|update_data~0\,
	regout => \pwm_compare_blocks:7:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X4_Y2_N3
\pwm_compare_blocks:7:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:7:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:7:pwm_x|update_data:data_stored~regout\) # ((\data_interface|data_rdy_buff\(1) & (\signal_demux|Equal0~7_combout\ & \pwm_compare_blocks:7:pwm_x|data_updated_int~regout\))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_interface|data_rdy_buff\(1),
	datab => \signal_demux|Equal0~7_combout\,
	datac => \pwm_compare_blocks:7:pwm_x|data_updated_int~regout\,
	datad => \pwm_compare_blocks:7:pwm_x|update_data:data_stored~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:7:pwm_x|data_updated_int~regout\);

-- Location: LC_X4_Y3_N9
\signal_demux|Equal0~9\ : maxii_lcell
-- Equation(s):
-- \signal_demux|Equal0~9_combout\ = (!\channel_sel~combout\(2) & (\channel_sel~combout\(0) & (!\channel_sel~combout\(1) & \channel_sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \channel_sel~combout\(2),
	datab => \channel_sel~combout\(0),
	datac => \channel_sel~combout\(1),
	datad => \channel_sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \signal_demux|Equal0~9_combout\);

-- Location: LC_X5_Y2_N3
\pwm_compare_blocks:9:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:9:pwm_x|update_data~0\ = (\pwm_compare_blocks:0:pwm_x|update_data~0\ & (\signal_demux|Equal0~9_combout\ & (!B10_\update_data:data_stored & !\pwm_compare_blocks:9:pwm_x|data_updated_int~regout\)))
-- \pwm_compare_blocks:9:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:9:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

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
	dataa => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	datab => \signal_demux|Equal0~9_combout\,
	datad => \pwm_compare_blocks:9:pwm_x|data_updated_int~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:9:pwm_x|update_data~0\,
	regout => \pwm_compare_blocks:9:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X5_Y3_N4
\pwm_compare_blocks:9:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:9:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:9:pwm_x|update_data:data_stored~regout\) # ((\signal_demux|Equal0~9_combout\ & (\pwm_compare_blocks:9:pwm_x|data_updated_int~regout\ & \data_interface|data_rdy_buff\(1)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:9:pwm_x|update_data:data_stored~regout\,
	datab => \signal_demux|Equal0~9_combout\,
	datac => \pwm_compare_blocks:9:pwm_x|data_updated_int~regout\,
	datad => \data_interface|data_rdy_buff\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:9:pwm_x|data_updated_int~regout\);

-- Location: LC_X4_Y2_N1
\signal_demux|Equal0~6\ : maxii_lcell
-- Equation(s):
-- \signal_demux|Equal0~6_combout\ = (!\channel_sel~combout\(0) & (\channel_sel~combout\(2) & (\channel_sel~combout\(1) & !\channel_sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \channel_sel~combout\(0),
	datab => \channel_sel~combout\(2),
	datac => \channel_sel~combout\(1),
	datad => \channel_sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \signal_demux|Equal0~6_combout\);

-- Location: LC_X5_Y2_N4
\pwm_compare_blocks:6:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:6:pwm_x|update_data~0\ = (\signal_demux|Equal0~6_combout\ & (!\pwm_compare_blocks:6:pwm_x|data_updated_int~regout\ & (!B7_\update_data:data_stored & \pwm_compare_blocks:0:pwm_x|update_data~0\)))
-- \pwm_compare_blocks:6:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:6:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \signal_demux|Equal0~6_combout\,
	datab => \pwm_compare_blocks:6:pwm_x|data_updated_int~regout\,
	datad => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:6:pwm_x|update_data~0\,
	regout => \pwm_compare_blocks:6:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X6_Y2_N2
\pwm_compare_blocks:6:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:6:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:6:pwm_x|update_data:data_stored~regout\) # ((\pwm_compare_blocks:6:pwm_x|data_updated_int~regout\ & (\signal_demux|Equal0~6_combout\ & \data_interface|data_rdy_buff\(1)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

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
	dataa => \pwm_compare_blocks:6:pwm_x|data_updated_int~regout\,
	datab => \pwm_compare_blocks:6:pwm_x|update_data:data_stored~regout\,
	datac => \signal_demux|Equal0~6_combout\,
	datad => \data_interface|data_rdy_buff\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:6:pwm_x|data_updated_int~regout\);

-- Location: LC_X5_Y1_N8
\interface_reset~2\ : maxii_lcell
-- Equation(s):
-- \interface_reset~2_combout\ = (\pwm_compare_blocks:8:pwm_x|data_updated_int~regout\) # ((\pwm_compare_blocks:7:pwm_x|data_updated_int~regout\) # ((\pwm_compare_blocks:9:pwm_x|data_updated_int~regout\) # 
-- (\pwm_compare_blocks:6:pwm_x|data_updated_int~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:8:pwm_x|data_updated_int~regout\,
	datab => \pwm_compare_blocks:7:pwm_x|data_updated_int~regout\,
	datac => \pwm_compare_blocks:9:pwm_x|data_updated_int~regout\,
	datad => \pwm_compare_blocks:6:pwm_x|data_updated_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \interface_reset~2_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X4_Y3_N0
\signal_demux|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \signal_demux|Equal0~1_combout\ = (!\channel_sel~combout\(2) & (\channel_sel~combout\(0) & (!\channel_sel~combout\(1) & !\channel_sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \channel_sel~combout\(2),
	datab => \channel_sel~combout\(0),
	datac => \channel_sel~combout\(1),
	datad => \channel_sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \signal_demux|Equal0~1_combout\);

-- Location: LC_X5_Y2_N2
\pwm_compare_blocks:1:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|update_data~0\ = (\pwm_compare_blocks:0:pwm_x|update_data~0\ & (!\pwm_compare_blocks:1:pwm_x|data_updated_int~regout\ & (!B2_\update_data:data_stored & \signal_demux|Equal0~1_combout\)))
-- \pwm_compare_blocks:1:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:1:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	datab => \pwm_compare_blocks:1:pwm_x|data_updated_int~regout\,
	datad => \signal_demux|Equal0~1_combout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|update_data~0\,
	regout => \pwm_compare_blocks:1:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X5_Y3_N5
\pwm_compare_blocks:1:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:1:pwm_x|update_data:data_stored~regout\) # ((\signal_demux|Equal0~1_combout\ & (\pwm_compare_blocks:1:pwm_x|data_updated_int~regout\ & \data_interface|data_rdy_buff\(1)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:1:pwm_x|update_data:data_stored~regout\,
	datab => \signal_demux|Equal0~1_combout\,
	datac => \pwm_compare_blocks:1:pwm_x|data_updated_int~regout\,
	datad => \data_interface|data_rdy_buff\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|data_updated_int~regout\);

-- Location: LC_X4_Y3_N4
\signal_demux|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \signal_demux|Equal0~0_combout\ = (!\channel_sel~combout\(2) & (!\channel_sel~combout\(0) & (!\channel_sel~combout\(1) & !\channel_sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \channel_sel~combout\(2),
	datab => \channel_sel~combout\(0),
	datac => \channel_sel~combout\(1),
	datad => \channel_sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \signal_demux|Equal0~0_combout\);

-- Location: LC_X5_Y3_N0
\pwm_compare_blocks:0:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|update_data~1\ = (\pwm_compare_blocks:0:pwm_x|update_data~0\ & (\signal_demux|Equal0~0_combout\ & (!B1_\update_data:data_stored & !\pwm_compare_blocks:0:pwm_x|data_updated_int~regout\)))
-- \pwm_compare_blocks:0:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:0:pwm_x|update_data~1\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

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
	dataa => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	datab => \signal_demux|Equal0~0_combout\,
	datad => \pwm_compare_blocks:0:pwm_x|data_updated_int~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	regout => \pwm_compare_blocks:0:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X5_Y3_N9
\pwm_compare_blocks:0:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:0:pwm_x|update_data:data_stored~regout\) # ((\data_interface|data_rdy_buff\(1) & (\signal_demux|Equal0~0_combout\ & \pwm_compare_blocks:0:pwm_x|data_updated_int~regout\))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

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
	clk => \clk~combout\,
	dataa => \data_interface|data_rdy_buff\(1),
	datab => \signal_demux|Equal0~0_combout\,
	datac => \pwm_compare_blocks:0:pwm_x|update_data:data_stored~regout\,
	datad => \pwm_compare_blocks:0:pwm_x|data_updated_int~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|data_updated_int~regout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_intf~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset_intf,
	combout => \reset_intf~combout\);

-- Location: LC_X5_Y1_N7
\interface_reset~0\ : maxii_lcell
-- Equation(s):
-- \interface_reset~0_combout\ = (\reset~combout\) # ((\pwm_compare_blocks:1:pwm_x|data_updated_int~regout\) # ((\pwm_compare_blocks:0:pwm_x|data_updated_int~regout\) # (\reset_intf~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \pwm_compare_blocks:1:pwm_x|data_updated_int~regout\,
	datac => \pwm_compare_blocks:0:pwm_x|data_updated_int~regout\,
	datad => \reset_intf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \interface_reset~0_combout\);

-- Location: LC_X4_Y3_N2
\signal_demux|Equal0~11\ : maxii_lcell
-- Equation(s):
-- \signal_demux|Equal0~11_combout\ = (!\channel_sel~combout\(2) & (\channel_sel~combout\(0) & (\channel_sel~combout\(1) & \channel_sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \channel_sel~combout\(2),
	datab => \channel_sel~combout\(0),
	datac => \channel_sel~combout\(1),
	datad => \channel_sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \signal_demux|Equal0~11_combout\);

-- Location: LC_X5_Y3_N3
\pwm_compare_blocks:11:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:11:pwm_x|update_data~0\ = (\pwm_compare_blocks:0:pwm_x|update_data~0\ & (\signal_demux|Equal0~11_combout\ & (!B12_\update_data:data_stored & !\pwm_compare_blocks:11:pwm_x|data_updated_int~regout\)))
-- \pwm_compare_blocks:11:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:11:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

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
	dataa => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	datab => \signal_demux|Equal0~11_combout\,
	datad => \pwm_compare_blocks:11:pwm_x|data_updated_int~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:11:pwm_x|update_data~0\,
	regout => \pwm_compare_blocks:11:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X5_Y3_N1
\pwm_compare_blocks:11:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:11:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:11:pwm_x|update_data:data_stored~regout\) # ((\data_interface|data_rdy_buff\(1) & (\pwm_compare_blocks:11:pwm_x|data_updated_int~regout\ & 
-- \signal_demux|Equal0~11_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:11:pwm_x|update_data:data_stored~regout\,
	datab => \data_interface|data_rdy_buff\(1),
	datac => \pwm_compare_blocks:11:pwm_x|data_updated_int~regout\,
	datad => \signal_demux|Equal0~11_combout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:11:pwm_x|data_updated_int~regout\);

-- Location: LC_X7_Y3_N5
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

-- Location: LC_X3_Y3_N8
\data_interface|input_reg[1]\ : maxii_lcell
-- Equation(s):
-- \data_interface|input_reg\(1) = DFFEAS((((\data_interface|input_reg\(0)))), GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, , , , )

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
	datad => \data_interface|input_reg\(0),
	aclr => \data_interface|reset_int~regout\,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|input_reg\(1));

-- Location: LC_X4_Y1_N9
\data_interface|input_reg[2]\ : maxii_lcell
-- Equation(s):
-- \data_interface|input_reg\(2) = DFFEAS((((\data_interface|input_reg\(1)))), GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, , , , )

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
	datad => \data_interface|input_reg\(1),
	aclr => \data_interface|reset_int~regout\,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|input_reg\(2));

-- Location: LC_X5_Y1_N2
\data_interface|input_reg[3]\ : maxii_lcell
-- Equation(s):
-- \data_interface|input_reg\(3) = DFFEAS(GND, GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, \data_interface|input_reg\(2), , , VCC)

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
	datac => \data_interface|input_reg\(2),
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|input_reg\(3));

-- Location: LC_X5_Y4_N9
\data_interface|input_reg[4]\ : maxii_lcell
-- Equation(s):
-- \data_interface|input_reg\(4) = DFFEAS(GND, GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, \data_interface|input_reg\(3), , , VCC)

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
	datac => \data_interface|input_reg\(3),
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|input_reg\(4));

-- Location: LC_X5_Y4_N8
\data_interface|input_reg[5]\ : maxii_lcell
-- Equation(s):
-- \data_interface|input_reg\(5) = DFFEAS(GND, GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, \data_interface|input_reg\(4), , , VCC)

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
	datac => \data_interface|input_reg\(4),
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|input_reg\(5));

-- Location: LC_X3_Y4_N8
\data_interface|input_reg[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|Equal0~0\ = (\pwm_counter|counter_value\(0) & (((\pwm_counter|counter_value\(1)))))
-- \data_interface|input_reg\(6) = DFFEAS(\pwm_counter|Equal0~0\, GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, \data_interface|input_reg\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	dataa => \pwm_counter|counter_value\(0),
	datac => \data_interface|input_reg\(5),
	datad => \pwm_counter|counter_value\(1),
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_counter|Equal0~0\,
	regout => \data_interface|input_reg\(6));

-- Location: LC_X4_Y3_N6
\signal_demux|Equal0~10\ : maxii_lcell
-- Equation(s):
-- \signal_demux|Equal0~10_combout\ = (!\channel_sel~combout\(2) & (!\channel_sel~combout\(0) & (\channel_sel~combout\(1) & \channel_sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \channel_sel~combout\(2),
	datab => \channel_sel~combout\(0),
	datac => \channel_sel~combout\(1),
	datad => \channel_sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \signal_demux|Equal0~10_combout\);

-- Location: LC_X5_Y2_N0
\pwm_compare_blocks:10:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:10:pwm_x|update_data~0\ = (\pwm_compare_blocks:0:pwm_x|update_data~0\ & (\signal_demux|Equal0~10_combout\ & (!B11_\update_data:data_stored & !\pwm_compare_blocks:10:pwm_x|data_updated_int~regout\)))
-- \pwm_compare_blocks:10:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:10:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

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
	dataa => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	datab => \signal_demux|Equal0~10_combout\,
	datad => \pwm_compare_blocks:10:pwm_x|data_updated_int~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:10:pwm_x|update_data~0\,
	regout => \pwm_compare_blocks:10:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X5_Y3_N7
\pwm_compare_blocks:10:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:10:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:10:pwm_x|update_data:data_stored~regout\) # ((\pwm_compare_blocks:10:pwm_x|data_updated_int~regout\ & (\signal_demux|Equal0~10_combout\ & 
-- \data_interface|data_rdy_buff\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:10:pwm_x|update_data:data_stored~regout\,
	datab => \pwm_compare_blocks:10:pwm_x|data_updated_int~regout\,
	datac => \signal_demux|Equal0~10_combout\,
	datad => \data_interface|data_rdy_buff\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:10:pwm_x|data_updated_int~regout\);

-- Location: LC_X5_Y1_N1
\data_interface|input_reg[7]\ : maxii_lcell
-- Equation(s):
-- \interface_reset~3\ = ((\pwm_compare_blocks:11:pwm_x|data_updated_int~regout\) # ((\pwm_compare_blocks:10:pwm_x|data_updated_int~regout\)))
-- \data_interface|input_reg\(7) = DFFEAS(\interface_reset~3\, GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, \data_interface|input_reg\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	datab => \pwm_compare_blocks:11:pwm_x|data_updated_int~regout\,
	datac => \data_interface|input_reg\(6),
	datad => \pwm_compare_blocks:10:pwm_x|data_updated_int~regout\,
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \data_interface|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \interface_reset~3\,
	regout => \data_interface|input_reg\(7));

-- Location: LC_X4_Y2_N8
\signal_demux|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \signal_demux|Equal0~4_combout\ = (!\channel_sel~combout\(0) & (\channel_sel~combout\(2) & (!\channel_sel~combout\(1) & !\channel_sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \channel_sel~combout\(0),
	datab => \channel_sel~combout\(2),
	datac => \channel_sel~combout\(1),
	datad => \channel_sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \signal_demux|Equal0~4_combout\);

-- Location: LC_X5_Y2_N8
\pwm_compare_blocks:4:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:4:pwm_x|update_data~0\ = (!\pwm_compare_blocks:4:pwm_x|data_updated_int~regout\ & (\signal_demux|Equal0~4_combout\ & (!B5_\update_data:data_stored & \pwm_compare_blocks:0:pwm_x|update_data~0\)))
-- \pwm_compare_blocks:4:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:4:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:4:pwm_x|data_updated_int~regout\,
	datab => \signal_demux|Equal0~4_combout\,
	datad => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:4:pwm_x|update_data~0\,
	regout => \pwm_compare_blocks:4:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X6_Y2_N3
\pwm_compare_blocks:4:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:4:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:4:pwm_x|update_data:data_stored~regout\) # ((\signal_demux|Equal0~4_combout\ & (\data_interface|data_rdy_buff\(1) & \pwm_compare_blocks:4:pwm_x|data_updated_int~regout\))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

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
	clk => \clk~combout\,
	dataa => \signal_demux|Equal0~4_combout\,
	datab => \data_interface|data_rdy_buff\(1),
	datac => \pwm_compare_blocks:4:pwm_x|update_data:data_stored~regout\,
	datad => \pwm_compare_blocks:4:pwm_x|data_updated_int~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:4:pwm_x|data_updated_int~regout\);

-- Location: LC_X4_Y3_N3
\signal_demux|Equal0~5\ : maxii_lcell
-- Equation(s):
-- \signal_demux|Equal0~5_combout\ = (\channel_sel~combout\(2) & (\channel_sel~combout\(0) & (!\channel_sel~combout\(1) & !\channel_sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \channel_sel~combout\(2),
	datab => \channel_sel~combout\(0),
	datac => \channel_sel~combout\(1),
	datad => \channel_sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \signal_demux|Equal0~5_combout\);

-- Location: LC_X5_Y2_N7
\pwm_compare_blocks:5:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:5:pwm_x|update_data~0\ = (\signal_demux|Equal0~5_combout\ & (!\pwm_compare_blocks:5:pwm_x|data_updated_int~regout\ & (!B6_\update_data:data_stored & \pwm_compare_blocks:0:pwm_x|update_data~0\)))
-- \pwm_compare_blocks:5:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:5:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \signal_demux|Equal0~5_combout\,
	datab => \pwm_compare_blocks:5:pwm_x|data_updated_int~regout\,
	datad => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:5:pwm_x|update_data~0\,
	regout => \pwm_compare_blocks:5:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X6_Y2_N1
\pwm_compare_blocks:5:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:5:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:5:pwm_x|update_data:data_stored~regout\) # ((\signal_demux|Equal0~5_combout\ & (\data_interface|data_rdy_buff\(1) & \pwm_compare_blocks:5:pwm_x|data_updated_int~regout\))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \signal_demux|Equal0~5_combout\,
	datab => \data_interface|data_rdy_buff\(1),
	datac => \pwm_compare_blocks:5:pwm_x|data_updated_int~regout\,
	datad => \pwm_compare_blocks:5:pwm_x|update_data:data_stored~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:5:pwm_x|data_updated_int~regout\);

-- Location: LC_X4_Y2_N9
\signal_demux|Equal0~3\ : maxii_lcell
-- Equation(s):
-- \signal_demux|Equal0~3_combout\ = (\channel_sel~combout\(0) & (!\channel_sel~combout\(2) & (\channel_sel~combout\(1) & !\channel_sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \channel_sel~combout\(0),
	datab => \channel_sel~combout\(2),
	datac => \channel_sel~combout\(1),
	datad => \channel_sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \signal_demux|Equal0~3_combout\);

-- Location: LC_X4_Y2_N6
\pwm_compare_blocks:3:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|update_data~0\ = (\pwm_compare_blocks:0:pwm_x|update_data~0\ & (!\pwm_compare_blocks:3:pwm_x|data_updated_int~regout\ & (!B4_\update_data:data_stored & \signal_demux|Equal0~3_combout\)))
-- \pwm_compare_blocks:3:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:3:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	datab => \pwm_compare_blocks:3:pwm_x|data_updated_int~regout\,
	datad => \signal_demux|Equal0~3_combout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	regout => \pwm_compare_blocks:3:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X4_Y2_N5
\pwm_compare_blocks:3:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:3:pwm_x|update_data:data_stored~regout\) # ((\pwm_compare_blocks:3:pwm_x|data_updated_int~regout\ & (\signal_demux|Equal0~3_combout\ & \data_interface|data_rdy_buff\(1)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

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
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:3:pwm_x|data_updated_int~regout\,
	datab => \signal_demux|Equal0~3_combout\,
	datac => \pwm_compare_blocks:3:pwm_x|update_data:data_stored~regout\,
	datad => \data_interface|data_rdy_buff\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|data_updated_int~regout\);

-- Location: LC_X4_Y3_N5
\signal_demux|Equal0~2\ : maxii_lcell
-- Equation(s):
-- \signal_demux|Equal0~2_combout\ = (!\channel_sel~combout\(2) & (!\channel_sel~combout\(0) & (\channel_sel~combout\(1) & !\channel_sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \channel_sel~combout\(2),
	datab => \channel_sel~combout\(0),
	datac => \channel_sel~combout\(1),
	datad => \channel_sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \signal_demux|Equal0~2_combout\);

-- Location: LC_X5_Y2_N9
\pwm_compare_blocks:2:pwm_x|update_data:data_stored\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|update_data~0\ = (\pwm_compare_blocks:0:pwm_x|update_data~0\ & (\signal_demux|Equal0~2_combout\ & (!B3_\update_data:data_stored & !\pwm_compare_blocks:2:pwm_x|data_updated_int~regout\)))
-- \pwm_compare_blocks:2:pwm_x|update_data:data_stored~regout\ = DFFEAS(\pwm_compare_blocks:2:pwm_x|update_data~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

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
	dataa => \pwm_compare_blocks:0:pwm_x|update_data~0\,
	datab => \signal_demux|Equal0~2_combout\,
	datad => \pwm_compare_blocks:2:pwm_x|data_updated_int~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	regout => \pwm_compare_blocks:2:pwm_x|update_data:data_stored~regout\);

-- Location: LC_X6_Y2_N8
\pwm_compare_blocks:2:pwm_x|data_updated_int\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|data_updated_int~regout\ = DFFEAS((\pwm_compare_blocks:2:pwm_x|update_data:data_stored~regout\) # ((\pwm_compare_blocks:2:pwm_x|data_updated_int~regout\ & (\signal_demux|Equal0~2_combout\ & \data_interface|data_rdy_buff\(1)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

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
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:2:pwm_x|data_updated_int~regout\,
	datab => \signal_demux|Equal0~2_combout\,
	datac => \pwm_compare_blocks:2:pwm_x|update_data:data_stored~regout\,
	datad => \data_interface|data_rdy_buff\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|data_updated_int~regout\);

-- Location: LC_X5_Y1_N3
\interface_reset~1\ : maxii_lcell
-- Equation(s):
-- \interface_reset~1_combout\ = (\pwm_compare_blocks:4:pwm_x|data_updated_int~regout\) # ((\pwm_compare_blocks:5:pwm_x|data_updated_int~regout\) # ((\pwm_compare_blocks:3:pwm_x|data_updated_int~regout\) # 
-- (\pwm_compare_blocks:2:pwm_x|data_updated_int~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:4:pwm_x|data_updated_int~regout\,
	datab => \pwm_compare_blocks:5:pwm_x|data_updated_int~regout\,
	datac => \pwm_compare_blocks:3:pwm_x|data_updated_int~regout\,
	datad => \pwm_compare_blocks:2:pwm_x|data_updated_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \interface_reset~1_combout\);

-- Location: LC_X5_Y1_N4
\data_interface|reset_int\ : maxii_lcell
-- Equation(s):
-- \data_interface|reset_int~regout\ = DFFEAS((\interface_reset~2_combout\) # ((\interface_reset~0_combout\) # ((\interface_reset~3\) # (\interface_reset~1_combout\))), !GLOBAL(\clk~combout\), VCC, , !\data_clk~combout\, , , , )

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
	dataa => \interface_reset~2_combout\,
	datab => \interface_reset~0_combout\,
	datac => \interface_reset~3\,
	datad => \interface_reset~1_combout\,
	aclr => GND,
	ena => \ALT_INV_data_clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_interface|reset_int~regout\);

-- Location: LC_X3_Y3_N9
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

-- Location: LC_X3_Y4_N9
\pwm_compare_blocks:0:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(0) = DFFEAS((((\data_interface|input_reg\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, , , , )

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
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(0));

-- Location: LC_X3_Y4_N0
\pwm_compare_blocks:0:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(1) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, \data_interface|input_reg\(1), , , VCC)
-- \pwm_compare_blocks:0:pwm_x|LessThan0~37\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:0:pwm_x|compare_value\(0))))
-- \pwm_compare_blocks:0:pwm_x|LessThan0~37COUT1_48\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:0:pwm_x|compare_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(0),
	datab => \pwm_compare_blocks:0:pwm_x|compare_value\(0),
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(1),
	cout0 => \pwm_compare_blocks:0:pwm_x|LessThan0~37\,
	cout1 => \pwm_compare_blocks:0:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X3_Y4_N1
\pwm_compare_blocks:0:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(2) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, \data_interface|input_reg\(2), , , VCC)
-- \pwm_compare_blocks:0:pwm_x|LessThan0~32\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~37\) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:0:pwm_x|compare_value\(1) & !\pwm_compare_blocks:0:pwm_x|LessThan0~37\)))
-- \pwm_compare_blocks:0:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~37COUT1_48\) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:0:pwm_x|compare_value\(1) & !\pwm_compare_blocks:0:pwm_x|LessThan0~37COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(1),
	datab => \pwm_compare_blocks:0:pwm_x|compare_value\(1),
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	cin0 => \pwm_compare_blocks:0:pwm_x|LessThan0~37\,
	cin1 => \pwm_compare_blocks:0:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(2),
	cout0 => \pwm_compare_blocks:0:pwm_x|LessThan0~32\,
	cout1 => \pwm_compare_blocks:0:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X3_Y4_N2
\pwm_compare_blocks:0:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(3) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, \data_interface|input_reg\(3), , , VCC)
-- \pwm_compare_blocks:0:pwm_x|LessThan0~27\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:0:pwm_x|compare_value\(2) & !\pwm_compare_blocks:0:pwm_x|LessThan0~32\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:0:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:0:pwm_x|LessThan0~32\))))
-- \pwm_compare_blocks:0:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:0:pwm_x|compare_value\(2) & !\pwm_compare_blocks:0:pwm_x|LessThan0~32COUT1_50\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:0:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:0:pwm_x|LessThan0~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(2),
	datab => \pwm_compare_blocks:0:pwm_x|compare_value\(2),
	datac => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	cin0 => \pwm_compare_blocks:0:pwm_x|LessThan0~32\,
	cin1 => \pwm_compare_blocks:0:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(3),
	cout0 => \pwm_compare_blocks:0:pwm_x|LessThan0~27\,
	cout1 => \pwm_compare_blocks:0:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X3_Y4_N3
\pwm_compare_blocks:0:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(4) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, \data_interface|input_reg\(4), , , VCC)
-- \pwm_compare_blocks:0:pwm_x|LessThan0~22\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~27\) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:0:pwm_x|compare_value\(3) & !\pwm_compare_blocks:0:pwm_x|LessThan0~27\)))
-- \pwm_compare_blocks:0:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:0:pwm_x|compare_value\(3) & !\pwm_compare_blocks:0:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:0:pwm_x|compare_value\(3),
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	cin0 => \pwm_compare_blocks:0:pwm_x|LessThan0~27\,
	cin1 => \pwm_compare_blocks:0:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(4),
	cout0 => \pwm_compare_blocks:0:pwm_x|LessThan0~22\,
	cout1 => \pwm_compare_blocks:0:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X4_Y4_N3
\pwm_counter|counter_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(3) = DFFEAS(\pwm_counter|counter_value\(3) $ ((((\pwm_counter|counter_value[2]~7\)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )
-- \pwm_counter|counter_value[3]~9\ = CARRY(((!\pwm_counter|counter_value[2]~7\)) # (!\pwm_counter|counter_value\(3)))
-- \pwm_counter|counter_value[3]~9COUT1_30\ = CARRY(((!\pwm_counter|counter_value[2]~7COUT1_28\)) # (!\pwm_counter|counter_value\(3)))

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
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	cin0 => \pwm_counter|counter_value[2]~7\,
	cin1 => \pwm_counter|counter_value[2]~7COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(3),
	cout0 => \pwm_counter|counter_value[3]~9\,
	cout1 => \pwm_counter|counter_value[3]~9COUT1_30\);

-- Location: LC_X4_Y4_N4
\pwm_counter|counter_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(4) = DFFEAS(\pwm_counter|counter_value\(4) $ ((((!\pwm_counter|counter_value[3]~9\)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )
-- \pwm_counter|counter_value[4]~11\ = CARRY((\pwm_counter|counter_value\(4) & ((!\pwm_counter|counter_value[3]~9COUT1_30\))))

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
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	cin0 => \pwm_counter|counter_value[3]~9\,
	cin1 => \pwm_counter|counter_value[3]~9COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(4),
	cout => \pwm_counter|counter_value[4]~11\);

-- Location: LC_X3_Y4_N4
\pwm_compare_blocks:0:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(5) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, \data_interface|input_reg\(5), , , VCC)
-- \pwm_compare_blocks:0:pwm_x|LessThan0~17\ = CARRY((\pwm_compare_blocks:0:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:0:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:0:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	datac => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	cin0 => \pwm_compare_blocks:0:pwm_x|LessThan0~22\,
	cin1 => \pwm_compare_blocks:0:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(5),
	cout => \pwm_compare_blocks:0:pwm_x|LessThan0~17\);

-- Location: LC_X4_Y4_N5
\pwm_counter|counter_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(5) = DFFEAS(\pwm_counter|counter_value\(5) $ ((((\pwm_counter|counter_value[4]~11\)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )
-- \pwm_counter|counter_value[5]~13\ = CARRY(((!\pwm_counter|counter_value[4]~11\)) # (!\pwm_counter|counter_value\(5)))
-- \pwm_counter|counter_value[5]~13COUT1_32\ = CARRY(((!\pwm_counter|counter_value[4]~11\)) # (!\pwm_counter|counter_value\(5)))

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
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	cin => \pwm_counter|counter_value[4]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(5),
	cout0 => \pwm_counter|counter_value[5]~13\,
	cout1 => \pwm_counter|counter_value[5]~13COUT1_32\);

-- Location: LC_X3_Y4_N5
\pwm_compare_blocks:0:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(6) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, \data_interface|input_reg\(6), , , VCC)
-- \pwm_compare_blocks:0:pwm_x|LessThan0~12\ = CARRY((\pwm_compare_blocks:0:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:0:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:0:pwm_x|LessThan0~17\))))
-- \pwm_compare_blocks:0:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_compare_blocks:0:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:0:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:0:pwm_x|LessThan0~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:0:pwm_x|compare_value\(5),
	datab => \pwm_counter|counter_value\(5),
	datac => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	cin => \pwm_compare_blocks:0:pwm_x|LessThan0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(6),
	cout0 => \pwm_compare_blocks:0:pwm_x|LessThan0~12\,
	cout1 => \pwm_compare_blocks:0:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X4_Y4_N6
\pwm_counter|counter_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(6) = DFFEAS(\pwm_counter|counter_value\(6) $ ((((!(!\pwm_counter|counter_value[4]~11\ & \pwm_counter|counter_value[5]~13\) # (\pwm_counter|counter_value[4]~11\ & \pwm_counter|counter_value[5]~13COUT1_32\))))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )
-- \pwm_counter|counter_value[6]~15\ = CARRY((\pwm_counter|counter_value\(6) & ((!\pwm_counter|counter_value[5]~13\))))
-- \pwm_counter|counter_value[6]~15COUT1_34\ = CARRY((\pwm_counter|counter_value\(6) & ((!\pwm_counter|counter_value[5]~13COUT1_32\))))

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
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	cin => \pwm_counter|counter_value[4]~11\,
	cin0 => \pwm_counter|counter_value[5]~13\,
	cin1 => \pwm_counter|counter_value[5]~13COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(6),
	cout0 => \pwm_counter|counter_value[6]~15\,
	cout1 => \pwm_counter|counter_value[6]~15COUT1_34\);

-- Location: LC_X3_Y4_N6
\pwm_compare_blocks:0:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|compare_value\(7) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, \data_interface|input_reg\(7), , , VCC)
-- \pwm_compare_blocks:0:pwm_x|LessThan0~7\ = CARRY((\pwm_compare_blocks:0:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~12\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:0:pwm_x|LessThan0~12\)))
-- \pwm_compare_blocks:0:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_compare_blocks:0:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:0:pwm_x|LessThan0~12COUT1_56\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:0:pwm_x|LessThan0~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:0:pwm_x|compare_value\(6),
	datab => \pwm_counter|counter_value\(6),
	datac => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	cin => \pwm_compare_blocks:0:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:0:pwm_x|LessThan0~12\,
	cin1 => \pwm_compare_blocks:0:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:0:pwm_x|compare_value\(7),
	cout0 => \pwm_compare_blocks:0:pwm_x|LessThan0~7\,
	cout1 => \pwm_compare_blocks:0:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X4_Y4_N7
\pwm_counter|counter_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|counter_value\(7) = DFFEAS((\pwm_counter|counter_value\(7) $ (((!\pwm_counter|counter_value[4]~11\ & \pwm_counter|counter_value[6]~15\) # (\pwm_counter|counter_value[4]~11\ & \pwm_counter|counter_value[6]~15COUT1_34\)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , , , , )

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
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	cin => \pwm_counter|counter_value[4]~11\,
	cin0 => \pwm_counter|counter_value[6]~15\,
	cin1 => \pwm_counter|counter_value[6]~15COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|counter_value\(7));

-- Location: LC_X3_Y4_N7
\data_interface|input_reg[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|LessThan0~0\ = (\pwm_compare_blocks:0:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:0:pwm_x|LessThan0~17\ & \pwm_compare_blocks:0:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:0:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:0:pwm_x|LessThan0~7COUT1_58\)) # (!\pwm_counter|counter_value\(7))))) # (!\pwm_compare_blocks:0:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:0:pwm_x|LessThan0~17\ & \pwm_compare_blocks:0:pwm_x|LessThan0~7\) # 
-- (\pwm_compare_blocks:0:pwm_x|LessThan0~17\ & \pwm_compare_blocks:0:pwm_x|LessThan0~7COUT1_58\) & !\pwm_counter|counter_value\(7)))))
-- \data_interface|input_reg\(8) = DFFEAS(\pwm_compare_blocks:0:pwm_x|LessThan0~0\, GLOBAL(\data_clk~combout\), !GLOBAL(\data_interface|reset_int~regout\), , \data_interface|LessThan0~0_combout\, \data_interface|input_reg\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a0fa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \data_clk~combout\,
	dataa => \pwm_compare_blocks:0:pwm_x|compare_value\(7),
	datac => \data_interface|input_reg\(7),
	datad => \pwm_counter|counter_value\(7),
	aclr => \data_interface|reset_int~regout\,
	sload => VCC,
	ena => \data_interface|LessThan0~0_combout\,
	cin => \pwm_compare_blocks:0:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:0:pwm_x|LessThan0~7\,
	cin1 => \pwm_compare_blocks:0:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|LessThan0~0\,
	regout => \data_interface|input_reg\(8));

-- Location: LC_X7_Y4_N5
\pwm_compare_blocks:0:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|pwm_pin3~0\ = (((B1_pwm_out_sel) # (\pwm_compare_blocks:11:pwm_x|reset_internal~regout\))) # (!\pwm_compare_blocks:0:pwm_x|LessThan0~0\)
-- \pwm_compare_blocks:0:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:0:pwm_x|pwm_pin3~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:0:pwm_x|update_data~1\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:0:pwm_x|LessThan0~0\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:0:pwm_x|update_data~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|pwm_pin3~0\,
	regout => \pwm_compare_blocks:0:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X4_Y3_N7
\pwm_compare_blocks:11:pwm_x|reset_internal\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:0:pwm_x|pwm_pin4~0\ = (((B12_reset_internal) # (!\pwm_compare_blocks:0:pwm_x|pwm_out_sel~regout\)) # (!\pwm_compare_blocks:0:pwm_x|LessThan0~0\))
-- \pwm_compare_blocks:11:pwm_x|reset_internal~regout\ = DFFEAS(\pwm_compare_blocks:0:pwm_x|pwm_pin4~0\, !GLOBAL(\clk~combout\), VCC, , , \reset~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3ff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datab => \pwm_compare_blocks:0:pwm_x|LessThan0~0\,
	datac => \reset~combout\,
	datad => \pwm_compare_blocks:0:pwm_x|pwm_out_sel~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:0:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\);

-- Location: LC_X4_Y4_N9
\pwm_counter|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|Equal0~1_combout\ = (\pwm_counter|counter_value\(5) & (\pwm_counter|counter_value\(7) & (\pwm_counter|counter_value\(4) & \pwm_counter|counter_value\(6))))

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
	dataa => \pwm_counter|counter_value\(5),
	datab => \pwm_counter|counter_value\(7),
	datac => \pwm_counter|counter_value\(4),
	datad => \pwm_counter|counter_value\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_counter|Equal0~1_combout\);

-- Location: LC_X4_Y4_N8
\pwm_counter|ovf_out\ : maxii_lcell
-- Equation(s):
-- \pwm_counter|ovf_out~regout\ = DFFEAS((\pwm_counter|counter_value\(3) & (\pwm_counter|Equal0~1_combout\ & (\pwm_counter|Equal0~0\ & \pwm_counter|counter_value\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , , 
-- , , , )

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
	datab => \pwm_counter|Equal0~1_combout\,
	datac => \pwm_counter|Equal0~0\,
	datad => \pwm_counter|counter_value\(2),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_counter|ovf_out~regout\);

-- Location: LC_X2_Y2_N6
\pwm_compare_blocks:1:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|pwm_pin4~0\ = (\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # (((!B2_pwm_out_sel)) # (!\pwm_compare_blocks:1:pwm_x|LessThan0~0_combout\))
-- \pwm_compare_blocks:1:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:1:pwm_x|pwm_pin4~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfbf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datab => \pwm_compare_blocks:1:pwm_x|LessThan0~0_combout\,
	datac => \data_interface|input_reg\(8),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:1:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X2_Y2_N0
\pwm_compare_blocks:1:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|pwm_pin3~0\ = (\pwm_compare_blocks:1:pwm_x|pwm_out_sel~regout\) # (((\pwm_compare_blocks:11:pwm_x|reset_internal~regout\)) # (!\pwm_compare_blocks:1:pwm_x|LessThan0~0_combout\))
-- \pwm_compare_blocks:1:pwm_x|compare_value\(0) = DFFEAS(\pwm_compare_blocks:1:pwm_x|pwm_pin3~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbb",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:1:pwm_x|pwm_out_sel~regout\,
	datab => \pwm_compare_blocks:1:pwm_x|LessThan0~0_combout\,
	datac => \data_interface|input_reg\(0),
	datad => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|pwm_pin3~0\,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(0));

-- Location: LC_X2_Y1_N0
\pwm_compare_blocks:1:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(1) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~0\, \data_interface|input_reg\(1), , , VCC)
-- \pwm_compare_blocks:1:pwm_x|LessThan0~37\ = CARRY((\pwm_compare_blocks:1:pwm_x|compare_value\(0) & (!\pwm_counter|counter_value\(0))))
-- \pwm_compare_blocks:1:pwm_x|LessThan0~37COUT1_48\ = CARRY((\pwm_compare_blocks:1:pwm_x|compare_value\(0) & (!\pwm_counter|counter_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:1:pwm_x|compare_value\(0),
	datab => \pwm_counter|counter_value\(0),
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(1),
	cout0 => \pwm_compare_blocks:1:pwm_x|LessThan0~37\,
	cout1 => \pwm_compare_blocks:1:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X2_Y1_N1
\pwm_compare_blocks:1:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(2) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~0\, \data_interface|input_reg\(2), , , VCC)
-- \pwm_compare_blocks:1:pwm_x|LessThan0~32\ = CARRY((\pwm_compare_blocks:1:pwm_x|compare_value\(1) & (\pwm_counter|counter_value\(1) & !\pwm_compare_blocks:1:pwm_x|LessThan0~37\)) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(1) & 
-- ((\pwm_counter|counter_value\(1)) # (!\pwm_compare_blocks:1:pwm_x|LessThan0~37\))))
-- \pwm_compare_blocks:1:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_compare_blocks:1:pwm_x|compare_value\(1) & (\pwm_counter|counter_value\(1) & !\pwm_compare_blocks:1:pwm_x|LessThan0~37COUT1_48\)) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(1) & 
-- ((\pwm_counter|counter_value\(1)) # (!\pwm_compare_blocks:1:pwm_x|LessThan0~37COUT1_48\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:1:pwm_x|compare_value\(1),
	datab => \pwm_counter|counter_value\(1),
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:1:pwm_x|LessThan0~37\,
	cin1 => \pwm_compare_blocks:1:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(2),
	cout0 => \pwm_compare_blocks:1:pwm_x|LessThan0~32\,
	cout1 => \pwm_compare_blocks:1:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X2_Y1_N2
\pwm_compare_blocks:1:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(3) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~0\, \data_interface|input_reg\(3), , , VCC)
-- \pwm_compare_blocks:1:pwm_x|LessThan0~27\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:1:pwm_x|compare_value\(2) & !\pwm_compare_blocks:1:pwm_x|LessThan0~32\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:1:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:1:pwm_x|LessThan0~32\))))
-- \pwm_compare_blocks:1:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:1:pwm_x|compare_value\(2) & !\pwm_compare_blocks:1:pwm_x|LessThan0~32COUT1_50\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:1:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:1:pwm_x|LessThan0~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(2),
	datab => \pwm_compare_blocks:1:pwm_x|compare_value\(2),
	datac => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:1:pwm_x|LessThan0~32\,
	cin1 => \pwm_compare_blocks:1:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(3),
	cout0 => \pwm_compare_blocks:1:pwm_x|LessThan0~27\,
	cout1 => \pwm_compare_blocks:1:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X2_Y1_N3
\pwm_compare_blocks:1:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(4) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~0\, \data_interface|input_reg\(4), , , VCC)
-- \pwm_compare_blocks:1:pwm_x|LessThan0~22\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:1:pwm_x|LessThan0~27\) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:1:pwm_x|compare_value\(3) & !\pwm_compare_blocks:1:pwm_x|LessThan0~27\)))
-- \pwm_compare_blocks:1:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:1:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:1:pwm_x|compare_value\(3) & !\pwm_compare_blocks:1:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:1:pwm_x|compare_value\(3),
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:1:pwm_x|LessThan0~27\,
	cin1 => \pwm_compare_blocks:1:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(4),
	cout0 => \pwm_compare_blocks:1:pwm_x|LessThan0~22\,
	cout1 => \pwm_compare_blocks:1:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X2_Y1_N4
\pwm_compare_blocks:1:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(5) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~0\, \data_interface|input_reg\(5), , , VCC)
-- \pwm_compare_blocks:1:pwm_x|LessThan0~17\ = CARRY((\pwm_compare_blocks:1:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:1:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:1:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:1:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	datac => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:1:pwm_x|LessThan0~22\,
	cin1 => \pwm_compare_blocks:1:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(5),
	cout => \pwm_compare_blocks:1:pwm_x|LessThan0~17\);

-- Location: LC_X2_Y1_N5
\pwm_compare_blocks:1:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(6) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~0\, \data_interface|input_reg\(6), , , VCC)
-- \pwm_compare_blocks:1:pwm_x|LessThan0~12\ = CARRY((\pwm_compare_blocks:1:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:1:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:1:pwm_x|LessThan0~17\))))
-- \pwm_compare_blocks:1:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_compare_blocks:1:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:1:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:1:pwm_x|LessThan0~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:1:pwm_x|compare_value\(5),
	datab => \pwm_counter|counter_value\(5),
	datac => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:1:pwm_x|LessThan0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(6),
	cout0 => \pwm_compare_blocks:1:pwm_x|LessThan0~12\,
	cout1 => \pwm_compare_blocks:1:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X2_Y1_N6
\pwm_compare_blocks:1:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|compare_value\(7) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:1:pwm_x|update_data~0\, \data_interface|input_reg\(7), , , VCC)
-- \pwm_compare_blocks:1:pwm_x|LessThan0~7\ = CARRY((\pwm_counter|counter_value\(6) & (\pwm_compare_blocks:1:pwm_x|compare_value\(6) & !\pwm_compare_blocks:1:pwm_x|LessThan0~12\)) # (!\pwm_counter|counter_value\(6) & 
-- ((\pwm_compare_blocks:1:pwm_x|compare_value\(6)) # (!\pwm_compare_blocks:1:pwm_x|LessThan0~12\))))
-- \pwm_compare_blocks:1:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_counter|counter_value\(6) & (\pwm_compare_blocks:1:pwm_x|compare_value\(6) & !\pwm_compare_blocks:1:pwm_x|LessThan0~12COUT1_56\)) # (!\pwm_counter|counter_value\(6) & 
-- ((\pwm_compare_blocks:1:pwm_x|compare_value\(6)) # (!\pwm_compare_blocks:1:pwm_x|LessThan0~12COUT1_56\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(6),
	datab => \pwm_compare_blocks:1:pwm_x|compare_value\(6),
	datac => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:1:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:1:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:1:pwm_x|LessThan0~12\,
	cin1 => \pwm_compare_blocks:1:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:1:pwm_x|compare_value\(7),
	cout0 => \pwm_compare_blocks:1:pwm_x|LessThan0~7\,
	cout1 => \pwm_compare_blocks:1:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X2_Y1_N7
\pwm_compare_blocks:1:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:1:pwm_x|LessThan0~0_combout\ = (\pwm_compare_blocks:1:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:1:pwm_x|LessThan0~17\ & \pwm_compare_blocks:1:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:1:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:1:pwm_x|LessThan0~7COUT1_58\)) # (!\pwm_counter|counter_value\(7))))) # (!\pwm_compare_blocks:1:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:1:pwm_x|LessThan0~17\ & \pwm_compare_blocks:1:pwm_x|LessThan0~7\) # 
-- (\pwm_compare_blocks:1:pwm_x|LessThan0~17\ & \pwm_compare_blocks:1:pwm_x|LessThan0~7COUT1_58\) & !\pwm_counter|counter_value\(7)))))

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
	dataa => \pwm_compare_blocks:1:pwm_x|compare_value\(7),
	datad => \pwm_counter|counter_value\(7),
	cin => \pwm_compare_blocks:1:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:1:pwm_x|LessThan0~7\,
	cin1 => \pwm_compare_blocks:1:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:1:pwm_x|LessThan0~0_combout\);

-- Location: LC_X2_Y2_N5
\pwm_compare_blocks:2:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|pwm_pin4~0\ = (((\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # (!B3_pwm_out_sel))) # (!\pwm_compare_blocks:2:pwm_x|LessThan0~0_combout\)
-- \pwm_compare_blocks:2:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:2:pwm_x|pwm_pin4~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff5f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:2:pwm_x|LessThan0~0_combout\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:2:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X2_Y2_N4
\pwm_compare_blocks:2:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|pwm_pin3~0\ = (\pwm_compare_blocks:2:pwm_x|pwm_out_sel~regout\) # ((\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # ((!\pwm_compare_blocks:2:pwm_x|LessThan0~0_combout\)))
-- \pwm_compare_blocks:2:pwm_x|compare_value\(0) = DFFEAS(\pwm_compare_blocks:2:pwm_x|pwm_pin3~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:2:pwm_x|pwm_out_sel~regout\,
	datab => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datac => \data_interface|input_reg\(0),
	datad => \pwm_compare_blocks:2:pwm_x|LessThan0~0_combout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|pwm_pin3~0\,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(0));

-- Location: LC_X3_Y3_N0
\pwm_compare_blocks:2:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(1) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, \data_interface|input_reg\(1), , , VCC)
-- \pwm_compare_blocks:2:pwm_x|LessThan0~37\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:2:pwm_x|compare_value\(0))))
-- \pwm_compare_blocks:2:pwm_x|LessThan0~37COUT1_48\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:2:pwm_x|compare_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(0),
	datab => \pwm_compare_blocks:2:pwm_x|compare_value\(0),
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(1),
	cout0 => \pwm_compare_blocks:2:pwm_x|LessThan0~37\,
	cout1 => \pwm_compare_blocks:2:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X3_Y3_N1
\pwm_compare_blocks:2:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(2) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, \data_interface|input_reg\(2), , , VCC)
-- \pwm_compare_blocks:2:pwm_x|LessThan0~32\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:2:pwm_x|LessThan0~37\) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:2:pwm_x|compare_value\(1) & !\pwm_compare_blocks:2:pwm_x|LessThan0~37\)))
-- \pwm_compare_blocks:2:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:2:pwm_x|LessThan0~37COUT1_48\) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:2:pwm_x|compare_value\(1) & !\pwm_compare_blocks:2:pwm_x|LessThan0~37COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(1),
	datab => \pwm_compare_blocks:2:pwm_x|compare_value\(1),
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:2:pwm_x|LessThan0~37\,
	cin1 => \pwm_compare_blocks:2:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(2),
	cout0 => \pwm_compare_blocks:2:pwm_x|LessThan0~32\,
	cout1 => \pwm_compare_blocks:2:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X3_Y3_N2
\pwm_compare_blocks:2:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(3) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, \data_interface|input_reg\(3), , , VCC)
-- \pwm_compare_blocks:2:pwm_x|LessThan0~27\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:2:pwm_x|compare_value\(2) & !\pwm_compare_blocks:2:pwm_x|LessThan0~32\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:2:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:2:pwm_x|LessThan0~32\))))
-- \pwm_compare_blocks:2:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:2:pwm_x|compare_value\(2) & !\pwm_compare_blocks:2:pwm_x|LessThan0~32COUT1_50\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:2:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:2:pwm_x|LessThan0~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(2),
	datab => \pwm_compare_blocks:2:pwm_x|compare_value\(2),
	datac => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:2:pwm_x|LessThan0~32\,
	cin1 => \pwm_compare_blocks:2:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(3),
	cout0 => \pwm_compare_blocks:2:pwm_x|LessThan0~27\,
	cout1 => \pwm_compare_blocks:2:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X3_Y3_N3
\pwm_compare_blocks:2:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(4) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, \data_interface|input_reg\(4), , , VCC)
-- \pwm_compare_blocks:2:pwm_x|LessThan0~22\ = CARRY((\pwm_compare_blocks:2:pwm_x|compare_value\(3) & (\pwm_counter|counter_value\(3) & !\pwm_compare_blocks:2:pwm_x|LessThan0~27\)) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(3) & 
-- ((\pwm_counter|counter_value\(3)) # (!\pwm_compare_blocks:2:pwm_x|LessThan0~27\))))
-- \pwm_compare_blocks:2:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_compare_blocks:2:pwm_x|compare_value\(3) & (\pwm_counter|counter_value\(3) & !\pwm_compare_blocks:2:pwm_x|LessThan0~27COUT1_52\)) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(3) & 
-- ((\pwm_counter|counter_value\(3)) # (!\pwm_compare_blocks:2:pwm_x|LessThan0~27COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:2:pwm_x|compare_value\(3),
	datab => \pwm_counter|counter_value\(3),
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:2:pwm_x|LessThan0~27\,
	cin1 => \pwm_compare_blocks:2:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(4),
	cout0 => \pwm_compare_blocks:2:pwm_x|LessThan0~22\,
	cout1 => \pwm_compare_blocks:2:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X3_Y3_N4
\pwm_compare_blocks:2:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(5) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, \data_interface|input_reg\(5), , , VCC)
-- \pwm_compare_blocks:2:pwm_x|LessThan0~17\ = CARRY((\pwm_compare_blocks:2:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:2:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:2:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:2:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	datac => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:2:pwm_x|LessThan0~22\,
	cin1 => \pwm_compare_blocks:2:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(5),
	cout => \pwm_compare_blocks:2:pwm_x|LessThan0~17\);

-- Location: LC_X3_Y3_N5
\pwm_compare_blocks:2:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(6) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, \data_interface|input_reg\(6), , , VCC)
-- \pwm_compare_blocks:2:pwm_x|LessThan0~12\ = CARRY((\pwm_compare_blocks:2:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:2:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:2:pwm_x|LessThan0~17\))))
-- \pwm_compare_blocks:2:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_compare_blocks:2:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:2:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:2:pwm_x|LessThan0~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:2:pwm_x|compare_value\(5),
	datab => \pwm_counter|counter_value\(5),
	datac => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:2:pwm_x|LessThan0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(6),
	cout0 => \pwm_compare_blocks:2:pwm_x|LessThan0~12\,
	cout1 => \pwm_compare_blocks:2:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X3_Y3_N6
\pwm_compare_blocks:2:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|compare_value\(7) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:2:pwm_x|update_data~0\, \data_interface|input_reg\(7), , , VCC)
-- \pwm_compare_blocks:2:pwm_x|LessThan0~7\ = CARRY((\pwm_compare_blocks:2:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:2:pwm_x|LessThan0~12\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:2:pwm_x|LessThan0~12\)))
-- \pwm_compare_blocks:2:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_compare_blocks:2:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:2:pwm_x|LessThan0~12COUT1_56\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:2:pwm_x|LessThan0~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:2:pwm_x|compare_value\(6),
	datab => \pwm_counter|counter_value\(6),
	datac => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:2:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:2:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:2:pwm_x|LessThan0~12\,
	cin1 => \pwm_compare_blocks:2:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:2:pwm_x|compare_value\(7),
	cout0 => \pwm_compare_blocks:2:pwm_x|LessThan0~7\,
	cout1 => \pwm_compare_blocks:2:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X3_Y3_N7
\pwm_compare_blocks:2:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:2:pwm_x|LessThan0~0_combout\ = (\pwm_compare_blocks:2:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:2:pwm_x|LessThan0~17\ & \pwm_compare_blocks:2:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:2:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:2:pwm_x|LessThan0~7COUT1_58\)) # (!\pwm_counter|counter_value\(7))))) # (!\pwm_compare_blocks:2:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:2:pwm_x|LessThan0~17\ & \pwm_compare_blocks:2:pwm_x|LessThan0~7\) # 
-- (\pwm_compare_blocks:2:pwm_x|LessThan0~17\ & \pwm_compare_blocks:2:pwm_x|LessThan0~7COUT1_58\) & !\pwm_counter|counter_value\(7)))))

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
	cin => \pwm_compare_blocks:2:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:2:pwm_x|LessThan0~7\,
	cin1 => \pwm_compare_blocks:2:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:2:pwm_x|LessThan0~0_combout\);

-- Location: LC_X4_Y2_N0
\pwm_compare_blocks:3:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|pwm_pin4~0\ = (\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # (((!\pwm_compare_blocks:3:pwm_x|LessThan0~0_combout\) # (!B4_pwm_out_sel)))
-- \pwm_compare_blocks:3:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:3:pwm_x|pwm_pin4~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:3:pwm_x|LessThan0~0_combout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:3:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X4_Y2_N4
\pwm_compare_blocks:3:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|pwm_pin3~0\ = (\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # (((\pwm_compare_blocks:3:pwm_x|pwm_out_sel~regout\)) # (!\pwm_compare_blocks:3:pwm_x|LessThan0~0_combout\))
-- \pwm_compare_blocks:3:pwm_x|compare_value\(0) = DFFEAS(\pwm_compare_blocks:3:pwm_x|pwm_pin3~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbb",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datab => \pwm_compare_blocks:3:pwm_x|LessThan0~0_combout\,
	datac => \data_interface|input_reg\(0),
	datad => \pwm_compare_blocks:3:pwm_x|pwm_out_sel~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|pwm_pin3~0\,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(0));

-- Location: LC_X6_Y3_N0
\pwm_compare_blocks:3:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(1) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, \data_interface|input_reg\(1), , , VCC)
-- \pwm_compare_blocks:3:pwm_x|LessThan0~37\ = CARRY((\pwm_compare_blocks:3:pwm_x|compare_value\(0) & (!\pwm_counter|counter_value\(0))))
-- \pwm_compare_blocks:3:pwm_x|LessThan0~37COUT1_48\ = CARRY((\pwm_compare_blocks:3:pwm_x|compare_value\(0) & (!\pwm_counter|counter_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:3:pwm_x|compare_value\(0),
	datab => \pwm_counter|counter_value\(0),
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(1),
	cout0 => \pwm_compare_blocks:3:pwm_x|LessThan0~37\,
	cout1 => \pwm_compare_blocks:3:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X6_Y3_N1
\pwm_compare_blocks:3:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(2) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, \data_interface|input_reg\(2), , , VCC)
-- \pwm_compare_blocks:3:pwm_x|LessThan0~32\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~37\) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:3:pwm_x|compare_value\(1) & !\pwm_compare_blocks:3:pwm_x|LessThan0~37\)))
-- \pwm_compare_blocks:3:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~37COUT1_48\) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:3:pwm_x|compare_value\(1) & !\pwm_compare_blocks:3:pwm_x|LessThan0~37COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(1),
	datab => \pwm_compare_blocks:3:pwm_x|compare_value\(1),
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:3:pwm_x|LessThan0~37\,
	cin1 => \pwm_compare_blocks:3:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(2),
	cout0 => \pwm_compare_blocks:3:pwm_x|LessThan0~32\,
	cout1 => \pwm_compare_blocks:3:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X6_Y3_N2
\pwm_compare_blocks:3:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(3) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, \data_interface|input_reg\(3), , , VCC)
-- \pwm_compare_blocks:3:pwm_x|LessThan0~27\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:3:pwm_x|compare_value\(2) & !\pwm_compare_blocks:3:pwm_x|LessThan0~32\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:3:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:3:pwm_x|LessThan0~32\))))
-- \pwm_compare_blocks:3:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:3:pwm_x|compare_value\(2) & !\pwm_compare_blocks:3:pwm_x|LessThan0~32COUT1_50\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:3:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:3:pwm_x|LessThan0~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(2),
	datab => \pwm_compare_blocks:3:pwm_x|compare_value\(2),
	datac => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:3:pwm_x|LessThan0~32\,
	cin1 => \pwm_compare_blocks:3:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(3),
	cout0 => \pwm_compare_blocks:3:pwm_x|LessThan0~27\,
	cout1 => \pwm_compare_blocks:3:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X6_Y3_N3
\pwm_compare_blocks:3:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(4) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, \data_interface|input_reg\(4), , , VCC)
-- \pwm_compare_blocks:3:pwm_x|LessThan0~22\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~27\) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:3:pwm_x|compare_value\(3) & !\pwm_compare_blocks:3:pwm_x|LessThan0~27\)))
-- \pwm_compare_blocks:3:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:3:pwm_x|compare_value\(3) & !\pwm_compare_blocks:3:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:3:pwm_x|compare_value\(3),
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:3:pwm_x|LessThan0~27\,
	cin1 => \pwm_compare_blocks:3:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(4),
	cout0 => \pwm_compare_blocks:3:pwm_x|LessThan0~22\,
	cout1 => \pwm_compare_blocks:3:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X6_Y3_N4
\pwm_compare_blocks:3:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(5) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, \data_interface|input_reg\(5), , , VCC)
-- \pwm_compare_blocks:3:pwm_x|LessThan0~17\ = CARRY((\pwm_compare_blocks:3:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:3:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:3:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	datac => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:3:pwm_x|LessThan0~22\,
	cin1 => \pwm_compare_blocks:3:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(5),
	cout => \pwm_compare_blocks:3:pwm_x|LessThan0~17\);

-- Location: LC_X6_Y3_N5
\pwm_compare_blocks:3:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(6) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, \data_interface|input_reg\(6), , , VCC)
-- \pwm_compare_blocks:3:pwm_x|LessThan0~12\ = CARRY((\pwm_compare_blocks:3:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:3:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:3:pwm_x|LessThan0~17\))))
-- \pwm_compare_blocks:3:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_compare_blocks:3:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:3:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:3:pwm_x|LessThan0~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:3:pwm_x|compare_value\(5),
	datab => \pwm_counter|counter_value\(5),
	datac => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:3:pwm_x|LessThan0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(6),
	cout0 => \pwm_compare_blocks:3:pwm_x|LessThan0~12\,
	cout1 => \pwm_compare_blocks:3:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X6_Y3_N6
\pwm_compare_blocks:3:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|compare_value\(7) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:3:pwm_x|update_data~0\, \data_interface|input_reg\(7), , , VCC)
-- \pwm_compare_blocks:3:pwm_x|LessThan0~7\ = CARRY((\pwm_compare_blocks:3:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~12\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:3:pwm_x|LessThan0~12\)))
-- \pwm_compare_blocks:3:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_compare_blocks:3:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~12COUT1_56\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:3:pwm_x|LessThan0~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:3:pwm_x|compare_value\(6),
	datab => \pwm_counter|counter_value\(6),
	datac => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:3:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:3:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:3:pwm_x|LessThan0~12\,
	cin1 => \pwm_compare_blocks:3:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:3:pwm_x|compare_value\(7),
	cout0 => \pwm_compare_blocks:3:pwm_x|LessThan0~7\,
	cout1 => \pwm_compare_blocks:3:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X6_Y3_N7
\pwm_compare_blocks:3:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:3:pwm_x|LessThan0~0_combout\ = (\pwm_compare_blocks:3:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:3:pwm_x|LessThan0~17\ & \pwm_compare_blocks:3:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:3:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:3:pwm_x|LessThan0~7COUT1_58\))) # (!\pwm_counter|counter_value\(7)))) # (!\pwm_compare_blocks:3:pwm_x|compare_value\(7) & (!\pwm_counter|counter_value\(7) & ((!\pwm_compare_blocks:3:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:3:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:3:pwm_x|LessThan0~17\ & \pwm_compare_blocks:3:pwm_x|LessThan0~7COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "b2b2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:3:pwm_x|compare_value\(7),
	datab => \pwm_counter|counter_value\(7),
	cin => \pwm_compare_blocks:3:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:3:pwm_x|LessThan0~7\,
	cin1 => \pwm_compare_blocks:3:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:3:pwm_x|LessThan0~0_combout\);

-- Location: LC_X5_Y3_N6
\pwm_compare_blocks:4:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:4:pwm_x|pwm_pin4~0\ = (((\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # (!B5_pwm_out_sel)) # (!\pwm_compare_blocks:4:pwm_x|LessThan0~0_combout\))
-- \pwm_compare_blocks:4:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:4:pwm_x|pwm_pin4~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:4:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_compare_blocks:4:pwm_x|LessThan0~0_combout\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:4:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:4:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:4:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X5_Y3_N2
\pwm_compare_blocks:4:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:4:pwm_x|pwm_pin3~0\ = (\pwm_compare_blocks:4:pwm_x|pwm_out_sel~regout\) # (((\pwm_compare_blocks:11:pwm_x|reset_internal~regout\)) # (!\pwm_compare_blocks:4:pwm_x|LessThan0~0_combout\))
-- \pwm_compare_blocks:4:pwm_x|compare_value\(0) = DFFEAS(\pwm_compare_blocks:4:pwm_x|pwm_pin3~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:4:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbb",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:4:pwm_x|pwm_out_sel~regout\,
	datab => \pwm_compare_blocks:4:pwm_x|LessThan0~0_combout\,
	datac => \data_interface|input_reg\(0),
	datad => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:4:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:4:pwm_x|pwm_pin3~0\,
	regout => \pwm_compare_blocks:4:pwm_x|compare_value\(0));

-- Location: LC_X2_Y4_N0
\pwm_compare_blocks:4:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:4:pwm_x|compare_value\(1) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:4:pwm_x|update_data~0\, \data_interface|input_reg\(1), , , VCC)
-- \pwm_compare_blocks:4:pwm_x|LessThan0~37\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:4:pwm_x|compare_value\(0))))
-- \pwm_compare_blocks:4:pwm_x|LessThan0~37COUT1_48\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:4:pwm_x|compare_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(0),
	datab => \pwm_compare_blocks:4:pwm_x|compare_value\(0),
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:4:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:4:pwm_x|compare_value\(1),
	cout0 => \pwm_compare_blocks:4:pwm_x|LessThan0~37\,
	cout1 => \pwm_compare_blocks:4:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X2_Y4_N1
\pwm_compare_blocks:4:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:4:pwm_x|compare_value\(2) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:4:pwm_x|update_data~0\, \data_interface|input_reg\(2), , , VCC)
-- \pwm_compare_blocks:4:pwm_x|LessThan0~32\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:4:pwm_x|LessThan0~37\) # (!\pwm_compare_blocks:4:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:4:pwm_x|compare_value\(1) & !\pwm_compare_blocks:4:pwm_x|LessThan0~37\)))
-- \pwm_compare_blocks:4:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:4:pwm_x|LessThan0~37COUT1_48\) # (!\pwm_compare_blocks:4:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:4:pwm_x|compare_value\(1) & !\pwm_compare_blocks:4:pwm_x|LessThan0~37COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(1),
	datab => \pwm_compare_blocks:4:pwm_x|compare_value\(1),
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:4:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:4:pwm_x|LessThan0~37\,
	cin1 => \pwm_compare_blocks:4:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:4:pwm_x|compare_value\(2),
	cout0 => \pwm_compare_blocks:4:pwm_x|LessThan0~32\,
	cout1 => \pwm_compare_blocks:4:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X2_Y4_N2
\pwm_compare_blocks:4:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:4:pwm_x|compare_value\(3) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:4:pwm_x|update_data~0\, \data_interface|input_reg\(3), , , VCC)
-- \pwm_compare_blocks:4:pwm_x|LessThan0~27\ = CARRY((\pwm_compare_blocks:4:pwm_x|compare_value\(2) & ((!\pwm_compare_blocks:4:pwm_x|LessThan0~32\) # (!\pwm_counter|counter_value\(2)))) # (!\pwm_compare_blocks:4:pwm_x|compare_value\(2) & 
-- (!\pwm_counter|counter_value\(2) & !\pwm_compare_blocks:4:pwm_x|LessThan0~32\)))
-- \pwm_compare_blocks:4:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_compare_blocks:4:pwm_x|compare_value\(2) & ((!\pwm_compare_blocks:4:pwm_x|LessThan0~32COUT1_50\) # (!\pwm_counter|counter_value\(2)))) # (!\pwm_compare_blocks:4:pwm_x|compare_value\(2) & 
-- (!\pwm_counter|counter_value\(2) & !\pwm_compare_blocks:4:pwm_x|LessThan0~32COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:4:pwm_x|compare_value\(2),
	datab => \pwm_counter|counter_value\(2),
	datac => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:4:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:4:pwm_x|LessThan0~32\,
	cin1 => \pwm_compare_blocks:4:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:4:pwm_x|compare_value\(3),
	cout0 => \pwm_compare_blocks:4:pwm_x|LessThan0~27\,
	cout1 => \pwm_compare_blocks:4:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X2_Y4_N3
\pwm_compare_blocks:4:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:4:pwm_x|compare_value\(4) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:4:pwm_x|update_data~0\, \data_interface|input_reg\(4), , , VCC)
-- \pwm_compare_blocks:4:pwm_x|LessThan0~22\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:4:pwm_x|LessThan0~27\) # (!\pwm_compare_blocks:4:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:4:pwm_x|compare_value\(3) & !\pwm_compare_blocks:4:pwm_x|LessThan0~27\)))
-- \pwm_compare_blocks:4:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:4:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:4:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:4:pwm_x|compare_value\(3) & !\pwm_compare_blocks:4:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:4:pwm_x|compare_value\(3),
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:4:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:4:pwm_x|LessThan0~27\,
	cin1 => \pwm_compare_blocks:4:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:4:pwm_x|compare_value\(4),
	cout0 => \pwm_compare_blocks:4:pwm_x|LessThan0~22\,
	cout1 => \pwm_compare_blocks:4:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X2_Y4_N4
\pwm_compare_blocks:4:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:4:pwm_x|compare_value\(5) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:4:pwm_x|update_data~0\, \data_interface|input_reg\(5), , , VCC)
-- \pwm_compare_blocks:4:pwm_x|LessThan0~17\ = CARRY((\pwm_compare_blocks:4:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:4:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:4:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:4:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:4:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	datac => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:4:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:4:pwm_x|LessThan0~22\,
	cin1 => \pwm_compare_blocks:4:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:4:pwm_x|compare_value\(5),
	cout => \pwm_compare_blocks:4:pwm_x|LessThan0~17\);

-- Location: LC_X2_Y4_N5
\pwm_compare_blocks:4:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:4:pwm_x|compare_value\(6) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:4:pwm_x|update_data~0\, \data_interface|input_reg\(6), , , VCC)
-- \pwm_compare_blocks:4:pwm_x|LessThan0~12\ = CARRY((\pwm_compare_blocks:4:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:4:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:4:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:4:pwm_x|LessThan0~17\))))
-- \pwm_compare_blocks:4:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_compare_blocks:4:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:4:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:4:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:4:pwm_x|LessThan0~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:4:pwm_x|compare_value\(5),
	datab => \pwm_counter|counter_value\(5),
	datac => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:4:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:4:pwm_x|LessThan0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:4:pwm_x|compare_value\(6),
	cout0 => \pwm_compare_blocks:4:pwm_x|LessThan0~12\,
	cout1 => \pwm_compare_blocks:4:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X2_Y4_N6
\pwm_compare_blocks:4:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:4:pwm_x|compare_value\(7) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:4:pwm_x|update_data~0\, \data_interface|input_reg\(7), , , VCC)
-- \pwm_compare_blocks:4:pwm_x|LessThan0~7\ = CARRY((\pwm_compare_blocks:4:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:4:pwm_x|LessThan0~12\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:4:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:4:pwm_x|LessThan0~12\)))
-- \pwm_compare_blocks:4:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_compare_blocks:4:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:4:pwm_x|LessThan0~12COUT1_56\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:4:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:4:pwm_x|LessThan0~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:4:pwm_x|compare_value\(6),
	datab => \pwm_counter|counter_value\(6),
	datac => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:4:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:4:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:4:pwm_x|LessThan0~12\,
	cin1 => \pwm_compare_blocks:4:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:4:pwm_x|compare_value\(7),
	cout0 => \pwm_compare_blocks:4:pwm_x|LessThan0~7\,
	cout1 => \pwm_compare_blocks:4:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X2_Y4_N7
\pwm_compare_blocks:4:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:4:pwm_x|LessThan0~0_combout\ = (\pwm_compare_blocks:4:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:4:pwm_x|LessThan0~17\ & \pwm_compare_blocks:4:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:4:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:4:pwm_x|LessThan0~7COUT1_58\)) # (!\pwm_counter|counter_value\(7))))) # (!\pwm_compare_blocks:4:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:4:pwm_x|LessThan0~17\ & \pwm_compare_blocks:4:pwm_x|LessThan0~7\) # 
-- (\pwm_compare_blocks:4:pwm_x|LessThan0~17\ & \pwm_compare_blocks:4:pwm_x|LessThan0~7COUT1_58\) & !\pwm_counter|counter_value\(7)))))

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
	dataa => \pwm_compare_blocks:4:pwm_x|compare_value\(7),
	datad => \pwm_counter|counter_value\(7),
	cin => \pwm_compare_blocks:4:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:4:pwm_x|LessThan0~7\,
	cin1 => \pwm_compare_blocks:4:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:4:pwm_x|LessThan0~0_combout\);

-- Location: LC_X4_Y3_N8
\pwm_compare_blocks:5:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:5:pwm_x|pwm_pin4~0\ = ((\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # ((!\pwm_compare_blocks:5:pwm_x|LessThan0~0_combout\) # (!B6_pwm_out_sel)))
-- \pwm_compare_blocks:5:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:5:pwm_x|pwm_pin4~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:5:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:5:pwm_x|LessThan0~0_combout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:5:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:5:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:5:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X4_Y3_N1
\pwm_compare_blocks:5:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:5:pwm_x|pwm_pin3~0\ = (\pwm_compare_blocks:5:pwm_x|pwm_out_sel~regout\) # ((\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # ((!\pwm_compare_blocks:5:pwm_x|LessThan0~0_combout\)))
-- \pwm_compare_blocks:5:pwm_x|compare_value\(0) = DFFEAS(\pwm_compare_blocks:5:pwm_x|pwm_pin3~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:5:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:5:pwm_x|pwm_out_sel~regout\,
	datab => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datac => \data_interface|input_reg\(0),
	datad => \pwm_compare_blocks:5:pwm_x|LessThan0~0_combout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:5:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:5:pwm_x|pwm_pin3~0\,
	regout => \pwm_compare_blocks:5:pwm_x|compare_value\(0));

-- Location: LC_X2_Y3_N0
\pwm_compare_blocks:5:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:5:pwm_x|compare_value\(1) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:5:pwm_x|update_data~0\, \data_interface|input_reg\(1), , , VCC)
-- \pwm_compare_blocks:5:pwm_x|LessThan0~37\ = CARRY((\pwm_compare_blocks:5:pwm_x|compare_value\(0) & (!\pwm_counter|counter_value\(0))))
-- \pwm_compare_blocks:5:pwm_x|LessThan0~37COUT1_48\ = CARRY((\pwm_compare_blocks:5:pwm_x|compare_value\(0) & (!\pwm_counter|counter_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:5:pwm_x|compare_value\(0),
	datab => \pwm_counter|counter_value\(0),
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:5:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:5:pwm_x|compare_value\(1),
	cout0 => \pwm_compare_blocks:5:pwm_x|LessThan0~37\,
	cout1 => \pwm_compare_blocks:5:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X2_Y3_N1
\pwm_compare_blocks:5:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:5:pwm_x|compare_value\(2) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:5:pwm_x|update_data~0\, \data_interface|input_reg\(2), , , VCC)
-- \pwm_compare_blocks:5:pwm_x|LessThan0~32\ = CARRY((\pwm_compare_blocks:5:pwm_x|compare_value\(1) & (\pwm_counter|counter_value\(1) & !\pwm_compare_blocks:5:pwm_x|LessThan0~37\)) # (!\pwm_compare_blocks:5:pwm_x|compare_value\(1) & 
-- ((\pwm_counter|counter_value\(1)) # (!\pwm_compare_blocks:5:pwm_x|LessThan0~37\))))
-- \pwm_compare_blocks:5:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_compare_blocks:5:pwm_x|compare_value\(1) & (\pwm_counter|counter_value\(1) & !\pwm_compare_blocks:5:pwm_x|LessThan0~37COUT1_48\)) # (!\pwm_compare_blocks:5:pwm_x|compare_value\(1) & 
-- ((\pwm_counter|counter_value\(1)) # (!\pwm_compare_blocks:5:pwm_x|LessThan0~37COUT1_48\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:5:pwm_x|compare_value\(1),
	datab => \pwm_counter|counter_value\(1),
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:5:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:5:pwm_x|LessThan0~37\,
	cin1 => \pwm_compare_blocks:5:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:5:pwm_x|compare_value\(2),
	cout0 => \pwm_compare_blocks:5:pwm_x|LessThan0~32\,
	cout1 => \pwm_compare_blocks:5:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X2_Y3_N2
\pwm_compare_blocks:5:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:5:pwm_x|compare_value\(3) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:5:pwm_x|update_data~0\, \data_interface|input_reg\(3), , , VCC)
-- \pwm_compare_blocks:5:pwm_x|LessThan0~27\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:5:pwm_x|compare_value\(2) & !\pwm_compare_blocks:5:pwm_x|LessThan0~32\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:5:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:5:pwm_x|LessThan0~32\))))
-- \pwm_compare_blocks:5:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:5:pwm_x|compare_value\(2) & !\pwm_compare_blocks:5:pwm_x|LessThan0~32COUT1_50\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:5:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:5:pwm_x|LessThan0~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(2),
	datab => \pwm_compare_blocks:5:pwm_x|compare_value\(2),
	datac => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:5:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:5:pwm_x|LessThan0~32\,
	cin1 => \pwm_compare_blocks:5:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:5:pwm_x|compare_value\(3),
	cout0 => \pwm_compare_blocks:5:pwm_x|LessThan0~27\,
	cout1 => \pwm_compare_blocks:5:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X2_Y3_N3
\pwm_compare_blocks:5:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:5:pwm_x|compare_value\(4) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:5:pwm_x|update_data~0\, \data_interface|input_reg\(4), , , VCC)
-- \pwm_compare_blocks:5:pwm_x|LessThan0~22\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:5:pwm_x|LessThan0~27\) # (!\pwm_compare_blocks:5:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:5:pwm_x|compare_value\(3) & !\pwm_compare_blocks:5:pwm_x|LessThan0~27\)))
-- \pwm_compare_blocks:5:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:5:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:5:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:5:pwm_x|compare_value\(3) & !\pwm_compare_blocks:5:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:5:pwm_x|compare_value\(3),
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:5:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:5:pwm_x|LessThan0~27\,
	cin1 => \pwm_compare_blocks:5:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:5:pwm_x|compare_value\(4),
	cout0 => \pwm_compare_blocks:5:pwm_x|LessThan0~22\,
	cout1 => \pwm_compare_blocks:5:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X2_Y3_N4
\pwm_compare_blocks:5:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:5:pwm_x|compare_value\(5) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:5:pwm_x|update_data~0\, \data_interface|input_reg\(5), , , VCC)
-- \pwm_compare_blocks:5:pwm_x|LessThan0~17\ = CARRY((\pwm_compare_blocks:5:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:5:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:5:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:5:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:5:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	datac => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:5:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:5:pwm_x|LessThan0~22\,
	cin1 => \pwm_compare_blocks:5:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:5:pwm_x|compare_value\(5),
	cout => \pwm_compare_blocks:5:pwm_x|LessThan0~17\);

-- Location: LC_X2_Y3_N5
\pwm_compare_blocks:5:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:5:pwm_x|compare_value\(6) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:5:pwm_x|update_data~0\, \data_interface|input_reg\(6), , , VCC)
-- \pwm_compare_blocks:5:pwm_x|LessThan0~12\ = CARRY((\pwm_compare_blocks:5:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:5:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:5:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:5:pwm_x|LessThan0~17\))))
-- \pwm_compare_blocks:5:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_compare_blocks:5:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:5:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:5:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:5:pwm_x|LessThan0~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:5:pwm_x|compare_value\(5),
	datab => \pwm_counter|counter_value\(5),
	datac => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:5:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:5:pwm_x|LessThan0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:5:pwm_x|compare_value\(6),
	cout0 => \pwm_compare_blocks:5:pwm_x|LessThan0~12\,
	cout1 => \pwm_compare_blocks:5:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X2_Y3_N6
\pwm_compare_blocks:5:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:5:pwm_x|compare_value\(7) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:5:pwm_x|update_data~0\, \data_interface|input_reg\(7), , , VCC)
-- \pwm_compare_blocks:5:pwm_x|LessThan0~7\ = CARRY((\pwm_compare_blocks:5:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:5:pwm_x|LessThan0~12\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:5:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:5:pwm_x|LessThan0~12\)))
-- \pwm_compare_blocks:5:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_compare_blocks:5:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:5:pwm_x|LessThan0~12COUT1_56\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:5:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:5:pwm_x|LessThan0~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:5:pwm_x|compare_value\(6),
	datab => \pwm_counter|counter_value\(6),
	datac => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:5:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:5:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:5:pwm_x|LessThan0~12\,
	cin1 => \pwm_compare_blocks:5:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:5:pwm_x|compare_value\(7),
	cout0 => \pwm_compare_blocks:5:pwm_x|LessThan0~7\,
	cout1 => \pwm_compare_blocks:5:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X2_Y3_N7
\pwm_compare_blocks:5:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:5:pwm_x|LessThan0~0_combout\ = (\pwm_compare_blocks:5:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:5:pwm_x|LessThan0~17\ & \pwm_compare_blocks:5:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:5:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:5:pwm_x|LessThan0~7COUT1_58\)) # (!\pwm_counter|counter_value\(7))))) # (!\pwm_compare_blocks:5:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:5:pwm_x|LessThan0~17\ & \pwm_compare_blocks:5:pwm_x|LessThan0~7\) # 
-- (\pwm_compare_blocks:5:pwm_x|LessThan0~17\ & \pwm_compare_blocks:5:pwm_x|LessThan0~7COUT1_58\) & !\pwm_counter|counter_value\(7)))))

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
	dataa => \pwm_compare_blocks:5:pwm_x|compare_value\(7),
	datad => \pwm_counter|counter_value\(7),
	cin => \pwm_compare_blocks:5:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:5:pwm_x|LessThan0~7\,
	cin1 => \pwm_compare_blocks:5:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:5:pwm_x|LessThan0~0_combout\);

-- Location: LC_X6_Y2_N6
\pwm_compare_blocks:6:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:6:pwm_x|pwm_pin4~0\ = (\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # (((!\pwm_compare_blocks:6:pwm_x|LessThan0~0_combout\) # (!B7_pwm_out_sel)))
-- \pwm_compare_blocks:6:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:6:pwm_x|pwm_pin4~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:6:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:6:pwm_x|LessThan0~0_combout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:6:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:6:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:6:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X6_Y2_N5
\pwm_compare_blocks:6:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:6:pwm_x|pwm_pin3~0\ = (\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # (((\pwm_compare_blocks:6:pwm_x|pwm_out_sel~regout\)) # (!\pwm_compare_blocks:6:pwm_x|LessThan0~0_combout\))
-- \pwm_compare_blocks:6:pwm_x|compare_value\(0) = DFFEAS(\pwm_compare_blocks:6:pwm_x|pwm_pin3~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:6:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbb",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datab => \pwm_compare_blocks:6:pwm_x|LessThan0~0_combout\,
	datac => \data_interface|input_reg\(0),
	datad => \pwm_compare_blocks:6:pwm_x|pwm_out_sel~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:6:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:6:pwm_x|pwm_pin3~0\,
	regout => \pwm_compare_blocks:6:pwm_x|compare_value\(0));

-- Location: LC_X5_Y4_N0
\pwm_compare_blocks:6:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:6:pwm_x|compare_value\(1) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:6:pwm_x|update_data~0\, \data_interface|input_reg\(1), , , VCC)
-- \pwm_compare_blocks:6:pwm_x|LessThan0~37\ = CARRY((\pwm_compare_blocks:6:pwm_x|compare_value\(0) & (!\pwm_counter|counter_value\(0))))
-- \pwm_compare_blocks:6:pwm_x|LessThan0~37COUT1_48\ = CARRY((\pwm_compare_blocks:6:pwm_x|compare_value\(0) & (!\pwm_counter|counter_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:6:pwm_x|compare_value\(0),
	datab => \pwm_counter|counter_value\(0),
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:6:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:6:pwm_x|compare_value\(1),
	cout0 => \pwm_compare_blocks:6:pwm_x|LessThan0~37\,
	cout1 => \pwm_compare_blocks:6:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X5_Y4_N1
\pwm_compare_blocks:6:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:6:pwm_x|compare_value\(2) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:6:pwm_x|update_data~0\, \data_interface|input_reg\(2), , , VCC)
-- \pwm_compare_blocks:6:pwm_x|LessThan0~32\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:6:pwm_x|LessThan0~37\) # (!\pwm_compare_blocks:6:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:6:pwm_x|compare_value\(1) & !\pwm_compare_blocks:6:pwm_x|LessThan0~37\)))
-- \pwm_compare_blocks:6:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:6:pwm_x|LessThan0~37COUT1_48\) # (!\pwm_compare_blocks:6:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:6:pwm_x|compare_value\(1) & !\pwm_compare_blocks:6:pwm_x|LessThan0~37COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(1),
	datab => \pwm_compare_blocks:6:pwm_x|compare_value\(1),
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:6:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:6:pwm_x|LessThan0~37\,
	cin1 => \pwm_compare_blocks:6:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:6:pwm_x|compare_value\(2),
	cout0 => \pwm_compare_blocks:6:pwm_x|LessThan0~32\,
	cout1 => \pwm_compare_blocks:6:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X5_Y4_N2
\pwm_compare_blocks:6:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:6:pwm_x|compare_value\(3) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:6:pwm_x|update_data~0\, \data_interface|input_reg\(3), , , VCC)
-- \pwm_compare_blocks:6:pwm_x|LessThan0~27\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:6:pwm_x|compare_value\(2) & !\pwm_compare_blocks:6:pwm_x|LessThan0~32\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:6:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:6:pwm_x|LessThan0~32\))))
-- \pwm_compare_blocks:6:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:6:pwm_x|compare_value\(2) & !\pwm_compare_blocks:6:pwm_x|LessThan0~32COUT1_50\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:6:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:6:pwm_x|LessThan0~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(2),
	datab => \pwm_compare_blocks:6:pwm_x|compare_value\(2),
	datac => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:6:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:6:pwm_x|LessThan0~32\,
	cin1 => \pwm_compare_blocks:6:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:6:pwm_x|compare_value\(3),
	cout0 => \pwm_compare_blocks:6:pwm_x|LessThan0~27\,
	cout1 => \pwm_compare_blocks:6:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X5_Y4_N3
\pwm_compare_blocks:6:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:6:pwm_x|compare_value\(4) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:6:pwm_x|update_data~0\, \data_interface|input_reg\(4), , , VCC)
-- \pwm_compare_blocks:6:pwm_x|LessThan0~22\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:6:pwm_x|LessThan0~27\) # (!\pwm_compare_blocks:6:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:6:pwm_x|compare_value\(3) & !\pwm_compare_blocks:6:pwm_x|LessThan0~27\)))
-- \pwm_compare_blocks:6:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:6:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:6:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:6:pwm_x|compare_value\(3) & !\pwm_compare_blocks:6:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:6:pwm_x|compare_value\(3),
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:6:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:6:pwm_x|LessThan0~27\,
	cin1 => \pwm_compare_blocks:6:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:6:pwm_x|compare_value\(4),
	cout0 => \pwm_compare_blocks:6:pwm_x|LessThan0~22\,
	cout1 => \pwm_compare_blocks:6:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X5_Y4_N4
\pwm_compare_blocks:6:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:6:pwm_x|compare_value\(5) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:6:pwm_x|update_data~0\, \data_interface|input_reg\(5), , , VCC)
-- \pwm_compare_blocks:6:pwm_x|LessThan0~17\ = CARRY((\pwm_compare_blocks:6:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:6:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:6:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:6:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:6:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	datac => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:6:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:6:pwm_x|LessThan0~22\,
	cin1 => \pwm_compare_blocks:6:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:6:pwm_x|compare_value\(5),
	cout => \pwm_compare_blocks:6:pwm_x|LessThan0~17\);

-- Location: LC_X5_Y4_N5
\pwm_compare_blocks:6:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:6:pwm_x|compare_value\(6) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:6:pwm_x|update_data~0\, \data_interface|input_reg\(6), , , VCC)
-- \pwm_compare_blocks:6:pwm_x|LessThan0~12\ = CARRY((\pwm_counter|counter_value\(5) & ((!\pwm_compare_blocks:6:pwm_x|LessThan0~17\) # (!\pwm_compare_blocks:6:pwm_x|compare_value\(5)))) # (!\pwm_counter|counter_value\(5) & 
-- (!\pwm_compare_blocks:6:pwm_x|compare_value\(5) & !\pwm_compare_blocks:6:pwm_x|LessThan0~17\)))
-- \pwm_compare_blocks:6:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_counter|counter_value\(5) & ((!\pwm_compare_blocks:6:pwm_x|LessThan0~17\) # (!\pwm_compare_blocks:6:pwm_x|compare_value\(5)))) # (!\pwm_counter|counter_value\(5) & 
-- (!\pwm_compare_blocks:6:pwm_x|compare_value\(5) & !\pwm_compare_blocks:6:pwm_x|LessThan0~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(5),
	datab => \pwm_compare_blocks:6:pwm_x|compare_value\(5),
	datac => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:6:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:6:pwm_x|LessThan0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:6:pwm_x|compare_value\(6),
	cout0 => \pwm_compare_blocks:6:pwm_x|LessThan0~12\,
	cout1 => \pwm_compare_blocks:6:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X5_Y4_N6
\pwm_compare_blocks:6:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:6:pwm_x|compare_value\(7) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:6:pwm_x|update_data~0\, \data_interface|input_reg\(7), , , VCC)
-- \pwm_compare_blocks:6:pwm_x|LessThan0~7\ = CARRY((\pwm_compare_blocks:6:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:6:pwm_x|LessThan0~12\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:6:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:6:pwm_x|LessThan0~12\)))
-- \pwm_compare_blocks:6:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_compare_blocks:6:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:6:pwm_x|LessThan0~12COUT1_56\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:6:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:6:pwm_x|LessThan0~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:6:pwm_x|compare_value\(6),
	datab => \pwm_counter|counter_value\(6),
	datac => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:6:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:6:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:6:pwm_x|LessThan0~12\,
	cin1 => \pwm_compare_blocks:6:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:6:pwm_x|compare_value\(7),
	cout0 => \pwm_compare_blocks:6:pwm_x|LessThan0~7\,
	cout1 => \pwm_compare_blocks:6:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X5_Y4_N7
\pwm_compare_blocks:6:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:6:pwm_x|LessThan0~0_combout\ = (\pwm_compare_blocks:6:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:6:pwm_x|LessThan0~17\ & \pwm_compare_blocks:6:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:6:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:6:pwm_x|LessThan0~7COUT1_58\))) # (!\pwm_counter|counter_value\(7)))) # (!\pwm_compare_blocks:6:pwm_x|compare_value\(7) & (!\pwm_counter|counter_value\(7) & ((!\pwm_compare_blocks:6:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:6:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:6:pwm_x|LessThan0~17\ & \pwm_compare_blocks:6:pwm_x|LessThan0~7COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "b2b2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:6:pwm_x|compare_value\(7),
	datab => \pwm_counter|counter_value\(7),
	cin => \pwm_compare_blocks:6:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:6:pwm_x|LessThan0~7\,
	cin1 => \pwm_compare_blocks:6:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:6:pwm_x|LessThan0~0_combout\);

-- Location: LC_X7_Y1_N4
\pwm_compare_blocks:7:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:7:pwm_x|pwm_pin4~0\ = (\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # (((!\pwm_compare_blocks:7:pwm_x|LessThan0~0_combout\) # (!B8_pwm_out_sel)))
-- \pwm_compare_blocks:7:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:7:pwm_x|pwm_pin4~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:7:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:7:pwm_x|LessThan0~0_combout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:7:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:7:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:7:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X7_Y1_N5
\pwm_compare_blocks:7:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:7:pwm_x|pwm_pin3~0\ = (\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # (((\pwm_compare_blocks:7:pwm_x|pwm_out_sel~regout\)) # (!\pwm_compare_blocks:7:pwm_x|LessThan0~0_combout\))
-- \pwm_compare_blocks:7:pwm_x|compare_value\(0) = DFFEAS(\pwm_compare_blocks:7:pwm_x|pwm_pin3~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:7:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbb",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datab => \pwm_compare_blocks:7:pwm_x|LessThan0~0_combout\,
	datac => \data_interface|input_reg\(0),
	datad => \pwm_compare_blocks:7:pwm_x|pwm_out_sel~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:7:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:7:pwm_x|pwm_pin3~0\,
	regout => \pwm_compare_blocks:7:pwm_x|compare_value\(0));

-- Location: LC_X4_Y1_N0
\pwm_compare_blocks:7:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:7:pwm_x|compare_value\(1) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:7:pwm_x|update_data~0\, \data_interface|input_reg\(1), , , VCC)
-- \pwm_compare_blocks:7:pwm_x|LessThan0~37\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:7:pwm_x|compare_value\(0))))
-- \pwm_compare_blocks:7:pwm_x|LessThan0~37COUT1_48\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:7:pwm_x|compare_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(0),
	datab => \pwm_compare_blocks:7:pwm_x|compare_value\(0),
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:7:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:7:pwm_x|compare_value\(1),
	cout0 => \pwm_compare_blocks:7:pwm_x|LessThan0~37\,
	cout1 => \pwm_compare_blocks:7:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X4_Y1_N1
\pwm_compare_blocks:7:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:7:pwm_x|compare_value\(2) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:7:pwm_x|update_data~0\, \data_interface|input_reg\(2), , , VCC)
-- \pwm_compare_blocks:7:pwm_x|LessThan0~32\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:7:pwm_x|LessThan0~37\) # (!\pwm_compare_blocks:7:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:7:pwm_x|compare_value\(1) & !\pwm_compare_blocks:7:pwm_x|LessThan0~37\)))
-- \pwm_compare_blocks:7:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:7:pwm_x|LessThan0~37COUT1_48\) # (!\pwm_compare_blocks:7:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:7:pwm_x|compare_value\(1) & !\pwm_compare_blocks:7:pwm_x|LessThan0~37COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(1),
	datab => \pwm_compare_blocks:7:pwm_x|compare_value\(1),
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:7:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:7:pwm_x|LessThan0~37\,
	cin1 => \pwm_compare_blocks:7:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:7:pwm_x|compare_value\(2),
	cout0 => \pwm_compare_blocks:7:pwm_x|LessThan0~32\,
	cout1 => \pwm_compare_blocks:7:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X4_Y1_N2
\pwm_compare_blocks:7:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:7:pwm_x|compare_value\(3) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:7:pwm_x|update_data~0\, \data_interface|input_reg\(3), , , VCC)
-- \pwm_compare_blocks:7:pwm_x|LessThan0~27\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:7:pwm_x|compare_value\(2) & !\pwm_compare_blocks:7:pwm_x|LessThan0~32\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:7:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:7:pwm_x|LessThan0~32\))))
-- \pwm_compare_blocks:7:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:7:pwm_x|compare_value\(2) & !\pwm_compare_blocks:7:pwm_x|LessThan0~32COUT1_50\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:7:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:7:pwm_x|LessThan0~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(2),
	datab => \pwm_compare_blocks:7:pwm_x|compare_value\(2),
	datac => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:7:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:7:pwm_x|LessThan0~32\,
	cin1 => \pwm_compare_blocks:7:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:7:pwm_x|compare_value\(3),
	cout0 => \pwm_compare_blocks:7:pwm_x|LessThan0~27\,
	cout1 => \pwm_compare_blocks:7:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X4_Y1_N3
\pwm_compare_blocks:7:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:7:pwm_x|compare_value\(4) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:7:pwm_x|update_data~0\, \data_interface|input_reg\(4), , , VCC)
-- \pwm_compare_blocks:7:pwm_x|LessThan0~22\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:7:pwm_x|LessThan0~27\) # (!\pwm_compare_blocks:7:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:7:pwm_x|compare_value\(3) & !\pwm_compare_blocks:7:pwm_x|LessThan0~27\)))
-- \pwm_compare_blocks:7:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:7:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:7:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:7:pwm_x|compare_value\(3) & !\pwm_compare_blocks:7:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:7:pwm_x|compare_value\(3),
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:7:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:7:pwm_x|LessThan0~27\,
	cin1 => \pwm_compare_blocks:7:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:7:pwm_x|compare_value\(4),
	cout0 => \pwm_compare_blocks:7:pwm_x|LessThan0~22\,
	cout1 => \pwm_compare_blocks:7:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X4_Y1_N4
\pwm_compare_blocks:7:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:7:pwm_x|compare_value\(5) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:7:pwm_x|update_data~0\, \data_interface|input_reg\(5), , , VCC)
-- \pwm_compare_blocks:7:pwm_x|LessThan0~17\ = CARRY((\pwm_compare_blocks:7:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:7:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:7:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:7:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:7:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	datac => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:7:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:7:pwm_x|LessThan0~22\,
	cin1 => \pwm_compare_blocks:7:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:7:pwm_x|compare_value\(5),
	cout => \pwm_compare_blocks:7:pwm_x|LessThan0~17\);

-- Location: LC_X4_Y1_N5
\pwm_compare_blocks:7:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:7:pwm_x|compare_value\(6) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:7:pwm_x|update_data~0\, \data_interface|input_reg\(6), , , VCC)
-- \pwm_compare_blocks:7:pwm_x|LessThan0~12\ = CARRY((\pwm_compare_blocks:7:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:7:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:7:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:7:pwm_x|LessThan0~17\))))
-- \pwm_compare_blocks:7:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_compare_blocks:7:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:7:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:7:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:7:pwm_x|LessThan0~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:7:pwm_x|compare_value\(5),
	datab => \pwm_counter|counter_value\(5),
	datac => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:7:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:7:pwm_x|LessThan0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:7:pwm_x|compare_value\(6),
	cout0 => \pwm_compare_blocks:7:pwm_x|LessThan0~12\,
	cout1 => \pwm_compare_blocks:7:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X4_Y1_N6
\pwm_compare_blocks:7:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:7:pwm_x|compare_value\(7) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:7:pwm_x|update_data~0\, \data_interface|input_reg\(7), , , VCC)
-- \pwm_compare_blocks:7:pwm_x|LessThan0~7\ = CARRY((\pwm_compare_blocks:7:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:7:pwm_x|LessThan0~12\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:7:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:7:pwm_x|LessThan0~12\)))
-- \pwm_compare_blocks:7:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_compare_blocks:7:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:7:pwm_x|LessThan0~12COUT1_56\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:7:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:7:pwm_x|LessThan0~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:7:pwm_x|compare_value\(6),
	datab => \pwm_counter|counter_value\(6),
	datac => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:7:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:7:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:7:pwm_x|LessThan0~12\,
	cin1 => \pwm_compare_blocks:7:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:7:pwm_x|compare_value\(7),
	cout0 => \pwm_compare_blocks:7:pwm_x|LessThan0~7\,
	cout1 => \pwm_compare_blocks:7:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X4_Y1_N7
\pwm_compare_blocks:7:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:7:pwm_x|LessThan0~0_combout\ = (\pwm_compare_blocks:7:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:7:pwm_x|LessThan0~17\ & \pwm_compare_blocks:7:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:7:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:7:pwm_x|LessThan0~7COUT1_58\)) # (!\pwm_counter|counter_value\(7))))) # (!\pwm_compare_blocks:7:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:7:pwm_x|LessThan0~17\ & \pwm_compare_blocks:7:pwm_x|LessThan0~7\) # 
-- (\pwm_compare_blocks:7:pwm_x|LessThan0~17\ & \pwm_compare_blocks:7:pwm_x|LessThan0~7COUT1_58\) & !\pwm_counter|counter_value\(7)))))

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
	dataa => \pwm_compare_blocks:7:pwm_x|compare_value\(7),
	datad => \pwm_counter|counter_value\(7),
	cin => \pwm_compare_blocks:7:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:7:pwm_x|LessThan0~7\,
	cin1 => \pwm_compare_blocks:7:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:7:pwm_x|LessThan0~0_combout\);

-- Location: LC_X7_Y1_N1
\pwm_compare_blocks:8:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:8:pwm_x|pwm_pin4~0\ = (\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # (((!\pwm_compare_blocks:8:pwm_x|LessThan0~0_combout\) # (!B9_pwm_out_sel)))
-- \pwm_compare_blocks:8:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:8:pwm_x|pwm_pin4~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:8:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:8:pwm_x|LessThan0~0_combout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:8:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:8:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:8:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X7_Y1_N2
\pwm_compare_blocks:8:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:8:pwm_x|pwm_pin3~0\ = (\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # ((\pwm_compare_blocks:8:pwm_x|pwm_out_sel~regout\) # ((!\pwm_compare_blocks:8:pwm_x|LessThan0~0_combout\)))
-- \pwm_compare_blocks:8:pwm_x|compare_value\(0) = DFFEAS(\pwm_compare_blocks:8:pwm_x|pwm_pin3~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:8:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datab => \pwm_compare_blocks:8:pwm_x|pwm_out_sel~regout\,
	datac => \data_interface|input_reg\(0),
	datad => \pwm_compare_blocks:8:pwm_x|LessThan0~0_combout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:8:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:8:pwm_x|pwm_pin3~0\,
	regout => \pwm_compare_blocks:8:pwm_x|compare_value\(0));

-- Location: LC_X6_Y1_N0
\pwm_compare_blocks:8:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:8:pwm_x|compare_value\(1) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:8:pwm_x|update_data~0\, \data_interface|input_reg\(1), , , VCC)
-- \pwm_compare_blocks:8:pwm_x|LessThan0~37\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:8:pwm_x|compare_value\(0))))
-- \pwm_compare_blocks:8:pwm_x|LessThan0~37COUT1_48\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:8:pwm_x|compare_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(0),
	datab => \pwm_compare_blocks:8:pwm_x|compare_value\(0),
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:8:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:8:pwm_x|compare_value\(1),
	cout0 => \pwm_compare_blocks:8:pwm_x|LessThan0~37\,
	cout1 => \pwm_compare_blocks:8:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X6_Y1_N1
\pwm_compare_blocks:8:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:8:pwm_x|compare_value\(2) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:8:pwm_x|update_data~0\, \data_interface|input_reg\(2), , , VCC)
-- \pwm_compare_blocks:8:pwm_x|LessThan0~32\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:8:pwm_x|LessThan0~37\) # (!\pwm_compare_blocks:8:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:8:pwm_x|compare_value\(1) & !\pwm_compare_blocks:8:pwm_x|LessThan0~37\)))
-- \pwm_compare_blocks:8:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:8:pwm_x|LessThan0~37COUT1_48\) # (!\pwm_compare_blocks:8:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:8:pwm_x|compare_value\(1) & !\pwm_compare_blocks:8:pwm_x|LessThan0~37COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(1),
	datab => \pwm_compare_blocks:8:pwm_x|compare_value\(1),
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:8:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:8:pwm_x|LessThan0~37\,
	cin1 => \pwm_compare_blocks:8:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:8:pwm_x|compare_value\(2),
	cout0 => \pwm_compare_blocks:8:pwm_x|LessThan0~32\,
	cout1 => \pwm_compare_blocks:8:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X6_Y1_N2
\pwm_compare_blocks:8:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:8:pwm_x|compare_value\(3) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:8:pwm_x|update_data~0\, \data_interface|input_reg\(3), , , VCC)
-- \pwm_compare_blocks:8:pwm_x|LessThan0~27\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:8:pwm_x|compare_value\(2) & !\pwm_compare_blocks:8:pwm_x|LessThan0~32\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:8:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:8:pwm_x|LessThan0~32\))))
-- \pwm_compare_blocks:8:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:8:pwm_x|compare_value\(2) & !\pwm_compare_blocks:8:pwm_x|LessThan0~32COUT1_50\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:8:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:8:pwm_x|LessThan0~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(2),
	datab => \pwm_compare_blocks:8:pwm_x|compare_value\(2),
	datac => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:8:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:8:pwm_x|LessThan0~32\,
	cin1 => \pwm_compare_blocks:8:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:8:pwm_x|compare_value\(3),
	cout0 => \pwm_compare_blocks:8:pwm_x|LessThan0~27\,
	cout1 => \pwm_compare_blocks:8:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X6_Y1_N3
\pwm_compare_blocks:8:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:8:pwm_x|compare_value\(4) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:8:pwm_x|update_data~0\, \data_interface|input_reg\(4), , , VCC)
-- \pwm_compare_blocks:8:pwm_x|LessThan0~22\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:8:pwm_x|LessThan0~27\) # (!\pwm_compare_blocks:8:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:8:pwm_x|compare_value\(3) & !\pwm_compare_blocks:8:pwm_x|LessThan0~27\)))
-- \pwm_compare_blocks:8:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:8:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:8:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:8:pwm_x|compare_value\(3) & !\pwm_compare_blocks:8:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:8:pwm_x|compare_value\(3),
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:8:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:8:pwm_x|LessThan0~27\,
	cin1 => \pwm_compare_blocks:8:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:8:pwm_x|compare_value\(4),
	cout0 => \pwm_compare_blocks:8:pwm_x|LessThan0~22\,
	cout1 => \pwm_compare_blocks:8:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X6_Y1_N4
\pwm_compare_blocks:8:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:8:pwm_x|compare_value\(5) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:8:pwm_x|update_data~0\, \data_interface|input_reg\(5), , , VCC)
-- \pwm_compare_blocks:8:pwm_x|LessThan0~17\ = CARRY((\pwm_compare_blocks:8:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:8:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:8:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:8:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:8:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	datac => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:8:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:8:pwm_x|LessThan0~22\,
	cin1 => \pwm_compare_blocks:8:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:8:pwm_x|compare_value\(5),
	cout => \pwm_compare_blocks:8:pwm_x|LessThan0~17\);

-- Location: LC_X6_Y1_N5
\pwm_compare_blocks:8:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:8:pwm_x|compare_value\(6) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:8:pwm_x|update_data~0\, \data_interface|input_reg\(6), , , VCC)
-- \pwm_compare_blocks:8:pwm_x|LessThan0~12\ = CARRY((\pwm_compare_blocks:8:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:8:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:8:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:8:pwm_x|LessThan0~17\))))
-- \pwm_compare_blocks:8:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_compare_blocks:8:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:8:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:8:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:8:pwm_x|LessThan0~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:8:pwm_x|compare_value\(5),
	datab => \pwm_counter|counter_value\(5),
	datac => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:8:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:8:pwm_x|LessThan0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:8:pwm_x|compare_value\(6),
	cout0 => \pwm_compare_blocks:8:pwm_x|LessThan0~12\,
	cout1 => \pwm_compare_blocks:8:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X6_Y1_N6
\pwm_compare_blocks:8:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:8:pwm_x|compare_value\(7) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:8:pwm_x|update_data~0\, \data_interface|input_reg\(7), , , VCC)
-- \pwm_compare_blocks:8:pwm_x|LessThan0~7\ = CARRY((\pwm_compare_blocks:8:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:8:pwm_x|LessThan0~12\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:8:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:8:pwm_x|LessThan0~12\)))
-- \pwm_compare_blocks:8:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_compare_blocks:8:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:8:pwm_x|LessThan0~12COUT1_56\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:8:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:8:pwm_x|LessThan0~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:8:pwm_x|compare_value\(6),
	datab => \pwm_counter|counter_value\(6),
	datac => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:8:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:8:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:8:pwm_x|LessThan0~12\,
	cin1 => \pwm_compare_blocks:8:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:8:pwm_x|compare_value\(7),
	cout0 => \pwm_compare_blocks:8:pwm_x|LessThan0~7\,
	cout1 => \pwm_compare_blocks:8:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X6_Y1_N7
\pwm_compare_blocks:8:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:8:pwm_x|LessThan0~0_combout\ = (\pwm_compare_blocks:8:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:8:pwm_x|LessThan0~17\ & \pwm_compare_blocks:8:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:8:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:8:pwm_x|LessThan0~7COUT1_58\)) # (!\pwm_counter|counter_value\(7))))) # (!\pwm_compare_blocks:8:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:8:pwm_x|LessThan0~17\ & \pwm_compare_blocks:8:pwm_x|LessThan0~7\) # 
-- (\pwm_compare_blocks:8:pwm_x|LessThan0~17\ & \pwm_compare_blocks:8:pwm_x|LessThan0~7COUT1_58\) & !\pwm_counter|counter_value\(7)))))

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
	dataa => \pwm_compare_blocks:8:pwm_x|compare_value\(7),
	datad => \pwm_counter|counter_value\(7),
	cin => \pwm_compare_blocks:8:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:8:pwm_x|LessThan0~7\,
	cin1 => \pwm_compare_blocks:8:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:8:pwm_x|LessThan0~0_combout\);

-- Location: LC_X7_Y4_N4
\pwm_compare_blocks:9:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:9:pwm_x|pwm_pin4~0\ = ((\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # ((!\pwm_compare_blocks:9:pwm_x|LessThan0~0_combout\) # (!B10_pwm_out_sel)))
-- \pwm_compare_blocks:9:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:9:pwm_x|pwm_pin4~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:9:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:9:pwm_x|LessThan0~0_combout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:9:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:9:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:9:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X7_Y4_N2
\pwm_compare_blocks:9:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:9:pwm_x|pwm_pin3~0\ = (\pwm_compare_blocks:9:pwm_x|pwm_out_sel~regout\) # ((\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # ((!\pwm_compare_blocks:9:pwm_x|LessThan0~0_combout\)))
-- \pwm_compare_blocks:9:pwm_x|compare_value\(0) = DFFEAS(\pwm_compare_blocks:9:pwm_x|pwm_pin3~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:9:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:9:pwm_x|pwm_out_sel~regout\,
	datab => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datac => \data_interface|input_reg\(0),
	datad => \pwm_compare_blocks:9:pwm_x|LessThan0~0_combout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:9:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:9:pwm_x|pwm_pin3~0\,
	regout => \pwm_compare_blocks:9:pwm_x|compare_value\(0));

-- Location: LC_X6_Y4_N0
\pwm_compare_blocks:9:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:9:pwm_x|compare_value\(1) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:9:pwm_x|update_data~0\, \data_interface|input_reg\(1), , , VCC)
-- \pwm_compare_blocks:9:pwm_x|LessThan0~37\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:9:pwm_x|compare_value\(0))))
-- \pwm_compare_blocks:9:pwm_x|LessThan0~37COUT1_48\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:9:pwm_x|compare_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(0),
	datab => \pwm_compare_blocks:9:pwm_x|compare_value\(0),
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:9:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:9:pwm_x|compare_value\(1),
	cout0 => \pwm_compare_blocks:9:pwm_x|LessThan0~37\,
	cout1 => \pwm_compare_blocks:9:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X6_Y4_N1
\pwm_compare_blocks:9:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:9:pwm_x|compare_value\(2) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:9:pwm_x|update_data~0\, \data_interface|input_reg\(2), , , VCC)
-- \pwm_compare_blocks:9:pwm_x|LessThan0~32\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:9:pwm_x|LessThan0~37\) # (!\pwm_compare_blocks:9:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:9:pwm_x|compare_value\(1) & !\pwm_compare_blocks:9:pwm_x|LessThan0~37\)))
-- \pwm_compare_blocks:9:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:9:pwm_x|LessThan0~37COUT1_48\) # (!\pwm_compare_blocks:9:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:9:pwm_x|compare_value\(1) & !\pwm_compare_blocks:9:pwm_x|LessThan0~37COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(1),
	datab => \pwm_compare_blocks:9:pwm_x|compare_value\(1),
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:9:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:9:pwm_x|LessThan0~37\,
	cin1 => \pwm_compare_blocks:9:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:9:pwm_x|compare_value\(2),
	cout0 => \pwm_compare_blocks:9:pwm_x|LessThan0~32\,
	cout1 => \pwm_compare_blocks:9:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X6_Y4_N2
\pwm_compare_blocks:9:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:9:pwm_x|compare_value\(3) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:9:pwm_x|update_data~0\, \data_interface|input_reg\(3), , , VCC)
-- \pwm_compare_blocks:9:pwm_x|LessThan0~27\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:9:pwm_x|compare_value\(2) & !\pwm_compare_blocks:9:pwm_x|LessThan0~32\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:9:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:9:pwm_x|LessThan0~32\))))
-- \pwm_compare_blocks:9:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:9:pwm_x|compare_value\(2) & !\pwm_compare_blocks:9:pwm_x|LessThan0~32COUT1_50\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:9:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:9:pwm_x|LessThan0~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(2),
	datab => \pwm_compare_blocks:9:pwm_x|compare_value\(2),
	datac => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:9:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:9:pwm_x|LessThan0~32\,
	cin1 => \pwm_compare_blocks:9:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:9:pwm_x|compare_value\(3),
	cout0 => \pwm_compare_blocks:9:pwm_x|LessThan0~27\,
	cout1 => \pwm_compare_blocks:9:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X6_Y4_N3
\pwm_compare_blocks:9:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:9:pwm_x|compare_value\(4) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:9:pwm_x|update_data~0\, \data_interface|input_reg\(4), , , VCC)
-- \pwm_compare_blocks:9:pwm_x|LessThan0~22\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:9:pwm_x|LessThan0~27\) # (!\pwm_compare_blocks:9:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:9:pwm_x|compare_value\(3) & !\pwm_compare_blocks:9:pwm_x|LessThan0~27\)))
-- \pwm_compare_blocks:9:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:9:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:9:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:9:pwm_x|compare_value\(3) & !\pwm_compare_blocks:9:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:9:pwm_x|compare_value\(3),
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:9:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:9:pwm_x|LessThan0~27\,
	cin1 => \pwm_compare_blocks:9:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:9:pwm_x|compare_value\(4),
	cout0 => \pwm_compare_blocks:9:pwm_x|LessThan0~22\,
	cout1 => \pwm_compare_blocks:9:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X6_Y4_N4
\pwm_compare_blocks:9:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:9:pwm_x|compare_value\(5) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:9:pwm_x|update_data~0\, \data_interface|input_reg\(5), , , VCC)
-- \pwm_compare_blocks:9:pwm_x|LessThan0~17\ = CARRY((\pwm_compare_blocks:9:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:9:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:9:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:9:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:9:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	datac => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:9:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:9:pwm_x|LessThan0~22\,
	cin1 => \pwm_compare_blocks:9:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:9:pwm_x|compare_value\(5),
	cout => \pwm_compare_blocks:9:pwm_x|LessThan0~17\);

-- Location: LC_X6_Y4_N5
\pwm_compare_blocks:9:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:9:pwm_x|compare_value\(6) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:9:pwm_x|update_data~0\, \data_interface|input_reg\(6), , , VCC)
-- \pwm_compare_blocks:9:pwm_x|LessThan0~12\ = CARRY((\pwm_compare_blocks:9:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:9:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:9:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:9:pwm_x|LessThan0~17\))))
-- \pwm_compare_blocks:9:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_compare_blocks:9:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:9:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:9:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:9:pwm_x|LessThan0~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:9:pwm_x|compare_value\(5),
	datab => \pwm_counter|counter_value\(5),
	datac => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:9:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:9:pwm_x|LessThan0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:9:pwm_x|compare_value\(6),
	cout0 => \pwm_compare_blocks:9:pwm_x|LessThan0~12\,
	cout1 => \pwm_compare_blocks:9:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X6_Y4_N6
\pwm_compare_blocks:9:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:9:pwm_x|compare_value\(7) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:9:pwm_x|update_data~0\, \data_interface|input_reg\(7), , , VCC)
-- \pwm_compare_blocks:9:pwm_x|LessThan0~7\ = CARRY((\pwm_compare_blocks:9:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:9:pwm_x|LessThan0~12\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:9:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:9:pwm_x|LessThan0~12\)))
-- \pwm_compare_blocks:9:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_compare_blocks:9:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:9:pwm_x|LessThan0~12COUT1_56\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:9:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:9:pwm_x|LessThan0~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:9:pwm_x|compare_value\(6),
	datab => \pwm_counter|counter_value\(6),
	datac => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:9:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:9:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:9:pwm_x|LessThan0~12\,
	cin1 => \pwm_compare_blocks:9:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:9:pwm_x|compare_value\(7),
	cout0 => \pwm_compare_blocks:9:pwm_x|LessThan0~7\,
	cout1 => \pwm_compare_blocks:9:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X6_Y4_N7
\pwm_compare_blocks:9:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:9:pwm_x|LessThan0~0_combout\ = (\pwm_compare_blocks:9:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:9:pwm_x|LessThan0~17\ & \pwm_compare_blocks:9:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:9:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:9:pwm_x|LessThan0~7COUT1_58\))) # (!\pwm_counter|counter_value\(7)))) # (!\pwm_compare_blocks:9:pwm_x|compare_value\(7) & (!\pwm_counter|counter_value\(7) & ((!\pwm_compare_blocks:9:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:9:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:9:pwm_x|LessThan0~17\ & \pwm_compare_blocks:9:pwm_x|LessThan0~7COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "b2b2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_compare_blocks:9:pwm_x|compare_value\(7),
	datab => \pwm_counter|counter_value\(7),
	cin => \pwm_compare_blocks:9:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:9:pwm_x|LessThan0~7\,
	cin1 => \pwm_compare_blocks:9:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:9:pwm_x|LessThan0~0_combout\);

-- Location: LC_X7_Y2_N2
\pwm_compare_blocks:10:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:10:pwm_x|pwm_pin4~0\ = (((\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # (!B11_pwm_out_sel))) # (!\pwm_compare_blocks:10:pwm_x|LessThan0~0_combout\)
-- \pwm_compare_blocks:10:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:10:pwm_x|pwm_pin4~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:10:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff5f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:10:pwm_x|LessThan0~0_combout\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:10:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:10:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:10:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X7_Y2_N8
\pwm_compare_blocks:10:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:10:pwm_x|pwm_pin3~0\ = ((\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # ((\pwm_compare_blocks:10:pwm_x|pwm_out_sel~regout\))) # (!\pwm_compare_blocks:10:pwm_x|LessThan0~0_combout\)
-- \pwm_compare_blocks:10:pwm_x|compare_value\(0) = DFFEAS(\pwm_compare_blocks:10:pwm_x|pwm_pin3~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:10:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdd",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:10:pwm_x|LessThan0~0_combout\,
	datab => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	datac => \data_interface|input_reg\(0),
	datad => \pwm_compare_blocks:10:pwm_x|pwm_out_sel~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:10:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:10:pwm_x|pwm_pin3~0\,
	regout => \pwm_compare_blocks:10:pwm_x|compare_value\(0));

-- Location: LC_X3_Y1_N0
\pwm_compare_blocks:10:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:10:pwm_x|compare_value\(1) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:10:pwm_x|update_data~0\, \data_interface|input_reg\(1), , , VCC)
-- \pwm_compare_blocks:10:pwm_x|LessThan0~37\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:10:pwm_x|compare_value\(0))))
-- \pwm_compare_blocks:10:pwm_x|LessThan0~37COUT1_48\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:10:pwm_x|compare_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(0),
	datab => \pwm_compare_blocks:10:pwm_x|compare_value\(0),
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:10:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:10:pwm_x|compare_value\(1),
	cout0 => \pwm_compare_blocks:10:pwm_x|LessThan0~37\,
	cout1 => \pwm_compare_blocks:10:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X3_Y1_N1
\pwm_compare_blocks:10:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:10:pwm_x|compare_value\(2) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:10:pwm_x|update_data~0\, \data_interface|input_reg\(2), , , VCC)
-- \pwm_compare_blocks:10:pwm_x|LessThan0~32\ = CARRY((\pwm_compare_blocks:10:pwm_x|compare_value\(1) & (\pwm_counter|counter_value\(1) & !\pwm_compare_blocks:10:pwm_x|LessThan0~37\)) # (!\pwm_compare_blocks:10:pwm_x|compare_value\(1) & 
-- ((\pwm_counter|counter_value\(1)) # (!\pwm_compare_blocks:10:pwm_x|LessThan0~37\))))
-- \pwm_compare_blocks:10:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_compare_blocks:10:pwm_x|compare_value\(1) & (\pwm_counter|counter_value\(1) & !\pwm_compare_blocks:10:pwm_x|LessThan0~37COUT1_48\)) # (!\pwm_compare_blocks:10:pwm_x|compare_value\(1) & 
-- ((\pwm_counter|counter_value\(1)) # (!\pwm_compare_blocks:10:pwm_x|LessThan0~37COUT1_48\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:10:pwm_x|compare_value\(1),
	datab => \pwm_counter|counter_value\(1),
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:10:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:10:pwm_x|LessThan0~37\,
	cin1 => \pwm_compare_blocks:10:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:10:pwm_x|compare_value\(2),
	cout0 => \pwm_compare_blocks:10:pwm_x|LessThan0~32\,
	cout1 => \pwm_compare_blocks:10:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X3_Y1_N2
\pwm_compare_blocks:10:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:10:pwm_x|compare_value\(3) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:10:pwm_x|update_data~0\, \data_interface|input_reg\(3), , , VCC)
-- \pwm_compare_blocks:10:pwm_x|LessThan0~27\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:10:pwm_x|compare_value\(2) & !\pwm_compare_blocks:10:pwm_x|LessThan0~32\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:10:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:10:pwm_x|LessThan0~32\))))
-- \pwm_compare_blocks:10:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:10:pwm_x|compare_value\(2) & !\pwm_compare_blocks:10:pwm_x|LessThan0~32COUT1_50\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:10:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:10:pwm_x|LessThan0~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(2),
	datab => \pwm_compare_blocks:10:pwm_x|compare_value\(2),
	datac => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:10:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:10:pwm_x|LessThan0~32\,
	cin1 => \pwm_compare_blocks:10:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:10:pwm_x|compare_value\(3),
	cout0 => \pwm_compare_blocks:10:pwm_x|LessThan0~27\,
	cout1 => \pwm_compare_blocks:10:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X3_Y1_N3
\pwm_compare_blocks:10:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:10:pwm_x|compare_value\(4) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:10:pwm_x|update_data~0\, \data_interface|input_reg\(4), , , VCC)
-- \pwm_compare_blocks:10:pwm_x|LessThan0~22\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:10:pwm_x|LessThan0~27\) # (!\pwm_compare_blocks:10:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:10:pwm_x|compare_value\(3) & !\pwm_compare_blocks:10:pwm_x|LessThan0~27\)))
-- \pwm_compare_blocks:10:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:10:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:10:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:10:pwm_x|compare_value\(3) & !\pwm_compare_blocks:10:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:10:pwm_x|compare_value\(3),
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:10:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:10:pwm_x|LessThan0~27\,
	cin1 => \pwm_compare_blocks:10:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:10:pwm_x|compare_value\(4),
	cout0 => \pwm_compare_blocks:10:pwm_x|LessThan0~22\,
	cout1 => \pwm_compare_blocks:10:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X3_Y1_N4
\pwm_compare_blocks:10:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:10:pwm_x|compare_value\(5) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:10:pwm_x|update_data~0\, \data_interface|input_reg\(5), , , VCC)
-- \pwm_compare_blocks:10:pwm_x|LessThan0~17\ = CARRY((\pwm_compare_blocks:10:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:10:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:10:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:10:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:10:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	datac => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:10:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:10:pwm_x|LessThan0~22\,
	cin1 => \pwm_compare_blocks:10:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:10:pwm_x|compare_value\(5),
	cout => \pwm_compare_blocks:10:pwm_x|LessThan0~17\);

-- Location: LC_X3_Y1_N5
\pwm_compare_blocks:10:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:10:pwm_x|compare_value\(6) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:10:pwm_x|update_data~0\, \data_interface|input_reg\(6), , , VCC)
-- \pwm_compare_blocks:10:pwm_x|LessThan0~12\ = CARRY((\pwm_compare_blocks:10:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:10:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:10:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:10:pwm_x|LessThan0~17\))))
-- \pwm_compare_blocks:10:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_compare_blocks:10:pwm_x|compare_value\(5) & (\pwm_counter|counter_value\(5) & !\pwm_compare_blocks:10:pwm_x|LessThan0~17\)) # (!\pwm_compare_blocks:10:pwm_x|compare_value\(5) & 
-- ((\pwm_counter|counter_value\(5)) # (!\pwm_compare_blocks:10:pwm_x|LessThan0~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:10:pwm_x|compare_value\(5),
	datab => \pwm_counter|counter_value\(5),
	datac => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:10:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:10:pwm_x|LessThan0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:10:pwm_x|compare_value\(6),
	cout0 => \pwm_compare_blocks:10:pwm_x|LessThan0~12\,
	cout1 => \pwm_compare_blocks:10:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X3_Y1_N6
\pwm_compare_blocks:10:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:10:pwm_x|compare_value\(7) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:10:pwm_x|update_data~0\, \data_interface|input_reg\(7), , , VCC)
-- \pwm_compare_blocks:10:pwm_x|LessThan0~7\ = CARRY((\pwm_compare_blocks:10:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:10:pwm_x|LessThan0~12\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:10:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:10:pwm_x|LessThan0~12\)))
-- \pwm_compare_blocks:10:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_compare_blocks:10:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:10:pwm_x|LessThan0~12COUT1_56\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:10:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:10:pwm_x|LessThan0~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:10:pwm_x|compare_value\(6),
	datab => \pwm_counter|counter_value\(6),
	datac => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:10:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:10:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:10:pwm_x|LessThan0~12\,
	cin1 => \pwm_compare_blocks:10:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:10:pwm_x|compare_value\(7),
	cout0 => \pwm_compare_blocks:10:pwm_x|LessThan0~7\,
	cout1 => \pwm_compare_blocks:10:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X3_Y1_N7
\pwm_compare_blocks:10:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:10:pwm_x|LessThan0~0_combout\ = (\pwm_compare_blocks:10:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:10:pwm_x|LessThan0~17\ & \pwm_compare_blocks:10:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:10:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:10:pwm_x|LessThan0~7COUT1_58\)) # (!\pwm_counter|counter_value\(7))))) # (!\pwm_compare_blocks:10:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:10:pwm_x|LessThan0~17\ & \pwm_compare_blocks:10:pwm_x|LessThan0~7\) # 
-- (\pwm_compare_blocks:10:pwm_x|LessThan0~17\ & \pwm_compare_blocks:10:pwm_x|LessThan0~7COUT1_58\) & !\pwm_counter|counter_value\(7)))))

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
	dataa => \pwm_compare_blocks:10:pwm_x|compare_value\(7),
	datad => \pwm_counter|counter_value\(7),
	cin => \pwm_compare_blocks:10:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:10:pwm_x|LessThan0~7\,
	cin1 => \pwm_compare_blocks:10:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:10:pwm_x|LessThan0~0_combout\);

-- Location: LC_X7_Y2_N5
\pwm_compare_blocks:11:pwm_x|pwm_out_sel\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:11:pwm_x|pwm_pin4~0\ = (((\pwm_compare_blocks:11:pwm_x|reset_internal~regout\) # (!B12_pwm_out_sel)) # (!\pwm_compare_blocks:11:pwm_x|LessThan0~0_combout\))
-- \pwm_compare_blocks:11:pwm_x|pwm_out_sel~regout\ = DFFEAS(\pwm_compare_blocks:11:pwm_x|pwm_pin4~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:11:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_compare_blocks:11:pwm_x|LessThan0~0_combout\,
	datac => \data_interface|input_reg\(8),
	datad => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:11:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:11:pwm_x|pwm_pin4~0\,
	regout => \pwm_compare_blocks:11:pwm_x|pwm_out_sel~regout\);

-- Location: LC_X7_Y2_N6
\pwm_compare_blocks:11:pwm_x|compare_value[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:11:pwm_x|pwm_pin3~0\ = (\pwm_compare_blocks:11:pwm_x|pwm_out_sel~regout\) # (((\pwm_compare_blocks:11:pwm_x|reset_internal~regout\)) # (!\pwm_compare_blocks:11:pwm_x|LessThan0~0_combout\))
-- \pwm_compare_blocks:11:pwm_x|compare_value\(0) = DFFEAS(\pwm_compare_blocks:11:pwm_x|pwm_pin3~0\, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:11:pwm_x|update_data~0\, 
-- \data_interface|input_reg\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbb",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:11:pwm_x|pwm_out_sel~regout\,
	datab => \pwm_compare_blocks:11:pwm_x|LessThan0~0_combout\,
	datac => \data_interface|input_reg\(0),
	datad => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:11:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:11:pwm_x|pwm_pin3~0\,
	regout => \pwm_compare_blocks:11:pwm_x|compare_value\(0));

-- Location: LC_X3_Y2_N0
\pwm_compare_blocks:11:pwm_x|compare_value[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:11:pwm_x|compare_value\(1) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:11:pwm_x|update_data~0\, \data_interface|input_reg\(1), , , VCC)
-- \pwm_compare_blocks:11:pwm_x|LessThan0~37\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:11:pwm_x|compare_value\(0))))
-- \pwm_compare_blocks:11:pwm_x|LessThan0~37COUT1_48\ = CARRY((!\pwm_counter|counter_value\(0) & (\pwm_compare_blocks:11:pwm_x|compare_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(0),
	datab => \pwm_compare_blocks:11:pwm_x|compare_value\(0),
	datac => \data_interface|input_reg\(1),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:11:pwm_x|update_data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:11:pwm_x|compare_value\(1),
	cout0 => \pwm_compare_blocks:11:pwm_x|LessThan0~37\,
	cout1 => \pwm_compare_blocks:11:pwm_x|LessThan0~37COUT1_48\);

-- Location: LC_X3_Y2_N1
\pwm_compare_blocks:11:pwm_x|compare_value[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:11:pwm_x|compare_value\(2) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:11:pwm_x|update_data~0\, \data_interface|input_reg\(2), , , VCC)
-- \pwm_compare_blocks:11:pwm_x|LessThan0~32\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:11:pwm_x|LessThan0~37\) # (!\pwm_compare_blocks:11:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:11:pwm_x|compare_value\(1) & !\pwm_compare_blocks:11:pwm_x|LessThan0~37\)))
-- \pwm_compare_blocks:11:pwm_x|LessThan0~32COUT1_50\ = CARRY((\pwm_counter|counter_value\(1) & ((!\pwm_compare_blocks:11:pwm_x|LessThan0~37COUT1_48\) # (!\pwm_compare_blocks:11:pwm_x|compare_value\(1)))) # (!\pwm_counter|counter_value\(1) & 
-- (!\pwm_compare_blocks:11:pwm_x|compare_value\(1) & !\pwm_compare_blocks:11:pwm_x|LessThan0~37COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(1),
	datab => \pwm_compare_blocks:11:pwm_x|compare_value\(1),
	datac => \data_interface|input_reg\(2),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:11:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:11:pwm_x|LessThan0~37\,
	cin1 => \pwm_compare_blocks:11:pwm_x|LessThan0~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:11:pwm_x|compare_value\(2),
	cout0 => \pwm_compare_blocks:11:pwm_x|LessThan0~32\,
	cout1 => \pwm_compare_blocks:11:pwm_x|LessThan0~32COUT1_50\);

-- Location: LC_X3_Y2_N2
\pwm_compare_blocks:11:pwm_x|compare_value[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:11:pwm_x|compare_value\(3) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:11:pwm_x|update_data~0\, \data_interface|input_reg\(3), , , VCC)
-- \pwm_compare_blocks:11:pwm_x|LessThan0~27\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:11:pwm_x|compare_value\(2) & !\pwm_compare_blocks:11:pwm_x|LessThan0~32\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:11:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:11:pwm_x|LessThan0~32\))))
-- \pwm_compare_blocks:11:pwm_x|LessThan0~27COUT1_52\ = CARRY((\pwm_counter|counter_value\(2) & (\pwm_compare_blocks:11:pwm_x|compare_value\(2) & !\pwm_compare_blocks:11:pwm_x|LessThan0~32COUT1_50\)) # (!\pwm_counter|counter_value\(2) & 
-- ((\pwm_compare_blocks:11:pwm_x|compare_value\(2)) # (!\pwm_compare_blocks:11:pwm_x|LessThan0~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(2),
	datab => \pwm_compare_blocks:11:pwm_x|compare_value\(2),
	datac => \data_interface|input_reg\(3),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:11:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:11:pwm_x|LessThan0~32\,
	cin1 => \pwm_compare_blocks:11:pwm_x|LessThan0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:11:pwm_x|compare_value\(3),
	cout0 => \pwm_compare_blocks:11:pwm_x|LessThan0~27\,
	cout1 => \pwm_compare_blocks:11:pwm_x|LessThan0~27COUT1_52\);

-- Location: LC_X3_Y2_N3
\pwm_compare_blocks:11:pwm_x|compare_value[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:11:pwm_x|compare_value\(4) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:11:pwm_x|update_data~0\, \data_interface|input_reg\(4), , , VCC)
-- \pwm_compare_blocks:11:pwm_x|LessThan0~22\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:11:pwm_x|LessThan0~27\) # (!\pwm_compare_blocks:11:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:11:pwm_x|compare_value\(3) & !\pwm_compare_blocks:11:pwm_x|LessThan0~27\)))
-- \pwm_compare_blocks:11:pwm_x|LessThan0~22COUT1_54\ = CARRY((\pwm_counter|counter_value\(3) & ((!\pwm_compare_blocks:11:pwm_x|LessThan0~27COUT1_52\) # (!\pwm_compare_blocks:11:pwm_x|compare_value\(3)))) # (!\pwm_counter|counter_value\(3) & 
-- (!\pwm_compare_blocks:11:pwm_x|compare_value\(3) & !\pwm_compare_blocks:11:pwm_x|LessThan0~27COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(3),
	datab => \pwm_compare_blocks:11:pwm_x|compare_value\(3),
	datac => \data_interface|input_reg\(4),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:11:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:11:pwm_x|LessThan0~27\,
	cin1 => \pwm_compare_blocks:11:pwm_x|LessThan0~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:11:pwm_x|compare_value\(4),
	cout0 => \pwm_compare_blocks:11:pwm_x|LessThan0~22\,
	cout1 => \pwm_compare_blocks:11:pwm_x|LessThan0~22COUT1_54\);

-- Location: LC_X3_Y2_N4
\pwm_compare_blocks:11:pwm_x|compare_value[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:11:pwm_x|compare_value\(5) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:11:pwm_x|update_data~0\, \data_interface|input_reg\(5), , , VCC)
-- \pwm_compare_blocks:11:pwm_x|LessThan0~17\ = CARRY((\pwm_compare_blocks:11:pwm_x|compare_value\(4) & ((!\pwm_compare_blocks:11:pwm_x|LessThan0~22COUT1_54\) # (!\pwm_counter|counter_value\(4)))) # (!\pwm_compare_blocks:11:pwm_x|compare_value\(4) & 
-- (!\pwm_counter|counter_value\(4) & !\pwm_compare_blocks:11:pwm_x|LessThan0~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:11:pwm_x|compare_value\(4),
	datab => \pwm_counter|counter_value\(4),
	datac => \data_interface|input_reg\(5),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:11:pwm_x|update_data~0\,
	cin0 => \pwm_compare_blocks:11:pwm_x|LessThan0~22\,
	cin1 => \pwm_compare_blocks:11:pwm_x|LessThan0~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:11:pwm_x|compare_value\(5),
	cout => \pwm_compare_blocks:11:pwm_x|LessThan0~17\);

-- Location: LC_X3_Y2_N5
\pwm_compare_blocks:11:pwm_x|compare_value[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:11:pwm_x|compare_value\(6) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:11:pwm_x|update_data~0\, \data_interface|input_reg\(6), , , VCC)
-- \pwm_compare_blocks:11:pwm_x|LessThan0~12\ = CARRY((\pwm_counter|counter_value\(5) & ((!\pwm_compare_blocks:11:pwm_x|LessThan0~17\) # (!\pwm_compare_blocks:11:pwm_x|compare_value\(5)))) # (!\pwm_counter|counter_value\(5) & 
-- (!\pwm_compare_blocks:11:pwm_x|compare_value\(5) & !\pwm_compare_blocks:11:pwm_x|LessThan0~17\)))
-- \pwm_compare_blocks:11:pwm_x|LessThan0~12COUT1_56\ = CARRY((\pwm_counter|counter_value\(5) & ((!\pwm_compare_blocks:11:pwm_x|LessThan0~17\) # (!\pwm_compare_blocks:11:pwm_x|compare_value\(5)))) # (!\pwm_counter|counter_value\(5) & 
-- (!\pwm_compare_blocks:11:pwm_x|compare_value\(5) & !\pwm_compare_blocks:11:pwm_x|LessThan0~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_counter|counter_value\(5),
	datab => \pwm_compare_blocks:11:pwm_x|compare_value\(5),
	datac => \data_interface|input_reg\(6),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:11:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:11:pwm_x|LessThan0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:11:pwm_x|compare_value\(6),
	cout0 => \pwm_compare_blocks:11:pwm_x|LessThan0~12\,
	cout1 => \pwm_compare_blocks:11:pwm_x|LessThan0~12COUT1_56\);

-- Location: LC_X3_Y2_N6
\pwm_compare_blocks:11:pwm_x|compare_value[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:11:pwm_x|compare_value\(7) = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\pwm_compare_blocks:11:pwm_x|reset_internal~regout\), , \pwm_compare_blocks:11:pwm_x|update_data~0\, \data_interface|input_reg\(7), , , VCC)
-- \pwm_compare_blocks:11:pwm_x|LessThan0~7\ = CARRY((\pwm_compare_blocks:11:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:11:pwm_x|LessThan0~12\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:11:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:11:pwm_x|LessThan0~12\)))
-- \pwm_compare_blocks:11:pwm_x|LessThan0~7COUT1_58\ = CARRY((\pwm_compare_blocks:11:pwm_x|compare_value\(6) & ((!\pwm_compare_blocks:11:pwm_x|LessThan0~12COUT1_56\) # (!\pwm_counter|counter_value\(6)))) # (!\pwm_compare_blocks:11:pwm_x|compare_value\(6) & 
-- (!\pwm_counter|counter_value\(6) & !\pwm_compare_blocks:11:pwm_x|LessThan0~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_compare_blocks:11:pwm_x|compare_value\(6),
	datab => \pwm_counter|counter_value\(6),
	datac => \data_interface|input_reg\(7),
	aclr => \pwm_compare_blocks:11:pwm_x|reset_internal~regout\,
	sload => VCC,
	ena => \pwm_compare_blocks:11:pwm_x|update_data~0\,
	cin => \pwm_compare_blocks:11:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:11:pwm_x|LessThan0~12\,
	cin1 => \pwm_compare_blocks:11:pwm_x|LessThan0~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_compare_blocks:11:pwm_x|compare_value\(7),
	cout0 => \pwm_compare_blocks:11:pwm_x|LessThan0~7\,
	cout1 => \pwm_compare_blocks:11:pwm_x|LessThan0~7COUT1_58\);

-- Location: LC_X3_Y2_N7
\pwm_compare_blocks:11:pwm_x|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_compare_blocks:11:pwm_x|LessThan0~0_combout\ = (\pwm_compare_blocks:11:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:11:pwm_x|LessThan0~17\ & \pwm_compare_blocks:11:pwm_x|LessThan0~7\) # (\pwm_compare_blocks:11:pwm_x|LessThan0~17\ & 
-- \pwm_compare_blocks:11:pwm_x|LessThan0~7COUT1_58\)) # (!\pwm_counter|counter_value\(7))))) # (!\pwm_compare_blocks:11:pwm_x|compare_value\(7) & ((((!\pwm_compare_blocks:11:pwm_x|LessThan0~17\ & \pwm_compare_blocks:11:pwm_x|LessThan0~7\) # 
-- (\pwm_compare_blocks:11:pwm_x|LessThan0~17\ & \pwm_compare_blocks:11:pwm_x|LessThan0~7COUT1_58\) & !\pwm_counter|counter_value\(7)))))

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
	dataa => \pwm_compare_blocks:11:pwm_x|compare_value\(7),
	datad => \pwm_counter|counter_value\(7),
	cin => \pwm_compare_blocks:11:pwm_x|LessThan0~17\,
	cin0 => \pwm_compare_blocks:11:pwm_x|LessThan0~7\,
	cin1 => \pwm_compare_blocks:11:pwm_x|LessThan0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_compare_blocks:11:pwm_x|LessThan0~0_combout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_rdy~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_interface|data_rdy_buff\(1),
	oe => VCC,
	padio => ww_data_rdy);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:0:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(0));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:1:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(1));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:2:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(2));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:3:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(3));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:4:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(4));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:5:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(5));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:6:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(6));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:7:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(7));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:8:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(8));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:9:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(9));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:10:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(10));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin4_block[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:11:pwm_x|pwm_pin4~0\,
	oe => VCC,
	padio => ww_pwm_pin4_block(11));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:0:pwm_x|pwm_pin3~0\,
	oe => VCC,
	padio => ww_pwm_pin3_block(0));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:1:pwm_x|pwm_pin3~0\,
	oe => VCC,
	padio => ww_pwm_pin3_block(1));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:2:pwm_x|pwm_pin3~0\,
	oe => VCC,
	padio => ww_pwm_pin3_block(2));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:3:pwm_x|pwm_pin3~0\,
	oe => VCC,
	padio => ww_pwm_pin3_block(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:4:pwm_x|pwm_pin3~0\,
	oe => VCC,
	padio => ww_pwm_pin3_block(4));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:5:pwm_x|pwm_pin3~0\,
	oe => VCC,
	padio => ww_pwm_pin3_block(5));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:6:pwm_x|pwm_pin3~0\,
	oe => VCC,
	padio => ww_pwm_pin3_block(6));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:7:pwm_x|pwm_pin3~0\,
	oe => VCC,
	padio => ww_pwm_pin3_block(7));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:8:pwm_x|pwm_pin3~0\,
	oe => VCC,
	padio => ww_pwm_pin3_block(8));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:9:pwm_x|pwm_pin3~0\,
	oe => VCC,
	padio => ww_pwm_pin3_block(9));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:10:pwm_x|pwm_pin3~0\,
	oe => VCC,
	padio => ww_pwm_pin3_block(10));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_pin3_block[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_compare_blocks:11:pwm_x|pwm_pin3~0\,
	oe => VCC,
	padio => ww_pwm_pin3_block(11));
END structure;


