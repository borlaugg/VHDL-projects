library ieee;
use ieee.std_logic_1164.all;
entity ALU is
	port(S0,S1:in std_logic;A,B: in std_logic_vector(3 downto 0);Y:out std_logic_vector(7 downto 0));
end entity ALU;

architecture Beh of ALU is
	function sub(A:std_logic_vector(3 downto 0);B:in std_logic_vector(3 downto 0))
		return std_logic_vector is
		variable C : std_logic:='0';
		variable O: std_logic_vector(7 downto 0):="00000000";
		variable A1,B1: std_logic_vector(7 downto 0);
			begin
			   A1:=("0000"&A);
				B1:=("0000"&B);
				for i in 0 to 7 loop
						O(i):= (C and (A1(i) xnor B1(i))) or ((not C) and (A1(i) xor B1(i)));
						C:= (C and B1(i)) or ((not A1(i)) and (B1(i) xor C));
				end loop;
		return O;
	end function;
	
	function rot(A:std_logic_vector(3 downto 0);B:in std_logic_vector(3 downto 0))
		return std_logic_vector is
		variable O,A1 : std_logic_vector(7 downto 0):="0000"&A;
		variable t:integer:=0; 
			begin
					for i in 0 to 2 loop
						if(B(i)='1') then
							t:=t+2**i;
						end if;
					end loop;
					for i in 1 to 7 loop
						if(i<=t) then
							O(7 downto 1):=A1(6 downto 0);
							O(0):=A1(7);
							A1:=O;
						end if;
					end loop;
			return O;
		end function;
		
	begin
	ALU2:process (S0,S1,A,B)
	begin
		if (S0='0') and (S1='0') then
			Y<=rot(A,B);
		elsif (S1='0') and (S0='1') then
			Y<=sub(A,B);
		elsif (S1='1') and (S0='0') then
			Y<="00000000";
			for i in 0 to 3 loop
				Y(i)<=A(i) nor B(i);
			end loop;
		elsif (S1='1') and (S0='1') then
			Y<="00000000";
			for i in 0 to 3 loop
				Y(i+2)<=A(i);
			end loop;
		end if;
	end process;
end Beh;