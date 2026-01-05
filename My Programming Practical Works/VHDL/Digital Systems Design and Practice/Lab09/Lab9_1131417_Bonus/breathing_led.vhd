library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity breathing_led is
  port (
    clk  : in  std_logic;     -- 50MHz clock
    led0 : out std_logic      -- LED[0]
  );
end entity;

architecture rtl of breathing_led is

  -- PWM 週期（越大亮度越平滑）
  constant PERIOD : integer := 500;

  -- 訊號
  signal pwm_count  : integer range 0 to PERIOD := 0;
  signal duty       : integer range 0 to PERIOD := 0;
  signal direction  : integer := 1;    -- 1=變亮, -1=變暗

  signal clk_count  : unsigned(23 downto 0) := (others => '0');
  -- 24-bit 分頻器，用來慢慢改變亮度

begin

  -------------------------------------------------------------------
  --(1) 分頻器：降低亮度更新速度（控制呼吸速度）
  -------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      clk_count <= clk_count + 1;

      -- 每 5,000,000 次 clock (≒ 0.1秒) 改變亮度
      if clk_count = 5000000 then
        clk_count <= (others => '0');

        -- 呼吸亮度修改
        duty <= duty + direction;

        -- 達到最亮 → 開始變暗
        if duty >= PERIOD then
          direction <= -1;
        end if;

        -- 達到最暗 → 開始變亮
        if duty <= 0 then
          direction <= 1;
        end if;
      end if;
    end if;
  end process;

  -------------------------------------------------------------------
  --(2) PWM Counter
  -------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      if pwm_count >= PERIOD - 1 then
        pwm_count <= 0;
      else
        pwm_count <= pwm_count + 1;
      end if;
    end if;
  end process;

  -------------------------------------------------------------------
  --(3) LED 輸出：PWM 比較
  -------------------------------------------------------------------
  led0 <= '1' when pwm_count < duty else '0';

end architecture;