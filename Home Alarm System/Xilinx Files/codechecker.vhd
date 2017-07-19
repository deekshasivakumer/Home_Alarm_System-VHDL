library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity codechecker is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           keysin : in  STD_LOGIC_VECTOR (3 downto 0);
           led_code_out : out  STD_LOGIC_VECTOR (2 downto 0);
			  armed_ledout : out std_logic;
			  disarmed_ledout : out std_logic;
			  sensors: in std_logic;
			  alarm_out : out std_logic
			
			  
			  );
end codechecker;

architecture Behavioral of codechecker is

 type state_type is (code1,code2,code3,wrongcode1,wrongcode2,wrongcode3,armed,disarmed,armedcode1); 
 signal state, next_state : state_type; 
   --Declare internal signals for all outputs of the state-machine
 signal armed_led,disarmed_led : std_logic;  -- example output signal
	signal led_code : std_logic_vector (2 downto 0);
	signal alarmed: std_logic;
	signal Q1, Q2, Q3, keys : std_logic_vector (3 downto 0);
	


begin


process(clk)
begin
   if (clk'event and clk = '1') then
      if (rst = '1') then
         Q1 <= "0000";
         Q2 <= "0000";
         Q3 <= "0000"; 
      else
         Q1 <= keysin;
         Q2 <= Q1;
         Q3 <= Q2;
      end if;
   end if;
end process;
 
keys <= Q1 and Q2 and (not Q3);

   SYNC_PROC: process (clk)
   begin
      if (clk'event and clk = '1') then
         if (rst = '1') then
            state <= armed;
            disarmed_ledout <= '0';
				armed_ledout <='1';
				led_code_out <= "000";
			
         else
            state <= next_state;
            disarmed_ledout <= disarmed_led;
				armed_ledout <= armed_led;
				led_code_out <= led_code;
				
         -- assign other outputs to internal signals
         end if;        
      end if;
   end process;
 
   --MOORE State-Machine - Outputs based on state only
   OUTPUT_DECODE: process (state)
   begin
      --insert statements to decode internal output signals
      --below is simple example
      if state = disarmed then
         disarmed_led <= '1';
			armed_led <= '0';
			led_code <= "000";
      elsif (state = code1) or (state = wrongcode1) then
         disarmed_led <= '0';
			armed_led <= '1';
			led_code <= "001";
		elsif (state = code2) or (state = wrongcode2) then
         disarmed_led <= '0';
			armed_led <= '1';
			led_code <= "010";
		elsif (state = code3) or (state = wrongcode3) then
         disarmed_led <= '0';
			armed_led <= '1';
			led_code <= "100";
		elsif state = armedcode1 then
         disarmed_led <= '1';
			armed_led <= '0';
			led_code <= "111";
		elsif state = armed then
         disarmed_led <= '0';
			armed_led <= '1';
			led_code <= "000";
		else
			armed_led <= '1';
			disarmed_led <= '0';
			led_code <= "000";
      end if;
   end process;
 
   NEXT_STATE_DECODE: process (state, keys)
   begin
      --declare default state for next_state to avoid latches
      next_state <= state;  --default is to stay in current state
      --insert statements to decode next_state
      --below is a simple example
      case (state) is
         when armed =>
            if keys = "0100" then
               next_state <= code1;
				elsif keys = "0000" then
					next_state <= armed;
				else
					next_state <= wrongcode1;
            end if;
			when code1 =>
            if keys = "1000" then
               next_state <= code2;
				elsif keys = "0000" then
					next_state <= code1;
				else
					next_state <= wrongcode2;
            end if;
			when code2 =>
            if keys = "1000" then
               next_state <= code3;
				elsif keys = "0000" then
					next_state <= code2;
				else
					next_state <= wrongcode3;
            end if;
			when code3 =>
            if keys = "0001" then
               next_state <= disarmed;
				elsif keys = "0000" then
					next_state <= code3;
				else
					next_state <= armed;
            end if;
			when disarmed =>
				if keys = "0001" then
					next_state <= armedcode1;
				end if;
			when armedcode1 =>
				 if keys = "1000" then
               next_state <= armed;
				elsif keys = "0000" then
					next_state <= armedcode1;
				else
					next_state <= disarmed;
            end if;
			when wrongcode1 =>
				if keys /= "0000" then
						next_state <= wrongcode2;
				end if;
			when wrongcode2 =>
				if keys /= "0000" then
						next_state <= wrongcode3;
				end if;
			when wrongcode3 =>
				if keys /= "0000" then
						next_state <= armed;
				end if;
				
         when others =>
            next_state <= armed;
      end case;      
   end process;


process(clk)
begin
	if clk'event and clk ='1' then

		if (rst='1') then
			alarmed<='0';
		elsif (state= disarmed) or (state = armedcode1) then
			alarmed<='0';
		else
			if sensors = '1' then
				alarmed <='1';
			end if;
		end if;
	end if;
end process;



alarm_out<= alarmed;



end Behavioral;

