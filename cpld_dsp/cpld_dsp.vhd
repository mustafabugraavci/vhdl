
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; -- For to_unsigned function

package MyPackage is
    subtype BYTE is NATURAL range 0 to 255;
    -- Function to convert BYTE to STD_LOGIC_VECTOR
    function to_std_logic_vector(input: BYTE) return STD_LOGIC_VECTOR;
end package MyPackage;

use work.MyPackage.all;

-- Function implementation
package body MyPackage is
    function to_std_logic_vector(input: BYTE) return STD_LOGIC_VECTOR is
        variable temp: STD_LOGIC_VECTOR(7 downto 0);
    begin
        temp := std_logic_vector(to_unsigned(input, 8)); -- Assuming 8-bit BYTE type
        return temp;
    end function to_std_logic_vector;
end package body MyPackage;


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; -- For to_unsigned function
use work.MyPackage.all;


ENTITY cpld_dsp IS
    GENERIC (WIDTH : INTEGER := 8);
    PORT (
        clk : IN STD_LOGIC;
        a, b : IN BYTE;
        op1 : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
        sum : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
        d : OUT BYTE
    );
END cpld_dsp;

ARCHITECTURE fpga OF cpld_dsp IS
    SIGNAL c, s : BYTE;
    SIGNAL op2, op3 : STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
BEGIN
    -- Conversion from BYTE to STD_LOGIC_VECTOR using the custom function
    op2 <= to_std_logic_vector(b);
    -- Rest of your architecture code
END fpga;
