-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/21/2017 20:44:43"

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

ENTITY 	MIPS_System IS
    PORT (
	CLOCK_50 : IN std_logic;
	BUTTON : IN std_logic_vector(2 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX3_D : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2_D : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1_D : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX0_D : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END MIPS_System;

-- Design Ports Information
-- HEX3_D[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3_D[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3_D[2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3_D[3]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3_D[4]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3_D[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3_D[6]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2_D[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2_D[1]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2_D[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2_D[3]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2_D[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2_D[5]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2_D[6]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1_D[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1_D[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1_D[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1_D[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1_D[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1_D[5]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1_D[6]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0_D[0]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0_D[1]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0_D[2]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0_D[3]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0_D[4]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0_D[5]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0_D[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[2]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[5]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[6]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[7]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[8]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[9]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[9]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BUTTON[2]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BUTTON[1]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BUTTON[0]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MIPS_System IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_BUTTON : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX3_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \BUTTON[2]~input_o\ : std_logic;
SIGNAL \BUTTON[1]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[2]~32_combout\ : std_logic;
SIGNAL \BUTTON[0]~input_o\ : std_logic;
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset_ff~q\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[3]~11_cout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[3]~12_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[3]~13\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[4]~14_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[4]~15\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[5]~16_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[5]~17\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[6]~18_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[6]~19\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[7]~21\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[8]~22_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[8]~23\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[9]~24_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[9]~25\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[10]~26_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[10]~27\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[11]~28_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[11]~29\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[12]~30_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~5\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~6_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~7\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~8_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~9\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~11\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~12_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~13\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~14_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~15\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~16_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~17\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~18_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~19\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~20_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[11]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~21\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~22_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~10_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[0]~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[0]~2_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector8~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Equal0~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|comb~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector3~1_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector8~1_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector2~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector2~1_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector3~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Equal0~1_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector3~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Decoder0~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[15]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|WideOr1~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|sze|y[16]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[20]~12_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[19]~13_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[18]~14_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[17]~15_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[17]~16_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[16]~17_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[16]~18_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[14]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[13]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[12]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~23\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~25\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~27\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~29\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~31\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~33\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~35\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~37\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~39\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~40_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~36_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~38_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~34_combout\ : std_logic;
SIGNAL \Decoder|Equal1~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~32_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~28_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~30_combout\ : std_logic;
SIGNAL \Decoder|Equal1~1_combout\ : std_logic;
SIGNAL \Decoder|Equal1~3_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[22]~10_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[21]~11_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~41\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~43\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~44_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~42_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[24]~8_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[23]~9_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~45\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~47\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~48_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~46_combout\ : std_logic;
SIGNAL \Decoder|Equal1~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[26]~6_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[25]~7_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~49\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~51\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~52_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[28]~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[27]~5_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~53\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~55\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~56_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~50_combout\ : std_logic;
SIGNAL \Decoder|Equal1~5_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[31]~20_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[30]~19_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[29]~3_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~57\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~59\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~61\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~62_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~58_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~60_combout\ : std_logic;
SIGNAL \Decoder|Equal1~0_combout\ : std_logic;
SIGNAL \Decoder|Equal1~6_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Decoder0~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wd_mux|y[0]~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wd_mux|y[0]~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|ID_EX_pcplus4|q[0]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q[0]~11_combout\ : std_logic;
SIGNAL \mips_cpu|dp|comb~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|jr_pc_mux|y[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wd_mux|y[0]~3_combout\ : std_logic;
SIGNAL \Timer|CounterR[0]~32_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~26_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~2_combout\ : std_logic;
SIGNAL \uGPIO|Equal2~0_combout\ : std_logic;
SIGNAL \uGPIO|Equal2~1_combout\ : std_logic;
SIGNAL \Timer|Equal3~0_combout\ : std_logic;
SIGNAL \Timer|StatusR~0_combout\ : std_logic;
SIGNAL \Timer|CompareR[1]~2_combout\ : std_logic;
SIGNAL \Decoder|Equal1~7_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~1_combout\ : std_logic;
SIGNAL \Timer|CompareR~1_combout\ : std_logic;
SIGNAL \Timer|CounterR[0]~33\ : std_logic;
SIGNAL \Timer|CounterR[1]~34_combout\ : std_logic;
SIGNAL \Timer|CounterR[1]~35\ : std_logic;
SIGNAL \Timer|CounterR[2]~36_combout\ : std_logic;
SIGNAL \Timer|CounterR[2]~37\ : std_logic;
SIGNAL \Timer|CounterR[3]~38_combout\ : std_logic;
SIGNAL \Timer|CounterR[3]~39\ : std_logic;
SIGNAL \Timer|CounterR[4]~40_combout\ : std_logic;
SIGNAL \Timer|CounterR[4]~41\ : std_logic;
SIGNAL \Timer|CounterR[5]~42_combout\ : std_logic;
SIGNAL \Timer|CounterR[5]~43\ : std_logic;
SIGNAL \Timer|CounterR[6]~44_combout\ : std_logic;
SIGNAL \Timer|CounterR[6]~45\ : std_logic;
SIGNAL \Timer|CounterR[7]~46_combout\ : std_logic;
SIGNAL \Timer|CounterR[7]~47\ : std_logic;
SIGNAL \Timer|CounterR[8]~48_combout\ : std_logic;
SIGNAL \Timer|CounterR[8]~49\ : std_logic;
SIGNAL \Timer|CounterR[9]~50_combout\ : std_logic;
SIGNAL \Timer|CounterR[9]~51\ : std_logic;
SIGNAL \Timer|CounterR[10]~52_combout\ : std_logic;
SIGNAL \Timer|CounterR[10]~53\ : std_logic;
SIGNAL \Timer|CounterR[11]~54_combout\ : std_logic;
SIGNAL \Timer|CounterR[11]~55\ : std_logic;
SIGNAL \Timer|CounterR[12]~56_combout\ : std_logic;
SIGNAL \Timer|CounterR[12]~57\ : std_logic;
SIGNAL \Timer|CounterR[13]~58_combout\ : std_logic;
SIGNAL \Timer|CounterR[13]~59\ : std_logic;
SIGNAL \Timer|CounterR[14]~60_combout\ : std_logic;
SIGNAL \Timer|CounterR[14]~61\ : std_logic;
SIGNAL \Timer|CounterR[15]~62_combout\ : std_logic;
SIGNAL \Timer|CounterR[15]~63\ : std_logic;
SIGNAL \Timer|CounterR[16]~64_combout\ : std_logic;
SIGNAL \Timer|CounterR[16]~65\ : std_logic;
SIGNAL \Timer|CounterR[17]~66_combout\ : std_logic;
SIGNAL \Timer|CounterR[17]~67\ : std_logic;
SIGNAL \Timer|CounterR[18]~68_combout\ : std_logic;
SIGNAL \Timer|CounterR[18]~69\ : std_logic;
SIGNAL \Timer|CounterR[19]~70_combout\ : std_logic;
SIGNAL \Timer|CounterR[19]~71\ : std_logic;
SIGNAL \Timer|CounterR[20]~72_combout\ : std_logic;
SIGNAL \Timer|CounterR[20]~73\ : std_logic;
SIGNAL \Timer|CounterR[21]~74_combout\ : std_logic;
SIGNAL \Timer|CounterR[21]~75\ : std_logic;
SIGNAL \Timer|CounterR[22]~76_combout\ : std_logic;
SIGNAL \Timer|CounterR[22]~77\ : std_logic;
SIGNAL \Timer|CounterR[23]~78_combout\ : std_logic;
SIGNAL \Timer|CounterR[23]~79\ : std_logic;
SIGNAL \Timer|CounterR[24]~80_combout\ : std_logic;
SIGNAL \Timer|CounterR[24]~81\ : std_logic;
SIGNAL \Timer|CounterR[25]~82_combout\ : std_logic;
SIGNAL \Timer|CounterR[25]~83\ : std_logic;
SIGNAL \Timer|CounterR[26]~84_combout\ : std_logic;
SIGNAL \Timer|CounterR[26]~85\ : std_logic;
SIGNAL \Timer|CounterR[27]~86_combout\ : std_logic;
SIGNAL \Timer|CounterR[27]~87\ : std_logic;
SIGNAL \Timer|CounterR[28]~88_combout\ : std_logic;
SIGNAL \Timer|CounterR[28]~89\ : std_logic;
SIGNAL \Timer|CounterR[29]~90_combout\ : std_logic;
SIGNAL \Timer|CounterR[29]~91\ : std_logic;
SIGNAL \Timer|CounterR[30]~92_combout\ : std_logic;
SIGNAL \Timer|CounterR[30]~93\ : std_logic;
SIGNAL \Timer|CounterR[31]~94_combout\ : std_logic;
SIGNAL \Timer|Equal0~12_combout\ : std_logic;
SIGNAL \Timer|Equal0~11_combout\ : std_logic;
SIGNAL \Timer|Equal0~10_combout\ : std_logic;
SIGNAL \Timer|Equal0~13_combout\ : std_logic;
SIGNAL \Timer|Equal0~1_combout\ : std_logic;
SIGNAL \Timer|Equal0~2_combout\ : std_logic;
SIGNAL \Timer|Equal0~3_combout\ : std_logic;
SIGNAL \Timer|CompareR~0_combout\ : std_logic;
SIGNAL \Timer|Equal0~0_combout\ : std_logic;
SIGNAL \Timer|Equal0~4_combout\ : std_logic;
SIGNAL \Timer|Equal0~7_combout\ : std_logic;
SIGNAL \Timer|Equal0~8_combout\ : std_logic;
SIGNAL \Timer|Equal0~6_combout\ : std_logic;
SIGNAL \Timer|Equal0~5_combout\ : std_logic;
SIGNAL \Timer|Equal0~9_combout\ : std_logic;
SIGNAL \Timer|Equal0~14_combout\ : std_logic;
SIGNAL \Timer|StatusR~1_combout\ : std_logic;
SIGNAL \Timer|StatusR~2_combout\ : std_logic;
SIGNAL \Timer|always2~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wd_mux|y[0]~5_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wd_mux|y[0]~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wd_mux|y[0]~6_combout\ : std_logic;
SIGNAL \uGPIO|DataOut[0]~0_combout\ : std_logic;
SIGNAL \uGPIO|DataOut[0]~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~36_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S0~q\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~35_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S1~q\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~34_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S2~q\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~33_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S3~q\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~32_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S4~q\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~31_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S5~q\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~30_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S6~q\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~29_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S7~q\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~28_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S8~q\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~27_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S9~q\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~26_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S10~q\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~25_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S11~q\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~24_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S12~q\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~23_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S13~q\ : std_logic;
SIGNAL \uGPIO|sw0|c_state~22_combout\ : std_logic;
SIGNAL \uGPIO|sw0|c_state.S14~q\ : std_logic;
SIGNAL \uGPIO|SW_StatusR~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wd_mux|y[0]~7_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wd_mux|y[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wd_mux|y[0]~8_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R1[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R31[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[21]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~1\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~3\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[10]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[7]~20_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[2]~1\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[3]~3\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[4]~5\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[5]~7\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[6]~9\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[7]~11\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[8]~13\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[9]~15\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[10]~17\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[11]~19\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[12]~20_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q[12]~10_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[9]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[11]~18_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q[11]~9_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[8]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[10]~16_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q[10]~8_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[7]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[9]~14_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q[9]~7_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[6]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[8]~12_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q[8]~6_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Decoder0~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~24_combout\ : std_logic;
SIGNAL \mips_cpu|c|pcsrc~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|pcsrc~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[7]~10_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q[7]~5_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[4]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[6]~8_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q[6]~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[3]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[5]~6_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q[5]~3_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[2]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[4]~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q[4]~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[3]~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q[3]~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcadd2|y[2]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q[2]~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|WideOr7~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|WideOr7~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~54_combout\ : std_logic;
SIGNAL \Decoder|Equal0~0_combout\ : std_logic;
SIGNAL \Decoder|Equal0~1_combout\ : std_logic;
SIGNAL \Decoder|Equal0~2_combout\ : std_logic;
SIGNAL \Decoder|Equal0~3_combout\ : std_logic;
SIGNAL \Decoder|Equal0~4_combout\ : std_logic;
SIGNAL \Decoder|Equal0~5_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|WideOr9~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|WideOr9~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[20]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[17]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~2_combout\ : std_logic;
SIGNAL \uGPIO|HEX0_R~0_combout\ : std_logic;
SIGNAL \uGPIO|HEX3_R[0]~feeder_combout\ : std_logic;
SIGNAL \uGPIO|HEX1_R~0_combout\ : std_logic;
SIGNAL \uGPIO|HEX2_R~0_combout\ : std_logic;
SIGNAL \uGPIO|HEX3_R~0_combout\ : std_logic;
SIGNAL \uGPIO|HEX3_R[6]~1_combout\ : std_logic;
SIGNAL \uGPIO|HEX2_R[0]~feeder_combout\ : std_logic;
SIGNAL \uGPIO|HEX2_R~1_combout\ : std_logic;
SIGNAL \uGPIO|HEX2_R[6]~2_combout\ : std_logic;
SIGNAL \uGPIO|HEX1_R[0]~feeder_combout\ : std_logic;
SIGNAL \uGPIO|Equal2~2_combout\ : std_logic;
SIGNAL \uGPIO|LEDG_R~0_combout\ : std_logic;
SIGNAL \uGPIO|HEX1_R~1_combout\ : std_logic;
SIGNAL \uGPIO|HEX1_R~2_combout\ : std_logic;
SIGNAL \uGPIO|HEX1_R[6]~3_combout\ : std_logic;
SIGNAL \uGPIO|Equal3~0_combout\ : std_logic;
SIGNAL \uGPIO|HEX0_R~1_combout\ : std_logic;
SIGNAL \uGPIO|HEX0_R[6]~2_combout\ : std_logic;
SIGNAL \uGPIO|LEDG_R~1_combout\ : std_logic;
SIGNAL \uGPIO|LEDG_R[9]~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_pcplus4|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_signimm|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_inst_1|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_inst_2|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_C_regdst|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_C_alusrc|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_rd1|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_rd2|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R31\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|IF_ID_inst|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|q_b\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Timer|StatusR\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Timer|CounterR\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Timer|CompareR\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uGPIO|SW_StatusR\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uGPIO|LEDG_R\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uGPIO|HEX3_R\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uGPIO|HEX2_R\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uGPIO|HEX1_R\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uGPIO|HEX0_R\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|c|md|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|ALT_INV_WideOr9~1_combout\ : std_logic;
SIGNAL \ALT_INV_reset_ff~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_BUTTON <= BUTTON;
ww_SW <= SW;
HEX3_D <= ww_HEX3_D;
HEX2_D <= ww_HEX2_D;
HEX1_D <= ww_HEX1_D;
HEX0_D <= ww_HEX0_D;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll0|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\pll0|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll0|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll0|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll0|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll0|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(4);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\mips_cpu|dp|alu|Add0~24_combout\ & \mips_cpu|dp|alu|Add0~22_combout\ & \mips_cpu|dp|alu|Add0~20_combout\ & \mips_cpu|dp|alu|Add0~18_combout\ & 
\mips_cpu|dp|alu|Add0~16_combout\ & \mips_cpu|dp|alu|Add0~14_combout\ & \mips_cpu|dp|alu|Add0~12_combout\ & \mips_cpu|dp|alu|Add0~10_combout\ & \mips_cpu|dp|alu|Add0~8_combout\ & \mips_cpu|dp|alu|Add0~6_combout\ & \mips_cpu|dp|alu|Add0~4_combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(26) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(27) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(30) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(31) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(3);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\mips_cpu|dp|alu|Add0~24_combout\ & \mips_cpu|dp|alu|Add0~22_combout\ & \mips_cpu|dp|alu|Add0~20_combout\ & \mips_cpu|dp|alu|Add0~18_combout\ & 
\mips_cpu|dp|alu|Add0~16_combout\ & \mips_cpu|dp|alu|Add0~14_combout\ & \mips_cpu|dp|alu|Add0~12_combout\ & \mips_cpu|dp|alu|Add0~10_combout\ & \mips_cpu|dp|alu|Add0~8_combout\ & \mips_cpu|dp|alu|Add0~6_combout\ & \mips_cpu|dp|alu|Add0~4_combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(3) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(5) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(28) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(29) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(3);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \mips_cpu|dp|ID_EX_rd2|q\(0));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\mips_cpu|dp|alu|Add0~24_combout\ & \mips_cpu|dp|alu|Add0~22_combout\ & \mips_cpu|dp|alu|Add0~20_combout\ & \mips_cpu|dp|alu|Add0~18_combout\ & 
\mips_cpu|dp|alu|Add0~16_combout\ & \mips_cpu|dp|alu|Add0~14_combout\ & \mips_cpu|dp|alu|Add0~12_combout\ & \mips_cpu|dp|alu|Add0~10_combout\ & \mips_cpu|dp|alu|Add0~8_combout\ & \mips_cpu|dp|alu|Add0~6_combout\ & \mips_cpu|dp|alu|Add0~4_combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(0) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(1) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(2) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(4) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\Inst_Data_Mem|altsyncram_component|auto_generated|q_b\(0) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\mips_cpu|dp|alu|Add0~24_combout\ & \mips_cpu|dp|alu|Add0~22_combout\ & \mips_cpu|dp|alu|Add0~20_combout\ & \mips_cpu|dp|alu|Add0~18_combout\ & 
\mips_cpu|dp|alu|Add0~16_combout\ & \mips_cpu|dp|alu|Add0~14_combout\ & \mips_cpu|dp|alu|Add0~12_combout\ & \mips_cpu|dp|alu|Add0~10_combout\ & \mips_cpu|dp|alu|Add0~8_combout\ & \mips_cpu|dp|alu|Add0~6_combout\ & \mips_cpu|dp|alu|Add0~4_combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(16) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(18) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(19) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(20) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(3);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\mips_cpu|dp|alu|Add0~24_combout\ & \mips_cpu|dp|alu|Add0~22_combout\ & \mips_cpu|dp|alu|Add0~20_combout\ & \mips_cpu|dp|alu|Add0~18_combout\ & 
\mips_cpu|dp|alu|Add0~16_combout\ & \mips_cpu|dp|alu|Add0~14_combout\ & \mips_cpu|dp|alu|Add0~12_combout\ & \mips_cpu|dp|alu|Add0~10_combout\ & \mips_cpu|dp|alu|Add0~8_combout\ & \mips_cpu|dp|alu|Add0~6_combout\ & \mips_cpu|dp|alu|Add0~4_combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(17) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(21) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(24) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(25) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(3);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\mips_cpu|dp|alu|Add0~24_combout\ & \mips_cpu|dp|alu|Add0~22_combout\ & \mips_cpu|dp|alu|Add0~20_combout\ & \mips_cpu|dp|alu|Add0~18_combout\ & 
\mips_cpu|dp|alu|Add0~16_combout\ & \mips_cpu|dp|alu|Add0~14_combout\ & \mips_cpu|dp|alu|Add0~12_combout\ & \mips_cpu|dp|alu|Add0~10_combout\ & \mips_cpu|dp|alu|Add0~8_combout\ & \mips_cpu|dp|alu|Add0~6_combout\ & \mips_cpu|dp|alu|Add0~4_combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(12) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(13) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(22) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(23) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(3);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\mips_cpu|dp|alu|Add0~24_combout\ & \mips_cpu|dp|alu|Add0~22_combout\ & \mips_cpu|dp|alu|Add0~20_combout\ & \mips_cpu|dp|alu|Add0~18_combout\ & 
\mips_cpu|dp|alu|Add0~16_combout\ & \mips_cpu|dp|alu|Add0~14_combout\ & \mips_cpu|dp|alu|Add0~12_combout\ & \mips_cpu|dp|alu|Add0~10_combout\ & \mips_cpu|dp|alu|Add0~8_combout\ & \mips_cpu|dp|alu|Add0~6_combout\ & \mips_cpu|dp|alu|Add0~4_combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(8) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(9) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(10) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(11) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\mips_cpu|dp|alu|Add0~24_combout\ & \mips_cpu|dp|alu|Add0~22_combout\ & \mips_cpu|dp|alu|Add0~20_combout\ & \mips_cpu|dp|alu|Add0~18_combout\ & 
\mips_cpu|dp|alu|Add0~16_combout\ & \mips_cpu|dp|alu|Add0~14_combout\ & \mips_cpu|dp|alu|Add0~12_combout\ & \mips_cpu|dp|alu|Add0~10_combout\ & \mips_cpu|dp|alu|Add0~8_combout\ & \mips_cpu|dp|alu|Add0~6_combout\ & \mips_cpu|dp|alu|Add0~4_combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(6) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(7) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(14) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(15) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(3);

\pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll0|altpll_component|auto_generated|wire_pll1_clk\(0));

\pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll0|altpll_component|auto_generated|wire_pll1_clk\(1));

\pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll0|altpll_component|auto_generated|wire_pll1_clk\(2));
\mips_cpu|c|md|ALT_INV_Selector8~1_combout\ <= NOT \mips_cpu|c|md|Selector8~1_combout\;
\mips_cpu|dp|ALT_INV_comb~1_combout\ <= NOT \mips_cpu|dp|comb~1_combout\;
\mips_cpu|c|md|ALT_INV_WideOr9~1_combout\ <= NOT \mips_cpu|c|md|WideOr9~1_combout\;
\ALT_INV_reset_ff~q\ <= NOT \reset_ff~q\;

-- Location: IOOBUF_X32_Y29_N23
\HEX3_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|HEX3_R\(0),
	devoe => ww_devoe,
	o => ww_HEX3_D(0));

-- Location: IOOBUF_X39_Y29_N16
\HEX3_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3_D(1));

-- Location: IOOBUF_X32_Y29_N9
\HEX3_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3_D(2));

-- Location: IOOBUF_X32_Y29_N2
\HEX3_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3_D(3));

-- Location: IOOBUF_X37_Y29_N23
\HEX3_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3_D(4));

-- Location: IOOBUF_X37_Y29_N30
\HEX3_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3_D(5));

-- Location: IOOBUF_X39_Y29_N30
\HEX3_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|HEX3_R\(6),
	devoe => ww_devoe,
	o => ww_HEX3_D(6));

-- Location: IOOBUF_X32_Y29_N30
\HEX2_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|HEX2_R\(0),
	devoe => ww_devoe,
	o => ww_HEX2_D(0));

-- Location: IOOBUF_X30_Y29_N30
\HEX2_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2_D(1));

-- Location: IOOBUF_X28_Y29_N2
\HEX2_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2_D(2));

-- Location: IOOBUF_X30_Y29_N2
\HEX2_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2_D(3));

-- Location: IOOBUF_X30_Y29_N16
\HEX2_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2_D(4));

-- Location: IOOBUF_X30_Y29_N23
\HEX2_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2_D(5));

-- Location: IOOBUF_X37_Y29_N2
\HEX2_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|HEX2_R\(6),
	devoe => ww_devoe,
	o => ww_HEX2_D(6));

-- Location: IOOBUF_X21_Y29_N2
\HEX1_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|HEX1_R\(0),
	devoe => ww_devoe,
	o => ww_HEX1_D(0));

-- Location: IOOBUF_X21_Y29_N9
\HEX1_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1_D(1));

-- Location: IOOBUF_X23_Y29_N2
\HEX1_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1_D(2));

-- Location: IOOBUF_X23_Y29_N23
\HEX1_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1_D(3));

-- Location: IOOBUF_X23_Y29_N30
\HEX1_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1_D(4));

-- Location: IOOBUF_X28_Y29_N16
\HEX1_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1_D(5));

-- Location: IOOBUF_X26_Y29_N23
\HEX1_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|HEX1_R\(6),
	devoe => ww_devoe,
	o => ww_HEX1_D(6));

-- Location: IOOBUF_X21_Y29_N23
\HEX0_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|HEX0_R\(0),
	devoe => ww_devoe,
	o => ww_HEX0_D(0));

-- Location: IOOBUF_X21_Y29_N30
\HEX0_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0_D(1));

-- Location: IOOBUF_X26_Y29_N2
\HEX0_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0_D(2));

-- Location: IOOBUF_X28_Y29_N30
\HEX0_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0_D(3));

-- Location: IOOBUF_X26_Y29_N9
\HEX0_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0_D(4));

-- Location: IOOBUF_X28_Y29_N23
\HEX0_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0_D(5));

-- Location: IOOBUF_X26_Y29_N16
\HEX0_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|HEX0_R\(6),
	devoe => ww_devoe,
	o => ww_HEX0_D(6));

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|LEDG_R\(0),
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X0_Y20_N2
\LEDG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|LEDG_R\(9),
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X0_Y21_N23
\LEDG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|LEDG_R\(9),
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X0_Y21_N16
\LEDG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|LEDG_R\(9),
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X0_Y24_N23
\LEDG[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|LEDG_R\(9),
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X0_Y24_N16
\LEDG[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|LEDG_R\(9),
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X0_Y26_N23
\LEDG[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|LEDG_R\(9),
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X0_Y26_N16
\LEDG[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|LEDG_R\(9),
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOOBUF_X0_Y27_N9
\LEDG[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|LEDG_R\(9),
	devoe => ww_devoe,
	o => ww_LEDG(8));

-- Location: IOOBUF_X0_Y27_N16
\LEDG[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uGPIO|LEDG_R\(9),
	devoe => ww_devoe,
	o => ww_LEDG(9));

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_2
\pll0|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 30,
	c0_initial => 1,
	c0_low => 30,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 30,
	c1_initial => 16,
	c1_low => 30,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 30,
	c2_initial => 31,
	c2_low => 30,
	c2_mode => "even",
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
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 5,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 1,
	clk1_phase_shift => "25000",
	clk2_counter => "c2",
	clk2_divide_by => 5,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 1,
	clk2_phase_shift => "50000",
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
	pll_compensation_delay => 3418,
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
	fbin => \pll0|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll0|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \pll0|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \pll0|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll0|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: CLKCTRL_G9
\pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: CLKCTRL_G7
\pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y19_N16
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X15_Y21_N4
\mips_cpu|dp|IF_ID_pcplus4|q[2]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[2]~32_combout\ = !\mips_cpu|dp|pcreg|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_cpu|dp|pcreg|q\(2),
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[2]~32_combout\);

-- Location: IOIBUF_X0_Y21_N8
\BUTTON[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON(0),
	o => \BUTTON[0]~input_o\);

-- Location: LCCOMB_X20_Y21_N24
reset : cycloneiii_lcell_comb
-- Equation(s):
-- \reset~combout\ = (\BUTTON[0]~input_o\ & \pll0|altpll_component|auto_generated|wire_pll1_locked\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON[0]~input_o\,
	datac => \pll0|altpll_component|auto_generated|wire_pll1_locked\,
	combout => \reset~combout\);

-- Location: FF_X20_Y21_N25
reset_ff : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_ff~q\);

-- Location: FF_X15_Y21_N5
\mips_cpu|dp|IF_ID_pcplus4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[2]~32_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(2));

-- Location: FF_X15_Y21_N7
\mips_cpu|dp|ID_EX_pcplus4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_pcplus4|q\(2),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_pcplus4|q\(2));

-- Location: LCCOMB_X14_Y21_N8
\mips_cpu|dp|IF_ID_pcplus4|q[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[3]~11_cout\ = CARRY(\mips_cpu|dp|pcreg|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|pcreg|q\(2),
	datad => VCC,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[3]~11_cout\);

-- Location: LCCOMB_X14_Y21_N10
\mips_cpu|dp|IF_ID_pcplus4|q[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[3]~12_combout\ = (\mips_cpu|dp|pcreg|q\(3) & (!\mips_cpu|dp|IF_ID_pcplus4|q[3]~11_cout\)) # (!\mips_cpu|dp|pcreg|q\(3) & ((\mips_cpu|dp|IF_ID_pcplus4|q[3]~11_cout\) # (GND)))
-- \mips_cpu|dp|IF_ID_pcplus4|q[3]~13\ = CARRY((!\mips_cpu|dp|IF_ID_pcplus4|q[3]~11_cout\) # (!\mips_cpu|dp|pcreg|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|pcreg|q\(3),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[3]~11_cout\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[3]~12_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[3]~13\);

-- Location: FF_X14_Y21_N11
\mips_cpu|dp|IF_ID_pcplus4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[3]~12_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(3));

-- Location: LCCOMB_X14_Y21_N12
\mips_cpu|dp|IF_ID_pcplus4|q[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[4]~14_combout\ = (\mips_cpu|dp|pcreg|q\(4) & (\mips_cpu|dp|IF_ID_pcplus4|q[3]~13\ $ (GND))) # (!\mips_cpu|dp|pcreg|q\(4) & (!\mips_cpu|dp|IF_ID_pcplus4|q[3]~13\ & VCC))
-- \mips_cpu|dp|IF_ID_pcplus4|q[4]~15\ = CARRY((\mips_cpu|dp|pcreg|q\(4) & !\mips_cpu|dp|IF_ID_pcplus4|q[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q\(4),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[3]~13\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[4]~14_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[4]~15\);

-- Location: FF_X14_Y21_N13
\mips_cpu|dp|IF_ID_pcplus4|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[4]~14_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(4));

-- Location: FF_X15_Y21_N11
\mips_cpu|dp|ID_EX_pcplus4|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_pcplus4|q\(4),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_pcplus4|q\(4));

-- Location: LCCOMB_X14_Y21_N14
\mips_cpu|dp|IF_ID_pcplus4|q[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[5]~16_combout\ = (\mips_cpu|dp|pcreg|q\(5) & (!\mips_cpu|dp|IF_ID_pcplus4|q[4]~15\)) # (!\mips_cpu|dp|pcreg|q\(5) & ((\mips_cpu|dp|IF_ID_pcplus4|q[4]~15\) # (GND)))
-- \mips_cpu|dp|IF_ID_pcplus4|q[5]~17\ = CARRY((!\mips_cpu|dp|IF_ID_pcplus4|q[4]~15\) # (!\mips_cpu|dp|pcreg|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|pcreg|q\(5),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[4]~15\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[5]~16_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[5]~17\);

-- Location: FF_X14_Y21_N15
\mips_cpu|dp|IF_ID_pcplus4|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[5]~16_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(5));

-- Location: FF_X15_Y21_N13
\mips_cpu|dp|ID_EX_pcplus4|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_pcplus4|q\(5),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_pcplus4|q\(5));

-- Location: LCCOMB_X14_Y21_N16
\mips_cpu|dp|IF_ID_pcplus4|q[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[6]~18_combout\ = (\mips_cpu|dp|pcreg|q\(6) & (\mips_cpu|dp|IF_ID_pcplus4|q[5]~17\ $ (GND))) # (!\mips_cpu|dp|pcreg|q\(6) & (!\mips_cpu|dp|IF_ID_pcplus4|q[5]~17\ & VCC))
-- \mips_cpu|dp|IF_ID_pcplus4|q[6]~19\ = CARRY((\mips_cpu|dp|pcreg|q\(6) & !\mips_cpu|dp|IF_ID_pcplus4|q[5]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|pcreg|q\(6),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[5]~17\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[6]~18_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[6]~19\);

-- Location: FF_X14_Y21_N17
\mips_cpu|dp|IF_ID_pcplus4|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[6]~18_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(6));

-- Location: FF_X15_Y21_N15
\mips_cpu|dp|ID_EX_pcplus4|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_pcplus4|q\(6),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_pcplus4|q\(6));

-- Location: LCCOMB_X14_Y21_N18
\mips_cpu|dp|IF_ID_pcplus4|q[7]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[7]~20_combout\ = (\mips_cpu|dp|pcreg|q\(7) & (!\mips_cpu|dp|IF_ID_pcplus4|q[6]~19\)) # (!\mips_cpu|dp|pcreg|q\(7) & ((\mips_cpu|dp|IF_ID_pcplus4|q[6]~19\) # (GND)))
-- \mips_cpu|dp|IF_ID_pcplus4|q[7]~21\ = CARRY((!\mips_cpu|dp|IF_ID_pcplus4|q[6]~19\) # (!\mips_cpu|dp|pcreg|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|pcreg|q\(7),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[6]~19\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[7]~20_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[7]~21\);

-- Location: LCCOMB_X14_Y21_N20
\mips_cpu|dp|IF_ID_pcplus4|q[8]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[8]~22_combout\ = (\mips_cpu|dp|pcreg|q\(8) & (\mips_cpu|dp|IF_ID_pcplus4|q[7]~21\ $ (GND))) # (!\mips_cpu|dp|pcreg|q\(8) & (!\mips_cpu|dp|IF_ID_pcplus4|q[7]~21\ & VCC))
-- \mips_cpu|dp|IF_ID_pcplus4|q[8]~23\ = CARRY((\mips_cpu|dp|pcreg|q\(8) & !\mips_cpu|dp|IF_ID_pcplus4|q[7]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q\(8),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[7]~21\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[8]~22_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[8]~23\);

-- Location: FF_X14_Y21_N21
\mips_cpu|dp|IF_ID_pcplus4|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[8]~22_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(8));

-- Location: LCCOMB_X14_Y21_N22
\mips_cpu|dp|IF_ID_pcplus4|q[9]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[9]~24_combout\ = (\mips_cpu|dp|pcreg|q\(9) & (!\mips_cpu|dp|IF_ID_pcplus4|q[8]~23\)) # (!\mips_cpu|dp|pcreg|q\(9) & ((\mips_cpu|dp|IF_ID_pcplus4|q[8]~23\) # (GND)))
-- \mips_cpu|dp|IF_ID_pcplus4|q[9]~25\ = CARRY((!\mips_cpu|dp|IF_ID_pcplus4|q[8]~23\) # (!\mips_cpu|dp|pcreg|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|pcreg|q\(9),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[8]~23\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[9]~24_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[9]~25\);

-- Location: FF_X14_Y21_N23
\mips_cpu|dp|IF_ID_pcplus4|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[9]~24_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(9));

-- Location: LCCOMB_X14_Y21_N24
\mips_cpu|dp|IF_ID_pcplus4|q[10]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[10]~26_combout\ = (\mips_cpu|dp|pcreg|q\(10) & (\mips_cpu|dp|IF_ID_pcplus4|q[9]~25\ $ (GND))) # (!\mips_cpu|dp|pcreg|q\(10) & (!\mips_cpu|dp|IF_ID_pcplus4|q[9]~25\ & VCC))
-- \mips_cpu|dp|IF_ID_pcplus4|q[10]~27\ = CARRY((\mips_cpu|dp|pcreg|q\(10) & !\mips_cpu|dp|IF_ID_pcplus4|q[9]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q\(10),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[9]~25\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[10]~26_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[10]~27\);

-- Location: FF_X14_Y21_N25
\mips_cpu|dp|IF_ID_pcplus4|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[10]~26_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(10));

-- Location: FF_X15_Y21_N23
\mips_cpu|dp|ID_EX_pcplus4|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_pcplus4|q\(10),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_pcplus4|q\(10));

-- Location: LCCOMB_X14_Y21_N26
\mips_cpu|dp|IF_ID_pcplus4|q[11]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[11]~28_combout\ = (\mips_cpu|dp|pcreg|q\(11) & (!\mips_cpu|dp|IF_ID_pcplus4|q[10]~27\)) # (!\mips_cpu|dp|pcreg|q\(11) & ((\mips_cpu|dp|IF_ID_pcplus4|q[10]~27\) # (GND)))
-- \mips_cpu|dp|IF_ID_pcplus4|q[11]~29\ = CARRY((!\mips_cpu|dp|IF_ID_pcplus4|q[10]~27\) # (!\mips_cpu|dp|pcreg|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q\(11),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[10]~27\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[11]~28_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[11]~29\);

-- Location: FF_X14_Y21_N27
\mips_cpu|dp|IF_ID_pcplus4|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[11]~28_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(11));

-- Location: FF_X15_Y21_N25
\mips_cpu|dp|ID_EX_pcplus4|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_pcplus4|q\(11),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_pcplus4|q\(11));

-- Location: LCCOMB_X14_Y21_N28
\mips_cpu|dp|IF_ID_pcplus4|q[12]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[12]~30_combout\ = \mips_cpu|dp|pcreg|q\(12) $ (!\mips_cpu|dp|IF_ID_pcplus4|q[11]~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|pcreg|q\(12),
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[11]~29\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[12]~30_combout\);

-- Location: FF_X14_Y21_N29
\mips_cpu|dp|IF_ID_pcplus4|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[12]~30_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(12));

-- Location: LCCOMB_X16_Y21_N4
\mips_cpu|dp|alu|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~4_combout\ = (\mips_cpu|dp|alu|Add0~3\ & (\mips_cpu|dp|srcbmux|y[0]~0_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(2) & VCC))) # (!\mips_cpu|dp|alu|Add0~3\ & ((((\mips_cpu|dp|srcbmux|y[0]~0_combout\ & 
-- \mips_cpu|dp|ID_EX_signimm|q\(2))))))
-- \mips_cpu|dp|alu|Add0~5\ = CARRY((\mips_cpu|dp|srcbmux|y[0]~0_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(2) & !\mips_cpu|dp|alu|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datab => \mips_cpu|dp|ID_EX_signimm|q\(2),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~3\,
	combout => \mips_cpu|dp|alu|Add0~4_combout\,
	cout => \mips_cpu|dp|alu|Add0~5\);

-- Location: LCCOMB_X16_Y21_N6
\mips_cpu|dp|alu|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~6_combout\ = (\mips_cpu|dp|alu|Add0~5\ & (((!\mips_cpu|dp|srcbmux|y[0]~0_combout\)) # (!\mips_cpu|dp|ID_EX_signimm|q\(3)))) # (!\mips_cpu|dp|alu|Add0~5\ & (((\mips_cpu|dp|ID_EX_signimm|q\(3) & \mips_cpu|dp|srcbmux|y[0]~0_combout\)) # 
-- (GND)))
-- \mips_cpu|dp|alu|Add0~7\ = CARRY(((!\mips_cpu|dp|alu|Add0~5\) # (!\mips_cpu|dp|srcbmux|y[0]~0_combout\)) # (!\mips_cpu|dp|ID_EX_signimm|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(3),
	datab => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~5\,
	combout => \mips_cpu|dp|alu|Add0~6_combout\,
	cout => \mips_cpu|dp|alu|Add0~7\);

-- Location: LCCOMB_X16_Y21_N8
\mips_cpu|dp|alu|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~8_combout\ = (\mips_cpu|dp|alu|Add0~7\ & (\mips_cpu|dp|ID_EX_signimm|q\(4) & (\mips_cpu|dp|srcbmux|y[0]~0_combout\ & VCC))) # (!\mips_cpu|dp|alu|Add0~7\ & ((((\mips_cpu|dp|ID_EX_signimm|q\(4) & 
-- \mips_cpu|dp|srcbmux|y[0]~0_combout\)))))
-- \mips_cpu|dp|alu|Add0~9\ = CARRY((\mips_cpu|dp|ID_EX_signimm|q\(4) & (\mips_cpu|dp|srcbmux|y[0]~0_combout\ & !\mips_cpu|dp|alu|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(4),
	datab => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~7\,
	combout => \mips_cpu|dp|alu|Add0~8_combout\,
	cout => \mips_cpu|dp|alu|Add0~9\);

-- Location: LCCOMB_X16_Y21_N10
\mips_cpu|dp|alu|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~10_combout\ = (\mips_cpu|dp|alu|Add0~9\ & (((!\mips_cpu|dp|srcbmux|y[0]~0_combout\)) # (!\mips_cpu|dp|ID_EX_signimm|q\(5)))) # (!\mips_cpu|dp|alu|Add0~9\ & (((\mips_cpu|dp|ID_EX_signimm|q\(5) & \mips_cpu|dp|srcbmux|y[0]~0_combout\)) 
-- # (GND)))
-- \mips_cpu|dp|alu|Add0~11\ = CARRY(((!\mips_cpu|dp|alu|Add0~9\) # (!\mips_cpu|dp|srcbmux|y[0]~0_combout\)) # (!\mips_cpu|dp|ID_EX_signimm|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(5),
	datab => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~9\,
	combout => \mips_cpu|dp|alu|Add0~10_combout\,
	cout => \mips_cpu|dp|alu|Add0~11\);

-- Location: LCCOMB_X16_Y21_N12
\mips_cpu|dp|alu|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~12_combout\ = (\mips_cpu|dp|alu|Add0~11\ & (\mips_cpu|dp|ID_EX_signimm|q\(6) & (\mips_cpu|dp|srcbmux|y[0]~0_combout\ & VCC))) # (!\mips_cpu|dp|alu|Add0~11\ & ((((\mips_cpu|dp|ID_EX_signimm|q\(6) & 
-- \mips_cpu|dp|srcbmux|y[0]~0_combout\)))))
-- \mips_cpu|dp|alu|Add0~13\ = CARRY((\mips_cpu|dp|ID_EX_signimm|q\(6) & (\mips_cpu|dp|srcbmux|y[0]~0_combout\ & !\mips_cpu|dp|alu|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(6),
	datab => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~11\,
	combout => \mips_cpu|dp|alu|Add0~12_combout\,
	cout => \mips_cpu|dp|alu|Add0~13\);

-- Location: LCCOMB_X16_Y21_N14
\mips_cpu|dp|alu|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~14_combout\ = (\mips_cpu|dp|alu|Add0~13\ & (((!\mips_cpu|dp|srcbmux|y[0]~0_combout\)) # (!\mips_cpu|dp|ID_EX_signimm|q\(7)))) # (!\mips_cpu|dp|alu|Add0~13\ & (((\mips_cpu|dp|ID_EX_signimm|q\(7) & 
-- \mips_cpu|dp|srcbmux|y[0]~0_combout\)) # (GND)))
-- \mips_cpu|dp|alu|Add0~15\ = CARRY(((!\mips_cpu|dp|alu|Add0~13\) # (!\mips_cpu|dp|srcbmux|y[0]~0_combout\)) # (!\mips_cpu|dp|ID_EX_signimm|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(7),
	datab => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~13\,
	combout => \mips_cpu|dp|alu|Add0~14_combout\,
	cout => \mips_cpu|dp|alu|Add0~15\);

-- Location: LCCOMB_X16_Y21_N16
\mips_cpu|dp|alu|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~16_combout\ = (\mips_cpu|dp|alu|Add0~15\ & (\mips_cpu|dp|srcbmux|y[0]~0_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(8) & VCC))) # (!\mips_cpu|dp|alu|Add0~15\ & ((((\mips_cpu|dp|srcbmux|y[0]~0_combout\ & 
-- \mips_cpu|dp|ID_EX_signimm|q\(8))))))
-- \mips_cpu|dp|alu|Add0~17\ = CARRY((\mips_cpu|dp|srcbmux|y[0]~0_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(8) & !\mips_cpu|dp|alu|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datab => \mips_cpu|dp|ID_EX_signimm|q\(8),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~15\,
	combout => \mips_cpu|dp|alu|Add0~16_combout\,
	cout => \mips_cpu|dp|alu|Add0~17\);

-- Location: LCCOMB_X16_Y21_N18
\mips_cpu|dp|alu|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~18_combout\ = (\mips_cpu|dp|alu|Add0~17\ & (((!\mips_cpu|dp|ID_EX_signimm|q\(9))) # (!\mips_cpu|dp|srcbmux|y[0]~0_combout\))) # (!\mips_cpu|dp|alu|Add0~17\ & (((\mips_cpu|dp|srcbmux|y[0]~0_combout\ & 
-- \mips_cpu|dp|ID_EX_signimm|q\(9))) # (GND)))
-- \mips_cpu|dp|alu|Add0~19\ = CARRY(((!\mips_cpu|dp|alu|Add0~17\) # (!\mips_cpu|dp|ID_EX_signimm|q\(9))) # (!\mips_cpu|dp|srcbmux|y[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datab => \mips_cpu|dp|ID_EX_signimm|q\(9),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~17\,
	combout => \mips_cpu|dp|alu|Add0~18_combout\,
	cout => \mips_cpu|dp|alu|Add0~19\);

-- Location: LCCOMB_X16_Y21_N20
\mips_cpu|dp|alu|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~20_combout\ = (\mips_cpu|dp|alu|Add0~19\ & (\mips_cpu|dp|srcbmux|y[0]~0_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(10) & VCC))) # (!\mips_cpu|dp|alu|Add0~19\ & ((((\mips_cpu|dp|srcbmux|y[0]~0_combout\ & 
-- \mips_cpu|dp|ID_EX_signimm|q\(10))))))
-- \mips_cpu|dp|alu|Add0~21\ = CARRY((\mips_cpu|dp|srcbmux|y[0]~0_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(10) & !\mips_cpu|dp|alu|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datab => \mips_cpu|dp|ID_EX_signimm|q\(10),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~19\,
	combout => \mips_cpu|dp|alu|Add0~20_combout\,
	cout => \mips_cpu|dp|alu|Add0~21\);

-- Location: M9K_X13_Y21_N0
\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F080F00F000F00F0F00000F000400400F888",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "insts_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram2port_inst_data:Inst_Data_Mem|altsyncram:altsyncram_component|altsyncram_5ul2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \mips_cpu|c|md|ALT_INV_WideOr9~1_combout\,
	portbre => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	ena1 => \Decoder|Equal0~5_combout\,
	portadatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portbdatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\,
	portaaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y21_N12
\mips_cpu|dp|IF_ID_inst|q[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[11]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(11),
	combout => \mips_cpu|dp|IF_ID_inst|q[11]~feeder_combout\);

-- Location: FF_X17_Y21_N13
\mips_cpu|dp|IF_ID_inst|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[11]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(11));

-- Location: FF_X16_Y21_N23
\mips_cpu|dp|ID_EX_inst_2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(11),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_inst_2|q\(0));

-- Location: LCCOMB_X16_Y21_N22
\mips_cpu|dp|alu|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~22_combout\ = (\mips_cpu|dp|alu|Add0~21\ & (((!\mips_cpu|dp|ID_EX_inst_2|q\(0))) # (!\mips_cpu|dp|srcbmux|y[0]~0_combout\))) # (!\mips_cpu|dp|alu|Add0~21\ & (((\mips_cpu|dp|srcbmux|y[0]~0_combout\ & \mips_cpu|dp|ID_EX_inst_2|q\(0))) 
-- # (GND)))
-- \mips_cpu|dp|alu|Add0~23\ = CARRY(((!\mips_cpu|dp|alu|Add0~21\) # (!\mips_cpu|dp|ID_EX_inst_2|q\(0))) # (!\mips_cpu|dp|srcbmux|y[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datab => \mips_cpu|dp|ID_EX_inst_2|q\(0),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~21\,
	combout => \mips_cpu|dp|alu|Add0~22_combout\,
	cout => \mips_cpu|dp|alu|Add0~23\);

-- Location: M9K_X13_Y19_N0
\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030012230000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003889028283883890288283808803900AC8AC2F228",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "insts_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram2port_inst_data:Inst_Data_Mem|altsyncram:altsyncram_component|altsyncram_5ul2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \mips_cpu|c|md|ALT_INV_WideOr9~1_combout\,
	portbre => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	ena1 => \Decoder|Equal0~5_combout\,
	portadatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portbdatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\,
	portaaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: FF_X19_Y21_N27
\mips_cpu|dp|IF_ID_inst|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(5),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(5));

-- Location: FF_X16_Y21_N11
\mips_cpu|dp|ID_EX_signimm|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(5),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(5));

-- Location: FF_X14_Y20_N27
\mips_cpu|dp|IF_ID_inst|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(29),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(29));

-- Location: FF_X14_Y20_N29
\mips_cpu|dp|IF_ID_inst|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(28),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(28));

-- Location: LCCOMB_X14_Y20_N28
\mips_cpu|dp|srcbmux|y[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[0]~1_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & (((!\mips_cpu|dp|IF_ID_inst|q\(28))) # (!\mips_cpu|dp|IF_ID_inst|q\(29)))) # (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & (((\mips_cpu|dp|ID_EX_rd2|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(29),
	datab => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(28),
	datad => \mips_cpu|dp|ID_EX_rd2|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[0]~1_combout\);

-- Location: LCCOMB_X14_Y20_N14
\mips_cpu|dp|srcbmux|y[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[0]~2_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(0) & ((\mips_cpu|dp|srcbmux|y[0]~1_combout\) # (!\mips_cpu|c|md|Decoder0~0_combout\)))) # (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & 
-- (((\mips_cpu|dp|srcbmux|y[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|md|Decoder0~0_combout\,
	datab => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(0),
	datad => \mips_cpu|dp|srcbmux|y[0]~1_combout\,
	combout => \mips_cpu|dp|srcbmux|y[0]~2_combout\);

-- Location: M9K_X25_Y18_N0
\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004448345034434483443434844834800088053550",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "insts_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram2port_inst_data:Inst_Data_Mem|altsyncram:altsyncram_component|altsyncram_5ul2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \mips_cpu|c|md|ALT_INV_WideOr9~1_combout\,
	portbre => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	ena1 => \Decoder|Equal0~5_combout\,
	portadatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portbdatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\,
	portaaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: FF_X23_Y20_N23
\mips_cpu|dp|IF_ID_inst|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(23),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(23));

-- Location: M9K_X13_Y20_N0
\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002B00BBB00BB0BB0BBB0BBB0BB0BBBBB13B1303000",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "insts_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram2port_inst_data:Inst_Data_Mem|altsyncram:altsyncram_component|altsyncram_5ul2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 26,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \mips_cpu|c|md|ALT_INV_WideOr9~1_combout\,
	portbre => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	ena1 => \Decoder|Equal0~5_combout\,
	portadatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portbdatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAIN_bus\,
	portaaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: FF_X14_Y20_N3
\mips_cpu|dp|IF_ID_inst|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(27),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(27));

-- Location: LCCOMB_X14_Y20_N6
\mips_cpu|c|md|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector8~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(29)) # ((\mips_cpu|dp|IF_ID_inst|q\(28)) # ((\mips_cpu|dp|IF_ID_inst|q\(26) & \mips_cpu|dp|IF_ID_inst|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(29),
	datab => \mips_cpu|dp|IF_ID_inst|q\(26),
	datac => \mips_cpu|dp|IF_ID_inst|q\(31),
	datad => \mips_cpu|dp|IF_ID_inst|q\(28),
	combout => \mips_cpu|c|md|Selector8~0_combout\);

-- Location: LCCOMB_X19_Y21_N26
\mips_cpu|c|md|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Equal0~0_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(4) & (\mips_cpu|dp|IF_ID_inst|q\(3) & (!\mips_cpu|dp|IF_ID_inst|q\(5) & !\mips_cpu|dp|IF_ID_inst|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(4),
	datab => \mips_cpu|dp|IF_ID_inst|q\(3),
	datac => \mips_cpu|dp|IF_ID_inst|q\(5),
	datad => \mips_cpu|dp|IF_ID_inst|q\(2),
	combout => \mips_cpu|c|md|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y20_N18
\mips_cpu|dp|comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|comb~0_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(26) & !\mips_cpu|dp|IF_ID_inst|q\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|IF_ID_inst|q\(26),
	datad => \mips_cpu|dp|IF_ID_inst|q\(28),
	combout => \mips_cpu|dp|comb~0_combout\);

-- Location: LCCOMB_X19_Y21_N30
\mips_cpu|c|md|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector3~1_combout\ = (\mips_cpu|dp|comb~0_combout\ & (((\mips_cpu|dp|IF_ID_inst|q\(0)) # (\mips_cpu|dp|IF_ID_inst|q\(1))) # (!\mips_cpu|c|md|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|md|Equal0~0_combout\,
	datab => \mips_cpu|dp|comb~0_combout\,
	datac => \mips_cpu|dp|IF_ID_inst|q\(0),
	datad => \mips_cpu|dp|IF_ID_inst|q\(1),
	combout => \mips_cpu|c|md|Selector3~1_combout\);

-- Location: LCCOMB_X14_Y20_N16
\mips_cpu|c|md|Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector8~1_combout\ = (\mips_cpu|c|md|Selector8~0_combout\) # ((!\mips_cpu|dp|IF_ID_inst|q\(29) & (!\mips_cpu|dp|IF_ID_inst|q\(27) & \mips_cpu|c|md|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(29),
	datab => \mips_cpu|dp|IF_ID_inst|q\(27),
	datac => \mips_cpu|c|md|Selector8~0_combout\,
	datad => \mips_cpu|c|md|Selector3~1_combout\,
	combout => \mips_cpu|c|md|Selector8~1_combout\);

-- Location: LCCOMB_X14_Y20_N10
\mips_cpu|c|md|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector2~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(31) & ((\mips_cpu|dp|IF_ID_inst|q\(29) $ (\mips_cpu|dp|IF_ID_inst|q\(26))))) # (!\mips_cpu|dp|IF_ID_inst|q\(31) & ((\mips_cpu|dp|IF_ID_inst|q\(29)) # ((!\mips_cpu|dp|IF_ID_inst|q\(28) & 
-- \mips_cpu|dp|IF_ID_inst|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(31),
	datab => \mips_cpu|dp|IF_ID_inst|q\(28),
	datac => \mips_cpu|dp|IF_ID_inst|q\(29),
	datad => \mips_cpu|dp|IF_ID_inst|q\(26),
	combout => \mips_cpu|c|md|Selector2~0_combout\);

-- Location: LCCOMB_X14_Y20_N4
\mips_cpu|c|md|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector2~1_combout\ = (\mips_cpu|c|md|Selector2~0_combout\) # ((!\mips_cpu|dp|IF_ID_inst|q\(27) & (!\mips_cpu|dp|IF_ID_inst|q\(29) & \mips_cpu|c|md|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|md|Selector2~0_combout\,
	datab => \mips_cpu|dp|IF_ID_inst|q\(27),
	datac => \mips_cpu|dp|IF_ID_inst|q\(29),
	datad => \mips_cpu|c|md|Selector3~1_combout\,
	combout => \mips_cpu|c|md|Selector2~1_combout\);

-- Location: FF_X19_Y21_N3
\mips_cpu|dp|ID_EX_inst_1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(16),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_inst_1|q\(0));

-- Location: LCCOMB_X14_Y20_N0
\mips_cpu|c|md|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector3~0_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(31) & (!\mips_cpu|dp|IF_ID_inst|q\(30) & (!\mips_cpu|dp|IF_ID_inst|q\(29) & !\mips_cpu|dp|IF_ID_inst|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(31),
	datab => \mips_cpu|dp|IF_ID_inst|q\(30),
	datac => \mips_cpu|dp|IF_ID_inst|q\(29),
	datad => \mips_cpu|dp|IF_ID_inst|q\(27),
	combout => \mips_cpu|c|md|Selector3~0_combout\);

-- Location: LCCOMB_X19_Y21_N20
\mips_cpu|c|md|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Equal0~1_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(0) & !\mips_cpu|dp|IF_ID_inst|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(1),
	combout => \mips_cpu|c|md|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y21_N28
\mips_cpu|c|md|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector3~2_combout\ = (\mips_cpu|c|md|Selector3~0_combout\ & (\mips_cpu|dp|comb~0_combout\ & ((!\mips_cpu|c|md|Equal0~1_combout\) # (!\mips_cpu|c|md|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|md|Selector3~0_combout\,
	datab => \mips_cpu|dp|comb~0_combout\,
	datac => \mips_cpu|c|md|Equal0~0_combout\,
	datad => \mips_cpu|c|md|Equal0~1_combout\,
	combout => \mips_cpu|c|md|Selector3~2_combout\);

-- Location: FF_X19_Y21_N29
\mips_cpu|dp|ID_EX_C_regdst|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|c|md|Selector3~2_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_C_regdst|q\(0));

-- Location: LCCOMB_X19_Y21_N2
\mips_cpu|dp|rf|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~0_combout\ = (\mips_cpu|c|md|Selector2~1_combout\ & ((\mips_cpu|dp|ID_EX_C_regdst|q\(0) & (\mips_cpu|dp|ID_EX_inst_2|q\(0))) # (!\mips_cpu|dp|ID_EX_C_regdst|q\(0) & ((\mips_cpu|dp|ID_EX_inst_1|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_inst_2|q\(0),
	datab => \mips_cpu|c|md|Selector2~1_combout\,
	datac => \mips_cpu|dp|ID_EX_inst_1|q\(0),
	datad => \mips_cpu|dp|ID_EX_C_regdst|q\(0),
	combout => \mips_cpu|dp|rf|Decoder0~0_combout\);

-- Location: M9K_X13_Y18_N0
\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082A98490000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080040040044040804C08C0080C400000405F000",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "insts_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram2port_inst_data:Inst_Data_Mem|altsyncram:altsyncram_component|altsyncram_5ul2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \mips_cpu|c|md|ALT_INV_WideOr9~1_combout\,
	portbre => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	ena1 => \Decoder|Equal0~5_combout\,
	portadatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y21_N0
\mips_cpu|dp|alu|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~0_combout\ = (\mips_cpu|dp|srcbmux|y[0]~2_combout\ & (\mips_cpu|dp|ID_EX_rd1|q\(0) $ (VCC))) # (!\mips_cpu|dp|srcbmux|y[0]~2_combout\ & (\mips_cpu|dp|ID_EX_rd1|q\(0) & VCC))
-- \mips_cpu|dp|alu|Add0~1\ = CARRY((\mips_cpu|dp|srcbmux|y[0]~2_combout\ & \mips_cpu|dp|ID_EX_rd1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[0]~2_combout\,
	datab => \mips_cpu|dp|ID_EX_rd1|q\(0),
	datad => VCC,
	combout => \mips_cpu|dp|alu|Add0~0_combout\,
	cout => \mips_cpu|dp|alu|Add0~1\);

-- Location: LCCOMB_X15_Y20_N28
\mips_cpu|c|md|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Decoder0~1_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(28) & (\mips_cpu|dp|IF_ID_inst|q\(29) & \mips_cpu|c|md|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|IF_ID_inst|q\(28),
	datac => \mips_cpu|dp|IF_ID_inst|q\(29),
	datad => \mips_cpu|c|md|Decoder0~0_combout\,
	combout => \mips_cpu|c|md|Decoder0~1_combout\);

-- Location: M9K_X25_Y19_N0
\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F000F00F000F00F0F00000F000000000F000",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "insts_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram2port_inst_data:Inst_Data_Mem|altsyncram:altsyncram_component|altsyncram_5ul2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \mips_cpu|c|md|ALT_INV_WideOr9~1_combout\,
	portbre => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	ena1 => \Decoder|Equal0~5_combout\,
	portadatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portbdatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\,
	portaaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y19_N8
\mips_cpu|dp|IF_ID_inst|q[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[15]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(15),
	combout => \mips_cpu|dp|IF_ID_inst|q[15]~feeder_combout\);

-- Location: FF_X16_Y19_N9
\mips_cpu|dp|IF_ID_inst|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[15]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(15));

-- Location: LCCOMB_X14_Y20_N22
\mips_cpu|c|md|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|WideOr1~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(29) & (((!\mips_cpu|dp|IF_ID_inst|q\(28))) # (!\mips_cpu|dp|IF_ID_inst|q\(26)))) # (!\mips_cpu|dp|IF_ID_inst|q\(29) & ((\mips_cpu|dp|IF_ID_inst|q\(28)) # ((\mips_cpu|dp|IF_ID_inst|q\(26) & 
-- !\mips_cpu|dp|IF_ID_inst|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(26),
	datab => \mips_cpu|dp|IF_ID_inst|q\(27),
	datac => \mips_cpu|dp|IF_ID_inst|q\(29),
	datad => \mips_cpu|dp|IF_ID_inst|q\(28),
	combout => \mips_cpu|c|md|WideOr1~0_combout\);

-- Location: LCCOMB_X15_Y20_N2
\mips_cpu|dp|sze|y[16]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|sze|y[16]~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(15) & ((\mips_cpu|dp|IF_ID_inst|q\(30)) # ((\mips_cpu|dp|IF_ID_inst|q\(31)) # (\mips_cpu|c|md|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(15),
	datab => \mips_cpu|dp|IF_ID_inst|q\(30),
	datac => \mips_cpu|dp|IF_ID_inst|q\(31),
	datad => \mips_cpu|c|md|WideOr1~0_combout\,
	combout => \mips_cpu|dp|sze|y[16]~0_combout\);

-- Location: FF_X15_Y20_N3
\mips_cpu|dp|ID_EX_signimm|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|sze|y[16]~0_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(16));

-- Location: LCCOMB_X15_Y20_N10
\mips_cpu|dp|srcbmux|y[20]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[20]~12_combout\ = (\mips_cpu|c|md|Decoder0~1_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(4)))) # (!\mips_cpu|c|md|Decoder0~1_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|c|md|Decoder0~1_combout\,
	datac => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(4),
	combout => \mips_cpu|dp|srcbmux|y[20]~12_combout\);

-- Location: LCCOMB_X15_Y20_N12
\mips_cpu|dp|srcbmux|y[19]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[19]~13_combout\ = (\mips_cpu|c|md|Decoder0~1_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(3)))) # (!\mips_cpu|c|md|Decoder0~1_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|c|md|Decoder0~1_combout\,
	datac => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(3),
	combout => \mips_cpu|dp|srcbmux|y[19]~13_combout\);

-- Location: LCCOMB_X15_Y20_N22
\mips_cpu|dp|srcbmux|y[18]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[18]~14_combout\ = (\mips_cpu|c|md|Decoder0~1_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(2))) # (!\mips_cpu|c|md|Decoder0~1_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|c|md|Decoder0~1_combout\,
	datac => \mips_cpu|dp|ID_EX_signimm|q\(2),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(16),
	combout => \mips_cpu|dp|srcbmux|y[18]~14_combout\);

-- Location: LCCOMB_X15_Y20_N8
\mips_cpu|dp|srcbmux|y[17]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[17]~15_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(29) & (\mips_cpu|dp|ID_EX_signimm|q\(1))) # (!\mips_cpu|dp|IF_ID_inst|q\(29) & ((\mips_cpu|dp|ID_EX_signimm|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(29),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(1),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(16),
	combout => \mips_cpu|dp|srcbmux|y[17]~15_combout\);

-- Location: LCCOMB_X15_Y20_N24
\mips_cpu|dp|srcbmux|y[17]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[17]~16_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(28) & ((\mips_cpu|c|md|Decoder0~0_combout\ & (\mips_cpu|dp|srcbmux|y[17]~15_combout\)) # (!\mips_cpu|c|md|Decoder0~0_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(16)))))) # 
-- (!\mips_cpu|dp|IF_ID_inst|q\(28) & (((\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(28),
	datab => \mips_cpu|c|md|Decoder0~0_combout\,
	datac => \mips_cpu|dp|srcbmux|y[17]~15_combout\,
	datad => \mips_cpu|dp|ID_EX_signimm|q\(16),
	combout => \mips_cpu|dp|srcbmux|y[17]~16_combout\);

-- Location: LCCOMB_X15_Y20_N26
\mips_cpu|dp|srcbmux|y[16]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[16]~17_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(29) & (\mips_cpu|dp|ID_EX_signimm|q\(0))) # (!\mips_cpu|dp|IF_ID_inst|q\(29) & ((\mips_cpu|dp|ID_EX_signimm|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(0),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datac => \mips_cpu|dp|IF_ID_inst|q\(29),
	combout => \mips_cpu|dp|srcbmux|y[16]~17_combout\);

-- Location: LCCOMB_X15_Y20_N4
\mips_cpu|dp|srcbmux|y[16]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[16]~18_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(28) & ((\mips_cpu|c|md|Decoder0~0_combout\ & (\mips_cpu|dp|srcbmux|y[16]~17_combout\)) # (!\mips_cpu|c|md|Decoder0~0_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(16)))))) # 
-- (!\mips_cpu|dp|IF_ID_inst|q\(28) & (((\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(28),
	datab => \mips_cpu|c|md|Decoder0~0_combout\,
	datac => \mips_cpu|dp|srcbmux|y[16]~17_combout\,
	datad => \mips_cpu|dp|ID_EX_signimm|q\(16),
	combout => \mips_cpu|dp|srcbmux|y[16]~18_combout\);

-- Location: FF_X16_Y21_N31
\mips_cpu|dp|ID_EX_signimm|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(15),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(15));

-- Location: LCCOMB_X16_Y19_N2
\mips_cpu|dp|IF_ID_inst|q[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[14]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(14),
	combout => \mips_cpu|dp|IF_ID_inst|q[14]~feeder_combout\);

-- Location: FF_X16_Y19_N3
\mips_cpu|dp|IF_ID_inst|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[14]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(14));

-- Location: FF_X16_Y21_N29
\mips_cpu|dp|ID_EX_signimm|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(14),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(14));

-- Location: LCCOMB_X17_Y21_N30
\mips_cpu|dp|IF_ID_inst|q[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[13]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(13),
	combout => \mips_cpu|dp|IF_ID_inst|q[13]~feeder_combout\);

-- Location: FF_X17_Y21_N31
\mips_cpu|dp|IF_ID_inst|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[13]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(13));

-- Location: FF_X16_Y21_N27
\mips_cpu|dp|ID_EX_signimm|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(13),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(13));

-- Location: LCCOMB_X17_Y21_N8
\mips_cpu|dp|IF_ID_inst|q[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[12]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(12),
	combout => \mips_cpu|dp|IF_ID_inst|q[12]~feeder_combout\);

-- Location: FF_X17_Y21_N9
\mips_cpu|dp|IF_ID_inst|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[12]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(12));

-- Location: FF_X16_Y21_N25
\mips_cpu|dp|ID_EX_signimm|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(12),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(12));

-- Location: LCCOMB_X16_Y21_N24
\mips_cpu|dp|alu|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~24_combout\ = (\mips_cpu|dp|alu|Add0~23\ & (\mips_cpu|dp|srcbmux|y[0]~0_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(12) & VCC))) # (!\mips_cpu|dp|alu|Add0~23\ & ((((\mips_cpu|dp|srcbmux|y[0]~0_combout\ & 
-- \mips_cpu|dp|ID_EX_signimm|q\(12))))))
-- \mips_cpu|dp|alu|Add0~25\ = CARRY((\mips_cpu|dp|srcbmux|y[0]~0_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(12) & !\mips_cpu|dp|alu|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datab => \mips_cpu|dp|ID_EX_signimm|q\(12),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~23\,
	combout => \mips_cpu|dp|alu|Add0~24_combout\,
	cout => \mips_cpu|dp|alu|Add0~25\);

-- Location: LCCOMB_X16_Y21_N26
\mips_cpu|dp|alu|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~26_combout\ = (\mips_cpu|dp|alu|Add0~25\ & (((!\mips_cpu|dp|ID_EX_signimm|q\(13))) # (!\mips_cpu|dp|srcbmux|y[0]~0_combout\))) # (!\mips_cpu|dp|alu|Add0~25\ & (((\mips_cpu|dp|srcbmux|y[0]~0_combout\ & 
-- \mips_cpu|dp|ID_EX_signimm|q\(13))) # (GND)))
-- \mips_cpu|dp|alu|Add0~27\ = CARRY(((!\mips_cpu|dp|alu|Add0~25\) # (!\mips_cpu|dp|ID_EX_signimm|q\(13))) # (!\mips_cpu|dp|srcbmux|y[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datab => \mips_cpu|dp|ID_EX_signimm|q\(13),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~25\,
	combout => \mips_cpu|dp|alu|Add0~26_combout\,
	cout => \mips_cpu|dp|alu|Add0~27\);

-- Location: LCCOMB_X16_Y21_N28
\mips_cpu|dp|alu|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~28_combout\ = (\mips_cpu|dp|alu|Add0~27\ & (\mips_cpu|dp|ID_EX_signimm|q\(14) & (\mips_cpu|dp|srcbmux|y[0]~0_combout\ & VCC))) # (!\mips_cpu|dp|alu|Add0~27\ & ((((\mips_cpu|dp|ID_EX_signimm|q\(14) & 
-- \mips_cpu|dp|srcbmux|y[0]~0_combout\)))))
-- \mips_cpu|dp|alu|Add0~29\ = CARRY((\mips_cpu|dp|ID_EX_signimm|q\(14) & (\mips_cpu|dp|srcbmux|y[0]~0_combout\ & !\mips_cpu|dp|alu|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(14),
	datab => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~27\,
	combout => \mips_cpu|dp|alu|Add0~28_combout\,
	cout => \mips_cpu|dp|alu|Add0~29\);

-- Location: LCCOMB_X16_Y21_N30
\mips_cpu|dp|alu|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~30_combout\ = (\mips_cpu|dp|alu|Add0~29\ & (((!\mips_cpu|dp|ID_EX_signimm|q\(15))) # (!\mips_cpu|dp|srcbmux|y[0]~0_combout\))) # (!\mips_cpu|dp|alu|Add0~29\ & (((\mips_cpu|dp|srcbmux|y[0]~0_combout\ & 
-- \mips_cpu|dp|ID_EX_signimm|q\(15))) # (GND)))
-- \mips_cpu|dp|alu|Add0~31\ = CARRY(((!\mips_cpu|dp|alu|Add0~29\) # (!\mips_cpu|dp|ID_EX_signimm|q\(15))) # (!\mips_cpu|dp|srcbmux|y[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datab => \mips_cpu|dp|ID_EX_signimm|q\(15),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~29\,
	combout => \mips_cpu|dp|alu|Add0~30_combout\,
	cout => \mips_cpu|dp|alu|Add0~31\);

-- Location: LCCOMB_X16_Y20_N0
\mips_cpu|dp|alu|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~32_combout\ = (\mips_cpu|dp|alu|Add0~31\ & (\mips_cpu|dp|srcbmux|y[16]~18_combout\ & (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & VCC))) # (!\mips_cpu|dp|alu|Add0~31\ & ((((\mips_cpu|dp|srcbmux|y[16]~18_combout\ & 
-- \mips_cpu|dp|ID_EX_C_alusrc|q\(0))))))
-- \mips_cpu|dp|alu|Add0~33\ = CARRY((\mips_cpu|dp|srcbmux|y[16]~18_combout\ & (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & !\mips_cpu|dp|alu|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[16]~18_combout\,
	datab => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~31\,
	combout => \mips_cpu|dp|alu|Add0~32_combout\,
	cout => \mips_cpu|dp|alu|Add0~33\);

-- Location: LCCOMB_X16_Y20_N2
\mips_cpu|dp|alu|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~34_combout\ = (\mips_cpu|dp|alu|Add0~33\ & (((!\mips_cpu|dp|srcbmux|y[17]~16_combout\)) # (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0)))) # (!\mips_cpu|dp|alu|Add0~33\ & (((\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & 
-- \mips_cpu|dp|srcbmux|y[17]~16_combout\)) # (GND)))
-- \mips_cpu|dp|alu|Add0~35\ = CARRY(((!\mips_cpu|dp|alu|Add0~33\) # (!\mips_cpu|dp|srcbmux|y[17]~16_combout\)) # (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datab => \mips_cpu|dp|srcbmux|y[17]~16_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~33\,
	combout => \mips_cpu|dp|alu|Add0~34_combout\,
	cout => \mips_cpu|dp|alu|Add0~35\);

-- Location: LCCOMB_X16_Y20_N4
\mips_cpu|dp|alu|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~36_combout\ = (\mips_cpu|dp|alu|Add0~35\ & (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & (\mips_cpu|dp|srcbmux|y[18]~14_combout\ & VCC))) # (!\mips_cpu|dp|alu|Add0~35\ & ((((\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & 
-- \mips_cpu|dp|srcbmux|y[18]~14_combout\)))))
-- \mips_cpu|dp|alu|Add0~37\ = CARRY((\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & (\mips_cpu|dp|srcbmux|y[18]~14_combout\ & !\mips_cpu|dp|alu|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datab => \mips_cpu|dp|srcbmux|y[18]~14_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~35\,
	combout => \mips_cpu|dp|alu|Add0~36_combout\,
	cout => \mips_cpu|dp|alu|Add0~37\);

-- Location: LCCOMB_X16_Y20_N6
\mips_cpu|dp|alu|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~38_combout\ = (\mips_cpu|dp|alu|Add0~37\ & (((!\mips_cpu|dp|ID_EX_C_alusrc|q\(0))) # (!\mips_cpu|dp|srcbmux|y[19]~13_combout\))) # (!\mips_cpu|dp|alu|Add0~37\ & (((\mips_cpu|dp|srcbmux|y[19]~13_combout\ & 
-- \mips_cpu|dp|ID_EX_C_alusrc|q\(0))) # (GND)))
-- \mips_cpu|dp|alu|Add0~39\ = CARRY(((!\mips_cpu|dp|alu|Add0~37\) # (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0))) # (!\mips_cpu|dp|srcbmux|y[19]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[19]~13_combout\,
	datab => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~37\,
	combout => \mips_cpu|dp|alu|Add0~38_combout\,
	cout => \mips_cpu|dp|alu|Add0~39\);

-- Location: LCCOMB_X16_Y20_N8
\mips_cpu|dp|alu|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~40_combout\ = (\mips_cpu|dp|alu|Add0~39\ & (\mips_cpu|dp|srcbmux|y[20]~12_combout\ & (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & VCC))) # (!\mips_cpu|dp|alu|Add0~39\ & ((((\mips_cpu|dp|srcbmux|y[20]~12_combout\ & 
-- \mips_cpu|dp|ID_EX_C_alusrc|q\(0))))))
-- \mips_cpu|dp|alu|Add0~41\ = CARRY((\mips_cpu|dp|srcbmux|y[20]~12_combout\ & (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & !\mips_cpu|dp|alu|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[20]~12_combout\,
	datab => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~39\,
	combout => \mips_cpu|dp|alu|Add0~40_combout\,
	cout => \mips_cpu|dp|alu|Add0~41\);

-- Location: LCCOMB_X17_Y20_N20
\Decoder|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~2_combout\ = (\mips_cpu|dp|alu|Add0~40_combout\ & (\mips_cpu|dp|alu|Add0~36_combout\ & (\mips_cpu|dp|alu|Add0~38_combout\ & \mips_cpu|dp|alu|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~40_combout\,
	datab => \mips_cpu|dp|alu|Add0~36_combout\,
	datac => \mips_cpu|dp|alu|Add0~38_combout\,
	datad => \mips_cpu|dp|alu|Add0~34_combout\,
	combout => \Decoder|Equal1~2_combout\);

-- Location: LCCOMB_X17_Y20_N2
\Decoder|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~1_combout\ = (!\mips_cpu|dp|alu|Add0~28_combout\ & !\mips_cpu|dp|alu|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~28_combout\,
	datad => \mips_cpu|dp|alu|Add0~30_combout\,
	combout => \Decoder|Equal1~1_combout\);

-- Location: LCCOMB_X17_Y20_N6
\Decoder|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~3_combout\ = (!\mips_cpu|dp|alu|Add0~24_combout\ & (\Decoder|Equal1~2_combout\ & (\mips_cpu|dp|alu|Add0~32_combout\ & \Decoder|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~24_combout\,
	datab => \Decoder|Equal1~2_combout\,
	datac => \mips_cpu|dp|alu|Add0~32_combout\,
	datad => \Decoder|Equal1~1_combout\,
	combout => \Decoder|Equal1~3_combout\);

-- Location: LCCOMB_X15_Y20_N30
\mips_cpu|dp|srcbmux|y[22]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[22]~10_combout\ = (\mips_cpu|c|md|Decoder0~1_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(6))) # (!\mips_cpu|c|md|Decoder0~1_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|c|md|Decoder0~1_combout\,
	datac => \mips_cpu|dp|ID_EX_signimm|q\(6),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(16),
	combout => \mips_cpu|dp|srcbmux|y[22]~10_combout\);

-- Location: LCCOMB_X15_Y20_N16
\mips_cpu|dp|srcbmux|y[21]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[21]~11_combout\ = (\mips_cpu|c|md|Decoder0~1_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(5)))) # (!\mips_cpu|c|md|Decoder0~1_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|c|md|Decoder0~1_combout\,
	datac => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(5),
	combout => \mips_cpu|dp|srcbmux|y[21]~11_combout\);

-- Location: LCCOMB_X16_Y20_N10
\mips_cpu|dp|alu|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~42_combout\ = (\mips_cpu|dp|alu|Add0~41\ & (((!\mips_cpu|dp|srcbmux|y[21]~11_combout\)) # (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0)))) # (!\mips_cpu|dp|alu|Add0~41\ & (((\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & 
-- \mips_cpu|dp|srcbmux|y[21]~11_combout\)) # (GND)))
-- \mips_cpu|dp|alu|Add0~43\ = CARRY(((!\mips_cpu|dp|alu|Add0~41\) # (!\mips_cpu|dp|srcbmux|y[21]~11_combout\)) # (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datab => \mips_cpu|dp|srcbmux|y[21]~11_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~41\,
	combout => \mips_cpu|dp|alu|Add0~42_combout\,
	cout => \mips_cpu|dp|alu|Add0~43\);

-- Location: LCCOMB_X16_Y20_N12
\mips_cpu|dp|alu|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~44_combout\ = (\mips_cpu|dp|alu|Add0~43\ & (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & (\mips_cpu|dp|srcbmux|y[22]~10_combout\ & VCC))) # (!\mips_cpu|dp|alu|Add0~43\ & ((((\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & 
-- \mips_cpu|dp|srcbmux|y[22]~10_combout\)))))
-- \mips_cpu|dp|alu|Add0~45\ = CARRY((\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & (\mips_cpu|dp|srcbmux|y[22]~10_combout\ & !\mips_cpu|dp|alu|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datab => \mips_cpu|dp|srcbmux|y[22]~10_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~43\,
	combout => \mips_cpu|dp|alu|Add0~44_combout\,
	cout => \mips_cpu|dp|alu|Add0~45\);

-- Location: LCCOMB_X15_Y20_N20
\mips_cpu|dp|srcbmux|y[24]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[24]~8_combout\ = (\mips_cpu|c|md|Decoder0~1_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(8))) # (!\mips_cpu|c|md|Decoder0~1_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(8),
	datab => \mips_cpu|c|md|Decoder0~1_combout\,
	datad => \mips_cpu|dp|ID_EX_signimm|q\(16),
	combout => \mips_cpu|dp|srcbmux|y[24]~8_combout\);

-- Location: LCCOMB_X15_Y21_N30
\mips_cpu|dp|srcbmux|y[23]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[23]~9_combout\ = (\mips_cpu|c|md|Decoder0~1_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(7)))) # (!\mips_cpu|c|md|Decoder0~1_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datab => \mips_cpu|c|md|Decoder0~1_combout\,
	datad => \mips_cpu|dp|ID_EX_signimm|q\(7),
	combout => \mips_cpu|dp|srcbmux|y[23]~9_combout\);

-- Location: LCCOMB_X16_Y20_N14
\mips_cpu|dp|alu|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~46_combout\ = (\mips_cpu|dp|alu|Add0~45\ & (((!\mips_cpu|dp|ID_EX_C_alusrc|q\(0))) # (!\mips_cpu|dp|srcbmux|y[23]~9_combout\))) # (!\mips_cpu|dp|alu|Add0~45\ & (((\mips_cpu|dp|srcbmux|y[23]~9_combout\ & 
-- \mips_cpu|dp|ID_EX_C_alusrc|q\(0))) # (GND)))
-- \mips_cpu|dp|alu|Add0~47\ = CARRY(((!\mips_cpu|dp|alu|Add0~45\) # (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0))) # (!\mips_cpu|dp|srcbmux|y[23]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[23]~9_combout\,
	datab => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~45\,
	combout => \mips_cpu|dp|alu|Add0~46_combout\,
	cout => \mips_cpu|dp|alu|Add0~47\);

-- Location: LCCOMB_X16_Y20_N16
\mips_cpu|dp|alu|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~48_combout\ = (\mips_cpu|dp|alu|Add0~47\ & (\mips_cpu|dp|srcbmux|y[24]~8_combout\ & (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & VCC))) # (!\mips_cpu|dp|alu|Add0~47\ & ((((\mips_cpu|dp|srcbmux|y[24]~8_combout\ & 
-- \mips_cpu|dp|ID_EX_C_alusrc|q\(0))))))
-- \mips_cpu|dp|alu|Add0~49\ = CARRY((\mips_cpu|dp|srcbmux|y[24]~8_combout\ & (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & !\mips_cpu|dp|alu|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[24]~8_combout\,
	datab => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~47\,
	combout => \mips_cpu|dp|alu|Add0~48_combout\,
	cout => \mips_cpu|dp|alu|Add0~49\);

-- Location: LCCOMB_X17_Y20_N16
\Decoder|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~4_combout\ = (\mips_cpu|dp|alu|Add0~44_combout\ & (\mips_cpu|dp|alu|Add0~42_combout\ & (\mips_cpu|dp|alu|Add0~48_combout\ & \mips_cpu|dp|alu|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~44_combout\,
	datab => \mips_cpu|dp|alu|Add0~42_combout\,
	datac => \mips_cpu|dp|alu|Add0~48_combout\,
	datad => \mips_cpu|dp|alu|Add0~46_combout\,
	combout => \Decoder|Equal1~4_combout\);

-- Location: LCCOMB_X15_Y21_N0
\mips_cpu|dp|srcbmux|y[26]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[26]~6_combout\ = (\mips_cpu|c|md|Decoder0~1_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(10))) # (!\mips_cpu|c|md|Decoder0~1_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|c|md|Decoder0~1_combout\,
	datac => \mips_cpu|dp|ID_EX_signimm|q\(10),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(16),
	combout => \mips_cpu|dp|srcbmux|y[26]~6_combout\);

-- Location: LCCOMB_X15_Y21_N2
\mips_cpu|dp|srcbmux|y[25]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[25]~7_combout\ = (\mips_cpu|c|md|Decoder0~1_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(9)))) # (!\mips_cpu|c|md|Decoder0~1_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datab => \mips_cpu|c|md|Decoder0~1_combout\,
	datad => \mips_cpu|dp|ID_EX_signimm|q\(9),
	combout => \mips_cpu|dp|srcbmux|y[25]~7_combout\);

-- Location: LCCOMB_X16_Y20_N18
\mips_cpu|dp|alu|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~50_combout\ = (\mips_cpu|dp|alu|Add0~49\ & (((!\mips_cpu|dp|ID_EX_C_alusrc|q\(0))) # (!\mips_cpu|dp|srcbmux|y[25]~7_combout\))) # (!\mips_cpu|dp|alu|Add0~49\ & (((\mips_cpu|dp|srcbmux|y[25]~7_combout\ & 
-- \mips_cpu|dp|ID_EX_C_alusrc|q\(0))) # (GND)))
-- \mips_cpu|dp|alu|Add0~51\ = CARRY(((!\mips_cpu|dp|alu|Add0~49\) # (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0))) # (!\mips_cpu|dp|srcbmux|y[25]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[25]~7_combout\,
	datab => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~49\,
	combout => \mips_cpu|dp|alu|Add0~50_combout\,
	cout => \mips_cpu|dp|alu|Add0~51\);

-- Location: LCCOMB_X16_Y20_N20
\mips_cpu|dp|alu|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~52_combout\ = (\mips_cpu|dp|alu|Add0~51\ & (\mips_cpu|dp|srcbmux|y[26]~6_combout\ & (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & VCC))) # (!\mips_cpu|dp|alu|Add0~51\ & ((((\mips_cpu|dp|srcbmux|y[26]~6_combout\ & 
-- \mips_cpu|dp|ID_EX_C_alusrc|q\(0))))))
-- \mips_cpu|dp|alu|Add0~53\ = CARRY((\mips_cpu|dp|srcbmux|y[26]~6_combout\ & (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & !\mips_cpu|dp|alu|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[26]~6_combout\,
	datab => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~51\,
	combout => \mips_cpu|dp|alu|Add0~52_combout\,
	cout => \mips_cpu|dp|alu|Add0~53\);

-- Location: LCCOMB_X15_Y20_N0
\mips_cpu|dp|srcbmux|y[28]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[28]~4_combout\ = (\mips_cpu|c|md|Decoder0~1_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(12))) # (!\mips_cpu|c|md|Decoder0~1_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(12),
	datab => \mips_cpu|c|md|Decoder0~1_combout\,
	datad => \mips_cpu|dp|ID_EX_signimm|q\(16),
	combout => \mips_cpu|dp|srcbmux|y[28]~4_combout\);

-- Location: LCCOMB_X15_Y20_N18
\mips_cpu|dp|srcbmux|y[27]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[27]~5_combout\ = (\mips_cpu|c|md|Decoder0~1_combout\ & (\mips_cpu|dp|ID_EX_inst_2|q\(0))) # (!\mips_cpu|c|md|Decoder0~1_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_inst_2|q\(0),
	datab => \mips_cpu|c|md|Decoder0~1_combout\,
	datad => \mips_cpu|dp|ID_EX_signimm|q\(16),
	combout => \mips_cpu|dp|srcbmux|y[27]~5_combout\);

-- Location: LCCOMB_X16_Y20_N22
\mips_cpu|dp|alu|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~54_combout\ = (\mips_cpu|dp|alu|Add0~53\ & (((!\mips_cpu|dp|srcbmux|y[27]~5_combout\)) # (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0)))) # (!\mips_cpu|dp|alu|Add0~53\ & (((\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & 
-- \mips_cpu|dp|srcbmux|y[27]~5_combout\)) # (GND)))
-- \mips_cpu|dp|alu|Add0~55\ = CARRY(((!\mips_cpu|dp|alu|Add0~53\) # (!\mips_cpu|dp|srcbmux|y[27]~5_combout\)) # (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datab => \mips_cpu|dp|srcbmux|y[27]~5_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~53\,
	combout => \mips_cpu|dp|alu|Add0~54_combout\,
	cout => \mips_cpu|dp|alu|Add0~55\);

-- Location: LCCOMB_X16_Y20_N24
\mips_cpu|dp|alu|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~56_combout\ = (\mips_cpu|dp|alu|Add0~55\ & (\mips_cpu|dp|srcbmux|y[28]~4_combout\ & (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & VCC))) # (!\mips_cpu|dp|alu|Add0~55\ & ((((\mips_cpu|dp|srcbmux|y[28]~4_combout\ & 
-- \mips_cpu|dp|ID_EX_C_alusrc|q\(0))))))
-- \mips_cpu|dp|alu|Add0~57\ = CARRY((\mips_cpu|dp|srcbmux|y[28]~4_combout\ & (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & !\mips_cpu|dp|alu|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[28]~4_combout\,
	datab => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~55\,
	combout => \mips_cpu|dp|alu|Add0~56_combout\,
	cout => \mips_cpu|dp|alu|Add0~57\);

-- Location: LCCOMB_X17_Y20_N18
\Decoder|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~5_combout\ = (\mips_cpu|dp|alu|Add0~52_combout\ & (\mips_cpu|dp|alu|Add0~54_combout\ & (\mips_cpu|dp|alu|Add0~56_combout\ & \mips_cpu|dp|alu|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~52_combout\,
	datab => \mips_cpu|dp|alu|Add0~54_combout\,
	datac => \mips_cpu|dp|alu|Add0~56_combout\,
	datad => \mips_cpu|dp|alu|Add0~50_combout\,
	combout => \Decoder|Equal1~5_combout\);

-- Location: LCCOMB_X15_Y21_N28
\mips_cpu|dp|srcbmux|y[31]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[31]~20_combout\ = (\mips_cpu|c|md|Decoder0~1_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(15)))) # (!\mips_cpu|c|md|Decoder0~1_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datab => \mips_cpu|c|md|Decoder0~1_combout\,
	datad => \mips_cpu|dp|ID_EX_signimm|q\(15),
	combout => \mips_cpu|dp|srcbmux|y[31]~20_combout\);

-- Location: LCCOMB_X15_Y20_N6
\mips_cpu|dp|srcbmux|y[30]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[30]~19_combout\ = (\mips_cpu|c|md|Decoder0~1_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(14))) # (!\mips_cpu|c|md|Decoder0~1_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|c|md|Decoder0~1_combout\,
	datac => \mips_cpu|dp|ID_EX_signimm|q\(14),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(16),
	combout => \mips_cpu|dp|srcbmux|y[30]~19_combout\);

-- Location: LCCOMB_X15_Y20_N14
\mips_cpu|dp|srcbmux|y[29]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[29]~3_combout\ = (\mips_cpu|c|md|Decoder0~1_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(13))) # (!\mips_cpu|c|md|Decoder0~1_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(13),
	datab => \mips_cpu|c|md|Decoder0~1_combout\,
	datad => \mips_cpu|dp|ID_EX_signimm|q\(16),
	combout => \mips_cpu|dp|srcbmux|y[29]~3_combout\);

-- Location: LCCOMB_X16_Y20_N26
\mips_cpu|dp|alu|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~58_combout\ = (\mips_cpu|dp|alu|Add0~57\ & (((!\mips_cpu|dp|srcbmux|y[29]~3_combout\)) # (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0)))) # (!\mips_cpu|dp|alu|Add0~57\ & (((\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & 
-- \mips_cpu|dp|srcbmux|y[29]~3_combout\)) # (GND)))
-- \mips_cpu|dp|alu|Add0~59\ = CARRY(((!\mips_cpu|dp|alu|Add0~57\) # (!\mips_cpu|dp|srcbmux|y[29]~3_combout\)) # (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datab => \mips_cpu|dp|srcbmux|y[29]~3_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~57\,
	combout => \mips_cpu|dp|alu|Add0~58_combout\,
	cout => \mips_cpu|dp|alu|Add0~59\);

-- Location: LCCOMB_X16_Y20_N28
\mips_cpu|dp|alu|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~60_combout\ = (\mips_cpu|dp|alu|Add0~59\ & (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & (\mips_cpu|dp|srcbmux|y[30]~19_combout\ & VCC))) # (!\mips_cpu|dp|alu|Add0~59\ & ((((\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & 
-- \mips_cpu|dp|srcbmux|y[30]~19_combout\)))))
-- \mips_cpu|dp|alu|Add0~61\ = CARRY((\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & (\mips_cpu|dp|srcbmux|y[30]~19_combout\ & !\mips_cpu|dp|alu|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datab => \mips_cpu|dp|srcbmux|y[30]~19_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~59\,
	combout => \mips_cpu|dp|alu|Add0~60_combout\,
	cout => \mips_cpu|dp|alu|Add0~61\);

-- Location: LCCOMB_X16_Y20_N30
\mips_cpu|dp|alu|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~62_combout\ = \mips_cpu|dp|alu|Add0~61\ $ (((\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & \mips_cpu|dp|srcbmux|y[31]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datad => \mips_cpu|dp|srcbmux|y[31]~20_combout\,
	cin => \mips_cpu|dp|alu|Add0~61\,
	combout => \mips_cpu|dp|alu|Add0~62_combout\);

-- Location: LCCOMB_X17_Y20_N0
\Decoder|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~0_combout\ = (\mips_cpu|dp|alu|Add0~62_combout\ & (\mips_cpu|dp|alu|Add0~58_combout\ & \mips_cpu|dp|alu|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|alu|Add0~62_combout\,
	datac => \mips_cpu|dp|alu|Add0~58_combout\,
	datad => \mips_cpu|dp|alu|Add0~60_combout\,
	combout => \Decoder|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y20_N12
\Decoder|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~6_combout\ = (\Decoder|Equal1~3_combout\ & (\Decoder|Equal1~4_combout\ & (\Decoder|Equal1~5_combout\ & \Decoder|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Equal1~3_combout\,
	datab => \Decoder|Equal1~4_combout\,
	datac => \Decoder|Equal1~5_combout\,
	datad => \Decoder|Equal1~0_combout\,
	combout => \Decoder|Equal1~6_combout\);

-- Location: LCCOMB_X14_Y20_N20
\mips_cpu|c|md|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Decoder0~2_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(29) & (\mips_cpu|dp|IF_ID_inst|q\(27) & (\mips_cpu|dp|IF_ID_inst|q\(26) & !\mips_cpu|dp|IF_ID_inst|q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(29),
	datab => \mips_cpu|dp|IF_ID_inst|q\(27),
	datac => \mips_cpu|dp|IF_ID_inst|q\(26),
	datad => \mips_cpu|dp|IF_ID_inst|q\(28),
	combout => \mips_cpu|c|md|Decoder0~2_combout\);

-- Location: LCCOMB_X19_Y20_N28
\mips_cpu|dp|wd_mux|y[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wd_mux|y[0]~1_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(30) & (\mips_cpu|c|md|Decoder0~2_combout\ & \mips_cpu|dp|IF_ID_inst|q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|IF_ID_inst|q\(30),
	datac => \mips_cpu|c|md|Decoder0~2_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(31),
	combout => \mips_cpu|dp|wd_mux|y[0]~1_combout\);

-- Location: LCCOMB_X19_Y20_N14
\mips_cpu|dp|wd_mux|y[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wd_mux|y[0]~2_combout\ = (\mips_cpu|dp|wd_mux|y[0]~1_combout\ & (\Inst_Data_Mem|altsyncram_component|auto_generated|q_b\(0) & ((!\Decoder|Equal1~6_combout\)))) # (!\mips_cpu|dp|wd_mux|y[0]~1_combout\ & (((\mips_cpu|dp|alu|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_Data_Mem|altsyncram_component|auto_generated|q_b\(0),
	datab => \mips_cpu|dp|alu|Add0~0_combout\,
	datac => \Decoder|Equal1~6_combout\,
	datad => \mips_cpu|dp|wd_mux|y[0]~1_combout\,
	combout => \mips_cpu|dp|wd_mux|y[0]~2_combout\);

-- Location: LCCOMB_X19_Y20_N4
\mips_cpu|dp|ID_EX_pcplus4|q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|ID_EX_pcplus4|q[0]~feeder_combout\ = \mips_cpu|dp|IF_ID_pcplus4|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_cpu|dp|IF_ID_pcplus4|q\(0),
	combout => \mips_cpu|dp|ID_EX_pcplus4|q[0]~feeder_combout\);

-- Location: FF_X19_Y20_N5
\mips_cpu|dp|ID_EX_pcplus4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|ID_EX_pcplus4|q[0]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_pcplus4|q\(0));

-- Location: LCCOMB_X16_Y19_N0
\mips_cpu|dp|pcreg|q[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcreg|q[0]~11_combout\ = (\mips_cpu|c|pcsrc~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(0))) # (!\mips_cpu|c|pcsrc~1_combout\ & ((\mips_cpu|dp|ID_EX_pcplus4|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_pcplus4|q\(0),
	datab => \mips_cpu|c|pcsrc~1_combout\,
	datad => \mips_cpu|dp|ID_EX_pcplus4|q\(0),
	combout => \mips_cpu|dp|pcreg|q[0]~11_combout\);

-- Location: LCCOMB_X19_Y21_N16
\mips_cpu|dp|comb~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|comb~1_combout\ = (((!\mips_cpu|c|md|Equal0~1_combout\) # (!\mips_cpu|c|md|Equal0~0_combout\)) # (!\mips_cpu|dp|comb~0_combout\)) # (!\mips_cpu|c|md|Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|md|Selector3~0_combout\,
	datab => \mips_cpu|dp|comb~0_combout\,
	datac => \mips_cpu|c|md|Equal0~0_combout\,
	datad => \mips_cpu|c|md|Equal0~1_combout\,
	combout => \mips_cpu|dp|comb~1_combout\);

-- Location: LCCOMB_X16_Y19_N4
\mips_cpu|dp|jr_pc_mux|y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|jr_pc_mux|y[0]~0_combout\ = (\mips_cpu|dp|ID_EX_rd2|q\(0) & !\mips_cpu|dp|comb~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_cpu|dp|ID_EX_rd2|q\(0),
	datad => \mips_cpu|dp|comb~1_combout\,
	combout => \mips_cpu|dp|jr_pc_mux|y[0]~0_combout\);

-- Location: FF_X16_Y19_N1
\mips_cpu|dp|pcreg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcreg|q[0]~11_combout\,
	asdata => \mips_cpu|dp|jr_pc_mux|y[0]~0_combout\,
	clrn => \reset_ff~q\,
	sload => \mips_cpu|c|md|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(0));

-- Location: FF_X19_Y20_N3
\mips_cpu|dp|IF_ID_pcplus4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|pcreg|q\(0),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(0));

-- Location: LCCOMB_X19_Y20_N2
\mips_cpu|dp|wd_mux|y[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wd_mux|y[0]~3_combout\ = (\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|wd_mux|y[0]~2_combout\)) # (!\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|IF_ID_pcplus4|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|md|Selector8~1_combout\,
	datab => \mips_cpu|dp|wd_mux|y[0]~2_combout\,
	datac => \mips_cpu|dp|IF_ID_pcplus4|q\(0),
	combout => \mips_cpu|dp|wd_mux|y[0]~3_combout\);

-- Location: LCCOMB_X36_Y17_N0
\Timer|CounterR[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[0]~32_combout\ = \Timer|CounterR\(0) $ (VCC)
-- \Timer|CounterR[0]~33\ = CARRY(\Timer|CounterR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(0),
	datad => VCC,
	combout => \Timer|CounterR[0]~32_combout\,
	cout => \Timer|CounterR[0]~33\);

-- Location: LCCOMB_X16_Y21_N2
\mips_cpu|dp|alu|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~2_combout\ = (\mips_cpu|dp|alu|Add0~1\ & (((!\mips_cpu|dp|srcbmux|y[0]~0_combout\)) # (!\mips_cpu|dp|ID_EX_signimm|q\(1)))) # (!\mips_cpu|dp|alu|Add0~1\ & (((\mips_cpu|dp|ID_EX_signimm|q\(1) & \mips_cpu|dp|srcbmux|y[0]~0_combout\)) # 
-- (GND)))
-- \mips_cpu|dp|alu|Add0~3\ = CARRY(((!\mips_cpu|dp|alu|Add0~1\) # (!\mips_cpu|dp|srcbmux|y[0]~0_combout\)) # (!\mips_cpu|dp|ID_EX_signimm|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(1),
	datab => \mips_cpu|dp|srcbmux|y[0]~0_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~1\,
	combout => \mips_cpu|dp|alu|Add0~2_combout\,
	cout => \mips_cpu|dp|alu|Add0~3\);

-- Location: LCCOMB_X19_Y20_N24
\uGPIO|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|Equal2~0_combout\ = (!\mips_cpu|dp|alu|Add0~2_combout\ & (!\mips_cpu|dp|alu|Add0~12_combout\ & (!\mips_cpu|dp|alu|Add0~10_combout\ & !\mips_cpu|dp|alu|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~2_combout\,
	datab => \mips_cpu|dp|alu|Add0~12_combout\,
	datac => \mips_cpu|dp|alu|Add0~10_combout\,
	datad => \mips_cpu|dp|alu|Add0~0_combout\,
	combout => \uGPIO|Equal2~0_combout\);

-- Location: LCCOMB_X19_Y20_N18
\uGPIO|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|Equal2~1_combout\ = (!\mips_cpu|dp|alu|Add0~22_combout\ & (!\mips_cpu|dp|alu|Add0~20_combout\ & (!\mips_cpu|dp|alu|Add0~14_combout\ & \uGPIO|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~22_combout\,
	datab => \mips_cpu|dp|alu|Add0~20_combout\,
	datac => \mips_cpu|dp|alu|Add0~14_combout\,
	datad => \uGPIO|Equal2~0_combout\,
	combout => \uGPIO|Equal2~1_combout\);

-- Location: LCCOMB_X19_Y20_N8
\Timer|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal3~0_combout\ = (\uGPIO|Equal2~1_combout\ & (!\mips_cpu|dp|alu|Add0~8_combout\ & (!\mips_cpu|dp|alu|Add0~6_combout\ & !\mips_cpu|dp|alu|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|Equal2~1_combout\,
	datab => \mips_cpu|dp|alu|Add0~8_combout\,
	datac => \mips_cpu|dp|alu|Add0~6_combout\,
	datad => \mips_cpu|dp|alu|Add0~4_combout\,
	combout => \Timer|Equal3~0_combout\);

-- Location: LCCOMB_X19_Y20_N26
\Timer|StatusR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|StatusR~0_combout\ = (\Timer|StatusR\(0) & ((\mips_cpu|dp|alu|Add0~16_combout\) # ((!\Timer|Equal3~0_combout\) # (!\mips_cpu|dp|alu|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~16_combout\,
	datab => \mips_cpu|dp|alu|Add0~18_combout\,
	datac => \Timer|Equal3~0_combout\,
	datad => \Timer|StatusR\(0),
	combout => \Timer|StatusR~0_combout\);

-- Location: LCCOMB_X35_Y17_N30
\Timer|CompareR[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CompareR[1]~2_combout\ = !\reset_ff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_ff~q\,
	combout => \Timer|CompareR[1]~2_combout\);

-- Location: LCCOMB_X17_Y20_N10
\Decoder|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~7_combout\ = (!\mips_cpu|dp|alu|Add0~26_combout\ & \Decoder|Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_cpu|dp|alu|Add0~26_combout\,
	datad => \Decoder|Equal1~6_combout\,
	combout => \Decoder|Equal1~7_combout\);

-- Location: LCCOMB_X20_Y20_N16
\mips_cpu|dp|alu|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~0_combout\ = (!\mips_cpu|dp|alu|Add0~8_combout\ & (!\mips_cpu|dp|alu|Add0~18_combout\ & (!\mips_cpu|dp|alu|Add0~16_combout\ & \uGPIO|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~8_combout\,
	datab => \mips_cpu|dp|alu|Add0~18_combout\,
	datac => \mips_cpu|dp|alu|Add0~16_combout\,
	datad => \uGPIO|Equal2~1_combout\,
	combout => \mips_cpu|dp|alu|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y20_N18
\mips_cpu|dp|alu|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~1_combout\ = (!\mips_cpu|dp|alu|Add0~6_combout\ & (!\mips_cpu|dp|alu|Add0~4_combout\ & \mips_cpu|dp|alu|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|alu|Add0~6_combout\,
	datac => \mips_cpu|dp|alu|Add0~4_combout\,
	datad => \mips_cpu|dp|alu|Equal0~0_combout\,
	combout => \mips_cpu|dp|alu|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y20_N12
\Timer|CompareR~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CompareR~1_combout\ = ((!\mips_cpu|c|md|WideOr9~1_combout\ & (\Decoder|Equal1~7_combout\ & \mips_cpu|dp|alu|Equal0~1_combout\))) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datab => \mips_cpu|c|md|WideOr9~1_combout\,
	datac => \Decoder|Equal1~7_combout\,
	datad => \mips_cpu|dp|alu|Equal0~1_combout\,
	combout => \Timer|CompareR~1_combout\);

-- Location: FF_X35_Y17_N31
\Timer|CompareR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CompareR[1]~2_combout\,
	ena => \Timer|CompareR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CompareR\(1));

-- Location: LCCOMB_X36_Y17_N2
\Timer|CounterR[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[1]~34_combout\ = (\Timer|CounterR\(1) & (!\Timer|CounterR[0]~33\)) # (!\Timer|CounterR\(1) & ((\Timer|CounterR[0]~33\) # (GND)))
-- \Timer|CounterR[1]~35\ = CARRY((!\Timer|CounterR[0]~33\) # (!\Timer|CounterR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(1),
	datad => VCC,
	cin => \Timer|CounterR[0]~33\,
	combout => \Timer|CounterR[1]~34_combout\,
	cout => \Timer|CounterR[1]~35\);

-- Location: FF_X36_Y17_N3
\Timer|CounterR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[1]~34_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(1));

-- Location: LCCOMB_X36_Y17_N4
\Timer|CounterR[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[2]~36_combout\ = (\Timer|CounterR\(2) & (\Timer|CounterR[1]~35\ $ (GND))) # (!\Timer|CounterR\(2) & (!\Timer|CounterR[1]~35\ & VCC))
-- \Timer|CounterR[2]~37\ = CARRY((\Timer|CounterR\(2) & !\Timer|CounterR[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(2),
	datad => VCC,
	cin => \Timer|CounterR[1]~35\,
	combout => \Timer|CounterR[2]~36_combout\,
	cout => \Timer|CounterR[2]~37\);

-- Location: FF_X36_Y17_N5
\Timer|CounterR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[2]~36_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(2));

-- Location: LCCOMB_X36_Y17_N6
\Timer|CounterR[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[3]~38_combout\ = (\Timer|CounterR\(3) & (!\Timer|CounterR[2]~37\)) # (!\Timer|CounterR\(3) & ((\Timer|CounterR[2]~37\) # (GND)))
-- \Timer|CounterR[3]~39\ = CARRY((!\Timer|CounterR[2]~37\) # (!\Timer|CounterR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(3),
	datad => VCC,
	cin => \Timer|CounterR[2]~37\,
	combout => \Timer|CounterR[3]~38_combout\,
	cout => \Timer|CounterR[3]~39\);

-- Location: FF_X36_Y17_N7
\Timer|CounterR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[3]~38_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(3));

-- Location: LCCOMB_X36_Y17_N8
\Timer|CounterR[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[4]~40_combout\ = (\Timer|CounterR\(4) & (\Timer|CounterR[3]~39\ $ (GND))) # (!\Timer|CounterR\(4) & (!\Timer|CounterR[3]~39\ & VCC))
-- \Timer|CounterR[4]~41\ = CARRY((\Timer|CounterR\(4) & !\Timer|CounterR[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(4),
	datad => VCC,
	cin => \Timer|CounterR[3]~39\,
	combout => \Timer|CounterR[4]~40_combout\,
	cout => \Timer|CounterR[4]~41\);

-- Location: FF_X36_Y17_N9
\Timer|CounterR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[4]~40_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(4));

-- Location: LCCOMB_X36_Y17_N10
\Timer|CounterR[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[5]~42_combout\ = (\Timer|CounterR\(5) & (!\Timer|CounterR[4]~41\)) # (!\Timer|CounterR\(5) & ((\Timer|CounterR[4]~41\) # (GND)))
-- \Timer|CounterR[5]~43\ = CARRY((!\Timer|CounterR[4]~41\) # (!\Timer|CounterR\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(5),
	datad => VCC,
	cin => \Timer|CounterR[4]~41\,
	combout => \Timer|CounterR[5]~42_combout\,
	cout => \Timer|CounterR[5]~43\);

-- Location: FF_X36_Y17_N11
\Timer|CounterR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[5]~42_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(5));

-- Location: LCCOMB_X36_Y17_N12
\Timer|CounterR[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[6]~44_combout\ = (\Timer|CounterR\(6) & (\Timer|CounterR[5]~43\ $ (GND))) # (!\Timer|CounterR\(6) & (!\Timer|CounterR[5]~43\ & VCC))
-- \Timer|CounterR[6]~45\ = CARRY((\Timer|CounterR\(6) & !\Timer|CounterR[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(6),
	datad => VCC,
	cin => \Timer|CounterR[5]~43\,
	combout => \Timer|CounterR[6]~44_combout\,
	cout => \Timer|CounterR[6]~45\);

-- Location: FF_X36_Y17_N13
\Timer|CounterR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[6]~44_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(6));

-- Location: LCCOMB_X36_Y17_N14
\Timer|CounterR[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[7]~46_combout\ = (\Timer|CounterR\(7) & (!\Timer|CounterR[6]~45\)) # (!\Timer|CounterR\(7) & ((\Timer|CounterR[6]~45\) # (GND)))
-- \Timer|CounterR[7]~47\ = CARRY((!\Timer|CounterR[6]~45\) # (!\Timer|CounterR\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(7),
	datad => VCC,
	cin => \Timer|CounterR[6]~45\,
	combout => \Timer|CounterR[7]~46_combout\,
	cout => \Timer|CounterR[7]~47\);

-- Location: FF_X36_Y17_N15
\Timer|CounterR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[7]~46_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(7));

-- Location: LCCOMB_X36_Y17_N16
\Timer|CounterR[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[8]~48_combout\ = (\Timer|CounterR\(8) & (\Timer|CounterR[7]~47\ $ (GND))) # (!\Timer|CounterR\(8) & (!\Timer|CounterR[7]~47\ & VCC))
-- \Timer|CounterR[8]~49\ = CARRY((\Timer|CounterR\(8) & !\Timer|CounterR[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(8),
	datad => VCC,
	cin => \Timer|CounterR[7]~47\,
	combout => \Timer|CounterR[8]~48_combout\,
	cout => \Timer|CounterR[8]~49\);

-- Location: FF_X36_Y17_N17
\Timer|CounterR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[8]~48_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(8));

-- Location: LCCOMB_X36_Y17_N18
\Timer|CounterR[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[9]~50_combout\ = (\Timer|CounterR\(9) & (!\Timer|CounterR[8]~49\)) # (!\Timer|CounterR\(9) & ((\Timer|CounterR[8]~49\) # (GND)))
-- \Timer|CounterR[9]~51\ = CARRY((!\Timer|CounterR[8]~49\) # (!\Timer|CounterR\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(9),
	datad => VCC,
	cin => \Timer|CounterR[8]~49\,
	combout => \Timer|CounterR[9]~50_combout\,
	cout => \Timer|CounterR[9]~51\);

-- Location: FF_X36_Y17_N19
\Timer|CounterR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[9]~50_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(9));

-- Location: LCCOMB_X36_Y17_N20
\Timer|CounterR[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[10]~52_combout\ = (\Timer|CounterR\(10) & (\Timer|CounterR[9]~51\ $ (GND))) # (!\Timer|CounterR\(10) & (!\Timer|CounterR[9]~51\ & VCC))
-- \Timer|CounterR[10]~53\ = CARRY((\Timer|CounterR\(10) & !\Timer|CounterR[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(10),
	datad => VCC,
	cin => \Timer|CounterR[9]~51\,
	combout => \Timer|CounterR[10]~52_combout\,
	cout => \Timer|CounterR[10]~53\);

-- Location: FF_X36_Y17_N21
\Timer|CounterR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[10]~52_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(10));

-- Location: LCCOMB_X36_Y17_N22
\Timer|CounterR[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[11]~54_combout\ = (\Timer|CounterR\(11) & (!\Timer|CounterR[10]~53\)) # (!\Timer|CounterR\(11) & ((\Timer|CounterR[10]~53\) # (GND)))
-- \Timer|CounterR[11]~55\ = CARRY((!\Timer|CounterR[10]~53\) # (!\Timer|CounterR\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(11),
	datad => VCC,
	cin => \Timer|CounterR[10]~53\,
	combout => \Timer|CounterR[11]~54_combout\,
	cout => \Timer|CounterR[11]~55\);

-- Location: FF_X36_Y17_N23
\Timer|CounterR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[11]~54_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(11));

-- Location: LCCOMB_X36_Y17_N24
\Timer|CounterR[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[12]~56_combout\ = (\Timer|CounterR\(12) & (\Timer|CounterR[11]~55\ $ (GND))) # (!\Timer|CounterR\(12) & (!\Timer|CounterR[11]~55\ & VCC))
-- \Timer|CounterR[12]~57\ = CARRY((\Timer|CounterR\(12) & !\Timer|CounterR[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(12),
	datad => VCC,
	cin => \Timer|CounterR[11]~55\,
	combout => \Timer|CounterR[12]~56_combout\,
	cout => \Timer|CounterR[12]~57\);

-- Location: FF_X36_Y17_N25
\Timer|CounterR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[12]~56_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(12));

-- Location: LCCOMB_X36_Y17_N26
\Timer|CounterR[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[13]~58_combout\ = (\Timer|CounterR\(13) & (!\Timer|CounterR[12]~57\)) # (!\Timer|CounterR\(13) & ((\Timer|CounterR[12]~57\) # (GND)))
-- \Timer|CounterR[13]~59\ = CARRY((!\Timer|CounterR[12]~57\) # (!\Timer|CounterR\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(13),
	datad => VCC,
	cin => \Timer|CounterR[12]~57\,
	combout => \Timer|CounterR[13]~58_combout\,
	cout => \Timer|CounterR[13]~59\);

-- Location: FF_X36_Y17_N27
\Timer|CounterR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[13]~58_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(13));

-- Location: LCCOMB_X36_Y17_N28
\Timer|CounterR[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[14]~60_combout\ = (\Timer|CounterR\(14) & (\Timer|CounterR[13]~59\ $ (GND))) # (!\Timer|CounterR\(14) & (!\Timer|CounterR[13]~59\ & VCC))
-- \Timer|CounterR[14]~61\ = CARRY((\Timer|CounterR\(14) & !\Timer|CounterR[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(14),
	datad => VCC,
	cin => \Timer|CounterR[13]~59\,
	combout => \Timer|CounterR[14]~60_combout\,
	cout => \Timer|CounterR[14]~61\);

-- Location: FF_X36_Y17_N29
\Timer|CounterR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[14]~60_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(14));

-- Location: LCCOMB_X36_Y17_N30
\Timer|CounterR[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[15]~62_combout\ = (\Timer|CounterR\(15) & (!\Timer|CounterR[14]~61\)) # (!\Timer|CounterR\(15) & ((\Timer|CounterR[14]~61\) # (GND)))
-- \Timer|CounterR[15]~63\ = CARRY((!\Timer|CounterR[14]~61\) # (!\Timer|CounterR\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(15),
	datad => VCC,
	cin => \Timer|CounterR[14]~61\,
	combout => \Timer|CounterR[15]~62_combout\,
	cout => \Timer|CounterR[15]~63\);

-- Location: FF_X36_Y17_N31
\Timer|CounterR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[15]~62_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(15));

-- Location: LCCOMB_X36_Y16_N0
\Timer|CounterR[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[16]~64_combout\ = (\Timer|CounterR\(16) & (\Timer|CounterR[15]~63\ $ (GND))) # (!\Timer|CounterR\(16) & (!\Timer|CounterR[15]~63\ & VCC))
-- \Timer|CounterR[16]~65\ = CARRY((\Timer|CounterR\(16) & !\Timer|CounterR[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(16),
	datad => VCC,
	cin => \Timer|CounterR[15]~63\,
	combout => \Timer|CounterR[16]~64_combout\,
	cout => \Timer|CounterR[16]~65\);

-- Location: FF_X36_Y16_N1
\Timer|CounterR[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[16]~64_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(16));

-- Location: LCCOMB_X36_Y16_N2
\Timer|CounterR[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[17]~66_combout\ = (\Timer|CounterR\(17) & (!\Timer|CounterR[16]~65\)) # (!\Timer|CounterR\(17) & ((\Timer|CounterR[16]~65\) # (GND)))
-- \Timer|CounterR[17]~67\ = CARRY((!\Timer|CounterR[16]~65\) # (!\Timer|CounterR\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(17),
	datad => VCC,
	cin => \Timer|CounterR[16]~65\,
	combout => \Timer|CounterR[17]~66_combout\,
	cout => \Timer|CounterR[17]~67\);

-- Location: FF_X36_Y16_N3
\Timer|CounterR[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[17]~66_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(17));

-- Location: LCCOMB_X36_Y16_N4
\Timer|CounterR[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[18]~68_combout\ = (\Timer|CounterR\(18) & (\Timer|CounterR[17]~67\ $ (GND))) # (!\Timer|CounterR\(18) & (!\Timer|CounterR[17]~67\ & VCC))
-- \Timer|CounterR[18]~69\ = CARRY((\Timer|CounterR\(18) & !\Timer|CounterR[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(18),
	datad => VCC,
	cin => \Timer|CounterR[17]~67\,
	combout => \Timer|CounterR[18]~68_combout\,
	cout => \Timer|CounterR[18]~69\);

-- Location: FF_X36_Y16_N5
\Timer|CounterR[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[18]~68_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(18));

-- Location: LCCOMB_X36_Y16_N6
\Timer|CounterR[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[19]~70_combout\ = (\Timer|CounterR\(19) & (!\Timer|CounterR[18]~69\)) # (!\Timer|CounterR\(19) & ((\Timer|CounterR[18]~69\) # (GND)))
-- \Timer|CounterR[19]~71\ = CARRY((!\Timer|CounterR[18]~69\) # (!\Timer|CounterR\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(19),
	datad => VCC,
	cin => \Timer|CounterR[18]~69\,
	combout => \Timer|CounterR[19]~70_combout\,
	cout => \Timer|CounterR[19]~71\);

-- Location: FF_X36_Y16_N7
\Timer|CounterR[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[19]~70_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(19));

-- Location: LCCOMB_X36_Y16_N8
\Timer|CounterR[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[20]~72_combout\ = (\Timer|CounterR\(20) & (\Timer|CounterR[19]~71\ $ (GND))) # (!\Timer|CounterR\(20) & (!\Timer|CounterR[19]~71\ & VCC))
-- \Timer|CounterR[20]~73\ = CARRY((\Timer|CounterR\(20) & !\Timer|CounterR[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(20),
	datad => VCC,
	cin => \Timer|CounterR[19]~71\,
	combout => \Timer|CounterR[20]~72_combout\,
	cout => \Timer|CounterR[20]~73\);

-- Location: FF_X36_Y16_N9
\Timer|CounterR[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[20]~72_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(20));

-- Location: LCCOMB_X36_Y16_N10
\Timer|CounterR[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[21]~74_combout\ = (\Timer|CounterR\(21) & (!\Timer|CounterR[20]~73\)) # (!\Timer|CounterR\(21) & ((\Timer|CounterR[20]~73\) # (GND)))
-- \Timer|CounterR[21]~75\ = CARRY((!\Timer|CounterR[20]~73\) # (!\Timer|CounterR\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(21),
	datad => VCC,
	cin => \Timer|CounterR[20]~73\,
	combout => \Timer|CounterR[21]~74_combout\,
	cout => \Timer|CounterR[21]~75\);

-- Location: FF_X36_Y16_N11
\Timer|CounterR[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[21]~74_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(21));

-- Location: LCCOMB_X36_Y16_N12
\Timer|CounterR[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[22]~76_combout\ = (\Timer|CounterR\(22) & (\Timer|CounterR[21]~75\ $ (GND))) # (!\Timer|CounterR\(22) & (!\Timer|CounterR[21]~75\ & VCC))
-- \Timer|CounterR[22]~77\ = CARRY((\Timer|CounterR\(22) & !\Timer|CounterR[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(22),
	datad => VCC,
	cin => \Timer|CounterR[21]~75\,
	combout => \Timer|CounterR[22]~76_combout\,
	cout => \Timer|CounterR[22]~77\);

-- Location: FF_X36_Y16_N13
\Timer|CounterR[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[22]~76_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(22));

-- Location: LCCOMB_X36_Y16_N14
\Timer|CounterR[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[23]~78_combout\ = (\Timer|CounterR\(23) & (!\Timer|CounterR[22]~77\)) # (!\Timer|CounterR\(23) & ((\Timer|CounterR[22]~77\) # (GND)))
-- \Timer|CounterR[23]~79\ = CARRY((!\Timer|CounterR[22]~77\) # (!\Timer|CounterR\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(23),
	datad => VCC,
	cin => \Timer|CounterR[22]~77\,
	combout => \Timer|CounterR[23]~78_combout\,
	cout => \Timer|CounterR[23]~79\);

-- Location: FF_X36_Y16_N15
\Timer|CounterR[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[23]~78_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(23));

-- Location: LCCOMB_X36_Y16_N16
\Timer|CounterR[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[24]~80_combout\ = (\Timer|CounterR\(24) & (\Timer|CounterR[23]~79\ $ (GND))) # (!\Timer|CounterR\(24) & (!\Timer|CounterR[23]~79\ & VCC))
-- \Timer|CounterR[24]~81\ = CARRY((\Timer|CounterR\(24) & !\Timer|CounterR[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(24),
	datad => VCC,
	cin => \Timer|CounterR[23]~79\,
	combout => \Timer|CounterR[24]~80_combout\,
	cout => \Timer|CounterR[24]~81\);

-- Location: FF_X36_Y16_N17
\Timer|CounterR[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[24]~80_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(24));

-- Location: LCCOMB_X36_Y16_N18
\Timer|CounterR[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[25]~82_combout\ = (\Timer|CounterR\(25) & (!\Timer|CounterR[24]~81\)) # (!\Timer|CounterR\(25) & ((\Timer|CounterR[24]~81\) # (GND)))
-- \Timer|CounterR[25]~83\ = CARRY((!\Timer|CounterR[24]~81\) # (!\Timer|CounterR\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(25),
	datad => VCC,
	cin => \Timer|CounterR[24]~81\,
	combout => \Timer|CounterR[25]~82_combout\,
	cout => \Timer|CounterR[25]~83\);

-- Location: FF_X36_Y16_N19
\Timer|CounterR[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[25]~82_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(25));

-- Location: LCCOMB_X36_Y16_N20
\Timer|CounterR[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[26]~84_combout\ = (\Timer|CounterR\(26) & (\Timer|CounterR[25]~83\ $ (GND))) # (!\Timer|CounterR\(26) & (!\Timer|CounterR[25]~83\ & VCC))
-- \Timer|CounterR[26]~85\ = CARRY((\Timer|CounterR\(26) & !\Timer|CounterR[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(26),
	datad => VCC,
	cin => \Timer|CounterR[25]~83\,
	combout => \Timer|CounterR[26]~84_combout\,
	cout => \Timer|CounterR[26]~85\);

-- Location: FF_X36_Y16_N21
\Timer|CounterR[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[26]~84_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(26));

-- Location: LCCOMB_X36_Y16_N22
\Timer|CounterR[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[27]~86_combout\ = (\Timer|CounterR\(27) & (!\Timer|CounterR[26]~85\)) # (!\Timer|CounterR\(27) & ((\Timer|CounterR[26]~85\) # (GND)))
-- \Timer|CounterR[27]~87\ = CARRY((!\Timer|CounterR[26]~85\) # (!\Timer|CounterR\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(27),
	datad => VCC,
	cin => \Timer|CounterR[26]~85\,
	combout => \Timer|CounterR[27]~86_combout\,
	cout => \Timer|CounterR[27]~87\);

-- Location: FF_X36_Y16_N23
\Timer|CounterR[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[27]~86_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(27));

-- Location: LCCOMB_X36_Y16_N24
\Timer|CounterR[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[28]~88_combout\ = (\Timer|CounterR\(28) & (\Timer|CounterR[27]~87\ $ (GND))) # (!\Timer|CounterR\(28) & (!\Timer|CounterR[27]~87\ & VCC))
-- \Timer|CounterR[28]~89\ = CARRY((\Timer|CounterR\(28) & !\Timer|CounterR[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(28),
	datad => VCC,
	cin => \Timer|CounterR[27]~87\,
	combout => \Timer|CounterR[28]~88_combout\,
	cout => \Timer|CounterR[28]~89\);

-- Location: FF_X36_Y16_N25
\Timer|CounterR[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[28]~88_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(28));

-- Location: LCCOMB_X36_Y16_N26
\Timer|CounterR[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[29]~90_combout\ = (\Timer|CounterR\(29) & (!\Timer|CounterR[28]~89\)) # (!\Timer|CounterR\(29) & ((\Timer|CounterR[28]~89\) # (GND)))
-- \Timer|CounterR[29]~91\ = CARRY((!\Timer|CounterR[28]~89\) # (!\Timer|CounterR\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(29),
	datad => VCC,
	cin => \Timer|CounterR[28]~89\,
	combout => \Timer|CounterR[29]~90_combout\,
	cout => \Timer|CounterR[29]~91\);

-- Location: FF_X36_Y16_N27
\Timer|CounterR[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[29]~90_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(29));

-- Location: LCCOMB_X36_Y16_N28
\Timer|CounterR[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[30]~92_combout\ = (\Timer|CounterR\(30) & (\Timer|CounterR[29]~91\ $ (GND))) # (!\Timer|CounterR\(30) & (!\Timer|CounterR[29]~91\ & VCC))
-- \Timer|CounterR[30]~93\ = CARRY((\Timer|CounterR\(30) & !\Timer|CounterR[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|CounterR\(30),
	datad => VCC,
	cin => \Timer|CounterR[29]~91\,
	combout => \Timer|CounterR[30]~92_combout\,
	cout => \Timer|CounterR[30]~93\);

-- Location: FF_X36_Y16_N29
\Timer|CounterR[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[30]~92_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(30));

-- Location: LCCOMB_X36_Y16_N30
\Timer|CounterR[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CounterR[31]~94_combout\ = \Timer|CounterR\(31) $ (\Timer|CounterR[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(31),
	cin => \Timer|CounterR[30]~93\,
	combout => \Timer|CounterR[31]~94_combout\);

-- Location: FF_X36_Y16_N31
\Timer|CounterR[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[31]~94_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(31));

-- Location: LCCOMB_X35_Y16_N12
\Timer|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~12_combout\ = (\Timer|CompareR\(1) & (\Timer|CounterR\(30) & (\Timer|CounterR\(31) & \Timer|CounterR\(29)))) # (!\Timer|CompareR\(1) & (!\Timer|CounterR\(30) & (!\Timer|CounterR\(31) & !\Timer|CounterR\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CompareR\(1),
	datab => \Timer|CounterR\(30),
	datac => \Timer|CounterR\(31),
	datad => \Timer|CounterR\(29),
	combout => \Timer|Equal0~12_combout\);

-- Location: LCCOMB_X35_Y16_N2
\Timer|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~11_combout\ = (\Timer|CompareR\(1) & (\Timer|CounterR\(28) & (\Timer|CounterR\(26) & \Timer|CounterR\(27)))) # (!\Timer|CompareR\(1) & (!\Timer|CounterR\(28) & (!\Timer|CounterR\(26) & !\Timer|CounterR\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CompareR\(1),
	datab => \Timer|CounterR\(28),
	datac => \Timer|CounterR\(26),
	datad => \Timer|CounterR\(27),
	combout => \Timer|Equal0~11_combout\);

-- Location: LCCOMB_X35_Y16_N0
\Timer|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~10_combout\ = (\Timer|CompareR\(1) & (\Timer|CounterR\(25) & (\Timer|CounterR\(23) & \Timer|CounterR\(24)))) # (!\Timer|CompareR\(1) & (!\Timer|CounterR\(25) & (!\Timer|CounterR\(23) & !\Timer|CounterR\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CompareR\(1),
	datab => \Timer|CounterR\(25),
	datac => \Timer|CounterR\(23),
	datad => \Timer|CounterR\(24),
	combout => \Timer|Equal0~10_combout\);

-- Location: LCCOMB_X35_Y16_N14
\Timer|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~13_combout\ = (\Timer|Equal0~12_combout\ & (\Timer|Equal0~11_combout\ & \Timer|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|Equal0~12_combout\,
	datab => \Timer|Equal0~11_combout\,
	datad => \Timer|Equal0~10_combout\,
	combout => \Timer|Equal0~13_combout\);

-- Location: LCCOMB_X35_Y17_N10
\Timer|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~1_combout\ = (\Timer|CompareR\(1) & (\Timer|CounterR\(3) & (\Timer|CounterR\(4) & \Timer|CounterR\(2)))) # (!\Timer|CompareR\(1) & (!\Timer|CounterR\(3) & (!\Timer|CounterR\(4) & !\Timer|CounterR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CompareR\(1),
	datab => \Timer|CounterR\(3),
	datac => \Timer|CounterR\(4),
	datad => \Timer|CounterR\(2),
	combout => \Timer|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y17_N20
\Timer|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~2_combout\ = (\Timer|CounterR\(7) & (\Timer|CounterR\(6) & (\Timer|CounterR\(5) & \Timer|CompareR\(1)))) # (!\Timer|CounterR\(7) & (!\Timer|CounterR\(6) & (!\Timer|CounterR\(5) & !\Timer|CompareR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(7),
	datab => \Timer|CounterR\(6),
	datac => \Timer|CounterR\(5),
	datad => \Timer|CompareR\(1),
	combout => \Timer|Equal0~2_combout\);

-- Location: LCCOMB_X35_Y17_N14
\Timer|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~3_combout\ = (\Timer|CompareR\(1) & (\Timer|CounterR\(8) & (\Timer|CounterR\(10) & \Timer|CounterR\(9)))) # (!\Timer|CompareR\(1) & (!\Timer|CounterR\(8) & (!\Timer|CounterR\(10) & !\Timer|CounterR\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CompareR\(1),
	datab => \Timer|CounterR\(8),
	datac => \Timer|CounterR\(10),
	datad => \Timer|CounterR\(9),
	combout => \Timer|Equal0~3_combout\);

-- Location: LCCOMB_X35_Y17_N28
\Timer|CompareR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CompareR~0_combout\ = (\mips_cpu|dp|ID_EX_rd2|q\(0)) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datad => \mips_cpu|dp|ID_EX_rd2|q\(0),
	combout => \Timer|CompareR~0_combout\);

-- Location: FF_X35_Y17_N29
\Timer|CompareR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CompareR~0_combout\,
	ena => \Timer|CompareR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CompareR\(0));

-- Location: LCCOMB_X35_Y17_N0
\Timer|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~0_combout\ = (\Timer|CompareR\(1) & (\Timer|CounterR\(1) & (\Timer|CompareR\(0) $ (!\Timer|CounterR\(0))))) # (!\Timer|CompareR\(1) & (!\Timer|CounterR\(1) & (\Timer|CompareR\(0) $ (!\Timer|CounterR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CompareR\(1),
	datab => \Timer|CompareR\(0),
	datac => \Timer|CounterR\(0),
	datad => \Timer|CounterR\(1),
	combout => \Timer|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y17_N8
\Timer|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~4_combout\ = (\Timer|Equal0~1_combout\ & (\Timer|Equal0~2_combout\ & (\Timer|Equal0~3_combout\ & \Timer|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|Equal0~1_combout\,
	datab => \Timer|Equal0~2_combout\,
	datac => \Timer|Equal0~3_combout\,
	datad => \Timer|Equal0~0_combout\,
	combout => \Timer|Equal0~4_combout\);

-- Location: LCCOMB_X35_Y17_N22
\Timer|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~7_combout\ = (\Timer|CounterR\(19) & (\Timer|CounterR\(18) & (\Timer|CompareR\(1) & \Timer|CounterR\(17)))) # (!\Timer|CounterR\(19) & (!\Timer|CounterR\(18) & (!\Timer|CompareR\(1) & !\Timer|CounterR\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(19),
	datab => \Timer|CounterR\(18),
	datac => \Timer|CompareR\(1),
	datad => \Timer|CounterR\(17),
	combout => \Timer|Equal0~7_combout\);

-- Location: LCCOMB_X35_Y17_N24
\Timer|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~8_combout\ = (\Timer|CounterR\(22) & (\Timer|CounterR\(20) & (\Timer|CompareR\(1) & \Timer|CounterR\(21)))) # (!\Timer|CounterR\(22) & (!\Timer|CounterR\(20) & (!\Timer|CompareR\(1) & !\Timer|CounterR\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(22),
	datab => \Timer|CounterR\(20),
	datac => \Timer|CompareR\(1),
	datad => \Timer|CounterR\(21),
	combout => \Timer|Equal0~8_combout\);

-- Location: LCCOMB_X35_Y17_N12
\Timer|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~6_combout\ = (\Timer|CompareR\(1) & (\Timer|CounterR\(16) & (\Timer|CounterR\(15) & \Timer|CounterR\(14)))) # (!\Timer|CompareR\(1) & (!\Timer|CounterR\(16) & (!\Timer|CounterR\(15) & !\Timer|CounterR\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CompareR\(1),
	datab => \Timer|CounterR\(16),
	datac => \Timer|CounterR\(15),
	datad => \Timer|CounterR\(14),
	combout => \Timer|Equal0~6_combout\);

-- Location: LCCOMB_X35_Y17_N18
\Timer|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~5_combout\ = (\Timer|CounterR\(12) & (\Timer|CounterR\(13) & (\Timer|CompareR\(1) & \Timer|CounterR\(11)))) # (!\Timer|CounterR\(12) & (!\Timer|CounterR\(13) & (!\Timer|CompareR\(1) & !\Timer|CounterR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(12),
	datab => \Timer|CounterR\(13),
	datac => \Timer|CompareR\(1),
	datad => \Timer|CounterR\(11),
	combout => \Timer|Equal0~5_combout\);

-- Location: LCCOMB_X35_Y17_N26
\Timer|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~9_combout\ = (\Timer|Equal0~7_combout\ & (\Timer|Equal0~8_combout\ & (\Timer|Equal0~6_combout\ & \Timer|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|Equal0~7_combout\,
	datab => \Timer|Equal0~8_combout\,
	datac => \Timer|Equal0~6_combout\,
	datad => \Timer|Equal0~5_combout\,
	combout => \Timer|Equal0~9_combout\);

-- Location: LCCOMB_X35_Y17_N4
\Timer|Equal0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~14_combout\ = (\Timer|Equal0~13_combout\ & (\Timer|Equal0~4_combout\ & \Timer|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|Equal0~13_combout\,
	datab => \Timer|Equal0~4_combout\,
	datac => \Timer|Equal0~9_combout\,
	combout => \Timer|Equal0~14_combout\);

-- Location: LCCOMB_X20_Y20_N0
\Timer|StatusR~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|StatusR~1_combout\ = (\Timer|StatusR~0_combout\) # ((\Timer|Equal0~14_combout\) # ((\Timer|StatusR\(0) & !\mips_cpu|c|md|WideOr9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|StatusR\(0),
	datab => \mips_cpu|c|md|WideOr9~1_combout\,
	datac => \Timer|StatusR~0_combout\,
	datad => \Timer|Equal0~14_combout\,
	combout => \Timer|StatusR~1_combout\);

-- Location: LCCOMB_X20_Y20_N24
\Timer|StatusR~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|StatusR~2_combout\ = (\Timer|StatusR~1_combout\) # ((\Timer|StatusR\(0) & ((\mips_cpu|dp|alu|Add0~26_combout\) # (!\Decoder|Equal1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Equal1~6_combout\,
	datab => \mips_cpu|dp|alu|Add0~26_combout\,
	datac => \Timer|StatusR\(0),
	datad => \Timer|StatusR~1_combout\,
	combout => \Timer|StatusR~2_combout\);

-- Location: FF_X20_Y20_N25
\Timer|StatusR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|StatusR~2_combout\,
	sclr => \ALT_INV_reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|StatusR\(0));

-- Location: LCCOMB_X20_Y20_N30
\Timer|always2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|always2~0_combout\ = (\Timer|StatusR\(0)) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Timer|StatusR\(0),
	datad => \reset_ff~q\,
	combout => \Timer|always2~0_combout\);

-- Location: FF_X36_Y17_N1
\Timer|CounterR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CounterR[0]~32_combout\,
	sclr => \Timer|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CounterR\(0));

-- Location: LCCOMB_X19_Y20_N12
\mips_cpu|dp|wd_mux|y[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wd_mux|y[0]~5_combout\ = (\mips_cpu|dp|alu|Add0~16_combout\ & (!\mips_cpu|dp|alu|Add0~18_combout\ & \Timer|CounterR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~16_combout\,
	datab => \mips_cpu|dp|alu|Add0~18_combout\,
	datad => \Timer|CounterR\(0),
	combout => \mips_cpu|dp|wd_mux|y[0]~5_combout\);

-- Location: LCCOMB_X19_Y20_N10
\mips_cpu|dp|wd_mux|y[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wd_mux|y[0]~4_combout\ = (!\mips_cpu|dp|alu|Add0~16_combout\ & ((\mips_cpu|dp|alu|Add0~18_combout\ & ((\Timer|StatusR\(0)))) # (!\mips_cpu|dp|alu|Add0~18_combout\ & (\Timer|CompareR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~16_combout\,
	datab => \mips_cpu|dp|alu|Add0~18_combout\,
	datac => \Timer|CompareR\(0),
	datad => \Timer|StatusR\(0),
	combout => \mips_cpu|dp|wd_mux|y[0]~4_combout\);

-- Location: LCCOMB_X19_Y20_N22
\mips_cpu|dp|wd_mux|y[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wd_mux|y[0]~6_combout\ = (\Timer|Equal3~0_combout\ & (\mips_cpu|c|md|WideOr9~1_combout\ & ((\mips_cpu|dp|wd_mux|y[0]~5_combout\) # (\mips_cpu|dp|wd_mux|y[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~5_combout\,
	datab => \Timer|Equal3~0_combout\,
	datac => \mips_cpu|c|md|WideOr9~1_combout\,
	datad => \mips_cpu|dp|wd_mux|y[0]~4_combout\,
	combout => \mips_cpu|dp|wd_mux|y[0]~6_combout\);

-- Location: LCCOMB_X20_Y20_N20
\uGPIO|DataOut[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|DataOut[0]~0_combout\ = (!\mips_cpu|dp|alu|Add0~6_combout\ & (\mips_cpu|dp|alu|Add0~4_combout\ & \mips_cpu|dp|alu|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|alu|Add0~6_combout\,
	datac => \mips_cpu|dp|alu|Add0~4_combout\,
	datad => \mips_cpu|dp|alu|Equal0~0_combout\,
	combout => \uGPIO|DataOut[0]~0_combout\);

-- Location: LCCOMB_X20_Y20_N6
\uGPIO|DataOut[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|DataOut[0]~1_combout\ = (\Decoder|Equal1~6_combout\ & (\mips_cpu|c|md|WideOr9~1_combout\ & (\mips_cpu|dp|alu|Add0~26_combout\ & \uGPIO|DataOut[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Equal1~6_combout\,
	datab => \mips_cpu|c|md|WideOr9~1_combout\,
	datac => \mips_cpu|dp|alu|Add0~26_combout\,
	datad => \uGPIO|DataOut[0]~0_combout\,
	combout => \uGPIO|DataOut[0]~1_combout\);

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X22_Y20_N28
\uGPIO|sw0|c_state~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~36_combout\ = (\reset_ff~q\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_ff~q\,
	datad => \SW[0]~input_o\,
	combout => \uGPIO|sw0|c_state~36_combout\);

-- Location: FF_X22_Y20_N29
\uGPIO|sw0|c_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S0~q\);

-- Location: LCCOMB_X22_Y20_N10
\uGPIO|sw0|c_state~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~35_combout\ = (\SW[0]~input_o\ & (\reset_ff~q\ & !\uGPIO|sw0|c_state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \reset_ff~q\,
	datad => \uGPIO|sw0|c_state.S0~q\,
	combout => \uGPIO|sw0|c_state~35_combout\);

-- Location: FF_X22_Y20_N11
\uGPIO|sw0|c_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S1~q\);

-- Location: LCCOMB_X22_Y20_N0
\uGPIO|sw0|c_state~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~34_combout\ = (\SW[0]~input_o\ & (\reset_ff~q\ & \uGPIO|sw0|c_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \reset_ff~q\,
	datad => \uGPIO|sw0|c_state.S1~q\,
	combout => \uGPIO|sw0|c_state~34_combout\);

-- Location: FF_X22_Y20_N1
\uGPIO|sw0|c_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S2~q\);

-- Location: LCCOMB_X22_Y20_N22
\uGPIO|sw0|c_state~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~33_combout\ = (\SW[0]~input_o\ & (\reset_ff~q\ & \uGPIO|sw0|c_state.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \reset_ff~q\,
	datad => \uGPIO|sw0|c_state.S2~q\,
	combout => \uGPIO|sw0|c_state~33_combout\);

-- Location: FF_X22_Y20_N23
\uGPIO|sw0|c_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S3~q\);

-- Location: LCCOMB_X22_Y20_N20
\uGPIO|sw0|c_state~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~32_combout\ = (\uGPIO|sw0|c_state.S3~q\ & (\SW[0]~input_o\ & \reset_ff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|sw0|c_state.S3~q\,
	datab => \SW[0]~input_o\,
	datac => \reset_ff~q\,
	combout => \uGPIO|sw0|c_state~32_combout\);

-- Location: FF_X22_Y20_N21
\uGPIO|sw0|c_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S4~q\);

-- Location: LCCOMB_X22_Y20_N2
\uGPIO|sw0|c_state~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~31_combout\ = (\SW[0]~input_o\ & (\reset_ff~q\ & \uGPIO|sw0|c_state.S4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \reset_ff~q\,
	datad => \uGPIO|sw0|c_state.S4~q\,
	combout => \uGPIO|sw0|c_state~31_combout\);

-- Location: FF_X22_Y20_N3
\uGPIO|sw0|c_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S5~q\);

-- Location: LCCOMB_X22_Y20_N8
\uGPIO|sw0|c_state~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~30_combout\ = (\SW[0]~input_o\ & (\reset_ff~q\ & \uGPIO|sw0|c_state.S5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \reset_ff~q\,
	datad => \uGPIO|sw0|c_state.S5~q\,
	combout => \uGPIO|sw0|c_state~30_combout\);

-- Location: FF_X22_Y20_N9
\uGPIO|sw0|c_state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S6~q\);

-- Location: LCCOMB_X22_Y20_N30
\uGPIO|sw0|c_state~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~29_combout\ = (\reset_ff~q\ & (\SW[0]~input_o\ & \uGPIO|sw0|c_state.S6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datab => \SW[0]~input_o\,
	datac => \uGPIO|sw0|c_state.S6~q\,
	combout => \uGPIO|sw0|c_state~29_combout\);

-- Location: FF_X22_Y20_N31
\uGPIO|sw0|c_state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S7~q\);

-- Location: LCCOMB_X22_Y20_N4
\uGPIO|sw0|c_state~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~28_combout\ = (\uGPIO|sw0|c_state.S7~q\ & (\SW[0]~input_o\ & \reset_ff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|sw0|c_state.S7~q\,
	datab => \SW[0]~input_o\,
	datac => \reset_ff~q\,
	combout => \uGPIO|sw0|c_state~28_combout\);

-- Location: FF_X22_Y20_N5
\uGPIO|sw0|c_state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S8~q\);

-- Location: LCCOMB_X22_Y20_N26
\uGPIO|sw0|c_state~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~27_combout\ = (\reset_ff~q\ & (\SW[0]~input_o\ & \uGPIO|sw0|c_state.S8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datab => \SW[0]~input_o\,
	datac => \uGPIO|sw0|c_state.S8~q\,
	combout => \uGPIO|sw0|c_state~27_combout\);

-- Location: FF_X22_Y20_N27
\uGPIO|sw0|c_state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S9~q\);

-- Location: LCCOMB_X22_Y20_N16
\uGPIO|sw0|c_state~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~26_combout\ = (\uGPIO|sw0|c_state.S9~q\ & (\SW[0]~input_o\ & \reset_ff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|sw0|c_state.S9~q\,
	datab => \SW[0]~input_o\,
	datac => \reset_ff~q\,
	combout => \uGPIO|sw0|c_state~26_combout\);

-- Location: FF_X22_Y20_N17
\uGPIO|sw0|c_state.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S10~q\);

-- Location: LCCOMB_X22_Y20_N6
\uGPIO|sw0|c_state~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~25_combout\ = (\SW[0]~input_o\ & (\reset_ff~q\ & \uGPIO|sw0|c_state.S10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \reset_ff~q\,
	datad => \uGPIO|sw0|c_state.S10~q\,
	combout => \uGPIO|sw0|c_state~25_combout\);

-- Location: FF_X22_Y20_N7
\uGPIO|sw0|c_state.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S11~q\);

-- Location: LCCOMB_X22_Y20_N12
\uGPIO|sw0|c_state~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~24_combout\ = (\SW[0]~input_o\ & (\reset_ff~q\ & \uGPIO|sw0|c_state.S11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \reset_ff~q\,
	datad => \uGPIO|sw0|c_state.S11~q\,
	combout => \uGPIO|sw0|c_state~24_combout\);

-- Location: FF_X22_Y20_N13
\uGPIO|sw0|c_state.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S12~q\);

-- Location: LCCOMB_X22_Y20_N18
\uGPIO|sw0|c_state~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~23_combout\ = (\SW[0]~input_o\ & (\reset_ff~q\ & \uGPIO|sw0|c_state.S12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \reset_ff~q\,
	datad => \uGPIO|sw0|c_state.S12~q\,
	combout => \uGPIO|sw0|c_state~23_combout\);

-- Location: FF_X22_Y20_N19
\uGPIO|sw0|c_state.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S13~q\);

-- Location: LCCOMB_X22_Y20_N24
\uGPIO|sw0|c_state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~22_combout\ = (\SW[0]~input_o\ & (\reset_ff~q\ & \uGPIO|sw0|c_state.S13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \reset_ff~q\,
	datad => \uGPIO|sw0|c_state.S13~q\,
	combout => \uGPIO|sw0|c_state~22_combout\);

-- Location: FF_X22_Y20_N25
\uGPIO|sw0|c_state.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|sw0|c_state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|sw0|c_state.S14~q\);

-- Location: LCCOMB_X21_Y20_N16
\uGPIO|SW_StatusR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|SW_StatusR~0_combout\ = (!\uGPIO|DataOut[0]~1_combout\ & ((\uGPIO|SW_StatusR\(0)) # (\uGPIO|sw0|c_state.S14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uGPIO|DataOut[0]~1_combout\,
	datac => \uGPIO|SW_StatusR\(0),
	datad => \uGPIO|sw0|c_state.S14~q\,
	combout => \uGPIO|SW_StatusR~0_combout\);

-- Location: FF_X21_Y20_N17
\uGPIO|SW_StatusR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|SW_StatusR~0_combout\,
	sclr => \ALT_INV_reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|SW_StatusR\(0));

-- Location: LCCOMB_X19_Y20_N16
\mips_cpu|dp|wd_mux|y[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wd_mux|y[0]~7_combout\ = (\mips_cpu|dp|alu|Add0~26_combout\ & (((\uGPIO|SW_StatusR\(0) & \uGPIO|DataOut[0]~1_combout\)))) # (!\mips_cpu|dp|alu|Add0~26_combout\ & (\mips_cpu|dp|wd_mux|y[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~6_combout\,
	datab => \mips_cpu|dp|alu|Add0~26_combout\,
	datac => \uGPIO|SW_StatusR\(0),
	datad => \uGPIO|DataOut[0]~1_combout\,
	combout => \mips_cpu|dp|wd_mux|y[0]~7_combout\);

-- Location: LCCOMB_X19_Y20_N0
\mips_cpu|dp|wd_mux|y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wd_mux|y[0]~0_combout\ = (\mips_cpu|c|md|Selector8~1_combout\ & (!\mips_cpu|dp|IF_ID_inst|q\(30) & (\mips_cpu|c|md|Decoder0~2_combout\ & \mips_cpu|dp|IF_ID_inst|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|md|Selector8~1_combout\,
	datab => \mips_cpu|dp|IF_ID_inst|q\(30),
	datac => \mips_cpu|c|md|Decoder0~2_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(31),
	combout => \mips_cpu|dp|wd_mux|y[0]~0_combout\);

-- Location: LCCOMB_X19_Y21_N0
\mips_cpu|dp|wd_mux|y[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wd_mux|y[0]~8_combout\ = (\mips_cpu|dp|wd_mux|y[0]~3_combout\) # ((\mips_cpu|dp|wd_mux|y[0]~7_combout\ & (\Decoder|Equal1~6_combout\ & \mips_cpu|dp|wd_mux|y[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~3_combout\,
	datab => \mips_cpu|dp|wd_mux|y[0]~7_combout\,
	datac => \Decoder|Equal1~6_combout\,
	datad => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	combout => \mips_cpu|dp|wd_mux|y[0]~8_combout\);

-- Location: LCCOMB_X19_Y21_N8
\mips_cpu|dp|rf|R1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R1[0]~0_combout\ = (\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|rf|Decoder0~0_combout\ & ((\mips_cpu|dp|wd_mux|y[0]~8_combout\))) # (!\mips_cpu|dp|rf|Decoder0~0_combout\ & (\mips_cpu|dp|rf|R1\(0))))) # 
-- (!\mips_cpu|c|md|Selector8~1_combout\ & (((\mips_cpu|dp|rf|R1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|md|Selector8~1_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~0_combout\,
	datac => \mips_cpu|dp|rf|R1\(0),
	datad => \mips_cpu|dp|wd_mux|y[0]~8_combout\,
	combout => \mips_cpu|dp|rf|R1[0]~0_combout\);

-- Location: FF_X19_Y21_N9
\mips_cpu|dp|rf|R1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R1\(0));

-- Location: M9K_X25_Y20_N0
\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000333F7320733733F7337373F33F73F760FE031331",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "insts_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram2port_inst_data:Inst_Data_Mem|altsyncram:altsyncram_component|altsyncram_5ul2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 17,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \mips_cpu|c|md|ALT_INV_WideOr9~1_combout\,
	portbre => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	ena1 => \Decoder|Equal0~5_combout\,
	portadatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portbdatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAIN_bus\,
	portaaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: FF_X23_Y20_N27
\mips_cpu|dp|IF_ID_inst|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(25),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(25));

-- Location: FF_X23_Y20_N29
\mips_cpu|dp|IF_ID_inst|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(24),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(24));

-- Location: LCCOMB_X23_Y20_N26
\mips_cpu|dp|rf|Mux63~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~1_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(23) & (\mips_cpu|dp|rf|R1\(0) & (!\mips_cpu|dp|IF_ID_inst|q\(25) & !\mips_cpu|dp|IF_ID_inst|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(23),
	datab => \mips_cpu|dp|rf|R1\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(25),
	datad => \mips_cpu|dp|IF_ID_inst|q\(24),
	combout => \mips_cpu|dp|rf|Mux63~1_combout\);

-- Location: LCCOMB_X19_Y21_N18
\mips_cpu|dp|rf|R31[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R31[0]~0_combout\ = (\mips_cpu|c|md|Selector8~1_combout\ & (((\mips_cpu|dp|rf|R31\(0))))) # (!\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|c|md|Selector2~1_combout\ & ((\mips_cpu|dp|wd_mux|y[0]~8_combout\))) # 
-- (!\mips_cpu|c|md|Selector2~1_combout\ & (\mips_cpu|dp|rf|R31\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|md|Selector8~1_combout\,
	datab => \mips_cpu|c|md|Selector2~1_combout\,
	datac => \mips_cpu|dp|rf|R31\(0),
	datad => \mips_cpu|dp|wd_mux|y[0]~8_combout\,
	combout => \mips_cpu|dp|rf|R31[0]~0_combout\);

-- Location: FF_X19_Y21_N19
\mips_cpu|dp|rf|R31[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R31[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R31\(0));

-- Location: LCCOMB_X23_Y20_N28
\mips_cpu|dp|rf|Mux63~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(23) & (\mips_cpu|dp|rf|R31\(0) & (\mips_cpu|dp|IF_ID_inst|q\(24) & \mips_cpu|dp|IF_ID_inst|q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(23),
	datab => \mips_cpu|dp|rf|R31\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(24),
	datad => \mips_cpu|dp|IF_ID_inst|q\(25),
	combout => \mips_cpu|dp|rf|Mux63~0_combout\);

-- Location: FF_X23_Y20_N25
\mips_cpu|dp|IF_ID_inst|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(22),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(22));

-- Location: LCCOMB_X23_Y20_N0
\mips_cpu|dp|IF_ID_inst|q[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[21]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(21),
	combout => \mips_cpu|dp|IF_ID_inst|q[21]~feeder_combout\);

-- Location: FF_X23_Y20_N1
\mips_cpu|dp|IF_ID_inst|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[21]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(21));

-- Location: LCCOMB_X23_Y20_N24
\mips_cpu|dp|rf|Mux63~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~2_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(21) & ((\mips_cpu|dp|IF_ID_inst|q\(22) & ((\mips_cpu|dp|rf|Mux63~0_combout\))) # (!\mips_cpu|dp|IF_ID_inst|q\(22) & (\mips_cpu|dp|rf|Mux63~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Mux63~1_combout\,
	datab => \mips_cpu|dp|rf|Mux63~0_combout\,
	datac => \mips_cpu|dp|IF_ID_inst|q\(22),
	datad => \mips_cpu|dp|IF_ID_inst|q\(21),
	combout => \mips_cpu|dp|rf|Mux63~2_combout\);

-- Location: FF_X16_Y21_N1
\mips_cpu|dp|ID_EX_rd1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|rf|Mux63~2_combout\,
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_rd1|q\(0));

-- Location: LCCOMB_X17_Y21_N14
\mips_cpu|dp|IF_ID_inst|q[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[10]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(10),
	combout => \mips_cpu|dp|IF_ID_inst|q[10]~feeder_combout\);

-- Location: FF_X17_Y21_N15
\mips_cpu|dp|IF_ID_inst|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[10]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(10));

-- Location: FF_X16_Y21_N21
\mips_cpu|dp|ID_EX_signimm|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(10),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(10));

-- Location: FF_X15_Y21_N27
\mips_cpu|dp|ID_EX_pcplus4|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_pcplus4|q\(12),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_pcplus4|q\(12));

-- Location: FF_X15_Y21_N21
\mips_cpu|dp|ID_EX_pcplus4|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_pcplus4|q\(9),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_pcplus4|q\(9));

-- Location: FF_X15_Y21_N19
\mips_cpu|dp|ID_EX_pcplus4|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_pcplus4|q\(8),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_pcplus4|q\(8));

-- Location: FF_X14_Y21_N19
\mips_cpu|dp|IF_ID_pcplus4|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[7]~20_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(7));

-- Location: FF_X15_Y21_N17
\mips_cpu|dp|ID_EX_pcplus4|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_pcplus4|q\(7),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_pcplus4|q\(7));

-- Location: FF_X15_Y21_N9
\mips_cpu|dp|ID_EX_pcplus4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_pcplus4|q\(3),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_pcplus4|q\(3));

-- Location: LCCOMB_X15_Y21_N6
\mips_cpu|dp|pcadd2|y[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcadd2|y[2]~0_combout\ = (\mips_cpu|dp|ID_EX_pcplus4|q\(2) & (\mips_cpu|dp|ID_EX_signimm|q\(0) $ (VCC))) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(2) & (\mips_cpu|dp|ID_EX_signimm|q\(0) & VCC))
-- \mips_cpu|dp|pcadd2|y[2]~1\ = CARRY((\mips_cpu|dp|ID_EX_pcplus4|q\(2) & \mips_cpu|dp|ID_EX_signimm|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_pcplus4|q\(2),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(0),
	datad => VCC,
	combout => \mips_cpu|dp|pcadd2|y[2]~0_combout\,
	cout => \mips_cpu|dp|pcadd2|y[2]~1\);

-- Location: LCCOMB_X15_Y21_N8
\mips_cpu|dp|pcadd2|y[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcadd2|y[3]~2_combout\ = (\mips_cpu|dp|ID_EX_signimm|q\(1) & ((\mips_cpu|dp|ID_EX_pcplus4|q\(3) & (\mips_cpu|dp|pcadd2|y[2]~1\ & VCC)) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(3) & (!\mips_cpu|dp|pcadd2|y[2]~1\)))) # 
-- (!\mips_cpu|dp|ID_EX_signimm|q\(1) & ((\mips_cpu|dp|ID_EX_pcplus4|q\(3) & (!\mips_cpu|dp|pcadd2|y[2]~1\)) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(3) & ((\mips_cpu|dp|pcadd2|y[2]~1\) # (GND)))))
-- \mips_cpu|dp|pcadd2|y[3]~3\ = CARRY((\mips_cpu|dp|ID_EX_signimm|q\(1) & (!\mips_cpu|dp|ID_EX_pcplus4|q\(3) & !\mips_cpu|dp|pcadd2|y[2]~1\)) # (!\mips_cpu|dp|ID_EX_signimm|q\(1) & ((!\mips_cpu|dp|pcadd2|y[2]~1\) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(1),
	datab => \mips_cpu|dp|ID_EX_pcplus4|q\(3),
	datad => VCC,
	cin => \mips_cpu|dp|pcadd2|y[2]~1\,
	combout => \mips_cpu|dp|pcadd2|y[3]~2_combout\,
	cout => \mips_cpu|dp|pcadd2|y[3]~3\);

-- Location: LCCOMB_X15_Y21_N10
\mips_cpu|dp|pcadd2|y[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcadd2|y[4]~4_combout\ = ((\mips_cpu|dp|ID_EX_pcplus4|q\(4) $ (\mips_cpu|dp|ID_EX_signimm|q\(2) $ (!\mips_cpu|dp|pcadd2|y[3]~3\)))) # (GND)
-- \mips_cpu|dp|pcadd2|y[4]~5\ = CARRY((\mips_cpu|dp|ID_EX_pcplus4|q\(4) & ((\mips_cpu|dp|ID_EX_signimm|q\(2)) # (!\mips_cpu|dp|pcadd2|y[3]~3\))) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(4) & (\mips_cpu|dp|ID_EX_signimm|q\(2) & !\mips_cpu|dp|pcadd2|y[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_pcplus4|q\(4),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(2),
	datad => VCC,
	cin => \mips_cpu|dp|pcadd2|y[3]~3\,
	combout => \mips_cpu|dp|pcadd2|y[4]~4_combout\,
	cout => \mips_cpu|dp|pcadd2|y[4]~5\);

-- Location: LCCOMB_X15_Y21_N12
\mips_cpu|dp|pcadd2|y[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcadd2|y[5]~6_combout\ = (\mips_cpu|dp|ID_EX_pcplus4|q\(5) & ((\mips_cpu|dp|ID_EX_signimm|q\(3) & (\mips_cpu|dp|pcadd2|y[4]~5\ & VCC)) # (!\mips_cpu|dp|ID_EX_signimm|q\(3) & (!\mips_cpu|dp|pcadd2|y[4]~5\)))) # 
-- (!\mips_cpu|dp|ID_EX_pcplus4|q\(5) & ((\mips_cpu|dp|ID_EX_signimm|q\(3) & (!\mips_cpu|dp|pcadd2|y[4]~5\)) # (!\mips_cpu|dp|ID_EX_signimm|q\(3) & ((\mips_cpu|dp|pcadd2|y[4]~5\) # (GND)))))
-- \mips_cpu|dp|pcadd2|y[5]~7\ = CARRY((\mips_cpu|dp|ID_EX_pcplus4|q\(5) & (!\mips_cpu|dp|ID_EX_signimm|q\(3) & !\mips_cpu|dp|pcadd2|y[4]~5\)) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(5) & ((!\mips_cpu|dp|pcadd2|y[4]~5\) # (!\mips_cpu|dp|ID_EX_signimm|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_pcplus4|q\(5),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(3),
	datad => VCC,
	cin => \mips_cpu|dp|pcadd2|y[4]~5\,
	combout => \mips_cpu|dp|pcadd2|y[5]~6_combout\,
	cout => \mips_cpu|dp|pcadd2|y[5]~7\);

-- Location: LCCOMB_X15_Y21_N14
\mips_cpu|dp|pcadd2|y[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcadd2|y[6]~8_combout\ = ((\mips_cpu|dp|ID_EX_pcplus4|q\(6) $ (\mips_cpu|dp|ID_EX_signimm|q\(4) $ (!\mips_cpu|dp|pcadd2|y[5]~7\)))) # (GND)
-- \mips_cpu|dp|pcadd2|y[6]~9\ = CARRY((\mips_cpu|dp|ID_EX_pcplus4|q\(6) & ((\mips_cpu|dp|ID_EX_signimm|q\(4)) # (!\mips_cpu|dp|pcadd2|y[5]~7\))) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(6) & (\mips_cpu|dp|ID_EX_signimm|q\(4) & !\mips_cpu|dp|pcadd2|y[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_pcplus4|q\(6),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(4),
	datad => VCC,
	cin => \mips_cpu|dp|pcadd2|y[5]~7\,
	combout => \mips_cpu|dp|pcadd2|y[6]~8_combout\,
	cout => \mips_cpu|dp|pcadd2|y[6]~9\);

-- Location: LCCOMB_X15_Y21_N16
\mips_cpu|dp|pcadd2|y[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcadd2|y[7]~10_combout\ = (\mips_cpu|dp|ID_EX_signimm|q\(5) & ((\mips_cpu|dp|ID_EX_pcplus4|q\(7) & (\mips_cpu|dp|pcadd2|y[6]~9\ & VCC)) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(7) & (!\mips_cpu|dp|pcadd2|y[6]~9\)))) # 
-- (!\mips_cpu|dp|ID_EX_signimm|q\(5) & ((\mips_cpu|dp|ID_EX_pcplus4|q\(7) & (!\mips_cpu|dp|pcadd2|y[6]~9\)) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(7) & ((\mips_cpu|dp|pcadd2|y[6]~9\) # (GND)))))
-- \mips_cpu|dp|pcadd2|y[7]~11\ = CARRY((\mips_cpu|dp|ID_EX_signimm|q\(5) & (!\mips_cpu|dp|ID_EX_pcplus4|q\(7) & !\mips_cpu|dp|pcadd2|y[6]~9\)) # (!\mips_cpu|dp|ID_EX_signimm|q\(5) & ((!\mips_cpu|dp|pcadd2|y[6]~9\) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(5),
	datab => \mips_cpu|dp|ID_EX_pcplus4|q\(7),
	datad => VCC,
	cin => \mips_cpu|dp|pcadd2|y[6]~9\,
	combout => \mips_cpu|dp|pcadd2|y[7]~10_combout\,
	cout => \mips_cpu|dp|pcadd2|y[7]~11\);

-- Location: LCCOMB_X15_Y21_N18
\mips_cpu|dp|pcadd2|y[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcadd2|y[8]~12_combout\ = ((\mips_cpu|dp|ID_EX_signimm|q\(6) $ (\mips_cpu|dp|ID_EX_pcplus4|q\(8) $ (!\mips_cpu|dp|pcadd2|y[7]~11\)))) # (GND)
-- \mips_cpu|dp|pcadd2|y[8]~13\ = CARRY((\mips_cpu|dp|ID_EX_signimm|q\(6) & ((\mips_cpu|dp|ID_EX_pcplus4|q\(8)) # (!\mips_cpu|dp|pcadd2|y[7]~11\))) # (!\mips_cpu|dp|ID_EX_signimm|q\(6) & (\mips_cpu|dp|ID_EX_pcplus4|q\(8) & !\mips_cpu|dp|pcadd2|y[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(6),
	datab => \mips_cpu|dp|ID_EX_pcplus4|q\(8),
	datad => VCC,
	cin => \mips_cpu|dp|pcadd2|y[7]~11\,
	combout => \mips_cpu|dp|pcadd2|y[8]~12_combout\,
	cout => \mips_cpu|dp|pcadd2|y[8]~13\);

-- Location: LCCOMB_X15_Y21_N20
\mips_cpu|dp|pcadd2|y[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcadd2|y[9]~14_combout\ = (\mips_cpu|dp|ID_EX_signimm|q\(7) & ((\mips_cpu|dp|ID_EX_pcplus4|q\(9) & (\mips_cpu|dp|pcadd2|y[8]~13\ & VCC)) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(9) & (!\mips_cpu|dp|pcadd2|y[8]~13\)))) # 
-- (!\mips_cpu|dp|ID_EX_signimm|q\(7) & ((\mips_cpu|dp|ID_EX_pcplus4|q\(9) & (!\mips_cpu|dp|pcadd2|y[8]~13\)) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(9) & ((\mips_cpu|dp|pcadd2|y[8]~13\) # (GND)))))
-- \mips_cpu|dp|pcadd2|y[9]~15\ = CARRY((\mips_cpu|dp|ID_EX_signimm|q\(7) & (!\mips_cpu|dp|ID_EX_pcplus4|q\(9) & !\mips_cpu|dp|pcadd2|y[8]~13\)) # (!\mips_cpu|dp|ID_EX_signimm|q\(7) & ((!\mips_cpu|dp|pcadd2|y[8]~13\) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(7),
	datab => \mips_cpu|dp|ID_EX_pcplus4|q\(9),
	datad => VCC,
	cin => \mips_cpu|dp|pcadd2|y[8]~13\,
	combout => \mips_cpu|dp|pcadd2|y[9]~14_combout\,
	cout => \mips_cpu|dp|pcadd2|y[9]~15\);

-- Location: LCCOMB_X15_Y21_N22
\mips_cpu|dp|pcadd2|y[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcadd2|y[10]~16_combout\ = ((\mips_cpu|dp|ID_EX_pcplus4|q\(10) $ (\mips_cpu|dp|ID_EX_signimm|q\(8) $ (!\mips_cpu|dp|pcadd2|y[9]~15\)))) # (GND)
-- \mips_cpu|dp|pcadd2|y[10]~17\ = CARRY((\mips_cpu|dp|ID_EX_pcplus4|q\(10) & ((\mips_cpu|dp|ID_EX_signimm|q\(8)) # (!\mips_cpu|dp|pcadd2|y[9]~15\))) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(10) & (\mips_cpu|dp|ID_EX_signimm|q\(8) & !\mips_cpu|dp|pcadd2|y[9]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_pcplus4|q\(10),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(8),
	datad => VCC,
	cin => \mips_cpu|dp|pcadd2|y[9]~15\,
	combout => \mips_cpu|dp|pcadd2|y[10]~16_combout\,
	cout => \mips_cpu|dp|pcadd2|y[10]~17\);

-- Location: LCCOMB_X15_Y21_N24
\mips_cpu|dp|pcadd2|y[11]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcadd2|y[11]~18_combout\ = (\mips_cpu|dp|ID_EX_pcplus4|q\(11) & ((\mips_cpu|dp|ID_EX_signimm|q\(9) & (\mips_cpu|dp|pcadd2|y[10]~17\ & VCC)) # (!\mips_cpu|dp|ID_EX_signimm|q\(9) & (!\mips_cpu|dp|pcadd2|y[10]~17\)))) # 
-- (!\mips_cpu|dp|ID_EX_pcplus4|q\(11) & ((\mips_cpu|dp|ID_EX_signimm|q\(9) & (!\mips_cpu|dp|pcadd2|y[10]~17\)) # (!\mips_cpu|dp|ID_EX_signimm|q\(9) & ((\mips_cpu|dp|pcadd2|y[10]~17\) # (GND)))))
-- \mips_cpu|dp|pcadd2|y[11]~19\ = CARRY((\mips_cpu|dp|ID_EX_pcplus4|q\(11) & (!\mips_cpu|dp|ID_EX_signimm|q\(9) & !\mips_cpu|dp|pcadd2|y[10]~17\)) # (!\mips_cpu|dp|ID_EX_pcplus4|q\(11) & ((!\mips_cpu|dp|pcadd2|y[10]~17\) # 
-- (!\mips_cpu|dp|ID_EX_signimm|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_pcplus4|q\(11),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(9),
	datad => VCC,
	cin => \mips_cpu|dp|pcadd2|y[10]~17\,
	combout => \mips_cpu|dp|pcadd2|y[11]~18_combout\,
	cout => \mips_cpu|dp|pcadd2|y[11]~19\);

-- Location: LCCOMB_X15_Y21_N26
\mips_cpu|dp|pcadd2|y[12]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcadd2|y[12]~20_combout\ = \mips_cpu|dp|ID_EX_signimm|q\(10) $ (\mips_cpu|dp|pcadd2|y[11]~19\ $ (!\mips_cpu|dp|ID_EX_pcplus4|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(10),
	datad => \mips_cpu|dp|ID_EX_pcplus4|q\(12),
	cin => \mips_cpu|dp|pcadd2|y[11]~19\,
	combout => \mips_cpu|dp|pcadd2|y[12]~20_combout\);

-- Location: LCCOMB_X17_Y21_N2
\mips_cpu|dp|pcreg|q[12]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcreg|q[12]~10_combout\ = (\mips_cpu|c|pcsrc~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(12))) # (!\mips_cpu|c|pcsrc~1_combout\ & ((\mips_cpu|dp|pcadd2|y[12]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_pcplus4|q\(12),
	datab => \mips_cpu|c|pcsrc~1_combout\,
	datad => \mips_cpu|dp|pcadd2|y[12]~20_combout\,
	combout => \mips_cpu|dp|pcreg|q[12]~10_combout\);

-- Location: FF_X17_Y21_N3
\mips_cpu|dp|pcreg|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcreg|q[12]~10_combout\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(10),
	clrn => \reset_ff~q\,
	sclr => \mips_cpu|dp|ALT_INV_comb~1_combout\,
	sload => \mips_cpu|c|md|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(12));

-- Location: LCCOMB_X17_Y21_N24
\mips_cpu|dp|IF_ID_inst|q[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[9]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(9),
	combout => \mips_cpu|dp|IF_ID_inst|q[9]~feeder_combout\);

-- Location: FF_X17_Y21_N25
\mips_cpu|dp|IF_ID_inst|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[9]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(9));

-- Location: FF_X16_Y21_N19
\mips_cpu|dp|ID_EX_signimm|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(9),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(9));

-- Location: LCCOMB_X17_Y21_N26
\mips_cpu|dp|pcreg|q[11]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcreg|q[11]~9_combout\ = (\mips_cpu|c|pcsrc~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(11))) # (!\mips_cpu|c|pcsrc~1_combout\ & ((\mips_cpu|dp|pcadd2|y[11]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|pcsrc~1_combout\,
	datab => \mips_cpu|dp|IF_ID_pcplus4|q\(11),
	datad => \mips_cpu|dp|pcadd2|y[11]~18_combout\,
	combout => \mips_cpu|dp|pcreg|q[11]~9_combout\);

-- Location: FF_X17_Y21_N27
\mips_cpu|dp|pcreg|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcreg|q[11]~9_combout\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(9),
	clrn => \reset_ff~q\,
	sclr => \mips_cpu|dp|ALT_INV_comb~1_combout\,
	sload => \mips_cpu|c|md|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(11));

-- Location: LCCOMB_X16_Y19_N12
\mips_cpu|dp|IF_ID_inst|q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[8]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(8),
	combout => \mips_cpu|dp|IF_ID_inst|q[8]~feeder_combout\);

-- Location: FF_X16_Y19_N13
\mips_cpu|dp|IF_ID_inst|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[8]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(8));

-- Location: FF_X16_Y21_N17
\mips_cpu|dp|ID_EX_signimm|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(8),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(8));

-- Location: LCCOMB_X14_Y21_N6
\mips_cpu|dp|pcreg|q[10]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcreg|q[10]~8_combout\ = (\mips_cpu|c|pcsrc~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(10))) # (!\mips_cpu|c|pcsrc~1_combout\ & ((\mips_cpu|dp|pcadd2|y[10]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|pcsrc~1_combout\,
	datab => \mips_cpu|dp|IF_ID_pcplus4|q\(10),
	datad => \mips_cpu|dp|pcadd2|y[10]~16_combout\,
	combout => \mips_cpu|dp|pcreg|q[10]~8_combout\);

-- Location: FF_X14_Y21_N7
\mips_cpu|dp|pcreg|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcreg|q[10]~8_combout\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(8),
	clrn => \reset_ff~q\,
	sclr => \mips_cpu|dp|ALT_INV_comb~1_combout\,
	sload => \mips_cpu|c|md|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(10));

-- Location: LCCOMB_X17_Y21_N10
\mips_cpu|dp|IF_ID_inst|q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[7]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(7),
	combout => \mips_cpu|dp|IF_ID_inst|q[7]~feeder_combout\);

-- Location: FF_X17_Y21_N11
\mips_cpu|dp|IF_ID_inst|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[7]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(7));

-- Location: FF_X16_Y21_N15
\mips_cpu|dp|ID_EX_signimm|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(7),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(7));

-- Location: LCCOMB_X17_Y21_N16
\mips_cpu|dp|pcreg|q[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcreg|q[9]~7_combout\ = (\mips_cpu|c|pcsrc~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(9))) # (!\mips_cpu|c|pcsrc~1_combout\ & ((\mips_cpu|dp|pcadd2|y[9]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|pcsrc~1_combout\,
	datab => \mips_cpu|dp|IF_ID_pcplus4|q\(9),
	datad => \mips_cpu|dp|pcadd2|y[9]~14_combout\,
	combout => \mips_cpu|dp|pcreg|q[9]~7_combout\);

-- Location: FF_X17_Y21_N17
\mips_cpu|dp|pcreg|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcreg|q[9]~7_combout\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(7),
	clrn => \reset_ff~q\,
	sclr => \mips_cpu|dp|ALT_INV_comb~1_combout\,
	sload => \mips_cpu|c|md|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(9));

-- Location: LCCOMB_X16_Y19_N14
\mips_cpu|dp|IF_ID_inst|q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[6]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(6),
	combout => \mips_cpu|dp|IF_ID_inst|q[6]~feeder_combout\);

-- Location: FF_X16_Y19_N15
\mips_cpu|dp|IF_ID_inst|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[6]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(6));

-- Location: FF_X16_Y21_N13
\mips_cpu|dp|ID_EX_signimm|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(6),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(6));

-- Location: LCCOMB_X14_Y21_N30
\mips_cpu|dp|pcreg|q[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcreg|q[8]~6_combout\ = (\mips_cpu|c|pcsrc~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(8))) # (!\mips_cpu|c|pcsrc~1_combout\ & ((\mips_cpu|dp|pcadd2|y[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|pcsrc~1_combout\,
	datab => \mips_cpu|dp|IF_ID_pcplus4|q\(8),
	datad => \mips_cpu|dp|pcadd2|y[8]~12_combout\,
	combout => \mips_cpu|dp|pcreg|q[8]~6_combout\);

-- Location: FF_X14_Y21_N31
\mips_cpu|dp|pcreg|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcreg|q[8]~6_combout\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(6),
	clrn => \reset_ff~q\,
	sclr => \mips_cpu|dp|ALT_INV_comb~1_combout\,
	sload => \mips_cpu|c|md|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(8));

-- Location: FF_X14_Y20_N25
\mips_cpu|dp|IF_ID_inst|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(30),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(30));

-- Location: LCCOMB_X14_Y20_N24
\mips_cpu|c|md|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Decoder0~0_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(31) & (\mips_cpu|dp|IF_ID_inst|q\(26) & (!\mips_cpu|dp|IF_ID_inst|q\(30) & \mips_cpu|dp|IF_ID_inst|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(31),
	datab => \mips_cpu|dp|IF_ID_inst|q\(26),
	datac => \mips_cpu|dp|IF_ID_inst|q\(30),
	datad => \mips_cpu|dp|IF_ID_inst|q\(27),
	combout => \mips_cpu|c|md|Decoder0~0_combout\);

-- Location: LCCOMB_X14_Y20_N26
\mips_cpu|dp|srcbmux|y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[0]~0_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & (((!\mips_cpu|dp|IF_ID_inst|q\(28)) # (!\mips_cpu|dp|IF_ID_inst|q\(29))) # (!\mips_cpu|c|md|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|md|Decoder0~0_combout\,
	datab => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(29),
	datad => \mips_cpu|dp|IF_ID_inst|q\(28),
	combout => \mips_cpu|dp|srcbmux|y[0]~0_combout\);

-- Location: LCCOMB_X14_Y20_N30
\mips_cpu|c|pcsrc~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|pcsrc~0_combout\ = \mips_cpu|dp|IF_ID_inst|q\(26) $ (((\Decoder|Equal0~5_combout\ & (!\mips_cpu|dp|alu|Add0~24_combout\ & \mips_cpu|dp|alu|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Equal0~5_combout\,
	datab => \mips_cpu|dp|alu|Add0~24_combout\,
	datac => \mips_cpu|dp|alu|Equal0~1_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(26),
	combout => \mips_cpu|c|pcsrc~0_combout\);

-- Location: LCCOMB_X17_Y21_N4
\mips_cpu|c|pcsrc~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|pcsrc~1_combout\ = ((!\mips_cpu|dp|IF_ID_inst|q\(28)) # (!\mips_cpu|c|md|Selector3~0_combout\)) # (!\mips_cpu|c|pcsrc~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|pcsrc~0_combout\,
	datac => \mips_cpu|c|md|Selector3~0_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(28),
	combout => \mips_cpu|c|pcsrc~1_combout\);

-- Location: LCCOMB_X14_Y21_N4
\mips_cpu|dp|pcreg|q[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcreg|q[7]~5_combout\ = (\mips_cpu|c|pcsrc~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(7))) # (!\mips_cpu|c|pcsrc~1_combout\ & ((\mips_cpu|dp|pcadd2|y[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|pcsrc~1_combout\,
	datab => \mips_cpu|dp|IF_ID_pcplus4|q\(7),
	datad => \mips_cpu|dp|pcadd2|y[7]~10_combout\,
	combout => \mips_cpu|dp|pcreg|q[7]~5_combout\);

-- Location: FF_X14_Y21_N5
\mips_cpu|dp|pcreg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcreg|q[7]~5_combout\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(5),
	clrn => \reset_ff~q\,
	sclr => \mips_cpu|dp|ALT_INV_comb~1_combout\,
	sload => \mips_cpu|c|md|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(7));

-- Location: LCCOMB_X16_Y19_N10
\mips_cpu|dp|IF_ID_inst|q[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[4]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(4),
	combout => \mips_cpu|dp|IF_ID_inst|q[4]~feeder_combout\);

-- Location: FF_X16_Y19_N11
\mips_cpu|dp|IF_ID_inst|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[4]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(4));

-- Location: FF_X16_Y21_N9
\mips_cpu|dp|ID_EX_signimm|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(4),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(4));

-- Location: LCCOMB_X17_Y21_N22
\mips_cpu|dp|pcreg|q[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcreg|q[6]~4_combout\ = (\mips_cpu|c|pcsrc~1_combout\ & ((\mips_cpu|dp|IF_ID_pcplus4|q\(6)))) # (!\mips_cpu|c|pcsrc~1_combout\ & (\mips_cpu|dp|pcadd2|y[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcadd2|y[6]~8_combout\,
	datab => \mips_cpu|dp|IF_ID_pcplus4|q\(6),
	datad => \mips_cpu|c|pcsrc~1_combout\,
	combout => \mips_cpu|dp|pcreg|q[6]~4_combout\);

-- Location: FF_X17_Y21_N23
\mips_cpu|dp|pcreg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcreg|q[6]~4_combout\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(4),
	clrn => \reset_ff~q\,
	sclr => \mips_cpu|dp|ALT_INV_comb~1_combout\,
	sload => \mips_cpu|c|md|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(6));

-- Location: LCCOMB_X17_Y21_N20
\mips_cpu|dp|IF_ID_inst|q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[3]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(3),
	combout => \mips_cpu|dp|IF_ID_inst|q[3]~feeder_combout\);

-- Location: FF_X17_Y21_N21
\mips_cpu|dp|IF_ID_inst|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[3]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(3));

-- Location: FF_X16_Y21_N7
\mips_cpu|dp|ID_EX_signimm|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(3),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(3));

-- Location: LCCOMB_X14_Y21_N2
\mips_cpu|dp|pcreg|q[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcreg|q[5]~3_combout\ = (\mips_cpu|c|pcsrc~1_combout\ & ((\mips_cpu|dp|IF_ID_pcplus4|q\(5)))) # (!\mips_cpu|c|pcsrc~1_combout\ & (\mips_cpu|dp|pcadd2|y[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcadd2|y[5]~6_combout\,
	datab => \mips_cpu|dp|IF_ID_pcplus4|q\(5),
	datad => \mips_cpu|c|pcsrc~1_combout\,
	combout => \mips_cpu|dp|pcreg|q[5]~3_combout\);

-- Location: FF_X14_Y21_N3
\mips_cpu|dp|pcreg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcreg|q[5]~3_combout\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(3),
	clrn => \reset_ff~q\,
	sclr => \mips_cpu|dp|ALT_INV_comb~1_combout\,
	sload => \mips_cpu|c|md|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(5));

-- Location: LCCOMB_X17_Y21_N18
\mips_cpu|dp|IF_ID_inst|q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[2]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(2),
	combout => \mips_cpu|dp|IF_ID_inst|q[2]~feeder_combout\);

-- Location: FF_X17_Y21_N19
\mips_cpu|dp|IF_ID_inst|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[2]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(2));

-- Location: FF_X16_Y21_N5
\mips_cpu|dp|ID_EX_signimm|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(2),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(2));

-- Location: LCCOMB_X17_Y21_N6
\mips_cpu|dp|pcreg|q[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcreg|q[4]~2_combout\ = (\mips_cpu|c|pcsrc~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(4))) # (!\mips_cpu|c|pcsrc~1_combout\ & ((\mips_cpu|dp|pcadd2|y[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_pcplus4|q\(4),
	datab => \mips_cpu|dp|pcadd2|y[4]~4_combout\,
	datad => \mips_cpu|c|pcsrc~1_combout\,
	combout => \mips_cpu|dp|pcreg|q[4]~2_combout\);

-- Location: FF_X17_Y21_N7
\mips_cpu|dp|pcreg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcreg|q[4]~2_combout\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(2),
	clrn => \reset_ff~q\,
	sclr => \mips_cpu|dp|ALT_INV_comb~1_combout\,
	sload => \mips_cpu|c|md|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(4));

-- Location: FF_X19_Y21_N21
\mips_cpu|dp|IF_ID_inst|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(1),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(1));

-- Location: FF_X15_Y20_N9
\mips_cpu|dp|ID_EX_signimm|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(1),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(1));

-- Location: LCCOMB_X14_Y21_N0
\mips_cpu|dp|pcreg|q[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcreg|q[3]~1_combout\ = (\mips_cpu|c|pcsrc~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(3))) # (!\mips_cpu|c|pcsrc~1_combout\ & ((\mips_cpu|dp|pcadd2|y[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_pcplus4|q\(3),
	datab => \mips_cpu|dp|pcadd2|y[3]~2_combout\,
	datad => \mips_cpu|c|pcsrc~1_combout\,
	combout => \mips_cpu|dp|pcreg|q[3]~1_combout\);

-- Location: FF_X14_Y21_N1
\mips_cpu|dp|pcreg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcreg|q[3]~1_combout\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(1),
	clrn => \reset_ff~q\,
	sclr => \mips_cpu|dp|ALT_INV_comb~1_combout\,
	sload => \mips_cpu|c|md|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(3));

-- Location: FF_X19_Y21_N31
\mips_cpu|dp|IF_ID_inst|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(0),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(0));

-- Location: FF_X14_Y20_N15
\mips_cpu|dp|ID_EX_signimm|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(0),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(0));

-- Location: LCCOMB_X17_Y21_N28
\mips_cpu|dp|pcreg|q[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcreg|q[2]~0_combout\ = (\mips_cpu|c|pcsrc~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(2))) # (!\mips_cpu|c|pcsrc~1_combout\ & ((\mips_cpu|dp|pcadd2|y[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_pcplus4|q\(2),
	datab => \mips_cpu|dp|pcadd2|y[2]~0_combout\,
	datad => \mips_cpu|c|pcsrc~1_combout\,
	combout => \mips_cpu|dp|pcreg|q[2]~0_combout\);

-- Location: FF_X17_Y21_N29
\mips_cpu|dp|pcreg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcreg|q[2]~0_combout\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(0),
	clrn => \reset_ff~q\,
	sclr => \mips_cpu|dp|ALT_INV_comb~1_combout\,
	sload => \mips_cpu|c|md|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(2));

-- Location: FF_X14_Y20_N21
\mips_cpu|dp|IF_ID_inst|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(26),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(26));

-- Location: LCCOMB_X14_Y20_N12
\mips_cpu|c|md|WideOr7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|WideOr7~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(29)) # ((\mips_cpu|dp|IF_ID_inst|q\(27) & ((\mips_cpu|dp|IF_ID_inst|q\(28)))) # (!\mips_cpu|dp|IF_ID_inst|q\(27) & (\mips_cpu|dp|IF_ID_inst|q\(26) & !\mips_cpu|dp|IF_ID_inst|q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(26),
	datab => \mips_cpu|dp|IF_ID_inst|q\(27),
	datac => \mips_cpu|dp|IF_ID_inst|q\(29),
	datad => \mips_cpu|dp|IF_ID_inst|q\(28),
	combout => \mips_cpu|c|md|WideOr7~0_combout\);

-- Location: LCCOMB_X14_Y20_N8
\mips_cpu|c|md|WideOr7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|WideOr7~1_combout\ = (\mips_cpu|c|md|WideOr7~0_combout\) # ((\mips_cpu|dp|IF_ID_inst|q\(30)) # (\mips_cpu|dp|IF_ID_inst|q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|md|WideOr7~0_combout\,
	datab => \mips_cpu|dp|IF_ID_inst|q\(30),
	datad => \mips_cpu|dp|IF_ID_inst|q\(31),
	combout => \mips_cpu|c|md|WideOr7~1_combout\);

-- Location: FF_X14_Y20_N9
\mips_cpu|dp|ID_EX_C_alusrc|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|c|md|WideOr7~1_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_C_alusrc|q\(0));

-- Location: LCCOMB_X17_Y20_N22
\Decoder|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~0_combout\ = (!\mips_cpu|dp|alu|Add0~40_combout\ & (!\mips_cpu|dp|alu|Add0~36_combout\ & (!\mips_cpu|dp|alu|Add0~38_combout\ & !\mips_cpu|dp|alu|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~40_combout\,
	datab => \mips_cpu|dp|alu|Add0~36_combout\,
	datac => \mips_cpu|dp|alu|Add0~38_combout\,
	datad => \mips_cpu|dp|alu|Add0~34_combout\,
	combout => \Decoder|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y20_N24
\Decoder|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~1_combout\ = (!\mips_cpu|dp|alu|Add0~32_combout\ & (!\mips_cpu|dp|alu|Add0~26_combout\ & (\Decoder|Equal0~0_combout\ & \Decoder|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~32_combout\,
	datab => \mips_cpu|dp|alu|Add0~26_combout\,
	datac => \Decoder|Equal0~0_combout\,
	datad => \Decoder|Equal1~1_combout\,
	combout => \Decoder|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y20_N26
\Decoder|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~2_combout\ = (!\mips_cpu|dp|alu|Add0~44_combout\ & (\Decoder|Equal0~1_combout\ & (!\mips_cpu|dp|alu|Add0~42_combout\ & !\mips_cpu|dp|alu|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~44_combout\,
	datab => \Decoder|Equal0~1_combout\,
	datac => \mips_cpu|dp|alu|Add0~42_combout\,
	datad => \mips_cpu|dp|alu|Add0~46_combout\,
	combout => \Decoder|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y20_N28
\Decoder|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~3_combout\ = (\Decoder|Equal0~2_combout\ & (!\mips_cpu|dp|alu|Add0~52_combout\ & (!\mips_cpu|dp|alu|Add0~48_combout\ & !\mips_cpu|dp|alu|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Equal0~2_combout\,
	datab => \mips_cpu|dp|alu|Add0~52_combout\,
	datac => \mips_cpu|dp|alu|Add0~48_combout\,
	datad => \mips_cpu|dp|alu|Add0~50_combout\,
	combout => \Decoder|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y20_N30
\Decoder|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~4_combout\ = (!\mips_cpu|dp|alu|Add0~54_combout\ & (!\mips_cpu|dp|alu|Add0~56_combout\ & \Decoder|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|alu|Add0~54_combout\,
	datac => \mips_cpu|dp|alu|Add0~56_combout\,
	datad => \Decoder|Equal0~3_combout\,
	combout => \Decoder|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y20_N8
\Decoder|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~5_combout\ = (\Decoder|Equal0~4_combout\ & (!\mips_cpu|dp|alu|Add0~62_combout\ & (!\mips_cpu|dp|alu|Add0~58_combout\ & !\mips_cpu|dp|alu|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Equal0~4_combout\,
	datab => \mips_cpu|dp|alu|Add0~62_combout\,
	datac => \mips_cpu|dp|alu|Add0~58_combout\,
	datad => \mips_cpu|dp|alu|Add0~60_combout\,
	combout => \Decoder|Equal0~5_combout\);

-- Location: FF_X14_Y20_N7
\mips_cpu|dp|IF_ID_inst|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(31),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(31));

-- Location: LCCOMB_X14_Y20_N2
\mips_cpu|c|md|WideOr9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|WideOr9~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(29) & ((\mips_cpu|dp|IF_ID_inst|q\(28) & (!\mips_cpu|dp|IF_ID_inst|q\(26))) # (!\mips_cpu|dp|IF_ID_inst|q\(28) & ((\mips_cpu|dp|IF_ID_inst|q\(27)))))) # (!\mips_cpu|dp|IF_ID_inst|q\(29) & 
-- ((\mips_cpu|dp|IF_ID_inst|q\(27) & ((\mips_cpu|dp|IF_ID_inst|q\(28)))) # (!\mips_cpu|dp|IF_ID_inst|q\(27) & (\mips_cpu|dp|IF_ID_inst|q\(26) & !\mips_cpu|dp|IF_ID_inst|q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(29),
	datab => \mips_cpu|dp|IF_ID_inst|q\(26),
	datac => \mips_cpu|dp|IF_ID_inst|q\(27),
	datad => \mips_cpu|dp|IF_ID_inst|q\(28),
	combout => \mips_cpu|c|md|WideOr9~0_combout\);

-- Location: LCCOMB_X19_Y20_N30
\mips_cpu|c|md|WideOr9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|WideOr9~1_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(30) & ((\mips_cpu|dp|IF_ID_inst|q\(31) & ((\mips_cpu|c|md|Decoder0~2_combout\))) # (!\mips_cpu|dp|IF_ID_inst|q\(31) & (!\mips_cpu|c|md|WideOr9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(31),
	datab => \mips_cpu|c|md|WideOr9~0_combout\,
	datac => \mips_cpu|c|md|Decoder0~2_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(30),
	combout => \mips_cpu|c|md|WideOr9~1_combout\);

-- Location: M9K_X25_Y21_N0
\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000411144224414411441444114114414550FF00111",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "insts_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram2port_inst_data:Inst_Data_Mem|altsyncram:altsyncram_component|altsyncram_5ul2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 16,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \mips_cpu|c|md|ALT_INV_WideOr9~1_combout\,
	portbre => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	ena1 => \Decoder|Equal0~5_combout\,
	portadatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portbdatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAIN_bus\,
	portaaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: FF_X19_Y21_N23
\mips_cpu|dp|IF_ID_inst|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(16),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(16));

-- Location: FF_X19_Y21_N13
\mips_cpu|dp|IF_ID_inst|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(18),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(18));

-- Location: LCCOMB_X19_Y21_N10
\mips_cpu|dp|IF_ID_inst|q[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[20]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(20),
	combout => \mips_cpu|dp|IF_ID_inst|q[20]~feeder_combout\);

-- Location: FF_X19_Y21_N11
\mips_cpu|dp|IF_ID_inst|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[20]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(20));

-- Location: LCCOMB_X19_Y21_N12
\mips_cpu|dp|rf|Mux31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(16) & ((\mips_cpu|dp|IF_ID_inst|q\(18) & ((\mips_cpu|dp|IF_ID_inst|q\(20)))) # (!\mips_cpu|dp|IF_ID_inst|q\(18) & (\mips_cpu|dp|rf|R1\(0) & !\mips_cpu|dp|IF_ID_inst|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(16),
	datab => \mips_cpu|dp|rf|R1\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(18),
	datad => \mips_cpu|dp|IF_ID_inst|q\(20),
	combout => \mips_cpu|dp|rf|Mux31~0_combout\);

-- Location: LCCOMB_X19_Y21_N14
\mips_cpu|dp|IF_ID_inst|q[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[17]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(17),
	combout => \mips_cpu|dp|IF_ID_inst|q[17]~feeder_combout\);

-- Location: FF_X19_Y21_N15
\mips_cpu|dp|IF_ID_inst|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[17]~feeder_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(17));

-- Location: FF_X19_Y21_N5
\mips_cpu|dp|IF_ID_inst|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(19),
	clrn => \reset_ff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(19));

-- Location: LCCOMB_X19_Y21_N4
\mips_cpu|dp|rf|Mux31~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~1_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(20) & (((!\mips_cpu|dp|rf|R31\(0)) # (!\mips_cpu|dp|IF_ID_inst|q\(19))) # (!\mips_cpu|dp|IF_ID_inst|q\(17)))) # (!\mips_cpu|dp|IF_ID_inst|q\(20) & ((\mips_cpu|dp|IF_ID_inst|q\(17)) # 
-- ((\mips_cpu|dp|IF_ID_inst|q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(20),
	datab => \mips_cpu|dp|IF_ID_inst|q\(17),
	datac => \mips_cpu|dp|IF_ID_inst|q\(19),
	datad => \mips_cpu|dp|rf|R31\(0),
	combout => \mips_cpu|dp|rf|Mux31~1_combout\);

-- Location: LCCOMB_X19_Y21_N24
\mips_cpu|dp|rf|Mux31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~2_combout\ = (\mips_cpu|dp|comb~1_combout\ & (\mips_cpu|dp|rf|Mux31~0_combout\ & (!\mips_cpu|dp|rf|Mux31~1_combout\))) # (!\mips_cpu|dp|comb~1_combout\ & (((\mips_cpu|dp|rf|R31\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Mux31~0_combout\,
	datab => \mips_cpu|dp|comb~1_combout\,
	datac => \mips_cpu|dp|rf|Mux31~1_combout\,
	datad => \mips_cpu|dp|rf|R31\(0),
	combout => \mips_cpu|dp|rf|Mux31~2_combout\);

-- Location: FF_X19_Y21_N25
\mips_cpu|dp|ID_EX_rd2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|Mux31~2_combout\,
	clrn => \reset_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_rd2|q\(0));

-- Location: LCCOMB_X24_Y20_N20
\uGPIO|HEX0_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX0_R~0_combout\ = (\mips_cpu|dp|ID_EX_rd2|q\(0) & \reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_rd2|q\(0),
	datad => \reset_ff~q\,
	combout => \uGPIO|HEX0_R~0_combout\);

-- Location: LCCOMB_X27_Y20_N0
\uGPIO|HEX3_R[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX3_R[0]~feeder_combout\ = \uGPIO|HEX0_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uGPIO|HEX0_R~0_combout\,
	combout => \uGPIO|HEX3_R[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y20_N20
\uGPIO|HEX1_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX1_R~0_combout\ = (!\mips_cpu|dp|alu|Add0~16_combout\ & (!\mips_cpu|dp|alu|Add0~18_combout\ & (\uGPIO|Equal2~1_combout\ & \mips_cpu|dp|alu|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~16_combout\,
	datab => \mips_cpu|dp|alu|Add0~18_combout\,
	datac => \uGPIO|Equal2~1_combout\,
	datad => \mips_cpu|dp|alu|Add0~8_combout\,
	combout => \uGPIO|HEX1_R~0_combout\);

-- Location: LCCOMB_X20_Y20_N26
\uGPIO|HEX2_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX2_R~0_combout\ = (\Decoder|Equal1~6_combout\ & (!\mips_cpu|c|md|WideOr9~1_combout\ & (\mips_cpu|dp|alu|Add0~26_combout\ & \uGPIO|HEX1_R~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Equal1~6_combout\,
	datab => \mips_cpu|c|md|WideOr9~1_combout\,
	datac => \mips_cpu|dp|alu|Add0~26_combout\,
	datad => \uGPIO|HEX1_R~0_combout\,
	combout => \uGPIO|HEX2_R~0_combout\);

-- Location: LCCOMB_X27_Y20_N16
\uGPIO|HEX3_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX3_R~0_combout\ = ((\uGPIO|HEX2_R~0_combout\ & (\mips_cpu|dp|alu|Add0~6_combout\ & !\mips_cpu|dp|alu|Add0~4_combout\))) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|HEX2_R~0_combout\,
	datab => \mips_cpu|dp|alu|Add0~6_combout\,
	datac => \mips_cpu|dp|alu|Add0~4_combout\,
	datad => \reset_ff~q\,
	combout => \uGPIO|HEX3_R~0_combout\);

-- Location: FF_X27_Y20_N1
\uGPIO|HEX3_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|HEX3_R[0]~feeder_combout\,
	ena => \uGPIO|HEX3_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|HEX3_R\(0));

-- Location: LCCOMB_X27_Y20_N10
\uGPIO|HEX3_R[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX3_R[6]~1_combout\ = !\reset_ff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_ff~q\,
	combout => \uGPIO|HEX3_R[6]~1_combout\);

-- Location: FF_X27_Y20_N11
\uGPIO|HEX3_R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|HEX3_R[6]~1_combout\,
	ena => \uGPIO|HEX3_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|HEX3_R\(6));

-- Location: LCCOMB_X27_Y20_N20
\uGPIO|HEX2_R[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX2_R[0]~feeder_combout\ = \uGPIO|HEX0_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uGPIO|HEX0_R~0_combout\,
	combout => \uGPIO|HEX2_R[0]~feeder_combout\);

-- Location: LCCOMB_X27_Y20_N2
\uGPIO|HEX2_R~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX2_R~1_combout\ = ((\uGPIO|HEX2_R~0_combout\ & (!\mips_cpu|dp|alu|Add0~6_combout\ & \mips_cpu|dp|alu|Add0~4_combout\))) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|HEX2_R~0_combout\,
	datab => \mips_cpu|dp|alu|Add0~6_combout\,
	datac => \mips_cpu|dp|alu|Add0~4_combout\,
	datad => \reset_ff~q\,
	combout => \uGPIO|HEX2_R~1_combout\);

-- Location: FF_X27_Y20_N21
\uGPIO|HEX2_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|HEX2_R[0]~feeder_combout\,
	ena => \uGPIO|HEX2_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|HEX2_R\(0));

-- Location: LCCOMB_X27_Y20_N30
\uGPIO|HEX2_R[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX2_R[6]~2_combout\ = !\reset_ff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_ff~q\,
	combout => \uGPIO|HEX2_R[6]~2_combout\);

-- Location: FF_X27_Y20_N31
\uGPIO|HEX2_R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|HEX2_R[6]~2_combout\,
	ena => \uGPIO|HEX2_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|HEX2_R\(6));

-- Location: LCCOMB_X24_Y20_N24
\uGPIO|HEX1_R[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX1_R[0]~feeder_combout\ = \uGPIO|HEX0_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uGPIO|HEX0_R~0_combout\,
	combout => \uGPIO|HEX1_R[0]~feeder_combout\);

-- Location: LCCOMB_X20_Y20_N10
\uGPIO|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|Equal2~2_combout\ = (\mips_cpu|dp|alu|Add0~6_combout\ & (!\mips_cpu|dp|alu|Add0~4_combout\ & \mips_cpu|dp|alu|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|alu|Add0~6_combout\,
	datac => \mips_cpu|dp|alu|Add0~4_combout\,
	datad => \mips_cpu|dp|alu|Equal0~0_combout\,
	combout => \uGPIO|Equal2~2_combout\);

-- Location: LCCOMB_X20_Y20_N28
\uGPIO|LEDG_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|LEDG_R~0_combout\ = (\Decoder|Equal1~6_combout\ & (\mips_cpu|dp|alu|Add0~26_combout\ & !\mips_cpu|c|md|WideOr9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Equal1~6_combout\,
	datac => \mips_cpu|dp|alu|Add0~26_combout\,
	datad => \mips_cpu|c|md|WideOr9~1_combout\,
	combout => \uGPIO|LEDG_R~0_combout\);

-- Location: LCCOMB_X20_Y20_N22
\uGPIO|HEX1_R~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX1_R~1_combout\ = (!\mips_cpu|dp|alu|Add0~6_combout\ & (!\mips_cpu|dp|alu|Add0~4_combout\ & \uGPIO|HEX1_R~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|alu|Add0~6_combout\,
	datac => \mips_cpu|dp|alu|Add0~4_combout\,
	datad => \uGPIO|HEX1_R~0_combout\,
	combout => \uGPIO|HEX1_R~1_combout\);

-- Location: LCCOMB_X20_Y20_N4
\uGPIO|HEX1_R~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX1_R~2_combout\ = ((!\uGPIO|Equal2~2_combout\ & (\uGPIO|LEDG_R~0_combout\ & \uGPIO|HEX1_R~1_combout\))) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|Equal2~2_combout\,
	datab => \uGPIO|LEDG_R~0_combout\,
	datac => \uGPIO|HEX1_R~1_combout\,
	datad => \reset_ff~q\,
	combout => \uGPIO|HEX1_R~2_combout\);

-- Location: FF_X24_Y20_N25
\uGPIO|HEX1_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|HEX1_R[0]~feeder_combout\,
	ena => \uGPIO|HEX1_R~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|HEX1_R\(0));

-- Location: LCCOMB_X24_Y20_N10
\uGPIO|HEX1_R[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX1_R[6]~3_combout\ = !\reset_ff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_ff~q\,
	combout => \uGPIO|HEX1_R[6]~3_combout\);

-- Location: FF_X24_Y20_N11
\uGPIO|HEX1_R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|HEX1_R[6]~3_combout\,
	ena => \uGPIO|HEX1_R~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|HEX1_R\(6));

-- Location: LCCOMB_X20_Y20_N14
\uGPIO|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|Equal3~0_combout\ = (\mips_cpu|dp|alu|Add0~6_combout\ & (\mips_cpu|dp|alu|Add0~4_combout\ & \mips_cpu|dp|alu|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|alu|Add0~6_combout\,
	datac => \mips_cpu|dp|alu|Add0~4_combout\,
	datad => \mips_cpu|dp|alu|Equal0~0_combout\,
	combout => \uGPIO|Equal3~0_combout\);

-- Location: LCCOMB_X20_Y20_N8
\uGPIO|HEX0_R~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX0_R~1_combout\ = ((!\uGPIO|Equal2~2_combout\ & (\uGPIO|LEDG_R~0_combout\ & \uGPIO|Equal3~0_combout\))) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|Equal2~2_combout\,
	datab => \uGPIO|LEDG_R~0_combout\,
	datac => \uGPIO|Equal3~0_combout\,
	datad => \reset_ff~q\,
	combout => \uGPIO|HEX0_R~1_combout\);

-- Location: FF_X24_Y20_N21
\uGPIO|HEX0_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|HEX0_R~0_combout\,
	ena => \uGPIO|HEX0_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|HEX0_R\(0));

-- Location: LCCOMB_X24_Y20_N6
\uGPIO|HEX0_R[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX0_R[6]~2_combout\ = !\reset_ff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_ff~q\,
	combout => \uGPIO|HEX0_R[6]~2_combout\);

-- Location: FF_X24_Y20_N7
\uGPIO|HEX0_R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|HEX0_R[6]~2_combout\,
	ena => \uGPIO|HEX0_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|HEX0_R\(6));

-- Location: LCCOMB_X20_Y20_N2
\uGPIO|LEDG_R~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|LEDG_R~1_combout\ = ((\uGPIO|Equal2~2_combout\ & \uGPIO|LEDG_R~0_combout\)) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|Equal2~2_combout\,
	datab => \uGPIO|LEDG_R~0_combout\,
	datad => \reset_ff~q\,
	combout => \uGPIO|LEDG_R~1_combout\);

-- Location: FF_X35_Y17_N17
\uGPIO|LEDG_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Timer|CompareR~0_combout\,
	sload => VCC,
	ena => \uGPIO|LEDG_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|LEDG_R\(0));

-- Location: LCCOMB_X35_Y17_N2
\uGPIO|LEDG_R[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|LEDG_R[9]~2_combout\ = !\reset_ff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_ff~q\,
	combout => \uGPIO|LEDG_R[9]~2_combout\);

-- Location: FF_X35_Y17_N3
\uGPIO|LEDG_R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|LEDG_R[9]~2_combout\,
	ena => \uGPIO|LEDG_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|LEDG_R\(9));

-- Location: IOIBUF_X0_Y25_N1
\SW[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\SW[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\BUTTON[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON(2),
	o => \BUTTON[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\BUTTON[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON(1),
	o => \BUTTON[1]~input_o\);
END structure;


