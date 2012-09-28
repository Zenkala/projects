library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.NUMERIC_STD.all;

entity one_to_many_mux is
  generic ( nr_outputs : positive := 4;
            nr_sel_bits : positive := 2;
            bit_width : positive := 2 --adjust so that pwm_channels can be respresented by this number of bits
  );
port (
        output : out std_logic_vector ((nr_outputs * bit_width)-1 downto 0);   --output bus
        input : in std_logic_vector (bit_width-1 downto 0);
        sel : in unsigned(nr_sel_bits-1 downto 0)
     );
end one_to_many_mux;

architecture Behavioral of one_to_many_mux is

begin


end Behavioral;