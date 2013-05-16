library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity interface_testset is
  generic ( data_width : positive := 9 );
  port (
    data_out, data_clk : out std_logic;
    reset : out std_logic;
    clk : out std_logic
  );
end entity interface_testset;

architecture bhv of interface_testset is

  signal clk_internal : std_logic := '0';
  constant clk_period : time := 10 ns;
  constant data_clk_period : time := 23 ns;
  
  
begin

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
  
    --reset system
    wait until rising_edge(clk_internal);
    reset <= '1';
    wait until rising_edge(clk_internal);
    wait until rising_edge(clk_internal);
    reset <= '0';
    wait until rising_edge(clk_internal);
    
    --prepare testdata
    test_data(data_width-1) := '1';
    test_data(data_width/2 downto 0 ) := (others => '1');
    
    --upload test_data
    for n in 0 to data_width-1 loop
      data_out <= test_data(n);
      wait for data_clk_period;
      data_clk <= '1';
      wait for data_clk_period;
      data_clk <= '0';
    end loop;
  
    --wait a while
    wait for 50 ns;
    
    --prepare testdata
    test_data(data_width/2 downto 0 ) := (others => '0');
    test_data(data_width-1 downto data_width/2 ) := (others => '1');
    
    --upload test_data
    for n in 0 to data_width-1 loop
      data_out <= test_data(n);
      wait for data_clk_period;
      data_clk <= '1';
      wait for data_clk_period;
      data_clk <= '0';
    end loop;
    
    --wait a while
    wait for 50 ns;
    
    --reset system
    wait until rising_edge(clk_internal);
    reset <= '1';
    wait until rising_edge(clk_internal);
    wait until rising_edge(clk_internal);
    reset <= '0';
    wait until rising_edge(clk_internal);
    
     --prepare testdata
    test_data(data_width/2 downto 0 ) := (others => '0');
    test_data(data_width-1 downto data_width/2 ) := (others => '1');
    
    --upload test_data
    for n in 0 to data_width-1 loop
      data_out <= test_data(n);
      wait for data_clk_period;
      data_clk <= '1';
      wait for data_clk_period;
      data_clk <= '0';
    end loop;
    
    
  end process;
  
end architecture bhv;
