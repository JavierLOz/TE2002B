-- Circuito +1 de 4 bits 	--
-- Aquiles Ensminger 		--

library IEEE;
use IEEE.std_logic_1164.ALL;

Entity Contador4bits is
	port (CLK, RST: in std_logic;
			Cuenta: out std_logic_vector(3 downto 0));
end Contador4bits;

architecture ARC of Contador4bits is

component MasUno is
	port(A: in std_logic_vector(3 downto 0);
		  Z: out std_logic_vector(3 downto 0));
end component MasUno;

signal D: std_logic_vector(3 downto 0);
signal Q: std_logic_vector(3 downto 0);

begin 
	I0: MasUno port map (Q,D);
	Cuenta <= Q;

	P1: process(CLK,RST)
		begin
			if (RST = '0') then
				Q <= "0000";
			elsif (CLK'event and CLK='1') then
				Q <= D;
			end if;
	end process P1;
end ARC;
