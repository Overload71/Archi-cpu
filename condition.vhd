----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:03:16 04/11/2015 
-- Design Name: 
-- Module Name:    condition - Behavioral 
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

entity condition is
    Port ( op : in  STD_LOGIC_VECTOR(5 downto 0);
           regdst: out  STD_LOGIC;
			  alusrc: out  STD_LOGIC;
			  memtoreg: out  STD_LOGIC;
			  regwrite: out  STD_LOGIC;
			  memread: out  STD_LOGIC;
			  memwrite: out  STD_LOGIC;
			  branch: out  STD_LOGIC;
			  branchnot: out STD_LOGIC;
			  jump: out  STD_LOGIC;
			  aluop: out  STD_LOGIC_vector (1 downto 0)
			  );
end condition;

architecture Behavioral of condition is
signal Rformat : STD_LOGIC;
signal lw : STD_LOGIC;
signal sw : STD_LOGIC;
signal beq : STD_LOGIC;
signal ben : STD_LOGIC;
signal j : STD_LOGIC;

begin
Rformat <= not op(0) and not op(1) and not op(2) and not op(3) and not op(4) and not op(5);       --000000
lw      <= op(0)     and op(1)     and not op(2) and not op(3) and not op(4) and op(5);		     --100011
sw      <= op(0)     and op(1)     and not op(2) and op(3)     and not op(4) and op(5);			  --101011
beq     <= not op(0) and not op(1) and op(2)     and not op(3) and not op(4) and not op(5);		  --000100
ben     <= op(0)     and not op(1) and op(2)     and not op(3) and not op(4) and not op(5);		  --000101
j       <= not op(0) and op(1)     and not op(2) and not op(3) and not op(4) and not  op(5);		  --000010

regdst    <= Rformat;
alusrc    <= lw or sw;
memtoreg  <= lw;
regwrite  <= Rformat or lw;
memread   <= lw;
memwrite  <= sw;
branch    <= beq;
branchnot <= ben;
jump      <= j;
aluop(0)  <= beq or ben;
aluop(1)  <= Rformat;

end Behavioral;

