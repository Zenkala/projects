library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pwm_gen_testset is
  generic ( channel_sel_bits : positive := 2; --adjust so that pwm_channels can be respresented by this number of bits
            data_width : positive := 9;
            nr_channels : positive := 4
  );
  port (
    clk, reset : out std_logic;
    data_out, data_clk : out std_logic;
    channel_sel : out unsigned(channel_sel_bits-1 downto 0);
    data_rdy : in std_logic := '0';
    reset_intf : out std_logic := '0'
    );
end entity pwm_gen_testset;

architecture bhv of pwm_gen_testset is

  signal clk_internal : std_logic := '0';
  constant clk_period : time := 10 ns;
  constant data_clk_period : time := 19 ns;
  
  
begin

  reset_intf <= '0';
  --clock generation
  clk <= clk_internal;
  clk_internal <= not clk_internal after clk_period/2;  
  --end clock generation
  
  process 
    variable test_data : std_logic_vector(data_width-1 downto 0) := (others => '0'); 
  begin
  
    --clear outputs
    data_out <= '0';
    data_clk <= '0';
    reset <= '0';
    channel_sel <= (others => '0');
  
    --reset system
    wait until rising_edge(clk_internal);
    reset <= '1';
    wait until rising_edge(clk_internal);
    wait until rising_edge(clk_internal);
    reset <= '0';
    wait until rising_edge(clk_internal);
    
    --prepare testdata
    test_data(data_width-1 downto data_width-2) := "01";
             
    --upload test_data for each channel
    for i in 0 to nr_channels-1 loop
      --select channel
      channel_sel <= to_unsigned(i,channel_sel'LENGTH);
      
      --upload test_data
      for n in data_width-1 downto 0 loop
        data_out <= test_data(n);
        wait for data_clk_period;
        data_clk <= '1';
        wait for data_clk_period;
        data_clk <= '0';
      end loop;
      
      --wait a while
      wait until falling_edge(data_rdy);
    end loop;
    
    wait;
  
  end process;
  
end architecture bhv;