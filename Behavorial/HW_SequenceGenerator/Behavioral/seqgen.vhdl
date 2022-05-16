library ieee;
use ieee.std_logic_1164.all;

entity seqgen is
port (reset,clock: in std_logic;
y:out std_logic_vector(3 downto 0));
end entity seqgen;

architecture behav  of seqgen is
--state binary encoding
signal state:std_logic_vector(3 downto 0);
constant s1:std_logic_vector(3 downto 0):="0001";
constant s3:std_logic_vector(3 downto 0):="0011";
constant s5:std_logic_vector(3 downto 0):="0101";
constant s7:std_logic_vector(3 downto 0):="0111";
constant s9:std_logic_vector(3 downto 0):="1001";
constant s11:std_logic_vector(3 downto 0):="1011";
constant s13:std_logic_vector(3 downto 0):="1101";
constant s15:std_logic_vector(3 downto 0):="1111";
begin 
reg_process: process(clock,reset)
begin
if(reset='1')then 
state<=s1; -- write the reset state
y<="0001";
elsif(clock'event and clock='1')then                                                                                                                                                           
case state is  
      when s1=>
			state<=s3;
			y<="0011";
	   when s3=>
			state<=s5;
			y<="0101";
		when s5=>
			state<=s7;
			y<="0111";
		when s7=>
			state<=s9;
			y<="1001";
		when s9=>
			state<=s11;
			y<="1011";
		when s11=>
			state<=s13;
			y<="1101";
		when s13=>
			state<=s15;
			y<="1111";
		when s15=>
			state<=s1;
			y<="0001";
      when others=>
        state<=s1; -- write the reset state 
      end case; 
end if;
end process reg_process;
-- output logic concurrent statemet or one more process
end behav;