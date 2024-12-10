:: batch file to demonstrate for loop structure 
:: By: JJ on 16OCT24
:: Initial file: 03JAN18 by JOR
:: Filename: Demo11.cmd
:: every command is followed by its description 

@echo off
cls
title JJ's batch file counter
echo *******************************************
echo This batch file list and count all the batch files in the directory
echo *******************************************

:: Iterate through all the batch files in the current directory
echo Analysing %CD%
set /a mycount = 0
:: setting counter
FOR %%I IN (*.bat) DO ( @ECHO Filename=%%I
set /a mycount = mycount + 1
:: incrementing counter )
echo you have %mycount% batch files
echo *******************************************
