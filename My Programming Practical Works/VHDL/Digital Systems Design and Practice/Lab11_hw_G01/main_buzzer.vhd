library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity main_buzzer is
  port(
    clk    : in  std_logic;                 -- 50 MHz
    btn    : in  std_logic_vector(0 to 2);  -- pushbuttons (pressed -> '0')
    led    : out std_logic_vector(0 to 2);  -- optional mirror
    output : out std_logic                  -- buzzer output (連到蜂鳴器模組)
  );
end entity;

architecture behave of main_buzzer is

  -- Precomputed half-period counts (25_000_000 / freq_hz)
  constant HALF_DO  : unsigned(15 downto 0) := to_unsigned(11057, 16); -- 2261 Hz
  constant HALF_RE  : unsigned(15 downto 0) := to_unsigned(10902, 16); -- 2293 Hz
  constant HALF_MI  : unsigned(15 downto 0) := to_unsigned(10734, 16); -- 2329 Hz
  constant HALF_FA  : unsigned(15 downto 0) := to_unsigned(10642, 16); -- 2349 Hz
  constant HALF_SO  : unsigned(15 downto 0) := to_unsigned(10451, 16); -- 2392 Hz
  constant HALF_LA  : unsigned(15 downto 0) := to_unsigned(10245, 16); -- 2440 Hz
  constant HALF_SI  : unsigned(15 downto 0) := to_unsigned(9908,  16); -- 2523 Hz

  signal btn_inv   : std_logic_vector(0 to 2);
  signal idx       : integer range 0 to 7 := 0;
  signal freq_out  : unsigned(15 downto 0) := (others => '0');
  signal off_buzz  : std_logic := '1';

begin

  -- Mirror buttons to LEDs (optional)
  led <= btn; -- 若要把按鈕狀態顯示在 LED（投影片提到可輸出 btn）

  -- invert buttons (pressed -> '1')
  process(btn)
  begin
    for i in btn'range loop
      if btn(i) = '0' then
        btn_inv(i) <= '1';
      else
        btn_inv(i) <= '0';
      end if;
    end loop;
    idx <= to_integer(unsigned(btn_inv(0 to 2))); -- convert to integer 0..7
  end process;

  -- map index to freq (half-period count)
  process(idx)
  begin
    off_buzz <= '1';
    freq_out <= (others => '0');
    case idx is
      when 0 =>
        -- 000 -> no sound
        off_buzz <= '1';
      when 1 =>
        freq_out <= HALF_DO;
        off_buzz <= '0';
      when 2 =>
        freq_out <= HALF_RE;
        off_buzz <= '0';
      when 3 =>
        freq_out <= HALF_MI;
        off_buzz <= '0';
      when 4 =>
        freq_out <= HALF_FA;
        off_buzz <= '0';
      when 5 =>
        freq_out <= HALF_SO;
        off_buzz <= '0';
      when 6 =>
        freq_out <= HALF_LA;
        off_buzz <= '0';
      when 7 =>
        freq_out <= HALF_SI;
        off_buzz <= '0';
      when others =>
        off_buzz <= '1';
    end case;
  end process;

  -- instantiate buzzer
  buz_inst : entity work.buzzer(rtl)
    port map (
      clk => clk,
      freq => freq_out,
      off_buzzer => off_buzz,
      output => output
    );

end architecture;