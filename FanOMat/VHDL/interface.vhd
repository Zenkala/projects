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
  generic (data_width : positive := 9);
	port (
		--inputs
		data_in, data_clk : in std_logic;
		reset : in std_logic;
		clk : in std_logic;
    --write_en : in std_logic;
    --outputs   
		data_rdy : out std_logic;
		data_out : out unsigned (data_width downto 0)  --data width is compare value width + pwm output select bit
	);
end entity interface;

architecture behaviour of interface is
	
	constant DATA_RDY_BUFF_LENGTH : positive := 2;
	signal input_reg : unsigned (data_width downto 0) := (others => '0');
	signal data_rdy_buff : std_logic_vector ((DATA_RDY_BUFF_LENGTH-1) downto 0) := (others => '0');
	signal data_rdy_temp : std_logic := '0';
	
begin


  combine_clk : process
  begin
  
    wait until rising_edge(clk);
    --shift ready signal through clock domain buffer
    data_rdy_buff <= data_rdy_buff((DATA_RDY_BUFF_LENGTH-2) downto 0) & data_rdy_temp; --shift  in an extra high bit  
    data_rdy <= data_rdy_buff((DATA_RDY_BUFF_LENGTH-1));
      
  end process combine_clk;


  gather_data: process 
  
    variable bits_written : integer range 0 to (data_width) := 0;
      
  begin
  
    if reset = '1' then --reset
      
      bits_written := 0; --reset received data counter
      input_reg <= (others => '0'); --clear internal storage register
      data_rdy_buff <= (others => '0'); --clear data_rdy line buffer
      data_rdy <= '0'; --indicate ready to receive new data
    
    else --clock in data on rising edge data clock
  
      wait until rising_edge(data_clk); 
      
      if bits_written < data_width then --clock in new data
      
        input_reg <= input_reg((data_width-1) downto 0) & data_in; --shift in new data
        bits_written := bits_written + 1;
              
      else ---if all data has been received
       
        data_out <= input_reg; --put data on output port
        data_rdy_temp <= '1';  --signal data ready internally
               
      end if; 
      
    end if;
   
  end process gather_data;



end architecture behaviour;
