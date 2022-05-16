library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
   component Decoder3x8 is
     port(a2,a1,a0,E:in std_logic; y7,y6,y5,y4,y3,y2,y1,y0: out std_logic);
   end component;
begin

   add_instance: Decoder3x8 
			port map (
					-- order of inputs Cin B A
					a2 => input_vector(3),
					a1 => input_vector(2),
					a0   => input_vector(1),
					E   => input_vector(0),
                                        -- order of outputs S Cout
					y7 => output_vector(7),
					y6 => output_vector(6),
					y5=> output_vector(5),
					y4 => output_vector(4),
					y3 => output_vector(3),
					y2 => output_vector(2),
					y1 => output_vector(1),
					y0 => output_vector(0));

end DutWrap;

