@echo off
REM ****************************************************************************
REM Vivado (TM) v2024.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : AMD Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Oct 02 16:33:23 +0200 2024
REM SW Build 5076996 on Wed May 22 18:37:14 MDT 2024
REM
REM Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
REM Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim TB_sine_calculator_time_synth -key {Post-Synthesis:sim_1:Timing:TB_sine_calculator} -tclbatch TB_sine_calculator.tcl -log simulate.log"
call xsim  TB_sine_calculator_time_synth -key {Post-Synthesis:sim_1:Timing:TB_sine_calculator} -tclbatch TB_sine_calculator.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0