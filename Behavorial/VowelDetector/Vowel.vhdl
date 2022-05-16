library ieee;
use ieee.std_logic_1164.all;
entity vowel is
	port (x:in std_logic_vector(3 downto 0);o:out std_logic);
end entity vowel;

architecture Beh of vowel is
	begin
		Vow:process(x)
		variable v: std_logic;
		begin
			v:=(not x(0)) and ((x(3) and x(2)) xnor x(1));
			if (v='1') then
				o<='1';
			else 
				o<='0';
			end if;
		end process;
end Beh;
