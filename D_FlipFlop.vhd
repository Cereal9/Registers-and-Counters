LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY D_FlipFlop IS
port(
	D : IN std_logic;
	clk : IN std_logic;
	clr : IN std_logic;
	Q : OUT std_logic


);
End D_FlipFlop;

ARCHITECTURE behave OF  D_FlipFlop IS


COMPONENT lab5 is
port(
	D	: IN std_logic;
	G	: IN std_logic;
	clr: IN std_logic;
	Q	: OUT std_logic

);
End COMPONENT;

Signal clr_singal : std_logic;
Signal clk_signal : std_logic;
Signal QtoD_signal   : std_logic;

Begin 
	Master : Lab5 PORT MAP(D => D, clr => clr, G => NOT clk, Q => QtoD_signal);
	Slave  : Lab5 PORT MAP(D => QtoD_signal, clr => clr, G => clk, Q => Q);
End ARCHITECTURE;