-- Decoder 7 Segmentos Rayita --
-- Aquiles Ensminger 			--


library IEEE;
use IEEE.std_logic_1164.ALL;

Entity DecoderRayita is
	port(D: in std_logic;
		  b,c: out std_logic);
end DecoderRayita;

architecture ARC of DecoderRayita is

begin

	with D select
	b <= '0' when '1',
		  '1' when others;
	with D select
	c <= '0' when '1',
		  '1' when others;
end ARC;
