library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(9 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
   component ALU is
     port(S0,S1:in std_logic;A,B: in std_logic_vector(3 downto 0);Y:out std_logic_vector(7 downto 0));
   end component;
begin
   add_instance: ALU 
			port map (
					S1=> input_vector(9),
					S0=> input_vector(8),
					A   => input_vector(7 downto 4),
					B   => input_vector(3 downto 0),
					Y => output_vector);

end DutWrap;

