library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.NUMERIC_STD.all;

entity one_to_many_mux is
  generic ( nr_outputs : positive := 4;
            nr_sel_bits : positive := 2; --adjust so that pwm_channels can be respresented by this number of bits
            bit_width : positive := 2 
  );
port (
        output : out unsigned ((nr_outputs * bit_width)-1 downto 0);   --output bus
        input : in unsigned (bit_width-1 downto 0);
        sel : in unsigned(nr_sel_bits-1 downto 0)
     );
end one_to_many_mux;

architecture Behavioral of one_to_many_mux is

begin

  process(sel)
    
    variable offset, selected : natural := 0;
  
  begin
  
    --calculate selected input and output offset
    selected := to_integer(sel);
    
    if selected < nr_outputs then 
    
      for n in 0 to nr_outputs-1 loop --check each output wether it is selected.
      
        --determine output offset
        offset := (n*bit_width);
      
        --write input data to proper output
        if n = selected then --if selected output 
         output(bit_width-1+offset downto 0+offset) <= input; 
        else --if any of the other outputs
         output(bit_width-1+offset downto 0+offset) <= (others => '0');
        end if;  
      
      end loop;
    
    end if; --end if selected
  
  end process;


end Behavioral;