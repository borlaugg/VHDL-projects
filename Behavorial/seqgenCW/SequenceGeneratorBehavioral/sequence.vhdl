library ieee;
use ieee.std_logic_1164.all;
entity Seq is
	port (clk,reset:in std_logic;y:out std_logic_vector(2 downto 0));
end entity Seq;

architecture Beh of Seq is
begin
	s:process (reset,clk)
	variable pstate,x: std_logic_vector(2 downto 0):="110";
	begin
		if (reset='1') then
			y<="110";
		elsif (clk'event and clk='1') then
			y(0)<= ((not pstate(2))and pstate(0)) or (pstate(2) and pstate(1));
			y(1)<=((pstate(2)) and (not(pstate(0)))) or ((not(pstate(2))) and (not (pstate(1))));
			y(2)<= pstate(2) xnor (pstate(0) xor pstate(1));
			x(0):= ((not pstate(2))and pstate(0)) or (pstate(2) and pstate(1));
			x(1):=((pstate(2)) and (not(pstate(0)))) or ((not(pstate(2))) and (not (pstate(1))));
			x(2):= pstate(2) xnor (pstate(0) xor pstate(1));
		end if;
		pstate:=x;
	end process;
end Beh;