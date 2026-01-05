library IEEE;
use IEEE.std_logic_1164.all;

entity Lab4_2_1131417 is
    port(
        clk   : in  std_logic;
        rst   : in  std_logic;
        str_in   : in  std_logic;
        match  : out std_logic;
        str_out: out std_logic_vector(2 downto 0)
    );
end Lab4_2_1131417;

architecture arch of Lab4_2_1131417 is

    signal state, next_state : std_logic_vector(1 downto 0);
    signal shift_reg        : std_logic_vector(2 downto 0); -- 3-bit shift register

    constant S0 : std_logic_vector(1 downto 0) := "00";
    constant S1 : std_logic_vector(1 downto 0) := "01";
    constant S2 : std_logic_vector(1 downto 0) := "10";
    constant S3 : std_logic_vector(1 downto 0) := "11";

begin
    -- Process to update state and shift register on clock
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state <= S0;
                shift_reg <= "000";  -- Reset shift register to 000
            else
                state <= next_state;
                -- Shift the register and push in the new str_in value
                shift_reg <= shift_reg(1 downto 0) & str_in;
            end if;
        end if;
    end process;

    -- Process to determine next state and match logic
    process(state, str_in)
    begin
        case state is
            when S0 =>
                match <= '0'; -- No match yet
                if str_in = '1' then
                    next_state <= S1;  -- Move to state S1 if we get '1'
                else
                    next_state <= S0;  -- Stay in state S0 if we get '0'
                end if;

            when S1 =>
                match <= '0'; -- No match yet
                if str_in = '1' then
                    next_state <= S2;  -- Move to state S2 if we get another '1'
                else
                    next_state <= S0;  -- Reset to state S0 if we get '0'
                end if;

            when S2 =>
                match <= '0'; -- Default match is 0
                if str_in = '1' then
                    next_state <= S2;  -- Stay in state S2 if we get '1'
                else
                    next_state <= S3;  -- If we get '0', move to state S3
                end if;

            when S3 =>
                -- Match the sequence "110"
                if shift_reg = "110" then
                    match <= '1';  -- Match found
                else
                    match <= '0';  -- No match
                end if;

                if str_in = '1' then
                    next_state <= S1;  -- If we get '1', go to state S1
                else
                    next_state <= S0;  -- If we get '0', reset to state S0
                end if;

            when others =>
                match <= '0';  -- Default case
                next_state <= S0;  -- Reset to state S0
        end case;
    end process;

    -- Output str_out as the shift register value (last 3 bits of input)
    str_out <= shift_reg;

end arch;
