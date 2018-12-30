-- Company: Department of Computer Engineering
-- Engineer: Rita Sule
-- 
-- Create Date:    16:53:15 01/27/2016 
-- Design Name:    subtractor
-- Module Name:    subtractor - Behavioral 
-- Project Name:   gcd processor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity subtractor is
Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
		 b : in STD_LOGIC_VECTOR (15 downto 0);
       D : out STD_LOGIC_VECTOR (15 downto 0);
    Bout : out STD_LOGIC);
end subtractor;

architecture Behavioral of subtractor is

signal borrow: STD_LOGIC_VECTOR(15 downto 0):= "0000000000000000";
signal Bin : STD_LOGIC := '0';
begin
    --first full subtractor
    D(0) <= ((not(a(0))) and (not(b(0))) and Bin) or (not(a(0)) and b(0) and (not(Bin))) or (a(0) and (not(b(0))) and (not(Bin))) or (a(0) and b(0) and Bin); --difference calculation
    --borrow calculation
    borrow(0) <= (not(a(0)) and b(0)); 

    x0: FOR i IN 1 TO 15 GENERATE
    D(i) <= ((not(a(i))) and (not(b(i))) and borrow(i-1)) or (not(a(i)) and b(i) and (not(borrow(i-1)))) or (a(i) and (not(b(i))) and (not(borrow(i-1)))) or (a(i) and b(i) and borrow(i-1));
    --borrow calculation --carry calculation
    borrow(i) <= (not(a(i)) and b(i)) or (not(a(i)) and borrow(i-1)) or (b(i) and borrow(i-1)); 
    END GENERATE;
    Bout <= borrow(15);
end Behavioral;
