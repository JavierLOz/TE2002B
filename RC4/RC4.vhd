-- Ripple Carry Adder 4 bits 	--
-- Aquiles Ensminger 			--
-- A01781243 						--

--Librerias
library IEEE;
use IEEE.std_logic_1164.ALL;

Entity RC4 is
	port (X,Y : in std_logic_vector(3 downto 0);
			Cin: in std_logic;
			S: out std_logic_vector(3 downto 0);
			Co: out std_logic);
end RC4;

architecture ARC of RC4 is

component FA is
	port (A,B,Cin:in std_logic;
		S,Co:out std_logic);
	end component FA;
	
signal C: std_logic_vector(3 downto 1);

begin 
	I0: FA port map (X(0),Y(0),Cin,S(0),C(1));
	I1: FA port map (X(1),Y(1),Cin,S(1),C(2));
	I2: FA port map (X(2),Y(2),Cin,S(2),C(3));
	I3: FA port map (X(3),Y(3),Cin,S(3),Co);
end ARC;

