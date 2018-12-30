-- Company:        Department of Computer Engineering
-- Engineer:       Rita Sule
-- 
-- Create Date:    13:07:30 01/28/2016 
-- Design Name:    d-flip flop
-- Module Name:    gcdpiporeg - Behavioral 
-- Project Name:   gcd processor
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gcdpiporeg is
    Port ( d : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  load : in STD_Logic;
           q : inout  STD_LOGIC_VECTOR(15 DOWNTO 0));
end gcdpiporeg;

architecture Behavioral of gcdpiporeg is
 
component gcddflipf is
    port( 
        d: in STD_LOGIC;
        clk: in STD_LOGIC;
        rst: in STD_LOGIC;
        load : in STD_LOGIC;
        q: inout STD_LOGIC
    );
end component;
begin

    d1:  gcddflipf port map (d(0), clk, rst, load, q(0));
    d2:  gcddflipf port map (d(1), clk, rst, load, q(1));
    d3:  gcddflipf port map (d(2), clk, rst, load, q(2));
    d4:  gcddflipf port map (d(3), clk, rst, load, q(3));
    d5:  gcddflipf port map (d(4), clk, rst, load, q(4));
    d6:  gcddflipf port map (d(5), clk, rst, load, q(5));
    d7:  gcddflipf port map (d(6), clk, rst, load, q(6));
    d8:  gcddflipf port map (d(7), clk, rst, load, q(7));
    d9:  gcddflipf port map (d(8), clk, rst, load, q(8));
    d10: gcddflipf port map (d(9), clk, rst, load, q(9));
    d11: gcddflipf port map (d(10), clk, rst,load, q(10));
    d12: gcddflipf port map (d(11), clk, rst,load, q(11));
    d13: gcddflipf port map (d(12), clk, rst,load, q(12));
    d14: gcddflipf port map (d(13), clk, rst,load, q(13));
    d15: gcddflipf port map (d(14), clk, rst,load, q(14));
    d16: gcddflipf port map (d(15), clk, rst,load, q(15));
   
end Behavioral;
