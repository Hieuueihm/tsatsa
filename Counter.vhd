
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY Counter IS
    PORT (
        RST, CLK : IN STD_LOGIC;
        En : IN STD_LOGIC;
        LDI : IN STD_LOGIC;
        D : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
        Q : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
    );
END ENTITY Counter;

ARCHITECTURE rtl OF Counter IS
    SIGNAL counter_value : STD_LOGIC_VECTOR(8 DOWNTO 0);
    CONSTANT MAX_COUNT : STD_LOGIC_VECTOR(8 DOWNTO 0) := (OTHERS => '1');
BEGIN

    PROCESS (RST, CLK)
    BEGIN
        IF RST = '1' THEN
            counter_value <= (OTHERS => '0');
        ELSIF rising_edge(CLK) THEN
            IF LDI = '1' THEN
                counter_value <= D;
            ELSIF En = '1' THEN
                IF unsigned(counter_value) = unsigned(MAX_COUNT) THEN
                    counter_value <= (OTHERS => '0');
                ELSE
                    counter_value <= STD_LOGIC_VECTOR(unsigned(counter_value) + 1);
                END IF;
            END IF;
        END IF;
    END PROCESS;
    Q <= counter_value;

END ARCHITECTURE rtl;