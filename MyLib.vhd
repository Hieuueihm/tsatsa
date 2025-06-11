LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
PACKAGE MyLib IS
    COMPONENT Regn IS
        GENERIC (DATA_WIDTH : INTEGER);
        PORT (
            RST, CLK : IN STD_LOGIC;
            En : IN STD_LOGIC;
            D : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
            Q : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0)
        );
    END COMPONENT;
    COMPONENT Memory IS
        GENERIC (
            DATA_WIDTH : INTEGER;
            ADDR_WIDTH : INTEGER); -- Width of the address bus

        PORT (

            Din : IN STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);
            ADDR : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0); -- Address input
            WE, RE : IN STD_LOGIC;
            CLK : IN STD_LOGIC;
            Dout : OUT STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0) -- Data output
        );
    END COMPONENT;

    COMPONENT Counter IS
        PORT (
        RST, CLK : IN STD_LOGIC;
        En : IN STD_LOGIC;
        LDI : IN STD_LOGIC;
        D : IN STD_LOGIC_VECTOR(8 DOWNTO 0); -- Data input for loading
        Q : OUT STD_LOGIC_VECTOR(8 DOWNTO 0) -- Counter output
        );
    END COMPONENT;

    COMPONENT Compute IS

        GENERIC (
            DATA_WIDTH : INTEGER := 16
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

    END COMPONENT;

    COMPONENT Controller IS
        PORT (
            RST, CLK : IN STD_LOGIC;
            Start : IN STD_LOGIC;
            size_err, iMax, jMax, iSubMax, jSubMax : IN STD_LOGIC;
            mem_d_sel, Int_RE, Int_WE, En_A, En_B, En_C, En_D, En_i, En_j : OUT STD_LOGIC;
            LDI_i, LDI_j, En_Compute, compute_sel, addr_store_sel, init_sel : OUT STD_LOGIC;
            addr_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            DONE : OUT STD_LOGIC
        );
    END COMPONENT;
    COMPONENT Datapath IS
        GENERIC (
            DATA_WIDTH : INTEGER;
            ADDR_WIDTH : INTEGER
        );

        PORT (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;

            Start : IN STD_LOGIC;

            -- address bus
            base_input_addr : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
            base_output_addr : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);

            -- mem addr for writing input data
            mem_addr : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);

            -- data bus
            Data_in : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
            Data_out : OUT STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);

            -- read/write control
            WE : IN STD_LOGIC;
            RE : IN STD_LOGIC;

            -- image dimensions
            IMAGE_WIDTH : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            IMAGE_HEIGHT : IN STD_LOGIC_VECTOR(8 DOWNTO 0);

            -- output error sizes

            -- control signals 
            size_err, iMax, jMax, iSubMax, jSubMax : OUT STD_LOGIC;
            mem_d_sel, Int_RE, Int_WE, En_A, En_B, En_C, En_D, En_i, En_j : IN STD_LOGIC;
            LDI_i, LDI_j, En_Compute, compute_sel, addr_store_sel, init_sel : IN STD_LOGIC;
            addr_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
        );
    END COMPONENT;

END PACKAGE MyLib;