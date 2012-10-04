library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demux_testset is
  generic ( nr_sel_bits : positive := 2; --adjust so that pwm_channels can be respresented by this number of bits
            bit_width : positive := 2 
  );
  port (
        data : out unsigned (bit_width-1 downto 0);
        sel : out unsigned(nr_sel_bits-1 downto 0)
     );
end entity demux_testset;

architecture behaviour of demux_testset is

begin

  process 
  begin
  
    data <= (others => '1');
    wait for 1 ns;
  
    for i in 0 to (2**nr_sel_bits)-1 loop
    
      sel <= to_unsigned(i,nr_sel_bits);    
      wait for 10 ns;
    
    end loop;
     
    wait;
  end process;
  
end architecture behaviour;
