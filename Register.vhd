----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:16:06 04/02/2015 
-- Design Name: 
-- Module Name:    Register - Behavioral 
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
use work.MyPackage.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
port(
read_sel1 : in std_logic_vector(4 downto 0);
read_sel2 : in std_logic_vector(4 downto 0);
write_sel : in std_logic_vector(4 downto 0);
write_ena : in std_logic;
clk       : in std_logic;
write_data: in std_logic_vector(31 downto 0);
data1     : out std_logic_vector(31 downto 0);
data2     : out std_logic_vector(31 downto 0)
);
end RegisterFile;

architecture Behavioral of RegisterFile is
SIGNAL Tmp_choice: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg0: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg1: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg2: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg3: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg4: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg5: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg6: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg7: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg8: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg9: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg10: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg11: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg12: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg13: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg14: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg15: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg16: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg17: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg18: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg19: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg20: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg21: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg22: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg23: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg24: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg25: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg26: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg27: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg28: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg29: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg30: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Reg31: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Tmp_data1: std_logic_vector(31 downto 0);
SIGNAL Tmp_data2: std_logic_vector(31 downto 0);
signal tmp_load:  std_logic_vector(31 downto 0);
signal tmp1 :  std_logic_vector(31 downto 0);
signal tmp2 :  std_logic_vector(31 downto 0);

begin

selector: Reg_decoder PORT MAP (write_sel,Tmp_choice);

tmp_load(0)<= write_ena and Tmp_choice(0);
tmp_load(1)<= write_ena and Tmp_choice(1);
tmp_load(2)<= write_ena and Tmp_choice(2);
tmp_load(3)<= write_ena and Tmp_choice(3);
tmp_load(4)<= write_ena and Tmp_choice(4);
tmp_load(5)<= write_ena and Tmp_choice(5);
tmp_load(6)<= write_ena and Tmp_choice(6);
tmp_load(7)<= write_ena and Tmp_choice(7);
tmp_load(8)<= write_ena and Tmp_choice(8);
tmp_load(9)<= write_ena and Tmp_choice(9);
tmp_load(10)<= write_ena and Tmp_choice(10);
tmp_load(11)<= write_ena and Tmp_choice(11);
tmp_load(12)<= write_ena and Tmp_choice(12);
tmp_load(13)<= write_ena and Tmp_choice(13);
tmp_load(14)<= write_ena and Tmp_choice(14);
tmp_load(15)<= write_ena and Tmp_choice(15);
tmp_load(16)<= write_ena and Tmp_choice(16);
tmp_load(17)<= write_ena and Tmp_choice(17);
tmp_load(18)<= write_ena and Tmp_choice(18);
tmp_load(19)<= write_ena and Tmp_choice(19);
tmp_load(20)<= write_ena and Tmp_choice(20);
tmp_load(21)<= write_ena and Tmp_choice(21);
tmp_load(22)<= write_ena and Tmp_choice(22);
tmp_load(23)<= write_ena and Tmp_choice(23);
tmp_load(24)<= write_ena and Tmp_choice(24);
tmp_load(25)<= write_ena and Tmp_choice(25);
tmp_load(26)<= write_ena and Tmp_choice(26);
tmp_load(27)<= write_ena and Tmp_choice(27);
tmp_load(28)<= write_ena and Tmp_choice(28);
tmp_load(29)<= write_ena and Tmp_choice(29);
tmp_load(30)<= write_ena and Tmp_choice(30);
tmp_load(31)<= write_ena and Tmp_choice(31);


Regi0:  reg port map (write_data,clk,tmp_load(0), '0', '0' ,Reg0);
Regi1:  reg port map (write_data,clk,tmp_load(1), '0', '0' ,Reg1);
Regi2:  reg PORT MAP (write_data,clk,tmp_load(2), '0', '0' ,Reg2);
Regi3:  reg PORT MAP (write_data,clk,tmp_load(3), '0', '0' ,Reg3);
Regi4:  reg PORT MAP (write_data,clk,tmp_load(4), '0', '0' ,Reg4);
Regi5:  reg PORT MAP (write_data,clk,tmp_load(5), '0', '0' ,Reg5);
Regi6:  reg PORT MAP (write_data,clk,tmp_load(6), '0', '0' ,Reg6);
Regi7:  reg PORT MAP (write_data,clk,tmp_load(7), '0', '0' ,Reg7);
Regi8:  reg PORT MAP (write_data,clk,tmp_load(8), '0', '0' ,Reg8);
Regi9:  reg PORT MAP (write_data,clk,tmp_load(9), '0', '0',Reg9);
Regi10: reg PORT MAP (write_data,clk,tmp_load(10), '0', '0',Reg10);
Regi11: reg PORT MAP (write_data,clk,tmp_load(11), '0', '0',Reg11);
Regi12: reg PORT MAP (write_data,clk,tmp_load(12), '0', '0',Reg12);
Regi13: reg PORT MAP (write_data,clk,tmp_load(13), '0', '0',Reg13);
Regi14: reg PORT MAP (write_data,clk,tmp_load(14), '0', '0',Reg14);
Regi15: reg PORT MAP (write_data,clk,tmp_load(15), '0', '0',Reg15);
Regi16: reg PORT MAP (write_data,clk,tmp_load(16), '0', '0',Reg16);
Regi17: reg PORT MAP (write_data,clk,tmp_load(17), '0', '0',Reg17);
Regi18: reg PORT MAP (write_data,clk,tmp_load(18), '0', '0',Reg18);
Regi19: reg PORT MAP (write_data,clk,tmp_load(19), '0', '0',Reg19);
Regi20: reg PORT MAP (write_data,clk,tmp_load(20), '0', '0',Reg20);
Regi21: reg PORT MAP (write_data,clk,tmp_load(21), '0', '0',Reg21);
Regi22: reg PORT MAP (write_data,clk,tmp_load(22), '0', '0',Reg22);
Regi23: reg PORT MAP (write_data,clk,tmp_load(23), '0', '0',Reg23);
Regi24: reg PORT MAP (write_data,clk,tmp_load(24), '0', '0',Reg24);
Regi25: reg PORT MAP (write_data,clk,tmp_load(25), '0', '0',Reg25);
Regi26: reg PORT MAP (write_data,clk,tmp_load(26), '0', '0',Reg26);
Regi27: reg PORT MAP (write_data,clk,tmp_load(27), '0', '0',Reg27);
Regi28: reg PORT MAP (write_data,clk,tmp_load(28), '0', '0',Reg28);
Regi29: reg PORT MAP (write_data,clk,tmp_load(29), '0', '0',Reg29);
Regi30: reg PORT MAP (write_data,clk,tmp_load(30), '0', '0',Reg30);
Regi31: reg PORT MAP (write_data,clk,tmp_load(31), '0', '0',Reg31);

R1: Reg_Mux Port Map (read_sel1,Reg0,Reg1,Reg2,Reg3,Reg4,Reg5,Reg6,Reg7,Reg8,Reg9,Reg10,Reg11,Reg12,Reg13,Reg14,Reg15,Reg16,Reg17,Reg18,Reg19,Reg20,Reg21,Reg22,Reg23,Reg24,Reg25,Reg26,Reg27,Reg28,Reg29,Reg30,Reg31,Tmp_data1);
R2: Reg_Mux Port Map (read_sel2,Reg0,Reg1,Reg2,Reg3,Reg4,Reg5,Reg6,Reg7,Reg8,Reg9,Reg10,Reg11,Reg12,Reg13,Reg14,Reg15,Reg16,Reg17,Reg18,Reg19,Reg20,Reg21,Reg22,Reg23,Reg24,Reg25,Reg26,Reg27,Reg28,Reg29,Reg30,Reg31,Tmp_data2);

data1<=Tmp_data1;
data2<=Tmp_data2;

end Behavioral;

