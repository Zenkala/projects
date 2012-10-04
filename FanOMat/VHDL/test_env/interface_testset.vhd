library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity interface_testset is
  generic (data_width : positive := 9);
  port (
    data_in, data_clk : out std_logic;
    reset : out std_logic;
    clk : out std_logic;
  );
end entity interface_testset;

architecture behaviour of interface_testset is

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
  

    
  end process;
  
end architecture behaviour;
