library ieee;
use ieee.std_logic_1164.all;

entity d_flip_flop is
	port(d, clock: in std_logic;
		  q       : out std_logic);
end d_flip_flop;

architecture behavior of d_flip_flop is
begin
	process(clock)
	begin
		if clock'event and clock = '1' then
			q <= d;
		end if;
	end process;
end behavior;