library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compare_block is
  generic (compare_width : positive := 8);
  port (
    clk : in std_logic;
    data_rdy : in std_logic;
    reset : in std_logic;
    cnt_value : in unsigned (compare_width downto 0);
    update_value : in unsigned (compare_width+1 downto 0);
    pwm_out : out std_logic;
    data_updated : out std_logic
  );
end entity compare_block;

architecture behaviour of compare_block is
  

  
begin


  process 
  
  begin
    wait until rising_edge(clk);
      
    if data_rdy = '1' and data_rdy'LAST_VALUE = '0' then  
    
    
    end if;
  
  
  end process;



end architecture behaviour;
