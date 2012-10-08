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

architecture bhv of counter is
	
	signal counter_value : unsigned (counter_width-1 downto 0) ;
	signal reset_internal : std_logic ;
	
begin

  count_val <= counter_value;  
  
  --capture external reset 
  sync_reset : process(clk)
  begin
  
    if clk'EVENT and clk='0' then
      reset_internal <= reset;
    end if;
  
  end process sync_reset;
  
  update_counter : process(clk, reset_internal)
  
  begin
  
    if reset_internal = '1' then
      --reset counter
      counter_value <= (others => '0');
      ovf_out <= '0';
    
    elsif clk'EVENT and clk = '1' then --on rising edge clock
      
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

  

end architecture bhv;
