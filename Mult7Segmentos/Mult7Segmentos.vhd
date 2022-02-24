-- Multiplicador Completo 4 bits/7 Segmentos --
-- Aquiles Ensminger 								--
-- A01781243 											--

library IEEE;
use IEEE.std_logic_1164.ALL;

Entity Mult7Segmentos is
	port (Entrada: in std_logic_vector(3 downto 0);
			S1,S2: in std_logic;
			Salida1: out std_logic_vector(6 downto 0);
			Salida2: out std_logic_vector(6 downto 0));
end Mult7Segmentos;

architecture ARC of MUlt7Segmentos is

component MultCompleto is
	port (A,B: in std_logic_vector(3 downto 0);
			Multiplicacion: out std_logic_vector(7 downto 0));
end component MultCompleto;

component Decoder7segmentos is
	port(S: in std_logic_vector(3 downto 0);
		  a,b,c,d,e,f,g: out std_logic);
end component Decoder7segmentos;

signal C: std_logic_vector(7 downto 0);
signal GuarDato1: std_logic_vector(3 downto 0);
signal GuarDato2: std_logic_vector(3 downto 0);

begin
	P1: process(S1)
		begin
			if S1 = '1' then
				GuarDato1 <= Entrada;
			end if;
	end process;
	
	P2: process(S2)
		begin
			if S2 = '1' then
				GuarDato2 <= Entrada;
			end if;
	end process;
		
		
	I0: MultCompleto port map (GuarDato1(3 downto 0),GuarDato2(3 downto 0),C);
	I1: Decoder7segmentos port map (C(3 downto 0),Salida1(0),Salida1(1),Salida1(2),Salida1(3),Salida1(4),Salida1(5),Salida1(6));
	I2: Decoder7segmentos port map (C(7 downto 4),Salida2(0),Salida2(1),Salida2(2),Salida2(3),Salida2(4),Salida2(5),Salida2(6));
	
end ARC;	
	
