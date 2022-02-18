-- Circuito Ajuste BCD 	--
-- Aquiles Ensminger 	--
-- A01781243 				--


library IEEE;
use IEEE.std_logic_1164.ALL;

Entity Ajuste is
	port (Z: in std_logic_vector(4 downto 1);
			ajuste: out std_logic);
end Ajuste;

architecture ARC of Ajuste is

begin	
	ajuste <= (Z(4) or (Z(3) and Z(2)) or(Z(3) and Z(1)));

end ARC;



			