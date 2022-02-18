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
-- Generated on "02/17/2022 11:30:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CODER
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CODER_vhd_vec_tst IS
END CODER_vhd_vec_tst;
ARCHITECTURE CODER_arch OF CODER_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL Co : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT CODER
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	Co : IN STD_LOGIC;
	X : OUT STD_LOGIC;
	Y : OUT STD_LOGIC;
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CODER
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	Co => Co,
	X => X,
	Y => Y,
	Z => Z
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
	WAIT FOR 320000 ps;
	A <= '1';
	WAIT FOR 320000 ps;
	A <= '0';
	WAIT FOR 320000 ps;
	A <= '1';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		B <= '0';
		WAIT FOR 160000 ps;
		B <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- C
t_prcs_C: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		C <= '0';
		WAIT FOR 80000 ps;
		C <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	C <= '0';
WAIT;
END PROCESS t_prcs_C;

-- Co
t_prcs_Co: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		Co <= '0';
		WAIT FOR 40000 ps;
		Co <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	Co <= '0';
WAIT;
END PROCESS t_prcs_Co;
END CODER_arch;
