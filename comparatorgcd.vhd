-- Company: Department of Computer Engineering
-- Engineer: Rita Sule
-- 
-- Create Date:    17:06:46 01/27/2016 
-- Design Name: 	 comparator
-- Module Name:    comparatorgcd - Behavioral 
-- Project Name: 	 gcd processor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity comparatorgcd is
    Port ( a : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           b : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           x : out  STD_LOGIC;
           y : out  STD_LOGIC;
           z : out  STD_LOGIC);
end comparatorgcd;

architecture Behavioral of comparatorgcd is
signal x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15 : STD_LOGIC;
begin
    x0 <= a(0) xnor b(0); 
    x1 <= a(1) xnor b(1);
    x2 <= a(2) xnor b(2);
    x3 <= a(3) xnor b(3);
    x4 <= a(4) xnor b(4);
    x5 <= a(5) xnor b(5);
    x6 <= a(6) xnor b(6);
    x7 <= a(7) xnor b(7);
    x8 <= a(8) xnor b(8);
    x9 <= a(9) xnor b(9);
    x10 <= a(10) xnor b(10);
    x11 <= a(11) xnor b(11);
    x12 <= a(12) xnor b(12);
    x13 <= a(13) xnor b(13);
    x14 <= a(14) xnor b(14);
    x15 <= a(15) xnor b(15); 

    x <= (x0 and x1 and x2 and x3 and x4 and x5 and x6 and x7 and x8 and x9 and x10 and x11 and x12 and x13 and x14 and x15);
    y <= ((a(15) and (not b(15))) or (x15 and a(14) and (not b(14))) or (x15 and x14 and a(13) and (not b(13))) or 
    (x15 and x14 and x13 and a(12) and (not b(12))) or (x15 and x14 and x13 and x12 and a(11) and (not b(11))) or
    (x15 and x14 and x13 and x12 and x11 and a(10) and (not b(10))) or (x15 and x14 and x13 and x12 and x11 and x10 and a(9) and (not b(9))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and a(8) and (not b(8))) or (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and a(7) and (not b(7))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and x7 and a(6) and (not b(6))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and x7 and x6 and a(5) and (not b(5))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and x7 and x6 and x5 and a(4) and (not b(4))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and x7 and x6 and x5 and x4 and a(3) and (not b(3))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and x7 and x6 and x5 and x4 and x3 and a(2) and (not b(2))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and x7 and x6 and x5 and x4 and x3 and x2 and a(1) and (not b(1))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and x7 and x6 and x5 and x4 and x3 and x2 and x1 and a(0) and (not b(0))) );
    z <=  ((b(15) and (not a(15))) or (x15 and b(14) and (not a(14))) or (x15 and x14 and b(13) and (not a(13))) or 
    (x15 and x14 and x13 and b(12) and (not a(12))) or (x15 and x14 and x13 and x12 and b(11) and (not a(11))) or
    (x15 and x14 and x13 and x12 and x11 and b(10) and (not a(10))) or (x15 and x14 and x13 and x12 and x11 and x10 and b(9) and (not a(9))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and b(8) and (not a(8))) or (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and b(7) and (not a(7))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and x7 and b(6) and (not a(6))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and x7 and x6 and b(5) and (not a(5))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and x7 and x6 and x5 and b(4) and (not a(4))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and x7 and x6 and x5 and x4 and b(3) and (not a(3))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and x7 and x6 and x5 and x4 and x3 and b(2) and (not a(2))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and x7 and x6 and x5 and x4 and x3 and x2 and b(1) and (not a(1))) or
    (x15 and x14 and x13 and x12 and x11 and x10 and x9 and x8 and x7 and x6 and x5 and x4 and x3 and x2 and x1 and b(0) and (not a(0))) ) ;           
end Behavioral;

