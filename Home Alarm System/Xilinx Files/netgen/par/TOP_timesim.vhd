--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: TOP_timesim.vhd
-- /___/   /\     Timestamp: Tue Jun 16 17:28:02 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf TOP.pcf -rpw 100 -tpw 0 -ar Structure -tm TOP -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim TOP.ncd TOP_timesim.vhd 
-- Device	: 3s100ecp132-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: TOP.ncd
-- Output file	: C:\Course\ExampleAlarm\netgen\par\TOP_timesim.vhd
-- # of Entities	: 1
-- Design Name	: TOP
-- Xilinx	: C:\Xilinx2\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity TOP is
  port (
    CLKIN : in STD_LOGIC := 'X'; 
    armed_ledout : out STD_LOGIC; 
    RSTIN : in STD_LOGIC := 'X'; 
    alarm_out : out STD_LOGIC; 
    disarmed_ledout : out STD_LOGIC; 
    sensors : in STD_LOGIC := 'X'; 
    led_code_out : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    keysin : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end TOP;

architecture Structure of TOP is
  signal RSTIN_IBUF_265 : STD_LOGIC; 
  signal Inst_codechecker_disarmed_ledout_266 : STD_LOGIC; 
  signal Inst_codechecker_armed_ledout_267 : STD_LOGIC; 
  signal Inst_codechecker_alarmed_277 : STD_LOGIC; 
  signal Inst_myclock_CLKFB_IN : STD_LOGIC; 
  signal locked : STD_LOGIC; 
  signal Inst_myclock_CLK2X_BUF : STD_LOGIC; 
  signal Inst_myclock_CLK0_BUF : STD_LOGIC; 
  signal clk : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd6_285 : STD_LOGIC; 
  signal rst_0 : STD_LOGIC; 
  signal Inst_codechecker_state_cmp_eq0001_0 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd5_288 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd3_289 : STD_LOGIC; 
  signal Inst_codechecker_state_cmp_eq0002 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd9_291 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd7_292 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd8_293 : STD_LOGIC; 
  signal Inst_codechecker_state_cmp_eq0000 : STD_LOGIC; 
  signal Inst_codechecker_keys_2_0 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd1_303 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd2_304 : STD_LOGIC; 
  signal Inst_codechecker_N3_0 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd8_In4_0 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd4_313 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd8_In11_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal RSTIN_INBUF : STD_LOGIC; 
  signal disarmed_ledout_O : STD_LOGIC; 
  signal armed_ledout_O : STD_LOGIC; 
  signal sensors_INBUF : STD_LOGIC; 
  signal led_code_out_0_O : STD_LOGIC; 
  signal led_code_out_1_O : STD_LOGIC; 
  signal led_code_out_2_O : STD_LOGIC; 
  signal keysin_0_INBUF : STD_LOGIC; 
  signal keysin_1_INBUF : STD_LOGIC; 
  signal keysin_2_INBUF : STD_LOGIC; 
  signal keysin_3_INBUF : STD_LOGIC; 
  signal CLKIN_INBUF : STD_LOGIC; 
  signal alarm_out_O : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_CLK90 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_CLK180 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_CLK270 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_CLK2X180 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_CLKDV : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_CLKFX : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_CLKFX180 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_STATUS7 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_STATUS6 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_STATUS5 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_STATUS4 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_STATUS3 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_STATUS2 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_STATUS1 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_STATUS0 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_PSDONE : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_PSCLKINV_421 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_CLKFB_BUF_420 : STD_LOGIC; 
  signal Inst_myclock_DCM_SP_INST_CLKIN_BUF_419 : STD_LOGIC; 
  signal Inst_myclock_CLK2X_BUFG_INST_S_INVNOT : STD_LOGIC; 
  signal Inst_myclock_CLK2X_BUFG_INST_I0_INV : STD_LOGIC; 
  signal Inst_myclock_CLK0_BUFG_INST_S_INVNOT : STD_LOGIC; 
  signal Inst_myclock_CLK0_BUFG_INST_I0_INV : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd3_DXMUX_477 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd3_F5MUX_475 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd3_In1 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd3_BXINV_468 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd3_In11_466 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd3_SRINV_460 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd3_CLKINV_459 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd5_DXMUX_511 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd5_F5MUX_509 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd5_In1 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd5_BXINV_502 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd5_In11_500 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd5_SRINV_494 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd5_CLKINV_493 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd9_DXMUX_544 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd9_In : STD_LOGIC; 
  signal Inst_codechecker_state_cmp_eq0000_pack_2 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd9_SRINV_529 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd9_CLKINV_528 : STD_LOGIC; 
  signal Inst_codechecker_keys_1_pack_1 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd2_REVUSED_572 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd2_DYMUX_571 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd2_In26_568 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd2_SRINV_562 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd2_CLKINV_561 : STD_LOGIC; 
  signal Inst_codechecker_state_cmp_eq0001 : STD_LOGIC; 
  signal Inst_codechecker_keys_0_pack_1 : STD_LOGIC; 
  signal Inst_codechecker_N3 : STD_LOGIC; 
  signal Inst_codechecker_keys_3_pack_1 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd8_In4_655 : STD_LOGIC; 
  signal Inst_codechecker_state_cmp_eq0002_pack_2 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd2_In15_688 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd1_DYMUX_679 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd1_SRINV_671 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd1_CLKINV_670 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd6_DXMUX_724 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd6_In : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd6_DYMUX_712 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd4_In : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd6_SRINV_704 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd6_CLKINV_703 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd8_DXMUX_762 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd8_In : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd8_DYMUX_750 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd7_In : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd8_SRINV_742 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd8_CLKINV_741 : STD_LOGIC; 
  signal Inst_codechecker_alarmed_or0000 : STD_LOGIC; 
  signal Inst_codechecker_armed_ledout_DYMUX_788 : STD_LOGIC; 
  signal Inst_codechecker_armed_led : STD_LOGIC; 
  signal Inst_codechecker_armed_ledout_SRINV_778 : STD_LOGIC; 
  signal Inst_codechecker_armed_ledout_CLKINV_777 : STD_LOGIC; 
  signal Inst_codechecker_led_code_out_1_DXMUX_837 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_Out31 : STD_LOGIC; 
  signal Inst_codechecker_led_code_out_1_REVUSED_822 : STD_LOGIC; 
  signal Inst_codechecker_led_code_out_1_DYMUX_821 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_Out41 : STD_LOGIC; 
  signal Inst_codechecker_led_code_out_1_SRINV_810 : STD_LOGIC; 
  signal Inst_codechecker_led_code_out_1_CLKINV_809 : STD_LOGIC; 
  signal Inst_codechecker_led_code_out_2_REVUSED_863 : STD_LOGIC; 
  signal Inst_codechecker_led_code_out_2_DYMUX_862 : STD_LOGIC; 
  signal Inst_codechecker_led_code_out_2_GYMUX_861 : STD_LOGIC; 
  signal Inst_codechecker_state_FSM_FFd8_In11_859 : STD_LOGIC; 
  signal Inst_codechecker_led_code_out_2_SRINV_851 : STD_LOGIC; 
  signal Inst_codechecker_led_code_out_2_CLKINV_850 : STD_LOGIC; 
  signal Inst_codechecker_Q2_1_DXMUX_884 : STD_LOGIC; 
  signal Inst_codechecker_Q2_1_DYMUX_878 : STD_LOGIC; 
  signal Inst_codechecker_Q2_1_SRINV_876 : STD_LOGIC; 
  signal Inst_codechecker_Q2_1_CLKINV_875 : STD_LOGIC; 
  signal Inst_codechecker_Q2_3_DXMUX_904 : STD_LOGIC; 
  signal Inst_codechecker_Q2_3_DYMUX_898 : STD_LOGIC; 
  signal Inst_codechecker_Q2_3_SRINV_896 : STD_LOGIC; 
  signal Inst_codechecker_Q2_3_CLKINV_895 : STD_LOGIC; 
  signal Inst_codechecker_Q3_1_DXMUX_924 : STD_LOGIC; 
  signal Inst_codechecker_Q3_1_DYMUX_918 : STD_LOGIC; 
  signal Inst_codechecker_Q3_1_SRINV_916 : STD_LOGIC; 
  signal Inst_codechecker_Q3_1_CLKINV_915 : STD_LOGIC; 
  signal Inst_codechecker_Q3_3_DXMUX_944 : STD_LOGIC; 
  signal Inst_codechecker_Q3_3_DYMUX_938 : STD_LOGIC; 
  signal Inst_codechecker_Q3_3_SRINV_936 : STD_LOGIC; 
  signal Inst_codechecker_Q3_3_CLKINV_935 : STD_LOGIC; 
  signal Inst_codechecker_disarmed_ledout_DXMUX_959 : STD_LOGIC; 
  signal Inst_codechecker_disarmed_ledout_REVUSED_957 : STD_LOGIC; 
  signal Inst_codechecker_disarmed_ledout_SRINV_955 : STD_LOGIC; 
  signal Inst_codechecker_disarmed_ledout_CLKINV_954 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal rst : STD_LOGIC; 
  signal Inst_codechecker_alarmed_DYMUX_998 : STD_LOGIC; 
  signal Inst_codechecker_alarmed_BYINV_997 : STD_LOGIC; 
  signal Inst_codechecker_alarmed_SRINV_996 : STD_LOGIC; 
  signal Inst_codechecker_alarmed_CLKINV_995 : STD_LOGIC; 
  signal Inst_codechecker_alarmed_CEINV_994 : STD_LOGIC; 
  signal Inst_codechecker_Q1_1_DXMUX_1031 : STD_LOGIC; 
  signal Inst_codechecker_Q1_1_DYMUX_1025 : STD_LOGIC; 
  signal Inst_codechecker_Q1_1_SRINV_1023 : STD_LOGIC; 
  signal Inst_codechecker_Q1_1_CLKINV_1022 : STD_LOGIC; 
  signal Inst_codechecker_Q1_3_DXMUX_1051 : STD_LOGIC; 
  signal Inst_codechecker_Q1_3_DYMUX_1045 : STD_LOGIC; 
  signal Inst_codechecker_Q1_3_SRINV_1043 : STD_LOGIC; 
  signal Inst_codechecker_Q1_3_CLKINV_1042 : STD_LOGIC; 
  signal NlwBufferSignal_Inst_myclock_DCM_SP_INST_RST : STD_LOGIC; 
  signal NLW_Inst_myclock_DCM_SP_INST_DSSEN_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal Inst_codechecker_led_code_out : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Inst_codechecker_keys : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Inst_codechecker_Q3 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Inst_codechecker_Q2 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Inst_codechecker_Q1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  RSTIN_IBUF : X_BUF
    generic map(
      LOC => "IPAD60",
      PATHPULSE => 638 ps
    )
    port map (
      I => RSTIN,
      O => RSTIN_INBUF
    );
  disarmed_ledout_OBUF : X_OBUF
    generic map(
      LOC => "PAD69"
    )
    port map (
      I => disarmed_ledout_O,
      O => disarmed_ledout
    );
  armed_ledout_OBUF : X_OBUF
    generic map(
      LOC => "PAD68"
    )
    port map (
      I => armed_ledout_O,
      O => armed_ledout
    );
  sensors_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 638 ps
    )
    port map (
      I => sensors,
      O => sensors_INBUF
    );
  led_code_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD65"
    )
    port map (
      I => led_code_out_0_O,
      O => led_code_out(0)
    );
  led_code_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD64"
    )
    port map (
      I => led_code_out_1_O,
      O => led_code_out(1)
    );
  led_code_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD58"
    )
    port map (
      I => led_code_out_2_O,
      O => led_code_out(2)
    );
  keysin_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD36",
      PATHPULSE => 638 ps
    )
    port map (
      I => keysin(0),
      O => keysin_0_INBUF
    );
  keysin_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD23",
      PATHPULSE => 638 ps
    )
    port map (
      I => keysin(1),
      O => keysin_1_INBUF
    );
  keysin_2_IBUF : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 638 ps
    )
    port map (
      I => keysin(2),
      O => keysin_2_INBUF
    );
  keysin_3_IBUF : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 638 ps
    )
    port map (
      I => keysin(3),
      O => keysin_3_INBUF
    );
  Inst_myclock_CLKIN_IBUFG_INST : X_BUF
    generic map(
      LOC => "IPAD13",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLKIN,
      O => CLKIN_INBUF
    );
  alarm_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => alarm_out_O,
      O => alarm_out
    );
  Inst_myclock_DCM_SP_INST_PSCLKINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => Inst_myclock_DCM_SP_INST_PSCLKINV_421
    );
  Inst_myclock_DCM_SP_INST : X_DCM_SP
    generic map(
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"C080",
      CLKDV_DIVIDE => 2.000000,
      CLKFX_DIVIDE => 1,
      CLKFX_MULTIPLY => 4,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLKIN_PERIOD => 20.000000,
      DESKEW_ADJUST => "6",
      DFS_FREQUENCY_MODE => "LOW",
      STARTUP_WAIT => FALSE,
      CLK_FEEDBACK => "1X",
      DLL_FREQUENCY_MODE => "LOW",
      CLKIN_DIVIDE_BY_2 => FALSE,
      PHASE_SHIFT => 0,
      LOC => "DCM_X0Y1"
    )
    port map (
      CLKIN => Inst_myclock_DCM_SP_INST_CLKIN_BUF_419,
      CLKFB => Inst_myclock_DCM_SP_INST_CLKFB_BUF_420,
      RST => NlwBufferSignal_Inst_myclock_DCM_SP_INST_RST,
      DSSEN => NLW_Inst_myclock_DCM_SP_INST_DSSEN_UNCONNECTED,
      PSINCDEC => '0',
      PSEN => '0',
      PSCLK => Inst_myclock_DCM_SP_INST_PSCLKINV_421,
      PSDONE => Inst_myclock_DCM_SP_INST_PSDONE,
      LOCKED => locked,
      CLKFX180 => Inst_myclock_DCM_SP_INST_CLKFX180,
      CLKFX => Inst_myclock_DCM_SP_INST_CLKFX,
      CLKDV => Inst_myclock_DCM_SP_INST_CLKDV,
      CLK2X180 => Inst_myclock_DCM_SP_INST_CLK2X180,
      CLK2X => Inst_myclock_CLK2X_BUF,
      CLK270 => Inst_myclock_DCM_SP_INST_CLK270,
      CLK180 => Inst_myclock_DCM_SP_INST_CLK180,
      CLK90 => Inst_myclock_DCM_SP_INST_CLK90,
      CLK0 => Inst_myclock_CLK0_BUF,
      STATUS(7) => Inst_myclock_DCM_SP_INST_STATUS7,
      STATUS(6) => Inst_myclock_DCM_SP_INST_STATUS6,
      STATUS(5) => Inst_myclock_DCM_SP_INST_STATUS5,
      STATUS(4) => Inst_myclock_DCM_SP_INST_STATUS4,
      STATUS(3) => Inst_myclock_DCM_SP_INST_STATUS3,
      STATUS(2) => Inst_myclock_DCM_SP_INST_STATUS2,
      STATUS(1) => Inst_myclock_DCM_SP_INST_STATUS1,
      STATUS(0) => Inst_myclock_DCM_SP_INST_STATUS0
    );
  Inst_myclock_DCM_SP_INST_CLKFB_BUF : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_myclock_CLKFB_IN,
      O => Inst_myclock_DCM_SP_INST_CLKFB_BUF_420
    );
  Inst_myclock_DCM_SP_INST_CLKIN_BUF : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLKIN_INBUF,
      O => Inst_myclock_DCM_SP_INST_CLKIN_BUF_419
    );
  Inst_myclock_CLK2X_BUFG_INST : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y11"
    )
    port map (
      I0 => Inst_myclock_CLK2X_BUFG_INST_I0_INV,
      I1 => GND,
      S => Inst_myclock_CLK2X_BUFG_INST_S_INVNOT,
      O => clk
    );
  Inst_myclock_CLK2X_BUFG_INST_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => Inst_myclock_CLK2X_BUFG_INST_S_INVNOT
    );
  Inst_myclock_CLK2X_BUFG_INST_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_myclock_CLK2X_BUF,
      O => Inst_myclock_CLK2X_BUFG_INST_I0_INV
    );
  Inst_myclock_CLK0_BUFG_INST : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => Inst_myclock_CLK0_BUFG_INST_I0_INV,
      I1 => GND,
      S => Inst_myclock_CLK0_BUFG_INST_S_INVNOT,
      O => Inst_myclock_CLKFB_IN
    );
  Inst_myclock_CLK0_BUFG_INST_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => Inst_myclock_CLK0_BUFG_INST_S_INVNOT
    );
  Inst_myclock_CLK0_BUFG_INST_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_myclock_CLK0_BUF,
      O => Inst_myclock_CLK0_BUFG_INST_I0_INV
    );
  Inst_codechecker_state_FSM_FFd3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd3_F5MUX_475,
      O => Inst_codechecker_state_FSM_FFd3_DXMUX_477
    );
  Inst_codechecker_state_FSM_FFd3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X18Y19"
    )
    port map (
      IA => Inst_codechecker_state_FSM_FFd3_In11_466,
      IB => Inst_codechecker_state_FSM_FFd3_In1,
      SEL => Inst_codechecker_state_FSM_FFd3_BXINV_468,
      O => Inst_codechecker_state_FSM_FFd3_F5MUX_475
    );
  Inst_codechecker_state_FSM_FFd3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd6_285,
      O => Inst_codechecker_state_FSM_FFd3_BXINV_468
    );
  Inst_codechecker_state_FSM_FFd3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_state_FSM_FFd3_SRINV_460
    );
  Inst_codechecker_state_FSM_FFd3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_state_FSM_FFd3_CLKINV_459
    );
  Inst_codechecker_state_FSM_FFd5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd5_F5MUX_509,
      O => Inst_codechecker_state_FSM_FFd5_DXMUX_511
    );
  Inst_codechecker_state_FSM_FFd5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X19Y19"
    )
    port map (
      IA => Inst_codechecker_state_FSM_FFd5_In11_500,
      IB => Inst_codechecker_state_FSM_FFd5_In1,
      SEL => Inst_codechecker_state_FSM_FFd5_BXINV_502,
      O => Inst_codechecker_state_FSM_FFd5_F5MUX_509
    );
  Inst_codechecker_state_FSM_FFd5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd9_291,
      O => Inst_codechecker_state_FSM_FFd5_BXINV_502
    );
  Inst_codechecker_state_FSM_FFd5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_state_FSM_FFd5_SRINV_494
    );
  Inst_codechecker_state_FSM_FFd5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_state_FSM_FFd5_CLKINV_493
    );
  Inst_codechecker_state_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X19Y21"
    )
    port map (
      ADR0 => Inst_codechecker_keys_2_0,
      ADR1 => Inst_codechecker_keys(1),
      ADR2 => Inst_codechecker_keys(0),
      ADR3 => Inst_codechecker_keys(3),
      O => Inst_codechecker_state_cmp_eq0000_pack_2
    );
  Inst_codechecker_state_FSM_FFd9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd9_In,
      O => Inst_codechecker_state_FSM_FFd9_DXMUX_544
    );
  Inst_codechecker_state_FSM_FFd9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_cmp_eq0000_pack_2,
      O => Inst_codechecker_state_cmp_eq0000
    );
  Inst_codechecker_state_FSM_FFd9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_state_FSM_FFd9_SRINV_529
    );
  Inst_codechecker_state_FSM_FFd9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_state_FSM_FFd9_CLKINV_528
    );
  Inst_codechecker_state_FSM_FFd2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_keys_1_pack_1,
      O => Inst_codechecker_keys(1)
    );
  Inst_codechecker_state_FSM_FFd2_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd2_In15_688,
      O => Inst_codechecker_state_FSM_FFd2_REVUSED_572
    );
  Inst_codechecker_state_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd2_In26_568,
      O => Inst_codechecker_state_FSM_FFd2_DYMUX_571
    );
  Inst_codechecker_state_FSM_FFd2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_state_FSM_FFd2_SRINV_562
    );
  Inst_codechecker_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_state_FSM_FFd2_CLKINV_561
    );
  Inst_codechecker_state_cmp_eq0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_cmp_eq0001,
      O => Inst_codechecker_state_cmp_eq0001_0
    );
  Inst_codechecker_state_cmp_eq0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_keys_0_pack_1,
      O => Inst_codechecker_keys(0)
    );
  Inst_codechecker_N3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_N3,
      O => Inst_codechecker_N3_0
    );
  Inst_codechecker_N3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_keys_3_pack_1,
      O => Inst_codechecker_keys(3)
    );
  Inst_codechecker_state_cmp_eq000111 : X_LUT4
    generic map(
      INIT => X"0003",
      LOC => "SLICE_X18Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_codechecker_keys(1),
      ADR2 => Inst_codechecker_keys_2_0,
      ADR3 => Inst_codechecker_keys(3),
      O => Inst_codechecker_N3
    );
  Inst_codechecker_state_FSM_FFd8_In4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd8_In4_655,
      O => Inst_codechecker_state_FSM_FFd8_In4_0
    );
  Inst_codechecker_state_FSM_FFd8_In4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_cmp_eq0002_pack_2,
      O => Inst_codechecker_state_cmp_eq0002
    );
  Inst_codechecker_state_FSM_FFd1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd1_In,
      O => Inst_codechecker_state_FSM_FFd1_DYMUX_679
    );
  Inst_codechecker_state_FSM_FFd1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_state_FSM_FFd1_SRINV_671
    );
  Inst_codechecker_state_FSM_FFd1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_state_FSM_FFd1_CLKINV_670
    );
  Inst_codechecker_state_FSM_FFd6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd6_In,
      O => Inst_codechecker_state_FSM_FFd6_DXMUX_724
    );
  Inst_codechecker_state_FSM_FFd6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd4_In,
      O => Inst_codechecker_state_FSM_FFd6_DYMUX_712
    );
  Inst_codechecker_state_FSM_FFd6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_state_FSM_FFd6_SRINV_704
    );
  Inst_codechecker_state_FSM_FFd6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_state_FSM_FFd6_CLKINV_703
    );
  Inst_codechecker_state_FSM_FFd4_In1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X19Y18"
    )
    port map (
      ADR0 => Inst_codechecker_state_cmp_eq0001_0,
      ADR1 => Inst_codechecker_state_cmp_eq0002,
      ADR2 => Inst_codechecker_state_FSM_FFd4_313,
      ADR3 => Inst_codechecker_state_FSM_FFd6_285,
      O => Inst_codechecker_state_FSM_FFd4_In
    );
  Inst_codechecker_state_FSM_FFd8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd8_In,
      O => Inst_codechecker_state_FSM_FFd8_DXMUX_762
    );
  Inst_codechecker_state_FSM_FFd8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd7_In,
      O => Inst_codechecker_state_FSM_FFd8_DYMUX_750
    );
  Inst_codechecker_state_FSM_FFd8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_state_FSM_FFd8_SRINV_742
    );
  Inst_codechecker_state_FSM_FFd8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_state_FSM_FFd8_CLKINV_741
    );
  Inst_codechecker_armed_ledout_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_armed_led,
      O => Inst_codechecker_armed_ledout_DYMUX_788
    );
  Inst_codechecker_armed_ledout_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_armed_ledout_SRINV_778
    );
  Inst_codechecker_armed_ledout_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_armed_ledout_CLKINV_777
    );
  Inst_codechecker_state_FSM_Out411 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X18Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_codechecker_state_FSM_FFd7_292,
      ADR2 => VCC,
      ADR3 => Inst_codechecker_state_FSM_FFd9_291,
      O => Inst_codechecker_state_FSM_Out41
    );
  Inst_codechecker_led_code_out_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_Out31,
      O => Inst_codechecker_led_code_out_1_DXMUX_837
    );
  Inst_codechecker_led_code_out_1_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd1_303,
      O => Inst_codechecker_led_code_out_1_REVUSED_822
    );
  Inst_codechecker_led_code_out_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_Out41,
      O => Inst_codechecker_led_code_out_1_DYMUX_821
    );
  Inst_codechecker_led_code_out_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_led_code_out_1_SRINV_810
    );
  Inst_codechecker_led_code_out_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_led_code_out_1_CLKINV_809
    );
  Inst_codechecker_led_code_out_2_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd1_303,
      O => Inst_codechecker_led_code_out_2_REVUSED_863
    );
  Inst_codechecker_led_code_out_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_led_code_out_2_GYMUX_861,
      O => Inst_codechecker_led_code_out_2_DYMUX_862
    );
  Inst_codechecker_led_code_out_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_led_code_out_2_GYMUX_861,
      O => Inst_codechecker_state_FSM_FFd8_In11_0
    );
  Inst_codechecker_led_code_out_2_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd8_In11_859,
      O => Inst_codechecker_led_code_out_2_GYMUX_861
    );
  Inst_codechecker_led_code_out_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_led_code_out_2_SRINV_851
    );
  Inst_codechecker_led_code_out_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_led_code_out_2_CLKINV_850
    );
  Inst_codechecker_Q2_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_Q1(1),
      O => Inst_codechecker_Q2_1_DXMUX_884
    );
  Inst_codechecker_Q2_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_Q1(0),
      O => Inst_codechecker_Q2_1_DYMUX_878
    );
  Inst_codechecker_Q2_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_Q2_1_SRINV_876
    );
  Inst_codechecker_Q2_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_Q2_1_CLKINV_875
    );
  Inst_codechecker_Q2_1 : X_SFF
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_Q2_1_DXMUX_884,
      CE => VCC,
      CLK => Inst_codechecker_Q2_1_CLKINV_875,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_Q2_1_SRINV_876,
      O => Inst_codechecker_Q2(1)
    );
  Inst_codechecker_Q2_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_Q1(3),
      O => Inst_codechecker_Q2_3_DXMUX_904
    );
  Inst_codechecker_Q2_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_Q1(2),
      O => Inst_codechecker_Q2_3_DYMUX_898
    );
  Inst_codechecker_Q2_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_Q2_3_SRINV_896
    );
  Inst_codechecker_Q2_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_Q2_3_CLKINV_895
    );
  Inst_codechecker_Q3_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_Q2(1),
      O => Inst_codechecker_Q3_1_DXMUX_924
    );
  Inst_codechecker_Q3_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_Q2(0),
      O => Inst_codechecker_Q3_1_DYMUX_918
    );
  Inst_codechecker_Q3_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_Q3_1_SRINV_916
    );
  Inst_codechecker_Q3_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_Q3_1_CLKINV_915
    );
  Inst_codechecker_Q3_3 : X_SFF
    generic map(
      LOC => "SLICE_X16Y23",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_Q3_3_DXMUX_944,
      CE => VCC,
      CLK => Inst_codechecker_Q3_3_CLKINV_935,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_Q3_3_SRINV_936,
      O => Inst_codechecker_Q3(3)
    );
  Inst_codechecker_Q3_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_Q2(3),
      O => Inst_codechecker_Q3_3_DXMUX_944
    );
  Inst_codechecker_Q3_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_Q2(2),
      O => Inst_codechecker_Q3_3_DYMUX_938
    );
  Inst_codechecker_Q3_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_Q3_3_SRINV_936
    );
  Inst_codechecker_Q3_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_Q3_3_CLKINV_935
    );
  Inst_codechecker_disarmed_ledout_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd2_304,
      O => Inst_codechecker_disarmed_ledout_DXMUX_959
    );
  Inst_codechecker_disarmed_ledout_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd1_303,
      O => Inst_codechecker_disarmed_ledout_REVUSED_957
    );
  Inst_codechecker_disarmed_ledout_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_disarmed_ledout_SRINV_955
    );
  Inst_codechecker_disarmed_ledout_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_disarmed_ledout_CLKINV_954
    );
  N4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  rst_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst,
      O => rst_0
    );
  Inst_codechecker_alarmed_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_alarmed_BYINV_997,
      O => Inst_codechecker_alarmed_DYMUX_998
    );
  Inst_codechecker_alarmed_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => Inst_codechecker_alarmed_BYINV_997
    );
  Inst_codechecker_alarmed_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_alarmed_or0000,
      O => Inst_codechecker_alarmed_SRINV_996
    );
  Inst_codechecker_alarmed_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_alarmed_CLKINV_995
    );
  Inst_codechecker_alarmed_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => sensors_INBUF,
      O => Inst_codechecker_alarmed_CEINV_994
    );
  Inst_codechecker_keys_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_keys(2),
      O => Inst_codechecker_keys_2_0
    );
  Inst_codechecker_Q1_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => keysin_1_INBUF,
      O => Inst_codechecker_Q1_1_DXMUX_1031
    );
  Inst_codechecker_Q1_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => keysin_0_INBUF,
      O => Inst_codechecker_Q1_1_DYMUX_1025
    );
  Inst_codechecker_Q1_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_Q1_1_SRINV_1023
    );
  Inst_codechecker_Q1_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_Q1_1_CLKINV_1022
    );
  Inst_codechecker_Q1_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => keysin_3_INBUF,
      O => Inst_codechecker_Q1_3_DXMUX_1051
    );
  Inst_codechecker_Q1_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => keysin_2_INBUF,
      O => Inst_codechecker_Q1_3_DYMUX_1045
    );
  Inst_codechecker_Q1_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_0,
      O => Inst_codechecker_Q1_3_SRINV_1043
    );
  Inst_codechecker_Q1_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => Inst_codechecker_Q1_3_CLKINV_1042
    );
  Inst_codechecker_state_FSM_FFd9 : X_SFF
    generic map(
      LOC => "SLICE_X19Y21",
      INIT => '1'
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd9_DXMUX_544,
      CE => VCC,
      CLK => Inst_codechecker_state_FSM_FFd9_CLKINV_528,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_state_FSM_FFd9_SRINV_529,
      O => Inst_codechecker_state_FSM_FFd9_291
    );
  Inst_codechecker_state_FSM_FFd9_In1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X19Y21"
    )
    port map (
      ADR0 => Inst_codechecker_state_FSM_FFd8_293,
      ADR1 => Inst_codechecker_state_cmp_eq0001_0,
      ADR2 => Inst_codechecker_state_FSM_FFd9_291,
      ADR3 => Inst_codechecker_state_cmp_eq0000,
      O => Inst_codechecker_state_FSM_FFd9_In
    );
  Inst_codechecker_state_FSM_FFd4 : X_SFF
    generic map(
      LOC => "SLICE_X19Y18",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd6_DYMUX_712,
      CE => VCC,
      CLK => Inst_codechecker_state_FSM_FFd6_CLKINV_703,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_state_FSM_FFd6_SRINV_704,
      O => Inst_codechecker_state_FSM_FFd4_313
    );
  Inst_codechecker_led_code_out_0 : X_SFF
    generic map(
      LOC => "SLICE_X18Y18",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_led_code_out_1_DYMUX_821,
      CE => VCC,
      CLK => Inst_codechecker_led_code_out_1_CLKINV_809,
      SET => GND,
      RST => GND,
      SSET => Inst_codechecker_led_code_out_1_REVUSED_822,
      SRST => Inst_codechecker_led_code_out_1_SRINV_810,
      O => Inst_codechecker_led_code_out(0)
    );
  RSTIN_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD60",
      PATHPULSE => 638 ps
    )
    port map (
      I => RSTIN_INBUF,
      O => RSTIN_IBUF_265
    );
  Inst_codechecker_state_FSM_FFd3_In12 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X18Y19"
    )
    port map (
      ADR0 => Inst_codechecker_state_FSM_FFd3_289,
      ADR1 => VCC,
      ADR2 => Inst_codechecker_state_FSM_FFd5_288,
      ADR3 => Inst_codechecker_state_cmp_eq0001_0,
      O => Inst_codechecker_state_FSM_FFd3_In11_466
    );
  Inst_codechecker_state_FSM_FFd3_In11 : X_LUT4
    generic map(
      INIT => X"AAF3",
      LOC => "SLICE_X18Y19"
    )
    port map (
      ADR0 => Inst_codechecker_state_FSM_FFd3_289,
      ADR1 => Inst_codechecker_state_cmp_eq0002,
      ADR2 => Inst_codechecker_state_FSM_FFd5_288,
      ADR3 => Inst_codechecker_state_cmp_eq0001_0,
      O => Inst_codechecker_state_FSM_FFd3_In1
    );
  Inst_codechecker_state_FSM_FFd3 : X_SFF
    generic map(
      LOC => "SLICE_X18Y19",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd3_DXMUX_477,
      CE => VCC,
      CLK => Inst_codechecker_state_FSM_FFd3_CLKINV_459,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_state_FSM_FFd3_SRINV_460,
      O => Inst_codechecker_state_FSM_FFd3_289
    );
  Inst_codechecker_state_FSM_FFd5_In12 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X19Y19"
    )
    port map (
      ADR0 => Inst_codechecker_state_cmp_eq0001_0,
      ADR1 => Inst_codechecker_state_FSM_FFd5_288,
      ADR2 => Inst_codechecker_state_FSM_FFd7_292,
      ADR3 => VCC,
      O => Inst_codechecker_state_FSM_FFd5_In11_500
    );
  Inst_codechecker_state_FSM_FFd5_In11 : X_LUT4
    generic map(
      INIT => X"D8DD",
      LOC => "SLICE_X19Y19"
    )
    port map (
      ADR0 => Inst_codechecker_state_cmp_eq0001_0,
      ADR1 => Inst_codechecker_state_FSM_FFd5_288,
      ADR2 => Inst_codechecker_state_FSM_FFd7_292,
      ADR3 => Inst_codechecker_state_cmp_eq0002,
      O => Inst_codechecker_state_FSM_FFd5_In1
    );
  Inst_codechecker_state_FSM_FFd5 : X_SFF
    generic map(
      LOC => "SLICE_X19Y19",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd5_DXMUX_511,
      CE => VCC,
      CLK => Inst_codechecker_state_FSM_FFd5_CLKINV_493,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_state_FSM_FFd5_SRINV_494,
      O => Inst_codechecker_state_FSM_FFd5_288
    );
  Inst_codechecker_state_FSM_FFd6_In1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X19Y18"
    )
    port map (
      ADR0 => Inst_codechecker_state_cmp_eq0001_0,
      ADR1 => Inst_codechecker_state_cmp_eq0002,
      ADR2 => Inst_codechecker_state_FSM_FFd9_291,
      ADR3 => Inst_codechecker_state_FSM_FFd6_285,
      O => Inst_codechecker_state_FSM_FFd6_In
    );
  Inst_codechecker_state_FSM_FFd2_In26 : X_LUT4
    generic map(
      INIT => X"AAA8",
      LOC => "SLICE_X18Y23"
    )
    port map (
      ADR0 => Inst_codechecker_state_FSM_FFd1_303,
      ADR1 => Inst_codechecker_keys(1),
      ADR2 => Inst_codechecker_keys_2_0,
      ADR3 => Inst_codechecker_keys(0),
      O => Inst_codechecker_state_FSM_FFd2_In26_568
    );
  Inst_codechecker_state_FSM_FFd2 : X_SFF
    generic map(
      LOC => "SLICE_X18Y23",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd2_DYMUX_571,
      CE => VCC,
      CLK => Inst_codechecker_state_FSM_FFd2_CLKINV_561,
      SET => GND,
      RST => GND,
      SSET => Inst_codechecker_state_FSM_FFd2_REVUSED_572,
      SRST => Inst_codechecker_state_FSM_FFd2_SRINV_562,
      O => Inst_codechecker_state_FSM_FFd2_304
    );
  Inst_codechecker_keys_1_1 : X_LUT4
    generic map(
      INIT => X"0088",
      LOC => "SLICE_X18Y23"
    )
    port map (
      ADR0 => Inst_codechecker_Q2(1),
      ADR1 => Inst_codechecker_Q1(1),
      ADR2 => VCC,
      ADR3 => Inst_codechecker_Q3(1),
      O => Inst_codechecker_keys_1_pack_1
    );
  Inst_codechecker_keys_0_1 : X_LUT4
    generic map(
      INIT => X"3000",
      LOC => "SLICE_X19Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_codechecker_Q3(0),
      ADR2 => Inst_codechecker_Q1(0),
      ADR3 => Inst_codechecker_Q2(0),
      O => Inst_codechecker_keys_0_pack_1
    );
  Inst_codechecker_state_cmp_eq00012 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X19Y22"
    )
    port map (
      ADR0 => Inst_codechecker_keys(3),
      ADR1 => Inst_codechecker_keys_2_0,
      ADR2 => Inst_codechecker_keys(1),
      ADR3 => Inst_codechecker_keys(0),
      O => Inst_codechecker_state_cmp_eq0001
    );
  Inst_codechecker_keys_3_1 : X_LUT4
    generic map(
      INIT => X"2020",
      LOC => "SLICE_X18Y22"
    )
    port map (
      ADR0 => Inst_codechecker_Q2(3),
      ADR1 => Inst_codechecker_Q3(3),
      ADR2 => Inst_codechecker_Q1(3),
      ADR3 => VCC,
      O => Inst_codechecker_keys_3_pack_1
    );
  Inst_codechecker_state_cmp_eq00021 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X19Y20"
    )
    port map (
      ADR0 => Inst_codechecker_keys_2_0,
      ADR1 => Inst_codechecker_keys(1),
      ADR2 => Inst_codechecker_keys(0),
      ADR3 => Inst_codechecker_keys(3),
      O => Inst_codechecker_state_cmp_eq0002_pack_2
    );
  Inst_codechecker_state_FSM_FFd8_In4 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X19Y20"
    )
    port map (
      ADR0 => Inst_codechecker_keys(0),
      ADR1 => Inst_codechecker_state_FSM_FFd3_289,
      ADR2 => Inst_codechecker_state_cmp_eq0002,
      ADR3 => Inst_codechecker_state_FSM_FFd1_303,
      O => Inst_codechecker_state_FSM_FFd8_In4_655
    );
  Inst_codechecker_state_FSM_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"E200",
      LOC => "SLICE_X18Y21"
    )
    port map (
      ADR0 => Inst_codechecker_state_FSM_FFd1_303,
      ADR1 => Inst_codechecker_keys(0),
      ADR2 => Inst_codechecker_state_FSM_FFd2_304,
      ADR3 => Inst_codechecker_N3_0,
      O => Inst_codechecker_state_FSM_FFd1_In
    );
  Inst_codechecker_state_FSM_FFd1 : X_SFF
    generic map(
      LOC => "SLICE_X18Y21",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd1_DYMUX_679,
      CE => VCC,
      CLK => Inst_codechecker_state_FSM_FFd1_CLKINV_670,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_state_FSM_FFd1_SRINV_671,
      O => Inst_codechecker_state_FSM_FFd1_303
    );
  Inst_codechecker_state_FSM_FFd2_In15 : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X18Y21"
    )
    port map (
      ADR0 => Inst_codechecker_state_FSM_FFd4_313,
      ADR1 => Inst_codechecker_keys(0),
      ADR2 => Inst_codechecker_state_FSM_FFd2_304,
      ADR3 => Inst_codechecker_N3_0,
      O => Inst_codechecker_state_FSM_FFd2_In15_688
    );
  Inst_codechecker_state_FSM_FFd6 : X_SFF
    generic map(
      LOC => "SLICE_X19Y18",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd6_DXMUX_724,
      CE => VCC,
      CLK => Inst_codechecker_state_FSM_FFd6_CLKINV_703,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_state_FSM_FFd6_SRINV_704,
      O => Inst_codechecker_state_FSM_FFd6_285
    );
  Inst_codechecker_state_FSM_FFd7_In1 : X_LUT4
    generic map(
      INIT => X"C5C0",
      LOC => "SLICE_X18Y20"
    )
    port map (
      ADR0 => Inst_codechecker_state_cmp_eq0000,
      ADR1 => Inst_codechecker_state_FSM_FFd7_292,
      ADR2 => Inst_codechecker_state_cmp_eq0001_0,
      ADR3 => Inst_codechecker_state_FSM_FFd8_293,
      O => Inst_codechecker_state_FSM_FFd7_In
    );
  Inst_codechecker_state_FSM_FFd7 : X_SFF
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd8_DYMUX_750,
      CE => VCC,
      CLK => Inst_codechecker_state_FSM_FFd8_CLKINV_741,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_state_FSM_FFd8_SRINV_742,
      O => Inst_codechecker_state_FSM_FFd7_292
    );
  Inst_codechecker_state_FSM_FFd8_In23 : X_LUT4
    generic map(
      INIT => X"F3FA",
      LOC => "SLICE_X18Y20"
    )
    port map (
      ADR0 => Inst_codechecker_state_FSM_FFd8_In11_0,
      ADR1 => N4_0,
      ADR2 => Inst_codechecker_state_FSM_FFd8_In4_0,
      ADR3 => Inst_codechecker_N3_0,
      O => Inst_codechecker_state_FSM_FFd8_In
    );
  Inst_codechecker_state_FSM_FFd8 : X_SFF
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_state_FSM_FFd8_DXMUX_762,
      CE => VCC,
      CLK => Inst_codechecker_state_FSM_FFd8_CLKINV_741,
      SET => GND,
      RST => GND,
      SSET => Inst_codechecker_state_FSM_FFd8_SRINV_742,
      SRST => GND,
      O => Inst_codechecker_state_FSM_FFd8_293
    );
  Inst_codechecker_state_FSM_Out61 : X_LUT4
    generic map(
      INIT => X"0505",
      LOC => "SLICE_X16Y19"
    )
    port map (
      ADR0 => Inst_codechecker_state_FSM_FFd2_304,
      ADR1 => VCC,
      ADR2 => Inst_codechecker_state_FSM_FFd1_303,
      ADR3 => VCC,
      O => Inst_codechecker_armed_led
    );
  Inst_codechecker_armed_ledout : X_SFF
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => '1'
    )
    port map (
      I => Inst_codechecker_armed_ledout_DYMUX_788,
      CE => VCC,
      CLK => Inst_codechecker_armed_ledout_CLKINV_777,
      SET => GND,
      RST => GND,
      SSET => Inst_codechecker_armed_ledout_SRINV_778,
      SRST => GND,
      O => Inst_codechecker_armed_ledout_267
    );
  Inst_codechecker_alarmed_or00001 : X_LUT4
    generic map(
      INIT => X"FEFF",
      LOC => "SLICE_X16Y19"
    )
    port map (
      ADR0 => Inst_codechecker_state_FSM_FFd2_304,
      ADR1 => Inst_codechecker_state_FSM_FFd1_303,
      ADR2 => RSTIN_IBUF_265,
      ADR3 => locked,
      O => Inst_codechecker_alarmed_or0000
    );
  Inst_codechecker_state_FSM_Out311 : X_LUT4
    generic map(
      INIT => X"FAFA",
      LOC => "SLICE_X18Y18"
    )
    port map (
      ADR0 => Inst_codechecker_state_FSM_FFd6_285,
      ADR1 => VCC,
      ADR2 => Inst_codechecker_state_FSM_FFd5_288,
      ADR3 => VCC,
      O => Inst_codechecker_state_FSM_Out31
    );
  Inst_codechecker_led_code_out_1 : X_SFF
    generic map(
      LOC => "SLICE_X18Y18",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_led_code_out_1_DXMUX_837,
      CE => VCC,
      CLK => Inst_codechecker_led_code_out_1_CLKINV_809,
      SET => GND,
      RST => GND,
      SSET => Inst_codechecker_led_code_out_1_REVUSED_822,
      SRST => Inst_codechecker_led_code_out_1_SRINV_810,
      O => Inst_codechecker_led_code_out(1)
    );
  Inst_codechecker_state_FSM_FFd8_In11 : X_LUT4
    generic map(
      INIT => X"FCFC",
      LOC => "SLICE_X20Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_codechecker_state_FSM_FFd3_289,
      ADR2 => Inst_codechecker_state_FSM_FFd4_313,
      ADR3 => VCC,
      O => Inst_codechecker_state_FSM_FFd8_In11_859
    );
  Inst_codechecker_led_code_out_2 : X_SFF
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_led_code_out_2_DYMUX_862,
      CE => VCC,
      CLK => Inst_codechecker_led_code_out_2_CLKINV_850,
      SET => GND,
      RST => GND,
      SSET => Inst_codechecker_led_code_out_2_REVUSED_863,
      SRST => Inst_codechecker_led_code_out_2_SRINV_851,
      O => Inst_codechecker_led_code_out(2)
    );
  Inst_codechecker_Q2_0 : X_SFF
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_Q2_1_DYMUX_878,
      CE => VCC,
      CLK => Inst_codechecker_Q2_1_CLKINV_875,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_Q2_1_SRINV_876,
      O => Inst_codechecker_Q2(0)
    );
  Inst_codechecker_Q2_2 : X_SFF
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_Q2_3_DYMUX_898,
      CE => VCC,
      CLK => Inst_codechecker_Q2_3_CLKINV_895,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_Q2_3_SRINV_896,
      O => Inst_codechecker_Q2(2)
    );
  Inst_codechecker_Q2_3 : X_SFF
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_Q2_3_DXMUX_904,
      CE => VCC,
      CLK => Inst_codechecker_Q2_3_CLKINV_895,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_Q2_3_SRINV_896,
      O => Inst_codechecker_Q2(3)
    );
  Inst_codechecker_Q3_0 : X_SFF
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_Q3_1_DYMUX_918,
      CE => VCC,
      CLK => Inst_codechecker_Q3_1_CLKINV_915,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_Q3_1_SRINV_916,
      O => Inst_codechecker_Q3(0)
    );
  Inst_codechecker_Q3_1 : X_SFF
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_Q3_1_DXMUX_924,
      CE => VCC,
      CLK => Inst_codechecker_Q3_1_CLKINV_915,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_Q3_1_SRINV_916,
      O => Inst_codechecker_Q3(1)
    );
  Inst_codechecker_Q3_2 : X_SFF
    generic map(
      LOC => "SLICE_X16Y23",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_Q3_3_DYMUX_938,
      CE => VCC,
      CLK => Inst_codechecker_Q3_3_CLKINV_935,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_Q3_3_SRINV_936,
      O => Inst_codechecker_Q3(2)
    );
  Inst_codechecker_disarmed_ledout : X_SFF
    generic map(
      LOC => "SLICE_X17Y19",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_disarmed_ledout_DXMUX_959,
      CE => VCC,
      CLK => Inst_codechecker_disarmed_ledout_CLKINV_954,
      SET => GND,
      RST => GND,
      SSET => Inst_codechecker_disarmed_ledout_REVUSED_957,
      SRST => Inst_codechecker_disarmed_ledout_SRINV_955,
      O => Inst_codechecker_disarmed_ledout_266
    );
  Inst_codechecker_state_FSM_FFd8_In21_SW0 : X_LUT4
    generic map(
      INIT => X"7555",
      LOC => "SLICE_X19Y23"
    )
    port map (
      ADR0 => Inst_codechecker_state_FSM_FFd8_293,
      ADR1 => Inst_codechecker_Q3(0),
      ADR2 => Inst_codechecker_Q1(0),
      ADR3 => Inst_codechecker_Q2(0),
      O => N4
    );
  rst1 : X_LUT4
    generic map(
      INIT => X"DDDD",
      LOC => "SLICE_X17Y20"
    )
    port map (
      ADR0 => locked,
      ADR1 => RSTIN_IBUF_265,
      ADR2 => VCC,
      ADR3 => VCC,
      O => rst
    );
  Inst_codechecker_alarmed : X_SFF
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_alarmed_DYMUX_998,
      CE => Inst_codechecker_alarmed_CEINV_994,
      CLK => Inst_codechecker_alarmed_CLKINV_995,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_alarmed_SRINV_996,
      O => Inst_codechecker_alarmed_277
    );
  Inst_codechecker_keys_2_1 : X_LUT4
    generic map(
      INIT => X"5000",
      LOC => "SLICE_X17Y22"
    )
    port map (
      ADR0 => Inst_codechecker_Q3(2),
      ADR1 => VCC,
      ADR2 => Inst_codechecker_Q1(2),
      ADR3 => Inst_codechecker_Q2(2),
      O => Inst_codechecker_keys(2)
    );
  Inst_codechecker_Q1_0 : X_SFF
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_Q1_1_DYMUX_1025,
      CE => VCC,
      CLK => Inst_codechecker_Q1_1_CLKINV_1022,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_Q1_1_SRINV_1023,
      O => Inst_codechecker_Q1(0)
    );
  Inst_codechecker_Q1_1 : X_SFF
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_Q1_1_DXMUX_1031,
      CE => VCC,
      CLK => Inst_codechecker_Q1_1_CLKINV_1022,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_Q1_1_SRINV_1023,
      O => Inst_codechecker_Q1(1)
    );
  Inst_codechecker_Q1_2 : X_SFF
    generic map(
      LOC => "SLICE_X17Y23",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_Q1_3_DYMUX_1045,
      CE => VCC,
      CLK => Inst_codechecker_Q1_3_CLKINV_1042,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_Q1_3_SRINV_1043,
      O => Inst_codechecker_Q1(2)
    );
  Inst_codechecker_Q1_3 : X_SFF
    generic map(
      LOC => "SLICE_X17Y23",
      INIT => '0'
    )
    port map (
      I => Inst_codechecker_Q1_3_DXMUX_1051,
      CE => VCC,
      CLK => Inst_codechecker_Q1_3_CLKINV_1042,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_codechecker_Q1_3_SRINV_1043,
      O => Inst_codechecker_Q1(3)
    );
  disarmed_ledout_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_disarmed_ledout_266,
      O => disarmed_ledout_O
    );
  armed_ledout_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_armed_ledout_267,
      O => armed_ledout_O
    );
  led_code_out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_led_code_out(0),
      O => led_code_out_0_O
    );
  led_code_out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_led_code_out(1),
      O => led_code_out_1_O
    );
  led_code_out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_led_code_out(2),
      O => led_code_out_2_O
    );
  alarm_out_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_codechecker_alarmed_277,
      O => alarm_out_O
    );
  NlwBufferBlock_Inst_myclock_DCM_SP_INST_RST : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RSTIN_IBUF_265,
      O => NlwBufferSignal_Inst_myclock_DCM_SP_INST_RST
    );
  NlwBlock_TOP_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_TOP_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

