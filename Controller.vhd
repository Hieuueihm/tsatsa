LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Controller IS

    PORT (
        RST, CLK : IN STD_LOGIC;
        Start : IN STD_LOGIC;
        size_err, iMax, jMax : IN STD_LOGIC;
        mem_d_sel, Int_RE, Int_WE, En_A, En_B, En_C, En_D, En_i, En_j : OUT STD_LOGIC;
        LDI_i, LDI_j, En_Compute, compute_sel, addr_store_sel, init_sel : OUT STD_LOGIC;
        DONE : OUT STD_LOGIC;

        addr_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
END ENTITY;
ARCHITECTURE rtl OF Controller IS
    TYPE State_type IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15, S16, S17, S18, S19);
    SIGNAL STATE : State_type;

BEGIN
    -- STATE REGISTER
    PROCESS (RST, CLK)
    BEGIN
        IF (RST = '1') THEN
            STATE <= S0;
        ELSIF rising_edge(CLK) THEN
            CASE STATE IS
                WHEN S0 =>
                    STATE <= S1;
                WHEN S1 =>
                    IF Start = '1' THEN
                        STATE <= S2;
                    ELSE
                        STATE <= S1;
                    END IF;
                WHEN S2 =>
                    IF size_err = '1' THEN
                        STATE <= S18; -- DONE
                    ELSE
                        STATE <= S3;
                    END IF;
                WHEN S3 =>
                    IF (jMax = '1') THEN
                        STATE <= S4;
                    ELSE
                        STATE <= S3;
                    END IF;
                WHEN S4 =>
                    IF (iMax = '1') THEN
                        STATE <= S5;
                    ELSE
                        STATE <= S4;
                    END IF;
                WHEN S5 =>
                    STATE <= S6;
                WHEN S6 =>
                    STATE <= S7;
                WHEN S7 =>
                    STATE <= S8;
                WHEN S8 =>
                    STATE <= S9;
                WHEN S9 =>
                    STATE <= S10;
                WHEN S10 =>
                    STATE <= S11;
                WHEN S11 =>
                    STATE <= S12;
                WHEN S12 =>
                    STATE <= S13;
                WHEN S13 =>
                    STATE <= S14;
                WHEN S14 =>
                    STATE <= S15;
                WHEN S15 =>
                    STATE <= S16;
                WHEN S16 =>
                    IF (jMax = '1') THEN
                        STATE <= S17;
                    ELSE
                        STATE <= S6;
                    END IF;
                WHEN S17 =>
                    IF (iMax = '1') THEN
                        STATE <= S18;
                    ELSE
                        STATE <= S6;
                    END IF;
                WHEN S18 =>
                    STATE <= S19;
                WHEN S19 =>
                    IF Start = '0' THEN
                        STATE <= S0;
                    ELSE
                        STATE <= S19;
                    END IF;
                WHEN OTHERS =>
                    STATE <= S0;
            END CASE;
        END IF;
    END PROCESS;
    -- mem_d_sel, Int_RE, Int_WE, En_A, En_B, En_C, En_D, En_i, En_j : OUT STD_LOGIC;
    --LDI_i, LDI_j, En_Compute, compute_sel, addr_sel, addr_store_sel, init_sel : OUT STD_LOGIC;
    -- COMBINATIONAL LOGIC
    mem_d_sel <= '1' WHEN STATE = S15 ELSE
        '0';

    Int_RE <= '1' WHEN (STATE = S6 OR STATE = S8 OR STATE = S10 OR STATE = S12) ELSE
        '0';
    Int_WE <= '1' WHEN (STATE = S3 OR STATE = S4 OR STATE = S15) ELSE
        '0';
    En_A <= '1' WHEN (STATE = S7) ELSE
        '0';
    En_B <= '1' WHEN (STATE = S9) ELSE
        '0';
    En_C <= '1' WHEN (STATE = S11) ELSE
        '0';
    En_D <= '1' WHEN (STATE = S13) ELSE
        '0';
    En_i <= '1' WHEN (STATE = S4 OR STATE = S17) ELSE
        '0';
    En_j <= '1' WHEN (STATE = S3 OR STATE = S16) ELSE
        '0';

    LDI_I <= '1' WHEN (STATE = S2 OR STATE = S5) ELSE
        '0';
    LDI_J <= '1' WHEN (STATE = S2 OR STATE = S5 OR STATE = S17) ELSE
        '0';
    En_Compute <= '1' WHEN (STATE = S14) ELSE
        '0';
    compute_sel <= '1' WHEN (STATE = S6 OR STATE = S8 OR STATE = S10 OR STATE = S12) ELSE
        '0';
    WITH STATE SELECT
        addr_sel <= "00" WHEN S6,
        "01" WHEN S8,
        "10" WHEN S10,
        "11" WHEN S12,
        (OTHERS => '0') WHEN OTHERS;
    addr_store_sel <= '1' WHEN (STATE = S15) ELSE
        '0';
    init_sel <= '1' WHEN STATE = S3 ELSE
        '0';
    DONE <= '1';

END ARCHITECTURE;