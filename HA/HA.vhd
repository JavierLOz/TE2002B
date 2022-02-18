-- Circuito Medio Sumador HA 	--
-- Aquiles Ensminger 			--
-- A01781243 						--

--Librerias
library IEEE;
use IEEE.std_logic_1164.ALL;


Entity HA is
	port (A,B:in std_logic;
	S,Co:out std_logic);
	end HA;

architecture ARC of HA is
begin
	S <= A xor B;
	Co <= A and B;
end ARC;