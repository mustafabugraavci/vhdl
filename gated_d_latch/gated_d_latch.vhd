library ieee;
use ieee.std_logic_1164.all;

entity gated_d_latch is
	port(d, clk: in std_logic;
		  q     : out std_logic);
end gated_d_latch;

architecture behavior of gated_d_latch is
begin
	process (d, clk)
	begin
		if clk='1' then
			q<=d;
		end if;
	end process;
end behavior;