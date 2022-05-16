library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.Muxpkg1.all;
library work;
use work.Muxpkg2.all;
entity Mux4bit is
	port(a3,a2,a1,a0,b3,b2,b1,b0,c3,c2,c1,c0,d3,d2,d1,d0,s0,s1: in std_logic;
			o3,o2,o1,o0:out std_logic);
end entity Mux4bit;

Architecture Beh of Mux4bit is
begin
m1:Mux4x1
	port map(a4=>d3,a3=>c3,a2=>b3,a1=>a3,s1=>s0,s2=>s1,o=>o3);
m2:Mux4x1
	port map(a4=>d2,a3=>c2,a2=>b2,a1=>a2,s1=>s0,s2=>s1,o=>o2);
m3:Mux4x1
	port map(a4=>d1,a3=>c1,a2=>b1,a1=>a1,s1=>s0,s2=>s1,o=>o1);
m4:Mux4x1
	port map(a4=>d0,a3=>c0,a2=>b0,a1=>a0,s1=>s0,s2=>s1,o=>o0);
end Beh;