-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/22/2022 17:49:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Decoder7segmentosCase
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Decoder7segmentosCase_vhd_vec_tst IS
END Decoder7segmentosCase_vhd_vec_tst;
ARCHITECTURE Decoder7segmentosCase_arch OF Decoder7segmentosCase_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL f : STD_LOGIC;
SIGNAL g : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Decoder7segmentosCase
	PORT (
	a : OUT STD_LOGIC;
	b : OUT STD_LOGIC;
	c : OUT STD_LOGIC;
	d : OUT STD_LOGIC;
	e : OUT STD_LOGIC;
	f : OUT STD_LOGIC;
	g : OUT STD_LOGIC;
	S : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Decoder7segmentosCase
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	e => e,
	f => f,
	g => g,
	S => S
	);
-- S[3]
t_prcs_S_3: PROCESS
BEGIN
	S(3) <= '0';
	WAIT FOR 320000 ps;
	S(3) <= '1';
	WAIT FOR 320000 ps;
	S(3) <= '0';
	WAIT FOR 320000 ps;
	S(3) <= '1';
WAIT;
END PROCESS t_prcs_S_3;
-- S[2]
t_prcs_S_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		S(2) <= '0';
		WAIT FOR 160000 ps;
		S(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	S(2) <= '0';
WAIT;
END PROCESS t_prcs_S_2;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		S(1) <= '0';
		WAIT FOR 80000 ps;
		S(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	S(1) <= '0';
WAIT;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		S(0) <= '0';
		WAIT FOR 40000 ps;
		S(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	S(0) <= '0';
WAIT;
END PROCESS t_prcs_S_0;
END Decoder7segmentosCase_arch;
