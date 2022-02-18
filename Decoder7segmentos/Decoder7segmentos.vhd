-- Decoder 7 Segmentos 	--
-- Aquiles Ensminger 	--

library IEEE;
use IEEE.std_logic_1164.ALL;

Entity Decoder7segmentos is
	port(S: in std_logic_vector(3 downto 0);
		  a,b,c,d,e,f,g: out std_logic);
end Decoder7segmentos;

architecture ARC of Decoder7segmentos is

begin

	
	a <=	'1' when S = "0001" else
			'1' when S = "0100" else
			'1' when S = "1011" else
			'1' when S = "1101" else
			'0';
	b <=	'1' when S = "0101" else
			'1' when S = "0110" else 
			'1' when S = "1011" else
			'1' when S = "1100" else
			'1' when S = "1110" else
			'1' when S = "1111" else
			'0';
	c <=	'1' when S = "0010" else
			'1' when S = "1100" else 
			'1' when S = "1110" else
			'1' when S = "1111" else
			'0';
	d <=	'1' when S = "0001" else
			'1' when S = "0100" else 
			'1' when S = "0111" else 
			'1' when S = "1010" else
			'1' when S = "1111" else
			'0';
	e <=	'1' when S = "0001" else
			'1' when S = "0011" else 
			'1' when S = "0100" else 
			'1' when S = "0101" else
			'1' when S = "0111" else
			'1' when S = "1001" else
			'0';
	f <=	'1' when S = "0001" else 
			'1' when S = "0010" else 
			'1' when S = "0011" else
			'1' when S = "0111" else
			'1' when S = "1101" else
			'0';
	g <=	'1' when S = "0000" else 
			'1' when S = "0001" else
			'1' when S = "0111" else 
			'1' when S = "1100" else
			'0';		
	
end ARC;		
