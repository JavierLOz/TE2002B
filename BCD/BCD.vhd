-- Circuito BCD 		--
-- Aquiles Ensminger --
-- A01781243 			--


library IEEE;
use IEEE.std_logic_1164.ALL;

Entity BCD is
	port (A,B : in std_logic_vector(3 downto 0);
			Cin: in std_logic;
			Salida : out std_logic_vector(3 downto 0);
			Co: out std_logic);
end BCD;

architecture ARC of BCD is

component RC4 is
	port (X,Y : in std_logic_vector(3 downto 0);
			Cin: in std_logic;
			S: out std_logic_vector(3 downto 0);
			Co: out std_logic);
end component RC4;

component Ajuste is
	port (Z: in std_logic_vector(4 downto 1);
			ajuste: out std_logic);
end component Ajuste;

component masSeis is
	port (Z: in std_logic_vector(4 downto 2);
			ajuste: in std_logic;
			S: out std_logic_vector(3 downto 1));
end component masSeis;

signal C: std_logic_vector(4 downto 1);
signal D: std_logic_vector(4 downto 2);
signal E: std_logic_vector(1 downto 0);
signal F: std_logic_vector(3 downto 1);
signal S: std_logic_vector(4 downto 1);

begin
	D <= (C(4),C(3),C(2));
	S <= (E(0),C(4),C(3),C(2));
	I0: RC4 port map (A,B,Cin,C,E(0));
	I1: Ajuste port map (S,E(1));
	I2: masSeis port map (D,E(1),F);
	Salida(0) <= C(1);
	Salida(1) <= F(1);
	Salida(2) <= F(2);
	Salida(3) <= F(3);
	Co <= E(1);
	
end ARC;
