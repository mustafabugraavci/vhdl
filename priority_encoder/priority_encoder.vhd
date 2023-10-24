library ieee;
use ieee.std_logic_1164.all;

entity priority_encoder is
	port(w : in  std_logic_vector(3 downto 0);
		  y : out std_logic_vector(1 downto 0);
		  z : out std_logic);
end priority_encoder;

architecture behavior of priority_encoder is
begin
	y <= "11" when w(3) = '1' else
		  "10" when w(2) = '1' else
		  "01" when w(1) = '1' else
		  "00";
	z <= '0' when w = "0000" else '1';
end behavior;