library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

entity pwm_gen is
  generic ( pwm_counter_bits : positive := 8;
            pwm_channels : positive := 12;
            channel_sel_bits : positive := 4 --adjust so that pwm_channels can be respresented by this number of bits
  );
	port (
		clk, reset, reset_intf : in std_logic;
		data_in, data_clk : in std_logic;
		data_rdy : out std_logic;
		channel_sel : in unsigned(channel_sel_bits-1 downto 0);
		pwm_pin4_block : out std_logic_vector(pwm_channels-1 downto 0);
		pwm_pin3_block : out std_logic_vector(pwm_channels-1 downto 0)		
	);
end entity pwm_gen;

architecture struct of pwm_gen is

  component compare_block 
  generic (compare_width : positive := 8);
  port (
    clk,reset : in std_logic;
    data_rdy : in std_logic;
    cnt_ovf : in std_logic;
    cnt_value : in unsigned (compare_width-1 downto 0);
    update_value : in unsigned (compare_width downto 0);
    pwm_pin4, pwm_pin3 : out std_logic;    
    data_updated : out std_logic
  );
  end component compare_block;
  
  component interface
  generic (data_width : positive := 9);
  port (
    --inputs
    data_in, data_clk : in std_logic;
    reset : in std_logic;
    clk : in std_logic;
    --outputs   
    data_rdy : out std_logic;
    data_out : out unsigned (data_width-1 downto 0)  --data width is compare value width + pwm output select bit
  );
  end component interface;
  
  component counter
  generic ( counter_width : positive := 8 );
  port (
    count_val : out unsigned (counter_width-1 downto 0); 
    clk, reset : in std_logic;
    ovf_out : out std_logic
  );
  end component counter;
  
  component demux is
  generic ( nr_outputs : positive := 4;
            nr_sel_bits : positive := 2; --adjust so that pwm_channels can be respresented by this number of bits
            bit_width : positive := 2 
  );
  port (
          output : out unsigned ((nr_outputs * bit_width)-1 downto 0);   --output bus
          input : in unsigned (bit_width-1 downto 0);
          sel : in unsigned(nr_sel_bits-1 downto 0)
       );
  end component demux;
  
  
  --counter -> compare_block interconnection signals
  signal counter_overflow : std_logic;
  signal counter_value : unsigned (pwm_counter_bits-1 downto 0);
  
  --interface -> compare_block interconnection signals
  signal data_rdy_bus : unsigned (pwm_channels-1 downto 0);
  --signal update_value_bus : update_value_array;
  signal update_value_bus : unsigned ((pwm_channels*(pwm_counter_bits+1))-1 downto 0);
  signal data_updated_bus : std_logic_vector (pwm_channels-1 downto 0);
  signal update_value_int : unsigned (pwm_counter_bits downto 0);
  signal data_rdy_int : unsigned (0 downto 0);
   
  --connect data updated to reset signal
  signal interface_reset : std_logic := '0';
  
	
begin

   interface_reset <= reset or or_reduce(data_updated_bus) or reset_intf; 
   data_rdy <= data_rdy_int(0);

   --instantiate counter
   pwm_counter : counter 
   generic map (pwm_counter_bits)
   port map ( clk => clk,
              reset => reset,
              ovf_out => counter_overflow,
              count_val => counter_value    
            );
             
             
  --instantiate interface
   data_interface : interface 
   generic map (pwm_counter_bits+1)   
   port map (   clk => clk,
                reset => interface_reset,
                data_in => data_in,
                data_out => update_value_int,
                data_clk => data_clk,
                data_rdy => data_rdy_int(0)
            );


   --instantiate compare blocks
   pwm_compare_blocks: 
   for i in 0 to pwm_channels-1 generate
      pwm_x : compare_block 
      generic map (pwm_counter_bits)
      port map( clk => clk,
                reset => reset,
                data_rdy => data_rdy_bus(i),
                cnt_ovf => counter_overflow,
                cnt_value => counter_value,
                update_value => update_value_bus((i*(pwm_counter_bits+1))+(pwm_counter_bits+1)-1 downto (i*(pwm_counter_bits+1))),
                pwm_pin4 => pwm_pin4_block(i), 
                pwm_pin3 => pwm_pin3_block(i),
                data_updated => data_updated_bus(i)
              );
   end generate pwm_compare_blocks;

   --instantiate multiplexer for interface
   value_demux : demux 
   generic map ( pwm_channels, channel_sel_bits, pwm_counter_bits+1)
   port map    (
                 output => update_value_bus,
                 input => update_value_int,
                 sel => channel_sel
               );
               
      --instantiate multiplexer for interface
   signal_demux : demux 
   generic map ( pwm_channels, channel_sel_bits, 1)
   port map    (
                 output => data_rdy_bus,
                 input => data_rdy_int,
                 sel => channel_sel
               );



end architecture struct;

configuration pwm_gen_rtl of pwm_gen is

    for struct

      for pwm_counter : counter 
        use entity work.counter(bhv);
      end for;
      
      for data_interface : interface 
        use entity work.interface(rtl);
      end for;
      
      for all : demux
        use entity work.demux(bhv);
      end for;
      
      for pwm_compare_blocks
        for all : compare_block
          use entity work.compare_block(rtl);
        end for;
      end for;
      
    end for;

end configuration pwm_gen_rtl;

