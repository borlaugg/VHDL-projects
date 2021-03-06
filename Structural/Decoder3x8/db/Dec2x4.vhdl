library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
package Dec2x4 is
component Decoder2x4 is
port(A1,A0,E:in std_logic; y0,y1,y2,y3:out std_logic);
end component Decoder2x4;
end package Dec2x4;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Decoder2x4 is
	port(A1,A0,E:in std_logic; y0,y1,y2,y3:out std_logic);
end entity Decoder2x4;

architecture struct of Decoder2x4 is
	signal o1,o2,o3,o0,b0,b1: std_logic;
begin
not1:INVERTER
	  port map(A=>A0,Y=>b0);
not2:INVERTER
	  port map(A=>A1,Y=>b1);
and1:AND_2
	  port map(A=>b0,B=>b1,Y=>o0);
and2:AND_2
	  port map(A=>A0,B=>b1,Y=>o1);
and3:AND_2
	  port map(A=>b0,B=>A1,Y=>o2);
and4:AND_2
	  port map(A=>A0,B=>A1,Y=>o3);
and5:AND_2
	  port map(A=>o0,B=>E,Y=>y0);
and6:AND_2
	  port map(A=>o1,B=>E,Y=>y1);
and7:AND_2
	  port map(A=>o2,B=>E,Y=>y2);
and8:AND_2
	  port map(A=>o3,B=>E,Y=>y3);
end struct;