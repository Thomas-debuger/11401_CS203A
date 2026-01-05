library IEEE;
use IEEE.std_logic_1164.all;

entity Lab_3_2_1131417 is
    port(
        CLK    : in std_logic;
        Sin    : in std_logic;
        Preset : in std_logic; -- 非同步預設
        Clear  : in std_logic; -- 非同步清除
        QA, QB, QC, QD : out std_logic
    );
end Lab_3_2_1131417;

architecture Behavioral of Lab_3_2_1131417 is
    signal reg : std_logic_vector(3 downto 0);
begin
    process(CLK, Preset, Clear)
    begin
        if Clear = '0' then
            reg <= (others => '0'); -- 全部清除
        elsif Preset = '0' then
            reg <= (others => '1'); -- 全部設為 1
        elsif rising_edge(CLK) then
            reg <= reg(2 downto 0) & Sin; -- 左移
        end if;
    end process;

    -- 輸出
    QA <= reg(3);
    QB <= reg(2);
    QC <= reg(1);
    QD <= reg(0);
end Behavioral;


library IEEE;
use IEEE.std_logic_1164.all;

entity tb_Lab_3_2_1131417 is
end tb_Lab_3_2_1131417;

architecture sim of tb_Lab_3_2_1131417 is
    signal CLK    : std_logic := '0';
    signal Sin    : std_logic := '0';
    signal Preset : std_logic := '1';
    signal Clear  : std_logic := '1';
    signal QA, QB, QC, QD : std_logic;
begin
    -- DUT
    uut: entity work.Lab_3_2_1131417
        port map(
            CLK => CLK, Sin => Sin,
            Preset => Preset, Clear => Clear,
            QA => QA, QB => QB, QC => QC, QD => QD
        );

    -- Clock 10ns
    CLK <= not CLK after 5 ns;

    -- Stimulus
    process
    begin
        -- 測試 Clear
        Clear <= '0'; wait for 15 ns;
        Clear <= '1'; wait for 15 ns;

        -- 測試 Preset
        Preset <= '0'; wait for 15 ns;
        Preset <= '1'; wait for 15 ns;

        -- 移位測試
        Sin <= '1'; wait for 20 ns;
        Sin <= '0'; wait for 20 ns;
        Sin <= '1'; wait for 20 ns;
        Sin <= '1'; wait for 20 ns;

        wait;
    end process;
end sim;