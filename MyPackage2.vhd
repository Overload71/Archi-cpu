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

package MainPackage is

component signextend is
port(
		temp: in std_logic_vector (15 downto 0);
		res: out std_logic_vector (31 downto 0)
);
end component;

component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);
end component;
component adder is
port(
		input1: in std_logic_vector (31 downto 0);
		input2: in std_logic_vector (31 downto 0);
		output: out std_logic_vector (31 downto 0)
);
end component;
component mux2x1 is
Generic(N : natural);
port(
			s  : in std_logic;
		i0 : in std_logic_vector(N -1 downto 0);
		i1 : in std_logic_vector(N -1 downto 0);
	
		res: out std_logic_vector(N -1 downto 0)
			
);
end component;

component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end component;

component Pc IS
	PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
END component;


component RegisterFile is
port(
read_sel1 : in std_logic_vector(4 downto 0);
read_sel2 : in std_logic_vector(4 downto 0);
write_sel : in std_logic_vector(4 downto 0);
write_ena : in std_logic;
clk: in std_logic;
write_data: in std_logic_vector(31 downto 0);
data1: out std_logic_vector(31 downto 0);
data2: out std_logic_vector(31 downto 0)
);
end component;

component ALU is
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
end component;

component translation_circuit is
port( funct : in std_logic_vector(5 downto 0) ;
	aluop : in std_logic_vector(1 downto 0);
	opcode : out std_logic_vector(3 downto 0)
		) ;
end component;

component condition is
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

end component;

end MainPackage;

package body MainPackage is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end MainPackage;
