library ieee;
use ieee.std_logic_1164.all;
package Muxpkg1 is
component Mux2x1 is
port (I0,I1,S:in std_logic;
			Y:out std_logic);
end component Mux2x1;
end package Muxpkg1;


library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Mux2x1 is
	port (I0,I1,S:in std_logic;
			Y:out std_logic);
end entity Mux2x1;

architecture Beh of Mux2x1 is
	signal A,B,S0: std_logic;
begin
n1: INVERTER
	 port map(A=>S,Y=>S0);
and1: AND_2
		port map(A=>I0,B=>S0,Y=>A);
and2: AND_2
		port map(A=>I1,B=>S,Y=>B);
or1: OR_2
		port map(A=>A,B=>B,Y=>Y);
end Beh;