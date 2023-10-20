library ieee;
use ieee.std_logic_1164.all;

entity fulladd is
	port ( cin :  in std_logic;
			 x:     in std_logic;
			 y:     in std_logic;
			 s:     out std_logic;
			 cout : out std_logic);
 end fulladd;
 
architecture logic_func of fulladd is
begin
	s <= x xor y xor cin;
	cout <= (x and y) or (cin and x) or (cin and y);
end logic_func;
