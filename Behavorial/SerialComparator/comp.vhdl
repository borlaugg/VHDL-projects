library ieee;
use ieee.std_logic_1164.all;

entity SerialComp is
port (reset, a,b: in std_logic; clock: in std_logic; g, l: out std_logic);
end entity SerialComp;

architecture Beh of SerialComp is
	type state is (rst,gt,lt,eq);
	signal y_next,y_present: state;
	begin
		cl:process (clock,reset)
		begin
			if (reset='1') then
				y_present<=rst;
			elsif (clock' event and clock='1') then
				y_present<=y_next;
			end if;
		end process;
		
      transit:process (y_present,a,b,reset)
		begin
			case y_present is
				when rst=>
				   if (reset='1') then
						y_next<=rst;
					elsif (a=b) then
						y_next<=eq;
					elsif (a='0' and b='1') then
						y_next<=lt;
					elsif (a='1' and b='0') then
						y_next<=gt;
					end if;
				when eq=>
					if (reset='1') then
						y_next<=rst;
					elsif (a=b) then
						y_next<=eq;
					elsif (a='0' and b='1') then
						y_next<=lt;
					elsif (a='1' and b='0') then
						y_next<=gt;
					end if;
				when lt=>
					if (reset='1') then
						y_next<=rst;
					elsif (a = b) then
						y_next<=lt;
					elsif (a='1' and b='0') then
						y_next<=gt;
					end if;
				when gt=>
					if (reset='1') then
						y_next<=rst;
					elsif (a = b) then
						y_next<=gt;
					elsif (a='0' and b='1') then
						y_next<=lt;
					end if;
				end case;
	   end process;		
	  
	  outp:process(y_present,a,b,reset)
			  begin
			  case y_present is
					when rst=>
				   if (reset='1') then
						g<='0';
						l<='0';
					elsif (a=b) then
						g<='0';
						l<='0';
					elsif (a='0' and b='1') then
						g<='0';
						l<='1';
					elsif (a='1' and b='0') then
						g<='1';
				      l<='0';
					end if;
				when eq=>
					if (reset='1') then
						g<='0';
						l<='0';
					elsif (a=b) then
						g<='0';
						l<='0';
					elsif (a='0' and b='1') then
						g<='0';
						l<='1';
					elsif (a='1' and b='0') then
						g<='1';
						l<='0';
					end if;
				when lt=>
					if (reset='1') then
						g<='0';
						l<='0';
					elsif (a = b) then
						g<='0';
						l<='1';
					elsif (a='1' and b='0') then
						g<='1';
						l<='0';
					end if;
				when gt=>
					if (reset='1') then
						g<='0';
						l<='0';
					elsif (a = b) then
						g<='1';
						l<='0';
					elsif (a='0' and b='1') then
						g<='0';
						l<='1';
					end if;
			  end case;
			  end process;
			  
	  
		
	   
	   
end Beh;
