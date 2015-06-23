----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:54:00 03/13/2012 
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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.MyPackage1.all;
---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OneBitALU is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  less: in STD_LOGIC;
           cin : in  STD_LOGIC;
           oper : in  STD_LOGIC_VECTOR (3 downto 0);
			  set : out STD_LOGIC;
           res : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end OneBitALU;

architecture Behavioral of OneBitALU is
signal Add_Sub: std_logic_vector(1 downto 0) ;
signal ta: STD_LOGIC ;
signal tb: STD_LOGIC ;
signal Or_res : std_logic ;
signal Nor_resAnd_res : std_logic ;
signal Slt_res : std_logic;
begin

	tb <= b when oper(2) = '0' else
			not(b) when oper(2) = '1' ; 
			
	ta <= a when oper(3) = '0' else
			not(a) when oper(3) = '1' ; 	
			
	Add_Sub <= ('0' & a) + ('0' & tb) + ('0' & cin);
	
	Or_res <= a or b;
	Nor_resAnd_res <= ta and tb;
	Slt_res <= less;
	set<= Add_Sub(0);
	result: Mux port map (Add_Sub(0),Or_res,Nor_resAnd_res,Slt_res,res,oper(1 Downto 0));
		cout <= Add_Sub(1);
end Behavioral;