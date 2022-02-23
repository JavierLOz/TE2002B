-- Circuito +1 de 4 bits Modulo X2 	--
-- Aquiles Ensminger 					--

library IEEE;
use IEEE.std_logic_1164.ALL;

Entity ContModuloX2 is
	port (CLK, RST: in std_logic;
			Cuenta: out std_logic_vector(3 downto 0));
end ContModuloX2;

architecture ARC of ContModuloX2 is

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
					if (Q = "1011") then -- Cambiar segun tu modulo (Debe ser el estado anterior)--
						Q <= "0000";
					end if;
			end if;
	end process P1;
end ARC;