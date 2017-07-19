--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:25:36 06/16/2015
-- Design Name:   
-- Module Name:   C:/Course/ExampleAlarm/tb_TOP.vhd
-- Project Name:  ExampleAlarm
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TOP
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_TOP IS
END tb_TOP;
 
ARCHITECTURE behavior OF tb_TOP IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TOP
    PORT(
         CLKIN : IN  std_logic;
         RSTIN : IN  std_logic;
         keysin : IN  std_logic_vector(3 downto 0);
         led_code_out : OUT  std_logic_vector(2 downto 0);
         armed_ledout : OUT  std_logic;
         disarmed_ledout : OUT  std_logic;
         sensors : IN  std_logic;
         alarm_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLKIN : std_logic := '0';
   signal RSTIN : std_logic := '0';
   signal keysin : std_logic_vector(3 downto 0) := (others => '0');
   signal sensors : std_logic := '0';

 	--Outputs
   signal led_code_out : std_logic_vector(2 downto 0);
   signal armed_ledout : std_logic;
   signal disarmed_ledout : std_logic;
   signal alarm_out : std_logic;

   -- Clock period definitions
   constant CLKIN_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TOP PORT MAP (
          CLKIN => CLKIN,
          RSTIN => RSTIN,
          keysin => keysin,
          led_code_out => led_code_out,
          armed_ledout => armed_ledout,
          disarmed_ledout => disarmed_ledout,
          sensors => sensors,
          alarm_out => alarm_out
        );

   -- Clock process definitions
   CLKIN_process :process
   begin
		CLKIN <= '0';
		wait for CLKIN_period/2;
		CLKIN <= '1';
		wait for CLKIN_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		rstin <= '1';
		
      -- hold reset state for 100 ns.
      wait for 500 ns;	
		rstin<='0';
		
		
		
      wait for CLKIN_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
