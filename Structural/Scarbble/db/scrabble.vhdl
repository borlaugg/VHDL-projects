library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Scrabble is
 port (a,b,c,d: in std_logic; o: out std_logic);
end entity Scrabble;

Architecture Beh of Scrabble is
 signal cd,ab:std_logic;
begin
exor:XOR_2
     port map(A=>c,B=>d,Y=>cd);
exnor:XNOR_2
     port map(A=>a,B=>b,Y=>ab);
aand:AND_2
     port map(A=>ab,B=>cd,Y=>o);
end Beh;
