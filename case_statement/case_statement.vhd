library ieee;
use ieee.std_logic_1164.all;

entity case_statement is
	port(w:  in std_logic_vector(1 downto 0);
		  en: in std_logic;
		  y:  out std_logic_vector(0 to 3));
end case_statement;

architecture behavior of case_statement is
begin
	process(w, en)
	begin
		if en = '1' then
			case w is
				when "00" =>
					y <= "1000";
				when "01" =>
					y <= "0100";
				when "10" =>
					y <= "0010";
				when others =>
					y <= "0001";
			end case;
		else
			y <= "0000";
		end if;
	end process;
end behavior;