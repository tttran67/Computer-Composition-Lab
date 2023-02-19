@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim tb_behav -key {Behavioral:sim_1:Functional:tb} -tclbatch tb.tcl -view D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
