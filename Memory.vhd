LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Memory IS
    GENERIC (
        DATA_WIDTH : INTEGER;
        ADDR_WIDTH : INTEGER);

    PORT (

        Din : IN STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);
        ADDR : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
        WE, RE : IN STD_LOGIC;
        CLK : IN STD_LOGIC;
        Dout : OUT STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0)
    );
END ENTITY Memory;
ARCHITECTURE rtl OF Memory IS
    TYPE memory_type IS ARRAY (200 DOWNTO 0) OF STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL memory : memory_type := (OTHERS => (OTHERS => '0'));
BEGIN
    PROCESS (CLK)
    BEGIN
        IF rising_edge(CLK) THEN
            IF WE = '1' THEN
                memory(TO_INTEGER(UNSIGNED(ADDR))) <= Din;
            ELSIF RE = '1' THEN
                Dout <= memory(TO_INTEGER(UNSIGNED(ADDR)));
            ELSE
                Dout <= (OTHERS => '0');
            END IF;
        END IF;

    END PROCESS;

END ARCHITECTURE rtl;