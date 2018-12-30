-- Module Name:    controlgcd - Behavioral 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity gcdctrl is
    port (inp_valid, reset, equal, greater,lessthan, clk: in std_logic;
        sela, selb, selcd, enable1, enable2, ready: out std_logic);
end gcdctrl;

architecture Behavioral of gcdctrl is

type states is (start, nop, read_input, compare, greater1, greater2,equals);
signal current_state, next_state: states;
begin
    --new state:
    process (clk, reset)
    begin
        if (reset = '1') then
            current_state <= start;
        elsif (clk'event and clk='1') then
            current_state <= next_state;
        end if;
    end process;

    process (equal,greater,lessthan,inp_valid,current_state)
    begin
        case current_state is

            when start =>
                if (inp_valid = '0') then
                    next_state <= start;
                else
                    next_state <= nop;
                end if;

            when nop =>
                sela <= '0';
                selb <= '0';
                selcd <= '0';
                enable1 <= '0';
                enable2 <= '0';
                ready <= '0';
                next_state <= read_input;

            when read_input =>
                sela <= '0';
                selb <= '0';
                selcd <= '0';
                enable1 <= '1';
                enable2 <= '1';
                ready <= '0';
                next_state <= compare;

            when compare =>
                if (greater = '1') then
                    next_state <= greater1;
                elsif (lessthan = '1') then
                    next_state <= greater2;
                else -- (equal = '1') then
                    next_state <= equals;
                end if;

            when greater1 =>
                sela <= '1';
                selb <= '0';
                selcd <= '0';
                enable1 <= '1';
                enable2 <= '0';
                ready <= '0';
                next_state <= compare ;


            when greater2 =>
                sela <= '0';
                selb <= '1';
                selcd <= '1';
                enable1 <= '0';
                enable2 <= '1';
                ready <= '0';
                next_state <= compare;

            when equals =>
                sela <= '1';
                selb <= '1';
                selcd <= '1';
                enable1 <= '1';
                enable2 <= '1';
                ready <= '1';
                next_state <= read_input;

            when others =>
                next_state <= read_input;
        end case;
    end process;

end Behavioral;
