library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.muxx.all;
library work;
use work.shift.all;
entity Shifter is
	port(a:std_logic_vector(7 downto 0);L,b2,b1,b0:in std_logic; s:out std_logic_vector(7 downto 0));
end Shifter;

architecture B of Shifter is
	signal b,c,d,e:std_logic_vector(7 downto 0);
	begin
		inv1:inversion port map(A=>a,L=>L,C=>b);
		r4:RS4 port map(a1=>b,b2=>b2,p=>c);
		r2:RS2 port map(a1=>c,b1=>b1,q=>d);
		r1:RS1 port map(a1=>d,b0=>b0,r=>e);
		inv2:inversion port map(A=>e,L=>L,C=>s);
end B;