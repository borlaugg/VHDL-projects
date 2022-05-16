library ieee;
use ieee.std_logic_1164.all;
entity decoder is
	port (a:in std_logic_vector(2 downto 0);e:in std_logic;o:out std_logic_vector(7 downto 0));
end entity decoder;

architecture Beh of decoder is
begin
	Dec:process (a,e)
	variable x:integer;
	begin
		x:=0;
		o<="00000000";
		if(e='1') then
			for i in 0 to 2 loop
				if(a(i)='1') then
					x:=x+2**i;
				end if;
			end loop;
			o(x)<='1';
		end if;
	end process;
end Beh;