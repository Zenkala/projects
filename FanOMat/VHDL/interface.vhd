--write data to pwm channel :

 --put write_en high to indicate write start
 --wait for write_allowed to go high to indicate data can be written, 
  
--  <repeat for each data bit>
--    if(write_allowed != low)
--      setup data
--      send clock pulse
--    else
--      -error
--      break;
--    end if;
--  </repeat>

  
--check for write_allowed to be low, otherwise not all data was received  
--set write_en low to indicate end of write

--  write_en not high:
--  -reset bits written
--  -disable write_busy
--  
--  write_en high, bit should be written
--  -enable write_busy bit
--  -listen on data clock to clock in data
--  -after data clocked in, increment bits written, should not exceed compare_width + 1
--
--  write_en high, no more bits should be written
--  -disable write_busy bit
--  -dont listen on data input
--  -keep bits_written value (if not compare_width + 1,  something went wrong and value should be set to 0)


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity interface is
  generic ( data_width : positive := 9;
            clk_domain_buff_length : positive := 2
  );
  port (
    --inputs
    data_in, data_clk : in std_logic;
    reset : in std_logic;
    clk : in std_logic;
    --outputs   
    data_rdy : out std_logic;
    data_out : out unsigned (data_width-1 downto 0)  --data width is compare value width + pwm output select bit
  );
end entity interface;


architecture bhv of interface is

  signal data_rdy_buff : std_logic_vector ((clk_domain_buff_length-1) downto 0) := (others => '0');
  signal input_reg : unsigned (data_width-1 downto 0) := (others => '0');
  signal reset_int : std_logic := '0';
  
begin

  --connect internal signals
  data_rdy <= data_rdy_buff((clk_domain_buff_length-1));
  data_out <= input_reg; --put data on output port
  
  --capture external reset 
  sync_reset : process(clk)
  begin
  
    if clk'EVENT and clk='0' and data_clk = '0' then
      reset_int <= reset;
    end if;
  
  end process sync_reset;
  
  --MCU interface process
  gather_data: process (clk, data_clk, reset_int)
  
    variable bits_written : integer range 0 to (data_width) := 0;
   
  begin
    
    if reset_int = '1' then --reset
      
      bits_written := 0; --reset received data counter
      input_reg <= (others => '0'); --clear ;internal storage register 
      data_rdy_buff <= (others => '0'); --clear data_rdy line buffer

    elsif data_clk'EVENT and data_clk = '1' then --clock in data on rising edge data clock
  
      if bits_written < data_width then
        --clock in and store data
        input_reg <= input_reg((data_width-2) downto 0) & data_in; --shift in new data
        bits_written := bits_written + 1;
      end if;
        
    elsif clk'EVENT and clk = '0' then
      
      if bits_written = data_width then
        --shift out data ready signal through clock domains
        data_rdy_buff <= data_rdy_buff(clk_domain_buff_length-2 downto 0) & '1';
      end if;
      
    end if;--end if data_clk'EVENT
   
  end process gather_data;



end architecture bhv;



architecture rtl of interface is

  signal data_rdy_buff : std_logic_vector ((clk_domain_buff_length-1) downto 0);
  signal input_reg : unsigned (data_width-1 downto 0) ;
  signal reset_int : std_logic ;
  
  signal data_rdy_int : std_logic ;
  
begin

  --connect internal signals
  data_rdy <= data_rdy_buff((clk_domain_buff_length-1));
  data_out <= input_reg; --put data on output port
  
  --capture external reset 
  sync_reset : process(clk, data_clk)
  begin
  
    if clk'EVENT and clk='0' and data_clk = '0' then
      reset_int <= reset;
    end if;
  
  end process sync_reset;
  
  
  --shift out data rdy signal
  shift_data_rdy : process(clk, reset_int, data_clk)
  begin
  
    if reset_int = '1' then
    
      data_rdy_buff <= (others => '0');
          
    elsif clk'EVENT and clk='1' and data_clk = '0' then

      --shift out data ready signal through clock domains
      data_rdy_buff <= data_rdy_buff(clk_domain_buff_length-2 downto 0) & data_rdy_int;
    
    end if;
  
  end process shift_data_rdy;
  
  
  --MCU interface process
  gather_data: process (data_clk, reset_int)
  
    variable bits_written : integer range 0 to (data_width) ;
   
  begin
    
    if reset_int = '1' then --reset
      
      bits_written := 0; --reset received data counter
      input_reg <= (others => '0'); --clear ;internal storage register
      data_rdy_int <= '0'; 
    
    elsif data_clk'EVENT and data_clk = '1' then --clock in data on rising edge data clock
  
      if bits_written < data_width then
        --clock in and store data
        input_reg <= input_reg((data_width-2) downto 0) & data_in; --shift in new data
        bits_written := bits_written + 1;
        
        if bits_written = data_width then 
          data_rdy_int <= '1';
        end if;
          
      end if;
        
    end if;--end if data_clk'EVENT
   
  end process gather_data;



end architecture rtl;
