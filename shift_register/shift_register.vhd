library ieee;
use ieee.std_logic_1164.all;
library lpm;
use lpm.lpm_components.all;

entity shift_register is
	port(clock: in std_logic;
		  reset: in std_logic;
		  shiftin: in std_logic;
		  load: in std_logic;
		  r: in std_logic_vector(3 downto 0);
		  q: out std_logic_vector(3 downto 0));
end shift_register;

architecture structure of shift_register is
begin
	instance: lpm_shiftreg
		generic map(lpm_width=>4, lpm_direction=>"right")
		port map(data=>r, clock=>clock, aclr=>reset,
			load=>load, shiftin=>shiftin, q=>q);
end structure;