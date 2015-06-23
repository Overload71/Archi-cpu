----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:11 04/02/2015 
-- Design Name: 
-- Module Name:    Reg_Mux - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reg_Mux is
port(
			s  : in std_logic_vector(4 downto 0);
			r0 : in std_logic_vector(31 downto 0);
			r1 : in std_logic_vector(31 downto 0);
			r2 : in std_logic_vector(31 downto 0);
			r3 : in std_logic_vector(31 downto 0);
			r4 : in std_logic_vector(31 downto 0);
			r5 : in std_logic_vector(31 downto 0);
			r6 : in std_logic_vector(31 downto 0);
			r7 : in std_logic_vector(31 downto 0);
			r8 : in std_logic_vector(31 downto 0);
			r9 : in std_logic_vector(31 downto 0);
			r10 : in std_logic_vector(31 downto 0);
			r11 : in std_logic_vector(31 downto 0);
			r12 : in std_logic_vector(31 downto 0);
			r13 : in std_logic_vector(31 downto 0);
			r14 : in std_logic_vector(31 downto 0);
			r15 : in std_logic_vector(31 downto 0);
			r16 : in std_logic_vector(31 downto 0);
			r17 : in std_logic_vector(31 downto 0);
			r18 : in std_logic_vector(31 downto 0);
			r19 : in std_logic_vector(31 downto 0);
			r20 : in std_logic_vector(31 downto 0);
			r21 : in std_logic_vector(31 downto 0);
			r22 : in std_logic_vector(31 downto 0);
			r23 : in std_logic_vector(31 downto 0);
			r24 : in std_logic_vector(31 downto 0);
			r25 : in std_logic_vector(31 downto 0);
			r26 : in std_logic_vector(31 downto 0);
			r27 : in std_logic_vector(31 downto 0);
			r28 : in std_logic_vector(31 downto 0);
			r29 : in std_logic_vector(31 downto 0);
			r30 : in std_logic_vector(31 downto 0);
			r31 : in std_logic_vector(31 downto 0);
			o   : out std_logic_vector(31 downto 0)
		);
end Reg_Mux;

architecture Behavioral of Reg_Mux is

begin
 o <=
		r0  when s="00000" else
		r1  when s="00001" else
		r2  when s="00010" else
		r3  when s="00011" else
		r4  when s="00100" else
		r5  when s="00101" else
		r6  when s="00110" else
		r7  when s="00111" else
		r8  when s="01000" else
		r9  when s="01001" else
		r10 when s="01010" else
		r11 when s="01011" else
		r12 when s="01100" else
		r13 when s="01101" else
		r14 when s="01110" else
		r15 when s="01111" else
		r16 when s="10000" else
		r17 when s="10001" else
		r18 when s="10010" else
		r19 when s="10011" else
		r20 when s="10100" else
		r21 when s="10101" else
		r22 when s="10110" else
		r23 when s="10111" else
		r24 when s="11000" else
		r25 when s="11001" else
		r26 when s="11010" else
		r27 when s="11011" else
		r28 when s="11100" else
		r29 when s="11101" else
		r30 when s="11110" else
		r31 when s="11111";

end Behavioral;

