-- Codificador 		--
-- Aquiles Ensminger --


library IEEE;
use IEEE.std_logic_1164.ALL;

Entity Codificador is
	port(A,B,C,D: in std_logic;
			X,Y,Z : out std_logic);

end Codificador;

architecture ARC of Codificador is

component MUX2a1 is
	port (S,A,B : in std_logic;
			Salida: out std_logic);
		end component MUX2a1;
signal N: std_logic;
signal Salida:std_logic;

begin
	N <= A xor B;
	I0: MUX2a1 port map (D,B,N,Salida);
	
	X <= A;
	Y <= N;
	Z <= C xor Salida;

	
end ARC;