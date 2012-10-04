library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testset is
  port (
    clk : out std_logic;
    rst : out std_logic
  );
end entity testset;

architecture RTL of testset is
    
  signal clk_internal : std_logic := '1';
  constant clk_period : time := 10 ns;
  
begin

  clk <= clk_internal;
  clk_internal <= not clk_internal after clk_period/2;

end architecture RTL;
