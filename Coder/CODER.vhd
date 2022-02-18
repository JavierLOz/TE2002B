-- Coder binario <-> grey -- 

-- Libreiras --

library IEEE;
use ieee.std_logic_1164.all;

-- Entidad --
entity CODER is 
	port ( A,B,C,Co : in std_logic;
			X,Y,Z: out std_logic);
	end CODER;
	
architecture ARC of CODER is

component MULTIPLEXOR is 
	port ( A,B,Co : in std_logic;
			 S: out std_logic);
end component MULTIPLEXOR;

signal N: std_logic;
signal Salida: std_logic;


begin
	N <= A xor B;
	I0: MULTIPLEXOR port map (B,N,Co,Salida);
	
	X <= A;
	Y <= N;
	z <= C xor Salida;
	
end ARC;