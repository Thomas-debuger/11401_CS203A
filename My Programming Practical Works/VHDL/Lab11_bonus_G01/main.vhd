library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity main is
    port(
        clk50 : in  std_logic;
        SW    : in  std_logic_vector(0 to 1); -- SW(0..1)
        output: out std_logic
    );
end entity;

architecture arch of main is
    signal reset_n : std_logic := '1';
begin

    servo_inst : entity work.servo_pwm
        port map (
            clk       => clk50,
            reset_n   => reset_n,
            step_sel  => SW,       -- 2-bit speed select
            servo_out => output
        );

end architecture;