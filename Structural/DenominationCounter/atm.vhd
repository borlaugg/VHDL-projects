--///////////////////////////////////////////////////////////////////////////

-- @ Soumyajit Langal (WEL IITB)
-- The skeleton code for Mid-Semester EE214. 

--///////////////////////////////////////////////////////////////////////////

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.components.all;
entity atm is
-- port declaration 
port (a:in std_logic_vector(7 downto 0); o:out std_logic_vector(10 downto 0));
end entity atm;

architecture struct of atm is

component div is
generic(
			N : integer:=8; -- operand width
			NN : integer:=16 -- result width
        );
port (
			Nu: in std_logic_vector(N-1 downto 0);-- Nu (read numerator) is dividend
			D: in std_logic_vector(N-1 downto 0);-- D (read Denominator) is divisor
			RQ: out std_logic_vector(NN-1 downto 0)--upper N bits of RQ will have remainder and lower N bits will have quotient
) ;
end component;

-- write code here
signal RQ1,RQ2:std_logic_vector(15 downto 0);signal z,x,X1,X0,Y1,Y0:std_logic ;
begin
	Chk: CHECK port map(a=>a,z=>z);
	
	mx1:Mux2bit2x1 port map(I0=>'0',I1=>'1',I2=>'0',I3=>'0',S=>z,O0=>X0,O1=>X1);
	
	d100:div port map(Nu=>a,D=>"01100100",RQ=>RQ1);
	
	chk100:IS100 port map(a0=>RQ1(0),a1=>RQ1(1),x=>x);

	d50:div port map(Nu=>RQ1(15 downto 8),D=>"00110010",RQ=>RQ2);
	
	mx2:Mux2bit2x1 port map(I0=>X0,I1=>'0',I2=>X1,I3=>'1',S=>RQ2(0),O0=>Y0,O1=>Y1);
	
	mx3:Mux2bit2x1 port map(I0=>Y0,I1=>'1',I2=>Y1,I3=>'1',S=>x,O0=>o(9),O1=>o(10));
-- Write code here(don't worry about generic, just ignore it and do normal port mapping for div)
   o(8 downto 7)<=RQ1(1 downto 0);
	o(6)<=RQ2(0);
	o(5 downto 0)<=RQ2(13 downto 8);
end struct;
