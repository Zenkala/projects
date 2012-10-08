library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_test is
  generic ( 
    counter_width : positive := 8 
  );
  port (
    count_val : out unsigned (counter_width-1 downto 0); 
    ovf_out : out std_logic
  );
end entity counter_test;

architecture struct of counter_test is

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

  component counter_testset 
    generic ( 
      counter_width : positive 
    );
    port (
      clk, reset : out std_logic
    );
  end component counter_testset;


  signal clk_line,reset_line : std_logic := '0';
    
begin

  --instantiate testset
  testset : counter_testset 
  generic map (counter_width)   
  port map (   clk => clk_line,
               reset => reset_line
           );
           
  --instantiate counter
  counter_instance : counter
  generic map (counter_width)      
  port map (  count_val => count_val,
              clk => clk_line,
              reset => reset_line,
              ovf_out => ovf_out
           );

end architecture struct;
