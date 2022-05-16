library ieee;
use ieee.std_logic_1164.all;
entity ALU is
	port (S1,S0:in std_logic;A,B:in std_logic_vector(3 downto 0);Y:out std_logic_vector(7 downto 0));
end entity ALU;

architecture Beh of ALU is
function add(A:std_logic_vector(3 downto 0);B:in std_logic_vector(3 downto 0))
	return std_logic_vector is
		variable C : std_logic:='0';
		variable O: std_logic_vector(7 downto 0):="00000000";
	begin
		for i in 0 to 4 loop
		         if (i<4) then
						O(i):= A(i) xor B(i) xor C;
						C:= (A(i) and B(i)) or (B(i) and C) or(A(i) and C);
					else 
						O(4):=C;
					end if;
		end loop;
		
	return O;
end function;
begin 
	sys: process(A,B,S0,S1)
	begin
		if (S0='0') and (S1='0') then
			Y<=(A&B);
		elsif (S0='1') and (S1='0') then
			Y<=add(A,B);
		elsif (S0='0') and (S1='1') then
			Y<="00000000";
			for i in 0 to 3 loop
				Y(i)<=A(i) xor B(i);
			end loop;
		elsif (S0='1') and (S1='1') then
			Y<=add(A,A);
		end if;
	end process;
end Beh;