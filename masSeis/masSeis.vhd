-- Circuito mas Seis para BCD 	--
-- Aquiles Ensminger 				--
-- A01781243 							--


library IEEE;
use IEEE.std_logic_1164.ALL;

Entity masSeis is
	port (Z: in std_logic_vector(3 downto 1);
			ajuste: in std_logic;
			S: out std_logic_vector(3 downto 1));
end masSeis;

architecture ARC of masSeis is

component FA is
	port (A,B,Cin:in std_logic;
		S,Co:out std_logic);
	end component FA;

signal C: std_logic_vector (2 downto 0)	
	
component HA is
	port (A,B:in std_logic;
		S,Co:out std_logic);
	end component HA;
	
signal D: std_logic_vector (2 downto 0)
