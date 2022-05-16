library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.FA.all;
library work;
use work.Add.all;
entity Multiplier is
	port (a3,a2,a1,a0,b2,b1,b0:in std_logic; m0,m1,m2,m3,m4,m5,m6:out std_logic);
end entity Multiplier;
 
Architecture B of Multiplier is
	signal a3b0,a2b0,a1b0,a3b1,a2b1,a1b1,a0b1,a3b2,a2b2,a1b2,a0b2,s1,s2,s3,s4: std_logic;
	begin
		and1:AND_2 port map(A=>a3,B=>b0,Y=>a3b0);
		and2:AND_2 port map(A=>a3,B=>b1,Y=>a3b1);
		and3:AND_2 port map(A=>a3,B=>b2,Y=>a3b2);
		and4:AND_2 port map(A=>a2,B=>b0,Y=>a2b0);
		and5:AND_2 port map(A=>a2,B=>b1,Y=>a2b1);
		and6:AND_2 port map(A=>a2,B=>b2,Y=>a2b2);
		and7:AND_2 port map(A=>a1,B=>b0,Y=>a1b0);
		and8:AND_2 port map(A=>a1,B=>b1,Y=>a1b1);
		and9:AND_2 port map(A=>a1,B=>b2,Y=>a1b2);
		and10:AND_2 port map(A=>a0,B=>b0,Y=>m0);
		and11:AND_2 port map(A=>a0,B=>b1,Y=>a0b1);
		and12:AND_2 port map(A=>a0,B=>b2,Y=>a0b2);
		as1:Adder port map(B0=>a1b0,B1=>a2b0,B2=>a3b0,B3=>'0',A0=>a0b1,A1=>a1b1,A2=>a2b1,A3=>a3b1,S0=>m1,S1=>s1,S2=>s2,S3=>s3,Cout=>s4);
		as2:Adder port map(B0=>s1,B1=>s2,B2=>s3,B3=>s4,A0=>a0b2,A1=>a1b2,A2=>a2b2,A3=>a3b2,S0=>m2,S1=>m3,S2=>m4,S3=>m5,Cout=>m6);
end B;