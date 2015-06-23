----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:59:20 04/11/2015 
-- Design Name: 
-- Module Name:    translation_circuit - Behavioral 
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

entity translation_circuit is
port( funct  : in std_logic_vector(5 downto 0) ;
	   aluop  : in std_logic_vector(1 downto 0);
	   opcode : out std_logic_vector(3 downto 0)
		);
end translation_circuit;

architecture Behavioral of translation_circuit is
signal opcode3:std_logic;
signal temp : std_logic_vector (3 downto 0);
begin
temp(0)<= funct(0) and funct(1);
temp(1)<= funct(1) and aluop(1);
temp(2)<= funct(0) or  funct(3);
temp(3)<= temp (2) and aluop(1);
--op3
opcode3<= temp(0) and aluop(1);
opcode(3)<= opcode3;
--op2
opcode(2)<= temp(1) or aluop(0);
--op1
opcode(1)<= not(funct(2)) or not(aluop(1));
--op0
opcode(0)<= temp(3) and not(opcode3); 
end Behavioral;

