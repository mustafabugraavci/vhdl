library ieee;
use ieee.std_logic_1164.all;
library work;
use work.dec2to4_package.all;

entity dec4to16 is
	port(w  : in std_logic_vector(3 downto 0);
	     En : in std_logic;
		  y  : out std_logic_vector(0 to 15));
end dec4to16;

architecture structure of dec4to16 is
	component dec2to5
		port(w  : in std_logic_vector(1 downto 0);
		     En : in std_logic;
			  y  : out std_logic_vector(0 to 3));
	end component;
	signal m: std_logic_vector(0 to 3);
begin 
	g1: for i in 1 to 3 generate
		 dec_ri: dec2to4 port map ( w(i downto i-1), En, m);
		 g2: if i= 3 generate
			dec_left: dec2to4 port map( w(i downto i-1), En, m);
		end generate;
	end generate;
end structure;