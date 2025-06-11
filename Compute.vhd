LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Compute IS
    GENERIC (
        DATA_WIDTH : INTEGER := 8
    );
    PORT (
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        en : IN STD_LOGIC;
        A : IN STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);
        B : IN STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);
        C : IN STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);
        D : IN STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);
        Q : OUT STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0)
    );
END ENTITY Compute;

ARCHITECTURE rtl OF Compute IS
    SIGNAL res_int : unsigned(2 * DATA_WIDTH - 1 DOWNTO 0);
BEGIN

    PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            res_int <= (OTHERS => '0');
        ELSIF rising_edge(clk) THEN
            IF en = '1' THEN
                res_int <= unsigned(A) + unsigned(B) + unsigned(C) - unsigned(D);
            END IF;
        END IF;
    END PROCESS;

    Q <= STD_LOGIC_VECTOR(res_int);

END ARCHITECTURE rtl;