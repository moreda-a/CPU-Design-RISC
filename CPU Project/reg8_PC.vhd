-- megafunction wizard: %LPM_COUNTER%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_COUNTER 

-- ============================================================
-- File Name: reg8_PC.vhd
-- Megafunction Name(s):
-- 			LPM_COUNTER
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 15.1.1 Build 189 12/02/2015 SJ Lite Edition
-- ************************************************************


--Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, the Altera Quartus Prime License Agreement,
--the Altera MegaCore Function License Agreement, or other 
--applicable license agreement, including, without limitation, 
--that your use is for the sole purpose of programming logic 
--devices manufactured by Altera and sold by Altera or its 
--authorized distributors.  Please refer to the applicable 
--agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY reg8_PC IS
	PORT
	(
		aclr		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		cnt_en		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		sclr		: IN STD_LOGIC ;
		sload		: IN STD_LOGIC ;
		sset		: IN STD_LOGIC ;
		cout		: OUT STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END reg8_PC;


ARCHITECTURE SYN OF reg8_pc IS

	SIGNAL sub_wire0	: STD_LOGIC ;
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (7 DOWNTO 0);



	COMPONENT lpm_counter
	GENERIC (
		lpm_direction		: STRING;
		lpm_port_updown		: STRING;
		lpm_svalue		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			aclr	: IN STD_LOGIC ;
			clock	: IN STD_LOGIC ;
			cnt_en	: IN STD_LOGIC ;
			data	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			sclr	: IN STD_LOGIC ;
			sload	: IN STD_LOGIC ;
			sset	: IN STD_LOGIC ;
			cout	: OUT STD_LOGIC ;
			q	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	cout    <= sub_wire0;
	q    <= sub_wire1(7 DOWNTO 0);

	LPM_COUNTER_component : LPM_COUNTER
	GENERIC MAP (
		lpm_direction => "UP",
		lpm_port_updown => "PORT_UNUSED",
		lpm_svalue => "10",
		lpm_type => "LPM_COUNTER",
		lpm_width => 8
	)
	PORT MAP (
		aclr => aclr,
		clock => clock,
		cnt_en => cnt_en,
		data => data,
		sclr => sclr,
		sload => sload,
		sset => sset,
		cout => sub_wire0,
		q => sub_wire1
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: ACLR NUMERIC "1"
-- Retrieval info: PRIVATE: ALOAD NUMERIC "0"
-- Retrieval info: PRIVATE: ASET NUMERIC "0"
-- Retrieval info: PRIVATE: ASET_ALL1 NUMERIC "1"
-- Retrieval info: PRIVATE: CLK_EN NUMERIC "0"
-- Retrieval info: PRIVATE: CNT_EN NUMERIC "1"
-- Retrieval info: PRIVATE: CarryIn NUMERIC "0"
-- Retrieval info: PRIVATE: CarryOut NUMERIC "1"
-- Retrieval info: PRIVATE: Direction NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: PRIVATE: ModulusCounter NUMERIC "0"
-- Retrieval info: PRIVATE: ModulusValue NUMERIC "0"
-- Retrieval info: PRIVATE: SCLR NUMERIC "1"
-- Retrieval info: PRIVATE: SLOAD NUMERIC "1"
-- Retrieval info: PRIVATE: SSET NUMERIC "1"
-- Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "0"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "8"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_DIRECTION STRING "UP"
-- Retrieval info: CONSTANT: LPM_PORT_UPDOWN STRING "PORT_UNUSED"
-- Retrieval info: CONSTANT: LPM_SVALUE STRING "10"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COUNTER"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "8"
-- Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL "aclr"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
-- Retrieval info: USED_PORT: cnt_en 0 0 0 0 INPUT NODEFVAL "cnt_en"
-- Retrieval info: USED_PORT: cout 0 0 0 0 OUTPUT NODEFVAL "cout"
-- Retrieval info: USED_PORT: data 0 0 8 0 INPUT NODEFVAL "data[7..0]"
-- Retrieval info: USED_PORT: q 0 0 8 0 OUTPUT NODEFVAL "q[7..0]"
-- Retrieval info: USED_PORT: sclr 0 0 0 0 INPUT NODEFVAL "sclr"
-- Retrieval info: USED_PORT: sload 0 0 0 0 INPUT NODEFVAL "sload"
-- Retrieval info: USED_PORT: sset 0 0 0 0 INPUT NODEFVAL "sset"
-- Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: @cnt_en 0 0 0 0 cnt_en 0 0 0 0
-- Retrieval info: CONNECT: @data 0 0 8 0 data 0 0 8 0
-- Retrieval info: CONNECT: @sclr 0 0 0 0 sclr 0 0 0 0
-- Retrieval info: CONNECT: @sload 0 0 0 0 sload 0 0 0 0
-- Retrieval info: CONNECT: @sset 0 0 0 0 sset 0 0 0 0
-- Retrieval info: CONNECT: cout 0 0 0 0 @cout 0 0 0 0
-- Retrieval info: CONNECT: q 0 0 8 0 @q 0 0 8 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL reg8_PC.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL reg8_PC.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL reg8_PC.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL reg8_PC.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL reg8_PC_inst.vhd TRUE
-- Retrieval info: LIB_FILE: lpm
