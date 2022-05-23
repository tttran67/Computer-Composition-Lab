@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 43f1a7a1cb38464f97565a7a04720fb1 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot testbench_behav xil_defaultlib.testbench xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
