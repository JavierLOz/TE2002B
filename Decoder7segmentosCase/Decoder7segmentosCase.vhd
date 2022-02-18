-- Decoder 7 Segmentos Case 	--
-- Aquiles Ensminger 	--

library IEEE;
use IEEE.std_logic_1164.ALL;

Entity Decoder7segmentosCase is
	port(S: in std_logic_vector(3 downto 0);
		  a,b,c,d,e,f,g: out std_logic);
end Decoder7segmentosCase;

architecture ARC of Decoder7segmentosCase is

begin

	P1 : process (S) is
		begin
	
		Case S is 
			when "0001" => a <= '1';
			when "0100" => a <= '1';
			when "1011" => a <= '1';
			when "1101" => a <= '1';
			when others => a <= '0';
		end case;
		
		Case S is 
			when "0101" => b <= '1';
			when "0110" => b <= '1';
			when "1011" => b <= '1';
			when "1100" => b <= '1';
			when "1110" => b <= '1';
			when "1111" => b <= '1'; 
			when others => b <= '0';
		end case;
			
		Case S is 	
			when "0010" => c <= '1';
			when "1100" => c <= '1';
			when "1110" => c <= '1';
			when "1111" => c <= '1';
			when others => c <= '0';
		end case;
		
		Case S is 
			when "0001" => d <= '1';
			when "0100" => d <= '1';
			when "0111" => d <= '1';
			when "1010" => d <= '1';
			when "1111" => d <= '1'; 
			when others => d <= '0';
		end case;
		
		Case S is 
			when "0001" => e <= '1';
			when "0011" => e <= '1';
			when "0100" => e <= '1';
			when "0101" => e <= '1';
			when "0111" => e <= '1';
			when "1001" => e <= '1'; 
			when others => e <= '0';
		end case;
		
		Case S is 
			when "0001" => f <= '1';
			when "0010" => f <= '1';
			when "0011" => f <= '1';
			when "0111" => f <= '1';
			when "1101" => f <= '1'; 
			when others => f <= '0';
		end case;
		
		Case S is 	
			when "0000" => g <= '1';
			when "0001" => g <= '1';
			when "0111" => g <= '1';
			when "1100" => g <= '1';
			when others => g <= '0';
		end case;
		
	end process P1;
		
				
end ARC;		