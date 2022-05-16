library ieee;
use ieee.std_logic_1164.all;
library work;
use work.ff.all;
entity seqgen is
	port (clock,reset: in std_logic; y:out std_logic_vector (3 downto 0));
end entity seqgen;

architecture Beh of seqgen is
signal ns,ps:std_logic_vector (3 downto 0):="0001";
begin
	ns(3)<= ps(0) and (ps(3) xor (ps(1) and ps(2)));
	ns(2)<= ps(0) and (ps(2) xor ps(1));
	ns(1)<= ps(0) and (not (ps(1)));
	ns(0)<='1';
	y<=ps;
	a:ffr port map(clock=>clock,reset=>reset,D=>ns(3),y=>ps(3));
	b:ffr port map(clock=>clock,reset=>reset,D=>ns(2),y=>ps(2));
	c:ffr port map(clock=>clock,reset=>reset,D=>ns(1),y=>ps(1));
	d:ffs port map(clock=>clock,set=>reset,D=>ns(0),y=>ps(0));
end Beh;