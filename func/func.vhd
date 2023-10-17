library ieee;
use ieee.std_logic_1164.all;

entity func is 
	port(x1, x2, x3: in  std_logic;
		  f         : out std_logic);
end func;

architecture logic_func of func is 
begin 
	f <= (not x1 and not x2 and not x3) or
		  (not x1 and x2 and not x3) or
		  (x1 and not x2 and not x3) or
		  (x1 and not x2 and x3) or
		  (x1 and x2 and not x3);
end logic_func;