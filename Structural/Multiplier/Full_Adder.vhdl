library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
package FA is 

component FULL_ADDER 
 port (A, B,Cin: in std_logic; S, C: out std_logic);
end component FULL_ADDER;
 
end package FA;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity FULL_ADDER is
   port (A, B,Cin: in std_logic; S, C: out std_logic);
end entity FULL_ADDER;

architecture Equations of FULL_ADDER is
signal C1,S1,C2: std_logic;
begin
HA1:HALF_ADDER
	port map(A=>A,B=>B,C=>C1,S=>S1);
HA2:HALF_ADDER
	port map(A=>Cin,B=>S1,C=>C2,S=>S);
or2:OR_2
	port map(A=>C2,B=>C1,Y=>C);
end Equations;