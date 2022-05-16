library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component seqgen is
     port (reset,clock: in std_logic;y:out std_logic_vector(3 downto 0));
   end component;
begin
   add_instance: seqgen 
			port map (
					clock => input_vector(0),
					reset => input_vector(1),
					y => output_vector);

end DutWrap;

