LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

Entity Shiftregister is 
Port(
	Qout : OUT std_logic;
	
	Din  : IN  std_logic;
	SI   : IN  std_logic;
	SH	  : IN  std_logic;
	clk  : IN  std_logic;
	L	  : IN  std_logic;
	clr  : IN  std_logic
	
);
End Shiftregister;

Architecture behavior of Shiftregister is

Component MUX_4to1 is
Port(
	Y     : OUT std_logic;
	
	Sel1  : IN std_logic;
	Sel2 	: IN std_logic;
	INP0  : IN std_logic;
	INP1  : IN std_logic;
	INP2  : IN std_logic;
	INP3  : IN std_logic
);
End Component;


Component D_FlipFlop IS
port(
	D   : IN  std_logic;
	clk : IN  std_logic;
	clr : IN  std_logic;
	Q   : OUT std_logic
);
End Component;


Signal MUXtoLATCH : std_logic;
Signal Output     : std_logic;

Begin

	MUX0 : MUX_4to1 Port Map(INP0 => Output, INP1 => Din, INP2 => SI, INP3 => SI, Y => MUXtoLatch, Sel1 => SH, Sel2 => L);
	FLIPFLOP0 : D_FlipFlop Port Map(clk => clk, D => MUXtoLatch, clr => clr, Q => Output);
	Qout <= Output;

End Architecture;