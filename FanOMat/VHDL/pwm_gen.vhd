library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pwm_gen is
  generic ( pwm_counter_bits : positive := 8;
            pwm_channels : positive := 4;
            channel_sel_bits : positive := 2 --adjust so that pwm_channels can be respresented by this number of bits
  );
	port (
		clk, reset : in std_logic;
		data_in, data_clk : in std_logic;
		data_rdy : out std_logic;
		channel_sel : in unsigned(channel_sel_bits-1 downto 0);
		pwm_pin4_block : out std_logic_vector(pwm_channels-1 downto 0);
		pwm_pin3_block : out std_logic_vector(pwm_channels-1 downto 0)		
	);
end entity pwm_gen;

architecture behaviour of pwm_gen is

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
  
  
  --counter -> compare_block interconnection signals
  signal counter_overflow : std_logic := '0';
  signal counter_value : unsigned (pwm_counter_bits-1 downto 0) := (others => '0');
  
  --interface data output interconnect bus declaration
  type update_value_array is array (0 to pwm_channels-1) of unsigned (pwm_counter_bits downto 0);
  --interface -> compare_block interconnection signals
  signal data_rdy_bus : std_logic_vector (pwm_channels-1 downto 0) := (others => '0');
  signal update_value_bus : update_value_array;
  signal data_updated_bus : std_logic_vector (pwm_channels-1 downto 0) := (others => '0');
  signal update_value_int : unsigned (pwm_counter_bits downto 0) := (others => '0');
  signal data_rdy_int : std_logic := '0';
  
	
begin

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
                reset => reset,
                data_in => data_in,
                data_out => update_value_int,
                data_clk => data_clk,
                data_rdy => data_rdy_int
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
                update_value => update_value_bus(i),
                pwm_pin4 => pwm_pin4_block(i), 
                pwm_pin3 => pwm_pin3_block(i),
                data_updated => data_updated_bus(i)
              );
   end generate pwm_compare_blocks;

   --instantiate multiplexer for interface
   


end architecture behaviour;
