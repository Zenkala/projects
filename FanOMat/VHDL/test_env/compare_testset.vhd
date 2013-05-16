library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compare_testset is
  generic (compare_width : positive := 8);
  port (
    clk,reset : out std_logic;
    data_rdy : out std_logic;
    cnt_ovf : out std_logic;
    cnt_value : out unsigned (compare_width-1 downto 0);
    update_value : out unsigned (compare_width downto 0)
  );
end entity compare_testset;

architecture bhv of compare_testset is

   component counter 
    generic ( 
      counter_width : positive 
    );
    port (
      count_val : out unsigned (counter_width-1 downto 0); 
      clk, reset : in std_logic;
      ovf_out : out std_logic
    );
  end component counter;

  signal clk_internal,reset_internal : std_logic := '0';
  constant clk_period : time := 10 ns;
  
begin

  --clock generation
  clk <= clk_internal;
  clk_internal <= not clk_internal after clk_period/2;  
  --end clock generation

  --instantiate counter
  counter_instance : counter
  generic map (compare_width)      
  port map (  count_val => cnt_value,
              clk => clk_internal,
              reset => reset_internal,
              ovf_out => cnt_ovf
           );
           
  process 
  begin
  
    --initialize control lines
    data_rdy <= '0';
    reset <= '0';
    update_value <= (others => '0');
    
    --reset compare block
    wait until rising_edge(clk_internal);
    wait until rising_edge(clk_internal);
    wait until rising_edge(clk_internal);
    wait until rising_edge(clk_internal);
    reset <= '1';
    wait until rising_edge(clk_internal);
    wait until rising_edge(clk_internal);
    reset <='0';
    
    --wait 50 clock cycles (nothing should happen)
    for i in 0 to 50 loop   
      wait until rising_edge(clk_internal);    
    end loop;
    
    --prepare data for update
    update_value (compare_width-1) <= '1'; --set duty cycle 50%
    wait until rising_edge(clk_internal);  
    data_rdy <= '1';    
    wait until rising_edge(clk_internal);  
    
    --wait 2 full counter cycles (50% pwm should appear)
    for i in 0 to 2*(2**compare_width) loop   
      wait until rising_edge(clk_internal);    
    end loop;

    --clear data ready
    data_rdy <= '0';
    wait until rising_edge(clk_internal);
    wait until rising_edge(clk_internal);
    wait until rising_edge(clk_internal);
    wait until rising_edge(clk_internal);
    
    --reset compare block
    wait until rising_edge(clk_internal);
    reset <= '1';
    wait until rising_edge(clk_internal);
    wait until rising_edge(clk_internal);
    reset <='0';
    
    --prepare data for update
    update_value (compare_width) <= '1'; --set ohter PWM channel
    wait until rising_edge(clk_internal);  
    data_rdy <= '1';    
    wait until rising_edge(clk_internal); 
    
    --wait 2 full counter cycles (50% pwm should appear)
    for i in 0 to 2*(2**compare_width) loop   
      wait until rising_edge(clk_internal);    
    end loop;

    --clear data ready pin
    data_rdy <= '0';
    wait until rising_edge(clk_internal); 
    wait until rising_edge(clk_internal); 
    
    --prepare data for update
    update_value (compare_width) <= '0'; --set ohter PWM channel
    update_value (compare_width-2) <= '1'; --set ohter PWM channel
    wait until rising_edge(clk_internal);  
    data_rdy <= '1';    
    wait until rising_edge(clk_internal); 

    --wait 2 full counter cycles (50% pwm should appear)
    for i in 0 to 2*(2**compare_width) loop   
      wait until rising_edge(clk_internal);    
    end loop;

    --clear data ready
    data_rdy <= '0';
    
  end process;
  
end architecture bhv;
