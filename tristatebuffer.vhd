-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
-- Tri-state buffer
LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY TriStateBuffer IS PORT (
	E: IN std_logic;
	D: IN std_logic_vector(15 DOWNTO 0);
	Y: OUT std_logic_vector(15 DOWNTO 0));
END TriStateBuffer;
ARCHITECTURE Behavioral OF TriStateBuffer IS
BEGIN
    PROCESS (E, D) -- get error message if no d
    BEGIN
        IF (E = '1') THEN
            Y <= D;
        ELSE
            Y <= (OTHERS => 'Z'); -- to get 8 Z values
        END IF;
    END PROCESS;
END Behavioral;
