library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity servo_pwm is
    port (
        clk       : in  std_logic;               -- 50 MHz
        reset_n   : in  std_logic;               -- active low reset (optional)
        step_sel  : in  std_logic_vector(1 downto 0); -- speed selection (00 fastest, 11 slowest)
        servo_out : out std_logic
    );
end entity;

architecture rtl of servo_pwm is
    constant CLK_FREQ     : integer := 50000000; -- 50 MHz
    constant PERIOD_MS    : real := 20.0;        -- 20 ms period
    -- Period count = CLK_FREQ * PERIOD_MS/1000 = 50,000,000 * 0.02 = 1,000,000
    constant PERIOD_COUNT : integer := 1000000;

    constant PULSE_MIN_MS : real := 1.0;  -- 1.0 ms
    constant PULSE_MAX_MS : real := 2.0;  -- 2.0 ms
    constant PULSE_MIN    : integer := integer(PULSE_MIN_MS/1000.0 * real(CLK_FREQ)); -- 50,000
    constant PULSE_MAX    : integer := integer(PULSE_MAX_MS/1000.0 * real(CLK_FREQ)); -- 100,000

    signal period_cnt    : integer range 0 to PERIOD_COUNT := 0;
    signal pulse_width   : integer := (PULSE_MIN + PULSE_MAX) / 2; -- start at mid: 75,000
    signal dir_up        : std_logic := '1'; -- '1' means increasing pulse_width
    signal update_tick   : std_logic := '0';
    signal step_val      : integer := 50;

begin

    -- map step_sel to concrete step value
    process(step_sel)
    begin
        case step_sel is
            when "00" => step_val <= 500;  -- fastest
            when "01" => step_val <= 200;
            when "10" => step_val <= 50;
            when others => step_val <= 10; -- "11" slowest
        end case;
    end process;

    -- Period counter: produce update_tick at period end
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_n = '0' then
                period_cnt <= 0;
                update_tick <= '0';
            else
                if period_cnt = PERIOD_COUNT - 1 then
                    period_cnt <= 0;
                    update_tick <= '1';
                else
                    period_cnt <= period_cnt + 1;
                    update_tick <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Generate servo_out PWM: high while period_cnt < pulse_width
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_n = '0' then
                servo_out <= '0';
            else
                if period_cnt < pulse_width then
                    servo_out <= '1';
                else
                    servo_out <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Update pulse_width once per period (on update_tick)
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_n = '0' then
                pulse_width <= (PULSE_MIN + PULSE_MAX) / 2;
                dir_up <= '1';
            else
                if update_tick = '1' then
                    if dir_up = '1' then
                        -- try to increase
                        if pulse_width + step_val >= PULSE_MAX then
                            pulse_width <= PULSE_MAX;
                            dir_up <= '0'; -- reverse
                        else
                            pulse_width <= pulse_width + step_val;
                        end if;
                    else
                        -- decreasing
                        if pulse_width - step_val <= PULSE_MIN then
                            pulse_width <= PULSE_MIN;
                            dir_up <= '1';
                        else
                            pulse_width <= pulse_width - step_val;
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;

end architecture;