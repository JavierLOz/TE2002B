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
-- Generated on "02/22/2022 19:51:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ContModuloX2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ContModuloX2_vhd_vec_tst IS
END ContModuloX2_vhd_vec_tst;
ARCHITECTURE ContModuloX2_arch OF ContModuloX2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Cuenta : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
COMPONENT ContModuloX2
	PORT (
	CLK : IN STD_LOGIC;
	Cuenta : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RST : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ContModuloX2
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Cuenta => Cuenta,
	RST => RST
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 20000 ps;
	CLK <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
	WAIT FOR 80000 ps;
	RST <= '1';
WAIT;
END PROCESS t_prcs_RST;
END ContModuloX2_arch;
