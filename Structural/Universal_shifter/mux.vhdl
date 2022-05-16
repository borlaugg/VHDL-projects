library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
package muxx is
	component mux is
		port (I:in std_logic_vector(1 downto 0); S:in std_logic;
			Y:out std_logic);
	end component mux;
end package muxx;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity mux is
	port (I:in std_logic_vector(1 downto 0); S:in std_logic;
			Y:out std_logic);
end entity mux;

architecture Beh of mux is
	signal A,B,S0: std_logic;
begin
n1: INVERTER
	 port map(A=>S,Y=>S0);
and1: AND_2
		port map(A=>I(0),B=>S0,Y=>A);
and2: AND_2
		port map(A=>I(1),B=>S,Y=>B);
or1: OR_2
		port map(A=>A,B=>B,Y=>Y);
end Beh;