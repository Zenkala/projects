library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compare_block is
  generic (compare_width : positive := 8);
  port (
    clk,reset : in std_logic;
    data_rdy : in std_logic;
    cnt_ovf : in std_logic;
    cnt_value : in unsigned (compare_width downto 0);
    update_value : in unsigned (compare_width+1 downto 0);
    pwm_out_1, pwm_out_2 : out std_logic;    
    data_updated : out std_logic
  );
end entity compare_block;

architecture behaviour of compare_block is
  
  signal compare_value : unsigned (compare_width downto 0) := (others => '0');
  signal pwm_out_sel,pwm_int : std_logic := '0';
    
begin

  --when new data is presented, update on new counter cycle
  update_data : process
  begin
    wait until rising_edge(cnt_ovf); --synchronize update with counter
      if reset = '0' and data_rdy = '1' then --only update when not in reset and data is ready
      
        --save data
        compare_value <= update_value(compare_width downto 0);
        pwm_out_sel <= update_value(compare_width+1);
        --only save data once for each data_rdy signal
        wait until data_rdy = '0'; 
        
        --re-check for reset due to asynchronous wait
        if reset = '0' then 
        --reset data interface to allow for new data
          wait until rising_edge(clk);
          data_updated <= '1';
          wait until rising_edge(clk); 
          data_updated <= '0';        
        end if;
        
      end if;
    
  end process update_data;



  generate_pwm : process 
  
  begin
    --on each clock cycle, determine whether pwm_output should be toggled
    wait until rising_edge(clk);
    
    if cnt_value < compare_value then
      pwm_int <= '1';    
    else
      pwm_int <= '0';
    end if;
     
  end process generate_pwm;
  
  --determine which pin to pwm, depending on pwm_out_sel bit
  pwm_out_1 <= pwm_int when pwm_out_sel = '1' else '1';
  pwm_out_2 <= pwm_int when pwm_out_sel = '0' else '0';



end architecture behaviour;
