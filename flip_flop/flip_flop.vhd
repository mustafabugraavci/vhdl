library ieee;
use ieee.std_logic_1164.all;

entity flip_flop is
	port(d, clock: in std_logic;
		  q: out std_logic);
end flip_flop;

architecture behavior of flip_flop is
begin
	process
	begin
		wait until clock'event and clock='1';
		q <= d;
	end process;
end behavior;
