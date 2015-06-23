----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:22:57 04/02/2015 
-- Design Name: 
-- Module Name:    Reg_decoder - Behavioral 
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

entity Reg_decoder is
PORT (
	I: IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
	O: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	
end Reg_decoder;

architecture Behavioral of Reg_decoder is

begin
				O <=  "00000000000000000000000000000001" When I = "00000" else
						"00000000000000000000000000000010" When I = "00001" else
						"00000000000000000000000000000100" When I = "00010" else
						"00000000000000000000000000001000" When I = "00011" else
						"00000000000000000000000000010000" When I = "00100" else
						"00000000000000000000000000100000" When I = "00101" else
						"00000000000000000000000001000000" When I = "00110" else
						"00000000000000000000000010000000" When I = "00111" else
						"00000000000000000000000100000000" When I = "01000" else
						"00000000000000000000001000000000" When I = "01001" else
						"00000000000000000000010000000000" When I = "01010" else
						"00000000000000000000100000000000" When I = "01011" else
						"00000000000000000001000000000000" When I = "01100" else
						"00000000000000000010000000000000" When I = "01101" else
						"00000000000000000100000000000000" When I = "01110" else
						"00000000000000001000000000000000" When I = "01111" else
						"00000000000000010000000000000000" When I = "10000" else
						"00000000000000100000000000000000" When I = "10001" else
						"00000000000001000000000000000000" When I = "10010" else
						"00000000000010000000000000000000" When I = "10011" else
						"00000000000100000000000000000000" When I = "10100" else
						"00000000001000000000000000000000" When I = "10101" else
						"00000000010000000000000000000000" When I = "10110" else
						"00000000100000000000000000000000" When I = "10111" else
						"00000001000000000000000000000000" When I = "11000" else
						"00000010000000000000000000000000" When I = "11001" else
						"00000100000000000000000000000000" When I = "11010" else
						"00001000000000000000000000000000" When I = "11011" else
						"00010000000000000000000000000000" When I = "11100" else
						"00100000000000000000000000000000" When I = "11101" else
						"01000000000000000000000000000000" When I = "11110" else
						"10000000000000000000000000000000" When I = "11111" else
						"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

end Behavioral;

