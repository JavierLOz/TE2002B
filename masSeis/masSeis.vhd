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
	
component HA is
	port (A,B:in std_logic;
		S,Co:out std_logic);
	end component HA;
	
signal C: std_logic_vector (2 downto 1);

begin
	I0: HA port map (Z(1),ajuste,S(1),C(1));
	I1: FA port map (Z(2),ajuste,C(1),S(2),C(2));
	S(3) <= C(2) xor Z(3);
	
end ARC;
