library ieee;
use ieee.std_logic_1164.all;
package Muxpkg2 is
component Mux4x1 is
port (a1,a2,a3,a4,s1,s2:in std_logic;
		o:out std_logic);
end component Mux4x1;
end package Muxpkg2;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.Muxpkg1.all;
entity Mux4x1 is
port(a1,a2,a3,a4,s1,s2:in std_logic;
		o:out std_logic);
end entity Mux4x1;

architecture Beh of Mux4x1 is
signal o1,o2:std_logic;
begin
m1:Mux2x1
port map(I0=>a3,I1=>a4,S=>s1,Y=>o1);
m2:Mux2x1
port map(I0=>a1,I1=>a2,S=>s1,Y=>o2);
m3:Mux2x1
port map(I0=>o2,I1=>o1,S=>s2,Y=>o);
end Beh;
