-- Sumador Multiplicador 4 bits 	--
-- Aquiles Ensminger 				--
-- A01781243 							--


library IEEE;
use IEEE.std_logic_1164.ALL;

Entity Multiplicador4 is
	port (ANDS: in std_logic_vector(15 downto 0);
			Multiplicacion : out std_logic_vector(7 downto 0));
end Multiplicador4;

architecture ARC of Multiplicador4 is

component FA is
	port (A,B,Cin:in std_logic;
		S,Co:out std_logic);
end component FA;

component HA is
	port (A,B:in std_logic;
		S,Co:out std_logic);
end component HA;

signal C: std_logic_vector(11 downto 1);
signal S: std_logic_vector(6 downto 1);

begin
	I0: HA port map (ANDS(1),ANDS(4),Multiplicacion(1),C(1));
	I1: FA port map (ANDS(2),ANDS(5),C(1),S(1),C(2));
	I2: FA port map (ANDS(3),ANDS(6),C(2),S(2),C(3));
	I3: HA port map (ANDS(7),C(3),S(3),C(4));
	
	I4: HA port map (ANDS(8),S(1),Multiplicacion(2),C(5));
	I5: FA port map (ANDS(9),S(2),C(5),S(4),C(6));
	I6: FA port map (ANDS(10),S(3),C(6),S(5),C(7));
	I7: FA port map (ANDS(11),C(4),C(7),S(6),C(8));
	
	I8: HA port map (ANDS(12),S(4),Multiplicacion(3),C(9));
	I9: FA port map (ANDS(13),S(5),C(9),Multiplicacion(4),C(10));
	I10: FA port map (ANDS(14),S(6),C(10),Multiplicacion(5),C(11));
	I11: FA port map (ANDS(15),C(8),C(11),Multiplicacion(6),Multiplicacion(7));
	
	Multiplicacion(0) <= ANDS(0);
end ARC;