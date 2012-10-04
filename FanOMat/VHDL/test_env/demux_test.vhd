library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demux_test is
  generic ( nr_outputs : positive := 7;
            nr_sel_bits : positive := 3; --adjust so that pwm_channels can be respresented by this number of bits
            bit_width : positive := 4 
  );
  port (output : out unsigned ((nr_outputs * bit_width)-1 downto 0) --output bus
  );
end entity demux_test;

architecture behaviour of demux_test is

  component demux 
    generic ( nr_outputs : positive;
              nr_sel_bits : positive; --adjust so that pwm_channels can be respresented by this number of bits
              bit_width : positive  
    );
    port (
          output : out unsigned ((nr_outputs * bit_width)-1 downto 0);   --output bus
          input : in unsigned (bit_width-1 downto 0);
          sel : in unsigned(nr_sel_bits-1 downto 0)
       );
  end component demux;

  component compare_testset 
    generic ( nr_sel_bits : positive; --adjust so that pwm_channels can be respresented by this number of bits
              bit_width : positive 
    );
    port (
          data : out unsigned (bit_width-1 downto 0);
          sel : out unsigned(nr_sel_bits-1 downto 0)
       );
  end component compare_testset;


  signal data_bus : unsigned (bit_width-1 downto 0) := (others => '0');
  signal sel_bus : unsigned(nr_sel_bits-1 downto 0) := (others => '0');
  
begin

  --instantiate testset
  testset : compare_testset 
  generic map (nr_sel_bits,bit_width)   
  port map (   data => data_bus,
               sel => sel_bus
           );
           
  --instantiate testset
  demux_instance : demux
  generic map (nr_outputs,nr_sel_bits,bit_width)      
  port map (   output => output,
               input => data_bus,
               sel => sel_bus
           );

end architecture behaviour;
