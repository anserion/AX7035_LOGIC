LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_LOGIC IS
END tb_LOGIC;
 
ARCHITECTURE behavior OF tb_LOGIC IS 
  COMPONENT LOGIC_RTL PORT(KEY1,KEY2,KEY3: IN  std_logic; LED1: OUT  std_logic); END COMPONENT;
  COMPONENT LOGIC_behavioral PORT(KEY1,KEY2,KEY3: IN std_logic; LED1: OUT std_logic); END COMPONENT;
	 
   --Inputs
   signal tb_KEY1 : std_logic := '0';
   signal tb_KEY2 : std_logic := '0';
   signal tb_KEY3 : std_logic := '1';
 	--Outputs
   signal tb_LED_RTL : std_logic;
	signal tb_LED_Behavioral : std_logic;
BEGIN
   uut_RTL: LOGIC_RTL PORT MAP (tb_KEY1,tb_KEY2,tb_KEY3,tb_LED_RTL);
	uut_Behavioral: LOGIC_RTL PORT MAP (tb_KEY1,tb_KEY2,tb_KEY3,tb_LED_Behavioral);
END;