USE work.MyLib.ALL;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE ieee.numeric_std.ALL;

ENTITY Datapath IS
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
END ENTITY Datapath;

ARCHITECTURE rtl OF Datapath IS

    SIGNAL D_in_m, D_calc : STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL Data_store : STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL internal_WE, internal_RE : STD_LOGIC;
    SIGNAL D_out : STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL Addr_in_m : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL addr_calc : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL I, J : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL Isub, Jsub : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL addr_A, addr_B, addr_C, addr_D, addr_store : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL H, W, Wadd : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL addr_reg : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL addr_store1 : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL addr_init : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL A, B, C, D : STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);
BEGIN
    -- Internal signals for memory read/write control
    D_calc <= (OTHERS => '0') WHEN mem_d_sel = '0' ELSE
        Data_store;
    D_in_m <= STD_LOGIC_VECTOR(resize(unsigned(Data_in), 16)) WHEN Start = '0' ELSE
        D_calc;
    internal_WE <= WE OR Int_WE;
    internal_RE <= RE OR Int_RE;

    Data_out <= D_out;

    Addr_in_m <= mem_addr WHEN Start = '0' ELSE
        addr_calc;

    Memory_ins : Memory
    GENERIC MAP(DATA_WIDTH => DATA_WIDTH, ADDR_WIDTH => ADDR_WIDTH)
    PORT MAP(
        CLK => CLK,
        Din => D_in_m,
        ADDR => Addr_in_m,
        WE => internal_WE,
        RE => internal_RE,
        Dout => D_out
    );
    COUNTER_I : Counter
    GENERIC MAP(ADDR_WIDTH => ADDR_WIDTH)
    PORT MAP(
        RST, CLK,
        En => En_i,
        LDI => LDI_i,
        D => STD_LOGIC_VECTOR(to_unsigned(1, ADDR_WIDTH)),
        Q => I
    );

    COUNTER_J : Counter
    GENERIC MAP(ADDR_WIDTH => ADDR_WIDTH)
    PORT MAP(
        RST, CLK,
        En => En_j,
        LDI => LDI_j,
        D => STD_LOGIC_VECTOR(to_unsigned(1, ADDR_WIDTH)),
        Q => J
    );
    Jsub <= STD_LOGIC_VECTOR(unsigned(J) - to_unsigned(1, J'length));
    Isub <= STD_LOGIC_VECTOR(unsigned(I) - to_unsigned(1, I'length));
    H <= IMAGE_HEIGHT;
    W <= IMAGE_WIDTH;
    -- Width + 1
    Wadd <= STD_LOGIC_VECTOR(unsigned(W) + to_unsigned(1, W'length));

    -- addr_A: base_input_addr + (Isub * W) + Jsub
    addr_A <= STD_LOGIC_VECTOR(resize(
        unsigned(base_input_addr) + unsigned(Isub) * unsigned(W) + unsigned(Jsub), 16));

    addr_B <= STD_LOGIC_VECTOR(resize(
        unsigned(base_output_addr) + unsigned(Isub) * unsigned(Wadd) + unsigned(J), 16));

    addr_C <= STD_LOGIC_VECTOR(resize(
        unsigned(base_output_addr) + unsigned(I) * unsigned(Wadd) + unsigned(Jsub), 16));

    addr_D <= STD_LOGIC_VECTOR(resize(
        unsigned(base_output_addr) + unsigned(Isub) * unsigned(Wadd) + unsigned(Jsub), 16));

    addr_store <= STD_LOGIC_VECTOR(resize(
        unsigned(base_output_addr) + unsigned(I) * unsigned(Wadd) + unsigned(J), 16));
    WITH addr_sel SELECT
        addr_reg <= addr_A WHEN "00",
        addr_B WHEN "01",
        addr_C WHEN "10",
        addr_D WHEN "11",
        (OTHERS => '0') WHEN OTHERS;

    addr_calc <= addr_reg WHEN compute_sel = '1' ELSE
        addr_store1;

    -- Chọn địa chỉ để lưu: addr_store hoặc addr_init
    addr_store1 <= addr_store WHEN addr_store_sel = '1' ELSE
        addr_init;

    -- Địa chỉ khởi tạo: dòng đầu tiên (Jsub) hoặc cột đầu tiên (Isub * W)
    addr_init <= STD_LOGIC_VECTOR(resize(
        unsigned(base_output_addr) + unsigned(Jsub), 16)) WHEN init_sel = '1' ELSE
        STD_LOGIC_VECTOR(resize(
        unsigned(base_output_addr) + (unsigned(Isub) * unsigned(Wadd)), 16));
    -- Kiểm tra lỗi kích thước: width và height phải từ 5 đến 256
    size_err <= '1' WHEN (unsigned(W) < to_unsigned(5, W'length)) OR
        (unsigned(H) < to_unsigned(5, H'length)) OR
        (unsigned(W) > to_unsigned(256, W'length)) OR
        (unsigned(H) > to_unsigned(256, H'length)) ELSE
        '0';
    iMax <= '1' WHEN (unsigned(I) = unsigned(H)) ELSE
        '0';
    jMax <= '1' WHEN (unsigned(J) = unsigned(W)) ELSE
        '0';
    iSubMax <= '1' WHEN(unsigned(Isub) = unsigned(H)) ELSE
        '0';
    jSubMax <= '1' WHEN(unsigned(Jsub) = unsigned(W)) ELSE
        '0';
    REGA : Regn
    GENERIC MAP(DATA_WIDTH => 2 * DATA_WIDTH)
    PORT MAP(
        RST => RST,
        CLK => CLK,
        En => En_A,
        D => D_out,
        Q => A

    );

    REGB : Regn
    GENERIC MAP(DATA_WIDTH => 2 * DATA_WIDTH)
    PORT MAP(
        RST => RST,
        CLK => CLK,
        En => En_B,
        D => D_out,
        Q => B

    );
    REGC : Regn
    GENERIC MAP(DATA_WIDTH => 2 * DATA_WIDTH)
    PORT MAP(
        RST => RST,
        CLK => CLK,
        En => En_C,
        D => D_out,
        Q => C

    );

    REGD : Regn
    GENERIC MAP(DATA_WIDTH => 2 * DATA_WIDTH)
    PORT MAP(
        RST => RST,
        CLK => CLK,
        En => En_D,
        D => D_out,
        Q => D

    );
    Cmpute : Compute
    GENERIC MAP(DATA_WIDTH => DATA_WIDTH)
    PORT MAP(
        clk => CLK,
        rst => RST,
        en => En_Compute,
        A => A,
        B => B,
        C => C,
        D => D,
        Q => Data_store
    );

END ARCHITECTURE rtl;