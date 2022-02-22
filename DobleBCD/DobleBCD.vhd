-- Circuito Doble BCD/Decoder 7 Segmentos	--
-- Aquiles Ensminger 							--
-- A01781243 										--


library IEEE;
use IEEE.std_logic_1164.ALL;

Entity DobleBCD is
	port (Entrada1, Entrada2, Entrada3, Entrada4: in std_logic_vector(3 downto 0);
			Cin: in std_logic;
			Salida1, Salida2: out std_logic_vector(8 downto 0));
end DobleBCD;

architecture ARC of DobleBCD is

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
signal E: std_logic;
signal F: std_logic_vector(3 downto 0);

begin
	
	I0: BCD port map (Entrada1,Entrada2,Cin,C,E);
	I1: BCD port map (Entrada3,Entrada4,E,F,D);
	I2: Decoder7segmentos port map (C,Salida1(0),Salida1(1),Salida1(2),Salida1(3),Salida1(4),Salida1(5),Salida1(6));
	I3: Decoder7segmentos port map (F,Salida2(0),Salida2(1),Salida2(2),Salida2(3),Salida2(4),Salida2(5),Salida2(6));
	I4: DecoderRayita port map (D,Salida2(7),Salida2(8));

end ARC;