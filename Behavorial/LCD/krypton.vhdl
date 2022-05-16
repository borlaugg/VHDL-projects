
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity krypton is
port(   inp:in std_logic_vector(4 downto 0);
        reset,clock:in std_logic;
        outp: out std_logic;
        out_ascii: out std_logic_vector(55 downto 0));
end krypton;

architecture rch of krypton is

---------------Define state type here-----------------------------
type state is (rst,s1,s2,s3,s4,s5,s6);
---------------Define signals of state type-----------------------
signal y_present,y_next: state:=rst;
signal out_sig: std_logic;

begin
clock_proc:process(clock,reset)
begin
    if( clock' event and clock='1' ) then
        if(reset='1') then
            y_present<=rst;
        else
            y_present<=y_next;
        end if;
    end if;
    
end process;

state_transition_proc:process(inp,y_present)
begin
    case y_present is
        when rst=>
            if(unsigned(inp)=11) then   
				    out_ascii<=x"6B_20_20_20_20_20_20";
					 y_next<= s1;
            else      
					 if (out_sig='1') then
						out_ascii<=x"6B_72_79_70_74_6F_6E";
					  else 
						 out_ascii<=x"20_20_79_20_20_20_20";
					  end if;
					  y_next<=rst;
			   end if;
            out_sig<='0';
        when s1=>
				if(unsigned(inp)=18) then   
					 y_next<= s2;
					 out_sig<='0';
				    out_ascii<=x"6B_72_20_20_20_20_20";
				 else 
					 out_ascii<=x"6B_20_20_20_20_20_20";
					 out_sig<='0';
					 y_next<=s1;
				 end if;
		  when s2=>
				if(unsigned(inp)=25) then   
					 y_next<= s3;
					 out_sig<='0';
				    out_ascii<=x"6B_72_79_20_20_20_20";
				 else 
					 out_ascii<=x"6B_72_20_20_20_20_20";
					 out_sig<='0';
					 y_next<=s2;
				 end if;
			when s3=>
				if(unsigned(inp)=16) then   
					 y_next<= s4;
					 out_sig<='0';
				    out_ascii<=x"6B_72_79_70_20_20_20";
				 else 
					 out_ascii<=x"6B_72_79_20_20_20_20";
					 out_sig<='0';
					 y_next<=s3;
				 end if;
			when s4=>
				if(unsigned(inp)=20) then   --k
					 y_next<= s5;
					 out_sig<='0';
				    out_ascii<=x"6B_72_79_70_74_20_20";
				 else 
					 out_ascii<=x"6B_72_79_70_20_20_20";
					 out_sig<='0';
					 y_next<=s4;
				 end if;
		  when s5=>
				if(unsigned(inp)=15) then   --k
					 y_next<= s6;
					 out_sig<='0';
				    out_ascii<=x"6B_72_79_70_74_6F_20";
				 else 
					 out_ascii<=x"6B_72_79_70_74_20_20";
					 out_sig<='0';
					 y_next<=s5;
				 end if;
			when s6=>
				if(unsigned(inp)=14) then   --k
					 y_next<=rst;
					 out_sig<='1';
				    out_ascii<=x"6B_72_79_70_74_6F_6E";
				 else 
					 out_ascii<=x"6B_72_79_70_74_6F_20";
					 out_sig<='0';
					 y_next<=s6;
				 end if;
        end case;
end process;

outp <= out_sig;

end rch;
