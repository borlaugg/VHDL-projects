library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.Dec2x4.all;
library work;
use work.Dec3x8.all;
entity FullAdder is
port (A,B,Cin,E:in std_logic; S,Cout:out std_logic);
end entity FullAdder;

architecture Beh of FullAdder is
signal y0,y1,y2,y3,y4,y5,y6,y7,c1,c2,s1,s2:std_logic;
begin
dec3x8:Decoder3x8
		 port map(A2=>A,A1=>B,A0=>Cin,E=>E,y0=>y0,y1=>y1,y2=>y2,y3=>y3,y4=>y4,y5=>y5,y6=>y6,y7=>y7);
or1:OR_2
	 port map(A=>y1,B=>y2,Y=>s1);
or2:OR_2
	 port map(A=>y7,B=>y4,Y=>s2);
or3:OR_2
	 port map(A=>y7,B=>y3,Y=>c1);
or4:OR_2
	 port map(A=>y6,B=>y5,Y=>c2);
or5:OR_2
	 port map(A=>c1,B=>c2,Y=>Cout);
or6:OR_2
	 port map(A=>s1,B=>s2,Y=>S);
end Beh;

	 
	 