-- Circuito Sumador Completo 	--
-- Aquiles Ensminger 			--
-- A01781243 						--

--Librerias
library IEEE;
use IEEE.std_logic_1164.ALL;


Entity FA is
	port (A,B,Cin:in std_logic;
		S,Co:out std_logic);
	end FA;

architecture ARC of FA is

component HA is
	port (A,B:in std_logic;
		S,Co:out std_logic);
	end component HA;
signal C: std_logic_vector (2 downto 0);

begin
	I0 : HA port map (A,B,C(2),C(1));
	I1 : HA port map (C(2), Cin, S, C(0));
	
	Co <= C(1) or C(0);
	
end ARC;