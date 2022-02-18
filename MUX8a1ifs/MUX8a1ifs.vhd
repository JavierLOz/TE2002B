-- Multiplexor 8-1 ifs 	--
-- Aquiles Ensminger --


library IEEE;
use IEEE.std_logic_1164.ALL;

Entity MUX8a1ifs is
	port (S: in std_logic_vector(2 downto 0);
			A,B,C,D,E,F,G,H: in std_logic;
			Salida : out std_logic);
end MUX8a1ifs;

architecture ARC of MUX8a1ifs is

begin
	P1: process (S) is
	begin
		if S = "000" then
				Salida <= A;
		elsif S = "001" then
			Salida <= B;
		elsif S = "010" then
			Salida <= C;
		elsif S = "011" then
			Salida <= D;
		elsif S = "100" then
			Salida <= E;
		elsif S = "101" then
			Salida <= F;
		elsif S = "110" then
			Salida <= G;
		elsif S = "111" then
			Salida <= H;
		end if;
	end process P1;
	
end ARC;