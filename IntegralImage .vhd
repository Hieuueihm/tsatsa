LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE work.MyLib.ALL;
ENTITY IntegralImage IS
    GENERIC (
        DATA_WIDTH : INTEGER := 8;
        ADDR_WIDTH : INTEGER := 18);

    PORT (
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;

        -- control signals
        Start : IN STD_LOGIC;
        Done : OUT STD_LOGIC;

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
        size_error_o : OUT STD_LOGIC

    );
END ENTITY IntegralImage;

ARCHITECTURE rtl OF IntegralImage IS
    SIGNAL iMax, jMax, jSubMax, iSubMax : STD_LOGIC;
    SIGNAL mem_d_sel, Int_RE, Int_WE, En_A, En_B, En_C, En_D, En_i, En_j : STD_LOGIC;
    SIGNAL LDI_i, LDI_j, En_Compute, compute_sel, addr_store_sel, init_sel : STD_LOGIC;
    SIGNAL size_err : STD_LOGIC;
    SIGNAL addr_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
    DATAPATH_INST : ENTITY work.Datapath
        GENERIC MAP(
            DATA_WIDTH => DATA_WIDTH,
            ADDR_WIDTH => ADDR_WIDTH
        )
        PORT MAP(
            clk => clk,
            rst => rst,
            Start => Start,
            base_input_addr => base_input_addr,
            base_output_addr => base_output_addr,
            mem_addr => mem_addr,
            Data_in => Data_in,
            Data_out => Data_out,
            WE => WE,
            RE => RE,
            IMAGE_WIDTH => IMAGE_WIDTH,
            IMAGE_HEIGHT => IMAGE_HEIGHT,
            size_err => size_err,
            iMax => iMax,
            jMax => jMax,
            iSubMax => iSubMax,
            jSubMax => jSubMax,
            mem_d_sel => mem_d_sel,
            Int_RE => Int_RE,
            Int_WE => Int_We,
            En_A => En_A,
            En_B => En_B,
            En_C => En_C,
            En_D => En_D,
            En_i => En_i,
            En_j => En_j,
            LDI_i => LDI_i,
            LDI_j => LDI_j,
            En_Compute => En_Compute,
            compute_sel => compute_sel,
            addr_store_sel => addr_store_sel,
            init_sel => init_sel,
            addr_sel => addr_sel
        );

    CONTROLLER_INST : ENTITY work.Controller
        PORT MAP(
            RST => rst,
            CLK => clk,
            Start => Start,
            size_err => size_err,
            iMax => iMax,
            jMax => jMax,
            iSubMax => iSubMax,
            jSubMax => jSubMax,
            mem_d_sel => mem_d_sel,
            Int_RE => Int_RE,
            Int_WE => Int_We,
            En_A => En_A,
            En_B => En_B,
            En_C => En_C,
            En_D => En_D,
            En_i => En_i,
            En_j => En_j,
            LDI_i => LDI_i,
            LDI_j => LDI_j,
            En_Compute => En_Compute,
            compute_sel => compute_sel,
            addr_store_sel => addr_store_sel,
            init_sel => init_sel,
            addr_sel => addr_sel,
            Done => Done
        );
    size_error_o <= size_err;
END ARCHITECTURE rtl;