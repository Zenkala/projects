library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity interface_test is
    generic ( data_width : positive := 9;
              clk_domain_buff_length : positive := 2     
    );
    port (
      data_rdy : out std_logic;
      data_out : out unsigned (data_width-1 downto 0)  --data width is compare value width + pwm output select bit
    );
end entity interface_test;

architecture struct of interface_test is

  component interface
    generic (data_width : positive := 9);
    port (
      --inputs
      data_in, data_clk : in std_logic;
      reset : in std_logic;
      clk : in std_logic;
      --outputs   
      data_rdy : out std_logic;
      data_out : out unsigned (data_width-1 downto 0)  --data width is compare value width + pwm output select bit
    );
  end component interface;

  component interface_testset 
    generic ( data_width : positive := 9 );
    port (
      data_out, data_clk : out std_logic;
      reset : out std_logic;
      clk : out std_logic
    );
  end component interface_testset;


  signal clk_line,reset_line,data_line,data_clk_line : std_logic := '0';
  
    
begin

  --instantiate testset
  testset : interface_testset 
  generic map (data_width)   
  port map (   data_out => data_line,
               data_clk => data_clk_line,
               reset => reset_line, 
               clk => clk_line
           );
           
  --instantiate counter
  interface_instance : interface
  generic map (data_width)      
  port map    ( clk => clk_line,
                reset => reset_line,
                data_rdy => data_rdy,
                data_in => data_line,
                data_clk => data_clk_line,
                data_out => data_out
              );            

end architecture struct;
