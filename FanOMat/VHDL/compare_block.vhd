library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compare_block is
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
end entity compare_block;

architecture bhv of compare_block is
  
  signal compare_value : unsigned (compare_width-1 downto 0) := (others => '0');
  signal pwm_out_sel,pwm_int : std_logic := '0';
  signal reset_internal : std_logic := '0';
  signal data_stored : boolean := false;
      
begin

  --signal connections
  --determine which pin to pwm, depending on pwm_out_sel bit
  pwm_pin4 <= pwm_int when pwm_out_sel = '1' else '1'; 
  pwm_pin3 <= pwm_int when pwm_out_sel = '0' else '0'; 
  
  --capture external reset 
  sync_reset : process(clk)
  begin
  
    if clk'EVENT and clk='0' then
      reset_internal <= reset;
    end if;
  
  end process sync_reset;  
  

  --when new data is presented, update on new counter cycle
  update_data : process(clk, data_rdy, reset_internal, cnt_ovf)
  begin
    
    if reset_internal = '1' then --if a reset triggered this process
     
      --reset output data
      compare_value <= (others => '0');
      pwm_out_sel <= '0';
      data_updated <= '0';
   
    --only update when not in reset, data is ready, counter overflows, and clk is falling
    elsif clk'EVENT and clk = '0' and cnt_ovf = '1' and data_rdy = '1' and data_stored = false then 
    
      --save data
      compare_value <= update_value(compare_width-1 downto 0);
      pwm_out_sel <= update_value(compare_width);
      
      --indicate signal data_updated
      data_stored <= true;
     
    elsif clk'EVENT and clk = '1' then
      
       --create data stored signal
       if data_stored then
          data_updated <= '1';
          data_stored <= false;
       elsif data_rdy = '0' then
          data_updated <= '0';
       end if;
      
     end if;
      
  end process update_data;


  generate_pwm : process
  begin
    --on each clock cycle, determine whether pwm_output should be toggled
    wait until rising_edge(clk);
    
    if cnt_value < compare_value and reset_internal = '0' then
      pwm_int <= '1'; 
    else
      pwm_int <= '0'; 
    end if;
     
  end process generate_pwm;
  

end architecture bhv;



architecture rtl of compare_block is
  
  signal compare_value : unsigned (compare_width-1 downto 0);
  signal pwm_out_sel,pwm_int : std_logic ;
  signal reset_internal : std_logic ;
  signal data_updated_int : std_logic ;
        
begin

  --signal connections
  data_updated <= data_updated_int;
  --determine which pin to pwm, depending on pwm_out_sel bit
  pwm_pin4 <= pwm_int when pwm_out_sel = '1' else '1'; --altered for dev_board
  pwm_pin3 <= pwm_int when pwm_out_sel = '0' else '1'; --altered for dev_board
  
  --capture external reset 
  sync_reset : process(clk)
  begin
  
    if clk'EVENT and clk='0' then
      reset_internal <= reset;
    end if;
  
  end process sync_reset;  
  

  --when new data is presented, update on new counter cycle
  update_data : process(clk, reset_internal )
      variable data_stored : boolean ;
  begin
    
    if reset_internal = '1' then --if a reset triggered this process
     
      --reset output data
      compare_value <= (others => '0');
      pwm_out_sel <= '0';
      data_updated_int <= '0';
      data_stored := false;
      
   
    --only update when not in reset, data is ready, counter overflows, and clk is falling
    elsif clk'EVENT and clk = '1' then 
    
      if cnt_ovf = '1' and data_rdy = '1' and data_stored = false and data_updated_int = '0' then
      
        --save data
        compare_value <= update_value(compare_width-1 downto 0);
        pwm_out_sel <= update_value(compare_width);
        
        --indicate signal data_updated
        data_stored := true;
      
      elsif data_stored then
        
        data_updated_int <= '1';
        data_stored := false;    
        
      elsif data_rdy = '0' then
      
        data_updated_int <= '0';   
      
      end if;
    
    end if;
    
  end process update_data;


  generate_pwm : process(compare_value, reset_internal, cnt_value)
  begin
    
    if cnt_value < compare_value and reset_internal = '0' then
      pwm_int <= '0'; --inverted for dev_board     
    else
      pwm_int <= '1'; --inverted for dev_board
    end if;
     
  end process generate_pwm;
  

end architecture rtl;