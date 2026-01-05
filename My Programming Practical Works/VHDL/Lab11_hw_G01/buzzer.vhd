library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity buzzer is
  port(
    clk        : in  std_logic;
    freq       : in  unsigned(15 downto 0); -- half-period count (in clk cycles)
    off_buzzer : in  std_logic;             -- '1' -> off, '0' -> on
    output     : out std_logic
  );
end entity;

architecture rtl of buzzer is
  signal cnt   : unsigned(31 downto 0) := (others => '0');
  signal out_s : std_logic := '0';
  signal target: unsigned(31 downto 0);
begin
  -- Extend freq to 32-bit target count
  target <= resize(freq, 32);

  process(clk)
  begin
    if rising_edge(clk) then
      if off_buzzer = '1' or freq = to_unsigned(0, freq'length) then
        cnt <= (others => '0');
        out_s <= '0';
      else
        if cnt >= target - 1 then
          cnt <= (others => '0');
          out_s <= not out_s;   -- toggle output every half-period
        else
          cnt <= cnt + 1;
        end if;
      end if;
    end if;
  end process;

  output <= out_s;
end architecture;