library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_testset is
  generic ( 
    counter_width : positive := 8 
  );
  port (
    clk, reset : out std_logic
  );
end entity counter_testset;

architecture bhv of counter_testset is

  signal clk_internal : std_logic := '1';
  constant clk_period : time := 10 ns;

begin

  --clock generation
  clk <= clk_internal;
  clk_internal <= not clk_internal after clk_period/2;  
  --end clock generation


  process 
  begin
  
  
    --perform reset 
    reset <= '1';
  
    --wait 2 clock cycles
    for i in 0 to 2 loop   
      wait until rising_edge(clk_internal);    
    end loop;
    
    --clear reset 
    wait until rising_edge(clk_internal);
    reset <= '0';


    --let counter count to 50
    for i in 0 to 50 loop   
      wait until rising_edge(clk_internal);    
    end loop;
    
    --perform reset 
    wait until rising_edge(clk_internal);
    reset <= '1';

    --wait 10 clock cycles
    for i in 0 to 10 loop   
      wait until rising_edge(clk_internal);    
    end loop;
    
    --clear reset
    wait until rising_edge(clk_internal);
    reset <= '0';
    
    --let counter counter overflow 
    for i in 0 to (10+2**counter_width) loop   
      wait until rising_edge(clk_internal);    
    end loop;
    
    --perform reset 
    wait until rising_edge(clk_internal);
    reset <= '1';

    --wait 10 clock cycles
    for i in 0 to 10 loop   
      wait until rising_edge(clk_internal);    
    end loop;
    
    --clear reset
    wait until rising_edge(clk_internal);
    reset <= '0';
     
    --let counter count to 50
    for i in 0 to 50 loop   
      wait until rising_edge(clk_internal);    
    end loop;
    
  end process;
  
end architecture bhv;
