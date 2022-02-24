-- Multiplicador Completo 4 bits --
-- Aquiles Ensminger 				--
-- A01781243 							--

library IEEE;
use IEEE.std_logic_1164.ALL;

Entity MultCompleto is
	port (A,B: in std_logic_vector(3 downto 0);
			Multiplicacion: out std_logic_vector(7 downto 0));
end MultCompleto;

architecture ARC of MultCompleto is

component Multiplicador4 is
	port (ANDS: in std_logic_vector(15 downto 0);
			Multiplicacion : out std_logic_vector(7 downto 0));
end component Multiplicador4;

component RedAND is
	port(A,B: in std_logic_vector(3 downto 0);
		  ANDS: out std_logic_vector(15 downto 0));
end component RedAND;

signal C: std_logic_vector(15 downto 0);

begin
	I0: RedAND port map (A,B,C);
	I1: Multiplicador4 port map (C,Multiplicacion);
end ARC;
	