## Generated SDC file "DE10_Standard_FB.out.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

## DATE    "Mon Jul 15 23:50:57 2019"

##
## DEVICE  "5CSXFC6D6F31C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 40.000 -waveform { 0.000 20.000 } [get_ports {altera_reserved_tck}]
create_clock -name {CLOCK2_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK2_50}]
create_clock -name {CLOCK3_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK3_50}]
create_clock -name {CLOCK4_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK4_50}]
create_clock -name {CLOCK_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50}]
create_clock -name {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk} -period 2.500 -waveform { 1.875 3.125 } [get_registers {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk}]
create_clock -name {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} -period 2.500 -waveform { 0.000 1.250 } [get_registers {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}]
create_clock -name {HPS_DDR3_DQS_P[0]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {HPS_DDR3_DQS_P[0]}] -add
create_clock -name {HPS_DDR3_DQS_P[1]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {HPS_DDR3_DQS_P[1]}] -add
create_clock -name {HPS_DDR3_DQS_P[2]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {HPS_DDR3_DQS_P[2]}] -add
create_clock -name {HPS_DDR3_DQS_P[3]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {HPS_DDR3_DQS_P[3]}] -add
create_clock -name {DCO} -period 6.666 -waveform { 0.000 3.333 } [get_ports {ADA_DCO ADB_DCO}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]} -source [get_pins {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 12 -divide_by 2 -master_clock {CLOCK_50} [get_pins {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 3 -master_clock {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]} [get_pins {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 3 -phase 180/1 -master_clock {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]} [get_pins {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 3 -phase 270/1 -master_clock {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]} [get_pins {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock} -source [get_registers {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_registers {u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[*].ubidir_dq_dqs|altdq_dqs2_inst|dqs_enable_ctrl~DQSENABLEOUT_DFF}] 
create_generated_clock -name {HPS_DDR3_CK_P} -source [get_registers {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR3_CK_P}] 
create_generated_clock -name {HPS_DDR3_CK_N} -source [get_registers {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} -invert [get_ports {HPS_DDR3_CK_N}] 
create_generated_clock -name {HPS_DDR3_DQS_P[0]_OUT} -source [get_registers {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR3_DQS_P[0]}] -add
create_generated_clock -name {HPS_DDR3_DQS_P[1]_OUT} -source [get_registers {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR3_DQS_P[1]}] -add
create_generated_clock -name {HPS_DDR3_DQS_P[2]_OUT} -source [get_registers {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR3_DQS_P[2]}] -add
create_generated_clock -name {HPS_DDR3_DQS_P[3]_OUT} -source [get_registers {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR3_DQS_P[3]}] -add
create_generated_clock -name {HPS_DDR3_DQS_N[0]_OUT} -source [get_registers {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR3_DQS_N[0]}] 
create_generated_clock -name {HPS_DDR3_DQS_N[1]_OUT} -source [get_registers {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR3_DQS_N[1]}] 
create_generated_clock -name {HPS_DDR3_DQS_N[2]_OUT} -source [get_registers {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR3_DQS_N[2]}] 
create_generated_clock -name {HPS_DDR3_DQS_N[3]_OUT} -source [get_registers {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR3_DQS_N[3]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_N}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_CK_P}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK3_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK4_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK2_50}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[3]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[3]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[3]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[3]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {CLOCK_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {CLOCK3_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {CLOCK4_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {CLOCK2_50}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060  
set_clock_uncertainty -rise_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060  
set_clock_uncertainty -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {CLOCK_50}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {CLOCK_50}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {CLOCK_50}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {CLOCK_50}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {DCO}]  0.170  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {DCO}]  0.170  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {CLOCK_50}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {CLOCK_50}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {CLOCK_50}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {CLOCK_50}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {DCO}]  0.170  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {DCO}]  0.170  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {DCO}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.190  
set_clock_uncertainty -rise_from [get_clocks {DCO}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.190  
set_clock_uncertainty -rise_from [get_clocks {DCO}] -rise_to [get_clocks {DCO}]  0.170  
set_clock_uncertainty -rise_from [get_clocks {DCO}] -fall_to [get_clocks {DCO}]  0.170  
set_clock_uncertainty -fall_from [get_clocks {DCO}] -rise_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.190  
set_clock_uncertainty -fall_from [get_clocks {DCO}] -fall_to [get_clocks {DCC_TOP_ins|pll_inst|lpm_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]  0.190  
set_clock_uncertainty -fall_from [get_clocks {DCO}] -rise_to [get_clocks {DCO}]  0.170  
set_clock_uncertainty -fall_from [get_clocks {DCO}] -fall_to [get_clocks {DCO}]  0.170  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[0]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[0]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[1]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[1]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[2]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[2]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[3]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[3]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[4]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[4]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[5]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[5]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[6]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[6]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[7]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[7]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[8]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[8]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[9]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[9]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[10]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[10]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[11]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[11]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[12]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[12]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[13]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[13]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[14]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[14]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[15]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[15]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[16]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[16]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[17]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[17]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[18]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[18]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[19]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[19]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[20]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[20]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[21]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[21]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[22]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[22]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[23]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[23]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[24]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[24]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[25]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[25]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[26]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[26]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[27]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[27]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[28]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[28]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[29]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[29]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[30]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[30]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  0.198 [get_ports {HPS_DDR3_DQ[31]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_IN}]  -0.206 [get_ports {HPS_DDR3_DQ[31]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {altera_reserved_tck}]  3.000 [get_ports {altera_reserved_tdi}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {altera_reserved_tck}]  3.000 [get_ports {altera_reserved_tms}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[0]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[1]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[1]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[2]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[2]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[3]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[3]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[4]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[4]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[5]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[5]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[6]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[6]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[7]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[7]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[8]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[8]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[9]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[9]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[10]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[10]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[11]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[11]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[12]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[12]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[13]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[13]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ADDR[14]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ADDR[14]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_BA[0]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_BA[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_BA[1]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_BA[1]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_BA[2]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_BA[2]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_CAS_N}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_CAS_N}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_CKE}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_CKE}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_CS_N}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_CS_N}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DM[0]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DM[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DM[0]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DM[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DM[1]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DM[1]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DM[1]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DM[1]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DM[2]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DM[2]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DM[2]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DM[2]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DM[3]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DM[3]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DM[3]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DM[3]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.503 [get_ports {HPS_DDR3_DQS_P[0]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  0.818 [get_ports {HPS_DDR3_DQS_P[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.503 [get_ports {HPS_DDR3_DQS_P[1]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  0.818 [get_ports {HPS_DDR3_DQS_P[1]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.503 [get_ports {HPS_DDR3_DQS_P[2]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  0.818 [get_ports {HPS_DDR3_DQS_P[2]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.503 [get_ports {HPS_DDR3_DQS_P[3]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  0.818 [get_ports {HPS_DDR3_DQS_P[3]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[0]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[0]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[1]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[1]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[1]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[1]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[2]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[2]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[2]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[2]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[3]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[3]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[3]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[3]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[4]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[4]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[4]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[4]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[5]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[5]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[5]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[5]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[6]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[6]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[6]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[6]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[7]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[7]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[7]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[7]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[8]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[8]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[8]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[8]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[9]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[9]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[9]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[9]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[10]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[10]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[10]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[10]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[11]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[11]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[11]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[11]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[12]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[12]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[12]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[12]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[13]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[13]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[13]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[13]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[14]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[14]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[14]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[14]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[15]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[15]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[15]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[15]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[16]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[16]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[16]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[16]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[17]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[17]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[17]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[17]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[18]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[18]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[18]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[18]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[19]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[19]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[19]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[19]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[20]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[20]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[20]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[20]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[21]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[21]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[21]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[21]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[22]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[22]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[22]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[22]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[23]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[23]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[23]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[23]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[24]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[24]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[24]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[24]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[25]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[25]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[25]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[25]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[26]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[26]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[26]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[26]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[27]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[27]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[27]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[27]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[28]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[28]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[28]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[28]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[29]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[29]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[29]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[29]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[30]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[30]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[30]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[30]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[31]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_N[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[31]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  0.381 [get_ports {HPS_DDR3_DQ[31]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]  -0.262 [get_ports {HPS_DDR3_DQ[31]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_ODT}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_ODT}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_RAS_N}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_RAS_N}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR3_CK_P}]  1.620 [get_ports {HPS_DDR3_WE_N}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR3_CK_P}]  1.000 [get_ports {HPS_DDR3_WE_N}]
set_output_delay -add_delay  -clock [get_clocks {altera_reserved_tck}]  3.000 [get_ports {altera_reserved_tdo}]


#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {  CLOCK_50  }] -group [get_clocks {  altera_ts_clk  }] 
set_clock_groups -physically_exclusive -group [get_clocks {HPS_DDR3_DQS_P[0]_IN}] -group [get_clocks {HPS_DDR3_DQS_P[0]_OUT HPS_DDR3_DQS_N[0]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {HPS_DDR3_DQS_P[1]_IN}] -group [get_clocks {HPS_DDR3_DQS_P[1]_OUT HPS_DDR3_DQS_N[1]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {HPS_DDR3_DQS_P[2]_IN}] -group [get_clocks {HPS_DDR3_DQS_P[2]_OUT HPS_DDR3_DQS_N[2]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {HPS_DDR3_DQS_P[3]_IN}] -group [get_clocks {HPS_DDR3_DQS_P[3]_OUT HPS_DDR3_DQS_N[3]_OUT}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path  -fall_from  [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  -to  [get_clocks {HPS_DDR3_CK_P}]
set_false_path  -from  [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  -to  [get_clocks {*_IN}]
set_false_path  -from  [get_clocks *]  -to  [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|jupdate}] -to [get_registers {*|alt_jtag_atlantic:*|jupdate1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rdata[*]}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read}] -to [get_registers {*|alt_jtag_atlantic:*|read1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read_req}] 
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rvalid}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|t_dav}] -to [get_registers {*|alt_jtag_atlantic:*|tck_t_dav}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|user_saw_rvalid}] -to [get_registers {*|alt_jtag_atlantic:*|rvalid0*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|wdata[*]}] -to [all_registers]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write}] -to [get_registers {*|alt_jtag_atlantic:*|write1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_ena*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_pause*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_valid}] 
set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -from [get_keepers {altera_reserved_tdi}] -to [get_keepers {pzdyqx*}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]
set_false_path -from [get_keepers {*soc_system_nios2_gen2_cpu:*|soc_system_nios2_gen2_cpu_nios2_oci:the_soc_system_nios2_gen2_cpu_nios2_oci|soc_system_nios2_gen2_cpu_nios2_oci_break:the_soc_system_nios2_gen2_cpu_nios2_oci_break|break_readreg*}] -to [get_keepers {*soc_system_nios2_gen2_cpu:*|soc_system_nios2_gen2_cpu_nios2_oci:the_soc_system_nios2_gen2_cpu_nios2_oci|soc_system_nios2_gen2_cpu_debug_slave_wrapper:the_soc_system_nios2_gen2_cpu_debug_slave_wrapper|soc_system_nios2_gen2_cpu_debug_slave_tck:the_soc_system_nios2_gen2_cpu_debug_slave_tck|*sr*}]
set_false_path -from [get_keepers {*soc_system_nios2_gen2_cpu:*|soc_system_nios2_gen2_cpu_nios2_oci:the_soc_system_nios2_gen2_cpu_nios2_oci|soc_system_nios2_gen2_cpu_nios2_oci_debug:the_soc_system_nios2_gen2_cpu_nios2_oci_debug|*resetlatch}] -to [get_keepers {*soc_system_nios2_gen2_cpu:*|soc_system_nios2_gen2_cpu_nios2_oci:the_soc_system_nios2_gen2_cpu_nios2_oci|soc_system_nios2_gen2_cpu_debug_slave_wrapper:the_soc_system_nios2_gen2_cpu_debug_slave_wrapper|soc_system_nios2_gen2_cpu_debug_slave_tck:the_soc_system_nios2_gen2_cpu_debug_slave_tck|*sr[33]}]
set_false_path -from [get_keepers {*soc_system_nios2_gen2_cpu:*|soc_system_nios2_gen2_cpu_nios2_oci:the_soc_system_nios2_gen2_cpu_nios2_oci|soc_system_nios2_gen2_cpu_nios2_oci_debug:the_soc_system_nios2_gen2_cpu_nios2_oci_debug|monitor_ready}] -to [get_keepers {*soc_system_nios2_gen2_cpu:*|soc_system_nios2_gen2_cpu_nios2_oci:the_soc_system_nios2_gen2_cpu_nios2_oci|soc_system_nios2_gen2_cpu_debug_slave_wrapper:the_soc_system_nios2_gen2_cpu_debug_slave_wrapper|soc_system_nios2_gen2_cpu_debug_slave_tck:the_soc_system_nios2_gen2_cpu_debug_slave_tck|*sr[0]}]
set_false_path -from [get_keepers {*soc_system_nios2_gen2_cpu:*|soc_system_nios2_gen2_cpu_nios2_oci:the_soc_system_nios2_gen2_cpu_nios2_oci|soc_system_nios2_gen2_cpu_nios2_oci_debug:the_soc_system_nios2_gen2_cpu_nios2_oci_debug|monitor_error}] -to [get_keepers {*soc_system_nios2_gen2_cpu:*|soc_system_nios2_gen2_cpu_nios2_oci:the_soc_system_nios2_gen2_cpu_nios2_oci|soc_system_nios2_gen2_cpu_debug_slave_wrapper:the_soc_system_nios2_gen2_cpu_debug_slave_wrapper|soc_system_nios2_gen2_cpu_debug_slave_tck:the_soc_system_nios2_gen2_cpu_debug_slave_tck|*sr[34]}]
set_false_path -from [get_keepers {*soc_system_nios2_gen2_cpu:*|soc_system_nios2_gen2_cpu_nios2_oci:the_soc_system_nios2_gen2_cpu_nios2_oci|soc_system_nios2_gen2_cpu_nios2_ocimem:the_soc_system_nios2_gen2_cpu_nios2_ocimem|*MonDReg*}] -to [get_keepers {*soc_system_nios2_gen2_cpu:*|soc_system_nios2_gen2_cpu_nios2_oci:the_soc_system_nios2_gen2_cpu_nios2_oci|soc_system_nios2_gen2_cpu_debug_slave_wrapper:the_soc_system_nios2_gen2_cpu_debug_slave_wrapper|soc_system_nios2_gen2_cpu_debug_slave_tck:the_soc_system_nios2_gen2_cpu_debug_slave_tck|*sr*}]
set_false_path -from [get_keepers {*soc_system_nios2_gen2_cpu:*|soc_system_nios2_gen2_cpu_nios2_oci:the_soc_system_nios2_gen2_cpu_nios2_oci|soc_system_nios2_gen2_cpu_debug_slave_wrapper:the_soc_system_nios2_gen2_cpu_debug_slave_wrapper|soc_system_nios2_gen2_cpu_debug_slave_tck:the_soc_system_nios2_gen2_cpu_debug_slave_tck|*sr*}] -to [get_keepers {*soc_system_nios2_gen2_cpu:*|soc_system_nios2_gen2_cpu_nios2_oci:the_soc_system_nios2_gen2_cpu_nios2_oci|soc_system_nios2_gen2_cpu_debug_slave_wrapper:the_soc_system_nios2_gen2_cpu_debug_slave_wrapper|soc_system_nios2_gen2_cpu_debug_slave_sysclk:the_soc_system_nios2_gen2_cpu_debug_slave_sysclk|*jdo*}]
set_false_path -from [get_keepers {sld_hub:*|irf_reg*}] -to [get_keepers {*soc_system_nios2_gen2_cpu:*|soc_system_nios2_gen2_cpu_nios2_oci:the_soc_system_nios2_gen2_cpu_nios2_oci|soc_system_nios2_gen2_cpu_debug_slave_wrapper:the_soc_system_nios2_gen2_cpu_debug_slave_wrapper|soc_system_nios2_gen2_cpu_debug_slave_sysclk:the_soc_system_nios2_gen2_cpu_debug_slave_sysclk|ir*}]
set_false_path -from [get_keepers {sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1]}] -to [get_keepers {*soc_system_nios2_gen2_cpu:*|soc_system_nios2_gen2_cpu_nios2_oci:the_soc_system_nios2_gen2_cpu_nios2_oci|soc_system_nios2_gen2_cpu_nios2_oci_debug:the_soc_system_nios2_gen2_cpu_nios2_oci_debug|monitor_go}]
set_false_path -fall_from [get_clocks {soc_system:u0|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -to [get_ports {{HPS_DDR3_ADDR[0]} {HPS_DDR3_ADDR[10]} {HPS_DDR3_ADDR[11]} {HPS_DDR3_ADDR[12]} {HPS_DDR3_ADDR[13]} {HPS_DDR3_ADDR[14]} {HPS_DDR3_ADDR[1]} {HPS_DDR3_ADDR[2]} {HPS_DDR3_ADDR[3]} {HPS_DDR3_ADDR[4]} {HPS_DDR3_ADDR[5]} {HPS_DDR3_ADDR[6]} {HPS_DDR3_ADDR[7]} {HPS_DDR3_ADDR[8]} {HPS_DDR3_ADDR[9]} {HPS_DDR3_BA[0]} {HPS_DDR3_BA[1]} {HPS_DDR3_BA[2]} HPS_DDR3_CAS_N HPS_DDR3_CKE HPS_DDR3_CS_N HPS_DDR3_ODT HPS_DDR3_RAS_N HPS_DDR3_WE_N}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_DFF}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_DFF}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*vfifo~INC_WR_PTR_DFF}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|vfifo~QVLD_IN_DFF}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_OUT_RDATA_VALID_DFF}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|vfifo~QVLD_IN_DFF}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~RD_LATENCY_DFF*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*altdq_dqs2_inst|*output_path_gen[*].ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*altdq_dqs2_inst|extra_output_pad_gen[*].ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*phase_align_os~DFF*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|*read_fifo~OUTPUT_DFF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -to [get_ports {HPS_DDR3_DQS_N[0]}]
set_false_path -to [get_ports {HPS_DDR3_DQS_N[1]}]
set_false_path -to [get_ports {HPS_DDR3_DQS_N[2]}]
set_false_path -to [get_ports {HPS_DDR3_DQS_N[3]}]
set_false_path -to [get_ports {HPS_DDR3_CK_P}]
set_false_path -to [get_ports {HPS_DDR3_CK_N}]
set_false_path -to [get_ports {HPS_DDR3_RESET_N}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {HPS_DDR3_DQS_P[0]_OUT}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {HPS_DDR3_DQS_P[1]_OUT}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {HPS_DDR3_DQS_P[2]_OUT}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {HPS_DDR3_DQS_P[3]_OUT}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|dqs_enable_ctrl~*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|dqs_delay_chain~POSTAMBLE_DFF}]


#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -setup -end -from  [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  -to  [get_clocks *] 2
set_multicycle_path -hold -end -from  [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  -to  [get_clocks *] 2
set_multicycle_path -setup -end -to [get_registers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*clock_gen[*].umem_ck_pad|*}] 4
set_multicycle_path -hold -end -to [get_registers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*clock_gen[*].umem_ck_pad|*}] 4
set_multicycle_path -setup -end -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_FULL_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_FULL_DFF}] 1
set_multicycle_path -setup -end -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}] 1


#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_ports {HPS_DDR3_DQ[0]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[1]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[2]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[3]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[4]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[5]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[6]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[7]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[8]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[9]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[10]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[11]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[12]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[13]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[14]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[15]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[16]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[17]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[18]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[19]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[20]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[21]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[22]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[23]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[24]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[25]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[26]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[27]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[28]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[29]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[30]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR3_DQ[31]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [get_ports {HPS_DDR3_DQ[0]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[1]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[2]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[3]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[4]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[5]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[6]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[7]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[8]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[9]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[10]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[11]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[12]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[13]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[14]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[15]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[16]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[17]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[18]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[19]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[20]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[21]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[22]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[23]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[24]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[25]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[26]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[27]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[28]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[29]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[30]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR3_DQ[31]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250


#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Disable Timing
#**************************************************************

set_disable_timing -from * -to * [get_cells -hierarchical {QXXQ6833_0}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_0}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_1}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_2}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_3}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_4}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_5}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_6}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_7}]
set_disable_timing -from * -to * [get_cells -hierarchical {BITP7563_0}]
