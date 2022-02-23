-- Circuito Sumador +1 	--
-- Aquiles Ensminger 	--

library IEEE;
use IEEE.std_logic_1164.ALL;

Entity MasUno is
	port(A: in std_logic_vector(3 downto 0);
		  Z: out std_logic_vector(3 downto 0));
end MasUno;

architecture ARC of MAsUno is
	
component HA is	
	port (A,B: in std_logic;
			S,Co: out std_logic);
end component HA;

signal C: std_logic_vector(3 downto 0);

begin
	I0: HA port map (A(0),'1',Z(0),C(1));
	I1: HA port map (A(1),C(1),Z(1),C(2));
	I2: HA port map (A(2),C(2),Z(2),C(3));
	
	Z(3) <= A(3) xor C(3);
end ARC;