library ieee;
use ieee.std_logic_1164.all;
package ff is
	component ffs is
		port (set,clock,D: in std_logic; y:out std_logic);
	end component ffs;
	component ffr is
		port (reset,clock,D: in std_logic; y:out std_logic);
	end component ffr;
end package ff;

library ieee;
use ieee.std_logic_1164.all;
entity ffs is
		port (set,clock,D: in std_logic; y:out std_logic);
end entity ffs;

architecture beh of ffs is
begin
	x:process(clock,set)
	begin
		if(set='1') then
			y<='1';
		elsif (clock' event and clock='1') then
			y<=D;
		end if;
	end process;
end beh;
	
library ieee;
use ieee.std_logic_1164.all;
entity ffr is
		port (reset,clock,D: in std_logic; y:out std_logic);
end entity ffr;

architecture beh of ffr is
begin
	u:process(clock,reset)
	begin
		if(reset='1') then
			y<='0';
		elsif (clock' event and clock='1') then
			y<=D;
		end if;
	end process;
end beh;