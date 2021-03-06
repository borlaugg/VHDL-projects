library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.muxx.all;
package shift is
	component inversion is
		port (A:in std_logic_vector(7 downto 0);L:in std_logic;C:out std_logic_vector(7 downto 0));
	end component inversion;
	
	component RS1 is
		port(a1:in std_logic_vector(7 downto 0);b0:in std_logic;r:out std_logic_vector(7 downto 0));
	end component RS1;
	
	component RS2 is
		port(a1:in std_logic_vector(7 downto 0);b1:in std_logic;q:out std_logic_vector(7 downto 0));
	end component RS2;
	
	component RS4 is
		port(a1:in std_logic_vector(7 downto 0);b2:in std_logic;p:out std_logic_vector(7 downto 0));
	end component RS4;
end package shift;



library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.muxx.all;
entity inversion is
	port (A:in std_logic_vector(7 downto 0);L:in std_logic;C:out std_logic_vector(7 downto 0));
end entity inversion;

architecture b of inversion is
begin
	inv: for i in 0 to 7 generate 
			m1:mux port map(I(0)=>A(7-i),I(1)=>A(i),S=>L,Y=>C(7-i));
		end generate;
end b;


library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.muxx.all;
entity RS4 is
	port(a1:in std_logic_vector(7 downto 0);b2:in std_logic;p:out std_logic_vector(7 downto 0));
end entity RS4;

architecture b of RS4 is
begin
	    n4_bit : for i in 0 to 7 generate

        lsb: if i < 4 generate
            x: mux port map(I(0) => a1(i), I(1) => a1(i+4), S => b2, Y => p(i));
        end generate lsb;

        msb: if i > 3 generate
            y: mux port map(I(0) => a1(i), I(1) => '0', S => b2, Y => p(i));
        end generate msb;

    end generate ; -- 4_bit
end b;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.muxx.all;
entity RS2 is
	port(a1:in std_logic_vector(7 downto 0);b1:in std_logic;q:out std_logic_vector(7 downto 0));
end entity RS2;

architecture b of RS2 is
begin
	    n4_bit : for i in 0 to 7 generate

        lsb: if i < 6 generate
            x: mux port map(I(0) => a1(i), I(1) => a1(i+2), S => b1, Y => q(i));
        end generate lsb;

        msb: if i > 5 generate
            y: mux port map(I(0) => a1(i), I(1) => '0', S => b1, Y => q(i));
        end generate msb;

    end generate ; -- 4_bit
end b;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.muxx.all;
entity RS1 is
	port(a1:in std_logic_vector(7 downto 0);b0:in std_logic;r:out std_logic_vector(7 downto 0));
end entity RS1;

architecture b of RS1 is
begin
	    n4_bit : for i in 0 to 7 generate

        lsb: if i < 7 generate
            x: mux port map(I(0) => a1(i), I(1) => a1(i+1), S => b0, Y => r(i));
        end generate lsb;

        msb: if i > 6 generate
            y: mux port map(I(0) => a1(i), I(1) => '0', S => b0, Y => r(i));
        end generate msb;

    end generate ; -- 4_bit
end b;
