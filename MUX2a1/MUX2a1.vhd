-- Multiplexor 2-1 	--
-- Aquiles Ensminger --


library IEEE;
use IEEE.std_logic_1164.ALL;

Entity MUX2a1 is
	port (S,A,B: in std_logic;
			Salida : out std_logic);
end MUX2a1;

architecture ARC of MUX2a1 is

begin
	with S select
	Salida <= A when '0',
				 B when '1',
				 '0' when OTHERS;
end ARC;
