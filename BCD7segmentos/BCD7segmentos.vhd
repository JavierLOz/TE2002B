-- Circuito BCD/Decoder 7 Segmentos	--
-- Aquiles Ensminger 					--
-- A01781243 								--


library IEEE;
use IEEE.std_logic_1164.ALL;

Entity BCD7segmentos is
	port (Entrada1,Entrada2: in std_logic_vector(3 downto 0);
			Cin: in std_logic;
			Salida: out std_logic_vector(8 downto 0));
end BCD7segmentos;

architecture ARC of BCD7segmentos is

component BCD is
	port (A,B : in std_logic_vector(3 downto 0);
			Cin: in std_logic;
			Salida : out std_logic_vector(3 downto 0);
			Co: out std_logic);
end component BCD;

component Decoder7segmentos is
	port(S: in std_logic_vector(3 downto 0);
		  a,b,c,d,e,f,g: out std_logic);
end component Decoder7segmentos;

component DecoderRayita is
	port(D: in std_logic;
		  b,c: out std_logic);
end component DecoderRayita;


signal C: std_logic_vector(3 downto 0);
signal D: std_logic;

begin
	
	I0: BCD port map (Entrada1,Entrada2,Cin,C,D);
	I1: Decoder7segmentos port map (C,Salida(0),Salida(1),Salida(2),Salida(3),Salida(4),Salida(5),Salida(6));
	I2: DecoderRayita port map (D,Salida(7),Salida(8));

end ARC;
