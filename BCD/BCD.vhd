-- Circuito BCD 		--
-- Aquiles Ensminger --
-- A01781243 			--


library IEEE;
use IEEE.std_logic_1164.ALL;

Entity BCD is
	port (X,Y : std_logic_vector(4 downto 1);
			Cin: in std_logic;
			S : out std_logic_vector(5 downto 1);
			Co: out std_logic);
end BCD;

architecture ARC of BCD is

component RC4 is
	port (X,Y : in std_logic_vector(4 downto 1);
			Cin: in std_logic;
			Z: out std_logic_vector(4 downto 1);
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

begin
	
	I0: RC4 port map (X(4),X(3),X(2),X(1),Y(4),Y(3),Y(2),Y(1),Cin,Z(4),Z(3),Z(2),Z(1),Co);
	I1: Ajuste port map (C(4),C(3),C(2),C(1),ajuste);
	I2: masSeis port map (C(4),C(3),C(2),ajuste,S(4),S(3),S(2));
	S(1) <= Z(1);
	S(5) <= ajuste;
	
end ARC;
