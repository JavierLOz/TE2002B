-- Red AND				--
-- Aquiles Ensminger	--
-- A01781243 			--

library IEEE;
use IEEE.std_logic_1164.ALL;

Entity RedAND is
	port(A,B: in std_logic_vector(3 downto 0);
		  ANDS: out std_logic_vector(15 downto 0));
end RedAND;

architecture ARC of RedAND is

begin
	ANDS(0) <= A(0) and B(0);
	ANDS(1) <= A(1) and B(0);
	ANDS(2) <= A(2) and B(0);
	ANDS(3) <= A(3) and B(0);
	
	ANDS(4) <= A(0) and B(1);
	ANDS(5) <= A(1) and B(1);
	ANDS(6) <= A(2) and B(1);
	ANDS(7) <= A(3) and B(1);
	
	ANDS(8) <= A(0) and B(2);
	ANDS(9) <= A(1) and B(2);
	ANDS(10) <= A(2) and B(2);
	ANDS(11) <= A(3) and B(2);
	
	ANDS(12) <= A(0) and B(3);
	ANDS(13) <= A(1) and B(3);
	ANDS(14) <= A(2) and B(3);
	ANDS(15) <= A(3) and B(3);
end ARC;