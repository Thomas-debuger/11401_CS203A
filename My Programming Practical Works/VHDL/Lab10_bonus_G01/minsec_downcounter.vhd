library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity minsec_downcounter is
    generic(
        CLK_FREQ : integer := 50000000
    );
    port (
        clk      : in  std_logic;
        btn0     : in  std_logic; -- 歸零
        btn1     : in  std_logic; -- 秒-1
        btn2     : in  std_logic; -- 秒+1
        sw0      : in  std_logic; -- 調整模式開關
        hex0     : out std_logic_vector(7 downto 0); -- 秒個位
        hex1     : out std_logic_vector(7 downto 0); -- 秒十位 + dp
        hex2     : out std_logic_vector(7 downto 0); -- 分個位
        hex3     : out std_logic_vector(7 downto 0)  -- 分十位
    );
end minsec_downcounter;

architecture rtl of minsec_downcounter is

    -- BCD 計時值 (初始 59.57)
    signal m_tens  : integer range 0 to 5 := 5;
    signal m_units : integer range 0 to 9 := 9;
    signal s_tens  : integer range 0 to 5 := 5;
    signal s_units : integer range 0 to 9 := 7;

    -- 1Hz tick
    constant COUNT_1HZ : integer := CLK_FREQ - 1;
    signal cnt_1hz  : integer := 0;
    signal tick_1hz : std_logic := '0';

    -- 按鈕同步 + 邊緣觸發
    signal btn0_sync, btn1_sync, btn2_sync : std_logic := '0';
    signal btn0_prev, btn1_prev, btn2_prev : std_logic := '0';

    -- BCD → 7段（active-low，dp = 最左邊 bit）
    function bcd7seg(x : integer; dp : std_logic) return std_logic_vector is
        variable seg : std_logic_vector(7 downto 0);
    begin
        case x is
            when 0 => seg := dp & "1000000";
            when 1 => seg := dp & "1111001";
            when 2 => seg := dp & "0100100";
            when 3 => seg := dp & "0110000";
            when 4 => seg := dp & "0011001";
            when 5 => seg := dp & "0010010";
            when 6 => seg := dp & "0000010";
            when 7 => seg := dp & "1111000";
            when 8 => seg := dp & "0000000";
            when 9 => seg := dp & "0010000";
            when others => seg := dp & "1111111";
        end case;
        return seg;
    end function;

begin

    -------------------------------------------------------------
    -- 1Hz tick
    -------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if cnt_1hz = COUNT_1HZ then
                cnt_1hz  <= 0;
                tick_1hz <= '1';
            else
                cnt_1hz  <= cnt_1hz + 1;
                tick_1hz <= '0';
            end if;
        end if;
    end process;

    -------------------------------------------------------------
    -- 按鈕同步 (去抖動)
    -------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            btn0_sync <= btn0;
            btn1_sync <= btn1;
            btn2_sync <= btn2;
        end if;
    end process;

    -------------------------------------------------------------
    -- 分秒倒數 + 按鈕邏輯
    -------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then

            if sw0 = '0' then
                -- 自動倒數模式
                if tick_1hz = '1' then
                    if s_units > 0 then
                        s_units <= s_units - 1;
                    else
                        s_units <= 9;
                        if s_tens > 0 then
                            s_tens <= s_tens - 1;
                        else
                            s_tens <= 5;
                            if m_units > 0 then
                                m_units <= m_units - 1;
                            else
                                m_units <= 9;
                                if m_tens > 0 then
                                    m_tens <= m_tens - 1;
                                else
                                    -- 循環到 59.59
                                    m_tens  <= 5;
                                    m_units <= 9;
                                    s_tens  <= 5;
                                    s_units <= 9;
                                end if;
                            end if;
                        end if;
                    end if;
                end if;

            else
                -- 調整模式 (暫停倒數)
                -- btn0 歸零
                if btn0_sync = '1' and btn0_prev = '0' then
                    m_tens  <= 0;
                    m_units <= 0;
                    s_tens  <= 0;
                    s_units <= 0;
                end if;

                -- btn2 秒+1
                if btn2_sync = '1' and btn2_prev = '0' then
                    if s_units < 9 then
                        s_units <= s_units + 1;
                    else
                        s_units <= 0;
                        if s_tens < 5 then
                            s_tens <= s_tens + 1;
                        else
                            s_tens <= 0;
                        end if;
                    end if;
                end if;

                -- btn1 秒-1
                if btn1_sync = '1' and btn1_prev = '0' then
                    if s_units > 0 then
                        s_units <= s_units - 1;
                    else
                        s_units <= 9;
                        if s_tens > 0 then
                            s_tens <= s_tens - 1;
                        else
                            s_tens <= 5;
                        end if;
                    end if;
                end if;

            end if;

            -- 更新上一個按鈕狀態
            btn0_prev <= btn0_sync;
            btn1_prev <= btn1_sync;
            btn2_prev <= btn2_sync;

        end if;
    end process;

    -------------------------------------------------------------
    -- 輸出七段顯示器
    -------------------------------------------------------------
    hex0 <= bcd7seg(s_units, '1'); -- 秒個位，小數點亮
    hex1 <= bcd7seg(s_tens, '1');  -- 秒十位
    hex2 <= bcd7seg(m_units, '0'); -- 分個位
    hex3 <= bcd7seg(m_tens, '1');  -- 分十位

end rtl;