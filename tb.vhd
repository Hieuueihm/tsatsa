LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_IntegralImage IS
END tb_IntegralImage;

ARCHITECTURE behavior OF tb_IntegralImage IS

    CONSTANT DATA_WIDTH : INTEGER := 8;
    CONSTANT ADDR_WIDTH : INTEGER := 16;
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
    SIGNAL out_value : INTEGER;

    COMPONENT IntegralImage
        GENERIC (
            DATA_WIDTH : INTEGER;
            ADDR_WIDTH : INTEGER);
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

    TYPE ram_type IS ARRAY (0 TO 255) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL RAM : ram_type;

BEGIN
    uut : IntegralImage
    GENERIC MAP(
        DATA_WIDTH => DATA_WIDTH,
        ADDR_WIDTH => ADDR_WIDTH)
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
        WHILE NOW < 2 ms LOOP
            clk <= '0';
            WAIT FOR 10 ns;
            clk <= '1';
            WAIT FOR 10 ns;
        END LOOP;
        WAIT;
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
        WAIT FOR 50 ns;
        rst <= '0';
        IMAGE_WIDTH <= STD_LOGIC_VECTOR(to_unsigned(IMG_W, 9));
        IMAGE_HEIGHT <= STD_LOGIC_VECTOR(to_unsigned(IMG_H, 9));
        base_input_addr <= STD_LOGIC_VECTOR(to_unsigned(BASE_INPUT, ADDR_WIDTH));
        base_output_addr <= STD_LOGIC_VECTOR(to_unsigned(BASE_OUTPUT, ADDR_WIDTH));

        -- Ghi dữ liệu vào RAM từng ô qua mem_addr
        FOR i IN 0 TO 24 LOOP
            mem_addr <= STD_LOGIC_VECTOR(to_unsigned(BASE_INPUT + i, ADDR_WIDTH));
            Data_in <= STD_LOGIC_VECTOR(to_unsigned(input_matrix(i), DATA_WIDTH));
            WE <= '1';
            WAIT FOR 20 ns;
        END LOOP;
        WE <= '0';
        WAIT FOR 20 ns;

        -- Bắt đầu xử lý
        Start <= '1';
        WAIT FOR 20 ns;

        -- Chờ hoàn tất
        WAIT UNTIL Done = '1';
        START <= '0';

        REPORT "Xử lý hoàn tất";
        WAIT FOR 1000 ns;
        FOR i IN 0 TO IMG_H LOOP
            FOR j IN 0 TO IMG_W + 1 LOOP
                mem_addr <= STD_LOGIC_VECTOR(
                    to_unsigned(BASE_OUTPUT + i * (IMG_W + 1) + j, ADDR_WIDTH)
                    );
                RE <= '1';

                WAIT FOR 20 ns;
                out_value <= to_integer(unsigned(Data_out));
                REPORT "mem_addr = " & INTEGER'image(to_integer(unsigned(mem_addr)));
                REPORT "J(" & INTEGER'image(i) & "," & INTEGER'image(j) & ") = " & INTEGER'image(out_value);
            END LOOP;
        END LOOP;
        RE <= '0';

        WAIT FOR 20 ns;

        WAIT;
    END PROCESS;

END ARCHITECTURE;