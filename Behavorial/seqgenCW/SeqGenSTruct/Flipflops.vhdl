library ieee;
use ieee.std_logic_1164.all;
package Flipflops is
  component dff_set is port(D,clock,set:in std_logic;Q:out std_logic);
  end component dff_set;
  --write the component instantiation for the entity dff_reset
  component dff_reset is port(D,clock,reset:in std_logic;Q:out std_logic);
  end component dff_reset;
 end package Flipflops;
 
--D flip flop with set
library ieee;
use ieee.std_logic_1164.all;

entity dff_set is port(D,clock,set:in std_logic;Q:out std_logic);
end entity dff_set;

architecture behav of dff_set is
begin
dff_set_proc: process (clock,set)
begin
if(set='1')then -- set implies flip flip output logic high
Q <= '1'; 
elsif (clock'event and (clock='1')) then                                Q <= D;
end if ;
end process dff_set_proc;
end behav;

library ieee;
use ieee.std_logic_1164.all;

entity dff_reset is port(D,clock,reset:in std_logic;Q:out std_logic);
end entity dff_reset;

architecture behav of dff_reset is
begin
dff_reset_proc: process (clock,reset) --write the sensitivity list
begin
if(reset='1')then -- reset implies flip flip output logic low
Q <= '0'; -- write the D Flipflop output when reset
elsif (clock'event and (clock='1')) then                                Q <= D; ---- write the D Flipflop output when posedge clock is triggered end if ;
end if;
end process dff_reset_proc;
end behav;
