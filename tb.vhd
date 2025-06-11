LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_IntegralImage IS
END tb_IntegralImage;

ARCHITECTURE behavior OF tb_IntegralImage IS

    CONSTANT DATA_WIDTH : INTEGER := 8;
    CONSTANT ADDR_WIDTH : INTEGER := 18;

    CONSTANT IMG_W : INTEGER := 5;
    CONSTANT IMG_H : INTEGER := 5;

    CONSTANT BASE_INPUT : INTEGER := 0;
    CONSTANT BASE_OUTPUT : INTEGER := 100;

    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL rst : STD_LOGIC := '1';
    SIGNAL Start : STD_LOGIC := '0';
    SIGNAL Done : STD_LOGIC;
    SIGNAL base_input_addr : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL base_output_addr : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL mem_addr : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL Data_in : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL Data_out : STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL WE, RE : STD_LOGIC := '0';
    SIGNAL IMAGE_WIDTH : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL IMAGE_HEIGHT : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL size_error_o : STD_LOGIC;
    CONSTANT CLK_PERIOD : TIME := 20 ns;
    SIGNAL output_captured : STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL output_valid_d : STD_LOGIC;
    SIGNAL output_valid : STD_LOGIC;

    COMPONENT IntegralImage
        PORT (
            clk, rst : IN STD_LOGIC;
            Start : IN STD_LOGIC;
            Done : OUT STD_LOGIC;
            base_input_addr : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
            base_output_addr : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
            mem_addr : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
            Data_in : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
            Data_out : OUT STD_LOGIC_VECTOR(2 * DATA_WIDTH - 1 DOWNTO 0);
            WE, RE : IN STD_LOGIC;
            IMAGE_WIDTH : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            IMAGE_HEIGHT : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            size_error_o : OUT STD_LOGIC);
    END COMPONENT;
BEGIN
    uut : IntegralImage

    PORT MAP(
        clk => clk,
        rst => rst,
        Start => Start,
        Done => Done,
        base_input_addr => base_input_addr,
        base_output_addr => base_output_addr,
        mem_addr => mem_addr,
        Data_in => Data_in,
        Data_out => Data_out,
        WE => WE,
        RE => RE,
        IMAGE_WIDTH => IMAGE_WIDTH,
        IMAGE_HEIGHT => IMAGE_HEIGHT,
        size_error_o => size_error_o
    );

    -- Clock process
    clk_process : PROCESS
    BEGIN
        WHILE true LOOP
            clk <= '0';
            WAIT FOR CLK_PERIOD / 2;
            clk <= '1';
            WAIT FOR CLK_PERIOD / 2;
        END LOOP;
    END PROCESS;

    PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            output_valid_d <= '0';
            output_valid <= '0';

        ELSIF rising_edge(clk) THEN
            output_valid_d <= RE;
            output_valid <= output_valid_d;

        END IF;
    END PROCESS;

    PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            output_captured <= (OTHERS => '0');
        ELSIF rising_edge(clk) THEN
            output_captured <= Data_out;
        END IF;
    END PROCESS;
    -- Stimulus process
    stim_proc : PROCESS
        TYPE matrix_t IS ARRAY (0 TO 24) OF INTEGER;
        VARIABLE input_matrix : matrix_t := (
            0 => 17, 1 => 24, 2 => 1, 3 => 8, 4 => 15,
            5 => 23, 6 => 5, 7 => 7, 8 => 14, 9 => 16,
            10 => 4, 11 => 6, 12 => 13, 13 => 20, 14 => 22,
            15 => 10, 16 => 12, 17 => 19, 18 => 21, 19 => 3,
            20 => 11, 21 => 18, 22 => 25, 23 => 2, 24 => 9
        );
    BEGIN
        WAIT FOR 100 ns;
        rst <= '0';
        IMAGE_WIDTH <= STD_LOGIC_VECTOR(to_unsigned(IMG_W, 9));
        IMAGE_HEIGHT <= STD_LOGIC_VECTOR(to_unsigned(IMG_H, 9));
        base_input_addr <= STD_LOGIC_VECTOR(to_unsigned(BASE_INPUT, ADDR_WIDTH));
        base_output_addr <= STD_LOGIC_VECTOR(to_unsigned(BASE_OUTPUT, ADDR_WIDTH));

        -- Ghi dữ liệu vào RAM từng ô qua mem_addr
        FOR i IN 0 TO 24 LOOP
            WAIT UNTIL rising_edge(clk);
            mem_addr <= STD_LOGIC_VECTOR(to_unsigned(BASE_INPUT + i, ADDR_WIDTH));
            Data_in <= STD_LOGIC_VECTOR(to_unsigned(input_matrix(i), DATA_WIDTH));
            WE <= '1';
        END LOOP;
        WAIT UNTIL rising_edge(clk);

        WE <= '0';
        -- Bắt đầu xử lý
        WAIT UNTIL rising_edge(clk);
        Start <= '1';

        -- Chờ hoàn tất
        WAIT UNTIL rising_edge(clk);
        WAIT UNTIL Done = '1';
        START <= '0';
        WAIT UNTIL rising_edge(clk);
        WAIT UNTIL rising_edge(clk);
        REPORT "Xử lý hoàn tất";
        FOR i IN 0 TO IMG_H LOOP
            FOR j IN 0 TO IMG_W LOOP
                RE <= '1';
                mem_addr <= STD_LOGIC_VECTOR(to_unsigned(BASE_OUTPUT + i * (IMG_W + 1) + j, ADDR_WIDTH));
                WAIT UNTIL rising_edge(clk);

            END LOOP;
        END LOOP;
        RE <= '0';
        WAIT FOR 100 ns;

        WAIT; -- Kết thúc mô phỏng
    END PROCESS;

END ARCHITECTURE;