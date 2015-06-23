----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:19:07 04/06/2015 
-- Design Name: 
-- Module Name:    Mux - Behavioral 
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

entity Mux is
     Port ( Add_Sub : in  STD_LOGIC;
           Or_res : in  STD_LOGIC;
           And_res : in  STD_LOGIC;
			  Slt_res :in std_logic;
           Output : out  STD_LOGIC;
           Selectors : in  STD_LOGIC_VECTOR (1 downto 0));
end Mux;

architecture Behavioral of Mux is

begin
	Output <= And_res when Selectors="00" else 
				Or_res when Selectors="01" else 
				Add_Sub when Selectors="10" else
				Slt_res when Selectors="11";

end Behavioral;

