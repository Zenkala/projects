library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compare_test is
  generic (compare_width : positive := 8);
  port (
    pwm_pin4, pwm_pin3 : out std_logic;    
    data_updated : out std_logic
  );
end entity compare_test;

architecture struct of compare_test is

  component compare_block
    generic (compare_width : positive);
    port (
      clk,reset : in std_logic;
      data_rdy : in std_logic;
      cnt_ovf : in std_logic;
      cnt_value : in unsigned (compare_width-1 downto 0);
      update_value : in unsigned (compare_width downto 0);
      pwm_pin4, pwm_pin3 : out std_logic;    
      data_updated : out std_logic
    );
  end component compare_block;

  component compare_testset
    generic (compare_width : positive);
    port (
      clk,reset : out std_logic;
      data_rdy : out std_logic;
      cnt_ovf : out std_logic;
      cnt_value : out unsigned (compare_width-1 downto 0);
      update_value : out unsigned (compare_width downto 0)
    );
  end component compare_testset;


  signal clk_line,reset_line,ovf_line,data_rdy_line : std_logic := '0';
  signal cnt_bus : unsigned (compare_width-1 downto 0);
  signal update_bus : unsigned (compare_width downto 0);
    
begin

  --instantiate testset
  testset : compare_testset 
  generic map (compare_width)   
  port map (   clk => clk_line,
               reset => reset_line,
               cnt_ovf => ovf_line,
               data_rdy => data_rdy_line,
               cnt_value => cnt_bus,
               update_value => update_bus 
           );
           
  --instantiate counter
  compare_instance : compare_block
  generic map (compare_width)      
  port map    ( clk => clk_line,
                reset => reset_line,
                data_rdy => data_rdy_line,
                cnt_ovf => ovf_line,
                cnt_value => cnt_bus,
                update_value => update_bus,
                pwm_pin4 => pwm_pin4,
                pwm_pin3 => pwm_pin3,
                data_updated => data_updated
              );            

end architecture struct;
