library ieee;
use ieee.std_logic_1164.all;

entity four_bit_adder is
	port ( cin :           in std_logic;
			 x3, x2, x1, x0: in std_logic;
			 y3, y2, y1, y0: in std_logic;
			 s3, s2, s1, s0: out std_logic;
			 cout :          out std_logic);
 end four_bit_adder;
 
 architecture structure of four_bit_adder is
	signal c1, c2, c3: std_logic;
	component fulladd
		port ( cin :  in std_logic;
				 x:     in std_logic;
			 	 y:     in std_logic;
				 s:     out std_logic;
				 cout : out std_logic);
	 end component;
begin
	stage0 : fulladd port map(cin, x0, y0, s0, c1);
	stage1 : fulladd port map(c1, x1, y1, s1, c2);
	stage2 : fulladd port map(c2, x2, y2, s2, c3);
	stage3 : fulladd port map(cin=>c3, cout=>cout, x=>x3, y=>y3, s=>s3);
end structure;