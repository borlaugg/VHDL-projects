library ieee;
use ieee.std_logic_1164.all;
library work;
use work.FA.all;
package Add is
	component Adder is
    port (B0,B1,B2,B3,A0,A1,A2,A3: in std_logic; S0,S1,S2,S3,Cout: out std_logic);
   end component Adder;
end package Add;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.FA.all;
entity Adder is
    port (B0,B1,B2,B3,A0,A1,A2,A3: in std_logic; S0,S1,S2,S3,Cout: out std_logic);
end entity Adder;

architecture Arch of Adder is
    signal C1,C2,C3:std_logic;
begin
    
	 fa1:FULL_ADDER
	     port map(A=>B0,B=>A0,Cin=>'0',C=>C1,S=>S0);
	 fa2:FULL_ADDER
	     port map(A=>B1,B=>A1,Cin=>C1,C=>C2,S=>S1);
	 fa3:FULL_ADDER
	     port map(A=>B2,B=>A2,Cin=>C2,C=>C3,S=>S2);
	 fa4:FULL_ADDER
	     port map(A=>B3,B=>A3,Cin=>C3,C=>Cout,S=>S3);
end arch;