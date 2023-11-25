library ieee;
use ieee.std_logic_1164.all;

entity flip_flop is
	port(d, reset, clock: in std_logic;
		  q: out std_logic);
end flip_flop;

architecture behavior of flip_flop is
begin
	process(reset, clock)
	begin
		if reset = '0' then
			q <= '0';
		elsif clock'event and clock = '1' then
			q <= d;
		end if;
	end process;
end behavior;