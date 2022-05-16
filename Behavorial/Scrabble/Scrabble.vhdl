library ieee;
use ieee.std_logic_1164.all;
entity Scrabble is
	port (x:in std_logic_vector(3 downto 0);o:out std_logic);
end entity Scrabble;

architecture Beh of Scrabble is
	begin
		Vow:process(x)
		variable v: std_logic;
		begin
			v:=((x(3) xnor x(2)) and (x(1) xor x(0)));
			if (v='1') then
				o<='1';
			else 
				o<='0';
			end if;
		end process;
end Beh;
