library ieee;
use ieee.std_logic_1164.all;
library work;
use work.FA.all;
library work;
use work.Gates.all;
entity AdderSubtractor is
    port (M,B0,B1,B2,B3,A0,A1,A2,A3: in std_logic;
	       S0,S1,S2,S3,Cout: out std_logic);
end entity AdderSubtractor;

architecture Arch of AdderSubtractor is
    signal C1,C2,C3,X1,X2,X3,X4:std_logic;
begin
    xor1:XOR_2
	    port map(A=>M,B=>B0,Y=>X1);
	 xor2:XOR_2
	    port map(A=>M,B=>B1,Y=>X2);
	 xor3:XOR_2
	    port map(A=>M,B=>B2,Y=>X3);
	 xor4:XOR_2
	    port map(A=>M,B=>B3,Y=>X4);
	 fa1:FULL_ADDER
	     port map(X=>X1,Y=>A0,Cin=>M,C=>C1,S=>S0);
	 fa2:FULL_ADDER
	     port map(X=>X2,Y=>A1,Cin=>C1,C=>C2,S=>S1);
	 fa3:FULL_ADDER
	     port map(X=>X3,Y=>A2,Cin=>C2,C=>C3,S=>S2);
	 fa4:FULL_ADDER
	     port map(X=>X4,Y=>A3,Cin=>C3,C=>Cout,S=>S3);
end arch;
  	