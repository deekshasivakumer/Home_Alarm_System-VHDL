library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP is
     Port ( CLKIN : in  STD_LOGIC;
           RSTIN : in  STD_LOGIC;
           keysin : in  STD_LOGIC_VECTOR (3 downto 0);
           led_code_out : out  STD_LOGIC_VECTOR (2 downto 0);
			  armed_ledout : out std_logic;
			  disarmed_ledout : out std_logic;
			  sensors: in std_logic;
			  alarm_out : out std_logic
			
			  
			  );
end TOP;

architecture Behavioral of TOP is
	
signal rst,clk, locked: std_logic;	
	
	COMPONENT codechecker
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		keysin : IN std_logic_vector(3 downto 0);
		sensors : IN std_logic;          
		led_code_out : OUT std_logic_vector(2 downto 0);
		armed_ledout : OUT std_logic;
		disarmed_ledout : OUT std_logic;
		alarm_out : OUT std_logic
		);
	END COMPONENT;
	
		COMPONENT myclock
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic;
		CLK2X_OUT : OUT std_logic;
		LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;



begin

Inst_myclock: myclock PORT MAP(
		CLKIN_IN => CLKIN,
		RST_IN => RSTIN,
		CLKIN_IBUFG_OUT => open,
		CLK0_OUT => open,
		CLK2X_OUT => clk,
		LOCKED_OUT => LOCKED
	);

RST <= RSTIN or (not LOCKED);--- rst+ not locked ;  alternatively not (not rst . locked)

Inst_codechecker: codechecker PORT MAP(
		clk => clk,
		rst => rst,
		keysin => keysin,
		led_code_out => led_code_out,
		armed_ledout => armed_ledout,
		disarmed_ledout => disarmed_ledout,
		sensors => sensors,
		alarm_out => alarm_out
	);



end Behavioral;

