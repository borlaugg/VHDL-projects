library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.Dec2x4.all;
package Dec3x8 is
component Decoder3x8
port (a2,a1,a0,E:in std_logic; y7,y6,y5,y4,y3,y2,y1,y0: out std_logic);
end component Decoder3x8;
end package Dec3x8;


library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.Dec2x4.all;
entity Decoder3x8 is
port (a2,a1,a0,E:in std_logic; y7,y6,y5,y4,y3,y2,y1,y0: out std_logic);
end entity Decoder3x8;

architecture Beh of Decoder3x8 is
signal o0,o1,o2,o3,b2: std_logic;
begin
dn1:Decoder2x4
	 port map(A1=>a1,A0=>a0,E=>E,y0=>o0,y1=>o1,y2=>o2,y3=>o3);
in1:INVERTER
	  port map(A=>a2,Y=>b2);
and1:AND_2
	  port map(A=>o0,B=>a2,Y=>y4);
	  
and2:AND_2
	  port map(A=>o1,B=>a2,Y=>y5);
	  
and3:AND_2
	  port map(A=>o2,B=>a2,Y=>y6);
	  
and4:AND_2
	  port map(A=>o3,B=>a2,Y=>y7);
	  
and5:AND_2
	  port map(A=>o0,B=>b2,Y=>y0);
	  
and6:AND_2
	  port map(A=>o1,B=>b2,Y=>y1);
	  
and7:AND_2
	  port map(A=>o2,B=>b2,Y=>y2);

and8:AND_2
	  port map(A=>o3,B=>b2,Y=>y3);
end Beh;
