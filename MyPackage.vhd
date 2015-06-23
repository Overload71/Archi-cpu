--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MyPackage is
component Reg_Mux is
port(
			s : in std_logic_vector(4 downto 0);
			r0 : in std_logic_vector(31 downto 0);
			r1 : in std_logic_vector(31 downto 0);
			r2 : in std_logic_vector(31 downto 0);
			r3 : in std_logic_vector(31 downto 0);
			r4 : in std_logic_vector(31 downto 0);
			r5 : in std_logic_vector(31 downto 0);
			r6 : in std_logic_vector(31 downto 0);
			r7 : in std_logic_vector(31 downto 0);
			r8 : in std_logic_vector(31 downto 0);
			r9 : in std_logic_vector(31 downto 0);
			r10 : in std_logic_vector(31 downto 0);
			r11 : in std_logic_vector(31 downto 0);
			r12 : in std_logic_vector(31 downto 0);
			r13 : in std_logic_vector(31 downto 0);
			r14 : in std_logic_vector(31 downto 0);
			r15 : in std_logic_vector(31 downto 0);
			r16 : in std_logic_vector(31 downto 0);
			r17 : in std_logic_vector(31 downto 0);
			r18 : in std_logic_vector(31 downto 0);
			r19 : in std_logic_vector(31 downto 0);
			r20 : in std_logic_vector(31 downto 0);
			r21 : in std_logic_vector(31 downto 0);
			r22 : in std_logic_vector(31 downto 0);
			r23 : in std_logic_vector(31 downto 0);
			r24 : in std_logic_vector(31 downto 0);
			r25 : in std_logic_vector(31 downto 0);
			r26 : in std_logic_vector(31 downto 0);
			r27 : in std_logic_vector(31 downto 0);
			r28 : in std_logic_vector(31 downto 0);
			r29 : in std_logic_vector(31 downto 0);
			r30 : in std_logic_vector(31 downto 0);
			r31 : in std_logic_vector(31 downto 0);
			o : out std_logic_vector(31 downto 0)
		);
end component;

component reg IS
	
	PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
	end component;
	
component Reg_decoder is
	PORT (
	I: IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	end component;
	
	

	end MyPackage;
package body MyPackage is

end MyPackage;
