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

-- DATE "11/26/2017 14:49:13"

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
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \reset_ff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \BUTTON[0]~input_o\ : std_logic;
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset_ff~q\ : std_logic;
SIGNAL \Timer|CounterR[0]~32_combout\ : std_logic;
SIGNAL \Timer|always2~0_combout\ : std_logic;
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
SIGNAL \Timer|CompareR[1]~4_combout\ : std_logic;
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[3]~11_cout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[3]~12_combout\ : std_logic;
SIGNAL \reset_ff~clkctrl_outclk\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[3]~13\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[4]~15\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[5]~16_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[5]~17\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[6]~18_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[6]~19\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[7]~20_combout\ : std_logic;
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
SIGNAL \mips_cpu|c|md|Selector10~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|ad|Mux0~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|comb~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wrmux|y[3]~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[8]~5_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[8]~7_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux23~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[8]~55_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[7]~6_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[6]~9_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[6]~57_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[5]~8_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[4]~9_combout\ : std_logic;
SIGNAL \mips_cpu|c|ad|Mux0~1_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|WideOr7~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|WideOr7~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[3]~60_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[3]~30_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[2]~61_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[2]~31_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[2]~11_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[1]~62_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[1]~12_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[0]~15_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardB[0]~5_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[9]~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[9]~6_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[9]~54_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~19\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~20_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux22~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux22~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[10]~3_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[10]~5_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux21~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[10]~53_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~21\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~22_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux21~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[12]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[12]~3_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[12]~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux19~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[12]~51_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[11]~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~23\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~25\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~26_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux19~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[11]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[11]~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[11]~52_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~24_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux20~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux20~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wrmux|y[4]~4_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardB[0]~6_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wrmux|y[1]~0_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardB[0]~3_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardB[1]~2_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardB[1]~1_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardB[0]~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[15]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[31]~24_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[31]~25_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux0~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux0~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[31]~19_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[31]~36_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[14]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[30]~26_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[30]~37_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[30]~20_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[13]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[29]~27_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[29]~40_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux2~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[29]~38_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[28]~28_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[28]~41_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux3~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[28]~39_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[27]~29_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[27]~23_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[27]~42_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux4~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[26]~30_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[26]~43_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux5~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[26]~41_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[25]~31_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[25]~42_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[24]~32_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[24]~43_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[23]~33_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[23]~27_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[23]~46_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux8~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[22]~34_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[22]~45_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[21]~35_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[21]~48_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux10~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[21]~46_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[20]~36_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[20]~47_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[19]~37_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[19]~48_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[18]~32_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[18]~38_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[18]~51_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux13~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[17]~34_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[17]~15_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[16]~20_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[16]~23_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux15~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[16]~35_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[15]~21_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[15]~63_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[14]~22_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux17~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[14]~64_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[13]~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[13]~50_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~27\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~29\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~30_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux17~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[14]~18_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~31\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~32_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux16~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux16~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[15]~17_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~33\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~34_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux15~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[16]~16_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~35\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~37\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~38_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux13~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[18]~49_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~39\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~40_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[19]~50_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux12~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux12~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[19]~31_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~41\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~42_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[20]~49_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux11~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux11~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[20]~30_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~43\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~44_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux10~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[21]~29_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~45\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~46_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[22]~47_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux9~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux9~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[22]~28_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~47\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~48_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux8~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[23]~44_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~49\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~50_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[24]~45_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux7~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux7~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[24]~26_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~51\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~52_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[25]~44_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux6~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux6~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[25]~25_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~53\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~54_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux5~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[26]~24_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~55\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~56_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux4~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[27]~40_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~57\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~58_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux3~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[28]~22_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~59\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~60_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux2~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[29]~21_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~61\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~63\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~64_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardA[1]~3_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardA[0]~6_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardA[0]~5_combout\ : std_logic;
SIGNAL \mips_cpu|dp|ID_EX_inst_3|q[0]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardA[0]~4_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardA[0]~7_combout\ : std_logic;
SIGNAL \mips_cpu|fw|Equal4~1_combout\ : std_logic;
SIGNAL \mips_cpu|fw|Equal4~0_combout\ : std_logic;
SIGNAL \mips_cpu|fw|Equal4~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|ID_EX_pcplus4|q[0]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|EX_MEM_pcadd2|q[0]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|comb~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|comb~3_combout\ : std_logic;
SIGNAL \mips_cpu|dp|jr_pc_mux|y[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wd_mux|y[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~23_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R29[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~20_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R25[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~21_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R21[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~22_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R17[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~5_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~12_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wa_mux|y[3]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~26_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R28[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~25_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R16[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R24[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~24_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R20[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~5_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~3_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R18[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R26[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R30[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R22[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~3_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~6_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~7_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R27[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R19[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R23[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~7_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R31[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~8_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~9_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~9_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~16_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R2[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~15_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R1[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~14_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R3[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~14_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~15_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~10_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R6[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~13_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R7[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~11_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R5[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R4[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~12_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~13_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~16_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~19_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R15[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~18_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R13[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R12[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~17_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~17_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R14[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~18_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~8_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R11[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R10[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~6_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R8[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~10_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Decoder0~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|R9[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~11_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux63~19_combout\ : std_logic;
SIGNAL \mips_cpu|dp|WB_ID_fwd_1|y[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|WB_ID_fwd_1|y[0]~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[0]~13_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[0]~14_combout\ : std_logic;
SIGNAL \mips_cpu|c|ad|Mux0~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~1_cout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[0]~12_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[0]~13_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[0]~14_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[0]~53_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux31~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux31~1_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Decoder0~3_combout\ : std_logic;
SIGNAL \mips_cpu|dp|EX_MEM_C_memtoreg|q[0]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[0]~16_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[0]~17_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[0]~33_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~3\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[1]~52_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux30~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux30~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[1]~32_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~5\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~7\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~9\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~11\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~13\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~15\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~17\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~18_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux23~1_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Decoder0~1_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Decoder0~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[12]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[7]~8_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[7]~56_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~16_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux24~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux24~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wrmux|y[2]~3_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardA[1]~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[6]~7_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux25~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~14_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux25~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|comb~1_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector9~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector9~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[5]~10_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[5]~58_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~12_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux26~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux26~1_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardB[1]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[12]~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[4]~11_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|b2[4]~59_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~10_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux27~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux27~1_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector3~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|wrmux|y[0]~1_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardA[1]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[3]~10_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~8_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[3]~54_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux28~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux28~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[1]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|c|ad|WideOr4~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|ad|Mux2~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|ad|Mux2~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[2]~55_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux29~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~6_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux29~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[10]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcmux|y[12]~10_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[9]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcmux|y[11]~9_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[8]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcmux|y[10]~8_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[7]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcmux|y[9]~7_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[6]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcmux|y[8]~6_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcmux|y[7]~5_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcmux|y[6]~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_inst|q[3]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcmux|y[5]~3_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector8~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector8~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[4]~14_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcmux|y[4]~2_combout\ : std_logic;
SIGNAL \mips_cpu|hd|stall~4_combout\ : std_logic;
SIGNAL \mips_cpu|hd|stall~3_combout\ : std_logic;
SIGNAL \mips_cpu|hd|stall~5_combout\ : std_logic;
SIGNAL \mips_cpu|hd|stall~1_combout\ : std_logic;
SIGNAL \mips_cpu|hd|stall~0_combout\ : std_logic;
SIGNAL \mips_cpu|hd|stall~2_combout\ : std_logic;
SIGNAL \mips_cpu|hd|stall~6_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcmux|y[3]~1_combout\ : std_logic;
SIGNAL \mips_cpu|c|ad|Mux1~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~62_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[30]~39_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux1~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux1~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~3_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~7_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~8_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~9_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~6_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~10_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~11_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~12_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~5_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Equal0~13_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|branch~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|pcsrc~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcreg|q[20]~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q[2]~32_combout\ : std_logic;
SIGNAL \mips_cpu|dp|pcmux|y[2]~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|WideOr1~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|sze|y[16]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[17]~18_combout\ : std_logic;
SIGNAL \mips_cpu|dp|srcbmux|y[17]~19_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux14~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~36_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux14~1_combout\ : std_logic;
SIGNAL \Decoder|Equal0~0_combout\ : std_logic;
SIGNAL \Decoder|Equal0~3_combout\ : std_logic;
SIGNAL \Decoder|Equal0~1_combout\ : std_logic;
SIGNAL \Decoder|Equal0~2_combout\ : std_logic;
SIGNAL \Decoder|Equal0~4_combout\ : std_logic;
SIGNAL \Decoder|Equal0~5_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Decoder0~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|WideOr9~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|WideOr9~1_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector2~0_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector2~1_combout\ : std_logic;
SIGNAL \mips_cpu|c|md|Selector2~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|EX_MEM_C_regwrite|q[0]~feeder_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardA[1]~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|MEM_WB_fwd_1|y[13]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux18~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Add0~28_combout\ : std_logic;
SIGNAL \mips_cpu|dp|alu|Mux18~1_combout\ : std_logic;
SIGNAL \Decoder|Equal1~3_combout\ : std_logic;
SIGNAL \Decoder|Equal1~2_combout\ : std_logic;
SIGNAL \Decoder|Equal1~1_combout\ : std_logic;
SIGNAL \Decoder|Equal1~0_combout\ : std_logic;
SIGNAL \Decoder|Equal1~4_combout\ : std_logic;
SIGNAL \Decoder|Equal1~5_combout\ : std_logic;
SIGNAL \uGPIO|Equal0~0_combout\ : std_logic;
SIGNAL \uGPIO|Equal0~1_combout\ : std_logic;
SIGNAL \uGPIO|Equal0~3_combout\ : std_logic;
SIGNAL \Timer|always0~0_combout\ : std_logic;
SIGNAL \Timer|CompareR~3_combout\ : std_logic;
SIGNAL \Timer|Equal0~11_combout\ : std_logic;
SIGNAL \Timer|CounterR[28]~89\ : std_logic;
SIGNAL \Timer|CounterR[29]~90_combout\ : std_logic;
SIGNAL \Timer|CounterR[29]~91\ : std_logic;
SIGNAL \Timer|CounterR[30]~92_combout\ : std_logic;
SIGNAL \Timer|CounterR[30]~93\ : std_logic;
SIGNAL \Timer|CounterR[31]~94_combout\ : std_logic;
SIGNAL \Timer|Equal0~12_combout\ : std_logic;
SIGNAL \Timer|Equal0~10_combout\ : std_logic;
SIGNAL \Timer|Equal0~13_combout\ : std_logic;
SIGNAL \Decoder|Equal1~6_combout\ : std_logic;
SIGNAL \read_data[0]~2_combout\ : std_logic;
SIGNAL \Timer|StatusR~0_combout\ : std_logic;
SIGNAL \Timer|StatusR~1_combout\ : std_logic;
SIGNAL \Timer|Equal0~8_combout\ : std_logic;
SIGNAL \Timer|Equal0~6_combout\ : std_logic;
SIGNAL \Timer|Equal0~5_combout\ : std_logic;
SIGNAL \Timer|Equal0~7_combout\ : std_logic;
SIGNAL \Timer|Equal0~9_combout\ : std_logic;
SIGNAL \Timer|CompareR~2_combout\ : std_logic;
SIGNAL \Timer|Equal0~0_combout\ : std_logic;
SIGNAL \Timer|Equal0~3_combout\ : std_logic;
SIGNAL \Timer|Equal0~2_combout\ : std_logic;
SIGNAL \Timer|Equal0~1_combout\ : std_logic;
SIGNAL \Timer|Equal0~4_combout\ : std_logic;
SIGNAL \Timer|StatusR~2_combout\ : std_logic;
SIGNAL \read_data[0]~3_combout\ : std_logic;
SIGNAL \read_data[0]~1_combout\ : std_logic;
SIGNAL \read_data[0]~4_combout\ : std_logic;
SIGNAL \Decoder|Equal3~0_combout\ : std_logic;
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
SIGNAL \read_data[0]~0_combout\ : std_logic;
SIGNAL \read_data[0]~5_combout\ : std_logic;
SIGNAL \mips_cpu|dp|resmux|y[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|ra1_mux|y[1]~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~12_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~13_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~14_combout\ : std_logic;
SIGNAL \mips_cpu|dp|ra1_mux|y[3]~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~5_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~6_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~7_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~8_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~26_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~9_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~10_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~11_combout\ : std_logic;
SIGNAL \mips_cpu|dp|ra1_mux|y[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~2_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~3_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~4_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~15_combout\ : std_logic;
SIGNAL \mips_cpu|dp|ra1_mux|y[2]~3_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~23_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~24_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~18_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~19_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~20_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~21_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~22_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~16_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~17_combout\ : std_logic;
SIGNAL \mips_cpu|dp|rf|Mux31~25_combout\ : std_logic;
SIGNAL \mips_cpu|dp|WB_ID_fwd_2|y[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardC[0]~0_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardC[0]~1_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardC[0]~2_combout\ : std_logic;
SIGNAL \mips_cpu|fw|ForwardC[0]~3_combout\ : std_logic;
SIGNAL \mips_cpu|dp|WB_ID_fwd_2|y[0]~1_combout\ : std_logic;
SIGNAL \mips_cpu|dp|EX_MEM_rd2|q[0]~feeder_combout\ : std_logic;
SIGNAL \uGPIO|HEX0_R~0_combout\ : std_logic;
SIGNAL \uGPIO|Equal0~2_combout\ : std_logic;
SIGNAL \uGPIO|HEX3_R~0_combout\ : std_logic;
SIGNAL \uGPIO|LEDG_R~0_combout\ : std_logic;
SIGNAL \uGPIO|HEX3_R~1_combout\ : std_logic;
SIGNAL \uGPIO|HEX3_R[6]~2_combout\ : std_logic;
SIGNAL \uGPIO|HEX2_R~0_combout\ : std_logic;
SIGNAL \uGPIO|HEX2_R~1_combout\ : std_logic;
SIGNAL \uGPIO|HEX2_R[6]~2_combout\ : std_logic;
SIGNAL \uGPIO|HEX1_R~0_combout\ : std_logic;
SIGNAL \uGPIO|Equal2~0_combout\ : std_logic;
SIGNAL \uGPIO|HEX1_R~1_combout\ : std_logic;
SIGNAL \uGPIO|HEX1_R[6]~2_combout\ : std_logic;
SIGNAL \uGPIO|Equal3~0_combout\ : std_logic;
SIGNAL \uGPIO|HEX0_R~1_combout\ : std_logic;
SIGNAL \uGPIO|HEX0_R[6]~2_combout\ : std_logic;
SIGNAL \uGPIO|LEDG_R~1_combout\ : std_logic;
SIGNAL \uGPIO|LEDG_R[9]~2_combout\ : std_logic;
SIGNAL \mips_cpu|c|EX_MEM_C_branch|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|IF_ID_inst|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|IF_ID_pcplus4|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_signimm|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_inst_1|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_inst_2|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_inst_3|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_C_shiftl16|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_C_regwrite|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_C_regdst|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_C_alusrc|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_C_memtoreg|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_C_memwrite|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_rd1|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_rd2|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|EX_MEM_pcadd2|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|EX_MEM_alu|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|EX_MEM_alu_zero|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|EX_MEM_rd2|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|EX_MEM_C_regwrite|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|EX_MEM_C_memtoreg|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|EX_MEM_C_memwrite|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|MEM_WB_readdata|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|MEM_WB_alu|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|MEM_WB_wrmux|q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mips_cpu|dp|MEM_WB_C_regwrite|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|MEM_WB_C_memtoreg|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mips_cpu|c|ID_EX_C_aluop|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mips_cpu|c|ID_EX_C_branch|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mips_cpu|dp|pcreg|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R9\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R8\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R7\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R6\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R5\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R4\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R31\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R30\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R3\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R29\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R28\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R27\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R26\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R25\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R24\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R23\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R22\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R21\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R20\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R19\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R18\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R17\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R16\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R15\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R14\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R13\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R12\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R11\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R10\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|rf|R1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|ID_EX_pcplus4|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_cpu|dp|EX_MEM_wrmux|q\ : std_logic_vector(4 DOWNTO 0);
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
SIGNAL \mips_cpu|hd|ALT_INV_stall~6_combout\ : std_logic;
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

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \mips_cpu|dp|EX_MEM_rd2|q\(0));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\mips_cpu|dp|EX_MEM_alu|q\(12) & \mips_cpu|dp|EX_MEM_alu|q\(11) & \mips_cpu|dp|EX_MEM_alu|q\(10) & \mips_cpu|dp|EX_MEM_alu|q\(9) & \mips_cpu|dp|EX_MEM_alu|q\(8) & 
\mips_cpu|dp|EX_MEM_alu|q\(7) & \mips_cpu|dp|EX_MEM_alu|q\(6) & \mips_cpu|dp|EX_MEM_alu|q\(5) & \mips_cpu|dp|EX_MEM_alu|q\(4) & \mips_cpu|dp|EX_MEM_alu|q\(3) & \mips_cpu|dp|EX_MEM_alu|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(0) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(1) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(2) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(3) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\Inst_Data_Mem|altsyncram_component|auto_generated|q_b\(0) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\mips_cpu|dp|EX_MEM_alu|q\(12) & \mips_cpu|dp|EX_MEM_alu|q\(11) & \mips_cpu|dp|EX_MEM_alu|q\(10) & \mips_cpu|dp|EX_MEM_alu|q\(9) & \mips_cpu|dp|EX_MEM_alu|q\(8) & 
\mips_cpu|dp|EX_MEM_alu|q\(7) & \mips_cpu|dp|EX_MEM_alu|q\(6) & \mips_cpu|dp|EX_MEM_alu|q\(5) & \mips_cpu|dp|EX_MEM_alu|q\(4) & \mips_cpu|dp|EX_MEM_alu|q\(3) & \mips_cpu|dp|EX_MEM_alu|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(4) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(5) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(16) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(31) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\mips_cpu|dp|EX_MEM_alu|q\(12) & \mips_cpu|dp|EX_MEM_alu|q\(11) & \mips_cpu|dp|EX_MEM_alu|q\(10) & \mips_cpu|dp|EX_MEM_alu|q\(9) & \mips_cpu|dp|EX_MEM_alu|q\(8) & 
\mips_cpu|dp|EX_MEM_alu|q\(7) & \mips_cpu|dp|EX_MEM_alu|q\(6) & \mips_cpu|dp|EX_MEM_alu|q\(5) & \mips_cpu|dp|EX_MEM_alu|q\(4) & \mips_cpu|dp|EX_MEM_alu|q\(3) & \mips_cpu|dp|EX_MEM_alu|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(27) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(28) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(29) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(30) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(3);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\mips_cpu|dp|EX_MEM_alu|q\(12) & \mips_cpu|dp|EX_MEM_alu|q\(11) & \mips_cpu|dp|EX_MEM_alu|q\(10) & \mips_cpu|dp|EX_MEM_alu|q\(9) & \mips_cpu|dp|EX_MEM_alu|q\(8) & 
\mips_cpu|dp|EX_MEM_alu|q\(7) & \mips_cpu|dp|EX_MEM_alu|q\(6) & \mips_cpu|dp|EX_MEM_alu|q\(5) & \mips_cpu|dp|EX_MEM_alu|q\(4) & \mips_cpu|dp|EX_MEM_alu|q\(3) & \mips_cpu|dp|EX_MEM_alu|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(17) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(18) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(19) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(26) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(3);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\mips_cpu|dp|EX_MEM_alu|q\(12) & \mips_cpu|dp|EX_MEM_alu|q\(11) & \mips_cpu|dp|EX_MEM_alu|q\(10) & \mips_cpu|dp|EX_MEM_alu|q\(9) & \mips_cpu|dp|EX_MEM_alu|q\(8) & 
\mips_cpu|dp|EX_MEM_alu|q\(7) & \mips_cpu|dp|EX_MEM_alu|q\(6) & \mips_cpu|dp|EX_MEM_alu|q\(5) & \mips_cpu|dp|EX_MEM_alu|q\(4) & \mips_cpu|dp|EX_MEM_alu|q\(3) & \mips_cpu|dp|EX_MEM_alu|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(20) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(21) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(22) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(24) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(3);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\mips_cpu|dp|EX_MEM_alu|q\(12) & \mips_cpu|dp|EX_MEM_alu|q\(11) & \mips_cpu|dp|EX_MEM_alu|q\(10) & \mips_cpu|dp|EX_MEM_alu|q\(9) & \mips_cpu|dp|EX_MEM_alu|q\(8) & 
\mips_cpu|dp|EX_MEM_alu|q\(7) & \mips_cpu|dp|EX_MEM_alu|q\(6) & \mips_cpu|dp|EX_MEM_alu|q\(5) & \mips_cpu|dp|EX_MEM_alu|q\(4) & \mips_cpu|dp|EX_MEM_alu|q\(3) & \mips_cpu|dp|EX_MEM_alu|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(12) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(13) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(23) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(25) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(3);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\mips_cpu|dp|EX_MEM_alu|q\(12) & \mips_cpu|dp|EX_MEM_alu|q\(11) & \mips_cpu|dp|EX_MEM_alu|q\(10) & \mips_cpu|dp|EX_MEM_alu|q\(9) & \mips_cpu|dp|EX_MEM_alu|q\(8) & 
\mips_cpu|dp|EX_MEM_alu|q\(7) & \mips_cpu|dp|EX_MEM_alu|q\(6) & \mips_cpu|dp|EX_MEM_alu|q\(5) & \mips_cpu|dp|EX_MEM_alu|q\(4) & \mips_cpu|dp|EX_MEM_alu|q\(3) & \mips_cpu|dp|EX_MEM_alu|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(8) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(9) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(10) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(11) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\mips_cpu|dp|pcreg|q\(12) & \mips_cpu|dp|pcreg|q\(11) & \mips_cpu|dp|pcreg|q\(10) & \mips_cpu|dp|pcreg|q\(9) & \mips_cpu|dp|pcreg|q\(8) & \mips_cpu|dp|pcreg|q\(7)
& \mips_cpu|dp|pcreg|q\(6) & \mips_cpu|dp|pcreg|q\(5) & \mips_cpu|dp|pcreg|q\(4) & \mips_cpu|dp|pcreg|q\(3) & \mips_cpu|dp|pcreg|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\mips_cpu|dp|EX_MEM_alu|q\(12) & \mips_cpu|dp|EX_MEM_alu|q\(11) & \mips_cpu|dp|EX_MEM_alu|q\(10) & \mips_cpu|dp|EX_MEM_alu|q\(9) & \mips_cpu|dp|EX_MEM_alu|q\(8) & 
\mips_cpu|dp|EX_MEM_alu|q\(7) & \mips_cpu|dp|EX_MEM_alu|q\(6) & \mips_cpu|dp|EX_MEM_alu|q\(5) & \mips_cpu|dp|EX_MEM_alu|q\(4) & \mips_cpu|dp|EX_MEM_alu|q\(3) & \mips_cpu|dp|EX_MEM_alu|q\(2));

\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(6) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(7) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(14) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(2);
\Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(15) <= \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(3);

\reset_ff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_ff~q\);

\pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll0|altpll_component|auto_generated|wire_pll1_clk\(0));

\pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll0|altpll_component|auto_generated|wire_pll1_clk\(1));

\pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll0|altpll_component|auto_generated|wire_pll1_clk\(2));
\mips_cpu|hd|ALT_INV_stall~6_combout\ <= NOT \mips_cpu|hd|stall~6_combout\;
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
	pll_compensation_delay => 5773,
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

-- Location: LCCOMB_X16_Y22_N2
reset : cycloneiii_lcell_comb
-- Equation(s):
-- \reset~combout\ = (\BUTTON[0]~input_o\ & \pll0|altpll_component|auto_generated|wire_pll1_locked\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON[0]~input_o\,
	datad => \pll0|altpll_component|auto_generated|wire_pll1_locked\,
	combout => \reset~combout\);

-- Location: FF_X16_Y22_N3
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

-- Location: LCCOMB_X15_Y23_N0
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

-- Location: LCCOMB_X16_Y22_N12
\Timer|always2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|always2~0_combout\ = (\Timer|StatusR\(0)) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_ff~q\,
	datad => \Timer|StatusR\(0),
	combout => \Timer|always2~0_combout\);

-- Location: FF_X15_Y23_N1
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

-- Location: LCCOMB_X15_Y23_N2
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

-- Location: FF_X15_Y23_N3
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

-- Location: LCCOMB_X15_Y23_N4
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

-- Location: FF_X15_Y23_N5
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

-- Location: LCCOMB_X15_Y23_N6
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

-- Location: FF_X15_Y23_N7
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

-- Location: LCCOMB_X15_Y23_N8
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

-- Location: FF_X15_Y23_N9
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

-- Location: LCCOMB_X15_Y23_N10
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

-- Location: FF_X15_Y23_N11
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

-- Location: LCCOMB_X15_Y23_N12
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

-- Location: FF_X15_Y23_N13
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

-- Location: LCCOMB_X15_Y23_N14
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

-- Location: FF_X15_Y23_N15
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

-- Location: LCCOMB_X15_Y23_N16
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

-- Location: FF_X15_Y23_N17
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

-- Location: LCCOMB_X15_Y23_N18
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

-- Location: FF_X15_Y23_N19
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

-- Location: LCCOMB_X15_Y23_N20
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

-- Location: FF_X15_Y23_N21
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

-- Location: LCCOMB_X15_Y23_N22
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

-- Location: FF_X15_Y23_N23
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

-- Location: LCCOMB_X15_Y23_N24
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

-- Location: FF_X15_Y23_N25
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

-- Location: LCCOMB_X15_Y23_N26
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

-- Location: FF_X15_Y23_N27
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

-- Location: LCCOMB_X15_Y23_N28
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

-- Location: FF_X15_Y23_N29
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

-- Location: LCCOMB_X15_Y23_N30
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

-- Location: FF_X15_Y23_N31
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

-- Location: LCCOMB_X15_Y22_N0
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

-- Location: FF_X15_Y22_N1
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

-- Location: LCCOMB_X15_Y22_N2
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

-- Location: FF_X15_Y22_N3
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

-- Location: LCCOMB_X15_Y22_N4
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

-- Location: FF_X15_Y22_N5
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

-- Location: LCCOMB_X15_Y22_N6
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

-- Location: FF_X15_Y22_N7
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

-- Location: LCCOMB_X15_Y22_N8
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

-- Location: FF_X15_Y22_N9
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

-- Location: LCCOMB_X15_Y22_N10
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

-- Location: FF_X15_Y22_N11
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

-- Location: LCCOMB_X15_Y22_N12
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

-- Location: FF_X15_Y22_N13
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

-- Location: LCCOMB_X15_Y22_N14
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

-- Location: FF_X15_Y22_N15
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

-- Location: LCCOMB_X15_Y22_N16
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

-- Location: FF_X15_Y22_N17
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

-- Location: LCCOMB_X15_Y22_N18
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

-- Location: FF_X15_Y22_N19
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

-- Location: LCCOMB_X15_Y22_N20
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

-- Location: FF_X15_Y22_N21
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

-- Location: LCCOMB_X15_Y22_N22
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

-- Location: FF_X15_Y22_N23
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

-- Location: LCCOMB_X15_Y22_N24
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

-- Location: FF_X15_Y22_N25
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

-- Location: LCCOMB_X16_Y22_N16
\Timer|CompareR[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CompareR[1]~4_combout\ = !\reset_ff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_ff~q\,
	combout => \Timer|CompareR[1]~4_combout\);

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

-- Location: LCCOMB_X22_Y19_N24
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

-- Location: LCCOMB_X20_Y22_N0
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

-- Location: LCCOMB_X20_Y22_N2
\mips_cpu|dp|IF_ID_pcplus4|q[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[3]~12_combout\ = (\mips_cpu|dp|pcreg|q\(3) & (!\mips_cpu|dp|IF_ID_pcplus4|q[3]~11_cout\)) # (!\mips_cpu|dp|pcreg|q\(3) & ((\mips_cpu|dp|IF_ID_pcplus4|q[3]~11_cout\) # (GND)))
-- \mips_cpu|dp|IF_ID_pcplus4|q[3]~13\ = CARRY((!\mips_cpu|dp|IF_ID_pcplus4|q[3]~11_cout\) # (!\mips_cpu|dp|pcreg|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q\(3),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[3]~11_cout\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[3]~12_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[3]~13\);

-- Location: CLKCTRL_G13
\reset_ff~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_ff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_ff~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y22_N4
\mips_cpu|dp|IF_ID_pcplus4|q[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[4]~14_combout\ = (\mips_cpu|dp|pcreg|q\(4) & (\mips_cpu|dp|IF_ID_pcplus4|q[3]~13\ $ (GND))) # (!\mips_cpu|dp|pcreg|q\(4) & (!\mips_cpu|dp|IF_ID_pcplus4|q[3]~13\ & VCC))
-- \mips_cpu|dp|IF_ID_pcplus4|q[4]~15\ = CARRY((\mips_cpu|dp|pcreg|q\(4) & !\mips_cpu|dp|IF_ID_pcplus4|q[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|pcreg|q\(4),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[3]~13\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[4]~14_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[4]~15\);

-- Location: LCCOMB_X20_Y22_N6
\mips_cpu|dp|IF_ID_pcplus4|q[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[5]~16_combout\ = (\mips_cpu|dp|pcreg|q\(5) & (!\mips_cpu|dp|IF_ID_pcplus4|q[4]~15\)) # (!\mips_cpu|dp|pcreg|q\(5) & ((\mips_cpu|dp|IF_ID_pcplus4|q[4]~15\) # (GND)))
-- \mips_cpu|dp|IF_ID_pcplus4|q[5]~17\ = CARRY((!\mips_cpu|dp|IF_ID_pcplus4|q[4]~15\) # (!\mips_cpu|dp|pcreg|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q\(5),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[4]~15\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[5]~16_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[5]~17\);

-- Location: FF_X20_Y22_N7
\mips_cpu|dp|IF_ID_pcplus4|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[5]~16_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(5));

-- Location: LCCOMB_X20_Y22_N8
\mips_cpu|dp|IF_ID_pcplus4|q[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[6]~18_combout\ = (\mips_cpu|dp|pcreg|q\(6) & (\mips_cpu|dp|IF_ID_pcplus4|q[5]~17\ $ (GND))) # (!\mips_cpu|dp|pcreg|q\(6) & (!\mips_cpu|dp|IF_ID_pcplus4|q[5]~17\ & VCC))
-- \mips_cpu|dp|IF_ID_pcplus4|q[6]~19\ = CARRY((\mips_cpu|dp|pcreg|q\(6) & !\mips_cpu|dp|IF_ID_pcplus4|q[5]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q\(6),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[5]~17\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[6]~18_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[6]~19\);

-- Location: FF_X20_Y22_N9
\mips_cpu|dp|IF_ID_pcplus4|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[6]~18_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(6));

-- Location: LCCOMB_X20_Y22_N10
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

-- Location: FF_X20_Y22_N11
\mips_cpu|dp|IF_ID_pcplus4|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[7]~20_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(7));

-- Location: LCCOMB_X20_Y22_N12
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

-- Location: FF_X20_Y22_N13
\mips_cpu|dp|IF_ID_pcplus4|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[8]~22_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(8));

-- Location: LCCOMB_X20_Y22_N14
\mips_cpu|dp|IF_ID_pcplus4|q[9]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[9]~24_combout\ = (\mips_cpu|dp|pcreg|q\(9) & (!\mips_cpu|dp|IF_ID_pcplus4|q[8]~23\)) # (!\mips_cpu|dp|pcreg|q\(9) & ((\mips_cpu|dp|IF_ID_pcplus4|q[8]~23\) # (GND)))
-- \mips_cpu|dp|IF_ID_pcplus4|q[9]~25\ = CARRY((!\mips_cpu|dp|IF_ID_pcplus4|q[8]~23\) # (!\mips_cpu|dp|pcreg|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q\(9),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[8]~23\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[9]~24_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[9]~25\);

-- Location: FF_X20_Y22_N15
\mips_cpu|dp|IF_ID_pcplus4|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[9]~24_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(9));

-- Location: LCCOMB_X20_Y22_N16
\mips_cpu|dp|IF_ID_pcplus4|q[10]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[10]~26_combout\ = (\mips_cpu|dp|pcreg|q\(10) & (\mips_cpu|dp|IF_ID_pcplus4|q[9]~25\ $ (GND))) # (!\mips_cpu|dp|pcreg|q\(10) & (!\mips_cpu|dp|IF_ID_pcplus4|q[9]~25\ & VCC))
-- \mips_cpu|dp|IF_ID_pcplus4|q[10]~27\ = CARRY((\mips_cpu|dp|pcreg|q\(10) & !\mips_cpu|dp|IF_ID_pcplus4|q[9]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|pcreg|q\(10),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[9]~25\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[10]~26_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[10]~27\);

-- Location: FF_X20_Y22_N17
\mips_cpu|dp|IF_ID_pcplus4|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[10]~26_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(10));

-- Location: LCCOMB_X20_Y22_N18
\mips_cpu|dp|IF_ID_pcplus4|q[11]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[11]~28_combout\ = (\mips_cpu|dp|pcreg|q\(11) & (!\mips_cpu|dp|IF_ID_pcplus4|q[10]~27\)) # (!\mips_cpu|dp|pcreg|q\(11) & ((\mips_cpu|dp|IF_ID_pcplus4|q[10]~27\) # (GND)))
-- \mips_cpu|dp|IF_ID_pcplus4|q[11]~29\ = CARRY((!\mips_cpu|dp|IF_ID_pcplus4|q[10]~27\) # (!\mips_cpu|dp|pcreg|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|pcreg|q\(11),
	datad => VCC,
	cin => \mips_cpu|dp|IF_ID_pcplus4|q[10]~27\,
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[11]~28_combout\,
	cout => \mips_cpu|dp|IF_ID_pcplus4|q[11]~29\);

-- Location: FF_X20_Y22_N19
\mips_cpu|dp|IF_ID_pcplus4|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[11]~28_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(11));

-- Location: LCCOMB_X20_Y22_N20
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

-- Location: FF_X20_Y22_N21
\mips_cpu|dp|IF_ID_pcplus4|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[12]~30_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(12));

-- Location: LCCOMB_X20_Y23_N18
\mips_cpu|c|md|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector10~0_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(31) & (!\mips_cpu|dp|IF_ID_inst|q\(29) & !\mips_cpu|c|md|Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(31),
	datab => \mips_cpu|dp|IF_ID_inst|q\(29),
	datad => \mips_cpu|c|md|Selector8~0_combout\,
	combout => \mips_cpu|c|md|Selector10~0_combout\);

-- Location: FF_X20_Y23_N19
\mips_cpu|c|ID_EX_C_aluop|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|c|md|Selector10~0_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|c|ID_EX_C_aluop|q\(0));

-- Location: LCCOMB_X22_Y22_N24
\mips_cpu|c|ad|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|ad|Mux0~0_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(3) & (\mips_cpu|dp|IF_ID_inst|q\(5) & (!\mips_cpu|dp|IF_ID_inst|q\(4) & !\mips_cpu|dp|IF_ID_inst|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(3),
	datab => \mips_cpu|dp|IF_ID_inst|q\(5),
	datac => \mips_cpu|dp|IF_ID_inst|q\(4),
	datad => \mips_cpu|dp|IF_ID_inst|q\(1),
	combout => \mips_cpu|c|ad|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y22_N12
\mips_cpu|dp|comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|comb~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(3) & (!\mips_cpu|dp|IF_ID_inst|q\(4) & (!\mips_cpu|dp|IF_ID_inst|q\(5) & !\mips_cpu|dp|IF_ID_inst|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(3),
	datab => \mips_cpu|dp|IF_ID_inst|q\(4),
	datac => \mips_cpu|dp|IF_ID_inst|q\(5),
	datad => \mips_cpu|dp|IF_ID_inst|q\(2),
	combout => \mips_cpu|dp|comb~0_combout\);

-- Location: FF_X19_Y24_N19
\mips_cpu|dp|ID_EX_inst_1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(19),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_inst_1|q\(3));

-- Location: LCCOMB_X19_Y24_N8
\mips_cpu|dp|wrmux|y[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wrmux|y[3]~2_combout\ = (!\mips_cpu|dp|ID_EX_C_regdst|q\(0) & \mips_cpu|dp|ID_EX_inst_1|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_cpu|dp|ID_EX_C_regdst|q\(0),
	datad => \mips_cpu|dp|ID_EX_inst_1|q\(3),
	combout => \mips_cpu|dp|wrmux|y[3]~2_combout\);

-- Location: FF_X19_Y24_N9
\mips_cpu|dp|EX_MEM_wrmux|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|wrmux|y[3]~2_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_wrmux|q\(3));

-- Location: LCCOMB_X20_Y21_N26
\mips_cpu|dp|MEM_WB_fwd_1|y[8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[8]~5_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(8) & \mips_cpu|fw|ForwardA[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(8),
	datad => \mips_cpu|fw|ForwardA[1]~0_combout\,
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[8]~5_combout\);

-- Location: FF_X20_Y22_N31
\mips_cpu|dp|ID_EX_signimm|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(8),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(8));

-- Location: LCCOMB_X20_Y22_N30
\mips_cpu|dp|srcbmux|y[8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[8]~7_combout\ = (\mips_cpu|dp|srcbmux|y[12]~0_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(8)) # ((\mips_cpu|dp|EX_MEM_alu|q\(8) & \mips_cpu|dp|srcbmux|y[12]~1_combout\)))) # (!\mips_cpu|dp|srcbmux|y[12]~0_combout\ & 
-- (\mips_cpu|dp|EX_MEM_alu|q\(8) & ((\mips_cpu|dp|srcbmux|y[12]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	datab => \mips_cpu|dp|EX_MEM_alu|q\(8),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(8),
	datad => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	combout => \mips_cpu|dp|srcbmux|y[8]~7_combout\);

-- Location: LCCOMB_X21_Y21_N12
\mips_cpu|dp|alu|Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux23~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[8]~5_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\) # (\mips_cpu|dp|srcbmux|y[8]~7_combout\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[8]~5_combout\ & 
-- (\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|srcbmux|y[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[8]~5_combout\,
	datab => \mips_cpu|c|ad|Mux2~1_combout\,
	datac => \mips_cpu|dp|srcbmux|y[8]~7_combout\,
	datad => \mips_cpu|c|ad|Mux1~0_combout\,
	combout => \mips_cpu|dp|alu|Mux23~0_combout\);

-- Location: LCCOMB_X22_Y21_N0
\mips_cpu|dp|alu|b2[8]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[8]~55_combout\ = \mips_cpu|dp|srcbmux|y[8]~7_combout\ $ (((\mips_cpu|c|ID_EX_C_aluop|q\(0) & ((!\mips_cpu|c|ad|Mux0~0_combout\) # (!\mips_cpu|c|ID_EX_C_aluop|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[8]~7_combout\,
	datab => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datac => \mips_cpu|c|ad|Mux0~0_combout\,
	datad => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	combout => \mips_cpu|dp|alu|b2[8]~55_combout\);

-- Location: LCCOMB_X20_Y21_N12
\mips_cpu|dp|MEM_WB_fwd_1|y[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[7]~6_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(7),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[7]~6_combout\);

-- Location: FF_X21_Y20_N29
\mips_cpu|dp|ID_EX_signimm|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(6),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(6));

-- Location: LCCOMB_X21_Y20_N28
\mips_cpu|dp|srcbmux|y[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[6]~9_combout\ = (\mips_cpu|dp|srcbmux|y[12]~0_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(6)) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(6))))) # (!\mips_cpu|dp|srcbmux|y[12]~0_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[12]~1_combout\ & ((\mips_cpu|dp|EX_MEM_alu|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|dp|ID_EX_signimm|q\(6),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(6),
	combout => \mips_cpu|dp|srcbmux|y[6]~9_combout\);

-- Location: LCCOMB_X23_Y22_N10
\mips_cpu|dp|alu|b2[6]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[6]~57_combout\ = \mips_cpu|dp|srcbmux|y[6]~9_combout\ $ (((\mips_cpu|c|ID_EX_C_aluop|q\(0) & ((!\mips_cpu|c|ad|Mux0~0_combout\) # (!\mips_cpu|c|ID_EX_C_aluop|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	datab => \mips_cpu|dp|srcbmux|y[6]~9_combout\,
	datac => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datad => \mips_cpu|c|ad|Mux0~0_combout\,
	combout => \mips_cpu|dp|alu|b2[6]~57_combout\);

-- Location: LCCOMB_X20_Y21_N24
\mips_cpu|dp|MEM_WB_fwd_1|y[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[5]~8_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(5),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[5]~8_combout\);

-- Location: LCCOMB_X20_Y21_N2
\mips_cpu|dp|MEM_WB_fwd_1|y[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[4]~9_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(4) & \mips_cpu|fw|ForwardA[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(4),
	datad => \mips_cpu|fw|ForwardA[1]~0_combout\,
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[4]~9_combout\);

-- Location: LCCOMB_X22_Y21_N18
\mips_cpu|c|ad|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|ad|Mux0~1_combout\ = (\mips_cpu|c|ID_EX_C_aluop|q\(0) & ((!\mips_cpu|c|ad|Mux0~0_combout\) # (!\mips_cpu|c|ID_EX_C_aluop|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datac => \mips_cpu|c|ad|Mux0~0_combout\,
	datad => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	combout => \mips_cpu|c|ad|Mux0~1_combout\);

-- Location: FF_X22_Y24_N29
\mips_cpu|dp|ID_EX_signimm|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(3),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(3));

-- Location: LCCOMB_X20_Y23_N20
\mips_cpu|c|md|WideOr7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|WideOr7~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(29)) # ((\mips_cpu|dp|IF_ID_inst|q\(28) & ((\mips_cpu|dp|IF_ID_inst|q\(27)))) # (!\mips_cpu|dp|IF_ID_inst|q\(28) & (\mips_cpu|dp|IF_ID_inst|q\(26) & !\mips_cpu|dp|IF_ID_inst|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(29),
	datab => \mips_cpu|dp|IF_ID_inst|q\(28),
	datac => \mips_cpu|dp|IF_ID_inst|q\(26),
	datad => \mips_cpu|dp|IF_ID_inst|q\(27),
	combout => \mips_cpu|c|md|WideOr7~0_combout\);

-- Location: LCCOMB_X21_Y23_N26
\mips_cpu|c|md|WideOr7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|WideOr7~1_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(31)) # ((\mips_cpu|c|md|WideOr7~0_combout\) # (\mips_cpu|dp|IF_ID_inst|q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(31),
	datab => \mips_cpu|c|md|WideOr7~0_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(30),
	combout => \mips_cpu|c|md|WideOr7~1_combout\);

-- Location: FF_X21_Y23_N27
\mips_cpu|dp|ID_EX_C_alusrc|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|c|md|WideOr7~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	sclr => \mips_cpu|hd|stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_C_alusrc|q\(0));

-- Location: LCCOMB_X22_Y24_N28
\mips_cpu|dp|alu|b2[3]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[3]~60_combout\ = (\mips_cpu|dp|ID_EX_C_shiftl16|q\(0)) # ((!\mips_cpu|dp|ID_EX_C_alusrc|q\(0)) # (!\mips_cpu|dp|ID_EX_signimm|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(3),
	datad => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	combout => \mips_cpu|dp|alu|b2[3]~60_combout\);

-- Location: LCCOMB_X22_Y24_N30
\mips_cpu|dp|alu|b2[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[3]~30_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ ((((\mips_cpu|dp|EX_MEM_alu|q\(3) & \mips_cpu|dp|srcbmux|y[12]~1_combout\)) # (!\mips_cpu|dp|alu|b2[3]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux0~1_combout\,
	datab => \mips_cpu|dp|alu|b2[3]~60_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(3),
	datad => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	combout => \mips_cpu|dp|alu|b2[3]~30_combout\);

-- Location: FF_X22_Y24_N1
\mips_cpu|dp|ID_EX_signimm|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(2),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(2));

-- Location: LCCOMB_X22_Y24_N0
\mips_cpu|dp|alu|b2[2]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[2]~61_combout\ = (\mips_cpu|dp|ID_EX_C_shiftl16|q\(0)) # ((!\mips_cpu|dp|ID_EX_C_alusrc|q\(0)) # (!\mips_cpu|dp|ID_EX_signimm|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(2),
	datad => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	combout => \mips_cpu|dp|alu|b2[2]~61_combout\);

-- Location: LCCOMB_X22_Y24_N2
\mips_cpu|dp|alu|b2[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[2]~31_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ ((((\mips_cpu|dp|EX_MEM_alu|q\(2) & \mips_cpu|dp|srcbmux|y[12]~1_combout\)) # (!\mips_cpu|dp|alu|b2[2]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux0~1_combout\,
	datab => \mips_cpu|dp|EX_MEM_alu|q\(2),
	datac => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datad => \mips_cpu|dp|alu|b2[2]~61_combout\,
	combout => \mips_cpu|dp|alu|b2[2]~31_combout\);

-- Location: LCCOMB_X20_Y21_N30
\mips_cpu|dp|MEM_WB_fwd_1|y[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[2]~11_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(2) & \mips_cpu|fw|ForwardA[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(2),
	datad => \mips_cpu|fw|ForwardA[1]~0_combout\,
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[2]~11_combout\);

-- Location: FF_X22_Y22_N7
\mips_cpu|dp|ID_EX_signimm|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(1),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(1));

-- Location: LCCOMB_X22_Y22_N6
\mips_cpu|dp|alu|b2[1]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[1]~62_combout\ = (\mips_cpu|dp|ID_EX_C_shiftl16|q\(0)) # ((!\mips_cpu|dp|ID_EX_C_alusrc|q\(0)) # (!\mips_cpu|dp|ID_EX_signimm|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(1),
	datad => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	combout => \mips_cpu|dp|alu|b2[1]~62_combout\);

-- Location: LCCOMB_X22_Y22_N20
\mips_cpu|dp|MEM_WB_fwd_1|y[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[1]~12_combout\ = (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & (\mips_cpu|fw|ForwardA[1]~2_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(1),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[1]~12_combout\);

-- Location: FF_X21_Y24_N21
\mips_cpu|dp|ID_EX_signimm|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(0),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(0));

-- Location: LCCOMB_X21_Y24_N20
\mips_cpu|dp|srcbmux|y[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[0]~15_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(0) & !\mips_cpu|dp|ID_EX_C_shiftl16|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(0),
	datad => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[0]~15_combout\);

-- Location: FF_X19_Y24_N21
\mips_cpu|dp|MEM_WB_wrmux|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|EX_MEM_wrmux|q\(3),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|MEM_WB_wrmux|q\(3));

-- Location: FF_X19_Y24_N17
\mips_cpu|dp|MEM_WB_wrmux|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|EX_MEM_wrmux|q\(2),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|MEM_WB_wrmux|q\(2));

-- Location: LCCOMB_X19_Y24_N20
\mips_cpu|fw|ForwardB[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardB[0]~5_combout\ = (\mips_cpu|dp|ID_EX_inst_1|q\(3) & (\mips_cpu|dp|MEM_WB_wrmux|q\(3) & (\mips_cpu|dp|ID_EX_inst_1|q\(2) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(2))))) # (!\mips_cpu|dp|ID_EX_inst_1|q\(3) & (!\mips_cpu|dp|MEM_WB_wrmux|q\(3) & 
-- (\mips_cpu|dp|ID_EX_inst_1|q\(2) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_inst_1|q\(3),
	datab => \mips_cpu|dp|ID_EX_inst_1|q\(2),
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(3),
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	combout => \mips_cpu|fw|ForwardB[0]~5_combout\);

-- Location: LCCOMB_X20_Y21_N8
\mips_cpu|dp|MEM_WB_fwd_1|y[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[9]~4_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(9) & \mips_cpu|fw|ForwardA[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(9),
	datad => \mips_cpu|fw|ForwardA[1]~0_combout\,
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[9]~4_combout\);

-- Location: FF_X21_Y20_N19
\mips_cpu|dp|ID_EX_signimm|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(9),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(9));

-- Location: LCCOMB_X21_Y20_N18
\mips_cpu|dp|srcbmux|y[9]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[9]~6_combout\ = (\mips_cpu|dp|srcbmux|y[12]~0_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(9)) # ((\mips_cpu|dp|EX_MEM_alu|q\(9) & \mips_cpu|dp|srcbmux|y[12]~1_combout\)))) # (!\mips_cpu|dp|srcbmux|y[12]~0_combout\ & 
-- (\mips_cpu|dp|EX_MEM_alu|q\(9) & ((\mips_cpu|dp|srcbmux|y[12]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	datab => \mips_cpu|dp|EX_MEM_alu|q\(9),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(9),
	datad => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	combout => \mips_cpu|dp|srcbmux|y[9]~6_combout\);

-- Location: LCCOMB_X22_Y21_N22
\mips_cpu|dp|alu|b2[9]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[9]~54_combout\ = \mips_cpu|dp|srcbmux|y[9]~6_combout\ $ (((\mips_cpu|c|ID_EX_C_aluop|q\(0) & ((!\mips_cpu|c|ad|Mux0~0_combout\) # (!\mips_cpu|c|ID_EX_C_aluop|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	datab => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datac => \mips_cpu|c|ad|Mux0~0_combout\,
	datad => \mips_cpu|dp|srcbmux|y[9]~6_combout\,
	combout => \mips_cpu|dp|alu|b2[9]~54_combout\);

-- Location: LCCOMB_X23_Y21_N2
\mips_cpu|dp|alu|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~18_combout\ = (\mips_cpu|dp|alu|b2[8]~55_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[8]~5_combout\ & (\mips_cpu|dp|alu|Add0~17\ & VCC)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[8]~5_combout\ & (!\mips_cpu|dp|alu|Add0~17\)))) # 
-- (!\mips_cpu|dp|alu|b2[8]~55_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[8]~5_combout\ & (!\mips_cpu|dp|alu|Add0~17\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[8]~5_combout\ & ((\mips_cpu|dp|alu|Add0~17\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~19\ = CARRY((\mips_cpu|dp|alu|b2[8]~55_combout\ & (!\mips_cpu|dp|MEM_WB_fwd_1|y[8]~5_combout\ & !\mips_cpu|dp|alu|Add0~17\)) # (!\mips_cpu|dp|alu|b2[8]~55_combout\ & ((!\mips_cpu|dp|alu|Add0~17\) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[8]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[8]~55_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[8]~5_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~17\,
	combout => \mips_cpu|dp|alu|Add0~18_combout\,
	cout => \mips_cpu|dp|alu|Add0~19\);

-- Location: LCCOMB_X23_Y21_N4
\mips_cpu|dp|alu|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~20_combout\ = ((\mips_cpu|dp|MEM_WB_fwd_1|y[9]~4_combout\ $ (\mips_cpu|dp|alu|b2[9]~54_combout\ $ (!\mips_cpu|dp|alu|Add0~19\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~21\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[9]~4_combout\ & ((\mips_cpu|dp|alu|b2[9]~54_combout\) # (!\mips_cpu|dp|alu|Add0~19\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[9]~4_combout\ & (\mips_cpu|dp|alu|b2[9]~54_combout\ & 
-- !\mips_cpu|dp|alu|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[9]~4_combout\,
	datab => \mips_cpu|dp|alu|b2[9]~54_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~19\,
	combout => \mips_cpu|dp|alu|Add0~20_combout\,
	cout => \mips_cpu|dp|alu|Add0~21\);

-- Location: LCCOMB_X21_Y21_N26
\mips_cpu|dp|alu|Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux22~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[9]~4_combout\ & ((\mips_cpu|dp|srcbmux|y[9]~6_combout\) # (\mips_cpu|c|ad|Mux2~1_combout\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[9]~4_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[9]~6_combout\ & \mips_cpu|c|ad|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[9]~4_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|srcbmux|y[9]~6_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Mux22~0_combout\);

-- Location: LCCOMB_X21_Y21_N4
\mips_cpu|dp|alu|Mux22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux22~1_combout\ = (\mips_cpu|dp|alu|Mux22~0_combout\) # ((\mips_cpu|dp|alu|Add0~20_combout\ & (\mips_cpu|c|ad|Mux1~0_combout\ & !\mips_cpu|c|ad|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~20_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|alu|Mux22~0_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Mux22~1_combout\);

-- Location: FF_X21_Y21_N5
\mips_cpu|dp|EX_MEM_alu|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux22~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(9));

-- Location: LCCOMB_X20_Y21_N22
\mips_cpu|dp|MEM_WB_fwd_1|y[10]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[10]~3_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(10),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[10]~3_combout\);

-- Location: FF_X21_Y20_N1
\mips_cpu|dp|ID_EX_signimm|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(10),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(10));

-- Location: LCCOMB_X21_Y20_N0
\mips_cpu|dp|srcbmux|y[10]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[10]~5_combout\ = (\mips_cpu|dp|srcbmux|y[12]~0_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(10)) # ((\mips_cpu|dp|EX_MEM_alu|q\(10) & \mips_cpu|dp|srcbmux|y[12]~1_combout\)))) # (!\mips_cpu|dp|srcbmux|y[12]~0_combout\ & 
-- (\mips_cpu|dp|EX_MEM_alu|q\(10) & ((\mips_cpu|dp|srcbmux|y[12]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	datab => \mips_cpu|dp|EX_MEM_alu|q\(10),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(10),
	datad => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	combout => \mips_cpu|dp|srcbmux|y[10]~5_combout\);

-- Location: LCCOMB_X21_Y21_N14
\mips_cpu|dp|alu|Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux21~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[10]~3_combout\) # (\mips_cpu|dp|srcbmux|y[10]~5_combout\))) # (!\mips_cpu|c|ad|Mux2~1_combout\ & 
-- (\mips_cpu|dp|MEM_WB_fwd_1|y[10]~3_combout\ & \mips_cpu|dp|srcbmux|y[10]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[10]~3_combout\,
	datac => \mips_cpu|dp|srcbmux|y[10]~5_combout\,
	datad => \mips_cpu|c|ad|Mux1~0_combout\,
	combout => \mips_cpu|dp|alu|Mux21~0_combout\);

-- Location: LCCOMB_X22_Y21_N12
\mips_cpu|dp|alu|b2[10]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[10]~53_combout\ = \mips_cpu|dp|srcbmux|y[10]~5_combout\ $ (((\mips_cpu|c|ID_EX_C_aluop|q\(0) & ((!\mips_cpu|c|ad|Mux0~0_combout\) # (!\mips_cpu|c|ID_EX_C_aluop|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[10]~5_combout\,
	datab => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datac => \mips_cpu|c|ad|Mux0~0_combout\,
	datad => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	combout => \mips_cpu|dp|alu|b2[10]~53_combout\);

-- Location: LCCOMB_X23_Y21_N6
\mips_cpu|dp|alu|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~22_combout\ = (\mips_cpu|dp|MEM_WB_fwd_1|y[10]~3_combout\ & ((\mips_cpu|dp|alu|b2[10]~53_combout\ & (\mips_cpu|dp|alu|Add0~21\ & VCC)) # (!\mips_cpu|dp|alu|b2[10]~53_combout\ & (!\mips_cpu|dp|alu|Add0~21\)))) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[10]~3_combout\ & ((\mips_cpu|dp|alu|b2[10]~53_combout\ & (!\mips_cpu|dp|alu|Add0~21\)) # (!\mips_cpu|dp|alu|b2[10]~53_combout\ & ((\mips_cpu|dp|alu|Add0~21\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~23\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[10]~3_combout\ & (!\mips_cpu|dp|alu|b2[10]~53_combout\ & !\mips_cpu|dp|alu|Add0~21\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[10]~3_combout\ & ((!\mips_cpu|dp|alu|Add0~21\) # 
-- (!\mips_cpu|dp|alu|b2[10]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[10]~3_combout\,
	datab => \mips_cpu|dp|alu|b2[10]~53_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~21\,
	combout => \mips_cpu|dp|alu|Add0~22_combout\,
	cout => \mips_cpu|dp|alu|Add0~23\);

-- Location: LCCOMB_X21_Y21_N16
\mips_cpu|dp|alu|Mux21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux21~1_combout\ = (\mips_cpu|dp|alu|Mux21~0_combout\) # ((\mips_cpu|c|ad|Mux1~0_combout\ & (\mips_cpu|dp|alu|Add0~22_combout\ & !\mips_cpu|c|ad|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux21~0_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|alu|Add0~22_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Mux21~1_combout\);

-- Location: FF_X21_Y21_N17
\mips_cpu|dp|EX_MEM_alu|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux21~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(10));

-- Location: M9K_X13_Y19_N0
\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a12\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C3010300300C3003030C00C30C000CC013110",
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
	portbwe => \mips_cpu|dp|EX_MEM_C_memwrite|q\(0),
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

-- Location: LCCOMB_X21_Y23_N14
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

-- Location: FF_X21_Y23_N15
\mips_cpu|dp|IF_ID_inst|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[12]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(12));

-- Location: FF_X21_Y20_N21
\mips_cpu|dp|ID_EX_signimm|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(12),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(12));

-- Location: LCCOMB_X21_Y20_N20
\mips_cpu|dp|srcbmux|y[12]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[12]~3_combout\ = (\mips_cpu|dp|srcbmux|y[12]~0_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(12)) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(12))))) # (!\mips_cpu|dp|srcbmux|y[12]~0_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[12]~1_combout\ & ((\mips_cpu|dp|EX_MEM_alu|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|dp|ID_EX_signimm|q\(12),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(12),
	combout => \mips_cpu|dp|srcbmux|y[12]~3_combout\);

-- Location: LCCOMB_X20_Y21_N10
\mips_cpu|dp|MEM_WB_fwd_1|y[12]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[12]~1_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(12),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[12]~1_combout\);

-- Location: LCCOMB_X22_Y21_N2
\mips_cpu|dp|alu|Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux19~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|srcbmux|y[12]~3_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[12]~1_combout\) # (\mips_cpu|c|ad|Mux2~1_combout\))) # (!\mips_cpu|dp|srcbmux|y[12]~3_combout\ & 
-- (\mips_cpu|dp|MEM_WB_fwd_1|y[12]~1_combout\ & \mips_cpu|c|ad|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~3_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[12]~1_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|c|ad|Mux1~0_combout\,
	combout => \mips_cpu|dp|alu|Mux19~0_combout\);

-- Location: LCCOMB_X22_Y21_N24
\mips_cpu|dp|alu|b2[12]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[12]~51_combout\ = \mips_cpu|dp|srcbmux|y[12]~3_combout\ $ (((\mips_cpu|c|ID_EX_C_aluop|q\(0) & ((!\mips_cpu|c|ad|Mux0~0_combout\) # (!\mips_cpu|c|ID_EX_C_aluop|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	datab => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datac => \mips_cpu|c|ad|Mux0~0_combout\,
	datad => \mips_cpu|dp|srcbmux|y[12]~3_combout\,
	combout => \mips_cpu|dp|alu|b2[12]~51_combout\);

-- Location: LCCOMB_X20_Y21_N4
\mips_cpu|dp|MEM_WB_fwd_1|y[11]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[11]~2_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(11) & \mips_cpu|fw|ForwardA[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(11),
	datad => \mips_cpu|fw|ForwardA[1]~0_combout\,
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[11]~2_combout\);

-- Location: LCCOMB_X23_Y21_N8
\mips_cpu|dp|alu|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~24_combout\ = ((\mips_cpu|dp|alu|b2[11]~52_combout\ $ (\mips_cpu|dp|MEM_WB_fwd_1|y[11]~2_combout\ $ (!\mips_cpu|dp|alu|Add0~23\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~25\ = CARRY((\mips_cpu|dp|alu|b2[11]~52_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[11]~2_combout\) # (!\mips_cpu|dp|alu|Add0~23\))) # (!\mips_cpu|dp|alu|b2[11]~52_combout\ & (\mips_cpu|dp|MEM_WB_fwd_1|y[11]~2_combout\ & 
-- !\mips_cpu|dp|alu|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[11]~52_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[11]~2_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~23\,
	combout => \mips_cpu|dp|alu|Add0~24_combout\,
	cout => \mips_cpu|dp|alu|Add0~25\);

-- Location: LCCOMB_X23_Y21_N10
\mips_cpu|dp|alu|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~26_combout\ = (\mips_cpu|dp|MEM_WB_fwd_1|y[12]~1_combout\ & ((\mips_cpu|dp|alu|b2[12]~51_combout\ & (\mips_cpu|dp|alu|Add0~25\ & VCC)) # (!\mips_cpu|dp|alu|b2[12]~51_combout\ & (!\mips_cpu|dp|alu|Add0~25\)))) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[12]~1_combout\ & ((\mips_cpu|dp|alu|b2[12]~51_combout\ & (!\mips_cpu|dp|alu|Add0~25\)) # (!\mips_cpu|dp|alu|b2[12]~51_combout\ & ((\mips_cpu|dp|alu|Add0~25\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~27\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[12]~1_combout\ & (!\mips_cpu|dp|alu|b2[12]~51_combout\ & !\mips_cpu|dp|alu|Add0~25\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[12]~1_combout\ & ((!\mips_cpu|dp|alu|Add0~25\) # 
-- (!\mips_cpu|dp|alu|b2[12]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[12]~1_combout\,
	datab => \mips_cpu|dp|alu|b2[12]~51_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~25\,
	combout => \mips_cpu|dp|alu|Add0~26_combout\,
	cout => \mips_cpu|dp|alu|Add0~27\);

-- Location: LCCOMB_X24_Y21_N14
\mips_cpu|dp|alu|Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux19~1_combout\ = (\mips_cpu|dp|alu|Mux19~0_combout\) # ((\mips_cpu|dp|alu|Add0~26_combout\ & (!\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|c|ad|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux19~0_combout\,
	datab => \mips_cpu|dp|alu|Add0~26_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|c|ad|Mux1~0_combout\,
	combout => \mips_cpu|dp|alu|Mux19~1_combout\);

-- Location: FF_X24_Y21_N15
\mips_cpu|dp|EX_MEM_alu|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux19~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(12));

-- Location: M9K_X13_Y22_N0
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
	portbwe => \mips_cpu|dp|EX_MEM_C_memwrite|q\(0),
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

-- Location: LCCOMB_X21_Y23_N8
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

-- Location: FF_X21_Y23_N9
\mips_cpu|dp|IF_ID_inst|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[11]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(11));

-- Location: FF_X21_Y20_N23
\mips_cpu|dp|ID_EX_inst_2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(11),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_inst_2|q\(0));

-- Location: LCCOMB_X21_Y20_N22
\mips_cpu|dp|srcbmux|y[11]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[11]~4_combout\ = (\mips_cpu|dp|EX_MEM_alu|q\(11) & ((\mips_cpu|dp|srcbmux|y[12]~1_combout\) # ((\mips_cpu|dp|ID_EX_inst_2|q\(0) & \mips_cpu|dp|srcbmux|y[12]~0_combout\)))) # (!\mips_cpu|dp|EX_MEM_alu|q\(11) & 
-- (((\mips_cpu|dp|ID_EX_inst_2|q\(0) & \mips_cpu|dp|srcbmux|y[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(11),
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|dp|ID_EX_inst_2|q\(0),
	datad => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	combout => \mips_cpu|dp|srcbmux|y[11]~4_combout\);

-- Location: LCCOMB_X22_Y21_N10
\mips_cpu|dp|alu|b2[11]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[11]~52_combout\ = \mips_cpu|dp|srcbmux|y[11]~4_combout\ $ (((\mips_cpu|c|ID_EX_C_aluop|q\(0) & ((!\mips_cpu|c|ad|Mux0~0_combout\) # (!\mips_cpu|c|ID_EX_C_aluop|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	datab => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datac => \mips_cpu|c|ad|Mux0~0_combout\,
	datad => \mips_cpu|dp|srcbmux|y[11]~4_combout\,
	combout => \mips_cpu|dp|alu|b2[11]~52_combout\);

-- Location: LCCOMB_X22_Y21_N28
\mips_cpu|dp|alu|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux20~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[11]~2_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\) # (\mips_cpu|dp|srcbmux|y[11]~4_combout\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[11]~2_combout\ & 
-- (\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|srcbmux|y[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[11]~2_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|srcbmux|y[11]~4_combout\,
	combout => \mips_cpu|dp|alu|Mux20~0_combout\);

-- Location: LCCOMB_X24_Y21_N26
\mips_cpu|dp|alu|Mux20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux20~1_combout\ = (\mips_cpu|dp|alu|Mux20~0_combout\) # ((\mips_cpu|dp|alu|Add0~24_combout\ & (\mips_cpu|c|ad|Mux1~0_combout\ & !\mips_cpu|c|ad|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~24_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|alu|Mux20~0_combout\,
	combout => \mips_cpu|dp|alu|Mux20~1_combout\);

-- Location: FF_X24_Y21_N27
\mips_cpu|dp|EX_MEM_alu|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux20~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(11));

-- Location: M9K_X13_Y21_N0
\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000666AA660A66A66AA66A6A6A66AA6AAA0AB160660",
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
	port_a_first_bit_number => 20,
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
	port_b_first_bit_number => 20,
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
	portbwe => \mips_cpu|dp|EX_MEM_C_memwrite|q\(0),
	portbre => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	ena1 => \Decoder|Equal0~5_combout\,
	portadatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portbdatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\,
	portaaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: FF_X20_Y24_N23
\mips_cpu|dp|IF_ID_inst|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(20),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(20));

-- Location: FF_X20_Y24_N29
\mips_cpu|dp|ID_EX_inst_1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(20),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_inst_1|q\(4));

-- Location: LCCOMB_X20_Y24_N14
\mips_cpu|dp|wrmux|y[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wrmux|y[4]~4_combout\ = (\mips_cpu|dp|ID_EX_inst_1|q\(4) & !\mips_cpu|dp|ID_EX_C_regdst|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|ID_EX_inst_1|q\(4),
	datad => \mips_cpu|dp|ID_EX_C_regdst|q\(0),
	combout => \mips_cpu|dp|wrmux|y[4]~4_combout\);

-- Location: FF_X20_Y24_N15
\mips_cpu|dp|EX_MEM_wrmux|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|wrmux|y[4]~4_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_wrmux|q\(4));

-- Location: FF_X20_Y24_N5
\mips_cpu|dp|MEM_WB_wrmux|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|EX_MEM_wrmux|q\(4),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|MEM_WB_wrmux|q\(4));

-- Location: FF_X19_Y24_N25
\mips_cpu|dp|MEM_WB_C_regwrite|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|EX_MEM_C_regwrite|q\(0),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|MEM_WB_C_regwrite|q\(0));

-- Location: LCCOMB_X19_Y24_N24
\mips_cpu|fw|ForwardB[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardB[0]~6_combout\ = (\mips_cpu|fw|ForwardB[0]~5_combout\ & (\mips_cpu|dp|MEM_WB_C_regwrite|q\(0) & (\mips_cpu|dp|MEM_WB_wrmux|q\(4) $ (!\mips_cpu|dp|ID_EX_inst_1|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardB[0]~5_combout\,
	datab => \mips_cpu|dp|MEM_WB_wrmux|q\(4),
	datac => \mips_cpu|dp|MEM_WB_C_regwrite|q\(0),
	datad => \mips_cpu|dp|ID_EX_inst_1|q\(4),
	combout => \mips_cpu|fw|ForwardB[0]~6_combout\);

-- Location: LCCOMB_X21_Y23_N20
\mips_cpu|dp|wrmux|y[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wrmux|y[1]~0_combout\ = (\mips_cpu|dp|ID_EX_inst_1|q\(1) & !\mips_cpu|dp|ID_EX_C_regdst|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_inst_1|q\(1),
	datad => \mips_cpu|dp|ID_EX_C_regdst|q\(0),
	combout => \mips_cpu|dp|wrmux|y[1]~0_combout\);

-- Location: FF_X21_Y23_N21
\mips_cpu|dp|EX_MEM_wrmux|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|wrmux|y[1]~0_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_wrmux|q\(1));

-- Location: FF_X20_Y25_N13
\mips_cpu|dp|MEM_WB_wrmux|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|EX_MEM_wrmux|q\(1),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|MEM_WB_wrmux|q\(1));

-- Location: M9K_X25_Y21_N0
\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030113230000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002854CA820A84A84CB84B8B5C85CB8C86486423664",
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
	port_a_first_bit_number => 4,
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
	port_b_first_bit_number => 4,
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
	portbwe => \mips_cpu|dp|EX_MEM_C_memwrite|q\(0),
	portbre => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	ena1 => \Decoder|Equal0~5_combout\,
	portadatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portbdatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\,
	portaaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: FF_X17_Y24_N1
\mips_cpu|dp|IF_ID_inst|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(16),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(16));

-- Location: FF_X21_Y24_N19
\mips_cpu|dp|ID_EX_inst_1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(16),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_inst_1|q\(0));

-- Location: FF_X21_Y24_N1
\mips_cpu|dp|MEM_WB_wrmux|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|EX_MEM_wrmux|q\(0),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|MEM_WB_wrmux|q\(0));

-- Location: LCCOMB_X21_Y24_N0
\mips_cpu|fw|ForwardB[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardB[0]~3_combout\ = (\mips_cpu|dp|MEM_WB_wrmux|q\(1) & (\mips_cpu|dp|ID_EX_inst_1|q\(1) & (\mips_cpu|dp|ID_EX_inst_1|q\(0) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(0))))) # (!\mips_cpu|dp|MEM_WB_wrmux|q\(1) & (!\mips_cpu|dp|ID_EX_inst_1|q\(1) & 
-- (\mips_cpu|dp|ID_EX_inst_1|q\(0) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(1),
	datab => \mips_cpu|dp|ID_EX_inst_1|q\(0),
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(0),
	datad => \mips_cpu|dp|ID_EX_inst_1|q\(1),
	combout => \mips_cpu|fw|ForwardB[0]~3_combout\);

-- Location: LCCOMB_X20_Y24_N28
\mips_cpu|fw|ForwardB[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardB[1]~2_combout\ = (\mips_cpu|dp|EX_MEM_C_regwrite|q\(0) & (\mips_cpu|dp|ID_EX_inst_1|q\(4) $ (!\mips_cpu|dp|EX_MEM_wrmux|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|EX_MEM_C_regwrite|q\(0),
	datac => \mips_cpu|dp|ID_EX_inst_1|q\(4),
	datad => \mips_cpu|dp|EX_MEM_wrmux|q\(4),
	combout => \mips_cpu|fw|ForwardB[1]~2_combout\);

-- Location: LCCOMB_X19_Y24_N2
\mips_cpu|fw|ForwardB[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardB[1]~1_combout\ = (\mips_cpu|dp|EX_MEM_wrmux|q\(2) & (\mips_cpu|dp|ID_EX_inst_1|q\(2) & (\mips_cpu|dp|EX_MEM_wrmux|q\(3) $ (!\mips_cpu|dp|ID_EX_inst_1|q\(3))))) # (!\mips_cpu|dp|EX_MEM_wrmux|q\(2) & (!\mips_cpu|dp|ID_EX_inst_1|q\(2) & 
-- (\mips_cpu|dp|EX_MEM_wrmux|q\(3) $ (!\mips_cpu|dp|ID_EX_inst_1|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_wrmux|q\(2),
	datab => \mips_cpu|dp|EX_MEM_wrmux|q\(3),
	datac => \mips_cpu|dp|ID_EX_inst_1|q\(2),
	datad => \mips_cpu|dp|ID_EX_inst_1|q\(3),
	combout => \mips_cpu|fw|ForwardB[1]~1_combout\);

-- Location: LCCOMB_X21_Y24_N14
\mips_cpu|fw|ForwardB[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardB[0]~4_combout\ = (\mips_cpu|fw|ForwardB[0]~3_combout\ & (((!\mips_cpu|fw|ForwardB[1]~0_combout\) # (!\mips_cpu|fw|ForwardB[1]~1_combout\)) # (!\mips_cpu|fw|ForwardB[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardB[0]~3_combout\,
	datab => \mips_cpu|fw|ForwardB[1]~2_combout\,
	datac => \mips_cpu|fw|ForwardB[1]~1_combout\,
	datad => \mips_cpu|fw|ForwardB[1]~0_combout\,
	combout => \mips_cpu|fw|ForwardB[0]~4_combout\);

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
	portbwe => \mips_cpu|dp|EX_MEM_C_memwrite|q\(0),
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

-- Location: LCCOMB_X21_Y23_N4
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

-- Location: FF_X21_Y23_N5
\mips_cpu|dp|IF_ID_inst|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[15]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(15));

-- Location: FF_X21_Y20_N9
\mips_cpu|dp|ID_EX_signimm|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(15),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(15));

-- Location: LCCOMB_X21_Y20_N26
\mips_cpu|dp|srcbmux|y[31]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[31]~24_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(15)))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datab => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(15),
	datad => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[31]~24_combout\);

-- Location: LCCOMB_X22_Y20_N24
\mips_cpu|dp|srcbmux|y[31]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[31]~25_combout\ = (\mips_cpu|dp|srcbmux|y[31]~24_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|dp|srcbmux|y[31]~24_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(31),
	combout => \mips_cpu|dp|srcbmux|y[31]~25_combout\);

-- Location: LCCOMB_X22_Y20_N4
\mips_cpu|dp|alu|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux0~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[31]~19_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\) # (\mips_cpu|dp|srcbmux|y[31]~25_combout\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[31]~19_combout\ & 
-- (\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|srcbmux|y[31]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[31]~19_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|srcbmux|y[31]~25_combout\,
	combout => \mips_cpu|dp|alu|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y24_N8
\mips_cpu|dp|alu|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux0~1_combout\ = (\mips_cpu|dp|alu|Mux0~0_combout\) # ((\mips_cpu|c|ad|Mux1~0_combout\ & (\mips_cpu|dp|alu|Add0~64_combout\ & !\mips_cpu|c|ad|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux0~0_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|alu|Add0~64_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Mux0~1_combout\);

-- Location: FF_X24_Y24_N9
\mips_cpu|dp|EX_MEM_alu|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux0~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(31));

-- Location: LCCOMB_X22_Y20_N10
\mips_cpu|dp|MEM_WB_fwd_1|y[31]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[31]~19_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(31),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[31]~19_combout\);

-- Location: LCCOMB_X22_Y20_N14
\mips_cpu|dp|alu|b2[31]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[31]~36_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[31]~24_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datab => \mips_cpu|c|ad|Mux0~1_combout\,
	datac => \mips_cpu|dp|srcbmux|y[31]~24_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(31),
	combout => \mips_cpu|dp|alu|b2[31]~36_combout\);

-- Location: LCCOMB_X21_Y23_N30
\mips_cpu|dp|IF_ID_inst|q[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[14]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(14),
	combout => \mips_cpu|dp|IF_ID_inst|q[14]~feeder_combout\);

-- Location: FF_X21_Y23_N31
\mips_cpu|dp|IF_ID_inst|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[14]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(14));

-- Location: FF_X22_Y22_N27
\mips_cpu|dp|ID_EX_signimm|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(14),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(14));

-- Location: LCCOMB_X22_Y22_N16
\mips_cpu|dp|srcbmux|y[30]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[30]~26_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(14)))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datab => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(14),
	combout => \mips_cpu|dp|srcbmux|y[30]~26_combout\);

-- Location: FF_X23_Y20_N27
\mips_cpu|dp|EX_MEM_alu|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux1~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(30));

-- Location: LCCOMB_X22_Y20_N16
\mips_cpu|dp|alu|b2[30]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[30]~37_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[30]~26_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[30]~26_combout\,
	datab => \mips_cpu|c|ad|Mux0~1_combout\,
	datac => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(30),
	combout => \mips_cpu|dp|alu|b2[30]~37_combout\);

-- Location: LCCOMB_X20_Y21_N14
\mips_cpu|dp|MEM_WB_fwd_1|y[30]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[30]~20_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(30),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[30]~20_combout\);

-- Location: LCCOMB_X21_Y23_N28
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

-- Location: FF_X21_Y23_N29
\mips_cpu|dp|IF_ID_inst|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[13]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(13));

-- Location: FF_X21_Y20_N25
\mips_cpu|dp|ID_EX_signimm|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(13),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(13));

-- Location: LCCOMB_X21_Y20_N4
\mips_cpu|dp|srcbmux|y[29]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[29]~27_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(13)))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(13),
	datac => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datad => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[29]~27_combout\);

-- Location: LCCOMB_X23_Y23_N16
\mips_cpu|dp|srcbmux|y[29]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[29]~40_combout\ = (\mips_cpu|dp|srcbmux|y[29]~27_combout\) # ((\mips_cpu|dp|EX_MEM_alu|q\(29) & \mips_cpu|dp|srcbmux|y[12]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|srcbmux|y[29]~27_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(29),
	datad => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	combout => \mips_cpu|dp|srcbmux|y[29]~40_combout\);

-- Location: LCCOMB_X23_Y23_N26
\mips_cpu|dp|alu|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux2~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\ & ((\mips_cpu|dp|srcbmux|y[29]~40_combout\) # (\mips_cpu|dp|MEM_WB_fwd_1|y[29]~21_combout\))) # (!\mips_cpu|c|ad|Mux2~1_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[29]~40_combout\ & \mips_cpu|dp|MEM_WB_fwd_1|y[29]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|dp|srcbmux|y[29]~40_combout\,
	datac => \mips_cpu|c|ad|Mux1~0_combout\,
	datad => \mips_cpu|dp|MEM_WB_fwd_1|y[29]~21_combout\,
	combout => \mips_cpu|dp|alu|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y23_N2
\mips_cpu|dp|alu|b2[29]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[29]~38_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[29]~27_combout\) # ((\mips_cpu|dp|EX_MEM_alu|q\(29) & \mips_cpu|dp|srcbmux|y[12]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(29),
	datab => \mips_cpu|c|ad|Mux0~1_combout\,
	datac => \mips_cpu|dp|srcbmux|y[29]~27_combout\,
	datad => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	combout => \mips_cpu|dp|alu|b2[29]~38_combout\);

-- Location: LCCOMB_X21_Y20_N30
\mips_cpu|dp|srcbmux|y[28]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[28]~28_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(12))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(12),
	datab => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datad => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[28]~28_combout\);

-- Location: LCCOMB_X22_Y20_N0
\mips_cpu|dp|srcbmux|y[28]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[28]~41_combout\ = (\mips_cpu|dp|srcbmux|y[28]~28_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datab => \mips_cpu|dp|srcbmux|y[28]~28_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(28),
	combout => \mips_cpu|dp|srcbmux|y[28]~41_combout\);

-- Location: LCCOMB_X22_Y20_N26
\mips_cpu|dp|alu|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux3~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[28]~22_combout\) # (\mips_cpu|dp|srcbmux|y[28]~41_combout\))) # (!\mips_cpu|c|ad|Mux2~1_combout\ & 
-- (\mips_cpu|dp|MEM_WB_fwd_1|y[28]~22_combout\ & \mips_cpu|dp|srcbmux|y[28]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[28]~22_combout\,
	datac => \mips_cpu|c|ad|Mux1~0_combout\,
	datad => \mips_cpu|dp|srcbmux|y[28]~41_combout\,
	combout => \mips_cpu|dp|alu|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y20_N18
\mips_cpu|dp|alu|b2[28]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[28]~39_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[28]~28_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datab => \mips_cpu|dp|srcbmux|y[28]~28_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(28),
	datad => \mips_cpu|c|ad|Mux0~1_combout\,
	combout => \mips_cpu|dp|alu|b2[28]~39_combout\);

-- Location: LCCOMB_X21_Y20_N16
\mips_cpu|dp|srcbmux|y[27]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[27]~29_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_inst_2|q\(0)))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datab => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datac => \mips_cpu|dp|ID_EX_inst_2|q\(0),
	datad => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[27]~29_combout\);

-- Location: LCCOMB_X22_Y20_N30
\mips_cpu|dp|MEM_WB_fwd_1|y[27]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[27]~23_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(27),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[27]~23_combout\);

-- Location: LCCOMB_X23_Y23_N12
\mips_cpu|dp|srcbmux|y[27]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[27]~42_combout\ = (\mips_cpu|dp|srcbmux|y[27]~29_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[27]~29_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(27),
	combout => \mips_cpu|dp|srcbmux|y[27]~42_combout\);

-- Location: LCCOMB_X23_Y23_N30
\mips_cpu|dp|alu|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux4~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[27]~23_combout\) # (\mips_cpu|dp|srcbmux|y[27]~42_combout\))) # (!\mips_cpu|c|ad|Mux2~1_combout\ & 
-- (\mips_cpu|dp|MEM_WB_fwd_1|y[27]~23_combout\ & \mips_cpu|dp|srcbmux|y[27]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[27]~23_combout\,
	datac => \mips_cpu|c|ad|Mux1~0_combout\,
	datad => \mips_cpu|dp|srcbmux|y[27]~42_combout\,
	combout => \mips_cpu|dp|alu|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y20_N2
\mips_cpu|dp|srcbmux|y[26]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[26]~30_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(10)))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(10),
	datac => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datad => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[26]~30_combout\);

-- Location: LCCOMB_X23_Y23_N8
\mips_cpu|dp|srcbmux|y[26]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[26]~43_combout\ = (\mips_cpu|dp|srcbmux|y[26]~30_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[26]~30_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(26),
	combout => \mips_cpu|dp|srcbmux|y[26]~43_combout\);

-- Location: LCCOMB_X23_Y23_N18
\mips_cpu|dp|alu|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux5~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[26]~24_combout\ & ((\mips_cpu|dp|srcbmux|y[26]~43_combout\) # (\mips_cpu|c|ad|Mux2~1_combout\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[26]~24_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[26]~43_combout\ & \mips_cpu|c|ad|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[26]~24_combout\,
	datab => \mips_cpu|dp|srcbmux|y[26]~43_combout\,
	datac => \mips_cpu|c|ad|Mux1~0_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y23_N14
\mips_cpu|dp|alu|b2[26]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[26]~41_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[26]~30_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[26]~30_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|c|ad|Mux0~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(26),
	combout => \mips_cpu|dp|alu|b2[26]~41_combout\);

-- Location: LCCOMB_X21_Y20_N12
\mips_cpu|dp|srcbmux|y[25]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[25]~31_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(9)))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(9),
	datac => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datad => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[25]~31_combout\);

-- Location: LCCOMB_X24_Y20_N26
\mips_cpu|dp|alu|b2[25]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[25]~42_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[25]~31_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[25]~31_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|c|ad|Mux0~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(25),
	combout => \mips_cpu|dp|alu|b2[25]~42_combout\);

-- Location: LCCOMB_X21_Y21_N8
\mips_cpu|dp|srcbmux|y[24]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[24]~32_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(8)))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datac => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(8),
	combout => \mips_cpu|dp|srcbmux|y[24]~32_combout\);

-- Location: LCCOMB_X21_Y21_N18
\mips_cpu|dp|alu|b2[24]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[24]~43_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[24]~32_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux0~1_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|dp|srcbmux|y[24]~32_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(24),
	combout => \mips_cpu|dp|alu|b2[24]~43_combout\);

-- Location: FF_X22_Y24_N17
\mips_cpu|dp|ID_EX_signimm|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(7),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(7));

-- Location: LCCOMB_X22_Y24_N12
\mips_cpu|dp|srcbmux|y[23]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[23]~33_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(7)))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(7),
	datac => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datad => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[23]~33_combout\);

-- Location: LCCOMB_X22_Y20_N12
\mips_cpu|dp|MEM_WB_fwd_1|y[23]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[23]~27_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(23),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[23]~27_combout\);

-- Location: LCCOMB_X22_Y20_N28
\mips_cpu|dp|srcbmux|y[23]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[23]~46_combout\ = (\mips_cpu|dp|srcbmux|y[23]~33_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[23]~33_combout\,
	datac => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(23),
	combout => \mips_cpu|dp|srcbmux|y[23]~46_combout\);

-- Location: LCCOMB_X22_Y20_N22
\mips_cpu|dp|alu|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux8~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[23]~27_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\) # (\mips_cpu|dp|srcbmux|y[23]~46_combout\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[23]~27_combout\ & 
-- (\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|srcbmux|y[23]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[23]~27_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|srcbmux|y[23]~46_combout\,
	combout => \mips_cpu|dp|alu|Mux8~0_combout\);

-- Location: LCCOMB_X21_Y20_N14
\mips_cpu|dp|srcbmux|y[22]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[22]~34_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(6)))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(6),
	datac => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datad => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[22]~34_combout\);

-- Location: LCCOMB_X24_Y20_N24
\mips_cpu|dp|alu|b2[22]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[22]~45_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[22]~34_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[22]~34_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|c|ad|Mux0~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(22),
	combout => \mips_cpu|dp|alu|b2[22]~45_combout\);

-- Location: FF_X22_Y24_N19
\mips_cpu|dp|ID_EX_signimm|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(5),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(5));

-- Location: LCCOMB_X22_Y24_N6
\mips_cpu|dp|srcbmux|y[21]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[21]~35_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(5)))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(5),
	datac => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datad => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[21]~35_combout\);

-- Location: LCCOMB_X22_Y24_N24
\mips_cpu|dp|srcbmux|y[21]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[21]~48_combout\ = (\mips_cpu|dp|srcbmux|y[21]~35_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[21]~35_combout\,
	datac => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(21),
	combout => \mips_cpu|dp|srcbmux|y[21]~48_combout\);

-- Location: LCCOMB_X22_Y24_N10
\mips_cpu|dp|alu|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux10~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[21]~29_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\) # (\mips_cpu|dp|srcbmux|y[21]~48_combout\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[21]~29_combout\ & 
-- (\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|srcbmux|y[21]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[21]~29_combout\,
	datab => \mips_cpu|c|ad|Mux2~1_combout\,
	datac => \mips_cpu|c|ad|Mux1~0_combout\,
	datad => \mips_cpu|dp|srcbmux|y[21]~48_combout\,
	combout => \mips_cpu|dp|alu|Mux10~0_combout\);

-- Location: LCCOMB_X22_Y24_N8
\mips_cpu|dp|alu|b2[21]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[21]~46_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[21]~35_combout\) # ((\mips_cpu|dp|EX_MEM_alu|q\(21) & \mips_cpu|dp|srcbmux|y[12]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux0~1_combout\,
	datab => \mips_cpu|dp|EX_MEM_alu|q\(21),
	datac => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datad => \mips_cpu|dp|srcbmux|y[21]~35_combout\,
	combout => \mips_cpu|dp|alu|b2[21]~46_combout\);

-- Location: FF_X22_Y22_N19
\mips_cpu|dp|ID_EX_signimm|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(4),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(4));

-- Location: LCCOMB_X22_Y22_N4
\mips_cpu|dp|srcbmux|y[20]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[20]~36_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(4)))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datab => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(4),
	combout => \mips_cpu|dp|srcbmux|y[20]~36_combout\);

-- Location: LCCOMB_X23_Y24_N16
\mips_cpu|dp|alu|b2[20]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[20]~47_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[20]~36_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux0~1_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(20),
	datad => \mips_cpu|dp|srcbmux|y[20]~36_combout\,
	combout => \mips_cpu|dp|alu|b2[20]~47_combout\);

-- Location: LCCOMB_X22_Y24_N20
\mips_cpu|dp|srcbmux|y[19]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[19]~37_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(3))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(3),
	datac => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(16),
	combout => \mips_cpu|dp|srcbmux|y[19]~37_combout\);

-- Location: LCCOMB_X23_Y24_N12
\mips_cpu|dp|alu|b2[19]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[19]~48_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[19]~37_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datab => \mips_cpu|dp|srcbmux|y[19]~37_combout\,
	datac => \mips_cpu|c|ad|Mux0~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(19),
	combout => \mips_cpu|dp|alu|b2[19]~48_combout\);

-- Location: LCCOMB_X23_Y24_N26
\mips_cpu|dp|MEM_WB_fwd_1|y[18]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[18]~32_combout\ = (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(18) & \mips_cpu|fw|ForwardA[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(18),
	datad => \mips_cpu|fw|ForwardA[1]~2_combout\,
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[18]~32_combout\);

-- Location: LCCOMB_X22_Y24_N14
\mips_cpu|dp|srcbmux|y[18]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[18]~38_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(2)))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datab => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(2),
	datad => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[18]~38_combout\);

-- Location: LCCOMB_X23_Y24_N20
\mips_cpu|dp|srcbmux|y[18]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[18]~51_combout\ = (\mips_cpu|dp|srcbmux|y[18]~38_combout\) # ((\mips_cpu|dp|EX_MEM_alu|q\(18) & \mips_cpu|dp|srcbmux|y[12]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[18]~38_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(18),
	datad => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	combout => \mips_cpu|dp|srcbmux|y[18]~51_combout\);

-- Location: LCCOMB_X24_Y24_N12
\mips_cpu|dp|alu|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux13~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[18]~32_combout\) # (\mips_cpu|dp|srcbmux|y[18]~51_combout\))) # (!\mips_cpu|c|ad|Mux2~1_combout\ & 
-- (\mips_cpu|dp|MEM_WB_fwd_1|y[18]~32_combout\ & \mips_cpu|dp|srcbmux|y[18]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|MEM_WB_fwd_1|y[18]~32_combout\,
	datad => \mips_cpu|dp|srcbmux|y[18]~51_combout\,
	combout => \mips_cpu|dp|alu|Mux13~0_combout\);

-- Location: LCCOMB_X21_Y21_N6
\mips_cpu|dp|alu|b2[17]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[17]~34_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[17]~18_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux0~1_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(17),
	datad => \mips_cpu|dp|srcbmux|y[17]~18_combout\,
	combout => \mips_cpu|dp|alu|b2[17]~34_combout\);

-- Location: LCCOMB_X20_Y21_N16
\mips_cpu|dp|MEM_WB_fwd_1|y[17]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[17]~15_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(17),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[17]~15_combout\);

-- Location: LCCOMB_X21_Y24_N10
\mips_cpu|dp|srcbmux|y[16]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[16]~20_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(0)))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datab => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datac => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[16]~20_combout\);

-- Location: LCCOMB_X24_Y20_N0
\mips_cpu|dp|srcbmux|y[16]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[16]~23_combout\ = (\mips_cpu|dp|srcbmux|y[16]~20_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[16]~20_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(16),
	combout => \mips_cpu|dp|srcbmux|y[16]~23_combout\);

-- Location: LCCOMB_X24_Y21_N6
\mips_cpu|dp|alu|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux15~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[16]~16_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\) # (\mips_cpu|dp|srcbmux|y[16]~23_combout\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[16]~16_combout\ & 
-- (\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|srcbmux|y[16]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[16]~16_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|srcbmux|y[16]~23_combout\,
	combout => \mips_cpu|dp|alu|Mux15~0_combout\);

-- Location: LCCOMB_X24_Y20_N12
\mips_cpu|dp|alu|b2[16]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[16]~35_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[16]~20_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[16]~20_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|c|ad|Mux0~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(16),
	combout => \mips_cpu|dp|alu|b2[16]~35_combout\);

-- Location: LCCOMB_X21_Y20_N8
\mips_cpu|dp|srcbmux|y[15]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[15]~21_combout\ = (\mips_cpu|dp|srcbmux|y[12]~0_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(15)) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(15))))) # (!\mips_cpu|dp|srcbmux|y[12]~0_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[12]~1_combout\ & ((\mips_cpu|dp|EX_MEM_alu|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|dp|ID_EX_signimm|q\(15),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(15),
	combout => \mips_cpu|dp|srcbmux|y[15]~21_combout\);

-- Location: LCCOMB_X22_Y21_N20
\mips_cpu|dp|alu|b2[15]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[15]~63_combout\ = \mips_cpu|dp|srcbmux|y[15]~21_combout\ $ (((\mips_cpu|c|ID_EX_C_aluop|q\(0) & ((!\mips_cpu|c|ad|Mux0~0_combout\) # (!\mips_cpu|c|ID_EX_C_aluop|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	datab => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datac => \mips_cpu|c|ad|Mux0~0_combout\,
	datad => \mips_cpu|dp|srcbmux|y[15]~21_combout\,
	combout => \mips_cpu|dp|alu|b2[15]~63_combout\);

-- Location: LCCOMB_X22_Y22_N26
\mips_cpu|dp|srcbmux|y[14]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[14]~22_combout\ = (\mips_cpu|dp|srcbmux|y[12]~1_combout\ & ((\mips_cpu|dp|EX_MEM_alu|q\(14)) # ((\mips_cpu|dp|ID_EX_signimm|q\(14) & \mips_cpu|dp|srcbmux|y[12]~0_combout\)))) # (!\mips_cpu|dp|srcbmux|y[12]~1_combout\ & 
-- (((\mips_cpu|dp|ID_EX_signimm|q\(14) & \mips_cpu|dp|srcbmux|y[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datab => \mips_cpu|dp|EX_MEM_alu|q\(14),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(14),
	datad => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	combout => \mips_cpu|dp|srcbmux|y[14]~22_combout\);

-- Location: LCCOMB_X22_Y21_N8
\mips_cpu|dp|alu|Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux17~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\ & ((\mips_cpu|dp|srcbmux|y[14]~22_combout\) # (\mips_cpu|dp|MEM_WB_fwd_1|y[14]~18_combout\))) # (!\mips_cpu|c|ad|Mux2~1_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[14]~22_combout\ & \mips_cpu|dp|MEM_WB_fwd_1|y[14]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|srcbmux|y[14]~22_combout\,
	datad => \mips_cpu|dp|MEM_WB_fwd_1|y[14]~18_combout\,
	combout => \mips_cpu|dp|alu|Mux17~0_combout\);

-- Location: LCCOMB_X22_Y21_N30
\mips_cpu|dp|alu|b2[14]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[14]~64_combout\ = \mips_cpu|dp|srcbmux|y[14]~22_combout\ $ (((\mips_cpu|c|ID_EX_C_aluop|q\(0) & ((!\mips_cpu|c|ID_EX_C_aluop|q\(1)) # (!\mips_cpu|c|ad|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[14]~22_combout\,
	datab => \mips_cpu|c|ad|Mux0~0_combout\,
	datac => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datad => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	combout => \mips_cpu|dp|alu|b2[14]~64_combout\);

-- Location: LCCOMB_X21_Y20_N24
\mips_cpu|dp|srcbmux|y[13]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[13]~2_combout\ = (\mips_cpu|dp|srcbmux|y[12]~0_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(13)) # ((\mips_cpu|dp|EX_MEM_alu|q\(13) & \mips_cpu|dp|srcbmux|y[12]~1_combout\)))) # (!\mips_cpu|dp|srcbmux|y[12]~0_combout\ & 
-- (\mips_cpu|dp|EX_MEM_alu|q\(13) & ((\mips_cpu|dp|srcbmux|y[12]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	datab => \mips_cpu|dp|EX_MEM_alu|q\(13),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(13),
	datad => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	combout => \mips_cpu|dp|srcbmux|y[13]~2_combout\);

-- Location: LCCOMB_X22_Y21_N14
\mips_cpu|dp|alu|b2[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[13]~50_combout\ = \mips_cpu|dp|srcbmux|y[13]~2_combout\ $ (((\mips_cpu|c|ID_EX_C_aluop|q\(0) & ((!\mips_cpu|c|ad|Mux0~0_combout\) # (!\mips_cpu|c|ID_EX_C_aluop|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	datab => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datac => \mips_cpu|c|ad|Mux0~0_combout\,
	datad => \mips_cpu|dp|srcbmux|y[13]~2_combout\,
	combout => \mips_cpu|dp|alu|b2[13]~50_combout\);

-- Location: LCCOMB_X23_Y21_N12
\mips_cpu|dp|alu|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~28_combout\ = ((\mips_cpu|dp|alu|b2[13]~50_combout\ $ (\mips_cpu|dp|MEM_WB_fwd_1|y[13]~0_combout\ $ (!\mips_cpu|dp|alu|Add0~27\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~29\ = CARRY((\mips_cpu|dp|alu|b2[13]~50_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[13]~0_combout\) # (!\mips_cpu|dp|alu|Add0~27\))) # (!\mips_cpu|dp|alu|b2[13]~50_combout\ & (\mips_cpu|dp|MEM_WB_fwd_1|y[13]~0_combout\ & 
-- !\mips_cpu|dp|alu|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[13]~50_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[13]~0_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~27\,
	combout => \mips_cpu|dp|alu|Add0~28_combout\,
	cout => \mips_cpu|dp|alu|Add0~29\);

-- Location: LCCOMB_X23_Y21_N14
\mips_cpu|dp|alu|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~30_combout\ = (\mips_cpu|dp|MEM_WB_fwd_1|y[14]~18_combout\ & ((\mips_cpu|dp|alu|b2[14]~64_combout\ & (\mips_cpu|dp|alu|Add0~29\ & VCC)) # (!\mips_cpu|dp|alu|b2[14]~64_combout\ & (!\mips_cpu|dp|alu|Add0~29\)))) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[14]~18_combout\ & ((\mips_cpu|dp|alu|b2[14]~64_combout\ & (!\mips_cpu|dp|alu|Add0~29\)) # (!\mips_cpu|dp|alu|b2[14]~64_combout\ & ((\mips_cpu|dp|alu|Add0~29\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~31\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[14]~18_combout\ & (!\mips_cpu|dp|alu|b2[14]~64_combout\ & !\mips_cpu|dp|alu|Add0~29\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[14]~18_combout\ & ((!\mips_cpu|dp|alu|Add0~29\) # 
-- (!\mips_cpu|dp|alu|b2[14]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[14]~18_combout\,
	datab => \mips_cpu|dp|alu|b2[14]~64_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~29\,
	combout => \mips_cpu|dp|alu|Add0~30_combout\,
	cout => \mips_cpu|dp|alu|Add0~31\);

-- Location: LCCOMB_X24_Y21_N8
\mips_cpu|dp|alu|Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux17~1_combout\ = (\mips_cpu|dp|alu|Mux17~0_combout\) # ((\mips_cpu|c|ad|Mux1~0_combout\ & (!\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|alu|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux1~0_combout\,
	datab => \mips_cpu|dp|alu|Mux17~0_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|alu|Add0~30_combout\,
	combout => \mips_cpu|dp|alu|Mux17~1_combout\);

-- Location: FF_X24_Y21_N9
\mips_cpu|dp|EX_MEM_alu|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux17~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(14));

-- Location: LCCOMB_X20_Y21_N28
\mips_cpu|dp|MEM_WB_fwd_1|y[14]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[14]~18_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(14),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[14]~18_combout\);

-- Location: LCCOMB_X23_Y21_N16
\mips_cpu|dp|alu|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~32_combout\ = ((\mips_cpu|dp|MEM_WB_fwd_1|y[15]~17_combout\ $ (\mips_cpu|dp|alu|b2[15]~63_combout\ $ (!\mips_cpu|dp|alu|Add0~31\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~33\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[15]~17_combout\ & ((\mips_cpu|dp|alu|b2[15]~63_combout\) # (!\mips_cpu|dp|alu|Add0~31\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[15]~17_combout\ & (\mips_cpu|dp|alu|b2[15]~63_combout\ & 
-- !\mips_cpu|dp|alu|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[15]~17_combout\,
	datab => \mips_cpu|dp|alu|b2[15]~63_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~31\,
	combout => \mips_cpu|dp|alu|Add0~32_combout\,
	cout => \mips_cpu|dp|alu|Add0~33\);

-- Location: LCCOMB_X22_Y21_N6
\mips_cpu|dp|alu|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux16~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|srcbmux|y[15]~21_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[15]~17_combout\) # (\mips_cpu|c|ad|Mux2~1_combout\))) # (!\mips_cpu|dp|srcbmux|y[15]~21_combout\ & 
-- (\mips_cpu|dp|MEM_WB_fwd_1|y[15]~17_combout\ & \mips_cpu|c|ad|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[15]~21_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[15]~17_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|c|ad|Mux1~0_combout\,
	combout => \mips_cpu|dp|alu|Mux16~0_combout\);

-- Location: LCCOMB_X24_Y21_N30
\mips_cpu|dp|alu|Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux16~1_combout\ = (\mips_cpu|dp|alu|Mux16~0_combout\) # ((\mips_cpu|dp|alu|Add0~32_combout\ & (!\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|c|ad|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~32_combout\,
	datab => \mips_cpu|dp|alu|Mux16~0_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|c|ad|Mux1~0_combout\,
	combout => \mips_cpu|dp|alu|Mux16~1_combout\);

-- Location: FF_X24_Y21_N31
\mips_cpu|dp|EX_MEM_alu|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux16~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(15));

-- Location: LCCOMB_X20_Y21_N18
\mips_cpu|dp|MEM_WB_fwd_1|y[15]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[15]~17_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(15) & \mips_cpu|fw|ForwardA[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(15),
	datad => \mips_cpu|fw|ForwardA[1]~0_combout\,
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[15]~17_combout\);

-- Location: LCCOMB_X23_Y21_N18
\mips_cpu|dp|alu|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~34_combout\ = (\mips_cpu|dp|MEM_WB_fwd_1|y[16]~16_combout\ & ((\mips_cpu|dp|alu|b2[16]~35_combout\ & (\mips_cpu|dp|alu|Add0~33\ & VCC)) # (!\mips_cpu|dp|alu|b2[16]~35_combout\ & (!\mips_cpu|dp|alu|Add0~33\)))) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[16]~16_combout\ & ((\mips_cpu|dp|alu|b2[16]~35_combout\ & (!\mips_cpu|dp|alu|Add0~33\)) # (!\mips_cpu|dp|alu|b2[16]~35_combout\ & ((\mips_cpu|dp|alu|Add0~33\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~35\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[16]~16_combout\ & (!\mips_cpu|dp|alu|b2[16]~35_combout\ & !\mips_cpu|dp|alu|Add0~33\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[16]~16_combout\ & ((!\mips_cpu|dp|alu|Add0~33\) # 
-- (!\mips_cpu|dp|alu|b2[16]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[16]~16_combout\,
	datab => \mips_cpu|dp|alu|b2[16]~35_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~33\,
	combout => \mips_cpu|dp|alu|Add0~34_combout\,
	cout => \mips_cpu|dp|alu|Add0~35\);

-- Location: LCCOMB_X24_Y21_N4
\mips_cpu|dp|alu|Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux15~1_combout\ = (\mips_cpu|dp|alu|Mux15~0_combout\) # ((\mips_cpu|dp|alu|Add0~34_combout\ & (!\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|c|ad|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux15~0_combout\,
	datab => \mips_cpu|dp|alu|Add0~34_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|c|ad|Mux1~0_combout\,
	combout => \mips_cpu|dp|alu|Mux15~1_combout\);

-- Location: FF_X24_Y21_N5
\mips_cpu|dp|EX_MEM_alu|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux15~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(16));

-- Location: LCCOMB_X24_Y20_N22
\mips_cpu|dp|MEM_WB_fwd_1|y[16]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[16]~16_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(16),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[16]~16_combout\);

-- Location: LCCOMB_X23_Y21_N20
\mips_cpu|dp|alu|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~36_combout\ = ((\mips_cpu|dp|alu|b2[17]~34_combout\ $ (\mips_cpu|dp|MEM_WB_fwd_1|y[17]~15_combout\ $ (!\mips_cpu|dp|alu|Add0~35\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~37\ = CARRY((\mips_cpu|dp|alu|b2[17]~34_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[17]~15_combout\) # (!\mips_cpu|dp|alu|Add0~35\))) # (!\mips_cpu|dp|alu|b2[17]~34_combout\ & (\mips_cpu|dp|MEM_WB_fwd_1|y[17]~15_combout\ & 
-- !\mips_cpu|dp|alu|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[17]~34_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[17]~15_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~35\,
	combout => \mips_cpu|dp|alu|Add0~36_combout\,
	cout => \mips_cpu|dp|alu|Add0~37\);

-- Location: LCCOMB_X23_Y21_N22
\mips_cpu|dp|alu|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~38_combout\ = (\mips_cpu|dp|alu|b2[18]~49_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[18]~32_combout\ & (\mips_cpu|dp|alu|Add0~37\ & VCC)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[18]~32_combout\ & (!\mips_cpu|dp|alu|Add0~37\)))) # 
-- (!\mips_cpu|dp|alu|b2[18]~49_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[18]~32_combout\ & (!\mips_cpu|dp|alu|Add0~37\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[18]~32_combout\ & ((\mips_cpu|dp|alu|Add0~37\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~39\ = CARRY((\mips_cpu|dp|alu|b2[18]~49_combout\ & (!\mips_cpu|dp|MEM_WB_fwd_1|y[18]~32_combout\ & !\mips_cpu|dp|alu|Add0~37\)) # (!\mips_cpu|dp|alu|b2[18]~49_combout\ & ((!\mips_cpu|dp|alu|Add0~37\) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[18]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[18]~49_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[18]~32_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~37\,
	combout => \mips_cpu|dp|alu|Add0~38_combout\,
	cout => \mips_cpu|dp|alu|Add0~39\);

-- Location: LCCOMB_X24_Y24_N14
\mips_cpu|dp|alu|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux13~1_combout\ = (\mips_cpu|dp|alu|Mux13~0_combout\) # ((\mips_cpu|dp|alu|Add0~38_combout\ & (!\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|c|ad|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux13~0_combout\,
	datab => \mips_cpu|dp|alu|Add0~38_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|c|ad|Mux1~0_combout\,
	combout => \mips_cpu|dp|alu|Mux13~1_combout\);

-- Location: FF_X24_Y24_N15
\mips_cpu|dp|EX_MEM_alu|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux13~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(18));

-- Location: LCCOMB_X23_Y24_N0
\mips_cpu|dp|alu|b2[18]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[18]~49_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[18]~38_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux0~1_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(18),
	datad => \mips_cpu|dp|srcbmux|y[18]~38_combout\,
	combout => \mips_cpu|dp|alu|b2[18]~49_combout\);

-- Location: LCCOMB_X23_Y21_N24
\mips_cpu|dp|alu|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~40_combout\ = ((\mips_cpu|dp|MEM_WB_fwd_1|y[19]~31_combout\ $ (\mips_cpu|dp|alu|b2[19]~48_combout\ $ (!\mips_cpu|dp|alu|Add0~39\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~41\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[19]~31_combout\ & ((\mips_cpu|dp|alu|b2[19]~48_combout\) # (!\mips_cpu|dp|alu|Add0~39\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[19]~31_combout\ & (\mips_cpu|dp|alu|b2[19]~48_combout\ & 
-- !\mips_cpu|dp|alu|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[19]~31_combout\,
	datab => \mips_cpu|dp|alu|b2[19]~48_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~39\,
	combout => \mips_cpu|dp|alu|Add0~40_combout\,
	cout => \mips_cpu|dp|alu|Add0~41\);

-- Location: LCCOMB_X23_Y24_N24
\mips_cpu|dp|srcbmux|y[19]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[19]~50_combout\ = (\mips_cpu|dp|srcbmux|y[19]~37_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(19),
	datad => \mips_cpu|dp|srcbmux|y[19]~37_combout\,
	combout => \mips_cpu|dp|srcbmux|y[19]~50_combout\);

-- Location: LCCOMB_X23_Y24_N2
\mips_cpu|dp|alu|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux12~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|srcbmux|y[19]~50_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\) # (\mips_cpu|dp|MEM_WB_fwd_1|y[19]~31_combout\))) # (!\mips_cpu|dp|srcbmux|y[19]~50_combout\ & 
-- (\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|MEM_WB_fwd_1|y[19]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux1~0_combout\,
	datab => \mips_cpu|dp|srcbmux|y[19]~50_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|MEM_WB_fwd_1|y[19]~31_combout\,
	combout => \mips_cpu|dp|alu|Mux12~0_combout\);

-- Location: LCCOMB_X23_Y24_N18
\mips_cpu|dp|alu|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux12~1_combout\ = (\mips_cpu|dp|alu|Mux12~0_combout\) # ((\mips_cpu|c|ad|Mux1~0_combout\ & (\mips_cpu|dp|alu|Add0~40_combout\ & !\mips_cpu|c|ad|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux1~0_combout\,
	datab => \mips_cpu|dp|alu|Add0~40_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|alu|Mux12~0_combout\,
	combout => \mips_cpu|dp|alu|Mux12~1_combout\);

-- Location: FF_X23_Y24_N19
\mips_cpu|dp|EX_MEM_alu|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux12~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(19));

-- Location: LCCOMB_X23_Y24_N6
\mips_cpu|dp|MEM_WB_fwd_1|y[19]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[19]~31_combout\ = (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(19),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[19]~31_combout\);

-- Location: LCCOMB_X23_Y21_N26
\mips_cpu|dp|alu|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~42_combout\ = (\mips_cpu|dp|MEM_WB_fwd_1|y[20]~30_combout\ & ((\mips_cpu|dp|alu|b2[20]~47_combout\ & (\mips_cpu|dp|alu|Add0~41\ & VCC)) # (!\mips_cpu|dp|alu|b2[20]~47_combout\ & (!\mips_cpu|dp|alu|Add0~41\)))) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[20]~30_combout\ & ((\mips_cpu|dp|alu|b2[20]~47_combout\ & (!\mips_cpu|dp|alu|Add0~41\)) # (!\mips_cpu|dp|alu|b2[20]~47_combout\ & ((\mips_cpu|dp|alu|Add0~41\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~43\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[20]~30_combout\ & (!\mips_cpu|dp|alu|b2[20]~47_combout\ & !\mips_cpu|dp|alu|Add0~41\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[20]~30_combout\ & ((!\mips_cpu|dp|alu|Add0~41\) # 
-- (!\mips_cpu|dp|alu|b2[20]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[20]~30_combout\,
	datab => \mips_cpu|dp|alu|b2[20]~47_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~41\,
	combout => \mips_cpu|dp|alu|Add0~42_combout\,
	cout => \mips_cpu|dp|alu|Add0~43\);

-- Location: LCCOMB_X23_Y24_N28
\mips_cpu|dp|srcbmux|y[20]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[20]~49_combout\ = (\mips_cpu|dp|srcbmux|y[20]~36_combout\) # ((\mips_cpu|dp|EX_MEM_alu|q\(20) & \mips_cpu|dp|srcbmux|y[12]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[20]~36_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(20),
	datad => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	combout => \mips_cpu|dp|srcbmux|y[20]~49_combout\);

-- Location: LCCOMB_X23_Y24_N22
\mips_cpu|dp|alu|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux11~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|srcbmux|y[20]~49_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\) # (\mips_cpu|dp|MEM_WB_fwd_1|y[20]~30_combout\))) # (!\mips_cpu|dp|srcbmux|y[20]~49_combout\ & 
-- (\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|MEM_WB_fwd_1|y[20]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux1~0_combout\,
	datab => \mips_cpu|dp|srcbmux|y[20]~49_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|MEM_WB_fwd_1|y[20]~30_combout\,
	combout => \mips_cpu|dp|alu|Mux11~0_combout\);

-- Location: LCCOMB_X23_Y24_N8
\mips_cpu|dp|alu|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux11~1_combout\ = (\mips_cpu|dp|alu|Mux11~0_combout\) # ((\mips_cpu|dp|alu|Add0~42_combout\ & (!\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|c|ad|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~42_combout\,
	datab => \mips_cpu|c|ad|Mux2~1_combout\,
	datac => \mips_cpu|dp|alu|Mux11~0_combout\,
	datad => \mips_cpu|c|ad|Mux1~0_combout\,
	combout => \mips_cpu|dp|alu|Mux11~1_combout\);

-- Location: FF_X23_Y24_N9
\mips_cpu|dp|EX_MEM_alu|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux11~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(20));

-- Location: LCCOMB_X23_Y24_N10
\mips_cpu|dp|MEM_WB_fwd_1|y[20]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[20]~30_combout\ = (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(20) & \mips_cpu|fw|ForwardA[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(20),
	datad => \mips_cpu|fw|ForwardA[1]~2_combout\,
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[20]~30_combout\);

-- Location: LCCOMB_X23_Y21_N28
\mips_cpu|dp|alu|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~44_combout\ = ((\mips_cpu|dp|MEM_WB_fwd_1|y[21]~29_combout\ $ (\mips_cpu|dp|alu|b2[21]~46_combout\ $ (!\mips_cpu|dp|alu|Add0~43\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~45\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[21]~29_combout\ & ((\mips_cpu|dp|alu|b2[21]~46_combout\) # (!\mips_cpu|dp|alu|Add0~43\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[21]~29_combout\ & (\mips_cpu|dp|alu|b2[21]~46_combout\ & 
-- !\mips_cpu|dp|alu|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[21]~29_combout\,
	datab => \mips_cpu|dp|alu|b2[21]~46_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~43\,
	combout => \mips_cpu|dp|alu|Add0~44_combout\,
	cout => \mips_cpu|dp|alu|Add0~45\);

-- Location: LCCOMB_X24_Y24_N28
\mips_cpu|dp|alu|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux10~1_combout\ = (\mips_cpu|dp|alu|Mux10~0_combout\) # ((!\mips_cpu|c|ad|Mux2~1_combout\ & (\mips_cpu|c|ad|Mux1~0_combout\ & \mips_cpu|dp|alu|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|alu|Mux10~0_combout\,
	datad => \mips_cpu|dp|alu|Add0~44_combout\,
	combout => \mips_cpu|dp|alu|Mux10~1_combout\);

-- Location: FF_X24_Y24_N29
\mips_cpu|dp|EX_MEM_alu|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux10~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(21));

-- Location: LCCOMB_X22_Y24_N26
\mips_cpu|dp|MEM_WB_fwd_1|y[21]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[21]~29_combout\ = (\mips_cpu|fw|ForwardA[1]~1_combout\ & (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(21),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[21]~29_combout\);

-- Location: LCCOMB_X23_Y21_N30
\mips_cpu|dp|alu|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~46_combout\ = (\mips_cpu|dp|MEM_WB_fwd_1|y[22]~28_combout\ & ((\mips_cpu|dp|alu|b2[22]~45_combout\ & (\mips_cpu|dp|alu|Add0~45\ & VCC)) # (!\mips_cpu|dp|alu|b2[22]~45_combout\ & (!\mips_cpu|dp|alu|Add0~45\)))) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[22]~28_combout\ & ((\mips_cpu|dp|alu|b2[22]~45_combout\ & (!\mips_cpu|dp|alu|Add0~45\)) # (!\mips_cpu|dp|alu|b2[22]~45_combout\ & ((\mips_cpu|dp|alu|Add0~45\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~47\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[22]~28_combout\ & (!\mips_cpu|dp|alu|b2[22]~45_combout\ & !\mips_cpu|dp|alu|Add0~45\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[22]~28_combout\ & ((!\mips_cpu|dp|alu|Add0~45\) # 
-- (!\mips_cpu|dp|alu|b2[22]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[22]~28_combout\,
	datab => \mips_cpu|dp|alu|b2[22]~45_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~45\,
	combout => \mips_cpu|dp|alu|Add0~46_combout\,
	cout => \mips_cpu|dp|alu|Add0~47\);

-- Location: LCCOMB_X24_Y20_N14
\mips_cpu|dp|srcbmux|y[22]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[22]~47_combout\ = (\mips_cpu|dp|srcbmux|y[22]~34_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|dp|srcbmux|y[22]~34_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(22),
	combout => \mips_cpu|dp|srcbmux|y[22]~47_combout\);

-- Location: LCCOMB_X24_Y20_N8
\mips_cpu|dp|alu|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux9~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\ & ((\mips_cpu|dp|srcbmux|y[22]~47_combout\) # (\mips_cpu|dp|MEM_WB_fwd_1|y[22]~28_combout\))) # (!\mips_cpu|c|ad|Mux2~1_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[22]~47_combout\ & \mips_cpu|dp|MEM_WB_fwd_1|y[22]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|srcbmux|y[22]~47_combout\,
	datad => \mips_cpu|dp|MEM_WB_fwd_1|y[22]~28_combout\,
	combout => \mips_cpu|dp|alu|Mux9~0_combout\);

-- Location: LCCOMB_X24_Y20_N16
\mips_cpu|dp|alu|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux9~1_combout\ = (\mips_cpu|dp|alu|Mux9~0_combout\) # ((\mips_cpu|dp|alu|Add0~46_combout\ & (\mips_cpu|c|ad|Mux1~0_combout\ & !\mips_cpu|c|ad|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~46_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|alu|Mux9~0_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Mux9~1_combout\);

-- Location: FF_X24_Y20_N17
\mips_cpu|dp|EX_MEM_alu|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux9~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(22));

-- Location: LCCOMB_X24_Y20_N2
\mips_cpu|dp|MEM_WB_fwd_1|y[22]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[22]~28_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(22),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[22]~28_combout\);

-- Location: LCCOMB_X23_Y20_N0
\mips_cpu|dp|alu|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~48_combout\ = ((\mips_cpu|dp|alu|b2[23]~44_combout\ $ (\mips_cpu|dp|MEM_WB_fwd_1|y[23]~27_combout\ $ (!\mips_cpu|dp|alu|Add0~47\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~49\ = CARRY((\mips_cpu|dp|alu|b2[23]~44_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[23]~27_combout\) # (!\mips_cpu|dp|alu|Add0~47\))) # (!\mips_cpu|dp|alu|b2[23]~44_combout\ & (\mips_cpu|dp|MEM_WB_fwd_1|y[23]~27_combout\ & 
-- !\mips_cpu|dp|alu|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[23]~44_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[23]~27_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~47\,
	combout => \mips_cpu|dp|alu|Add0~48_combout\,
	cout => \mips_cpu|dp|alu|Add0~49\);

-- Location: LCCOMB_X24_Y24_N2
\mips_cpu|dp|alu|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux8~1_combout\ = (\mips_cpu|dp|alu|Mux8~0_combout\) # ((!\mips_cpu|c|ad|Mux2~1_combout\ & (\mips_cpu|dp|alu|Add0~48_combout\ & \mips_cpu|c|ad|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|dp|alu|Mux8~0_combout\,
	datac => \mips_cpu|dp|alu|Add0~48_combout\,
	datad => \mips_cpu|c|ad|Mux1~0_combout\,
	combout => \mips_cpu|dp|alu|Mux8~1_combout\);

-- Location: FF_X24_Y24_N3
\mips_cpu|dp|EX_MEM_alu|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux8~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(23));

-- Location: LCCOMB_X22_Y20_N2
\mips_cpu|dp|alu|b2[23]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[23]~44_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[23]~33_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[23]~33_combout\,
	datab => \mips_cpu|c|ad|Mux0~1_combout\,
	datac => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(23),
	combout => \mips_cpu|dp|alu|b2[23]~44_combout\);

-- Location: LCCOMB_X23_Y20_N2
\mips_cpu|dp|alu|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~50_combout\ = (\mips_cpu|dp|MEM_WB_fwd_1|y[24]~26_combout\ & ((\mips_cpu|dp|alu|b2[24]~43_combout\ & (\mips_cpu|dp|alu|Add0~49\ & VCC)) # (!\mips_cpu|dp|alu|b2[24]~43_combout\ & (!\mips_cpu|dp|alu|Add0~49\)))) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[24]~26_combout\ & ((\mips_cpu|dp|alu|b2[24]~43_combout\ & (!\mips_cpu|dp|alu|Add0~49\)) # (!\mips_cpu|dp|alu|b2[24]~43_combout\ & ((\mips_cpu|dp|alu|Add0~49\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~51\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[24]~26_combout\ & (!\mips_cpu|dp|alu|b2[24]~43_combout\ & !\mips_cpu|dp|alu|Add0~49\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[24]~26_combout\ & ((!\mips_cpu|dp|alu|Add0~49\) # 
-- (!\mips_cpu|dp|alu|b2[24]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[24]~26_combout\,
	datab => \mips_cpu|dp|alu|b2[24]~43_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~49\,
	combout => \mips_cpu|dp|alu|Add0~50_combout\,
	cout => \mips_cpu|dp|alu|Add0~51\);

-- Location: LCCOMB_X21_Y21_N28
\mips_cpu|dp|srcbmux|y[24]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[24]~45_combout\ = (\mips_cpu|dp|srcbmux|y[24]~32_combout\) # ((\mips_cpu|dp|EX_MEM_alu|q\(24) & \mips_cpu|dp|srcbmux|y[12]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|EX_MEM_alu|q\(24),
	datac => \mips_cpu|dp|srcbmux|y[24]~32_combout\,
	datad => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	combout => \mips_cpu|dp|srcbmux|y[24]~45_combout\);

-- Location: LCCOMB_X23_Y20_N28
\mips_cpu|dp|alu|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux7~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|srcbmux|y[24]~45_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\) # (\mips_cpu|dp|MEM_WB_fwd_1|y[24]~26_combout\))) # (!\mips_cpu|dp|srcbmux|y[24]~45_combout\ & 
-- (\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|MEM_WB_fwd_1|y[24]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux1~0_combout\,
	datab => \mips_cpu|dp|srcbmux|y[24]~45_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|MEM_WB_fwd_1|y[24]~26_combout\,
	combout => \mips_cpu|dp|alu|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y20_N22
\mips_cpu|dp|alu|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux7~1_combout\ = (\mips_cpu|dp|alu|Mux7~0_combout\) # ((\mips_cpu|c|ad|Mux1~0_combout\ & (!\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|alu|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux1~0_combout\,
	datab => \mips_cpu|c|ad|Mux2~1_combout\,
	datac => \mips_cpu|dp|alu|Add0~50_combout\,
	datad => \mips_cpu|dp|alu|Mux7~0_combout\,
	combout => \mips_cpu|dp|alu|Mux7~1_combout\);

-- Location: FF_X23_Y20_N23
\mips_cpu|dp|EX_MEM_alu|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux7~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(24));

-- Location: LCCOMB_X24_Y20_N6
\mips_cpu|dp|MEM_WB_fwd_1|y[24]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[24]~26_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(24),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[24]~26_combout\);

-- Location: LCCOMB_X23_Y20_N4
\mips_cpu|dp|alu|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~52_combout\ = ((\mips_cpu|dp|MEM_WB_fwd_1|y[25]~25_combout\ $ (\mips_cpu|dp|alu|b2[25]~42_combout\ $ (!\mips_cpu|dp|alu|Add0~51\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~53\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[25]~25_combout\ & ((\mips_cpu|dp|alu|b2[25]~42_combout\) # (!\mips_cpu|dp|alu|Add0~51\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[25]~25_combout\ & (\mips_cpu|dp|alu|b2[25]~42_combout\ & 
-- !\mips_cpu|dp|alu|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[25]~25_combout\,
	datab => \mips_cpu|dp|alu|b2[25]~42_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~51\,
	combout => \mips_cpu|dp|alu|Add0~52_combout\,
	cout => \mips_cpu|dp|alu|Add0~53\);

-- Location: LCCOMB_X24_Y20_N20
\mips_cpu|dp|srcbmux|y[25]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[25]~44_combout\ = (\mips_cpu|dp|srcbmux|y[25]~31_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[25]~31_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(25),
	combout => \mips_cpu|dp|srcbmux|y[25]~44_combout\);

-- Location: LCCOMB_X23_Y20_N18
\mips_cpu|dp|alu|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux6~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\ & ((\mips_cpu|dp|srcbmux|y[25]~44_combout\) # (\mips_cpu|dp|MEM_WB_fwd_1|y[25]~25_combout\))) # (!\mips_cpu|c|ad|Mux2~1_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[25]~44_combout\ & \mips_cpu|dp|MEM_WB_fwd_1|y[25]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux1~0_combout\,
	datab => \mips_cpu|c|ad|Mux2~1_combout\,
	datac => \mips_cpu|dp|srcbmux|y[25]~44_combout\,
	datad => \mips_cpu|dp|MEM_WB_fwd_1|y[25]~25_combout\,
	combout => \mips_cpu|dp|alu|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y20_N20
\mips_cpu|dp|alu|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux6~1_combout\ = (\mips_cpu|dp|alu|Mux6~0_combout\) # ((\mips_cpu|c|ad|Mux1~0_combout\ & (\mips_cpu|dp|alu|Add0~52_combout\ & !\mips_cpu|c|ad|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux1~0_combout\,
	datab => \mips_cpu|dp|alu|Add0~52_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|alu|Mux6~0_combout\,
	combout => \mips_cpu|dp|alu|Mux6~1_combout\);

-- Location: FF_X23_Y20_N21
\mips_cpu|dp|EX_MEM_alu|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux6~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(25));

-- Location: LCCOMB_X24_Y20_N4
\mips_cpu|dp|MEM_WB_fwd_1|y[25]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[25]~25_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(25),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[25]~25_combout\);

-- Location: LCCOMB_X23_Y20_N6
\mips_cpu|dp|alu|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~54_combout\ = (\mips_cpu|dp|MEM_WB_fwd_1|y[26]~24_combout\ & ((\mips_cpu|dp|alu|b2[26]~41_combout\ & (\mips_cpu|dp|alu|Add0~53\ & VCC)) # (!\mips_cpu|dp|alu|b2[26]~41_combout\ & (!\mips_cpu|dp|alu|Add0~53\)))) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[26]~24_combout\ & ((\mips_cpu|dp|alu|b2[26]~41_combout\ & (!\mips_cpu|dp|alu|Add0~53\)) # (!\mips_cpu|dp|alu|b2[26]~41_combout\ & ((\mips_cpu|dp|alu|Add0~53\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~55\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[26]~24_combout\ & (!\mips_cpu|dp|alu|b2[26]~41_combout\ & !\mips_cpu|dp|alu|Add0~53\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[26]~24_combout\ & ((!\mips_cpu|dp|alu|Add0~53\) # 
-- (!\mips_cpu|dp|alu|b2[26]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[26]~24_combout\,
	datab => \mips_cpu|dp|alu|b2[26]~41_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~53\,
	combout => \mips_cpu|dp|alu|Add0~54_combout\,
	cout => \mips_cpu|dp|alu|Add0~55\);

-- Location: LCCOMB_X23_Y23_N22
\mips_cpu|dp|alu|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux5~1_combout\ = (\mips_cpu|dp|alu|Mux5~0_combout\) # ((!\mips_cpu|c|ad|Mux2~1_combout\ & (\mips_cpu|c|ad|Mux1~0_combout\ & \mips_cpu|dp|alu|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|dp|alu|Mux5~0_combout\,
	datac => \mips_cpu|c|ad|Mux1~0_combout\,
	datad => \mips_cpu|dp|alu|Add0~54_combout\,
	combout => \mips_cpu|dp|alu|Mux5~1_combout\);

-- Location: FF_X23_Y23_N23
\mips_cpu|dp|EX_MEM_alu|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux5~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(26));

-- Location: LCCOMB_X22_Y20_N8
\mips_cpu|dp|MEM_WB_fwd_1|y[26]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[26]~24_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(26),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[26]~24_combout\);

-- Location: LCCOMB_X23_Y20_N8
\mips_cpu|dp|alu|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~56_combout\ = ((\mips_cpu|dp|alu|b2[27]~40_combout\ $ (\mips_cpu|dp|MEM_WB_fwd_1|y[27]~23_combout\ $ (!\mips_cpu|dp|alu|Add0~55\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~57\ = CARRY((\mips_cpu|dp|alu|b2[27]~40_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[27]~23_combout\) # (!\mips_cpu|dp|alu|Add0~55\))) # (!\mips_cpu|dp|alu|b2[27]~40_combout\ & (\mips_cpu|dp|MEM_WB_fwd_1|y[27]~23_combout\ & 
-- !\mips_cpu|dp|alu|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[27]~40_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[27]~23_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~55\,
	combout => \mips_cpu|dp|alu|Add0~56_combout\,
	cout => \mips_cpu|dp|alu|Add0~57\);

-- Location: LCCOMB_X23_Y23_N28
\mips_cpu|dp|alu|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux4~1_combout\ = (\mips_cpu|dp|alu|Mux4~0_combout\) # ((\mips_cpu|dp|alu|Add0~56_combout\ & (\mips_cpu|c|ad|Mux1~0_combout\ & !\mips_cpu|c|ad|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux4~0_combout\,
	datab => \mips_cpu|dp|alu|Add0~56_combout\,
	datac => \mips_cpu|c|ad|Mux1~0_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Mux4~1_combout\);

-- Location: FF_X23_Y23_N29
\mips_cpu|dp|EX_MEM_alu|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux4~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(27));

-- Location: LCCOMB_X23_Y23_N20
\mips_cpu|dp|alu|b2[27]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[27]~40_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[27]~29_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[27]~29_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datac => \mips_cpu|c|ad|Mux0~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(27),
	combout => \mips_cpu|dp|alu|b2[27]~40_combout\);

-- Location: LCCOMB_X23_Y20_N10
\mips_cpu|dp|alu|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~58_combout\ = (\mips_cpu|dp|MEM_WB_fwd_1|y[28]~22_combout\ & ((\mips_cpu|dp|alu|b2[28]~39_combout\ & (\mips_cpu|dp|alu|Add0~57\ & VCC)) # (!\mips_cpu|dp|alu|b2[28]~39_combout\ & (!\mips_cpu|dp|alu|Add0~57\)))) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[28]~22_combout\ & ((\mips_cpu|dp|alu|b2[28]~39_combout\ & (!\mips_cpu|dp|alu|Add0~57\)) # (!\mips_cpu|dp|alu|b2[28]~39_combout\ & ((\mips_cpu|dp|alu|Add0~57\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~59\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[28]~22_combout\ & (!\mips_cpu|dp|alu|b2[28]~39_combout\ & !\mips_cpu|dp|alu|Add0~57\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[28]~22_combout\ & ((!\mips_cpu|dp|alu|Add0~57\) # 
-- (!\mips_cpu|dp|alu|b2[28]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[28]~22_combout\,
	datab => \mips_cpu|dp|alu|b2[28]~39_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~57\,
	combout => \mips_cpu|dp|alu|Add0~58_combout\,
	cout => \mips_cpu|dp|alu|Add0~59\);

-- Location: LCCOMB_X23_Y23_N10
\mips_cpu|dp|alu|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux3~1_combout\ = (\mips_cpu|dp|alu|Mux3~0_combout\) # ((!\mips_cpu|c|ad|Mux2~1_combout\ & (\mips_cpu|c|ad|Mux1~0_combout\ & \mips_cpu|dp|alu|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|alu|Mux3~0_combout\,
	datad => \mips_cpu|dp|alu|Add0~58_combout\,
	combout => \mips_cpu|dp|alu|Mux3~1_combout\);

-- Location: FF_X23_Y23_N11
\mips_cpu|dp|EX_MEM_alu|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux3~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(28));

-- Location: LCCOMB_X22_Y20_N20
\mips_cpu|dp|MEM_WB_fwd_1|y[28]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[28]~22_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(28) & \mips_cpu|fw|ForwardA[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(28),
	datad => \mips_cpu|fw|ForwardA[1]~1_combout\,
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[28]~22_combout\);

-- Location: LCCOMB_X23_Y20_N12
\mips_cpu|dp|alu|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~60_combout\ = ((\mips_cpu|dp|MEM_WB_fwd_1|y[29]~21_combout\ $ (\mips_cpu|dp|alu|b2[29]~38_combout\ $ (!\mips_cpu|dp|alu|Add0~59\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~61\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[29]~21_combout\ & ((\mips_cpu|dp|alu|b2[29]~38_combout\) # (!\mips_cpu|dp|alu|Add0~59\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[29]~21_combout\ & (\mips_cpu|dp|alu|b2[29]~38_combout\ & 
-- !\mips_cpu|dp|alu|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[29]~21_combout\,
	datab => \mips_cpu|dp|alu|b2[29]~38_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~59\,
	combout => \mips_cpu|dp|alu|Add0~60_combout\,
	cout => \mips_cpu|dp|alu|Add0~61\);

-- Location: LCCOMB_X23_Y23_N24
\mips_cpu|dp|alu|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux2~1_combout\ = (\mips_cpu|dp|alu|Mux2~0_combout\) # ((\mips_cpu|dp|alu|Add0~60_combout\ & (\mips_cpu|c|ad|Mux1~0_combout\ & !\mips_cpu|c|ad|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux2~0_combout\,
	datab => \mips_cpu|dp|alu|Add0~60_combout\,
	datac => \mips_cpu|c|ad|Mux1~0_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Mux2~1_combout\);

-- Location: FF_X23_Y23_N25
\mips_cpu|dp|EX_MEM_alu|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux2~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(29));

-- Location: LCCOMB_X23_Y24_N14
\mips_cpu|dp|MEM_WB_fwd_1|y[29]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[29]~21_combout\ = (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(29),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[29]~21_combout\);

-- Location: LCCOMB_X23_Y20_N14
\mips_cpu|dp|alu|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~62_combout\ = (\mips_cpu|dp|alu|b2[30]~37_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[30]~20_combout\ & (\mips_cpu|dp|alu|Add0~61\ & VCC)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[30]~20_combout\ & (!\mips_cpu|dp|alu|Add0~61\)))) # 
-- (!\mips_cpu|dp|alu|b2[30]~37_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[30]~20_combout\ & (!\mips_cpu|dp|alu|Add0~61\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[30]~20_combout\ & ((\mips_cpu|dp|alu|Add0~61\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~63\ = CARRY((\mips_cpu|dp|alu|b2[30]~37_combout\ & (!\mips_cpu|dp|MEM_WB_fwd_1|y[30]~20_combout\ & !\mips_cpu|dp|alu|Add0~61\)) # (!\mips_cpu|dp|alu|b2[30]~37_combout\ & ((!\mips_cpu|dp|alu|Add0~61\) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[30]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[30]~37_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[30]~20_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~61\,
	combout => \mips_cpu|dp|alu|Add0~62_combout\,
	cout => \mips_cpu|dp|alu|Add0~63\);

-- Location: LCCOMB_X23_Y20_N16
\mips_cpu|dp|alu|Add0~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~64_combout\ = \mips_cpu|dp|MEM_WB_fwd_1|y[31]~19_combout\ $ (\mips_cpu|dp|alu|Add0~63\ $ (!\mips_cpu|dp|alu|b2[31]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[31]~19_combout\,
	datad => \mips_cpu|dp|alu|b2[31]~36_combout\,
	cin => \mips_cpu|dp|alu|Add0~63\,
	combout => \mips_cpu|dp|alu|Add0~64_combout\);

-- Location: LCCOMB_X20_Y24_N10
\mips_cpu|fw|ForwardA[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardA[1]~3_combout\ = (\mips_cpu|fw|ForwardA[1]~1_combout\ & (\mips_cpu|fw|ForwardA[1]~2_combout\ & \mips_cpu|fw|ForwardA[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datad => \mips_cpu|fw|ForwardA[1]~0_combout\,
	combout => \mips_cpu|fw|ForwardA[1]~3_combout\);

-- Location: FF_X20_Y24_N27
\mips_cpu|dp|IF_ID_inst|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(25),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(25));

-- Location: FF_X20_Y24_N25
\mips_cpu|dp|ID_EX_inst_3|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(25),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_inst_3|q\(4));

-- Location: LCCOMB_X20_Y24_N4
\mips_cpu|fw|ForwardA[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardA[0]~6_combout\ = (\mips_cpu|dp|MEM_WB_C_regwrite|q\(0) & (\mips_cpu|dp|ID_EX_inst_3|q\(4) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|ID_EX_inst_3|q\(4),
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(4),
	datad => \mips_cpu|dp|MEM_WB_C_regwrite|q\(0),
	combout => \mips_cpu|fw|ForwardA[0]~6_combout\);

-- Location: FF_X20_Y25_N31
\mips_cpu|dp|IF_ID_inst|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(23),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(23));

-- Location: FF_X19_Y24_N29
\mips_cpu|dp|ID_EX_inst_3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(23),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_inst_3|q\(2));

-- Location: FF_X20_Y25_N29
\mips_cpu|dp|IF_ID_inst|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(24),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(24));

-- Location: FF_X19_Y24_N1
\mips_cpu|dp|ID_EX_inst_3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(24),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_inst_3|q\(3));

-- Location: LCCOMB_X19_Y24_N16
\mips_cpu|fw|ForwardA[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardA[0]~5_combout\ = (\mips_cpu|dp|ID_EX_inst_3|q\(2) & (\mips_cpu|dp|MEM_WB_wrmux|q\(2) & (\mips_cpu|dp|ID_EX_inst_3|q\(3) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(3))))) # (!\mips_cpu|dp|ID_EX_inst_3|q\(2) & (!\mips_cpu|dp|MEM_WB_wrmux|q\(2) & 
-- (\mips_cpu|dp|ID_EX_inst_3|q\(3) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_inst_3|q\(2),
	datab => \mips_cpu|dp|ID_EX_inst_3|q\(3),
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(3),
	combout => \mips_cpu|fw|ForwardA[0]~5_combout\);

-- Location: FF_X17_Y24_N7
\mips_cpu|dp|IF_ID_inst|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(21),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(21));

-- Location: LCCOMB_X20_Y25_N18
\mips_cpu|dp|ID_EX_inst_3|q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|ID_EX_inst_3|q[0]~feeder_combout\ = \mips_cpu|dp|IF_ID_inst|q\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_cpu|dp|IF_ID_inst|q\(21),
	combout => \mips_cpu|dp|ID_EX_inst_3|q[0]~feeder_combout\);

-- Location: FF_X20_Y25_N19
\mips_cpu|dp|ID_EX_inst_3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|ID_EX_inst_3|q[0]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_inst_3|q\(0));

-- Location: FF_X17_Y24_N21
\mips_cpu|dp|IF_ID_inst|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(22),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(22));

-- Location: FF_X20_Y25_N17
\mips_cpu|dp|ID_EX_inst_3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(22),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_inst_3|q\(1));

-- Location: LCCOMB_X20_Y25_N12
\mips_cpu|fw|ForwardA[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardA[0]~4_combout\ = (\mips_cpu|dp|MEM_WB_wrmux|q\(0) & (\mips_cpu|dp|ID_EX_inst_3|q\(0) & (\mips_cpu|dp|MEM_WB_wrmux|q\(1) $ (!\mips_cpu|dp|ID_EX_inst_3|q\(1))))) # (!\mips_cpu|dp|MEM_WB_wrmux|q\(0) & (!\mips_cpu|dp|ID_EX_inst_3|q\(0) & 
-- (\mips_cpu|dp|MEM_WB_wrmux|q\(1) $ (!\mips_cpu|dp|ID_EX_inst_3|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(0),
	datab => \mips_cpu|dp|ID_EX_inst_3|q\(0),
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(1),
	datad => \mips_cpu|dp|ID_EX_inst_3|q\(1),
	combout => \mips_cpu|fw|ForwardA[0]~4_combout\);

-- Location: LCCOMB_X20_Y24_N20
\mips_cpu|fw|ForwardA[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardA[0]~7_combout\ = (!\mips_cpu|fw|ForwardA[1]~3_combout\ & (\mips_cpu|fw|ForwardA[0]~6_combout\ & (\mips_cpu|fw|ForwardA[0]~5_combout\ & \mips_cpu|fw|ForwardA[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~3_combout\,
	datab => \mips_cpu|fw|ForwardA[0]~6_combout\,
	datac => \mips_cpu|fw|ForwardA[0]~5_combout\,
	datad => \mips_cpu|fw|ForwardA[0]~4_combout\,
	combout => \mips_cpu|fw|ForwardA[0]~7_combout\);

-- Location: LCCOMB_X19_Y24_N30
\mips_cpu|fw|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|Equal4~1_combout\ = (\mips_cpu|dp|MEM_WB_wrmux|q\(3) & (\mips_cpu|dp|IF_ID_inst|q\(24) & (\mips_cpu|dp|IF_ID_inst|q\(23) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(2))))) # (!\mips_cpu|dp|MEM_WB_wrmux|q\(3) & (!\mips_cpu|dp|IF_ID_inst|q\(24) & 
-- (\mips_cpu|dp|IF_ID_inst|q\(23) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(3),
	datab => \mips_cpu|dp|IF_ID_inst|q\(23),
	datac => \mips_cpu|dp|IF_ID_inst|q\(24),
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	combout => \mips_cpu|fw|Equal4~1_combout\);

-- Location: LCCOMB_X20_Y25_N2
\mips_cpu|fw|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|Equal4~0_combout\ = (\mips_cpu|dp|MEM_WB_wrmux|q\(0) & (\mips_cpu|dp|IF_ID_inst|q\(21) & (\mips_cpu|dp|IF_ID_inst|q\(22) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(1))))) # (!\mips_cpu|dp|MEM_WB_wrmux|q\(0) & (!\mips_cpu|dp|IF_ID_inst|q\(21) & 
-- (\mips_cpu|dp|IF_ID_inst|q\(22) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(0),
	datab => \mips_cpu|dp|IF_ID_inst|q\(21),
	datac => \mips_cpu|dp|IF_ID_inst|q\(22),
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(1),
	combout => \mips_cpu|fw|Equal4~0_combout\);

-- Location: LCCOMB_X20_Y24_N26
\mips_cpu|fw|Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|Equal4~2_combout\ = (\mips_cpu|fw|Equal4~1_combout\ & (\mips_cpu|fw|Equal4~0_combout\ & (\mips_cpu|dp|MEM_WB_wrmux|q\(4) $ (!\mips_cpu|dp|IF_ID_inst|q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|Equal4~1_combout\,
	datab => \mips_cpu|dp|MEM_WB_wrmux|q\(4),
	datac => \mips_cpu|dp|IF_ID_inst|q\(25),
	datad => \mips_cpu|fw|Equal4~0_combout\,
	combout => \mips_cpu|fw|Equal4~2_combout\);

-- Location: LCCOMB_X17_Y23_N2
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

-- Location: FF_X17_Y23_N3
\mips_cpu|dp|ID_EX_pcplus4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|ID_EX_pcplus4|q[0]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_pcplus4|q\(0));

-- Location: LCCOMB_X17_Y23_N8
\mips_cpu|dp|EX_MEM_pcadd2|q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|EX_MEM_pcadd2|q[0]~feeder_combout\ = \mips_cpu|dp|ID_EX_pcplus4|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_cpu|dp|ID_EX_pcplus4|q\(0),
	combout => \mips_cpu|dp|EX_MEM_pcadd2|q[0]~feeder_combout\);

-- Location: FF_X17_Y23_N9
\mips_cpu|dp|EX_MEM_pcadd2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|EX_MEM_pcadd2|q[0]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_pcadd2|q\(0));

-- Location: LCCOMB_X21_Y22_N8
\mips_cpu|dp|pcreg|q[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcreg|q[0]~0_combout\ = (\mips_cpu|c|pcsrc~0_combout\ & ((\mips_cpu|dp|EX_MEM_pcadd2|q\(0)))) # (!\mips_cpu|c|pcsrc~0_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_pcplus4|q\(0),
	datab => \mips_cpu|dp|EX_MEM_pcadd2|q\(0),
	datad => \mips_cpu|c|pcsrc~0_combout\,
	combout => \mips_cpu|dp|pcreg|q[0]~0_combout\);

-- Location: LCCOMB_X20_Y23_N26
\mips_cpu|dp|comb~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|comb~2_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(30) & (!\mips_cpu|dp|IF_ID_inst|q\(29) & (!\mips_cpu|dp|IF_ID_inst|q\(27) & !\mips_cpu|dp|IF_ID_inst|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(30),
	datab => \mips_cpu|dp|IF_ID_inst|q\(29),
	datac => \mips_cpu|dp|IF_ID_inst|q\(27),
	datad => \mips_cpu|dp|IF_ID_inst|q\(31),
	combout => \mips_cpu|dp|comb~2_combout\);

-- Location: LCCOMB_X20_Y23_N22
\mips_cpu|dp|comb~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|comb~3_combout\ = (\mips_cpu|dp|comb~2_combout\ & (!\mips_cpu|dp|IF_ID_inst|q\(28) & (!\mips_cpu|dp|IF_ID_inst|q\(26) & \mips_cpu|dp|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|comb~2_combout\,
	datab => \mips_cpu|dp|IF_ID_inst|q\(28),
	datac => \mips_cpu|dp|IF_ID_inst|q\(26),
	datad => \mips_cpu|dp|comb~1_combout\,
	combout => \mips_cpu|dp|comb~3_combout\);

-- Location: LCCOMB_X19_Y22_N10
\mips_cpu|dp|jr_pc_mux|y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|jr_pc_mux|y[0]~0_combout\ = (\mips_cpu|dp|ID_EX_rd2|q\(0) & \mips_cpu|dp|comb~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_rd2|q\(0),
	datad => \mips_cpu|dp|comb~3_combout\,
	combout => \mips_cpu|dp|jr_pc_mux|y[0]~0_combout\);

-- Location: FF_X21_Y22_N9
\mips_cpu|dp|pcreg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcreg|q[0]~0_combout\,
	asdata => \mips_cpu|dp|jr_pc_mux|y[0]~0_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	sload => \mips_cpu|c|md|Selector8~1_combout\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(0));

-- Location: FF_X16_Y25_N11
\mips_cpu|dp|IF_ID_pcplus4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|pcreg|q\(0),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(0));

-- Location: LCCOMB_X16_Y25_N10
\mips_cpu|dp|wd_mux|y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wd_mux|y[0]~0_combout\ = (\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|IF_ID_pcplus4|q\(0)))) # (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|resmux|y[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|resmux|y[0]~0_combout\,
	datac => \mips_cpu|dp|IF_ID_pcplus4|q\(0),
	datad => \mips_cpu|c|md|Selector8~1_combout\,
	combout => \mips_cpu|dp|wd_mux|y[0]~0_combout\);

-- Location: LCCOMB_X19_Y25_N24
\mips_cpu|dp|rf|Decoder0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~23_combout\ = (\mips_cpu|c|md|Selector8~1_combout\) # ((\mips_cpu|dp|MEM_WB_wrmux|q\(2) & (\mips_cpu|dp|MEM_WB_wrmux|q\(3) & \mips_cpu|dp|MEM_WB_wrmux|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(3),
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(4),
	combout => \mips_cpu|dp|rf|Decoder0~23_combout\);

-- Location: LCCOMB_X22_Y25_N20
\mips_cpu|dp|rf|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~1_combout\ = (\mips_cpu|dp|MEM_WB_wrmux|q\(0) & (!\mips_cpu|c|md|Selector8~1_combout\ & (!\mips_cpu|dp|MEM_WB_wrmux|q\(1) & \mips_cpu|dp|MEM_WB_C_regwrite|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(0),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(1),
	datad => \mips_cpu|dp|MEM_WB_C_regwrite|q\(0),
	combout => \mips_cpu|dp|rf|Decoder0~1_combout\);

-- Location: LCCOMB_X16_Y25_N8
\mips_cpu|dp|rf|R29[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R29[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~23_combout\ & ((\mips_cpu|dp|rf|Decoder0~1_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~1_combout\ & ((\mips_cpu|dp|rf|R29\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~23_combout\ & (((\mips_cpu|dp|rf|R29\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~23_combout\,
	datac => \mips_cpu|dp|rf|R29\(0),
	datad => \mips_cpu|dp|rf|Decoder0~1_combout\,
	combout => \mips_cpu|dp|rf|R29[0]~0_combout\);

-- Location: FF_X16_Y25_N9
\mips_cpu|dp|rf|R29[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R29[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R29\(0));

-- Location: LCCOMB_X19_Y25_N26
\mips_cpu|dp|rf|Decoder0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~20_combout\ = (!\mips_cpu|dp|MEM_WB_wrmux|q\(2) & (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|MEM_WB_wrmux|q\(3) & \mips_cpu|dp|MEM_WB_wrmux|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(3),
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(4),
	combout => \mips_cpu|dp|rf|Decoder0~20_combout\);

-- Location: LCCOMB_X17_Y25_N0
\mips_cpu|dp|rf|R25[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R25[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~20_combout\ & ((\mips_cpu|dp|rf|Decoder0~1_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~1_combout\ & ((\mips_cpu|dp|rf|R25\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~20_combout\ & (((\mips_cpu|dp|rf|R25\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~20_combout\,
	datac => \mips_cpu|dp|rf|R25\(0),
	datad => \mips_cpu|dp|rf|Decoder0~1_combout\,
	combout => \mips_cpu|dp|rf|R25[0]~0_combout\);

-- Location: FF_X17_Y25_N1
\mips_cpu|dp|rf|R25[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R25[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R25\(0));

-- Location: LCCOMB_X19_Y25_N4
\mips_cpu|dp|rf|Decoder0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~21_combout\ = (\mips_cpu|dp|MEM_WB_wrmux|q\(2) & (!\mips_cpu|c|md|Selector8~1_combout\ & (!\mips_cpu|dp|MEM_WB_wrmux|q\(3) & \mips_cpu|dp|MEM_WB_wrmux|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(3),
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(4),
	combout => \mips_cpu|dp|rf|Decoder0~21_combout\);

-- Location: LCCOMB_X17_Y25_N10
\mips_cpu|dp|rf|R21[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R21[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~21_combout\ & ((\mips_cpu|dp|rf|Decoder0~1_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~1_combout\ & ((\mips_cpu|dp|rf|R21\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~21_combout\ & (((\mips_cpu|dp|rf|R21\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~21_combout\,
	datac => \mips_cpu|dp|rf|R21\(0),
	datad => \mips_cpu|dp|rf|Decoder0~1_combout\,
	combout => \mips_cpu|dp|rf|R21[0]~0_combout\);

-- Location: FF_X17_Y25_N11
\mips_cpu|dp|rf|R21[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R21[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R21\(0));

-- Location: LCCOMB_X19_Y25_N6
\mips_cpu|dp|rf|Decoder0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~22_combout\ = (!\mips_cpu|dp|MEM_WB_wrmux|q\(2) & (!\mips_cpu|c|md|Selector8~1_combout\ & (!\mips_cpu|dp|MEM_WB_wrmux|q\(3) & \mips_cpu|dp|MEM_WB_wrmux|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(3),
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(4),
	combout => \mips_cpu|dp|rf|Decoder0~22_combout\);

-- Location: LCCOMB_X17_Y25_N4
\mips_cpu|dp|rf|R17[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R17[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~22_combout\ & ((\mips_cpu|dp|rf|Decoder0~1_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~1_combout\ & ((\mips_cpu|dp|rf|R17\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~22_combout\ & (((\mips_cpu|dp|rf|R17\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~22_combout\,
	datac => \mips_cpu|dp|rf|R17\(0),
	datad => \mips_cpu|dp|rf|Decoder0~1_combout\,
	combout => \mips_cpu|dp|rf|R17[0]~0_combout\);

-- Location: FF_X17_Y25_N5
\mips_cpu|dp|rf|R17[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R17[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R17\(0));

-- Location: LCCOMB_X17_Y25_N22
\mips_cpu|dp|rf|Mux63~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(23) & ((\mips_cpu|dp|rf|R21\(0)) # ((\mips_cpu|dp|IF_ID_inst|q\(24))))) # (!\mips_cpu|dp|IF_ID_inst|q\(23) & (((\mips_cpu|dp|rf|R17\(0) & !\mips_cpu|dp|IF_ID_inst|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R21\(0),
	datab => \mips_cpu|dp|rf|R17\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(23),
	datad => \mips_cpu|dp|IF_ID_inst|q\(24),
	combout => \mips_cpu|dp|rf|Mux63~0_combout\);

-- Location: LCCOMB_X17_Y25_N24
\mips_cpu|dp|rf|Mux63~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~1_combout\ = (\mips_cpu|dp|rf|Mux63~0_combout\ & ((\mips_cpu|dp|rf|R29\(0)) # ((!\mips_cpu|dp|IF_ID_inst|q\(24))))) # (!\mips_cpu|dp|rf|Mux63~0_combout\ & (((\mips_cpu|dp|rf|R25\(0) & \mips_cpu|dp|IF_ID_inst|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R29\(0),
	datab => \mips_cpu|dp|rf|R25\(0),
	datac => \mips_cpu|dp|rf|Mux63~0_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(24),
	combout => \mips_cpu|dp|rf|Mux63~1_combout\);

-- Location: LCCOMB_X22_Y25_N12
\mips_cpu|dp|rf|Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~5_combout\ = (!\mips_cpu|dp|MEM_WB_wrmux|q\(0) & (!\mips_cpu|c|md|Selector8~1_combout\ & (!\mips_cpu|dp|MEM_WB_wrmux|q\(1) & \mips_cpu|dp|MEM_WB_C_regwrite|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(0),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(1),
	datad => \mips_cpu|dp|MEM_WB_C_regwrite|q\(0),
	combout => \mips_cpu|dp|rf|Decoder0~5_combout\);

-- Location: LCCOMB_X19_Y25_N16
\mips_cpu|dp|rf|Decoder0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~12_combout\ = (\mips_cpu|dp|rf|Decoder0~5_combout\ & ((\mips_cpu|dp|MEM_WB_wrmux|q\(2)) # (\mips_cpu|c|md|Selector8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datac => \mips_cpu|c|md|Selector8~1_combout\,
	datad => \mips_cpu|dp|rf|Decoder0~5_combout\,
	combout => \mips_cpu|dp|rf|Decoder0~12_combout\);

-- Location: LCCOMB_X20_Y23_N12
\mips_cpu|dp|wa_mux|y[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wa_mux|y[3]~0_combout\ = (\mips_cpu|dp|MEM_WB_wrmux|q\(3)) # ((!\mips_cpu|dp|IF_ID_inst|q\(29) & (!\mips_cpu|dp|IF_ID_inst|q\(31) & \mips_cpu|c|md|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(3),
	datab => \mips_cpu|dp|IF_ID_inst|q\(29),
	datac => \mips_cpu|dp|IF_ID_inst|q\(31),
	datad => \mips_cpu|c|md|Selector8~0_combout\,
	combout => \mips_cpu|dp|wa_mux|y[3]~0_combout\);

-- Location: LCCOMB_X19_Y25_N30
\mips_cpu|dp|rf|Decoder0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~26_combout\ = (\mips_cpu|dp|rf|Decoder0~12_combout\ & (\mips_cpu|dp|wa_mux|y[3]~0_combout\ & ((\mips_cpu|c|md|Selector8~1_combout\) # (\mips_cpu|dp|MEM_WB_wrmux|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Decoder0~12_combout\,
	datab => \mips_cpu|dp|wa_mux|y[3]~0_combout\,
	datac => \mips_cpu|c|md|Selector8~1_combout\,
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(4),
	combout => \mips_cpu|dp|rf|Decoder0~26_combout\);

-- Location: LCCOMB_X19_Y25_N8
\mips_cpu|dp|rf|R28[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R28[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~26_combout\ & ((\mips_cpu|dp|wd_mux|y[0]~0_combout\))) # (!\mips_cpu|dp|rf|Decoder0~26_combout\ & (\mips_cpu|dp|rf|R28\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Decoder0~26_combout\,
	datac => \mips_cpu|dp|rf|R28\(0),
	datad => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	combout => \mips_cpu|dp|rf|R28[0]~0_combout\);

-- Location: FF_X19_Y25_N9
\mips_cpu|dp|rf|R28[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R28[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R28\(0));

-- Location: LCCOMB_X19_Y25_N12
\mips_cpu|dp|rf|Decoder0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~25_combout\ = (!\mips_cpu|dp|MEM_WB_wrmux|q\(2) & (\mips_cpu|dp|MEM_WB_wrmux|q\(4) & (!\mips_cpu|c|md|Selector8~1_combout\ & \mips_cpu|dp|rf|Decoder0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|dp|MEM_WB_wrmux|q\(4),
	datac => \mips_cpu|c|md|Selector8~1_combout\,
	datad => \mips_cpu|dp|rf|Decoder0~5_combout\,
	combout => \mips_cpu|dp|rf|Decoder0~25_combout\);

-- Location: LCCOMB_X20_Y25_N20
\mips_cpu|dp|rf|R16[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R16[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~25_combout\ & ((\mips_cpu|dp|wa_mux|y[3]~0_combout\ & ((\mips_cpu|dp|rf|R16\(0)))) # (!\mips_cpu|dp|wa_mux|y[3]~0_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)))) # 
-- (!\mips_cpu|dp|rf|Decoder0~25_combout\ & (((\mips_cpu|dp|rf|R16\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Decoder0~25_combout\,
	datab => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datac => \mips_cpu|dp|rf|R16\(0),
	datad => \mips_cpu|dp|wa_mux|y[3]~0_combout\,
	combout => \mips_cpu|dp|rf|R16[0]~0_combout\);

-- Location: FF_X20_Y25_N21
\mips_cpu|dp|rf|R16[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R16[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R16\(0));

-- Location: LCCOMB_X20_Y25_N26
\mips_cpu|dp|rf|R24[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R24[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~25_combout\ & ((\mips_cpu|dp|wa_mux|y[3]~0_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|wa_mux|y[3]~0_combout\ & ((\mips_cpu|dp|rf|R24\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~25_combout\ & (((\mips_cpu|dp|rf|R24\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Decoder0~25_combout\,
	datab => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datac => \mips_cpu|dp|rf|R24\(0),
	datad => \mips_cpu|dp|wa_mux|y[3]~0_combout\,
	combout => \mips_cpu|dp|rf|R24[0]~0_combout\);

-- Location: FF_X20_Y25_N27
\mips_cpu|dp|rf|R24[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R24[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R24\(0));

-- Location: LCCOMB_X20_Y25_N28
\mips_cpu|dp|rf|Mux63~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~4_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(23) & (((\mips_cpu|dp|IF_ID_inst|q\(24))))) # (!\mips_cpu|dp|IF_ID_inst|q\(23) & ((\mips_cpu|dp|IF_ID_inst|q\(24) & ((\mips_cpu|dp|rf|R24\(0)))) # (!\mips_cpu|dp|IF_ID_inst|q\(24) & 
-- (\mips_cpu|dp|rf|R16\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(23),
	datab => \mips_cpu|dp|rf|R16\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(24),
	datad => \mips_cpu|dp|rf|R24\(0),
	combout => \mips_cpu|dp|rf|Mux63~4_combout\);

-- Location: LCCOMB_X19_Y25_N18
\mips_cpu|dp|rf|Decoder0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~24_combout\ = (\mips_cpu|dp|rf|Decoder0~12_combout\ & (!\mips_cpu|dp|wa_mux|y[3]~0_combout\ & ((\mips_cpu|c|md|Selector8~1_combout\) # (\mips_cpu|dp|MEM_WB_wrmux|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Decoder0~12_combout\,
	datab => \mips_cpu|dp|wa_mux|y[3]~0_combout\,
	datac => \mips_cpu|c|md|Selector8~1_combout\,
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(4),
	combout => \mips_cpu|dp|rf|Decoder0~24_combout\);

-- Location: LCCOMB_X19_Y25_N14
\mips_cpu|dp|rf|R20[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R20[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~24_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~24_combout\ & ((\mips_cpu|dp|rf|R20\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datac => \mips_cpu|dp|rf|R20\(0),
	datad => \mips_cpu|dp|rf|Decoder0~24_combout\,
	combout => \mips_cpu|dp|rf|R20[0]~0_combout\);

-- Location: FF_X19_Y25_N15
\mips_cpu|dp|rf|R20[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R20[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R20\(0));

-- Location: LCCOMB_X20_Y25_N4
\mips_cpu|dp|rf|Mux63~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~5_combout\ = (\mips_cpu|dp|rf|Mux63~4_combout\ & ((\mips_cpu|dp|rf|R28\(0)) # ((!\mips_cpu|dp|IF_ID_inst|q\(23))))) # (!\mips_cpu|dp|rf|Mux63~4_combout\ & (((\mips_cpu|dp|IF_ID_inst|q\(23) & \mips_cpu|dp|rf|R20\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R28\(0),
	datab => \mips_cpu|dp|rf|Mux63~4_combout\,
	datac => \mips_cpu|dp|IF_ID_inst|q\(23),
	datad => \mips_cpu|dp|rf|R20\(0),
	combout => \mips_cpu|dp|rf|Mux63~5_combout\);

-- Location: LCCOMB_X22_Y25_N0
\mips_cpu|dp|rf|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~3_combout\ = (!\mips_cpu|dp|MEM_WB_wrmux|q\(0) & (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|MEM_WB_wrmux|q\(1) & \mips_cpu|dp|MEM_WB_C_regwrite|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(0),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(1),
	datad => \mips_cpu|dp|MEM_WB_C_regwrite|q\(0),
	combout => \mips_cpu|dp|rf|Decoder0~3_combout\);

-- Location: LCCOMB_X17_Y25_N20
\mips_cpu|dp|rf|R18[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R18[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~22_combout\ & ((\mips_cpu|dp|rf|Decoder0~3_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~3_combout\ & ((\mips_cpu|dp|rf|R18\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~22_combout\ & (((\mips_cpu|dp|rf|R18\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~22_combout\,
	datac => \mips_cpu|dp|rf|R18\(0),
	datad => \mips_cpu|dp|rf|Decoder0~3_combout\,
	combout => \mips_cpu|dp|rf|R18[0]~0_combout\);

-- Location: FF_X17_Y25_N21
\mips_cpu|dp|rf|R18[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R18[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R18\(0));

-- Location: LCCOMB_X16_Y25_N26
\mips_cpu|dp|rf|R26[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R26[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~20_combout\ & ((\mips_cpu|dp|rf|Decoder0~3_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~3_combout\ & ((\mips_cpu|dp|rf|R26\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~20_combout\ & (((\mips_cpu|dp|rf|R26\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~20_combout\,
	datac => \mips_cpu|dp|rf|R26\(0),
	datad => \mips_cpu|dp|rf|Decoder0~3_combout\,
	combout => \mips_cpu|dp|rf|R26[0]~0_combout\);

-- Location: FF_X16_Y25_N27
\mips_cpu|dp|rf|R26[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R26[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R26\(0));

-- Location: LCCOMB_X20_Y25_N30
\mips_cpu|dp|rf|Mux63~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~2_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(23) & (((\mips_cpu|dp|IF_ID_inst|q\(24))))) # (!\mips_cpu|dp|IF_ID_inst|q\(23) & ((\mips_cpu|dp|IF_ID_inst|q\(24) & ((\mips_cpu|dp|rf|R26\(0)))) # (!\mips_cpu|dp|IF_ID_inst|q\(24) & 
-- (\mips_cpu|dp|rf|R18\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R18\(0),
	datab => \mips_cpu|dp|rf|R26\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(23),
	datad => \mips_cpu|dp|IF_ID_inst|q\(24),
	combout => \mips_cpu|dp|rf|Mux63~2_combout\);

-- Location: LCCOMB_X16_Y25_N28
\mips_cpu|dp|rf|R30[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R30[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~23_combout\ & ((\mips_cpu|dp|rf|Decoder0~3_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~3_combout\ & ((\mips_cpu|dp|rf|R30\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~23_combout\ & (((\mips_cpu|dp|rf|R30\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~23_combout\,
	datac => \mips_cpu|dp|rf|R30\(0),
	datad => \mips_cpu|dp|rf|Decoder0~3_combout\,
	combout => \mips_cpu|dp|rf|R30[0]~0_combout\);

-- Location: FF_X16_Y25_N29
\mips_cpu|dp|rf|R30[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R30[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R30\(0));

-- Location: LCCOMB_X17_Y25_N2
\mips_cpu|dp|rf|R22[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R22[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~21_combout\ & ((\mips_cpu|dp|rf|Decoder0~3_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~3_combout\ & ((\mips_cpu|dp|rf|R22\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~21_combout\ & (((\mips_cpu|dp|rf|R22\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~21_combout\,
	datac => \mips_cpu|dp|rf|R22\(0),
	datad => \mips_cpu|dp|rf|Decoder0~3_combout\,
	combout => \mips_cpu|dp|rf|R22[0]~0_combout\);

-- Location: FF_X17_Y25_N3
\mips_cpu|dp|rf|R22[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R22[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R22\(0));

-- Location: LCCOMB_X20_Y25_N10
\mips_cpu|dp|rf|Mux63~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~3_combout\ = (\mips_cpu|dp|rf|Mux63~2_combout\ & ((\mips_cpu|dp|rf|R30\(0)) # ((!\mips_cpu|dp|IF_ID_inst|q\(23))))) # (!\mips_cpu|dp|rf|Mux63~2_combout\ & (((\mips_cpu|dp|IF_ID_inst|q\(23) & \mips_cpu|dp|rf|R22\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Mux63~2_combout\,
	datab => \mips_cpu|dp|rf|R30\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(23),
	datad => \mips_cpu|dp|rf|R22\(0),
	combout => \mips_cpu|dp|rf|Mux63~3_combout\);

-- Location: LCCOMB_X20_Y25_N6
\mips_cpu|dp|rf|Mux63~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~6_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(22) & ((\mips_cpu|dp|IF_ID_inst|q\(21)) # ((\mips_cpu|dp|rf|Mux63~3_combout\)))) # (!\mips_cpu|dp|IF_ID_inst|q\(22) & (!\mips_cpu|dp|IF_ID_inst|q\(21) & (\mips_cpu|dp|rf|Mux63~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(22),
	datab => \mips_cpu|dp|IF_ID_inst|q\(21),
	datac => \mips_cpu|dp|rf|Mux63~5_combout\,
	datad => \mips_cpu|dp|rf|Mux63~3_combout\,
	combout => \mips_cpu|dp|rf|Mux63~6_combout\);

-- Location: LCCOMB_X22_Y25_N22
\mips_cpu|dp|rf|Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~7_combout\ = (\mips_cpu|dp|MEM_WB_C_regwrite|q\(0) & ((\mips_cpu|c|md|Selector8~1_combout\) # ((\mips_cpu|dp|MEM_WB_wrmux|q\(0) & \mips_cpu|dp|MEM_WB_wrmux|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(0),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(1),
	datad => \mips_cpu|dp|MEM_WB_C_regwrite|q\(0),
	combout => \mips_cpu|dp|rf|Decoder0~7_combout\);

-- Location: LCCOMB_X16_Y25_N14
\mips_cpu|dp|rf|R27[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R27[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~20_combout\ & ((\mips_cpu|dp|rf|Decoder0~7_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~7_combout\ & ((\mips_cpu|dp|rf|R27\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~20_combout\ & (((\mips_cpu|dp|rf|R27\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~20_combout\,
	datac => \mips_cpu|dp|rf|R27\(0),
	datad => \mips_cpu|dp|rf|Decoder0~7_combout\,
	combout => \mips_cpu|dp|rf|R27[0]~0_combout\);

-- Location: FF_X16_Y25_N15
\mips_cpu|dp|rf|R27[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R27[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R27\(0));

-- Location: LCCOMB_X17_Y25_N16
\mips_cpu|dp|rf|R19[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R19[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~22_combout\ & ((\mips_cpu|dp|rf|Decoder0~7_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~7_combout\ & ((\mips_cpu|dp|rf|R19\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~22_combout\ & (((\mips_cpu|dp|rf|R19\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~22_combout\,
	datac => \mips_cpu|dp|rf|R19\(0),
	datad => \mips_cpu|dp|rf|Decoder0~7_combout\,
	combout => \mips_cpu|dp|rf|R19[0]~0_combout\);

-- Location: FF_X17_Y25_N17
\mips_cpu|dp|rf|R19[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R19[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R19\(0));

-- Location: LCCOMB_X17_Y25_N14
\mips_cpu|dp|rf|R23[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R23[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~21_combout\ & ((\mips_cpu|dp|rf|Decoder0~7_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~7_combout\ & ((\mips_cpu|dp|rf|R23\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~21_combout\ & (((\mips_cpu|dp|rf|R23\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~21_combout\,
	datac => \mips_cpu|dp|rf|R23\(0),
	datad => \mips_cpu|dp|rf|Decoder0~7_combout\,
	combout => \mips_cpu|dp|rf|R23[0]~0_combout\);

-- Location: FF_X17_Y25_N15
\mips_cpu|dp|rf|R23[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R23[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R23\(0));

-- Location: LCCOMB_X17_Y25_N18
\mips_cpu|dp|rf|Mux63~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~7_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(23) & (((\mips_cpu|dp|rf|R23\(0)) # (\mips_cpu|dp|IF_ID_inst|q\(24))))) # (!\mips_cpu|dp|IF_ID_inst|q\(23) & (\mips_cpu|dp|rf|R19\(0) & ((!\mips_cpu|dp|IF_ID_inst|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(23),
	datab => \mips_cpu|dp|rf|R19\(0),
	datac => \mips_cpu|dp|rf|R23\(0),
	datad => \mips_cpu|dp|IF_ID_inst|q\(24),
	combout => \mips_cpu|dp|rf|Mux63~7_combout\);

-- Location: LCCOMB_X16_Y25_N16
\mips_cpu|dp|rf|R31[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R31[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~23_combout\ & ((\mips_cpu|dp|rf|Decoder0~7_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~7_combout\ & ((\mips_cpu|dp|rf|R31\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~23_combout\ & (((\mips_cpu|dp|rf|R31\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~23_combout\,
	datac => \mips_cpu|dp|rf|R31\(0),
	datad => \mips_cpu|dp|rf|Decoder0~7_combout\,
	combout => \mips_cpu|dp|rf|R31[0]~0_combout\);

-- Location: FF_X16_Y25_N17
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

-- Location: LCCOMB_X17_Y25_N28
\mips_cpu|dp|rf|Mux63~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~8_combout\ = (\mips_cpu|dp|rf|Mux63~7_combout\ & (((\mips_cpu|dp|rf|R31\(0)) # (!\mips_cpu|dp|IF_ID_inst|q\(24))))) # (!\mips_cpu|dp|rf|Mux63~7_combout\ & (\mips_cpu|dp|rf|R27\(0) & ((\mips_cpu|dp|IF_ID_inst|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R27\(0),
	datab => \mips_cpu|dp|rf|Mux63~7_combout\,
	datac => \mips_cpu|dp|rf|R31\(0),
	datad => \mips_cpu|dp|IF_ID_inst|q\(24),
	combout => \mips_cpu|dp|rf|Mux63~8_combout\);

-- Location: LCCOMB_X17_Y25_N30
\mips_cpu|dp|rf|Mux63~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~9_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(21) & ((\mips_cpu|dp|rf|Mux63~6_combout\ & ((\mips_cpu|dp|rf|Mux63~8_combout\))) # (!\mips_cpu|dp|rf|Mux63~6_combout\ & (\mips_cpu|dp|rf|Mux63~1_combout\)))) # (!\mips_cpu|dp|IF_ID_inst|q\(21) 
-- & (((\mips_cpu|dp|rf|Mux63~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(21),
	datab => \mips_cpu|dp|rf|Mux63~1_combout\,
	datac => \mips_cpu|dp|rf|Mux63~6_combout\,
	datad => \mips_cpu|dp|rf|Mux63~8_combout\,
	combout => \mips_cpu|dp|rf|Mux63~9_combout\);

-- Location: LCCOMB_X19_Y25_N22
\mips_cpu|dp|rf|Decoder0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~9_combout\ = (!\mips_cpu|c|md|Selector8~1_combout\ & (!\mips_cpu|dp|MEM_WB_wrmux|q\(3) & !\mips_cpu|dp|MEM_WB_wrmux|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(3),
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(4),
	combout => \mips_cpu|dp|rf|Decoder0~9_combout\);

-- Location: LCCOMB_X16_Y25_N22
\mips_cpu|dp|rf|Decoder0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~16_combout\ = (!\mips_cpu|dp|MEM_WB_wrmux|q\(2) & (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|rf|Decoder0~9_combout\ & \mips_cpu|dp|rf|Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|rf|Decoder0~9_combout\,
	datad => \mips_cpu|dp|rf|Decoder0~3_combout\,
	combout => \mips_cpu|dp|rf|Decoder0~16_combout\);

-- Location: LCCOMB_X16_Y25_N30
\mips_cpu|dp|rf|R2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R2[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~16_combout\ & ((\mips_cpu|dp|wd_mux|y[0]~0_combout\))) # (!\mips_cpu|dp|rf|Decoder0~16_combout\ & (\mips_cpu|dp|rf|R2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Decoder0~16_combout\,
	datac => \mips_cpu|dp|rf|R2\(0),
	datad => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	combout => \mips_cpu|dp|rf|R2[0]~0_combout\);

-- Location: FF_X16_Y25_N31
\mips_cpu|dp|rf|R2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R2\(0));

-- Location: LCCOMB_X16_Y25_N4
\mips_cpu|dp|rf|Decoder0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~15_combout\ = (!\mips_cpu|dp|MEM_WB_wrmux|q\(2) & (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|rf|Decoder0~9_combout\ & \mips_cpu|dp|rf|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|rf|Decoder0~9_combout\,
	datad => \mips_cpu|dp|rf|Decoder0~1_combout\,
	combout => \mips_cpu|dp|rf|Decoder0~15_combout\);

-- Location: LCCOMB_X17_Y24_N4
\mips_cpu|dp|rf|R1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R1[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~15_combout\ & ((\mips_cpu|dp|wd_mux|y[0]~0_combout\))) # (!\mips_cpu|dp|rf|Decoder0~15_combout\ & (\mips_cpu|dp|rf|R1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Decoder0~15_combout\,
	datac => \mips_cpu|dp|rf|R1\(0),
	datad => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	combout => \mips_cpu|dp|rf|R1[0]~0_combout\);

-- Location: FF_X17_Y24_N5
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

-- Location: LCCOMB_X16_Y25_N2
\mips_cpu|dp|rf|Decoder0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~14_combout\ = (!\mips_cpu|dp|MEM_WB_wrmux|q\(2) & (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|rf|Decoder0~9_combout\ & \mips_cpu|dp|rf|Decoder0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|rf|Decoder0~9_combout\,
	datad => \mips_cpu|dp|rf|Decoder0~7_combout\,
	combout => \mips_cpu|dp|rf|Decoder0~14_combout\);

-- Location: LCCOMB_X16_Y25_N12
\mips_cpu|dp|rf|R3[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R3[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~14_combout\ & ((\mips_cpu|dp|wd_mux|y[0]~0_combout\))) # (!\mips_cpu|dp|rf|Decoder0~14_combout\ & (\mips_cpu|dp|rf|R3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|rf|Decoder0~14_combout\,
	datac => \mips_cpu|dp|rf|R3\(0),
	datad => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	combout => \mips_cpu|dp|rf|R3[0]~0_combout\);

-- Location: FF_X16_Y25_N13
\mips_cpu|dp|rf|R3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R3\(0));

-- Location: LCCOMB_X17_Y24_N20
\mips_cpu|dp|rf|Mux63~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~14_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(21) & ((\mips_cpu|dp|IF_ID_inst|q\(22) & ((\mips_cpu|dp|rf|R3\(0)))) # (!\mips_cpu|dp|IF_ID_inst|q\(22) & (\mips_cpu|dp|rf|R1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(21),
	datab => \mips_cpu|dp|rf|R1\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(22),
	datad => \mips_cpu|dp|rf|R3\(0),
	combout => \mips_cpu|dp|rf|Mux63~14_combout\);

-- Location: LCCOMB_X17_Y24_N26
\mips_cpu|dp|rf|Mux63~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~15_combout\ = (\mips_cpu|dp|rf|Mux63~14_combout\) # ((\mips_cpu|dp|rf|R2\(0) & (\mips_cpu|dp|IF_ID_inst|q\(22) & !\mips_cpu|dp|IF_ID_inst|q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R2\(0),
	datab => \mips_cpu|dp|rf|Mux63~14_combout\,
	datac => \mips_cpu|dp|IF_ID_inst|q\(22),
	datad => \mips_cpu|dp|IF_ID_inst|q\(21),
	combout => \mips_cpu|dp|rf|Mux63~15_combout\);

-- Location: LCCOMB_X16_Y25_N20
\mips_cpu|dp|rf|Decoder0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~10_combout\ = (\mips_cpu|dp|rf|Decoder0~9_combout\ & (\mips_cpu|dp|rf|Decoder0~3_combout\ & ((\mips_cpu|dp|MEM_WB_wrmux|q\(2)) # (\mips_cpu|c|md|Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|rf|Decoder0~9_combout\,
	datad => \mips_cpu|dp|rf|Decoder0~3_combout\,
	combout => \mips_cpu|dp|rf|Decoder0~10_combout\);

-- Location: LCCOMB_X16_Y25_N0
\mips_cpu|dp|rf|R6[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R6[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~10_combout\ & ((\mips_cpu|dp|wd_mux|y[0]~0_combout\))) # (!\mips_cpu|dp|rf|Decoder0~10_combout\ & (\mips_cpu|dp|rf|R6\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|rf|Decoder0~10_combout\,
	datac => \mips_cpu|dp|rf|R6\(0),
	datad => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	combout => \mips_cpu|dp|rf|R6[0]~0_combout\);

-- Location: FF_X16_Y25_N1
\mips_cpu|dp|rf|R6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R6\(0));

-- Location: LCCOMB_X16_Y25_N24
\mips_cpu|dp|rf|Decoder0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~13_combout\ = (\mips_cpu|dp|rf|Decoder0~9_combout\ & (\mips_cpu|dp|rf|Decoder0~7_combout\ & ((\mips_cpu|dp|MEM_WB_wrmux|q\(2)) # (\mips_cpu|c|md|Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|rf|Decoder0~9_combout\,
	datad => \mips_cpu|dp|rf|Decoder0~7_combout\,
	combout => \mips_cpu|dp|rf|Decoder0~13_combout\);

-- Location: LCCOMB_X17_Y24_N16
\mips_cpu|dp|rf|R7[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R7[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~13_combout\ & ((\mips_cpu|dp|wd_mux|y[0]~0_combout\))) # (!\mips_cpu|dp|rf|Decoder0~13_combout\ & (\mips_cpu|dp|rf|R7\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|rf|Decoder0~13_combout\,
	datac => \mips_cpu|dp|rf|R7\(0),
	datad => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	combout => \mips_cpu|dp|rf|R7[0]~0_combout\);

-- Location: FF_X17_Y24_N17
\mips_cpu|dp|rf|R7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R7\(0));

-- Location: LCCOMB_X16_Y25_N6
\mips_cpu|dp|rf|Decoder0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~11_combout\ = (\mips_cpu|dp|rf|Decoder0~9_combout\ & (\mips_cpu|dp|rf|Decoder0~1_combout\ & ((\mips_cpu|dp|MEM_WB_wrmux|q\(2)) # (\mips_cpu|c|md|Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|rf|Decoder0~9_combout\,
	datad => \mips_cpu|dp|rf|Decoder0~1_combout\,
	combout => \mips_cpu|dp|rf|Decoder0~11_combout\);

-- Location: LCCOMB_X16_Y25_N18
\mips_cpu|dp|rf|R5[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R5[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~11_combout\ & ((\mips_cpu|dp|wd_mux|y[0]~0_combout\))) # (!\mips_cpu|dp|rf|Decoder0~11_combout\ & (\mips_cpu|dp|rf|R5\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Decoder0~11_combout\,
	datac => \mips_cpu|dp|rf|R5\(0),
	datad => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	combout => \mips_cpu|dp|rf|R5[0]~0_combout\);

-- Location: FF_X16_Y25_N19
\mips_cpu|dp|rf|R5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R5\(0));

-- Location: LCCOMB_X19_Y25_N2
\mips_cpu|dp|rf|R4[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R4[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~12_combout\ & ((\mips_cpu|dp|rf|Decoder0~9_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~9_combout\ & ((\mips_cpu|dp|rf|R4\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~12_combout\ & (((\mips_cpu|dp|rf|R4\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~12_combout\,
	datac => \mips_cpu|dp|rf|R4\(0),
	datad => \mips_cpu|dp|rf|Decoder0~9_combout\,
	combout => \mips_cpu|dp|rf|R4[0]~0_combout\);

-- Location: FF_X19_Y25_N3
\mips_cpu|dp|rf|R4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R4\(0));

-- Location: LCCOMB_X17_Y24_N6
\mips_cpu|dp|rf|Mux63~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~12_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(22) & (((\mips_cpu|dp|IF_ID_inst|q\(21))))) # (!\mips_cpu|dp|IF_ID_inst|q\(22) & ((\mips_cpu|dp|IF_ID_inst|q\(21) & (\mips_cpu|dp|rf|R5\(0))) # (!\mips_cpu|dp|IF_ID_inst|q\(21) & 
-- ((\mips_cpu|dp|rf|R4\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(22),
	datab => \mips_cpu|dp|rf|R5\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(21),
	datad => \mips_cpu|dp|rf|R4\(0),
	combout => \mips_cpu|dp|rf|Mux63~12_combout\);

-- Location: LCCOMB_X17_Y24_N24
\mips_cpu|dp|rf|Mux63~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~13_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(22) & ((\mips_cpu|dp|rf|Mux63~12_combout\ & ((\mips_cpu|dp|rf|R7\(0)))) # (!\mips_cpu|dp|rf|Mux63~12_combout\ & (\mips_cpu|dp|rf|R6\(0))))) # (!\mips_cpu|dp|IF_ID_inst|q\(22) & 
-- (((\mips_cpu|dp|rf|Mux63~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R6\(0),
	datab => \mips_cpu|dp|rf|R7\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(22),
	datad => \mips_cpu|dp|rf|Mux63~12_combout\,
	combout => \mips_cpu|dp|rf|Mux63~13_combout\);

-- Location: LCCOMB_X17_Y24_N12
\mips_cpu|dp|rf|Mux63~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~16_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(23) & (((\mips_cpu|dp|IF_ID_inst|q\(24)) # (\mips_cpu|dp|rf|Mux63~13_combout\)))) # (!\mips_cpu|dp|IF_ID_inst|q\(23) & (\mips_cpu|dp|rf|Mux63~15_combout\ & (!\mips_cpu|dp|IF_ID_inst|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Mux63~15_combout\,
	datab => \mips_cpu|dp|IF_ID_inst|q\(23),
	datac => \mips_cpu|dp|IF_ID_inst|q\(24),
	datad => \mips_cpu|dp|rf|Mux63~13_combout\,
	combout => \mips_cpu|dp|rf|Mux63~16_combout\);

-- Location: LCCOMB_X19_Y25_N10
\mips_cpu|dp|rf|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~0_combout\ = (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|MEM_WB_wrmux|q\(3) & !\mips_cpu|dp|MEM_WB_wrmux|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(3),
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(4),
	combout => \mips_cpu|dp|rf|Decoder0~0_combout\);

-- Location: LCCOMB_X22_Y25_N14
\mips_cpu|dp|rf|Decoder0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~19_combout\ = (\mips_cpu|dp|rf|Decoder0~7_combout\ & (\mips_cpu|dp|rf|Decoder0~0_combout\ & ((\mips_cpu|dp|MEM_WB_wrmux|q\(2)) # (\mips_cpu|c|md|Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|rf|Decoder0~7_combout\,
	datad => \mips_cpu|dp|rf|Decoder0~0_combout\,
	combout => \mips_cpu|dp|rf|Decoder0~19_combout\);

-- Location: LCCOMB_X22_Y25_N26
\mips_cpu|dp|rf|R15[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R15[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~19_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~19_combout\ & ((\mips_cpu|dp|rf|R15\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~19_combout\,
	datac => \mips_cpu|dp|rf|R15\(0),
	combout => \mips_cpu|dp|rf|R15[0]~0_combout\);

-- Location: FF_X22_Y25_N27
\mips_cpu|dp|rf|R15[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R15[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R15\(0));

-- Location: LCCOMB_X22_Y25_N28
\mips_cpu|dp|rf|Decoder0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~18_combout\ = (\mips_cpu|dp|rf|Decoder0~0_combout\ & (\mips_cpu|dp|rf|Decoder0~1_combout\ & ((\mips_cpu|dp|MEM_WB_wrmux|q\(2)) # (\mips_cpu|c|md|Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|rf|Decoder0~0_combout\,
	datad => \mips_cpu|dp|rf|Decoder0~1_combout\,
	combout => \mips_cpu|dp|rf|Decoder0~18_combout\);

-- Location: LCCOMB_X22_Y25_N8
\mips_cpu|dp|rf|R13[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R13[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~18_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~18_combout\ & ((\mips_cpu|dp|rf|R13\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datac => \mips_cpu|dp|rf|R13\(0),
	datad => \mips_cpu|dp|rf|Decoder0~18_combout\,
	combout => \mips_cpu|dp|rf|R13[0]~0_combout\);

-- Location: FF_X22_Y25_N9
\mips_cpu|dp|rf|R13[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R13[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R13\(0));

-- Location: LCCOMB_X19_Y25_N28
\mips_cpu|dp|rf|R12[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R12[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~12_combout\ & ((\mips_cpu|dp|rf|Decoder0~0_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~0_combout\ & ((\mips_cpu|dp|rf|R12\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~12_combout\ & (((\mips_cpu|dp|rf|R12\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~12_combout\,
	datac => \mips_cpu|dp|rf|R12\(0),
	datad => \mips_cpu|dp|rf|Decoder0~0_combout\,
	combout => \mips_cpu|dp|rf|R12[0]~0_combout\);

-- Location: FF_X19_Y25_N29
\mips_cpu|dp|rf|R12[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R12[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R12\(0));

-- Location: LCCOMB_X21_Y25_N18
\mips_cpu|dp|rf|Mux63~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~17_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(21) & ((\mips_cpu|dp|rf|R13\(0)) # ((\mips_cpu|dp|IF_ID_inst|q\(22))))) # (!\mips_cpu|dp|IF_ID_inst|q\(21) & (((!\mips_cpu|dp|IF_ID_inst|q\(22) & \mips_cpu|dp|rf|R12\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R13\(0),
	datab => \mips_cpu|dp|IF_ID_inst|q\(21),
	datac => \mips_cpu|dp|IF_ID_inst|q\(22),
	datad => \mips_cpu|dp|rf|R12\(0),
	combout => \mips_cpu|dp|rf|Mux63~17_combout\);

-- Location: LCCOMB_X22_Y25_N10
\mips_cpu|dp|rf|Decoder0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~17_combout\ = (\mips_cpu|dp|rf|Decoder0~0_combout\ & (\mips_cpu|dp|rf|Decoder0~3_combout\ & ((\mips_cpu|dp|MEM_WB_wrmux|q\(2)) # (\mips_cpu|c|md|Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|rf|Decoder0~0_combout\,
	datad => \mips_cpu|dp|rf|Decoder0~3_combout\,
	combout => \mips_cpu|dp|rf|Decoder0~17_combout\);

-- Location: LCCOMB_X22_Y25_N6
\mips_cpu|dp|rf|R14[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R14[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~17_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~17_combout\ & ((\mips_cpu|dp|rf|R14\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datac => \mips_cpu|dp|rf|R14\(0),
	datad => \mips_cpu|dp|rf|Decoder0~17_combout\,
	combout => \mips_cpu|dp|rf|R14[0]~0_combout\);

-- Location: FF_X22_Y25_N7
\mips_cpu|dp|rf|R14[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R14[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R14\(0));

-- Location: LCCOMB_X21_Y25_N4
\mips_cpu|dp|rf|Mux63~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~18_combout\ = (\mips_cpu|dp|rf|Mux63~17_combout\ & ((\mips_cpu|dp|rf|R15\(0)) # ((!\mips_cpu|dp|IF_ID_inst|q\(22))))) # (!\mips_cpu|dp|rf|Mux63~17_combout\ & (((\mips_cpu|dp|IF_ID_inst|q\(22) & \mips_cpu|dp|rf|R14\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R15\(0),
	datab => \mips_cpu|dp|rf|Mux63~17_combout\,
	datac => \mips_cpu|dp|IF_ID_inst|q\(22),
	datad => \mips_cpu|dp|rf|R14\(0),
	combout => \mips_cpu|dp|rf|Mux63~18_combout\);

-- Location: LCCOMB_X22_Y25_N16
\mips_cpu|dp|rf|Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~8_combout\ = (!\mips_cpu|dp|MEM_WB_wrmux|q\(2) & (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|rf|Decoder0~7_combout\ & \mips_cpu|dp|rf|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|rf|Decoder0~7_combout\,
	datad => \mips_cpu|dp|rf|Decoder0~0_combout\,
	combout => \mips_cpu|dp|rf|Decoder0~8_combout\);

-- Location: LCCOMB_X22_Y25_N4
\mips_cpu|dp|rf|R11[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R11[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~8_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~8_combout\ & ((\mips_cpu|dp|rf|R11\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datac => \mips_cpu|dp|rf|R11\(0),
	datad => \mips_cpu|dp|rf|Decoder0~8_combout\,
	combout => \mips_cpu|dp|rf|R11[0]~0_combout\);

-- Location: FF_X22_Y25_N5
\mips_cpu|dp|rf|R11[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R11[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R11\(0));

-- Location: LCCOMB_X22_Y25_N18
\mips_cpu|dp|rf|Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~4_combout\ = (!\mips_cpu|dp|MEM_WB_wrmux|q\(2) & (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|rf|Decoder0~0_combout\ & \mips_cpu|dp|rf|Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|rf|Decoder0~0_combout\,
	datad => \mips_cpu|dp|rf|Decoder0~3_combout\,
	combout => \mips_cpu|dp|rf|Decoder0~4_combout\);

-- Location: LCCOMB_X22_Y25_N2
\mips_cpu|dp|rf|R10[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R10[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~4_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~4_combout\ & ((\mips_cpu|dp|rf|R10\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datac => \mips_cpu|dp|rf|R10\(0),
	datad => \mips_cpu|dp|rf|Decoder0~4_combout\,
	combout => \mips_cpu|dp|rf|R10[0]~0_combout\);

-- Location: FF_X22_Y25_N3
\mips_cpu|dp|rf|R10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R10[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R10\(0));

-- Location: LCCOMB_X19_Y25_N20
\mips_cpu|dp|rf|Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~6_combout\ = (!\mips_cpu|dp|MEM_WB_wrmux|q\(2) & (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|MEM_WB_wrmux|q\(3) & !\mips_cpu|dp|MEM_WB_wrmux|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|MEM_WB_wrmux|q\(3),
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(4),
	combout => \mips_cpu|dp|rf|Decoder0~6_combout\);

-- Location: LCCOMB_X19_Y25_N0
\mips_cpu|dp|rf|R8[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R8[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~6_combout\ & ((\mips_cpu|dp|rf|Decoder0~5_combout\ & (\mips_cpu|dp|wd_mux|y[0]~0_combout\)) # (!\mips_cpu|dp|rf|Decoder0~5_combout\ & ((\mips_cpu|dp|rf|R8\(0)))))) # 
-- (!\mips_cpu|dp|rf|Decoder0~6_combout\ & (((\mips_cpu|dp|rf|R8\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	datab => \mips_cpu|dp|rf|Decoder0~6_combout\,
	datac => \mips_cpu|dp|rf|R8\(0),
	datad => \mips_cpu|dp|rf|Decoder0~5_combout\,
	combout => \mips_cpu|dp|rf|R8[0]~0_combout\);

-- Location: FF_X19_Y25_N1
\mips_cpu|dp|rf|R8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R8[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R8\(0));

-- Location: LCCOMB_X21_Y25_N14
\mips_cpu|dp|rf|Mux63~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~10_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(22) & ((\mips_cpu|dp|rf|R10\(0)) # ((\mips_cpu|dp|IF_ID_inst|q\(21))))) # (!\mips_cpu|dp|IF_ID_inst|q\(22) & (((\mips_cpu|dp|rf|R8\(0) & !\mips_cpu|dp|IF_ID_inst|q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R10\(0),
	datab => \mips_cpu|dp|IF_ID_inst|q\(22),
	datac => \mips_cpu|dp|rf|R8\(0),
	datad => \mips_cpu|dp|IF_ID_inst|q\(21),
	combout => \mips_cpu|dp|rf|Mux63~10_combout\);

-- Location: LCCOMB_X22_Y25_N30
\mips_cpu|dp|rf|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Decoder0~2_combout\ = (!\mips_cpu|dp|MEM_WB_wrmux|q\(2) & (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|rf|Decoder0~0_combout\ & \mips_cpu|dp|rf|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|rf|Decoder0~0_combout\,
	datad => \mips_cpu|dp|rf|Decoder0~1_combout\,
	combout => \mips_cpu|dp|rf|Decoder0~2_combout\);

-- Location: LCCOMB_X22_Y25_N24
\mips_cpu|dp|rf|R9[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|R9[0]~0_combout\ = (\mips_cpu|dp|rf|Decoder0~2_combout\ & ((\mips_cpu|dp|wd_mux|y[0]~0_combout\))) # (!\mips_cpu|dp|rf|Decoder0~2_combout\ & (\mips_cpu|dp|rf|R9\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Decoder0~2_combout\,
	datac => \mips_cpu|dp|rf|R9\(0),
	datad => \mips_cpu|dp|wd_mux|y[0]~0_combout\,
	combout => \mips_cpu|dp|rf|R9[0]~0_combout\);

-- Location: FF_X22_Y25_N25
\mips_cpu|dp|rf|R9[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|rf|R9[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|rf|R9\(0));

-- Location: LCCOMB_X21_Y25_N24
\mips_cpu|dp|rf|Mux63~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~11_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(21) & ((\mips_cpu|dp|rf|Mux63~10_combout\ & (\mips_cpu|dp|rf|R11\(0))) # (!\mips_cpu|dp|rf|Mux63~10_combout\ & ((\mips_cpu|dp|rf|R9\(0)))))) # (!\mips_cpu|dp|IF_ID_inst|q\(21) & 
-- (((\mips_cpu|dp|rf|Mux63~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R11\(0),
	datab => \mips_cpu|dp|IF_ID_inst|q\(21),
	datac => \mips_cpu|dp|rf|Mux63~10_combout\,
	datad => \mips_cpu|dp|rf|R9\(0),
	combout => \mips_cpu|dp|rf|Mux63~11_combout\);

-- Location: LCCOMB_X17_Y24_N22
\mips_cpu|dp|rf|Mux63~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux63~19_combout\ = (\mips_cpu|dp|rf|Mux63~16_combout\ & (((\mips_cpu|dp|rf|Mux63~18_combout\)) # (!\mips_cpu|dp|IF_ID_inst|q\(24)))) # (!\mips_cpu|dp|rf|Mux63~16_combout\ & (\mips_cpu|dp|IF_ID_inst|q\(24) & 
-- ((\mips_cpu|dp|rf|Mux63~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Mux63~16_combout\,
	datab => \mips_cpu|dp|IF_ID_inst|q\(24),
	datac => \mips_cpu|dp|rf|Mux63~18_combout\,
	datad => \mips_cpu|dp|rf|Mux63~11_combout\,
	combout => \mips_cpu|dp|rf|Mux63~19_combout\);

-- Location: LCCOMB_X20_Y24_N16
\mips_cpu|dp|WB_ID_fwd_1|y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|WB_ID_fwd_1|y[0]~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(25) & (\mips_cpu|dp|rf|Mux63~9_combout\)) # (!\mips_cpu|dp|IF_ID_inst|q\(25) & ((\mips_cpu|dp|rf|Mux63~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(25),
	datac => \mips_cpu|dp|rf|Mux63~9_combout\,
	datad => \mips_cpu|dp|rf|Mux63~19_combout\,
	combout => \mips_cpu|dp|WB_ID_fwd_1|y[0]~0_combout\);

-- Location: LCCOMB_X20_Y24_N18
\mips_cpu|dp|WB_ID_fwd_1|y[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|WB_ID_fwd_1|y[0]~1_combout\ = (\mips_cpu|fw|Equal4~2_combout\ & ((\mips_cpu|dp|MEM_WB_C_regwrite|q\(0) & (\mips_cpu|dp|resmux|y[0]~0_combout\)) # (!\mips_cpu|dp|MEM_WB_C_regwrite|q\(0) & ((\mips_cpu|dp|WB_ID_fwd_1|y[0]~0_combout\))))) # 
-- (!\mips_cpu|fw|Equal4~2_combout\ & (((\mips_cpu|dp|WB_ID_fwd_1|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|Equal4~2_combout\,
	datab => \mips_cpu|dp|MEM_WB_C_regwrite|q\(0),
	datac => \mips_cpu|dp|resmux|y[0]~0_combout\,
	datad => \mips_cpu|dp|WB_ID_fwd_1|y[0]~0_combout\,
	combout => \mips_cpu|dp|WB_ID_fwd_1|y[0]~1_combout\);

-- Location: FF_X20_Y24_N19
\mips_cpu|dp|ID_EX_rd1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|WB_ID_fwd_1|y[0]~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_rd1|q\(0));

-- Location: LCCOMB_X20_Y24_N2
\mips_cpu|dp|MEM_WB_fwd_1|y[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[0]~13_combout\ = (\mips_cpu|fw|ForwardA[1]~3_combout\ & ((\mips_cpu|dp|EX_MEM_alu|q\(0)))) # (!\mips_cpu|fw|ForwardA[1]~3_combout\ & (\mips_cpu|dp|ID_EX_rd1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~3_combout\,
	datab => \mips_cpu|dp|ID_EX_rd1|q\(0),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(0),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[0]~13_combout\);

-- Location: LCCOMB_X20_Y24_N6
\mips_cpu|dp|MEM_WB_fwd_1|y[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[0]~14_combout\ = (\mips_cpu|fw|ForwardA[0]~7_combout\ & ((\mips_cpu|dp|resmux|y[0]~0_combout\))) # (!\mips_cpu|fw|ForwardA[0]~7_combout\ & (\mips_cpu|dp|MEM_WB_fwd_1|y[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[0]~7_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[0]~13_combout\,
	datad => \mips_cpu|dp|resmux|y[0]~0_combout\,
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[0]~14_combout\);

-- Location: LCCOMB_X22_Y21_N4
\mips_cpu|c|ad|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|ad|Mux0~2_combout\ = (!\mips_cpu|c|ad|Mux0~0_combout\) # (!\mips_cpu|c|ID_EX_C_aluop|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datac => \mips_cpu|c|ad|Mux0~0_combout\,
	combout => \mips_cpu|c|ad|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y22_N16
\mips_cpu|dp|alu|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~1_cout\ = CARRY((\mips_cpu|c|ID_EX_C_aluop|q\(0) & \mips_cpu|c|ad|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	datab => \mips_cpu|c|ad|Mux0~2_combout\,
	datad => VCC,
	cout => \mips_cpu|dp|alu|Add0~1_cout\);

-- Location: LCCOMB_X23_Y22_N18
\mips_cpu|dp|alu|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~2_combout\ = (\mips_cpu|dp|alu|b2[0]~33_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[0]~14_combout\ & (\mips_cpu|dp|alu|Add0~1_cout\ & VCC)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[0]~14_combout\ & (!\mips_cpu|dp|alu|Add0~1_cout\)))) # 
-- (!\mips_cpu|dp|alu|b2[0]~33_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[0]~14_combout\ & (!\mips_cpu|dp|alu|Add0~1_cout\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[0]~14_combout\ & ((\mips_cpu|dp|alu|Add0~1_cout\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~3\ = CARRY((\mips_cpu|dp|alu|b2[0]~33_combout\ & (!\mips_cpu|dp|MEM_WB_fwd_1|y[0]~14_combout\ & !\mips_cpu|dp|alu|Add0~1_cout\)) # (!\mips_cpu|dp|alu|b2[0]~33_combout\ & ((!\mips_cpu|dp|alu|Add0~1_cout\) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[0]~33_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[0]~14_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~1_cout\,
	combout => \mips_cpu|dp|alu|Add0~2_combout\,
	cout => \mips_cpu|dp|alu|Add0~3\);

-- Location: LCCOMB_X19_Y24_N26
\mips_cpu|dp|srcbmux|y[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[0]~12_combout\ = (\mips_cpu|fw|ForwardB[1]~0_combout\ & (\mips_cpu|fw|ForwardB[1]~1_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(0) & \mips_cpu|fw|ForwardB[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardB[1]~0_combout\,
	datab => \mips_cpu|fw|ForwardB[1]~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(0),
	datad => \mips_cpu|fw|ForwardB[1]~2_combout\,
	combout => \mips_cpu|dp|srcbmux|y[0]~12_combout\);

-- Location: LCCOMB_X19_Y24_N6
\mips_cpu|dp|srcbmux|y[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[0]~13_combout\ = (\mips_cpu|dp|ID_EX_rd2|q\(0) & (((!\mips_cpu|fw|ForwardB[1]~2_combout\) # (!\mips_cpu|fw|ForwardB[1]~1_combout\)) # (!\mips_cpu|fw|ForwardB[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardB[1]~0_combout\,
	datab => \mips_cpu|fw|ForwardB[1]~1_combout\,
	datac => \mips_cpu|dp|ID_EX_rd2|q\(0),
	datad => \mips_cpu|fw|ForwardB[1]~2_combout\,
	combout => \mips_cpu|dp|srcbmux|y[0]~13_combout\);

-- Location: LCCOMB_X21_Y24_N12
\mips_cpu|dp|srcbmux|y[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[0]~14_combout\ = (\mips_cpu|dp|srcbmux|y[0]~12_combout\ & (((!\mips_cpu|fw|ForwardB[0]~4_combout\)) # (!\mips_cpu|fw|ForwardB[0]~6_combout\))) # (!\mips_cpu|dp|srcbmux|y[0]~12_combout\ & (\mips_cpu|dp|srcbmux|y[0]~13_combout\ & 
-- ((!\mips_cpu|fw|ForwardB[0]~4_combout\) # (!\mips_cpu|fw|ForwardB[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[0]~12_combout\,
	datab => \mips_cpu|fw|ForwardB[0]~6_combout\,
	datac => \mips_cpu|fw|ForwardB[0]~4_combout\,
	datad => \mips_cpu|dp|srcbmux|y[0]~13_combout\,
	combout => \mips_cpu|dp|srcbmux|y[0]~14_combout\);

-- Location: LCCOMB_X21_Y24_N2
\mips_cpu|dp|srcbmux|y[0]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[0]~53_combout\ = (\mips_cpu|dp|srcbmux|y[0]~17_combout\) # ((!\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & \mips_cpu|dp|srcbmux|y[0]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[0]~17_combout\,
	datac => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datad => \mips_cpu|dp|srcbmux|y[0]~14_combout\,
	combout => \mips_cpu|dp|srcbmux|y[0]~53_combout\);

-- Location: LCCOMB_X24_Y24_N22
\mips_cpu|dp|alu|Mux31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux31~0_combout\ = (\mips_cpu|dp|MEM_WB_fwd_1|y[0]~14_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\) # ((!\mips_cpu|c|ad|Mux1~0_combout\ & \mips_cpu|dp|srcbmux|y[0]~53_combout\)))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[0]~14_combout\ & 
-- (\mips_cpu|c|ad|Mux2~1_combout\ & ((\mips_cpu|c|ad|Mux1~0_combout\) # (\mips_cpu|dp|srcbmux|y[0]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[0]~14_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|srcbmux|y[0]~53_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Mux31~0_combout\);

-- Location: LCCOMB_X24_Y21_N12
\mips_cpu|dp|alu|Mux31~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux31~1_combout\ = (\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|alu|Mux31~0_combout\ & (\mips_cpu|dp|alu|Add0~64_combout\)) # (!\mips_cpu|dp|alu|Mux31~0_combout\ & ((\mips_cpu|dp|alu|Add0~2_combout\))))) # 
-- (!\mips_cpu|c|ad|Mux1~0_combout\ & (((\mips_cpu|dp|alu|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~64_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|alu|Add0~2_combout\,
	datad => \mips_cpu|dp|alu|Mux31~0_combout\,
	combout => \mips_cpu|dp|alu|Mux31~1_combout\);

-- Location: FF_X24_Y21_N13
\mips_cpu|dp|EX_MEM_alu|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux31~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(0));

-- Location: FF_X21_Y24_N7
\mips_cpu|dp|MEM_WB_alu|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|EX_MEM_alu|q\(0),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|MEM_WB_alu|q\(0));

-- Location: LCCOMB_X21_Y23_N6
\mips_cpu|c|md|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Decoder0~3_combout\ = (\mips_cpu|c|md|Decoder0~0_combout\ & (!\mips_cpu|dp|IF_ID_inst|q\(30) & \mips_cpu|dp|IF_ID_inst|q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|md|Decoder0~0_combout\,
	datac => \mips_cpu|dp|IF_ID_inst|q\(30),
	datad => \mips_cpu|dp|IF_ID_inst|q\(31),
	combout => \mips_cpu|c|md|Decoder0~3_combout\);

-- Location: FF_X21_Y23_N7
\mips_cpu|dp|ID_EX_C_memtoreg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|c|md|Decoder0~3_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	sclr => \mips_cpu|hd|stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_C_memtoreg|q\(0));

-- Location: LCCOMB_X21_Y23_N10
\mips_cpu|dp|EX_MEM_C_memtoreg|q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|EX_MEM_C_memtoreg|q[0]~feeder_combout\ = \mips_cpu|dp|ID_EX_C_memtoreg|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_cpu|dp|ID_EX_C_memtoreg|q\(0),
	combout => \mips_cpu|dp|EX_MEM_C_memtoreg|q[0]~feeder_combout\);

-- Location: FF_X21_Y23_N11
\mips_cpu|dp|EX_MEM_C_memtoreg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|EX_MEM_C_memtoreg|q[0]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_C_memtoreg|q\(0));

-- Location: FF_X21_Y24_N29
\mips_cpu|dp|MEM_WB_C_memtoreg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|EX_MEM_C_memtoreg|q\(0),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|MEM_WB_C_memtoreg|q\(0));

-- Location: LCCOMB_X21_Y24_N28
\mips_cpu|dp|srcbmux|y[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[0]~16_combout\ = (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|MEM_WB_C_memtoreg|q\(0) & ((\mips_cpu|dp|MEM_WB_readdata|q\(0)))) # (!\mips_cpu|dp|MEM_WB_C_memtoreg|q\(0) & (\mips_cpu|dp|MEM_WB_alu|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_alu|q\(0),
	datab => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datac => \mips_cpu|dp|MEM_WB_C_memtoreg|q\(0),
	datad => \mips_cpu|dp|MEM_WB_readdata|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[0]~16_combout\);

-- Location: LCCOMB_X21_Y24_N8
\mips_cpu|dp|srcbmux|y[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[0]~17_combout\ = (\mips_cpu|dp|srcbmux|y[0]~15_combout\) # ((\mips_cpu|fw|ForwardB[0]~6_combout\ & (\mips_cpu|fw|ForwardB[0]~4_combout\ & \mips_cpu|dp|srcbmux|y[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[0]~15_combout\,
	datab => \mips_cpu|fw|ForwardB[0]~6_combout\,
	datac => \mips_cpu|fw|ForwardB[0]~4_combout\,
	datad => \mips_cpu|dp|srcbmux|y[0]~16_combout\,
	combout => \mips_cpu|dp|srcbmux|y[0]~17_combout\);

-- Location: LCCOMB_X21_Y24_N4
\mips_cpu|dp|alu|b2[0]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[0]~33_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ (((\mips_cpu|dp|srcbmux|y[0]~17_combout\) # ((!\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & \mips_cpu|dp|srcbmux|y[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[0]~17_combout\,
	datab => \mips_cpu|c|ad|Mux0~1_combout\,
	datac => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datad => \mips_cpu|dp|srcbmux|y[0]~14_combout\,
	combout => \mips_cpu|dp|alu|b2[0]~33_combout\);

-- Location: LCCOMB_X23_Y22_N20
\mips_cpu|dp|alu|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~4_combout\ = ((\mips_cpu|dp|alu|b2[1]~32_combout\ $ (\mips_cpu|dp|MEM_WB_fwd_1|y[1]~12_combout\ $ (!\mips_cpu|dp|alu|Add0~3\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~5\ = CARRY((\mips_cpu|dp|alu|b2[1]~32_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[1]~12_combout\) # (!\mips_cpu|dp|alu|Add0~3\))) # (!\mips_cpu|dp|alu|b2[1]~32_combout\ & (\mips_cpu|dp|MEM_WB_fwd_1|y[1]~12_combout\ & 
-- !\mips_cpu|dp|alu|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[1]~32_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[1]~12_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~3\,
	combout => \mips_cpu|dp|alu|Add0~4_combout\,
	cout => \mips_cpu|dp|alu|Add0~5\);

-- Location: LCCOMB_X22_Y22_N2
\mips_cpu|dp|srcbmux|y[1]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[1]~52_combout\ = (\mips_cpu|dp|srcbmux|y[12]~0_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(1)) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(1))))) # (!\mips_cpu|dp|srcbmux|y[12]~0_combout\ & 
-- (((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	datab => \mips_cpu|dp|ID_EX_signimm|q\(1),
	datac => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(1),
	combout => \mips_cpu|dp|srcbmux|y[1]~52_combout\);

-- Location: LCCOMB_X23_Y22_N4
\mips_cpu|dp|alu|Mux30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux30~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|srcbmux|y[1]~52_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\) # (\mips_cpu|dp|MEM_WB_fwd_1|y[1]~12_combout\))) # (!\mips_cpu|dp|srcbmux|y[1]~52_combout\ & 
-- (\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|MEM_WB_fwd_1|y[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[1]~52_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|MEM_WB_fwd_1|y[1]~12_combout\,
	combout => \mips_cpu|dp|alu|Mux30~0_combout\);

-- Location: LCCOMB_X24_Y24_N16
\mips_cpu|dp|alu|Mux30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux30~1_combout\ = (\mips_cpu|dp|alu|Mux30~0_combout\) # ((!\mips_cpu|c|ad|Mux2~1_combout\ & (\mips_cpu|c|ad|Mux1~0_combout\ & \mips_cpu|dp|alu|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|alu|Add0~4_combout\,
	datad => \mips_cpu|dp|alu|Mux30~0_combout\,
	combout => \mips_cpu|dp|alu|Mux30~1_combout\);

-- Location: FF_X24_Y24_N17
\mips_cpu|dp|EX_MEM_alu|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux30~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(1));

-- Location: LCCOMB_X22_Y22_N10
\mips_cpu|dp|alu|b2[1]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[1]~32_combout\ = \mips_cpu|c|ad|Mux0~1_combout\ $ ((((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(1))) # (!\mips_cpu|dp|alu|b2[1]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[1]~62_combout\,
	datab => \mips_cpu|c|ad|Mux0~1_combout\,
	datac => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(1),
	combout => \mips_cpu|dp|alu|b2[1]~32_combout\);

-- Location: LCCOMB_X23_Y22_N22
\mips_cpu|dp|alu|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~6_combout\ = (\mips_cpu|dp|alu|b2[2]~31_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[2]~11_combout\ & (\mips_cpu|dp|alu|Add0~5\ & VCC)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[2]~11_combout\ & (!\mips_cpu|dp|alu|Add0~5\)))) # 
-- (!\mips_cpu|dp|alu|b2[2]~31_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[2]~11_combout\ & (!\mips_cpu|dp|alu|Add0~5\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[2]~11_combout\ & ((\mips_cpu|dp|alu|Add0~5\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~7\ = CARRY((\mips_cpu|dp|alu|b2[2]~31_combout\ & (!\mips_cpu|dp|MEM_WB_fwd_1|y[2]~11_combout\ & !\mips_cpu|dp|alu|Add0~5\)) # (!\mips_cpu|dp|alu|b2[2]~31_combout\ & ((!\mips_cpu|dp|alu|Add0~5\) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[2]~31_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[2]~11_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~5\,
	combout => \mips_cpu|dp|alu|Add0~6_combout\,
	cout => \mips_cpu|dp|alu|Add0~7\);

-- Location: LCCOMB_X23_Y22_N24
\mips_cpu|dp|alu|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~8_combout\ = ((\mips_cpu|dp|MEM_WB_fwd_1|y[3]~10_combout\ $ (\mips_cpu|dp|alu|b2[3]~30_combout\ $ (!\mips_cpu|dp|alu|Add0~7\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~9\ = CARRY((\mips_cpu|dp|MEM_WB_fwd_1|y[3]~10_combout\ & ((\mips_cpu|dp|alu|b2[3]~30_combout\) # (!\mips_cpu|dp|alu|Add0~7\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[3]~10_combout\ & (\mips_cpu|dp|alu|b2[3]~30_combout\ & 
-- !\mips_cpu|dp|alu|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[3]~10_combout\,
	datab => \mips_cpu|dp|alu|b2[3]~30_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~7\,
	combout => \mips_cpu|dp|alu|Add0~8_combout\,
	cout => \mips_cpu|dp|alu|Add0~9\);

-- Location: LCCOMB_X23_Y22_N26
\mips_cpu|dp|alu|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~10_combout\ = (\mips_cpu|dp|alu|b2[4]~59_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[4]~9_combout\ & (\mips_cpu|dp|alu|Add0~9\ & VCC)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[4]~9_combout\ & (!\mips_cpu|dp|alu|Add0~9\)))) # 
-- (!\mips_cpu|dp|alu|b2[4]~59_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[4]~9_combout\ & (!\mips_cpu|dp|alu|Add0~9\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[4]~9_combout\ & ((\mips_cpu|dp|alu|Add0~9\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~11\ = CARRY((\mips_cpu|dp|alu|b2[4]~59_combout\ & (!\mips_cpu|dp|MEM_WB_fwd_1|y[4]~9_combout\ & !\mips_cpu|dp|alu|Add0~9\)) # (!\mips_cpu|dp|alu|b2[4]~59_combout\ & ((!\mips_cpu|dp|alu|Add0~9\) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[4]~59_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[4]~9_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~9\,
	combout => \mips_cpu|dp|alu|Add0~10_combout\,
	cout => \mips_cpu|dp|alu|Add0~11\);

-- Location: LCCOMB_X23_Y22_N28
\mips_cpu|dp|alu|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~12_combout\ = ((\mips_cpu|dp|alu|b2[5]~58_combout\ $ (\mips_cpu|dp|MEM_WB_fwd_1|y[5]~8_combout\ $ (!\mips_cpu|dp|alu|Add0~11\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~13\ = CARRY((\mips_cpu|dp|alu|b2[5]~58_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[5]~8_combout\) # (!\mips_cpu|dp|alu|Add0~11\))) # (!\mips_cpu|dp|alu|b2[5]~58_combout\ & (\mips_cpu|dp|MEM_WB_fwd_1|y[5]~8_combout\ & 
-- !\mips_cpu|dp|alu|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[5]~58_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[5]~8_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~11\,
	combout => \mips_cpu|dp|alu|Add0~12_combout\,
	cout => \mips_cpu|dp|alu|Add0~13\);

-- Location: LCCOMB_X23_Y22_N30
\mips_cpu|dp|alu|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~14_combout\ = (\mips_cpu|dp|alu|b2[6]~57_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[6]~7_combout\ & (\mips_cpu|dp|alu|Add0~13\ & VCC)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[6]~7_combout\ & (!\mips_cpu|dp|alu|Add0~13\)))) # 
-- (!\mips_cpu|dp|alu|b2[6]~57_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[6]~7_combout\ & (!\mips_cpu|dp|alu|Add0~13\)) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[6]~7_combout\ & ((\mips_cpu|dp|alu|Add0~13\) # (GND)))))
-- \mips_cpu|dp|alu|Add0~15\ = CARRY((\mips_cpu|dp|alu|b2[6]~57_combout\ & (!\mips_cpu|dp|MEM_WB_fwd_1|y[6]~7_combout\ & !\mips_cpu|dp|alu|Add0~13\)) # (!\mips_cpu|dp|alu|b2[6]~57_combout\ & ((!\mips_cpu|dp|alu|Add0~13\) # 
-- (!\mips_cpu|dp|MEM_WB_fwd_1|y[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[6]~57_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[6]~7_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~13\,
	combout => \mips_cpu|dp|alu|Add0~14_combout\,
	cout => \mips_cpu|dp|alu|Add0~15\);

-- Location: LCCOMB_X23_Y21_N0
\mips_cpu|dp|alu|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Add0~16_combout\ = ((\mips_cpu|dp|alu|b2[7]~56_combout\ $ (\mips_cpu|dp|MEM_WB_fwd_1|y[7]~6_combout\ $ (!\mips_cpu|dp|alu|Add0~15\)))) # (GND)
-- \mips_cpu|dp|alu|Add0~17\ = CARRY((\mips_cpu|dp|alu|b2[7]~56_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[7]~6_combout\) # (!\mips_cpu|dp|alu|Add0~15\))) # (!\mips_cpu|dp|alu|b2[7]~56_combout\ & (\mips_cpu|dp|MEM_WB_fwd_1|y[7]~6_combout\ & 
-- !\mips_cpu|dp|alu|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|b2[7]~56_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[7]~6_combout\,
	datad => VCC,
	cin => \mips_cpu|dp|alu|Add0~15\,
	combout => \mips_cpu|dp|alu|Add0~16_combout\,
	cout => \mips_cpu|dp|alu|Add0~17\);

-- Location: LCCOMB_X21_Y21_N30
\mips_cpu|dp|alu|Mux23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux23~1_combout\ = (\mips_cpu|dp|alu|Mux23~0_combout\) # ((\mips_cpu|c|ad|Mux1~0_combout\ & (\mips_cpu|dp|alu|Add0~18_combout\ & !\mips_cpu|c|ad|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux23~0_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|alu|Add0~18_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Mux23~1_combout\);

-- Location: FF_X21_Y21_N31
\mips_cpu|dp|EX_MEM_alu|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux23~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(8));

-- Location: M9K_X13_Y20_N0
\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015441150415415411541514154115114754707004",
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
	port_a_first_bit_number => 27,
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
	port_b_first_bit_number => 27,
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
	portbwe => \mips_cpu|dp|EX_MEM_C_memwrite|q\(0),
	portbre => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \pll0|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	ena1 => \Decoder|Equal0~5_combout\,
	portadatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portbdatain => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAIN_bus\,
	portaaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: FF_X20_Y23_N7
\mips_cpu|dp|IF_ID_inst|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(30),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(30));

-- Location: LCCOMB_X20_Y23_N6
\mips_cpu|c|md|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Decoder0~1_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(31) & (\mips_cpu|dp|IF_ID_inst|q\(29) & (!\mips_cpu|dp|IF_ID_inst|q\(30) & \mips_cpu|dp|IF_ID_inst|q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(31),
	datab => \mips_cpu|dp|IF_ID_inst|q\(29),
	datac => \mips_cpu|dp|IF_ID_inst|q\(30),
	datad => \mips_cpu|dp|IF_ID_inst|q\(28),
	combout => \mips_cpu|c|md|Decoder0~1_combout\);

-- Location: LCCOMB_X21_Y23_N12
\mips_cpu|c|md|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Decoder0~2_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(26) & (\mips_cpu|c|md|Decoder0~1_combout\ & \mips_cpu|dp|IF_ID_inst|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|IF_ID_inst|q\(26),
	datac => \mips_cpu|c|md|Decoder0~1_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(27),
	combout => \mips_cpu|c|md|Decoder0~2_combout\);

-- Location: FF_X21_Y23_N13
\mips_cpu|dp|ID_EX_C_shiftl16|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|c|md|Decoder0~2_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	sclr => \mips_cpu|hd|stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0));

-- Location: LCCOMB_X21_Y20_N10
\mips_cpu|dp|srcbmux|y[12]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[12]~0_combout\ = (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & \mips_cpu|dp|ID_EX_C_alusrc|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datad => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	combout => \mips_cpu|dp|srcbmux|y[12]~0_combout\);

-- Location: LCCOMB_X22_Y24_N16
\mips_cpu|dp|srcbmux|y[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[7]~8_combout\ = (\mips_cpu|dp|srcbmux|y[12]~1_combout\ & ((\mips_cpu|dp|EX_MEM_alu|q\(7)) # ((\mips_cpu|dp|srcbmux|y[12]~0_combout\ & \mips_cpu|dp|ID_EX_signimm|q\(7))))) # (!\mips_cpu|dp|srcbmux|y[12]~1_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[12]~0_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	datac => \mips_cpu|dp|ID_EX_signimm|q\(7),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(7),
	combout => \mips_cpu|dp|srcbmux|y[7]~8_combout\);

-- Location: LCCOMB_X22_Y21_N26
\mips_cpu|dp|alu|b2[7]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[7]~56_combout\ = \mips_cpu|dp|srcbmux|y[7]~8_combout\ $ (((\mips_cpu|c|ID_EX_C_aluop|q\(0) & ((!\mips_cpu|c|ad|Mux0~0_combout\) # (!\mips_cpu|c|ID_EX_C_aluop|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	datab => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datac => \mips_cpu|c|ad|Mux0~0_combout\,
	datad => \mips_cpu|dp|srcbmux|y[7]~8_combout\,
	combout => \mips_cpu|dp|alu|b2[7]~56_combout\);

-- Location: LCCOMB_X21_Y21_N0
\mips_cpu|dp|alu|Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux24~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[7]~6_combout\ & ((\mips_cpu|dp|srcbmux|y[7]~8_combout\) # (\mips_cpu|c|ad|Mux2~1_combout\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[7]~6_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[7]~8_combout\ & \mips_cpu|c|ad|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[7]~6_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|srcbmux|y[7]~8_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Mux24~0_combout\);

-- Location: LCCOMB_X21_Y21_N2
\mips_cpu|dp|alu|Mux24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux24~1_combout\ = (\mips_cpu|dp|alu|Mux24~0_combout\) # ((\mips_cpu|dp|alu|Add0~16_combout\ & (\mips_cpu|c|ad|Mux1~0_combout\ & !\mips_cpu|c|ad|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~16_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|alu|Mux24~0_combout\,
	combout => \mips_cpu|dp|alu|Mux24~1_combout\);

-- Location: FF_X21_Y21_N3
\mips_cpu|dp|EX_MEM_alu|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux24~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(7));

-- Location: M9K_X25_Y20_N0
\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a17\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D119DD22DD1DD19DD1DDD19D19DD9DCC9EE19111",
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
	portbwe => \mips_cpu|dp|EX_MEM_C_memwrite|q\(0),
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

-- Location: FF_X19_Y24_N15
\mips_cpu|dp|IF_ID_inst|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(18),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(18));

-- Location: FF_X19_Y24_N3
\mips_cpu|dp|ID_EX_inst_1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(18),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_inst_1|q\(2));

-- Location: LCCOMB_X19_Y24_N4
\mips_cpu|dp|wrmux|y[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wrmux|y[2]~3_combout\ = (!\mips_cpu|dp|ID_EX_C_regdst|q\(0) & \mips_cpu|dp|ID_EX_inst_1|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_cpu|dp|ID_EX_C_regdst|q\(0),
	datad => \mips_cpu|dp|ID_EX_inst_1|q\(2),
	combout => \mips_cpu|dp|wrmux|y[2]~3_combout\);

-- Location: FF_X19_Y24_N5
\mips_cpu|dp|EX_MEM_wrmux|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|wrmux|y[2]~3_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_wrmux|q\(2));

-- Location: LCCOMB_X19_Y24_N0
\mips_cpu|fw|ForwardA[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardA[1]~1_combout\ = (\mips_cpu|dp|EX_MEM_wrmux|q\(3) & (\mips_cpu|dp|ID_EX_inst_3|q\(3) & (\mips_cpu|dp|EX_MEM_wrmux|q\(2) $ (!\mips_cpu|dp|ID_EX_inst_3|q\(2))))) # (!\mips_cpu|dp|EX_MEM_wrmux|q\(3) & (!\mips_cpu|dp|ID_EX_inst_3|q\(3) & 
-- (\mips_cpu|dp|EX_MEM_wrmux|q\(2) $ (!\mips_cpu|dp|ID_EX_inst_3|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_wrmux|q\(3),
	datab => \mips_cpu|dp|EX_MEM_wrmux|q\(2),
	datac => \mips_cpu|dp|ID_EX_inst_3|q\(3),
	datad => \mips_cpu|dp|ID_EX_inst_3|q\(2),
	combout => \mips_cpu|fw|ForwardA[1]~1_combout\);

-- Location: LCCOMB_X20_Y21_N6
\mips_cpu|dp|MEM_WB_fwd_1|y[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[6]~7_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(6) & \mips_cpu|fw|ForwardA[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(6),
	datad => \mips_cpu|fw|ForwardA[1]~0_combout\,
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[6]~7_combout\);

-- Location: LCCOMB_X23_Y22_N0
\mips_cpu|dp|alu|Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux25~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[6]~7_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\) # (\mips_cpu|dp|srcbmux|y[6]~9_combout\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[6]~7_combout\ & 
-- (\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|srcbmux|y[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux1~0_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[6]~7_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|srcbmux|y[6]~9_combout\,
	combout => \mips_cpu|dp|alu|Mux25~0_combout\);

-- Location: LCCOMB_X24_Y22_N8
\mips_cpu|dp|alu|Mux25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux25~1_combout\ = (\mips_cpu|dp|alu|Mux25~0_combout\) # ((!\mips_cpu|c|ad|Mux2~1_combout\ & (\mips_cpu|c|ad|Mux1~0_combout\ & \mips_cpu|dp|alu|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux25~0_combout\,
	datab => \mips_cpu|c|ad|Mux2~1_combout\,
	datac => \mips_cpu|c|ad|Mux1~0_combout\,
	datad => \mips_cpu|dp|alu|Add0~14_combout\,
	combout => \mips_cpu|dp|alu|Mux25~1_combout\);

-- Location: FF_X24_Y22_N9
\mips_cpu|dp|EX_MEM_alu|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux25~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(6));

-- Location: M9K_X25_Y22_N0
\Inst_Data_Mem|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008229049000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800804004804C0C000440840000CC00000405F000",
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
	portbwe => \mips_cpu|dp|EX_MEM_C_memwrite|q\(0),
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

-- Location: FF_X22_Y22_N23
\mips_cpu|dp|IF_ID_inst|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(0),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(0));

-- Location: LCCOMB_X22_Y22_N22
\mips_cpu|dp|comb~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|comb~1_combout\ = (\mips_cpu|dp|comb~0_combout\ & (!\mips_cpu|dp|IF_ID_inst|q\(0) & !\mips_cpu|dp|IF_ID_inst|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|comb~0_combout\,
	datac => \mips_cpu|dp|IF_ID_inst|q\(0),
	datad => \mips_cpu|dp|IF_ID_inst|q\(1),
	combout => \mips_cpu|dp|comb~1_combout\);

-- Location: LCCOMB_X20_Y23_N14
\mips_cpu|c|md|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector9~0_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(27) & !\mips_cpu|dp|IF_ID_inst|q\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|IF_ID_inst|q\(27),
	datad => \mips_cpu|dp|IF_ID_inst|q\(31),
	combout => \mips_cpu|c|md|Selector9~0_combout\);

-- Location: LCCOMB_X20_Y23_N8
\mips_cpu|c|md|Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector9~1_combout\ = (\mips_cpu|c|md|Selector9~0_combout\ & ((\mips_cpu|dp|IF_ID_inst|q\(28) & ((\mips_cpu|dp|IF_ID_inst|q\(29)))) # (!\mips_cpu|dp|IF_ID_inst|q\(28) & (!\mips_cpu|dp|comb~1_combout\ & !\mips_cpu|dp|IF_ID_inst|q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|comb~1_combout\,
	datab => \mips_cpu|dp|IF_ID_inst|q\(28),
	datac => \mips_cpu|c|md|Selector9~0_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(29),
	combout => \mips_cpu|c|md|Selector9~1_combout\);

-- Location: FF_X20_Y23_N9
\mips_cpu|c|ID_EX_C_aluop|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|c|md|Selector9~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|c|ID_EX_C_aluop|q\(1));

-- Location: LCCOMB_X22_Y24_N18
\mips_cpu|dp|srcbmux|y[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[5]~10_combout\ = (\mips_cpu|dp|srcbmux|y[12]~1_combout\ & ((\mips_cpu|dp|EX_MEM_alu|q\(5)) # ((\mips_cpu|dp|srcbmux|y[12]~0_combout\ & \mips_cpu|dp|ID_EX_signimm|q\(5))))) # (!\mips_cpu|dp|srcbmux|y[12]~1_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[12]~0_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	datac => \mips_cpu|dp|ID_EX_signimm|q\(5),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(5),
	combout => \mips_cpu|dp|srcbmux|y[5]~10_combout\);

-- Location: LCCOMB_X23_Y22_N12
\mips_cpu|dp|alu|b2[5]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[5]~58_combout\ = \mips_cpu|dp|srcbmux|y[5]~10_combout\ $ (((\mips_cpu|c|ID_EX_C_aluop|q\(0) & ((!\mips_cpu|c|ID_EX_C_aluop|q\(1)) # (!\mips_cpu|c|ad|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	datab => \mips_cpu|c|ad|Mux0~0_combout\,
	datac => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datad => \mips_cpu|dp|srcbmux|y[5]~10_combout\,
	combout => \mips_cpu|dp|alu|b2[5]~58_combout\);

-- Location: LCCOMB_X23_Y22_N2
\mips_cpu|dp|alu|Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux26~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[5]~8_combout\) # (\mips_cpu|dp|srcbmux|y[5]~10_combout\))) # (!\mips_cpu|c|ad|Mux2~1_combout\ & 
-- (\mips_cpu|dp|MEM_WB_fwd_1|y[5]~8_combout\ & \mips_cpu|dp|srcbmux|y[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[5]~8_combout\,
	datac => \mips_cpu|c|ad|Mux1~0_combout\,
	datad => \mips_cpu|dp|srcbmux|y[5]~10_combout\,
	combout => \mips_cpu|dp|alu|Mux26~0_combout\);

-- Location: LCCOMB_X24_Y22_N12
\mips_cpu|dp|alu|Mux26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux26~1_combout\ = (\mips_cpu|dp|alu|Mux26~0_combout\) # ((\mips_cpu|dp|alu|Add0~12_combout\ & (!\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|c|ad|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~12_combout\,
	datab => \mips_cpu|c|ad|Mux2~1_combout\,
	datac => \mips_cpu|c|ad|Mux1~0_combout\,
	datad => \mips_cpu|dp|alu|Mux26~0_combout\,
	combout => \mips_cpu|dp|alu|Mux26~1_combout\);

-- Location: FF_X24_Y22_N13
\mips_cpu|dp|EX_MEM_alu|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux26~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(5));

-- Location: FF_X17_Y24_N19
\mips_cpu|dp|IF_ID_inst|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(17),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(17));

-- Location: FF_X21_Y24_N23
\mips_cpu|dp|ID_EX_inst_1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|IF_ID_inst|q\(17),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_inst_1|q\(1));

-- Location: LCCOMB_X21_Y24_N18
\mips_cpu|fw|ForwardB[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardB[1]~0_combout\ = (\mips_cpu|dp|EX_MEM_wrmux|q\(0) & (\mips_cpu|dp|ID_EX_inst_1|q\(0) & (\mips_cpu|dp|ID_EX_inst_1|q\(1) $ (!\mips_cpu|dp|EX_MEM_wrmux|q\(1))))) # (!\mips_cpu|dp|EX_MEM_wrmux|q\(0) & (!\mips_cpu|dp|ID_EX_inst_1|q\(0) & 
-- (\mips_cpu|dp|ID_EX_inst_1|q\(1) $ (!\mips_cpu|dp|EX_MEM_wrmux|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_wrmux|q\(0),
	datab => \mips_cpu|dp|ID_EX_inst_1|q\(1),
	datac => \mips_cpu|dp|ID_EX_inst_1|q\(0),
	datad => \mips_cpu|dp|EX_MEM_wrmux|q\(1),
	combout => \mips_cpu|fw|ForwardB[1]~0_combout\);

-- Location: LCCOMB_X21_Y24_N16
\mips_cpu|dp|srcbmux|y[12]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[12]~1_combout\ = (\mips_cpu|fw|ForwardB[1]~0_combout\ & (\mips_cpu|fw|ForwardB[1]~1_combout\ & (!\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & \mips_cpu|fw|ForwardB[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardB[1]~0_combout\,
	datab => \mips_cpu|fw|ForwardB[1]~1_combout\,
	datac => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datad => \mips_cpu|fw|ForwardB[1]~2_combout\,
	combout => \mips_cpu|dp|srcbmux|y[12]~1_combout\);

-- Location: LCCOMB_X22_Y22_N18
\mips_cpu|dp|srcbmux|y[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[4]~11_combout\ = (\mips_cpu|dp|srcbmux|y[12]~1_combout\ & ((\mips_cpu|dp|EX_MEM_alu|q\(4)) # ((\mips_cpu|dp|ID_EX_signimm|q\(4) & \mips_cpu|dp|srcbmux|y[12]~0_combout\)))) # (!\mips_cpu|dp|srcbmux|y[12]~1_combout\ & 
-- (((\mips_cpu|dp|ID_EX_signimm|q\(4) & \mips_cpu|dp|srcbmux|y[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datab => \mips_cpu|dp|EX_MEM_alu|q\(4),
	datac => \mips_cpu|dp|ID_EX_signimm|q\(4),
	datad => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	combout => \mips_cpu|dp|srcbmux|y[4]~11_combout\);

-- Location: LCCOMB_X23_Y22_N6
\mips_cpu|dp|alu|b2[4]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|b2[4]~59_combout\ = \mips_cpu|dp|srcbmux|y[4]~11_combout\ $ (((\mips_cpu|c|ID_EX_C_aluop|q\(0) & ((!\mips_cpu|c|ad|Mux0~0_combout\) # (!\mips_cpu|c|ID_EX_C_aluop|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	datab => \mips_cpu|dp|srcbmux|y[4]~11_combout\,
	datac => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datad => \mips_cpu|c|ad|Mux0~0_combout\,
	combout => \mips_cpu|dp|alu|b2[4]~59_combout\);

-- Location: LCCOMB_X23_Y22_N14
\mips_cpu|dp|alu|Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux27~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|srcbmux|y[4]~11_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\) # (\mips_cpu|dp|MEM_WB_fwd_1|y[4]~9_combout\))) # (!\mips_cpu|dp|srcbmux|y[4]~11_combout\ & 
-- (\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|MEM_WB_fwd_1|y[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux1~0_combout\,
	datab => \mips_cpu|dp|srcbmux|y[4]~11_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|MEM_WB_fwd_1|y[4]~9_combout\,
	combout => \mips_cpu|dp|alu|Mux27~0_combout\);

-- Location: LCCOMB_X24_Y22_N18
\mips_cpu|dp|alu|Mux27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux27~1_combout\ = (\mips_cpu|dp|alu|Mux27~0_combout\) # ((\mips_cpu|c|ad|Mux1~0_combout\ & (!\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|alu|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux1~0_combout\,
	datab => \mips_cpu|c|ad|Mux2~1_combout\,
	datac => \mips_cpu|dp|alu|Add0~10_combout\,
	datad => \mips_cpu|dp|alu|Mux27~0_combout\,
	combout => \mips_cpu|dp|alu|Mux27~1_combout\);

-- Location: FF_X24_Y22_N19
\mips_cpu|dp|EX_MEM_alu|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux27~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(4));

-- Location: FF_X20_Y23_N23
\mips_cpu|dp|IF_ID_inst|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(26),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(26));

-- Location: LCCOMB_X21_Y23_N24
\mips_cpu|c|md|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector3~0_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(28) & (!\mips_cpu|dp|IF_ID_inst|q\(26) & (\mips_cpu|dp|comb~2_combout\ & !\mips_cpu|dp|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(28),
	datab => \mips_cpu|dp|IF_ID_inst|q\(26),
	datac => \mips_cpu|dp|comb~2_combout\,
	datad => \mips_cpu|dp|comb~1_combout\,
	combout => \mips_cpu|c|md|Selector3~0_combout\);

-- Location: FF_X21_Y23_N25
\mips_cpu|dp|ID_EX_C_regdst|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|c|md|Selector3~0_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	sclr => \mips_cpu|hd|stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_C_regdst|q\(0));

-- Location: LCCOMB_X21_Y24_N26
\mips_cpu|dp|wrmux|y[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|wrmux|y[0]~1_combout\ = (\mips_cpu|dp|ID_EX_C_regdst|q\(0) & (\mips_cpu|dp|ID_EX_inst_2|q\(0))) # (!\mips_cpu|dp|ID_EX_C_regdst|q\(0) & ((\mips_cpu|dp|ID_EX_inst_1|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_C_regdst|q\(0),
	datac => \mips_cpu|dp|ID_EX_inst_2|q\(0),
	datad => \mips_cpu|dp|ID_EX_inst_1|q\(0),
	combout => \mips_cpu|dp|wrmux|y[0]~1_combout\);

-- Location: FF_X21_Y24_N27
\mips_cpu|dp|EX_MEM_wrmux|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|wrmux|y[0]~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_wrmux|q\(0));

-- Location: LCCOMB_X20_Y25_N16
\mips_cpu|fw|ForwardA[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardA[1]~0_combout\ = (\mips_cpu|dp|EX_MEM_wrmux|q\(0) & (\mips_cpu|dp|ID_EX_inst_3|q\(0) & (\mips_cpu|dp|EX_MEM_wrmux|q\(1) $ (!\mips_cpu|dp|ID_EX_inst_3|q\(1))))) # (!\mips_cpu|dp|EX_MEM_wrmux|q\(0) & (!\mips_cpu|dp|ID_EX_inst_3|q\(0) & 
-- (\mips_cpu|dp|EX_MEM_wrmux|q\(1) $ (!\mips_cpu|dp|ID_EX_inst_3|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_wrmux|q\(0),
	datab => \mips_cpu|dp|EX_MEM_wrmux|q\(1),
	datac => \mips_cpu|dp|ID_EX_inst_3|q\(1),
	datad => \mips_cpu|dp|ID_EX_inst_3|q\(0),
	combout => \mips_cpu|fw|ForwardA[1]~0_combout\);

-- Location: LCCOMB_X20_Y21_N20
\mips_cpu|dp|MEM_WB_fwd_1|y[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[3]~10_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(3),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[3]~10_combout\);

-- Location: LCCOMB_X22_Y24_N4
\mips_cpu|dp|srcbmux|y[3]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[3]~54_combout\ = (\mips_cpu|dp|srcbmux|y[12]~1_combout\ & ((\mips_cpu|dp|EX_MEM_alu|q\(3)) # ((\mips_cpu|dp|srcbmux|y[12]~0_combout\ & \mips_cpu|dp|ID_EX_signimm|q\(3))))) # (!\mips_cpu|dp|srcbmux|y[12]~1_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[12]~0_combout\ & ((\mips_cpu|dp|ID_EX_signimm|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(3),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(3),
	combout => \mips_cpu|dp|srcbmux|y[3]~54_combout\);

-- Location: LCCOMB_X24_Y22_N16
\mips_cpu|dp|alu|Mux28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux28~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|srcbmux|y[3]~54_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[3]~10_combout\) # (\mips_cpu|c|ad|Mux2~1_combout\))) # (!\mips_cpu|dp|srcbmux|y[3]~54_combout\ & 
-- (\mips_cpu|dp|MEM_WB_fwd_1|y[3]~10_combout\ & \mips_cpu|c|ad|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[3]~54_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[3]~10_combout\,
	datac => \mips_cpu|c|ad|Mux1~0_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Mux28~0_combout\);

-- Location: LCCOMB_X24_Y22_N4
\mips_cpu|dp|alu|Mux28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux28~1_combout\ = (\mips_cpu|dp|alu|Mux28~0_combout\) # ((!\mips_cpu|c|ad|Mux2~1_combout\ & (\mips_cpu|dp|alu|Add0~8_combout\ & \mips_cpu|c|ad|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|dp|alu|Add0~8_combout\,
	datac => \mips_cpu|c|ad|Mux1~0_combout\,
	datad => \mips_cpu|dp|alu|Mux28~0_combout\,
	combout => \mips_cpu|dp|alu|Mux28~1_combout\);

-- Location: FF_X24_Y22_N5
\mips_cpu|dp|EX_MEM_alu|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux28~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(3));

-- Location: LCCOMB_X22_Y22_N30
\mips_cpu|dp|IF_ID_inst|q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[1]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(1),
	combout => \mips_cpu|dp|IF_ID_inst|q[1]~feeder_combout\);

-- Location: FF_X22_Y22_N31
\mips_cpu|dp|IF_ID_inst|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[1]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(1));

-- Location: LCCOMB_X22_Y22_N14
\mips_cpu|c|ad|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|ad|WideOr4~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(3)) # ((\mips_cpu|dp|IF_ID_inst|q\(2) & ((\mips_cpu|dp|IF_ID_inst|q\(1)) # (\mips_cpu|dp|IF_ID_inst|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(3),
	datab => \mips_cpu|dp|IF_ID_inst|q\(1),
	datac => \mips_cpu|dp|IF_ID_inst|q\(2),
	datad => \mips_cpu|dp|IF_ID_inst|q\(0),
	combout => \mips_cpu|c|ad|WideOr4~0_combout\);

-- Location: LCCOMB_X22_Y22_N28
\mips_cpu|c|ad|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|ad|Mux2~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(5) & !\mips_cpu|dp|IF_ID_inst|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_cpu|dp|IF_ID_inst|q\(5),
	datad => \mips_cpu|dp|IF_ID_inst|q\(4),
	combout => \mips_cpu|c|ad|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y22_N0
\mips_cpu|c|ad|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|ad|Mux2~1_combout\ = (\mips_cpu|c|ID_EX_C_aluop|q\(1) & (((\mips_cpu|c|ad|WideOr4~0_combout\) # (!\mips_cpu|c|ad|Mux2~0_combout\)) # (!\mips_cpu|c|ID_EX_C_aluop|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	datab => \mips_cpu|c|ad|WideOr4~0_combout\,
	datac => \mips_cpu|c|ad|Mux2~0_combout\,
	datad => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	combout => \mips_cpu|c|ad|Mux2~1_combout\);

-- Location: LCCOMB_X22_Y24_N22
\mips_cpu|dp|srcbmux|y[2]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[2]~55_combout\ = (\mips_cpu|dp|srcbmux|y[12]~1_combout\ & ((\mips_cpu|dp|EX_MEM_alu|q\(2)) # ((\mips_cpu|dp|srcbmux|y[12]~0_combout\ & \mips_cpu|dp|ID_EX_signimm|q\(2))))) # (!\mips_cpu|dp|srcbmux|y[12]~1_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[12]~0_combout\ & (\mips_cpu|dp|ID_EX_signimm|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datab => \mips_cpu|dp|srcbmux|y[12]~0_combout\,
	datac => \mips_cpu|dp|ID_EX_signimm|q\(2),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(2),
	combout => \mips_cpu|dp|srcbmux|y[2]~55_combout\);

-- Location: LCCOMB_X23_Y22_N8
\mips_cpu|dp|alu|Mux29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux29~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[2]~11_combout\) # (\mips_cpu|dp|srcbmux|y[2]~55_combout\))) # (!\mips_cpu|c|ad|Mux2~1_combout\ & 
-- (\mips_cpu|dp|MEM_WB_fwd_1|y[2]~11_combout\ & \mips_cpu|dp|srcbmux|y[2]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|dp|MEM_WB_fwd_1|y[2]~11_combout\,
	datac => \mips_cpu|dp|srcbmux|y[2]~55_combout\,
	datad => \mips_cpu|c|ad|Mux1~0_combout\,
	combout => \mips_cpu|dp|alu|Mux29~0_combout\);

-- Location: LCCOMB_X24_Y24_N26
\mips_cpu|dp|alu|Mux29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux29~1_combout\ = (\mips_cpu|dp|alu|Mux29~0_combout\) # ((!\mips_cpu|c|ad|Mux2~1_combout\ & (\mips_cpu|c|ad|Mux1~0_combout\ & \mips_cpu|dp|alu|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux2~1_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|alu|Mux29~0_combout\,
	datad => \mips_cpu|dp|alu|Add0~6_combout\,
	combout => \mips_cpu|dp|alu|Mux29~1_combout\);

-- Location: FF_X24_Y24_N27
\mips_cpu|dp|EX_MEM_alu|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux29~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(2));

-- Location: LCCOMB_X21_Y22_N18
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

-- Location: FF_X21_Y22_N19
\mips_cpu|dp|IF_ID_inst|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[10]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(10));

-- Location: LCCOMB_X21_Y22_N10
\mips_cpu|dp|pcmux|y[12]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcmux|y[12]~10_combout\ = (!\mips_cpu|dp|pcreg|q[20]~1_combout\ & ((\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|IF_ID_inst|q\(10)))) # (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q[20]~1_combout\,
	datab => \mips_cpu|dp|IF_ID_pcplus4|q\(12),
	datac => \mips_cpu|c|md|Selector8~1_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(10),
	combout => \mips_cpu|dp|pcmux|y[12]~10_combout\);

-- Location: FF_X21_Y22_N11
\mips_cpu|dp|pcreg|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcmux|y[12]~10_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(12));

-- Location: LCCOMB_X21_Y22_N20
\mips_cpu|dp|IF_ID_inst|q[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[9]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(9),
	combout => \mips_cpu|dp|IF_ID_inst|q[9]~feeder_combout\);

-- Location: FF_X21_Y22_N21
\mips_cpu|dp|IF_ID_inst|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[9]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(9));

-- Location: LCCOMB_X21_Y22_N0
\mips_cpu|dp|pcmux|y[11]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcmux|y[11]~9_combout\ = (!\mips_cpu|dp|pcreg|q[20]~1_combout\ & ((\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|IF_ID_inst|q\(9)))) # (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q[20]~1_combout\,
	datab => \mips_cpu|dp|IF_ID_pcplus4|q\(11),
	datac => \mips_cpu|c|md|Selector8~1_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(9),
	combout => \mips_cpu|dp|pcmux|y[11]~9_combout\);

-- Location: FF_X21_Y22_N1
\mips_cpu|dp|pcreg|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcmux|y[11]~9_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(11));

-- Location: LCCOMB_X20_Y22_N24
\mips_cpu|dp|IF_ID_inst|q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[8]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(8),
	combout => \mips_cpu|dp|IF_ID_inst|q[8]~feeder_combout\);

-- Location: FF_X20_Y22_N25
\mips_cpu|dp|IF_ID_inst|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[8]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(8));

-- Location: LCCOMB_X20_Y22_N28
\mips_cpu|dp|pcmux|y[10]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcmux|y[10]~8_combout\ = (!\mips_cpu|dp|pcreg|q[20]~1_combout\ & ((\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|IF_ID_inst|q\(8)))) # (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q[20]~1_combout\,
	datab => \mips_cpu|dp|IF_ID_pcplus4|q\(10),
	datac => \mips_cpu|dp|IF_ID_inst|q\(8),
	datad => \mips_cpu|c|md|Selector8~1_combout\,
	combout => \mips_cpu|dp|pcmux|y[10]~8_combout\);

-- Location: FF_X20_Y22_N29
\mips_cpu|dp|pcreg|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcmux|y[10]~8_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(10));

-- Location: LCCOMB_X21_Y22_N22
\mips_cpu|dp|IF_ID_inst|q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[7]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(7),
	combout => \mips_cpu|dp|IF_ID_inst|q[7]~feeder_combout\);

-- Location: FF_X21_Y22_N23
\mips_cpu|dp|IF_ID_inst|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[7]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(7));

-- Location: LCCOMB_X21_Y22_N30
\mips_cpu|dp|pcmux|y[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcmux|y[9]~7_combout\ = (!\mips_cpu|dp|pcreg|q[20]~1_combout\ & ((\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|IF_ID_inst|q\(7)))) # (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_pcplus4|q\(9),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|IF_ID_inst|q\(7),
	datad => \mips_cpu|dp|pcreg|q[20]~1_combout\,
	combout => \mips_cpu|dp|pcmux|y[9]~7_combout\);

-- Location: FF_X21_Y22_N31
\mips_cpu|dp|pcreg|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcmux|y[9]~7_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(9));

-- Location: LCCOMB_X21_Y22_N16
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

-- Location: FF_X21_Y22_N17
\mips_cpu|dp|IF_ID_inst|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[6]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(6));

-- Location: LCCOMB_X21_Y22_N28
\mips_cpu|dp|pcmux|y[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcmux|y[8]~6_combout\ = (!\mips_cpu|dp|pcreg|q[20]~1_combout\ & ((\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|IF_ID_inst|q\(6)))) # (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_pcplus4|q\(8),
	datab => \mips_cpu|dp|IF_ID_inst|q\(6),
	datac => \mips_cpu|c|md|Selector8~1_combout\,
	datad => \mips_cpu|dp|pcreg|q[20]~1_combout\,
	combout => \mips_cpu|dp|pcmux|y[8]~6_combout\);

-- Location: FF_X21_Y22_N29
\mips_cpu|dp|pcreg|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcmux|y[8]~6_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(8));

-- Location: FF_X22_Y22_N13
\mips_cpu|dp|IF_ID_inst|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(5),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(5));

-- Location: LCCOMB_X21_Y22_N2
\mips_cpu|dp|pcmux|y[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcmux|y[7]~5_combout\ = (!\mips_cpu|dp|pcreg|q[20]~1_combout\ & ((\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|IF_ID_inst|q\(5)))) # (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_pcplus4|q\(7),
	datab => \mips_cpu|dp|IF_ID_inst|q\(5),
	datac => \mips_cpu|c|md|Selector8~1_combout\,
	datad => \mips_cpu|dp|pcreg|q[20]~1_combout\,
	combout => \mips_cpu|dp|pcmux|y[7]~5_combout\);

-- Location: FF_X21_Y22_N3
\mips_cpu|dp|pcreg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcmux|y[7]~5_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(7));

-- Location: FF_X22_Y22_N25
\mips_cpu|dp|IF_ID_inst|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(4),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(4));

-- Location: LCCOMB_X20_Y22_N26
\mips_cpu|dp|pcmux|y[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcmux|y[6]~4_combout\ = (!\mips_cpu|dp|pcreg|q[20]~1_combout\ & ((\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|IF_ID_inst|q\(4)))) # (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q[20]~1_combout\,
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|IF_ID_pcplus4|q\(6),
	datad => \mips_cpu|dp|IF_ID_inst|q\(4),
	combout => \mips_cpu|dp|pcmux|y[6]~4_combout\);

-- Location: FF_X20_Y22_N27
\mips_cpu|dp|pcreg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcmux|y[6]~4_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(6));

-- Location: LCCOMB_X22_Y22_N8
\mips_cpu|dp|IF_ID_inst|q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_inst|q[3]~feeder_combout\ = \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(3),
	combout => \mips_cpu|dp|IF_ID_inst|q[3]~feeder_combout\);

-- Location: FF_X22_Y22_N9
\mips_cpu|dp|IF_ID_inst|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_inst|q[3]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(3));

-- Location: LCCOMB_X21_Y22_N24
\mips_cpu|dp|pcmux|y[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcmux|y[5]~3_combout\ = (!\mips_cpu|dp|pcreg|q[20]~1_combout\ & ((\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|IF_ID_inst|q\(3)))) # (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q[20]~1_combout\,
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|IF_ID_pcplus4|q\(5),
	datad => \mips_cpu|dp|IF_ID_inst|q\(3),
	combout => \mips_cpu|dp|pcmux|y[5]~3_combout\);

-- Location: FF_X21_Y22_N25
\mips_cpu|dp|pcreg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcmux|y[5]~3_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(5));

-- Location: FF_X20_Y23_N27
\mips_cpu|dp|IF_ID_inst|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(27),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(27));

-- Location: LCCOMB_X20_Y23_N28
\mips_cpu|c|md|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector8~0_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(28) & ((\mips_cpu|dp|IF_ID_inst|q\(27)) # (\mips_cpu|dp|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|IF_ID_inst|q\(27),
	datac => \mips_cpu|dp|IF_ID_inst|q\(28),
	datad => \mips_cpu|dp|comb~1_combout\,
	combout => \mips_cpu|c|md|Selector8~0_combout\);

-- Location: LCCOMB_X20_Y23_N0
\mips_cpu|c|md|Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector8~1_combout\ = (\mips_cpu|c|md|Selector8~0_combout\ & (!\mips_cpu|dp|IF_ID_inst|q\(29) & !\mips_cpu|dp|IF_ID_inst|q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|c|md|Selector8~0_combout\,
	datac => \mips_cpu|dp|IF_ID_inst|q\(29),
	datad => \mips_cpu|dp|IF_ID_inst|q\(31),
	combout => \mips_cpu|c|md|Selector8~1_combout\);

-- Location: FF_X20_Y22_N5
\mips_cpu|dp|IF_ID_pcplus4|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[4]~14_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(4));

-- Location: LCCOMB_X21_Y22_N14
\mips_cpu|dp|pcmux|y[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcmux|y[4]~2_combout\ = (!\mips_cpu|dp|pcreg|q[20]~1_combout\ & ((\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|IF_ID_inst|q\(2)))) # (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q[20]~1_combout\,
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|IF_ID_pcplus4|q\(4),
	datad => \mips_cpu|dp|IF_ID_inst|q\(2),
	combout => \mips_cpu|dp|pcmux|y[4]~2_combout\);

-- Location: FF_X21_Y22_N15
\mips_cpu|dp|pcreg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcmux|y[4]~2_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(4));

-- Location: FF_X19_Y24_N23
\mips_cpu|dp|IF_ID_inst|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(19),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(19));

-- Location: LCCOMB_X19_Y24_N18
\mips_cpu|hd|stall~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|hd|stall~4_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(19) & (\mips_cpu|dp|ID_EX_inst_1|q\(3) & (\mips_cpu|dp|IF_ID_inst|q\(18) $ (!\mips_cpu|dp|ID_EX_inst_1|q\(2))))) # (!\mips_cpu|dp|IF_ID_inst|q\(19) & (!\mips_cpu|dp|ID_EX_inst_1|q\(3) & 
-- (\mips_cpu|dp|IF_ID_inst|q\(18) $ (!\mips_cpu|dp|ID_EX_inst_1|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(19),
	datab => \mips_cpu|dp|IF_ID_inst|q\(18),
	datac => \mips_cpu|dp|ID_EX_inst_1|q\(3),
	datad => \mips_cpu|dp|ID_EX_inst_1|q\(2),
	combout => \mips_cpu|hd|stall~4_combout\);

-- Location: LCCOMB_X21_Y24_N22
\mips_cpu|hd|stall~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|hd|stall~3_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(16) & (\mips_cpu|dp|ID_EX_inst_1|q\(0) & (\mips_cpu|dp|IF_ID_inst|q\(17) $ (!\mips_cpu|dp|ID_EX_inst_1|q\(1))))) # (!\mips_cpu|dp|IF_ID_inst|q\(16) & (!\mips_cpu|dp|ID_EX_inst_1|q\(0) & 
-- (\mips_cpu|dp|IF_ID_inst|q\(17) $ (!\mips_cpu|dp|ID_EX_inst_1|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(16),
	datab => \mips_cpu|dp|IF_ID_inst|q\(17),
	datac => \mips_cpu|dp|ID_EX_inst_1|q\(1),
	datad => \mips_cpu|dp|ID_EX_inst_1|q\(0),
	combout => \mips_cpu|hd|stall~3_combout\);

-- Location: LCCOMB_X20_Y24_N30
\mips_cpu|hd|stall~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|hd|stall~5_combout\ = (\mips_cpu|hd|stall~4_combout\ & (\mips_cpu|hd|stall~3_combout\ & (\mips_cpu|dp|ID_EX_inst_1|q\(4) $ (!\mips_cpu|dp|IF_ID_inst|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|hd|stall~4_combout\,
	datab => \mips_cpu|dp|ID_EX_inst_1|q\(4),
	datac => \mips_cpu|dp|IF_ID_inst|q\(20),
	datad => \mips_cpu|hd|stall~3_combout\,
	combout => \mips_cpu|hd|stall~5_combout\);

-- Location: LCCOMB_X19_Y24_N10
\mips_cpu|hd|stall~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|hd|stall~1_combout\ = (\mips_cpu|dp|ID_EX_inst_1|q\(3) & (\mips_cpu|dp|IF_ID_inst|q\(24) & (\mips_cpu|dp|IF_ID_inst|q\(23) $ (!\mips_cpu|dp|ID_EX_inst_1|q\(2))))) # (!\mips_cpu|dp|ID_EX_inst_1|q\(3) & (!\mips_cpu|dp|IF_ID_inst|q\(24) & 
-- (\mips_cpu|dp|IF_ID_inst|q\(23) $ (!\mips_cpu|dp|ID_EX_inst_1|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_inst_1|q\(3),
	datab => \mips_cpu|dp|IF_ID_inst|q\(23),
	datac => \mips_cpu|dp|IF_ID_inst|q\(24),
	datad => \mips_cpu|dp|ID_EX_inst_1|q\(2),
	combout => \mips_cpu|hd|stall~1_combout\);

-- Location: LCCOMB_X20_Y25_N24
\mips_cpu|hd|stall~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|hd|stall~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(22) & (\mips_cpu|dp|ID_EX_inst_1|q\(1) & (\mips_cpu|dp|IF_ID_inst|q\(21) $ (!\mips_cpu|dp|ID_EX_inst_1|q\(0))))) # (!\mips_cpu|dp|IF_ID_inst|q\(22) & (!\mips_cpu|dp|ID_EX_inst_1|q\(1) & 
-- (\mips_cpu|dp|IF_ID_inst|q\(21) $ (!\mips_cpu|dp|ID_EX_inst_1|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(22),
	datab => \mips_cpu|dp|IF_ID_inst|q\(21),
	datac => \mips_cpu|dp|ID_EX_inst_1|q\(1),
	datad => \mips_cpu|dp|ID_EX_inst_1|q\(0),
	combout => \mips_cpu|hd|stall~0_combout\);

-- Location: LCCOMB_X20_Y24_N8
\mips_cpu|hd|stall~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|hd|stall~2_combout\ = (\mips_cpu|hd|stall~1_combout\ & (\mips_cpu|hd|stall~0_combout\ & (\mips_cpu|dp|ID_EX_inst_1|q\(4) $ (!\mips_cpu|dp|IF_ID_inst|q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|hd|stall~1_combout\,
	datab => \mips_cpu|dp|ID_EX_inst_1|q\(4),
	datac => \mips_cpu|dp|IF_ID_inst|q\(25),
	datad => \mips_cpu|hd|stall~0_combout\,
	combout => \mips_cpu|hd|stall~2_combout\);

-- Location: LCCOMB_X21_Y23_N2
\mips_cpu|hd|stall~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|hd|stall~6_combout\ = (\mips_cpu|dp|ID_EX_C_memtoreg|q\(0) & ((\mips_cpu|hd|stall~5_combout\) # (\mips_cpu|hd|stall~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|hd|stall~5_combout\,
	datab => \mips_cpu|hd|stall~2_combout\,
	datad => \mips_cpu|dp|ID_EX_C_memtoreg|q\(0),
	combout => \mips_cpu|hd|stall~6_combout\);

-- Location: FF_X20_Y22_N3
\mips_cpu|dp|IF_ID_pcplus4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[3]~12_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(3));

-- Location: LCCOMB_X21_Y22_N4
\mips_cpu|dp|pcmux|y[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcmux|y[3]~1_combout\ = (!\mips_cpu|dp|pcreg|q[20]~1_combout\ & ((\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|IF_ID_inst|q\(1)))) # (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_pcplus4|q\(3),
	datab => \mips_cpu|c|md|Selector8~1_combout\,
	datac => \mips_cpu|dp|IF_ID_inst|q\(1),
	datad => \mips_cpu|dp|pcreg|q[20]~1_combout\,
	combout => \mips_cpu|dp|pcmux|y[3]~1_combout\);

-- Location: FF_X21_Y22_N5
\mips_cpu|dp|pcreg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcmux|y[3]~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(3));

-- Location: FF_X22_Y22_N15
\mips_cpu|dp|IF_ID_inst|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(2),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(2));

-- Location: LCCOMB_X22_Y21_N16
\mips_cpu|c|ad|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|ad|Mux1~0_combout\ = ((\mips_cpu|c|ID_EX_C_aluop|q\(0) & ((!\mips_cpu|c|ad|Mux0~0_combout\) # (!\mips_cpu|dp|IF_ID_inst|q\(2))))) # (!\mips_cpu|c|ID_EX_C_aluop|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(2),
	datab => \mips_cpu|c|ad|Mux0~0_combout\,
	datac => \mips_cpu|c|ID_EX_C_aluop|q\(1),
	datad => \mips_cpu|c|ID_EX_C_aluop|q\(0),
	combout => \mips_cpu|c|ad|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y20_N6
\mips_cpu|dp|srcbmux|y[30]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[30]~39_combout\ = (\mips_cpu|dp|srcbmux|y[30]~26_combout\) # ((\mips_cpu|dp|srcbmux|y[12]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[30]~26_combout\,
	datac => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(30),
	combout => \mips_cpu|dp|srcbmux|y[30]~39_combout\);

-- Location: LCCOMB_X23_Y20_N24
\mips_cpu|dp|alu|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux1~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|srcbmux|y[30]~39_combout\ & ((\mips_cpu|c|ad|Mux2~1_combout\) # (\mips_cpu|dp|MEM_WB_fwd_1|y[30]~20_combout\))) # (!\mips_cpu|dp|srcbmux|y[30]~39_combout\ & 
-- (\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|MEM_WB_fwd_1|y[30]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux1~0_combout\,
	datab => \mips_cpu|dp|srcbmux|y[30]~39_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|MEM_WB_fwd_1|y[30]~20_combout\,
	combout => \mips_cpu|dp|alu|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y20_N26
\mips_cpu|dp|alu|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux1~1_combout\ = (\mips_cpu|dp|alu|Mux1~0_combout\) # ((\mips_cpu|c|ad|Mux1~0_combout\ & (\mips_cpu|dp|alu|Add0~62_combout\ & !\mips_cpu|c|ad|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|ad|Mux1~0_combout\,
	datab => \mips_cpu|dp|alu|Add0~62_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|alu|Mux1~0_combout\,
	combout => \mips_cpu|dp|alu|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y24_N20
\mips_cpu|dp|alu|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~3_combout\ = (\mips_cpu|dp|alu|Mux0~0_combout\) # ((\mips_cpu|c|ad|Mux1~0_combout\ & (\mips_cpu|dp|alu|Add0~64_combout\ & !\mips_cpu|c|ad|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux0~0_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|alu|Add0~64_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y24_N30
\mips_cpu|dp|alu|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~4_combout\ = (!\mips_cpu|dp|alu|Mux1~1_combout\ & (!\mips_cpu|dp|alu|Equal0~3_combout\ & (!\mips_cpu|dp|alu|Mux29~1_combout\ & !\mips_cpu|dp|alu|Mux30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux1~1_combout\,
	datab => \mips_cpu|dp|alu|Equal0~3_combout\,
	datac => \mips_cpu|dp|alu|Mux29~1_combout\,
	datad => \mips_cpu|dp|alu|Mux30~1_combout\,
	combout => \mips_cpu|dp|alu|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y21_N18
\mips_cpu|dp|alu|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~7_combout\ = (!\mips_cpu|dp|alu|Mux16~1_combout\ & (!\mips_cpu|dp|alu|Mux17~1_combout\ & (!\mips_cpu|dp|alu|Mux15~1_combout\ & !\mips_cpu|dp|alu|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux16~1_combout\,
	datab => \mips_cpu|dp|alu|Mux17~1_combout\,
	datac => \mips_cpu|dp|alu|Mux15~1_combout\,
	datad => \mips_cpu|dp|alu|Mux14~1_combout\,
	combout => \mips_cpu|dp|alu|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y21_N28
\mips_cpu|dp|alu|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~8_combout\ = (!\mips_cpu|dp|alu|Mux20~1_combout\ & ((\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|alu|Mux31~0_combout\) # (!\mips_cpu|dp|alu|Add0~2_combout\))) # (!\mips_cpu|c|ad|Mux1~0_combout\ & 
-- ((!\mips_cpu|dp|alu|Mux31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux20~1_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|alu|Add0~2_combout\,
	datad => \mips_cpu|dp|alu|Mux31~0_combout\,
	combout => \mips_cpu|dp|alu|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y21_N22
\mips_cpu|dp|alu|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~9_combout\ = (\mips_cpu|dp|alu|Equal0~7_combout\ & (\mips_cpu|dp|alu|Equal0~8_combout\ & (!\mips_cpu|dp|alu|Mux19~1_combout\ & !\mips_cpu|dp|alu|Mux18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Equal0~7_combout\,
	datab => \mips_cpu|dp|alu|Equal0~8_combout\,
	datac => \mips_cpu|dp|alu|Mux19~1_combout\,
	datad => \mips_cpu|dp|alu|Mux18~1_combout\,
	combout => \mips_cpu|dp|alu|Equal0~9_combout\);

-- Location: LCCOMB_X24_Y24_N24
\mips_cpu|dp|alu|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~6_combout\ = (!\mips_cpu|dp|alu|Mux11~1_combout\ & (!\mips_cpu|dp|alu|Mux12~1_combout\ & (!\mips_cpu|dp|alu|Mux13~1_combout\ & !\mips_cpu|dp|alu|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux11~1_combout\,
	datab => \mips_cpu|dp|alu|Mux12~1_combout\,
	datac => \mips_cpu|dp|alu|Mux13~1_combout\,
	datad => \mips_cpu|dp|alu|Mux10~1_combout\,
	combout => \mips_cpu|dp|alu|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y24_N18
\mips_cpu|dp|alu|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~10_combout\ = (\mips_cpu|dp|alu|Equal0~9_combout\ & (!\mips_cpu|dp|alu|Mux8~1_combout\ & (!\mips_cpu|dp|alu|Mux9~1_combout\ & \mips_cpu|dp|alu|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Equal0~9_combout\,
	datab => \mips_cpu|dp|alu|Mux8~1_combout\,
	datac => \mips_cpu|dp|alu|Mux9~1_combout\,
	datad => \mips_cpu|dp|alu|Equal0~6_combout\,
	combout => \mips_cpu|dp|alu|Equal0~10_combout\);

-- Location: LCCOMB_X23_Y20_N30
\mips_cpu|dp|alu|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~11_combout\ = (!\mips_cpu|dp|alu|Mux7~1_combout\ & !\mips_cpu|dp|alu|Mux6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_cpu|dp|alu|Mux7~1_combout\,
	datad => \mips_cpu|dp|alu|Mux6~1_combout\,
	combout => \mips_cpu|dp|alu|Equal0~11_combout\);

-- Location: LCCOMB_X24_Y24_N4
\mips_cpu|dp|alu|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~12_combout\ = (\mips_cpu|dp|alu|Equal0~10_combout\ & (\mips_cpu|dp|alu|Equal0~11_combout\ & ((!\mips_cpu|dp|alu|Mux31~0_combout\) # (!\mips_cpu|dp|alu|Add0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Add0~64_combout\,
	datab => \mips_cpu|dp|alu|Equal0~10_combout\,
	datac => \mips_cpu|dp|alu|Equal0~11_combout\,
	datad => \mips_cpu|dp|alu|Mux31~0_combout\,
	combout => \mips_cpu|dp|alu|Equal0~12_combout\);

-- Location: LCCOMB_X23_Y23_N6
\mips_cpu|dp|alu|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~5_combout\ = (!\mips_cpu|dp|alu|Mux3~1_combout\ & (!\mips_cpu|dp|alu|Mux4~1_combout\ & (!\mips_cpu|dp|alu|Mux5~1_combout\ & !\mips_cpu|dp|alu|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux3~1_combout\,
	datab => \mips_cpu|dp|alu|Mux4~1_combout\,
	datac => \mips_cpu|dp|alu|Mux5~1_combout\,
	datad => \mips_cpu|dp|alu|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Equal0~5_combout\);

-- Location: LCCOMB_X21_Y21_N22
\mips_cpu|dp|alu|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~0_combout\ = (!\mips_cpu|dp|alu|Mux23~1_combout\ & (!\mips_cpu|dp|alu|Mux21~1_combout\ & (!\mips_cpu|dp|alu|Mux22~1_combout\ & !\mips_cpu|dp|alu|Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux23~1_combout\,
	datab => \mips_cpu|dp|alu|Mux21~1_combout\,
	datac => \mips_cpu|dp|alu|Mux22~1_combout\,
	datad => \mips_cpu|dp|alu|Mux24~1_combout\,
	combout => \mips_cpu|dp|alu|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y22_N28
\mips_cpu|dp|alu|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~1_combout\ = (!\mips_cpu|dp|alu|Mux26~1_combout\ & (!\mips_cpu|dp|alu|Mux28~1_combout\ & (!\mips_cpu|dp|alu|Mux25~1_combout\ & !\mips_cpu|dp|alu|Mux27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux26~1_combout\,
	datab => \mips_cpu|dp|alu|Mux28~1_combout\,
	datac => \mips_cpu|dp|alu|Mux25~1_combout\,
	datad => \mips_cpu|dp|alu|Mux27~1_combout\,
	combout => \mips_cpu|dp|alu|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y24_N10
\mips_cpu|dp|alu|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~2_combout\ = (\mips_cpu|dp|alu|Equal0~0_combout\ & \mips_cpu|dp|alu|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|alu|Equal0~0_combout\,
	datac => \mips_cpu|dp|alu|Equal0~1_combout\,
	combout => \mips_cpu|dp|alu|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y24_N0
\mips_cpu|dp|alu|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Equal0~13_combout\ = (\mips_cpu|dp|alu|Equal0~4_combout\ & (\mips_cpu|dp|alu|Equal0~12_combout\ & (\mips_cpu|dp|alu|Equal0~5_combout\ & \mips_cpu|dp|alu|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Equal0~4_combout\,
	datab => \mips_cpu|dp|alu|Equal0~12_combout\,
	datac => \mips_cpu|dp|alu|Equal0~5_combout\,
	datad => \mips_cpu|dp|alu|Equal0~2_combout\,
	combout => \mips_cpu|dp|alu|Equal0~13_combout\);

-- Location: FF_X24_Y24_N1
\mips_cpu|dp|EX_MEM_alu_zero|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Equal0~13_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu_zero|q\(0));

-- Location: LCCOMB_X20_Y23_N30
\mips_cpu|c|md|branch~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|branch~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(28) & \mips_cpu|dp|comb~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|IF_ID_inst|q\(28),
	datac => \mips_cpu|dp|comb~2_combout\,
	combout => \mips_cpu|c|md|branch~0_combout\);

-- Location: FF_X20_Y23_N31
\mips_cpu|c|ID_EX_C_branch|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|c|md|branch~0_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|c|ID_EX_C_branch|q\(0));

-- Location: FF_X19_Y23_N17
\mips_cpu|c|EX_MEM_C_branch|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|c|ID_EX_C_branch|q\(0),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|c|EX_MEM_C_branch|q\(0));

-- Location: LCCOMB_X19_Y23_N16
\mips_cpu|c|pcsrc~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|pcsrc~0_combout\ = (\mips_cpu|c|EX_MEM_C_branch|q\(0) & (\mips_cpu|dp|EX_MEM_alu_zero|q\(0) $ (\mips_cpu|dp|IF_ID_inst|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu_zero|q\(0),
	datac => \mips_cpu|c|EX_MEM_C_branch|q\(0),
	datad => \mips_cpu|dp|IF_ID_inst|q\(26),
	combout => \mips_cpu|c|pcsrc~0_combout\);

-- Location: LCCOMB_X21_Y22_N6
\mips_cpu|dp|pcreg|q[20]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcreg|q[20]~1_combout\ = (\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|comb~3_combout\))) # (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|c|pcsrc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|c|pcsrc~0_combout\,
	datac => \mips_cpu|c|md|Selector8~1_combout\,
	datad => \mips_cpu|dp|comb~3_combout\,
	combout => \mips_cpu|dp|pcreg|q[20]~1_combout\);

-- Location: LCCOMB_X21_Y22_N12
\mips_cpu|dp|IF_ID_pcplus4|q[2]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|IF_ID_pcplus4|q[2]~32_combout\ = !\mips_cpu|dp|pcreg|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_cpu|dp|pcreg|q\(2),
	combout => \mips_cpu|dp|IF_ID_pcplus4|q[2]~32_combout\);

-- Location: FF_X21_Y22_N13
\mips_cpu|dp|IF_ID_pcplus4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|IF_ID_pcplus4|q[2]~32_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_pcplus4|q\(2));

-- Location: LCCOMB_X21_Y22_N26
\mips_cpu|dp|pcmux|y[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|pcmux|y[2]~0_combout\ = (!\mips_cpu|dp|pcreg|q[20]~1_combout\ & ((\mips_cpu|c|md|Selector8~1_combout\ & ((\mips_cpu|dp|IF_ID_inst|q\(0)))) # (!\mips_cpu|c|md|Selector8~1_combout\ & (\mips_cpu|dp|IF_ID_pcplus4|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|pcreg|q[20]~1_combout\,
	datab => \mips_cpu|dp|IF_ID_pcplus4|q\(2),
	datac => \mips_cpu|c|md|Selector8~1_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(0),
	combout => \mips_cpu|dp|pcmux|y[2]~0_combout\);

-- Location: FF_X21_Y22_N27
\mips_cpu|dp|pcreg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|pcmux|y[2]~0_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|pcreg|q\(2));

-- Location: FF_X20_Y23_N29
\mips_cpu|dp|IF_ID_inst|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(28),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(28));

-- Location: LCCOMB_X20_Y23_N24
\mips_cpu|c|md|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|WideOr1~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(29) & (((!\mips_cpu|dp|IF_ID_inst|q\(26))) # (!\mips_cpu|dp|IF_ID_inst|q\(28)))) # (!\mips_cpu|dp|IF_ID_inst|q\(29) & ((\mips_cpu|dp|IF_ID_inst|q\(28)) # ((\mips_cpu|dp|IF_ID_inst|q\(26) & 
-- !\mips_cpu|dp|IF_ID_inst|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(29),
	datab => \mips_cpu|dp|IF_ID_inst|q\(28),
	datac => \mips_cpu|dp|IF_ID_inst|q\(26),
	datad => \mips_cpu|dp|IF_ID_inst|q\(27),
	combout => \mips_cpu|c|md|WideOr1~0_combout\);

-- Location: LCCOMB_X21_Y23_N16
\mips_cpu|dp|sze|y[16]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|sze|y[16]~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(15) & ((\mips_cpu|dp|IF_ID_inst|q\(31)) # ((\mips_cpu|c|md|WideOr1~0_combout\) # (\mips_cpu|dp|IF_ID_inst|q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(31),
	datab => \mips_cpu|c|md|WideOr1~0_combout\,
	datac => \mips_cpu|dp|IF_ID_inst|q\(15),
	datad => \mips_cpu|dp|IF_ID_inst|q\(30),
	combout => \mips_cpu|dp|sze|y[16]~0_combout\);

-- Location: FF_X21_Y23_N17
\mips_cpu|dp|ID_EX_signimm|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|sze|y[16]~0_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_signimm|q\(16));

-- Location: LCCOMB_X21_Y20_N6
\mips_cpu|dp|srcbmux|y[17]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[17]~18_combout\ = (\mips_cpu|dp|ID_EX_C_alusrc|q\(0) & ((\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & ((\mips_cpu|dp|ID_EX_signimm|q\(1)))) # (!\mips_cpu|dp|ID_EX_C_shiftl16|q\(0) & (\mips_cpu|dp|ID_EX_signimm|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ID_EX_signimm|q\(16),
	datab => \mips_cpu|dp|ID_EX_C_alusrc|q\(0),
	datac => \mips_cpu|dp|ID_EX_C_shiftl16|q\(0),
	datad => \mips_cpu|dp|ID_EX_signimm|q\(1),
	combout => \mips_cpu|dp|srcbmux|y[17]~18_combout\);

-- Location: LCCOMB_X21_Y21_N10
\mips_cpu|dp|srcbmux|y[17]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|srcbmux|y[17]~19_combout\ = (\mips_cpu|dp|srcbmux|y[17]~18_combout\) # ((\mips_cpu|dp|EX_MEM_alu|q\(17) & \mips_cpu|dp|srcbmux|y[12]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[17]~18_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(17),
	datad => \mips_cpu|dp|srcbmux|y[12]~1_combout\,
	combout => \mips_cpu|dp|srcbmux|y[17]~19_combout\);

-- Location: LCCOMB_X21_Y21_N20
\mips_cpu|dp|alu|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux14~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|srcbmux|y[17]~19_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[17]~15_combout\) # (\mips_cpu|c|ad|Mux2~1_combout\))) # (!\mips_cpu|dp|srcbmux|y[17]~19_combout\ & 
-- (\mips_cpu|dp|MEM_WB_fwd_1|y[17]~15_combout\ & \mips_cpu|c|ad|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|srcbmux|y[17]~19_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|MEM_WB_fwd_1|y[17]~15_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Mux14~0_combout\);

-- Location: LCCOMB_X24_Y21_N2
\mips_cpu|dp|alu|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux14~1_combout\ = (\mips_cpu|dp|alu|Mux14~0_combout\) # ((\mips_cpu|c|ad|Mux1~0_combout\ & (!\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|alu|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux14~0_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|alu|Add0~36_combout\,
	combout => \mips_cpu|dp|alu|Mux14~1_combout\);

-- Location: FF_X24_Y21_N3
\mips_cpu|dp|EX_MEM_alu|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux14~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(17));

-- Location: LCCOMB_X24_Y21_N0
\Decoder|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~0_combout\ = (!\mips_cpu|dp|EX_MEM_alu|q\(31) & (!\mips_cpu|dp|EX_MEM_alu|q\(30) & (!\mips_cpu|dp|EX_MEM_alu|q\(14) & !\mips_cpu|dp|EX_MEM_alu|q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(31),
	datab => \mips_cpu|dp|EX_MEM_alu|q\(30),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(14),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(15),
	combout => \Decoder|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y24_N30
\Decoder|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~3_combout\ = (!\mips_cpu|dp|EX_MEM_alu|q\(21) & (!\mips_cpu|dp|EX_MEM_alu|q\(20) & (!\mips_cpu|dp|EX_MEM_alu|q\(18) & !\mips_cpu|dp|EX_MEM_alu|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(21),
	datab => \mips_cpu|dp|EX_MEM_alu|q\(20),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(18),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(19),
	combout => \Decoder|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y23_N4
\Decoder|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~1_combout\ = (!\mips_cpu|dp|EX_MEM_alu|q\(28) & (!\mips_cpu|dp|EX_MEM_alu|q\(26) & (!\mips_cpu|dp|EX_MEM_alu|q\(29) & !\mips_cpu|dp|EX_MEM_alu|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(28),
	datab => \mips_cpu|dp|EX_MEM_alu|q\(26),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(29),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(27),
	combout => \Decoder|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y20_N18
\Decoder|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~2_combout\ = (!\mips_cpu|dp|EX_MEM_alu|q\(22) & (!\mips_cpu|dp|EX_MEM_alu|q\(25) & (!\mips_cpu|dp|EX_MEM_alu|q\(23) & !\mips_cpu|dp|EX_MEM_alu|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(22),
	datab => \mips_cpu|dp|EX_MEM_alu|q\(25),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(23),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(24),
	combout => \Decoder|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y20_N28
\Decoder|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~4_combout\ = (\Decoder|Equal0~0_combout\ & (\Decoder|Equal0~3_combout\ & (\Decoder|Equal0~1_combout\ & \Decoder|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Equal0~0_combout\,
	datab => \Decoder|Equal0~3_combout\,
	datac => \Decoder|Equal0~1_combout\,
	datad => \Decoder|Equal0~2_combout\,
	combout => \Decoder|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y20_N30
\Decoder|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~5_combout\ = (!\mips_cpu|dp|EX_MEM_alu|q\(17) & (!\mips_cpu|dp|EX_MEM_alu|q\(16) & (!\mips_cpu|dp|EX_MEM_alu|q\(13) & \Decoder|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(17),
	datab => \mips_cpu|dp|EX_MEM_alu|q\(16),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(13),
	datad => \Decoder|Equal0~4_combout\,
	combout => \Decoder|Equal0~5_combout\);

-- Location: FF_X20_Y23_N1
\mips_cpu|dp|IF_ID_inst|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(29),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(29));

-- Location: LCCOMB_X20_Y23_N2
\mips_cpu|c|md|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Decoder0~0_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(29) & (!\mips_cpu|dp|IF_ID_inst|q\(28) & (\mips_cpu|dp|IF_ID_inst|q\(26) & \mips_cpu|dp|IF_ID_inst|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(29),
	datab => \mips_cpu|dp|IF_ID_inst|q\(28),
	datac => \mips_cpu|dp|IF_ID_inst|q\(26),
	datad => \mips_cpu|dp|IF_ID_inst|q\(27),
	combout => \mips_cpu|c|md|Decoder0~0_combout\);

-- Location: LCCOMB_X20_Y23_N16
\mips_cpu|c|md|WideOr9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|WideOr9~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(29) & ((\mips_cpu|dp|IF_ID_inst|q\(28) & (!\mips_cpu|dp|IF_ID_inst|q\(26))) # (!\mips_cpu|dp|IF_ID_inst|q\(28) & ((\mips_cpu|dp|IF_ID_inst|q\(27)))))) # (!\mips_cpu|dp|IF_ID_inst|q\(29) & 
-- ((\mips_cpu|dp|IF_ID_inst|q\(28) & ((\mips_cpu|dp|IF_ID_inst|q\(27)))) # (!\mips_cpu|dp|IF_ID_inst|q\(28) & (\mips_cpu|dp|IF_ID_inst|q\(26) & !\mips_cpu|dp|IF_ID_inst|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(29),
	datab => \mips_cpu|dp|IF_ID_inst|q\(28),
	datac => \mips_cpu|dp|IF_ID_inst|q\(26),
	datad => \mips_cpu|dp|IF_ID_inst|q\(27),
	combout => \mips_cpu|c|md|WideOr9~0_combout\);

-- Location: LCCOMB_X21_Y23_N0
\mips_cpu|c|md|WideOr9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|WideOr9~1_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(30)) # ((\mips_cpu|dp|IF_ID_inst|q\(31) & (!\mips_cpu|c|md|Decoder0~0_combout\)) # (!\mips_cpu|dp|IF_ID_inst|q\(31) & ((\mips_cpu|c|md|WideOr9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|c|md|Decoder0~0_combout\,
	datab => \mips_cpu|dp|IF_ID_inst|q\(30),
	datac => \mips_cpu|c|md|WideOr9~0_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(31),
	combout => \mips_cpu|c|md|WideOr9~1_combout\);

-- Location: FF_X21_Y23_N1
\mips_cpu|dp|ID_EX_C_memwrite|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|c|md|WideOr9~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	sclr => \mips_cpu|hd|stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_C_memwrite|q\(0));

-- Location: FF_X22_Y23_N25
\mips_cpu|dp|EX_MEM_C_memwrite|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mips_cpu|dp|ID_EX_C_memwrite|q\(0),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_C_memwrite|q\(0));

-- Location: FF_X20_Y23_N13
\mips_cpu|dp|IF_ID_inst|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Inst_Data_Mem|altsyncram_component|auto_generated|q_a\(31),
	clrn => \reset_ff~clkctrl_outclk\,
	sload => VCC,
	ena => \mips_cpu|hd|ALT_INV_stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|IF_ID_inst|q\(31));

-- Location: LCCOMB_X20_Y23_N10
\mips_cpu|c|md|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector2~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(28) & (!\mips_cpu|dp|IF_ID_inst|q\(26))) # (!\mips_cpu|dp|IF_ID_inst|q\(28) & ((\mips_cpu|dp|IF_ID_inst|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|IF_ID_inst|q\(28),
	datac => \mips_cpu|dp|IF_ID_inst|q\(26),
	datad => \mips_cpu|dp|IF_ID_inst|q\(27),
	combout => \mips_cpu|c|md|Selector2~0_combout\);

-- Location: LCCOMB_X20_Y23_N4
\mips_cpu|c|md|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector2~1_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(29) & ((\mips_cpu|dp|IF_ID_inst|q\(26)) # ((!\mips_cpu|c|md|Selector2~0_combout\ & \mips_cpu|dp|comb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(26),
	datab => \mips_cpu|dp|IF_ID_inst|q\(29),
	datac => \mips_cpu|c|md|Selector2~0_combout\,
	datad => \mips_cpu|dp|comb~1_combout\,
	combout => \mips_cpu|c|md|Selector2~1_combout\);

-- Location: LCCOMB_X21_Y23_N18
\mips_cpu|c|md|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|c|md|Selector2~2_combout\ = (!\mips_cpu|dp|IF_ID_inst|q\(30) & ((\mips_cpu|c|md|Selector2~0_combout\ & ((\mips_cpu|c|md|Selector2~1_combout\))) # (!\mips_cpu|c|md|Selector2~0_combout\ & (!\mips_cpu|dp|IF_ID_inst|q\(31) & 
-- !\mips_cpu|c|md|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(31),
	datab => \mips_cpu|c|md|Selector2~0_combout\,
	datac => \mips_cpu|c|md|Selector2~1_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(30),
	combout => \mips_cpu|c|md|Selector2~2_combout\);

-- Location: FF_X21_Y23_N19
\mips_cpu|dp|ID_EX_C_regwrite|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|c|md|Selector2~2_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	sclr => \mips_cpu|hd|stall~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_C_regwrite|q\(0));

-- Location: LCCOMB_X21_Y23_N22
\mips_cpu|dp|EX_MEM_C_regwrite|q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|EX_MEM_C_regwrite|q[0]~feeder_combout\ = \mips_cpu|dp|ID_EX_C_regwrite|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_cpu|dp|ID_EX_C_regwrite|q\(0),
	combout => \mips_cpu|dp|EX_MEM_C_regwrite|q[0]~feeder_combout\);

-- Location: FF_X21_Y23_N23
\mips_cpu|dp|EX_MEM_C_regwrite|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|EX_MEM_C_regwrite|q[0]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_C_regwrite|q\(0));

-- Location: LCCOMB_X20_Y24_N24
\mips_cpu|fw|ForwardA[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardA[1]~2_combout\ = (\mips_cpu|dp|EX_MEM_C_regwrite|q\(0) & (\mips_cpu|dp|ID_EX_inst_3|q\(4) $ (!\mips_cpu|dp|EX_MEM_wrmux|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|EX_MEM_C_regwrite|q\(0),
	datac => \mips_cpu|dp|ID_EX_inst_3|q\(4),
	datad => \mips_cpu|dp|EX_MEM_wrmux|q\(4),
	combout => \mips_cpu|fw|ForwardA[1]~2_combout\);

-- Location: LCCOMB_X20_Y21_N0
\mips_cpu|dp|MEM_WB_fwd_1|y[13]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|MEM_WB_fwd_1|y[13]~0_combout\ = (\mips_cpu|fw|ForwardA[1]~2_combout\ & (\mips_cpu|fw|ForwardA[1]~0_combout\ & (\mips_cpu|fw|ForwardA[1]~1_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardA[1]~2_combout\,
	datab => \mips_cpu|fw|ForwardA[1]~0_combout\,
	datac => \mips_cpu|fw|ForwardA[1]~1_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(13),
	combout => \mips_cpu|dp|MEM_WB_fwd_1|y[13]~0_combout\);

-- Location: LCCOMB_X21_Y21_N24
\mips_cpu|dp|alu|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux18~0_combout\ = (!\mips_cpu|c|ad|Mux1~0_combout\ & ((\mips_cpu|dp|MEM_WB_fwd_1|y[13]~0_combout\ & ((\mips_cpu|dp|srcbmux|y[13]~2_combout\) # (\mips_cpu|c|ad|Mux2~1_combout\))) # (!\mips_cpu|dp|MEM_WB_fwd_1|y[13]~0_combout\ & 
-- (\mips_cpu|dp|srcbmux|y[13]~2_combout\ & \mips_cpu|c|ad|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_fwd_1|y[13]~0_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|dp|srcbmux|y[13]~2_combout\,
	datad => \mips_cpu|c|ad|Mux2~1_combout\,
	combout => \mips_cpu|dp|alu|Mux18~0_combout\);

-- Location: LCCOMB_X24_Y21_N16
\mips_cpu|dp|alu|Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|alu|Mux18~1_combout\ = (\mips_cpu|dp|alu|Mux18~0_combout\) # ((\mips_cpu|c|ad|Mux1~0_combout\ & (!\mips_cpu|c|ad|Mux2~1_combout\ & \mips_cpu|dp|alu|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|alu|Mux18~0_combout\,
	datab => \mips_cpu|c|ad|Mux1~0_combout\,
	datac => \mips_cpu|c|ad|Mux2~1_combout\,
	datad => \mips_cpu|dp|alu|Add0~28_combout\,
	combout => \mips_cpu|dp|alu|Mux18~1_combout\);

-- Location: FF_X24_Y21_N17
\mips_cpu|dp|EX_MEM_alu|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|alu|Mux18~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_alu|q\(13));

-- Location: LCCOMB_X23_Y24_N4
\Decoder|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~3_combout\ = (\mips_cpu|dp|EX_MEM_alu|q\(21) & (\mips_cpu|dp|EX_MEM_alu|q\(20) & (\mips_cpu|dp|EX_MEM_alu|q\(18) & \mips_cpu|dp|EX_MEM_alu|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(21),
	datab => \mips_cpu|dp|EX_MEM_alu|q\(20),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(18),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(19),
	combout => \Decoder|Equal1~3_combout\);

-- Location: LCCOMB_X24_Y20_N10
\Decoder|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~2_combout\ = (\mips_cpu|dp|EX_MEM_alu|q\(22) & (\mips_cpu|dp|EX_MEM_alu|q\(25) & (\mips_cpu|dp|EX_MEM_alu|q\(23) & \mips_cpu|dp|EX_MEM_alu|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(22),
	datab => \mips_cpu|dp|EX_MEM_alu|q\(25),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(23),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(24),
	combout => \Decoder|Equal1~2_combout\);

-- Location: LCCOMB_X23_Y23_N0
\Decoder|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~1_combout\ = (\mips_cpu|dp|EX_MEM_alu|q\(28) & (\mips_cpu|dp|EX_MEM_alu|q\(26) & (\mips_cpu|dp|EX_MEM_alu|q\(29) & \mips_cpu|dp|EX_MEM_alu|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(28),
	datab => \mips_cpu|dp|EX_MEM_alu|q\(26),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(29),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(27),
	combout => \Decoder|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y21_N10
\Decoder|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~0_combout\ = (\mips_cpu|dp|EX_MEM_alu|q\(31) & (\mips_cpu|dp|EX_MEM_alu|q\(30) & (!\mips_cpu|dp|EX_MEM_alu|q\(14) & !\mips_cpu|dp|EX_MEM_alu|q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(31),
	datab => \mips_cpu|dp|EX_MEM_alu|q\(30),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(14),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(15),
	combout => \Decoder|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y21_N20
\Decoder|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~4_combout\ = (\Decoder|Equal1~3_combout\ & (\Decoder|Equal1~2_combout\ & (\Decoder|Equal1~1_combout\ & \Decoder|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Equal1~3_combout\,
	datab => \Decoder|Equal1~2_combout\,
	datac => \Decoder|Equal1~1_combout\,
	datad => \Decoder|Equal1~0_combout\,
	combout => \Decoder|Equal1~4_combout\);

-- Location: LCCOMB_X24_Y21_N24
\Decoder|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~5_combout\ = (\mips_cpu|dp|EX_MEM_alu|q\(17) & (!\mips_cpu|dp|EX_MEM_alu|q\(12) & (\mips_cpu|dp|EX_MEM_alu|q\(16) & \Decoder|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(17),
	datab => \mips_cpu|dp|EX_MEM_alu|q\(12),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(16),
	datad => \Decoder|Equal1~4_combout\,
	combout => \Decoder|Equal1~5_combout\);

-- Location: LCCOMB_X24_Y22_N2
\uGPIO|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|Equal0~0_combout\ = (!\mips_cpu|dp|EX_MEM_alu|q\(6) & (!\mips_cpu|dp|EX_MEM_alu|q\(10) & (!\mips_cpu|dp|EX_MEM_alu|q\(7) & !\mips_cpu|dp|EX_MEM_alu|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(6),
	datab => \mips_cpu|dp|EX_MEM_alu|q\(10),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(7),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(11),
	combout => \uGPIO|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y22_N22
\uGPIO|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|Equal0~1_combout\ = (!\mips_cpu|dp|EX_MEM_alu|q\(0) & (\uGPIO|Equal0~0_combout\ & (!\mips_cpu|dp|EX_MEM_alu|q\(5) & !\mips_cpu|dp|EX_MEM_alu|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(0),
	datab => \uGPIO|Equal0~0_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(5),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(1),
	combout => \uGPIO|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y22_N14
\uGPIO|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|Equal0~3_combout\ = (\uGPIO|Equal0~1_combout\ & (!\mips_cpu|dp|EX_MEM_alu|q\(9) & (!\mips_cpu|dp|EX_MEM_alu|q\(8) & !\mips_cpu|dp|EX_MEM_alu|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|Equal0~1_combout\,
	datab => \mips_cpu|dp|EX_MEM_alu|q\(9),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(8),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(4),
	combout => \uGPIO|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y23_N20
\Timer|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|always0~0_combout\ = (\uGPIO|Equal0~3_combout\ & (!\mips_cpu|dp|EX_MEM_alu|q\(3) & (\mips_cpu|dp|EX_MEM_C_memwrite|q\(0) & !\mips_cpu|dp|EX_MEM_alu|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|Equal0~3_combout\,
	datab => \mips_cpu|dp|EX_MEM_alu|q\(3),
	datac => \mips_cpu|dp|EX_MEM_C_memwrite|q\(0),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(2),
	combout => \Timer|always0~0_combout\);

-- Location: LCCOMB_X24_Y23_N30
\Timer|CompareR~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CompareR~3_combout\ = ((!\mips_cpu|dp|EX_MEM_alu|q\(13) & (\Decoder|Equal1~5_combout\ & \Timer|always0~0_combout\))) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datab => \mips_cpu|dp|EX_MEM_alu|q\(13),
	datac => \Decoder|Equal1~5_combout\,
	datad => \Timer|always0~0_combout\,
	combout => \Timer|CompareR~3_combout\);

-- Location: FF_X16_Y22_N17
\Timer|CompareR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CompareR[1]~4_combout\,
	ena => \Timer|CompareR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CompareR\(1));

-- Location: LCCOMB_X16_Y22_N6
\Timer|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~11_combout\ = (\Timer|CounterR\(27) & (\Timer|CounterR\(28) & (\Timer|CounterR\(26) & \Timer|CompareR\(1)))) # (!\Timer|CounterR\(27) & (!\Timer|CounterR\(28) & (!\Timer|CounterR\(26) & !\Timer|CompareR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(27),
	datab => \Timer|CounterR\(28),
	datac => \Timer|CounterR\(26),
	datad => \Timer|CompareR\(1),
	combout => \Timer|Equal0~11_combout\);

-- Location: LCCOMB_X15_Y22_N26
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

-- Location: FF_X15_Y22_N27
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

-- Location: LCCOMB_X15_Y22_N28
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

-- Location: FF_X15_Y22_N29
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

-- Location: LCCOMB_X15_Y22_N30
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

-- Location: FF_X15_Y22_N31
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

-- Location: LCCOMB_X16_Y22_N24
\Timer|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~12_combout\ = (\Timer|CounterR\(31) & (\Timer|CounterR\(30) & (\Timer|CounterR\(29) & \Timer|CompareR\(1)))) # (!\Timer|CounterR\(31) & (!\Timer|CounterR\(30) & (!\Timer|CounterR\(29) & !\Timer|CompareR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(31),
	datab => \Timer|CounterR\(30),
	datac => \Timer|CounterR\(29),
	datad => \Timer|CompareR\(1),
	combout => \Timer|Equal0~12_combout\);

-- Location: LCCOMB_X16_Y22_N28
\Timer|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~10_combout\ = (\Timer|CounterR\(23) & (\Timer|CounterR\(25) & (\Timer|CounterR\(24) & \Timer|CompareR\(1)))) # (!\Timer|CounterR\(23) & (!\Timer|CounterR\(25) & (!\Timer|CounterR\(24) & !\Timer|CompareR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(23),
	datab => \Timer|CounterR\(25),
	datac => \Timer|CounterR\(24),
	datad => \Timer|CompareR\(1),
	combout => \Timer|Equal0~10_combout\);

-- Location: LCCOMB_X16_Y22_N10
\Timer|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~13_combout\ = (\Timer|Equal0~11_combout\ & (\Timer|Equal0~12_combout\ & \Timer|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|Equal0~11_combout\,
	datab => \Timer|Equal0~12_combout\,
	datad => \Timer|Equal0~10_combout\,
	combout => \Timer|Equal0~13_combout\);

-- Location: LCCOMB_X20_Y20_N26
\Decoder|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~6_combout\ = (\Decoder|Equal1~5_combout\ & !\mips_cpu|dp|EX_MEM_alu|q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder|Equal1~5_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(13),
	combout => \Decoder|Equal1~6_combout\);

-- Location: LCCOMB_X24_Y22_N20
\read_data[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data[0]~2_combout\ = (!\mips_cpu|dp|EX_MEM_alu|q\(4) & (!\mips_cpu|dp|EX_MEM_alu|q\(3) & !\mips_cpu|dp|EX_MEM_alu|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|EX_MEM_alu|q\(4),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(3),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(2),
	combout => \read_data[0]~2_combout\);

-- Location: LCCOMB_X24_Y22_N26
\Timer|StatusR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|StatusR~0_combout\ = (((\mips_cpu|dp|EX_MEM_alu|q\(8)) # (!\read_data[0]~2_combout\)) # (!\mips_cpu|dp|EX_MEM_alu|q\(9))) # (!\uGPIO|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|Equal0~1_combout\,
	datab => \mips_cpu|dp|EX_MEM_alu|q\(9),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(8),
	datad => \read_data[0]~2_combout\,
	combout => \Timer|StatusR~0_combout\);

-- Location: LCCOMB_X16_Y22_N14
\Timer|StatusR~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|StatusR~1_combout\ = (\Timer|StatusR\(0) & (((\mips_cpu|dp|EX_MEM_C_memwrite|q\(0)) # (\Timer|StatusR~0_combout\)) # (!\Decoder|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Equal1~6_combout\,
	datab => \Timer|StatusR\(0),
	datac => \mips_cpu|dp|EX_MEM_C_memwrite|q\(0),
	datad => \Timer|StatusR~0_combout\,
	combout => \Timer|StatusR~1_combout\);

-- Location: LCCOMB_X15_Y21_N6
\Timer|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~8_combout\ = (\Timer|CompareR\(1) & (\Timer|CounterR\(20) & (\Timer|CounterR\(22) & \Timer|CounterR\(21)))) # (!\Timer|CompareR\(1) & (!\Timer|CounterR\(20) & (!\Timer|CounterR\(22) & !\Timer|CounterR\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CompareR\(1),
	datab => \Timer|CounterR\(20),
	datac => \Timer|CounterR\(22),
	datad => \Timer|CounterR\(21),
	combout => \Timer|Equal0~8_combout\);

-- Location: LCCOMB_X15_Y21_N2
\Timer|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~6_combout\ = (\Timer|CounterR\(15) & (\Timer|CounterR\(14) & (\Timer|CounterR\(16) & \Timer|CompareR\(1)))) # (!\Timer|CounterR\(15) & (!\Timer|CounterR\(14) & (!\Timer|CounterR\(16) & !\Timer|CompareR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(15),
	datab => \Timer|CounterR\(14),
	datac => \Timer|CounterR\(16),
	datad => \Timer|CompareR\(1),
	combout => \Timer|Equal0~6_combout\);

-- Location: LCCOMB_X15_Y21_N8
\Timer|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~5_combout\ = (\Timer|CounterR\(11) & (\Timer|CounterR\(13) & (\Timer|CounterR\(12) & \Timer|CompareR\(1)))) # (!\Timer|CounterR\(11) & (!\Timer|CounterR\(13) & (!\Timer|CounterR\(12) & !\Timer|CompareR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(11),
	datab => \Timer|CounterR\(13),
	datac => \Timer|CounterR\(12),
	datad => \Timer|CompareR\(1),
	combout => \Timer|Equal0~5_combout\);

-- Location: LCCOMB_X15_Y21_N12
\Timer|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~7_combout\ = (\Timer|CounterR\(18) & (\Timer|CounterR\(19) & (\Timer|CounterR\(17) & \Timer|CompareR\(1)))) # (!\Timer|CounterR\(18) & (!\Timer|CounterR\(19) & (!\Timer|CounterR\(17) & !\Timer|CompareR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(18),
	datab => \Timer|CounterR\(19),
	datac => \Timer|CounterR\(17),
	datad => \Timer|CompareR\(1),
	combout => \Timer|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y21_N0
\Timer|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~9_combout\ = (\Timer|Equal0~8_combout\ & (\Timer|Equal0~6_combout\ & (\Timer|Equal0~5_combout\ & \Timer|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|Equal0~8_combout\,
	datab => \Timer|Equal0~6_combout\,
	datac => \Timer|Equal0~5_combout\,
	datad => \Timer|Equal0~7_combout\,
	combout => \Timer|Equal0~9_combout\);

-- Location: LCCOMB_X17_Y22_N20
\Timer|CompareR~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|CompareR~2_combout\ = (\mips_cpu|dp|EX_MEM_rd2|q\(0)) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datad => \mips_cpu|dp|EX_MEM_rd2|q\(0),
	combout => \Timer|CompareR~2_combout\);

-- Location: FF_X17_Y22_N21
\Timer|CompareR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Timer|CompareR~2_combout\,
	ena => \Timer|CompareR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|CompareR\(0));

-- Location: LCCOMB_X16_Y22_N26
\Timer|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~0_combout\ = (\Timer|CompareR\(0) & (\Timer|CounterR\(0) & (\Timer|CounterR\(1) $ (!\Timer|CompareR\(1))))) # (!\Timer|CompareR\(0) & (!\Timer|CounterR\(0) & (\Timer|CounterR\(1) $ (!\Timer|CompareR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CompareR\(0),
	datab => \Timer|CounterR\(0),
	datac => \Timer|CounterR\(1),
	datad => \Timer|CompareR\(1),
	combout => \Timer|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y22_N8
\Timer|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~3_combout\ = (\Timer|CounterR\(8) & (\Timer|CounterR\(9) & (\Timer|CounterR\(10) & \Timer|CompareR\(1)))) # (!\Timer|CounterR\(8) & (!\Timer|CounterR\(9) & (!\Timer|CounterR\(10) & !\Timer|CompareR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(8),
	datab => \Timer|CounterR\(9),
	datac => \Timer|CounterR\(10),
	datad => \Timer|CompareR\(1),
	combout => \Timer|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y22_N22
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

-- Location: LCCOMB_X16_Y22_N20
\Timer|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~1_combout\ = (\Timer|CounterR\(2) & (\Timer|CounterR\(3) & (\Timer|CounterR\(4) & \Timer|CompareR\(1)))) # (!\Timer|CounterR\(2) & (!\Timer|CounterR\(3) & (!\Timer|CounterR\(4) & !\Timer|CompareR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CounterR\(2),
	datab => \Timer|CounterR\(3),
	datac => \Timer|CounterR\(4),
	datad => \Timer|CompareR\(1),
	combout => \Timer|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y22_N18
\Timer|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|Equal0~4_combout\ = (\Timer|Equal0~0_combout\ & (\Timer|Equal0~3_combout\ & (\Timer|Equal0~2_combout\ & \Timer|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|Equal0~0_combout\,
	datab => \Timer|Equal0~3_combout\,
	datac => \Timer|Equal0~2_combout\,
	datad => \Timer|Equal0~1_combout\,
	combout => \Timer|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y22_N0
\Timer|StatusR~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Timer|StatusR~2_combout\ = (\Timer|StatusR~1_combout\) # ((\Timer|Equal0~13_combout\ & (\Timer|Equal0~9_combout\ & \Timer|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|Equal0~13_combout\,
	datab => \Timer|StatusR~1_combout\,
	datac => \Timer|Equal0~9_combout\,
	datad => \Timer|Equal0~4_combout\,
	combout => \Timer|StatusR~2_combout\);

-- Location: FF_X16_Y22_N1
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

-- Location: LCCOMB_X24_Y22_N30
\read_data[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data[0]~3_combout\ = (\mips_cpu|dp|EX_MEM_alu|q\(8) & (((\Timer|CounterR\(0) & !\mips_cpu|dp|EX_MEM_alu|q\(9))))) # (!\mips_cpu|dp|EX_MEM_alu|q\(8) & (\Timer|StatusR\(0) & ((\mips_cpu|dp|EX_MEM_alu|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|StatusR\(0),
	datab => \mips_cpu|dp|EX_MEM_alu|q\(8),
	datac => \Timer|CounterR\(0),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(9),
	combout => \read_data[0]~3_combout\);

-- Location: LCCOMB_X24_Y22_N10
\read_data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data[0]~1_combout\ = (\Timer|CompareR\(0) & (!\mips_cpu|dp|EX_MEM_alu|q\(3) & (\uGPIO|Equal0~3_combout\ & !\mips_cpu|dp|EX_MEM_alu|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|CompareR\(0),
	datab => \mips_cpu|dp|EX_MEM_alu|q\(3),
	datac => \uGPIO|Equal0~3_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(2),
	combout => \read_data[0]~1_combout\);

-- Location: LCCOMB_X24_Y22_N24
\read_data[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data[0]~4_combout\ = (\read_data[0]~1_combout\) # ((\read_data[0]~3_combout\ & (\read_data[0]~2_combout\ & \uGPIO|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_data[0]~3_combout\,
	datab => \read_data[0]~2_combout\,
	datac => \uGPIO|Equal0~1_combout\,
	datad => \read_data[0]~1_combout\,
	combout => \read_data[0]~4_combout\);

-- Location: LCCOMB_X20_Y20_N16
\Decoder|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder|Equal3~0_combout\ = (\Decoder|Equal1~5_combout\ & \mips_cpu|dp|EX_MEM_alu|q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder|Equal1~5_combout\,
	datad => \mips_cpu|dp|EX_MEM_alu|q\(13),
	combout => \Decoder|Equal3~0_combout\);

-- Location: LCCOMB_X22_Y23_N24
\uGPIO|DataOut[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|DataOut[0]~0_combout\ = (!\mips_cpu|dp|EX_MEM_alu|q\(3) & (\mips_cpu|dp|EX_MEM_alu|q\(2) & !\mips_cpu|dp|EX_MEM_C_memwrite|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(3),
	datab => \mips_cpu|dp|EX_MEM_alu|q\(2),
	datac => \mips_cpu|dp|EX_MEM_C_memwrite|q\(0),
	combout => \uGPIO|DataOut[0]~0_combout\);

-- Location: LCCOMB_X24_Y23_N0
\uGPIO|DataOut[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|DataOut[0]~1_combout\ = (\Decoder|Equal1~5_combout\ & (\uGPIO|DataOut[0]~0_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(13) & \uGPIO|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Equal1~5_combout\,
	datab => \uGPIO|DataOut[0]~0_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(13),
	datad => \uGPIO|Equal0~3_combout\,
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

-- Location: LCCOMB_X16_Y23_N28
\uGPIO|sw0|c_state~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~36_combout\ = (\SW[0]~input_o\ & \reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \reset_ff~q\,
	combout => \uGPIO|sw0|c_state~36_combout\);

-- Location: FF_X16_Y23_N29
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

-- Location: LCCOMB_X16_Y23_N10
\uGPIO|sw0|c_state~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~35_combout\ = (\reset_ff~q\ & (\SW[0]~input_o\ & !\uGPIO|sw0|c_state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datac => \SW[0]~input_o\,
	datad => \uGPIO|sw0|c_state.S0~q\,
	combout => \uGPIO|sw0|c_state~35_combout\);

-- Location: FF_X16_Y23_N11
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

-- Location: LCCOMB_X16_Y23_N24
\uGPIO|sw0|c_state~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~34_combout\ = (\reset_ff~q\ & (\SW[0]~input_o\ & \uGPIO|sw0|c_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datac => \SW[0]~input_o\,
	datad => \uGPIO|sw0|c_state.S1~q\,
	combout => \uGPIO|sw0|c_state~34_combout\);

-- Location: FF_X16_Y23_N25
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

-- Location: LCCOMB_X16_Y23_N6
\uGPIO|sw0|c_state~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~33_combout\ = (\reset_ff~q\ & (\SW[0]~input_o\ & \uGPIO|sw0|c_state.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datac => \SW[0]~input_o\,
	datad => \uGPIO|sw0|c_state.S2~q\,
	combout => \uGPIO|sw0|c_state~33_combout\);

-- Location: FF_X16_Y23_N7
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

-- Location: LCCOMB_X16_Y23_N4
\uGPIO|sw0|c_state~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~32_combout\ = (\reset_ff~q\ & (\SW[0]~input_o\ & \uGPIO|sw0|c_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datac => \SW[0]~input_o\,
	datad => \uGPIO|sw0|c_state.S3~q\,
	combout => \uGPIO|sw0|c_state~32_combout\);

-- Location: FF_X16_Y23_N5
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

-- Location: LCCOMB_X16_Y23_N26
\uGPIO|sw0|c_state~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~31_combout\ = (\uGPIO|sw0|c_state.S4~q\ & (\SW[0]~input_o\ & \reset_ff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uGPIO|sw0|c_state.S4~q\,
	datac => \SW[0]~input_o\,
	datad => \reset_ff~q\,
	combout => \uGPIO|sw0|c_state~31_combout\);

-- Location: FF_X16_Y23_N27
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

-- Location: LCCOMB_X16_Y23_N16
\uGPIO|sw0|c_state~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~30_combout\ = (\SW[0]~input_o\ & (\uGPIO|sw0|c_state.S5~q\ & \reset_ff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \uGPIO|sw0|c_state.S5~q\,
	datad => \reset_ff~q\,
	combout => \uGPIO|sw0|c_state~30_combout\);

-- Location: FF_X16_Y23_N17
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

-- Location: LCCOMB_X16_Y23_N22
\uGPIO|sw0|c_state~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~29_combout\ = (\reset_ff~q\ & (\SW[0]~input_o\ & \uGPIO|sw0|c_state.S6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datac => \SW[0]~input_o\,
	datad => \uGPIO|sw0|c_state.S6~q\,
	combout => \uGPIO|sw0|c_state~29_combout\);

-- Location: FF_X16_Y23_N23
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

-- Location: LCCOMB_X16_Y23_N20
\uGPIO|sw0|c_state~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~28_combout\ = (\SW[0]~input_o\ & (\uGPIO|sw0|c_state.S7~q\ & \reset_ff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \uGPIO|sw0|c_state.S7~q\,
	datad => \reset_ff~q\,
	combout => \uGPIO|sw0|c_state~28_combout\);

-- Location: FF_X16_Y23_N21
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

-- Location: LCCOMB_X16_Y23_N18
\uGPIO|sw0|c_state~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~27_combout\ = (\reset_ff~q\ & (\SW[0]~input_o\ & \uGPIO|sw0|c_state.S8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datac => \SW[0]~input_o\,
	datad => \uGPIO|sw0|c_state.S8~q\,
	combout => \uGPIO|sw0|c_state~27_combout\);

-- Location: FF_X16_Y23_N19
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

-- Location: LCCOMB_X16_Y23_N8
\uGPIO|sw0|c_state~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~26_combout\ = (\reset_ff~q\ & (\SW[0]~input_o\ & \uGPIO|sw0|c_state.S9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datac => \SW[0]~input_o\,
	datad => \uGPIO|sw0|c_state.S9~q\,
	combout => \uGPIO|sw0|c_state~26_combout\);

-- Location: FF_X16_Y23_N9
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

-- Location: LCCOMB_X16_Y23_N14
\uGPIO|sw0|c_state~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~25_combout\ = (\uGPIO|sw0|c_state.S10~q\ & (\SW[0]~input_o\ & \reset_ff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uGPIO|sw0|c_state.S10~q\,
	datac => \SW[0]~input_o\,
	datad => \reset_ff~q\,
	combout => \uGPIO|sw0|c_state~25_combout\);

-- Location: FF_X16_Y23_N15
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

-- Location: LCCOMB_X16_Y23_N12
\uGPIO|sw0|c_state~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~24_combout\ = (\uGPIO|sw0|c_state.S11~q\ & (\SW[0]~input_o\ & \reset_ff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uGPIO|sw0|c_state.S11~q\,
	datac => \SW[0]~input_o\,
	datad => \reset_ff~q\,
	combout => \uGPIO|sw0|c_state~24_combout\);

-- Location: FF_X16_Y23_N13
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

-- Location: LCCOMB_X16_Y23_N2
\uGPIO|sw0|c_state~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~23_combout\ = (\reset_ff~q\ & (\SW[0]~input_o\ & \uGPIO|sw0|c_state.S12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datac => \SW[0]~input_o\,
	datad => \uGPIO|sw0|c_state.S12~q\,
	combout => \uGPIO|sw0|c_state~23_combout\);

-- Location: FF_X16_Y23_N3
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

-- Location: LCCOMB_X16_Y23_N0
\uGPIO|sw0|c_state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|sw0|c_state~22_combout\ = (\reset_ff~q\ & (\SW[0]~input_o\ & \uGPIO|sw0|c_state.S13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datac => \SW[0]~input_o\,
	datad => \uGPIO|sw0|c_state.S13~q\,
	combout => \uGPIO|sw0|c_state~22_combout\);

-- Location: FF_X16_Y23_N1
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

-- Location: LCCOMB_X24_Y23_N16
\uGPIO|SW_StatusR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|SW_StatusR~0_combout\ = (!\uGPIO|DataOut[0]~1_combout\ & ((\uGPIO|sw0|c_state.S14~q\) # (\uGPIO|SW_StatusR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|sw0|c_state.S14~q\,
	datac => \uGPIO|SW_StatusR\(0),
	datad => \uGPIO|DataOut[0]~1_combout\,
	combout => \uGPIO|SW_StatusR~0_combout\);

-- Location: FF_X24_Y23_N17
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

-- Location: LCCOMB_X24_Y23_N2
\read_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data[0]~0_combout\ = (\Decoder|Equal3~0_combout\ & (\uGPIO|DataOut[0]~1_combout\ & (\uGPIO|SW_StatusR\(0)))) # (!\Decoder|Equal3~0_combout\ & (((\Inst_Data_Mem|altsyncram_component|auto_generated|q_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Equal3~0_combout\,
	datab => \uGPIO|DataOut[0]~1_combout\,
	datac => \uGPIO|SW_StatusR\(0),
	datad => \Inst_Data_Mem|altsyncram_component|auto_generated|q_b\(0),
	combout => \read_data[0]~0_combout\);

-- Location: LCCOMB_X21_Y24_N24
\read_data[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data[0]~5_combout\ = (\Decoder|Equal1~6_combout\ & (\read_data[0]~4_combout\ & (!\mips_cpu|dp|EX_MEM_C_memwrite|q\(0)))) # (!\Decoder|Equal1~6_combout\ & (((\read_data[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_data[0]~4_combout\,
	datab => \mips_cpu|dp|EX_MEM_C_memwrite|q\(0),
	datac => \Decoder|Equal1~6_combout\,
	datad => \read_data[0]~0_combout\,
	combout => \read_data[0]~5_combout\);

-- Location: FF_X21_Y24_N25
\mips_cpu|dp|MEM_WB_readdata|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \read_data[0]~5_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|MEM_WB_readdata|q\(0));

-- Location: LCCOMB_X21_Y24_N6
\mips_cpu|dp|resmux|y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|resmux|y[0]~0_combout\ = (\mips_cpu|dp|MEM_WB_C_memtoreg|q\(0) & (\mips_cpu|dp|MEM_WB_readdata|q\(0))) # (!\mips_cpu|dp|MEM_WB_C_memtoreg|q\(0) & ((\mips_cpu|dp|MEM_WB_alu|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|MEM_WB_readdata|q\(0),
	datac => \mips_cpu|dp|MEM_WB_alu|q\(0),
	datad => \mips_cpu|dp|MEM_WB_C_memtoreg|q\(0),
	combout => \mips_cpu|dp|resmux|y[0]~0_combout\);

-- Location: LCCOMB_X21_Y25_N16
\mips_cpu|dp|ra1_mux|y[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|ra1_mux|y[1]~2_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(17)) # (\mips_cpu|dp|comb~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_cpu|dp|IF_ID_inst|q\(17),
	datad => \mips_cpu|dp|comb~3_combout\,
	combout => \mips_cpu|dp|ra1_mux|y[1]~2_combout\);

-- Location: LCCOMB_X21_Y25_N10
\mips_cpu|dp|rf|Mux31~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~12_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(17) & (\mips_cpu|dp|IF_ID_inst|q\(16))) # (!\mips_cpu|dp|IF_ID_inst|q\(17) & (!\mips_cpu|dp|IF_ID_inst|q\(16) & \mips_cpu|dp|rf|R12\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(17),
	datac => \mips_cpu|dp|IF_ID_inst|q\(16),
	datad => \mips_cpu|dp|rf|R12\(0),
	combout => \mips_cpu|dp|rf|Mux31~12_combout\);

-- Location: LCCOMB_X21_Y25_N20
\mips_cpu|dp|rf|Mux31~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~13_combout\ = (\mips_cpu|dp|rf|Mux31~12_combout\) # ((\mips_cpu|dp|comb~3_combout\) # ((\mips_cpu|dp|IF_ID_inst|q\(16) & \mips_cpu|dp|rf|R13\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Mux31~12_combout\,
	datab => \mips_cpu|dp|comb~3_combout\,
	datac => \mips_cpu|dp|IF_ID_inst|q\(16),
	datad => \mips_cpu|dp|rf|R13\(0),
	combout => \mips_cpu|dp|rf|Mux31~13_combout\);

-- Location: LCCOMB_X21_Y25_N22
\mips_cpu|dp|rf|Mux31~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~14_combout\ = (\mips_cpu|dp|ra1_mux|y[1]~2_combout\ & ((\mips_cpu|dp|rf|Mux31~13_combout\ & ((\mips_cpu|dp|rf|R15\(0)))) # (!\mips_cpu|dp|rf|Mux31~13_combout\ & (\mips_cpu|dp|rf|R14\(0))))) # (!\mips_cpu|dp|ra1_mux|y[1]~2_combout\ & 
-- (((\mips_cpu|dp|rf|Mux31~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R14\(0),
	datab => \mips_cpu|dp|ra1_mux|y[1]~2_combout\,
	datac => \mips_cpu|dp|rf|R15\(0),
	datad => \mips_cpu|dp|rf|Mux31~13_combout\,
	combout => \mips_cpu|dp|rf|Mux31~14_combout\);

-- Location: LCCOMB_X19_Y24_N22
\mips_cpu|dp|ra1_mux|y[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|ra1_mux|y[3]~1_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(19)) # (\mips_cpu|dp|comb~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_cpu|dp|IF_ID_inst|q\(19),
	datad => \mips_cpu|dp|comb~3_combout\,
	combout => \mips_cpu|dp|ra1_mux|y[3]~1_combout\);

-- Location: LCCOMB_X17_Y24_N28
\mips_cpu|dp|rf|Mux31~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~5_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(17) & (\mips_cpu|dp|IF_ID_inst|q\(16))) # (!\mips_cpu|dp|IF_ID_inst|q\(17) & (!\mips_cpu|dp|IF_ID_inst|q\(16) & \mips_cpu|dp|rf|R4\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|IF_ID_inst|q\(17),
	datac => \mips_cpu|dp|IF_ID_inst|q\(16),
	datad => \mips_cpu|dp|rf|R4\(0),
	combout => \mips_cpu|dp|rf|Mux31~5_combout\);

-- Location: LCCOMB_X17_Y24_N30
\mips_cpu|dp|rf|Mux31~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~6_combout\ = (\mips_cpu|dp|rf|Mux31~5_combout\) # ((\mips_cpu|dp|comb~3_combout\) # ((\mips_cpu|dp|IF_ID_inst|q\(16) & \mips_cpu|dp|rf|R5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(16),
	datab => \mips_cpu|dp|rf|Mux31~5_combout\,
	datac => \mips_cpu|dp|comb~3_combout\,
	datad => \mips_cpu|dp|rf|R5\(0),
	combout => \mips_cpu|dp|rf|Mux31~6_combout\);

-- Location: LCCOMB_X17_Y24_N2
\mips_cpu|dp|rf|Mux31~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~7_combout\ = (\mips_cpu|dp|rf|Mux31~6_combout\ & ((\mips_cpu|dp|rf|R7\(0)) # ((!\mips_cpu|dp|IF_ID_inst|q\(17))))) # (!\mips_cpu|dp|rf|Mux31~6_combout\ & (((\mips_cpu|dp|rf|R6\(0) & \mips_cpu|dp|IF_ID_inst|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Mux31~6_combout\,
	datab => \mips_cpu|dp|rf|R7\(0),
	datac => \mips_cpu|dp|rf|R6\(0),
	datad => \mips_cpu|dp|IF_ID_inst|q\(17),
	combout => \mips_cpu|dp|rf|Mux31~7_combout\);

-- Location: LCCOMB_X17_Y24_N18
\mips_cpu|dp|rf|Mux31~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~8_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(16) & ((\mips_cpu|dp|rf|R1\(0)) # (\mips_cpu|dp|IF_ID_inst|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(16),
	datab => \mips_cpu|dp|rf|R1\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(17),
	combout => \mips_cpu|dp|rf|Mux31~8_combout\);

-- Location: LCCOMB_X17_Y24_N0
\mips_cpu|dp|rf|Mux31~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~26_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(17) & ((\mips_cpu|dp|rf|R2\(0)) # (\mips_cpu|dp|IF_ID_inst|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R2\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(16),
	datad => \mips_cpu|dp|IF_ID_inst|q\(17),
	combout => \mips_cpu|dp|rf|Mux31~26_combout\);

-- Location: LCCOMB_X17_Y24_N14
\mips_cpu|dp|rf|Mux31~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~9_combout\ = (\mips_cpu|dp|comb~3_combout\ & (((\mips_cpu|dp|rf|R3\(0))))) # (!\mips_cpu|dp|comb~3_combout\ & ((\mips_cpu|dp|rf|Mux31~8_combout\ & ((\mips_cpu|dp|rf|R3\(0)) # (!\mips_cpu|dp|rf|Mux31~26_combout\))) # 
-- (!\mips_cpu|dp|rf|Mux31~8_combout\ & (\mips_cpu|dp|rf|Mux31~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Mux31~8_combout\,
	datab => \mips_cpu|dp|rf|Mux31~26_combout\,
	datac => \mips_cpu|dp|comb~3_combout\,
	datad => \mips_cpu|dp|rf|R3\(0),
	combout => \mips_cpu|dp|rf|Mux31~9_combout\);

-- Location: LCCOMB_X17_Y24_N8
\mips_cpu|dp|rf|Mux31~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~10_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(18) & ((\mips_cpu|dp|IF_ID_inst|q\(19)))) # (!\mips_cpu|dp|IF_ID_inst|q\(18) & (\mips_cpu|dp|rf|Mux31~9_combout\ & !\mips_cpu|dp|IF_ID_inst|q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(18),
	datac => \mips_cpu|dp|rf|Mux31~9_combout\,
	datad => \mips_cpu|dp|IF_ID_inst|q\(19),
	combout => \mips_cpu|dp|rf|Mux31~10_combout\);

-- Location: LCCOMB_X17_Y24_N10
\mips_cpu|dp|rf|Mux31~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~11_combout\ = (\mips_cpu|dp|comb~3_combout\) # ((\mips_cpu|dp|rf|Mux31~10_combout\) # ((\mips_cpu|dp|IF_ID_inst|q\(18) & \mips_cpu|dp|rf|Mux31~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(18),
	datab => \mips_cpu|dp|rf|Mux31~7_combout\,
	datac => \mips_cpu|dp|comb~3_combout\,
	datad => \mips_cpu|dp|rf|Mux31~10_combout\,
	combout => \mips_cpu|dp|rf|Mux31~11_combout\);

-- Location: LCCOMB_X21_Y25_N0
\mips_cpu|dp|ra1_mux|y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|ra1_mux|y[0]~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(16)) # (\mips_cpu|dp|comb~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_cpu|dp|IF_ID_inst|q\(16),
	datad => \mips_cpu|dp|comb~3_combout\,
	combout => \mips_cpu|dp|ra1_mux|y[0]~0_combout\);

-- Location: LCCOMB_X21_Y25_N26
\mips_cpu|dp|rf|Mux31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~2_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(17) & ((\mips_cpu|dp|IF_ID_inst|q\(16)))) # (!\mips_cpu|dp|IF_ID_inst|q\(17) & (\mips_cpu|dp|rf|R8\(0) & !\mips_cpu|dp|IF_ID_inst|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(17),
	datab => \mips_cpu|dp|rf|R8\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(16),
	combout => \mips_cpu|dp|rf|Mux31~2_combout\);

-- Location: LCCOMB_X21_Y25_N12
\mips_cpu|dp|rf|Mux31~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~3_combout\ = (\mips_cpu|dp|rf|Mux31~2_combout\) # ((\mips_cpu|dp|comb~3_combout\) # ((\mips_cpu|dp|IF_ID_inst|q\(17) & \mips_cpu|dp|rf|R10\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Mux31~2_combout\,
	datab => \mips_cpu|dp|comb~3_combout\,
	datac => \mips_cpu|dp|IF_ID_inst|q\(17),
	datad => \mips_cpu|dp|rf|R10\(0),
	combout => \mips_cpu|dp|rf|Mux31~3_combout\);

-- Location: LCCOMB_X21_Y25_N6
\mips_cpu|dp|rf|Mux31~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~4_combout\ = (\mips_cpu|dp|ra1_mux|y[0]~0_combout\ & ((\mips_cpu|dp|rf|Mux31~3_combout\ & (\mips_cpu|dp|rf|R11\(0))) # (!\mips_cpu|dp|rf|Mux31~3_combout\ & ((\mips_cpu|dp|rf|R9\(0)))))) # (!\mips_cpu|dp|ra1_mux|y[0]~0_combout\ & 
-- (((\mips_cpu|dp|rf|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R11\(0),
	datab => \mips_cpu|dp|ra1_mux|y[0]~0_combout\,
	datac => \mips_cpu|dp|rf|Mux31~3_combout\,
	datad => \mips_cpu|dp|rf|R9\(0),
	combout => \mips_cpu|dp|rf|Mux31~4_combout\);

-- Location: LCCOMB_X21_Y25_N8
\mips_cpu|dp|rf|Mux31~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~15_combout\ = (\mips_cpu|dp|ra1_mux|y[3]~1_combout\ & ((\mips_cpu|dp|rf|Mux31~11_combout\ & (\mips_cpu|dp|rf|Mux31~14_combout\)) # (!\mips_cpu|dp|rf|Mux31~11_combout\ & ((\mips_cpu|dp|rf|Mux31~4_combout\))))) # 
-- (!\mips_cpu|dp|ra1_mux|y[3]~1_combout\ & (((\mips_cpu|dp|rf|Mux31~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Mux31~14_combout\,
	datab => \mips_cpu|dp|ra1_mux|y[3]~1_combout\,
	datac => \mips_cpu|dp|rf|Mux31~11_combout\,
	datad => \mips_cpu|dp|rf|Mux31~4_combout\,
	combout => \mips_cpu|dp|rf|Mux31~15_combout\);

-- Location: LCCOMB_X19_Y24_N14
\mips_cpu|dp|ra1_mux|y[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|ra1_mux|y[2]~3_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(18)) # (\mips_cpu|dp|comb~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_cpu|dp|IF_ID_inst|q\(18),
	datad => \mips_cpu|dp|comb~3_combout\,
	combout => \mips_cpu|dp|ra1_mux|y[2]~3_combout\);

-- Location: LCCOMB_X17_Y25_N26
\mips_cpu|dp|rf|Mux31~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~23_combout\ = (\mips_cpu|dp|ra1_mux|y[3]~1_combout\ & (((\mips_cpu|dp|ra1_mux|y[2]~3_combout\)))) # (!\mips_cpu|dp|ra1_mux|y[3]~1_combout\ & ((\mips_cpu|dp|ra1_mux|y[2]~3_combout\ & (\mips_cpu|dp|rf|R23\(0))) # 
-- (!\mips_cpu|dp|ra1_mux|y[2]~3_combout\ & ((\mips_cpu|dp|rf|R19\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ra1_mux|y[3]~1_combout\,
	datab => \mips_cpu|dp|rf|R23\(0),
	datac => \mips_cpu|dp|ra1_mux|y[2]~3_combout\,
	datad => \mips_cpu|dp|rf|R19\(0),
	combout => \mips_cpu|dp|rf|Mux31~23_combout\);

-- Location: LCCOMB_X17_Y25_N12
\mips_cpu|dp|rf|Mux31~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~24_combout\ = (\mips_cpu|dp|ra1_mux|y[3]~1_combout\ & ((\mips_cpu|dp|rf|Mux31~23_combout\ & (\mips_cpu|dp|rf|R31\(0))) # (!\mips_cpu|dp|rf|Mux31~23_combout\ & ((\mips_cpu|dp|rf|R27\(0)))))) # (!\mips_cpu|dp|ra1_mux|y[3]~1_combout\ & 
-- (\mips_cpu|dp|rf|Mux31~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ra1_mux|y[3]~1_combout\,
	datab => \mips_cpu|dp|rf|Mux31~23_combout\,
	datac => \mips_cpu|dp|rf|R31\(0),
	datad => \mips_cpu|dp|rf|R27\(0),
	combout => \mips_cpu|dp|rf|Mux31~24_combout\);

-- Location: LCCOMB_X20_Y25_N14
\mips_cpu|dp|rf|Mux31~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~18_combout\ = (\mips_cpu|dp|ra1_mux|y[3]~1_combout\ & (((\mips_cpu|dp|rf|R26\(0)) # (\mips_cpu|dp|ra1_mux|y[2]~3_combout\)))) # (!\mips_cpu|dp|ra1_mux|y[3]~1_combout\ & (\mips_cpu|dp|rf|R18\(0) & 
-- ((!\mips_cpu|dp|ra1_mux|y[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R18\(0),
	datab => \mips_cpu|dp|rf|R26\(0),
	datac => \mips_cpu|dp|ra1_mux|y[3]~1_combout\,
	datad => \mips_cpu|dp|ra1_mux|y[2]~3_combout\,
	combout => \mips_cpu|dp|rf|Mux31~18_combout\);

-- Location: LCCOMB_X20_Y25_N8
\mips_cpu|dp|rf|Mux31~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~19_combout\ = (\mips_cpu|dp|ra1_mux|y[2]~3_combout\ & ((\mips_cpu|dp|rf|Mux31~18_combout\ & ((\mips_cpu|dp|rf|R30\(0)))) # (!\mips_cpu|dp|rf|Mux31~18_combout\ & (\mips_cpu|dp|rf|R22\(0))))) # (!\mips_cpu|dp|ra1_mux|y[2]~3_combout\ & 
-- (((\mips_cpu|dp|rf|Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ra1_mux|y[2]~3_combout\,
	datab => \mips_cpu|dp|rf|R22\(0),
	datac => \mips_cpu|dp|rf|Mux31~18_combout\,
	datad => \mips_cpu|dp|rf|R30\(0),
	combout => \mips_cpu|dp|rf|Mux31~19_combout\);

-- Location: LCCOMB_X20_Y25_N22
\mips_cpu|dp|rf|Mux31~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~20_combout\ = (\mips_cpu|dp|ra1_mux|y[3]~1_combout\ & (((\mips_cpu|dp|rf|R24\(0)) # (\mips_cpu|dp|ra1_mux|y[2]~3_combout\)))) # (!\mips_cpu|dp|ra1_mux|y[3]~1_combout\ & (\mips_cpu|dp|rf|R16\(0) & 
-- ((!\mips_cpu|dp|ra1_mux|y[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|ra1_mux|y[3]~1_combout\,
	datab => \mips_cpu|dp|rf|R16\(0),
	datac => \mips_cpu|dp|rf|R24\(0),
	datad => \mips_cpu|dp|ra1_mux|y[2]~3_combout\,
	combout => \mips_cpu|dp|rf|Mux31~20_combout\);

-- Location: LCCOMB_X20_Y25_N0
\mips_cpu|dp|rf|Mux31~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~21_combout\ = (\mips_cpu|dp|ra1_mux|y[2]~3_combout\ & ((\mips_cpu|dp|rf|Mux31~20_combout\ & ((\mips_cpu|dp|rf|R28\(0)))) # (!\mips_cpu|dp|rf|Mux31~20_combout\ & (\mips_cpu|dp|rf|R20\(0))))) # (!\mips_cpu|dp|ra1_mux|y[2]~3_combout\ & 
-- (((\mips_cpu|dp|rf|Mux31~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R20\(0),
	datab => \mips_cpu|dp|ra1_mux|y[2]~3_combout\,
	datac => \mips_cpu|dp|rf|Mux31~20_combout\,
	datad => \mips_cpu|dp|rf|R28\(0),
	combout => \mips_cpu|dp|rf|Mux31~21_combout\);

-- Location: LCCOMB_X21_Y25_N2
\mips_cpu|dp|rf|Mux31~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~22_combout\ = (\mips_cpu|dp|ra1_mux|y[1]~2_combout\ & ((\mips_cpu|dp|rf|Mux31~19_combout\) # ((\mips_cpu|dp|ra1_mux|y[0]~0_combout\)))) # (!\mips_cpu|dp|ra1_mux|y[1]~2_combout\ & (((\mips_cpu|dp|rf|Mux31~21_combout\ & 
-- !\mips_cpu|dp|ra1_mux|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Mux31~19_combout\,
	datab => \mips_cpu|dp|ra1_mux|y[1]~2_combout\,
	datac => \mips_cpu|dp|rf|Mux31~21_combout\,
	datad => \mips_cpu|dp|ra1_mux|y[0]~0_combout\,
	combout => \mips_cpu|dp|rf|Mux31~22_combout\);

-- Location: LCCOMB_X17_Y25_N6
\mips_cpu|dp|rf|Mux31~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~16_combout\ = (\mips_cpu|dp|ra1_mux|y[2]~3_combout\ & ((\mips_cpu|dp|rf|R21\(0)) # ((\mips_cpu|dp|ra1_mux|y[3]~1_combout\)))) # (!\mips_cpu|dp|ra1_mux|y[2]~3_combout\ & (((!\mips_cpu|dp|ra1_mux|y[3]~1_combout\ & 
-- \mips_cpu|dp|rf|R17\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R21\(0),
	datab => \mips_cpu|dp|ra1_mux|y[2]~3_combout\,
	datac => \mips_cpu|dp|ra1_mux|y[3]~1_combout\,
	datad => \mips_cpu|dp|rf|R17\(0),
	combout => \mips_cpu|dp|rf|Mux31~16_combout\);

-- Location: LCCOMB_X17_Y25_N8
\mips_cpu|dp|rf|Mux31~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~17_combout\ = (\mips_cpu|dp|ra1_mux|y[3]~1_combout\ & ((\mips_cpu|dp|rf|Mux31~16_combout\ & (\mips_cpu|dp|rf|R29\(0))) # (!\mips_cpu|dp|rf|Mux31~16_combout\ & ((\mips_cpu|dp|rf|R25\(0)))))) # (!\mips_cpu|dp|ra1_mux|y[3]~1_combout\ & 
-- (((\mips_cpu|dp|rf|Mux31~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|R29\(0),
	datab => \mips_cpu|dp|rf|R25\(0),
	datac => \mips_cpu|dp|ra1_mux|y[3]~1_combout\,
	datad => \mips_cpu|dp|rf|Mux31~16_combout\,
	combout => \mips_cpu|dp|rf|Mux31~17_combout\);

-- Location: LCCOMB_X21_Y25_N28
\mips_cpu|dp|rf|Mux31~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|rf|Mux31~25_combout\ = (\mips_cpu|dp|rf|Mux31~22_combout\ & ((\mips_cpu|dp|rf|Mux31~24_combout\) # ((!\mips_cpu|dp|ra1_mux|y[0]~0_combout\)))) # (!\mips_cpu|dp|rf|Mux31~22_combout\ & (((\mips_cpu|dp|rf|Mux31~17_combout\ & 
-- \mips_cpu|dp|ra1_mux|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|rf|Mux31~24_combout\,
	datab => \mips_cpu|dp|rf|Mux31~22_combout\,
	datac => \mips_cpu|dp|rf|Mux31~17_combout\,
	datad => \mips_cpu|dp|ra1_mux|y[0]~0_combout\,
	combout => \mips_cpu|dp|rf|Mux31~25_combout\);

-- Location: LCCOMB_X21_Y25_N30
\mips_cpu|dp|WB_ID_fwd_2|y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|WB_ID_fwd_2|y[0]~0_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(20) & (((\mips_cpu|dp|rf|Mux31~25_combout\)))) # (!\mips_cpu|dp|IF_ID_inst|q\(20) & ((\mips_cpu|dp|comb~3_combout\ & ((\mips_cpu|dp|rf|Mux31~25_combout\))) # 
-- (!\mips_cpu|dp|comb~3_combout\ & (\mips_cpu|dp|rf|Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(20),
	datab => \mips_cpu|dp|comb~3_combout\,
	datac => \mips_cpu|dp|rf|Mux31~15_combout\,
	datad => \mips_cpu|dp|rf|Mux31~25_combout\,
	combout => \mips_cpu|dp|WB_ID_fwd_2|y[0]~0_combout\);

-- Location: LCCOMB_X21_Y24_N30
\mips_cpu|fw|ForwardC[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardC[0]~0_combout\ = (\mips_cpu|dp|MEM_WB_wrmux|q\(1) & (\mips_cpu|dp|IF_ID_inst|q\(17) & (\mips_cpu|dp|IF_ID_inst|q\(16) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(0))))) # (!\mips_cpu|dp|MEM_WB_wrmux|q\(1) & (!\mips_cpu|dp|IF_ID_inst|q\(17) & 
-- (\mips_cpu|dp|IF_ID_inst|q\(16) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|MEM_WB_wrmux|q\(1),
	datab => \mips_cpu|dp|IF_ID_inst|q\(16),
	datac => \mips_cpu|dp|IF_ID_inst|q\(17),
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(0),
	combout => \mips_cpu|fw|ForwardC[0]~0_combout\);

-- Location: LCCOMB_X19_Y24_N12
\mips_cpu|fw|ForwardC[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardC[0]~1_combout\ = (\mips_cpu|dp|IF_ID_inst|q\(19) & (\mips_cpu|dp|MEM_WB_wrmux|q\(3) & (\mips_cpu|dp|IF_ID_inst|q\(18) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(2))))) # (!\mips_cpu|dp|IF_ID_inst|q\(19) & (!\mips_cpu|dp|MEM_WB_wrmux|q\(3) & 
-- (\mips_cpu|dp|IF_ID_inst|q\(18) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|IF_ID_inst|q\(19),
	datab => \mips_cpu|dp|MEM_WB_wrmux|q\(3),
	datac => \mips_cpu|dp|IF_ID_inst|q\(18),
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(2),
	combout => \mips_cpu|fw|ForwardC[0]~1_combout\);

-- Location: LCCOMB_X20_Y24_N22
\mips_cpu|fw|ForwardC[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardC[0]~2_combout\ = (\mips_cpu|dp|MEM_WB_C_regwrite|q\(0) & (\mips_cpu|dp|IF_ID_inst|q\(20) $ (!\mips_cpu|dp|MEM_WB_wrmux|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|MEM_WB_C_regwrite|q\(0),
	datac => \mips_cpu|dp|IF_ID_inst|q\(20),
	datad => \mips_cpu|dp|MEM_WB_wrmux|q\(4),
	combout => \mips_cpu|fw|ForwardC[0]~2_combout\);

-- Location: LCCOMB_X20_Y24_N12
\mips_cpu|fw|ForwardC[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|fw|ForwardC[0]~3_combout\ = (\mips_cpu|fw|ForwardC[0]~0_combout\ & (\mips_cpu|fw|ForwardC[0]~1_combout\ & (!\mips_cpu|fw|Equal4~2_combout\ & \mips_cpu|fw|ForwardC[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|fw|ForwardC[0]~0_combout\,
	datab => \mips_cpu|fw|ForwardC[0]~1_combout\,
	datac => \mips_cpu|fw|Equal4~2_combout\,
	datad => \mips_cpu|fw|ForwardC[0]~2_combout\,
	combout => \mips_cpu|fw|ForwardC[0]~3_combout\);

-- Location: LCCOMB_X20_Y24_N0
\mips_cpu|dp|WB_ID_fwd_2|y[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|WB_ID_fwd_2|y[0]~1_combout\ = (\mips_cpu|fw|ForwardC[0]~3_combout\ & (\mips_cpu|dp|resmux|y[0]~0_combout\)) # (!\mips_cpu|fw|ForwardC[0]~3_combout\ & ((\mips_cpu|dp|WB_ID_fwd_2|y[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_cpu|dp|resmux|y[0]~0_combout\,
	datac => \mips_cpu|dp|WB_ID_fwd_2|y[0]~0_combout\,
	datad => \mips_cpu|fw|ForwardC[0]~3_combout\,
	combout => \mips_cpu|dp|WB_ID_fwd_2|y[0]~1_combout\);

-- Location: FF_X20_Y24_N1
\mips_cpu|dp|ID_EX_rd2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|WB_ID_fwd_2|y[0]~1_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|ID_EX_rd2|q\(0));

-- Location: LCCOMB_X19_Y22_N16
\mips_cpu|dp|EX_MEM_rd2|q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mips_cpu|dp|EX_MEM_rd2|q[0]~feeder_combout\ = \mips_cpu|dp|ID_EX_rd2|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_cpu|dp|ID_EX_rd2|q\(0),
	combout => \mips_cpu|dp|EX_MEM_rd2|q[0]~feeder_combout\);

-- Location: FF_X19_Y22_N17
\mips_cpu|dp|EX_MEM_rd2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mips_cpu|dp|EX_MEM_rd2|q[0]~feeder_combout\,
	clrn => \reset_ff~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_cpu|dp|EX_MEM_rd2|q\(0));

-- Location: LCCOMB_X17_Y22_N24
\uGPIO|HEX0_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX0_R~0_combout\ = (\reset_ff~q\ & \mips_cpu|dp|EX_MEM_rd2|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datad => \mips_cpu|dp|EX_MEM_rd2|q\(0),
	combout => \uGPIO|HEX0_R~0_combout\);

-- Location: LCCOMB_X24_Y22_N0
\uGPIO|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|Equal0~2_combout\ = (\uGPIO|Equal0~1_combout\ & (!\mips_cpu|dp|EX_MEM_alu|q\(8) & !\mips_cpu|dp|EX_MEM_alu|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|Equal0~1_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(8),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(9),
	combout => \uGPIO|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y23_N12
\uGPIO|HEX3_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX3_R~0_combout\ = (\mips_cpu|dp|EX_MEM_alu|q\(4) & (\uGPIO|Equal0~2_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(3) & !\mips_cpu|dp|EX_MEM_alu|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(4),
	datab => \uGPIO|Equal0~2_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(3),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(2),
	combout => \uGPIO|HEX3_R~0_combout\);

-- Location: LCCOMB_X24_Y23_N10
\uGPIO|LEDG_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|LEDG_R~0_combout\ = (\Decoder|Equal1~5_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(13) & \mips_cpu|dp|EX_MEM_C_memwrite|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Equal1~5_combout\,
	datab => \mips_cpu|dp|EX_MEM_alu|q\(13),
	datac => \mips_cpu|dp|EX_MEM_C_memwrite|q\(0),
	combout => \uGPIO|LEDG_R~0_combout\);

-- Location: LCCOMB_X24_Y23_N14
\uGPIO|HEX3_R~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX3_R~1_combout\ = ((\uGPIO|HEX3_R~0_combout\ & \uGPIO|LEDG_R~0_combout\)) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|HEX3_R~0_combout\,
	datac => \reset_ff~q\,
	datad => \uGPIO|LEDG_R~0_combout\,
	combout => \uGPIO|HEX3_R~1_combout\);

-- Location: FF_X28_Y25_N17
\uGPIO|HEX3_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \uGPIO|HEX0_R~0_combout\,
	sload => VCC,
	ena => \uGPIO|HEX3_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|HEX3_R\(0));

-- Location: LCCOMB_X28_Y25_N26
\uGPIO|HEX3_R[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX3_R[6]~2_combout\ = !\reset_ff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_ff~q\,
	combout => \uGPIO|HEX3_R[6]~2_combout\);

-- Location: FF_X28_Y25_N27
\uGPIO|HEX3_R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|HEX3_R[6]~2_combout\,
	ena => \uGPIO|HEX3_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|HEX3_R\(6));

-- Location: LCCOMB_X24_Y23_N8
\uGPIO|HEX2_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX2_R~0_combout\ = (\mips_cpu|dp|EX_MEM_alu|q\(4) & (!\mips_cpu|dp|EX_MEM_alu|q\(3) & \mips_cpu|dp|EX_MEM_alu|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(4),
	datac => \mips_cpu|dp|EX_MEM_alu|q\(3),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(2),
	combout => \uGPIO|HEX2_R~0_combout\);

-- Location: LCCOMB_X24_Y23_N26
\uGPIO|HEX2_R~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX2_R~1_combout\ = ((\uGPIO|Equal0~2_combout\ & (\uGPIO|HEX2_R~0_combout\ & \uGPIO|LEDG_R~0_combout\))) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datab => \uGPIO|Equal0~2_combout\,
	datac => \uGPIO|HEX2_R~0_combout\,
	datad => \uGPIO|LEDG_R~0_combout\,
	combout => \uGPIO|HEX2_R~1_combout\);

-- Location: FF_X28_Y25_N21
\uGPIO|HEX2_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \uGPIO|HEX0_R~0_combout\,
	sload => VCC,
	ena => \uGPIO|HEX2_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|HEX2_R\(0));

-- Location: LCCOMB_X28_Y25_N6
\uGPIO|HEX2_R[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX2_R[6]~2_combout\ = !\reset_ff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_ff~q\,
	combout => \uGPIO|HEX2_R[6]~2_combout\);

-- Location: FF_X28_Y25_N7
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

-- Location: LCCOMB_X24_Y23_N4
\uGPIO|HEX1_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX1_R~0_combout\ = (\mips_cpu|dp|EX_MEM_alu|q\(4) & (\uGPIO|Equal0~2_combout\ & (!\mips_cpu|dp|EX_MEM_alu|q\(3) & !\mips_cpu|dp|EX_MEM_alu|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_cpu|dp|EX_MEM_alu|q\(4),
	datab => \uGPIO|Equal0~2_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(3),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(2),
	combout => \uGPIO|HEX1_R~0_combout\);

-- Location: LCCOMB_X24_Y23_N22
\uGPIO|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|Equal2~0_combout\ = (\uGPIO|Equal0~3_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(3) & !\mips_cpu|dp|EX_MEM_alu|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|Equal0~3_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(3),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(2),
	combout => \uGPIO|Equal2~0_combout\);

-- Location: LCCOMB_X24_Y23_N24
\uGPIO|HEX1_R~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX1_R~1_combout\ = ((\uGPIO|HEX1_R~0_combout\ & (!\uGPIO|Equal2~0_combout\ & \uGPIO|LEDG_R~0_combout\))) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datab => \uGPIO|HEX1_R~0_combout\,
	datac => \uGPIO|Equal2~0_combout\,
	datad => \uGPIO|LEDG_R~0_combout\,
	combout => \uGPIO|HEX1_R~1_combout\);

-- Location: FF_X24_Y25_N17
\uGPIO|HEX1_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \uGPIO|HEX0_R~0_combout\,
	sload => VCC,
	ena => \uGPIO|HEX1_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|HEX1_R\(0));

-- Location: LCCOMB_X24_Y25_N10
\uGPIO|HEX1_R[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX1_R[6]~2_combout\ = !\reset_ff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_ff~q\,
	combout => \uGPIO|HEX1_R[6]~2_combout\);

-- Location: FF_X24_Y25_N11
\uGPIO|HEX1_R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uGPIO|HEX1_R[6]~2_combout\,
	ena => \uGPIO|HEX1_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|HEX1_R\(6));

-- Location: LCCOMB_X24_Y23_N18
\uGPIO|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|Equal3~0_combout\ = (\uGPIO|Equal0~3_combout\ & (\mips_cpu|dp|EX_MEM_alu|q\(3) & \mips_cpu|dp|EX_MEM_alu|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uGPIO|Equal0~3_combout\,
	datac => \mips_cpu|dp|EX_MEM_alu|q\(3),
	datad => \mips_cpu|dp|EX_MEM_alu|q\(2),
	combout => \uGPIO|Equal3~0_combout\);

-- Location: LCCOMB_X24_Y23_N28
\uGPIO|HEX0_R~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|HEX0_R~1_combout\ = ((\uGPIO|Equal3~0_combout\ & (!\uGPIO|Equal2~0_combout\ & \uGPIO|LEDG_R~0_combout\))) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datab => \uGPIO|Equal3~0_combout\,
	datac => \uGPIO|Equal2~0_combout\,
	datad => \uGPIO|LEDG_R~0_combout\,
	combout => \uGPIO|HEX0_R~1_combout\);

-- Location: FF_X17_Y22_N25
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

-- Location: LCCOMB_X17_Y22_N18
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

-- Location: FF_X17_Y22_N19
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

-- Location: LCCOMB_X24_Y23_N6
\uGPIO|LEDG_R~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|LEDG_R~1_combout\ = ((\uGPIO|Equal2~0_combout\ & \uGPIO|LEDG_R~0_combout\)) # (!\reset_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff~q\,
	datac => \uGPIO|Equal2~0_combout\,
	datad => \uGPIO|LEDG_R~0_combout\,
	combout => \uGPIO|LEDG_R~1_combout\);

-- Location: FF_X24_Y25_N29
\uGPIO|LEDG_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Timer|CompareR~2_combout\,
	sload => VCC,
	ena => \uGPIO|LEDG_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uGPIO|LEDG_R\(0));

-- Location: LCCOMB_X24_Y25_N22
\uGPIO|LEDG_R[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uGPIO|LEDG_R[9]~2_combout\ = !\reset_ff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_ff~q\,
	combout => \uGPIO|LEDG_R[9]~2_combout\);

-- Location: FF_X24_Y25_N23
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


