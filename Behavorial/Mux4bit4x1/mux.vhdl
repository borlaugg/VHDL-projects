library ieee;
use ieee.std_logic_1164.all;
entity mux is
	port (a,b,c,d:in std_logic_vector(3 downto 0);s0,s1:in std_logic; o:out std_logic_vector(3 downto 0));
end entity mux;

architecture Beh of mux is
begin
mx:process (a,b,c,d,S1,S0)
begin
	if(s1='0') and (s0='0') then 
		o<=a;
	elsif(s1='0') and (s0='1') then 
		o<=b;
	elsif(s1='1') and (s0='0') then 
		o<=c;
	else
		o<=d;
	end if;
end process;
end Beh;