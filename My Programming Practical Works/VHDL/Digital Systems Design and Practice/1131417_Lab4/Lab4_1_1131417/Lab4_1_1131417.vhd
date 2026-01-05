LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity Lab4_1_1131417 is
    Port (
        CLK, RESET, Din : in  std_logic;
  Qout : out std_logic
    );
end Lab4_1_1131417;

architecture tem of Lab4_1_1131417 is
 type state_type is (S0, S1, S2, S3);
    signal state, next_state : state_type;
begin
    process(CLK, RESET)
    begin
        if RESET = '1' then
            state <= S0;
        elsif rising_edge(CLK) then
            state <= next_state;
        end if;
    end process;

    process(state, Din)
    begin
        case state is
            when S0 =>
                if Din = '0' then
                    next_state <= S0;
                else
                    next_state <= S2;
                end if;

            when S1 =>
                if Din = '0' then
                    next_state <= S0;
                else
                    next_state <= S2;
                end if;

            when S2 =>
                if Din = '0' then
                    next_state <= S2;
                else
                    next_state <= S3;
                end if;

            when S3 =>
                if Din = '0' then
                    next_state <= S3;
                else
                    next_state <= S1;
                end if;
        end case;
    end process;
   
    process(state)
    begin
        case state is
            when S0 => Qout <= '0';
            when S1 => Qout <= '1';
            when S2 => Qout <= '1';
            when S3 => Qout <= '0';
        end case;
    end process;

end tem;