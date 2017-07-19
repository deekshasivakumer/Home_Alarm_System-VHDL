--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:43:57 06/16/2015
-- Design Name:   
-- Module Name:   C:/Course/ExampleAlarm/tb_codechecker.vhd
-- Project Name:  ExampleAlarm
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: codechecker
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
 
ENTITY tb_codechecker IS
END tb_codechecker;
 
ARCHITECTURE behavior OF tb_codechecker IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT codechecker
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         keysin : IN  std_logic_vector(3 downto 0);
         led_code_out : OUT  std_logic_vector(2 downto 0);
         armed_ledout : OUT  std_logic;
         disarmed_ledout : OUT  std_logic;
         sensors : IN  std_logic;
         alarm_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal keysin : std_logic_vector(3 downto 0) := (others => '0');
   signal sensors : std_logic := '0';

 	--Outputs
   signal led_code_out : std_logic_vector(2 downto 0);
   signal armed_ledout : std_logic;
   signal disarmed_ledout : std_logic;
   signal alarm_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: codechecker PORT MAP (
          clk => clk,
          rst => rst,
          keysin => keysin,
          led_code_out => led_code_out,
          armed_ledout => armed_ledout,
          disarmed_ledout => disarmed_ledout,
          sensors => sensors,
          alarm_out => alarm_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      rst <='1';
		
		wait for 500 ns;
		rst <= '0';
		sensors<= '0';
		wait for 500 ns;
		sensors<= '1';
		wait for 500 ns;
		keysin <= "0100";
		wait for 500 ns;
		keysin <= "0000";
		wait for 300 ns;
		keysin <= "1000";
		wait for 500 ns;
		keysin <= "0000";
		wait for 300 ns;
		keysin <= "1000";
		wait for 500 ns;
		keysin <= "0000";
		wait for 300 ns;
		keysin <= "0001";
		wait for 500 ns;
		keysin <= "0000";
		wait for 300 ns;
		





      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
