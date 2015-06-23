----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:11:09 04/11/2015 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.MainPackage.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainModule is
PORT(
         START : IN  std_logic;
         CLK : IN  std_logic;
         RegFileOut1 : OUT  std_logic_vector(31 downto 0);
         RegFileOut2 : OUT  std_logic_vector(31 downto 0);
         ALUOut : OUT  std_logic_vector(31 downto 0);
         PCOut : OUT  std_logic_vector(31 downto 0);
         DataMemOut : OUT  std_logic_vector(31 downto 0)
        );
end MainModule;

architecture Behavioral of MainModule is
signal temp_dontcare : std_logic_vector (27 downto 0);
signal tmp2: STD_LOGIC_VECTOR(31 downto 0);
signal tmp3: STD_LOGIC_VECTOR(31 downto 0);
signal data: STD_LOGIC_VECTOR(31 downto 0);
signal temp_write: STD_LOGIC_VECTOR(31 downto 0);
signal tmp_data1: STD_LOGIC_VECTOR(31 downto 0);
signal tmp_data2: STD_LOGIC_VECTOR(31 downto 0);
--signal temp_write_en: STD_LOGIC;
signal tmp_aluop: STD_LOGIC_VECTOR(3 downto 0);
signal tmp_notstart: std_logic;
signal tmp_carry:std_logic;
signal tmp_zero: std_logic;
signal tmp_overflow: std_logic;

--control
signal regdst: STD_LOGIC;
signal alusrc: STD_LOGIC;
signal memtoreg: STD_LOGIC;
signal regwrite: STD_LOGIC;
signal memread: STD_LOGIC;
signal memwrite: STD_LOGIC;
signal branch: STD_LOGIC;
signal branchnot: STD_LOGIC;
signal jump: STD_LOGIC;
signal aluop: STD_LOGIC_vector (1 downto 0);
--reg
signal ins: std_logic_vector (4 downto 0);
--sign extend
signal extend:  std_logic_vector (31 downto 0);
--aluinput
signal aluinput: std_logic_vector (31 downto 0);
--memoutput
signal memoutput: std_logic_vector (31 downto 0);
--writedata
signal temp_write_data1: std_logic_vector (31 downto 0);
--extend left
signal extendleft:  std_logic_vector (31 downto 0);
--alupc
signal alupc:  std_logic_vector (31 downto 0);
--branch
signal branchandzero: std_logic;
--branch not equal
signal branchnotandnotzero: std_logic;
--branch or branch not equal
signal usingbranch : std_logic;
--msh3arf akteb comment 3shan afhmo bs hwa el tal3 mn el mux el fo2 lel mux tany
signal mux2: std_logic_vector (31 downto 0);
--signal for jump
signal temp_jump: std_logic_vector (31 downto 0);
--input pc
signal pcinput: std_logic_vector (31 downto 0); -- gay menin ?
--input zeroflag not
signal zeroflagnot: std_logic;
begin

tmp_notstart<=not START;
PCReg: Pc port map(pcinput,CLK,START,'0',tmp_notstart,tmp2);
adding: adder port map(tmp2,"00000000000000000000000000000100",tmp3);

Meme: INSTRMEMORY port map(tmp_notstart,data,tmp2,CLK);

con: condition port map(data (31 downto 26),regdst,alusrc,memtoreg,regwrite,memread,memwrite,branch,branchnot,jump,aluop);



extend1:signextend port map(data(15 downto 0),extend);

temp_jump<=tmp3(31 downto 28)&data(25 downto 0)&"00";  -- leh  ?????????????

REGISTERs: RegisterFile port map( data (25 downto 21),data (20 downto 16),ins,regwrite,CLK,temp_write_data1,tmp_data1,tmp_data2);

extendleft<=extend(29 downto 0) &"00";
adding2: adder port map (tmp3,extendleft,alupc);
--alupc<=extendleft+tmp3;
--ALUsum : ALU port map( extendleft,tmp3,"0010", '0',alupc,temp_dontcare(0),temp_dontcare(1),temp_dontcare(2));



trans: translation_circuit port map( data (5 downto 0),aluop,tmp_aluop);

ALU32 : ALU port map( tmp_data1,aluinput,tmp_aluop, tmp_aluop(2),temp_write,tmp_carry,tmp_zero,tmp_overflow); -- anhy 7ata fe al Design
zeroflagnot<=not (tmp_zero);

branchandzero<= tmp_zero and branch;

branchnotandnotzero <= branchnot and zeroflagnot;

usingbranch<= branchandzero or branchnotandnotzero;
mem: DATAMEMORY port map(tmp_notstart,tmp_data2,memoutput,memread,memwrite,temp_write,CLK);

readorwrite  :  mux2x1 generic map(5 ) port map(regdst     ,data (20 downto 16),data (15 downto 11),ins);
data2orextend:  mux2x1 generic map(32) port map(alusrc     ,tmp_data2          ,extend             ,aluinput);
pcoralupc    :  mux2x1 generic map(32) port map(usingbranch,tmp3               ,alupc              ,mux2);
jumpormux2   :  mux2x1 generic map(32) port map(jump       ,mux2               ,temp_jump          ,pcinput);
readoralu    :  mux2x1 generic map(32) port map(memtoreg   ,temp_write         ,memoutput          ,temp_write_data1);

PCOut <=tmp2;
RegFileOut1<=tmp_data1;
RegFileOut2<=tmp_data2;
ALUOut<=temp_write;
DataMemOut<=memoutput;

end Behavioral;