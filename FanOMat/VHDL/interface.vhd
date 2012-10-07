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

architecture behaviour of interface is

    procedure clock_out_data (  signal data_rdy_buff : out std_logic_vector;
                                signal clk : in std_logic;
                                signal reset : in std_logic
                             ) is

    begin
    
        for i in 0 to clk_domain_buff_length-1 loop
          --sync with clock
          wait until falling_edge(clk);
          --dont ignore reset
          if reset = '1' then exit; end if;
          --clock out data rdy signal
          data_rdy_buff(i) <= '1';   
        end loop;
        
    end clock_out_data; 

	
	signal data_rdy_buff : std_logic_vector ((clk_domain_buff_length-1) downto 0) := (others => '0');
	signal input_reg : unsigned (data_width-1 downto 0) := (others => '0');
	
begin

  --connect internal signals
  data_rdy <= data_rdy_buff((clk_domain_buff_length-1));
  data_out <= input_reg; --put data on output port
  
  gather_data: process
  
    variable bits_written : integer range 0 to (data_width) := 0;
   
  begin
    
    wait until rising_edge(data_clk) or rising_edge(reset);
      
    if reset = '1' then --reset
      
      --only perform reset on inactive data clk
      while data_clk /= '0' loop end loop;
      bits_written := 0; --reset received data counter
      wait until falling_edge(clk); --synchronize reset with read clk
      input_reg <= (others => '0'); --clear internal storage register 
      data_rdy_buff <= (others => '0'); --clear data_rdy line buffer
    
    elsif data_clk'EVENT and data_clk = '1' then --clock in data on rising edge data clock
  
      if bits_written < data_width then --clock in new data
      
        --clock in and store data
        input_reg <= input_reg((data_width-2) downto 0) & data_in; --shift in new data
        bits_written := bits_written + 1;
        
      end if;-- end if bits_written < data_width
      
      if bits_written = data_width then --if all data has been received, clock out ready signal
               
        clock_out_data(data_rdy_buff,clk,reset);
               
      end if;-- end if bits_written = data_width 
      
    end if;--end if data_clk'EVENT
   
  end process gather_data;



end architecture behaviour;
