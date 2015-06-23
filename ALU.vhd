----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:23:18 04/06/2015 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use work.MyPackage1.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
	port(
	data1 : in std_logic_vector(31 downto 0) ;
	data2 : in std_logic_vector(31 downto 0) ;
	aluop : in std_logic_vector(3 downto 0) ;
	cin   : in std_logic ;
	dataout: out std_logic_vector(31 downto 0) ;
	cflag: out std_logic ;
	zflag: out std_logic ;
	oflag: out std_logic 
	);
end ALU;

architecture Behavioral of ALU is

signal tmp_carry : std_logic_vector (31 Downto 0);
signal tmp_out : std_logic_vector (31 Downto 0);
signal tmp_dontcare: std_logic_vector (31 Downto 0);
signal set: std_logic;

begin
calloneBit0 : OneBitALU  port map (data1(0),data2(0),set,cin,aluop(3 Downto 0),tmp_dontcare(0),tmp_out(0),tmp_carry(0));
calloneBit1 : OneBitALU  port map (data1(1),data2(1),'0',tmp_carry(0),aluop(3 Downto 0),tmp_dontcare(1),tmp_out(1),tmp_carry(1));
calloneBit2 : OneBitALU  port map (data1(2),data2(2),'0',tmp_carry(1),aluop(3 Downto 0),tmp_dontcare(2),tmp_out(2),tmp_carry(2));
calloneBit3 : OneBitALU  port map (data1(3),data2(3),'0',tmp_carry(2),aluop(3 Downto 0),tmp_dontcare(3),tmp_out(3),tmp_carry(3));
calloneBit4 : OneBitALU  port map (data1(4),data2(4),'0',tmp_carry(3),aluop(3 Downto 0),tmp_dontcare(4),tmp_out(4),tmp_carry(4));
calloneBit5 : OneBitALU  port map (data1(5),data2(5),'0',tmp_carry(4),aluop(3 Downto 0),tmp_dontcare(5),tmp_out(5),tmp_carry(5));
calloneBit6 : OneBitALU  port map (data1(6),data2(6),'0',tmp_carry(5),aluop(3 Downto 0),tmp_dontcare(6),tmp_out(6),tmp_carry(6));
calloneBit7 : OneBitALU  port map (data1(7),data2(7),'0',tmp_carry(6),aluop(3 Downto 0),tmp_dontcare(7),tmp_out(7),tmp_carry(7));
calloneBit8 : OneBitALU  port map (data1(8),data2(8),'0',tmp_carry(7),aluop(3 Downto 0),tmp_dontcare(8),tmp_out(8),tmp_carry(8));
calloneBit9 : OneBitALU  port map (data1(9),data2(9),'0',tmp_carry(8),aluop(3 Downto 0),tmp_dontcare(9),tmp_out(9),tmp_carry(9));

calloneBit10 : OneBitALU  port map (data1(10),data2(10),'0',tmp_carry(9) ,aluop(3 Downto 0),tmp_dontcare(10),tmp_out(10),tmp_carry(10));
calloneBit11 : OneBitALU  port map (data1(11),data2(11),'0',tmp_carry(10),aluop(3 Downto 0),tmp_dontcare(11),tmp_out(11),tmp_carry(11));
calloneBit12 : OneBitALU  port map (data1(12),data2(12),'0',tmp_carry(11),aluop(3 Downto 0),tmp_dontcare(12),tmp_out(12),tmp_carry(12));
calloneBit13 : OneBitALU  port map (data1(13),data2(13),'0',tmp_carry(12),aluop(3 Downto 0),tmp_dontcare(13),tmp_out(13),tmp_carry(13));
calloneBit14 : OneBitALU  port map (data1(14),data2(14),'0',tmp_carry(13),aluop(3 Downto 0),tmp_dontcare(14),tmp_out(14),tmp_carry(14));
calloneBit15 : OneBitALU  port map (data1(15),data2(15),'0',tmp_carry(14),aluop(3 Downto 0),tmp_dontcare(15),tmp_out(15),tmp_carry(15));
calloneBit16 : OneBitALU  port map (data1(16),data2(16),'0',tmp_carry(15),aluop(3 Downto 0),tmp_dontcare(16),tmp_out(16),tmp_carry(16));
calloneBit17 : OneBitALU  port map (data1(17),data2(17),'0',tmp_carry(16),aluop(3 Downto 0),tmp_dontcare(17),tmp_out(17),tmp_carry(17));
calloneBit18 : OneBitALU  port map (data1(18),data2(18),'0',tmp_carry(17),aluop(3 Downto 0),tmp_dontcare(18),tmp_out(18),tmp_carry(18));
calloneBit19 : OneBitALU  port map (data1(19),data2(19),'0',tmp_carry(18),aluop(3 Downto 0),tmp_dontcare(19),tmp_out(19),tmp_carry(19));

calloneBit20 : OneBitALU  port map (data1(20),data2(20),'0',tmp_carry(19),aluop(3 Downto 0),tmp_dontcare(20),tmp_out(20),tmp_carry(20));
calloneBit21 : OneBitALU  port map (data1(21),data2(21),'0',tmp_carry(20),aluop(3 Downto 0),tmp_dontcare(21),tmp_out(21),tmp_carry(21));
calloneBit22 : OneBitALU  port map (data1(22),data2(22),'0',tmp_carry(21),aluop(3 Downto 0),tmp_dontcare(22),tmp_out(22),tmp_carry(22));
calloneBit23 : OneBitALU  port map (data1(23),data2(23),'0',tmp_carry(22),aluop(3 Downto 0),tmp_dontcare(23),tmp_out(23),tmp_carry(23));
calloneBit24 : OneBitALU  port map (data1(24),data2(24),'0',tmp_carry(23),aluop(3 Downto 0),tmp_dontcare(24),tmp_out(24),tmp_carry(24));
calloneBit25 : OneBitALU  port map (data1(25),data2(25),'0',tmp_carry(24),aluop(3 Downto 0),tmp_dontcare(25),tmp_out(25),tmp_carry(25));
calloneBit26 : OneBitALU  port map (data1(26),data2(26),'0',tmp_carry(25),aluop(3 Downto 0),tmp_dontcare(26),tmp_out(26),tmp_carry(26));
calloneBit27 : OneBitALU  port map (data1(27),data2(27),'0',tmp_carry(26),aluop(3 Downto 0),tmp_dontcare(27),tmp_out(27),tmp_carry(27));
calloneBit28 : OneBitALU  port map (data1(28),data2(28),'0',tmp_carry(27),aluop(3 Downto 0),tmp_dontcare(28),tmp_out(28),tmp_carry(28));
calloneBit29 : OneBitALU  port map (data1(29),data2(29),'0',tmp_carry(28),aluop(3 Downto 0),tmp_dontcare(29),tmp_out(29),tmp_carry(29));

calloneBit30 : OneBitALU  port map (data1(30),data2(30),'0',tmp_carry(29),aluop(3 Downto 0),tmp_dontcare(30),tmp_out(30),tmp_carry(30));
calloneBit31 : OneBitALU  port map (data1(31),data2(31),'0',tmp_carry(30),aluop(3 Downto 0),set,tmp_out(31),tmp_carry(31));




oflag <=tmp_carry(30) xor tmp_carry(31);
cflag<= tmp_carry(31);

zflag <= '1' WHEN tmp_out = "00000000000000000000000000000000" else
         '0';


--process (tmp_out)
--variable tmp_zflag1 : std_logic;
--variable tmp_zflag2 : std_logic;
--begin
--tmp_zflag2 := tmp_out(0);
--	for j in 1 to 31 loop 
--		tmp_zflag1 := tmp_out(j) nor tmp_zflag2 ;
--		tmp_zflag2 :=tmp_zflag1;
--	end loop ;
--	zflag <=   tmp_zflag1;
--end process;
	dataout <= tmp_out(31 Downto 0);
end Behavioral;