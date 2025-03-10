LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

Entity MUX_4to1 is
Port(
	Y     : OUT std_logic;
	
	Sel1  : IN std_logic;
	Sel2 	: IN std_logic;
	INP0  : IN std_logic;
	INP1  : IN std_logic;
	INP2  : IN std_logic;
	INP3  : IN std_logic

);
End MUX_4to1;



Architecture behavior OF MUX_4to1 is

Component MUX2to1_1bit is
Port(
	Y    : OUT std_logic;
	
	A 	  : IN std_logic;
	INP0 : IN std_logic;
	INP1 : IN std_logic

);
End Component;

signal first  : std_logic;
signal second : std_logic;

Begin

	MUX1 : MUX2to1_1bit Port Map(INP0 => INP0, INP1 => INP1, Y => first, A => Sel1);
	MUX2 : MUX2to1_1bit Port Map(INP0 => INP2, INP1 => INP2, Y => second, A => Sel1);
	MUX3 : MUX2to1_1bit Port Map(INP0 => first, INP1 => second, Y => Y, A => Sel2);

END Architecture behavior;