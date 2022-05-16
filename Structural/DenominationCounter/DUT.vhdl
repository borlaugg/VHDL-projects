library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(10 downto 0));
end entity;

architecture DutWrap of DUT is
   component atm is
     port(a:in std_logic_vector(7 downto 0);o:out std_logic_vector(10 downto 0));
   end component;
begin
   add_instance: atm 
			port map (
					a => input_vector,
					o => output_vector);

end DutWrap;

