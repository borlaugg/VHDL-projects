


library ieee;
use ieee.std_logic_1164.all;
entity FULL_ADDER is
    port (X,Y,Cin: in std_logic;
	       C,S:out std_logic);
end entity FULL_ADDER;

architecture Behaviour of FULL_ADDER is
    signal C1,C2,S1:std_logic;
begin
    ha1: HALF_ADDER 
	      port map(A=>X, B=>Y, S=>S1, C=> C1);
	 ha2: HALF_ADDER
	      port map(A=>S1,B=>Cin,C=>C2,S=>S);
	 or1:OR_2
	      port map(A=>C1,B=>C2,Y=>C);
end Behaviour;

