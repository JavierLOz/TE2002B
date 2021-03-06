-- Circuito +1 de 4 bits Modulo X profe 	--
-- Aquiles Ensminger 							--

library IEEE;
use IEEE.std_logic_1164.ALL;

Entity ContModuloX is
	port (CLK, RST: in std_logic;
			Cuenta: out std_logic_vector(3 downto 0));
end ContModuloX;

architecture ARC of ContModuloX is

component Contador4bits is
	port (CLK, RST: in std_logic;
			Cuenta: out std_logic_vector(3 downto 0));
end component Contador4bits;

signal Q: std_logic_vector(3 downto 0);
signal RST_INT: std_logic;

begin
	I0: Contador4bits port map (CLK,RST_INT,Q);
	
	P1: process (RST,Q)
	begin
		case RST is
			when '0' => RST_INT <= '0';
			when others => if (Q = "1100") then -- Cambiar por el numero que quieras del 0 al 15 --
									RST_INT <= '0';	-- Activo en bajo --
								else
									RST_INT <= '1';
								end if;
		end case;
	end process;
	Cuenta <= Q;
end ARC;
				