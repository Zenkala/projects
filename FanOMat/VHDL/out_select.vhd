library ieee;
use ieee.std_logic_1164.all;

entity out_select is
	port (
		enable : in std_logic;
		pwm_in : in std_logic;
		out_pwr,out_pwm : out std_logic
	);
end entity out_select;

architecture behaviour of out_select is
	
begin

  out_pwr <= pwm_in when enable = '1' else '1';
  out_pwm <= pwm_in when enable = '0' else '0';

end architecture behaviour;
