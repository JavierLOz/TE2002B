-- Multiplexor 4-1 	--
-- Aquiles Ensminger --


library IEEE;
use IEEE.std_logic_1164.ALL;

Entity MUX4a1 is
	port (S: in std_logic_vector(1 downto 0);
			A,B,C,D: in std_logic;
			Salida : out std_logic);
end MUX4a1;

architecture ARC of MUX4a1 is

begin
	with S select
	Salida <= A when "00",
				 B when "01",
				 C when "10",
				 D when "11",
				 '0' when OTHERS;
end ARC;