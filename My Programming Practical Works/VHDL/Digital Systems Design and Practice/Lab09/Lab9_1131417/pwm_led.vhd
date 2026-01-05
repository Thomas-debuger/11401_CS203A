library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pwm_led is
  port (
    clk   : in  std_logic;                -- 系統時鐘（DE0 板上的 clock）
    sw_en : in  std_logic;                -- SW[0]
    sw_d  : in  unsigned(2 downto 0);     -- SW[1:3]
    led0  : out std_logic                 -- LED[0]
  );
end entity;

architecture rtl of pwm_led is
  constant PERIOD : integer := 10;
  signal pwm_count : integer range 0 to PERIOD := 0;
  signal threshold : integer range 0 to PERIOD := 0;
begin

  process(sw_d)
  begin
    threshold <= (to_integer(sw_d) * PERIOD) / 7;
  end process;

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

  led0 <= '1' when (sw_en = '1' and pwm_count < threshold) else '0';

end architecture;