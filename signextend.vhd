----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:03:20 04/25/2015 
-- Design Name: 
-- Module Name:    signextend - Behavioral 
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

entity signextend is
port(
		temp: in std_logic_vector (15 downto 0);
		res: out std_logic_vector (31 downto 0)
);
end signextend;

architecture Behavioral of signextend is
signal tem : std_logic_vector (15 downto 0);
begin
tem<= (others=>temp(15));
res<= tem&temp;
end Behavioral;

