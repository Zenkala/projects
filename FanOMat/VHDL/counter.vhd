library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
	generic ( 
		counter_width : positive := 8 
	);
	port (
		count_val : out unsigned (counter_width-1 downto 0); 
		clk, reset : in std_logic;
		ovf_out : out std_logic
	);
end entity counter;

architecture behaviour of counter is
	
	signal counter_value : unsigned (counter_width-1 downto 0) := (others => '0');
	signal reset_internal : std_logic := '0';
	
begin

  count_val <= counter_value;  
  
  --seperate reset capture process
  reset_capture : process
  begin
    wait until falling_edge(clk);
    reset_internal <= reset;  
  end process reset_capture;
  
  update_counter : process
  
  begin
  
    wait until rising_edge(clk);
    
    if reset_internal = '1' then
      --reset counter
      counter_value <= (others => '0');
      ovf_out <= '0';
    else
      
      --describe counter behaviour
      if counter_value = ((2**counter_width) -1) then
        ovf_out <= '1'; --signal overflow
        counter_value <= (others => '0');
      else 
        ovf_out <= '0'; --keep ovf_out one clock pulse high only
        counter_value <= counter_value + 1;
      end if;
    
   end if;
     
  end process update_counter;

  

end architecture behaviour;
