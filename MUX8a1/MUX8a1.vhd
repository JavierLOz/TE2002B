-- Multiplexor 8-1 	--
-- Aquiles Ensminger --


library IEEE;
use IEEE.std_logic_1164.ALL;

Entity MUX8a1 is
	port (S: in std_logic_vector(2 downto 0);
			A,B,C,D,E,F,G,H: in std_logic;
			Salida : out std_logic);
end MUX8a1;

architecture ARC of MUX8a1 is

begin
	with S select
	Salida <= A when "000",
				 B when "001",
				 C when "010",
				 D when "011",
				 E when "100",
				 F when "101",
				 G when "110",
				 H when "111",
				 '0' when OTHERS;
end ARC;