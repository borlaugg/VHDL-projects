-- A DUT entity is used to wrap your design.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component Decoder2x4 is
     port(A1,A0,E:in std_logic; y0,y1,y2,y3:out std_logic);
   end component;
begin
   add_instance: Decoder2x4 
			port map (
					-- order of inputs Cin B A
					E => input_vector(0),
					A1   => input_vector(2),
					A0   => input_vector(1),
                                        -- order of outputs S Cout
					y3 => output_vector(3),
					y2 => output_vector(2),
					y1 => output_vector(1),
					y0 => output_vector(0));

end DutWrap;

