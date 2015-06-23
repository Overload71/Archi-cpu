----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:35 04/25/2015 
-- Design Name: 
-- Module Name:    mux2x1 - Behavioral 
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

entity mux2x1 is
Generic(N : natural);
port(
		s  : in std_logic;
		i0 : in std_logic_vector(N -1 downto 0);
		i1 : in std_logic_vector(N -1 downto 0);
		res: out std_logic_vector(N -1 downto 0)
			
);
end mux2x1;

architecture Behavioral of mux2x1 is

begin
res<= i0 when s='0' else
		i1 when s='1';

end Behavioral;

