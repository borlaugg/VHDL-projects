library ieee;
use ieee.std_logic_1164.all;
package Gates is
  component OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component OR_2;
  
  component INVERTER is
   port (A: in std_logic; Y: out std_logic);
  end component INVERTER;

   component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;
 
end package Gates;


library ieee;
use ieee.std_logic_1164.all;
entity INVERTER is
   port (A: in std_logic; Y: out std_logic);
end entity INVERTER;

architecture Equations of INVERTER is
begin
   Y <= not A;
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity AND_2;

architecture Equations of AND_2 is
begin
   Y <= A and B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity OR_2;

architecture Equations of OR_2 is
begin
   Y <= A or B;
end Equations;
