-- Company: Computer Engineering Department
-- Engineer: Rita Sule
-- 
-- Create Date:    16:21:08 01/27/2016 
-- Design Name: 	 multiplexer
-- Module Name:    muxgcd - Behavioral 
-- Project Name:   GCD processor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity muxgcd is
    Port ( a : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           b : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           sel : in  STD_LOGIC;
           outab : out  STD_LOGIC_VECTOR(15 DOWNTO 0));
end muxgcd;

architecture Behavioral of muxgcd is

begin

    outab <= a WHEN sel='0' ELSE
			b;
 
end Behavioral;