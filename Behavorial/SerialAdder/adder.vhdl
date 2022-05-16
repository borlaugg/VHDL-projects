library ieee;
use ieee.std_logic_1164.all;

entity SerialAdder is
port (reset, a,b: in std_logic; clock: in std_logic; s: out std_logic);
end entity;

architecture beh of SerialAdder is
type state is (c0,c1);
signal pres,nxt: state :=c0;
signal rst:std_logic :='0';
begin
ctra:process (clock,reset)
	 begin
		if (reset='1') then
			pres<=c0;
			rst<='1';
		elsif (clock='1' and clock' event) then
			pres<=nxt;
			rst<='0';
		end if;
	end process ctra;
	
transit:process (pres,a,b)
	     begin
				case pres is
					when c0=>
						if (rst='1') then
							nxt<=c0;
							s<='0';
						elsif ((a and b)='0') then
							nxt<=c0;
							s<=(a or b);
						else 
							nxt<=c1;
							s<='0';
						end if;
					when c1=>
						if ((a or b)='1') then
							nxt<=c1;
							s<=(a and b);
						else
							nxt<=c0;
							s<='1';
						end if;
				end case;
			end process transit;
end beh;