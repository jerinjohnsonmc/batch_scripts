:: batch file to demonstrate using errorlevels another way  
:: By: JJ on 16OCT24
:: Initial file: 03JAN18 by JOR
:: Filename: Demo9.bat
:: every command is followed by its description 
@echo off
cls
:: Clears the screen.
title JJ’s script to list and move all the text files in a directory to an output directory
::set the title of the command prompt window.
echo "*******************************************"
::Displays messages 

echo This batch file will list and move all the text files in a directory its run from, to an output directory.with error checking
echo "*******************************************"
for %%a in (*.txt) do  %%a will be moved
:: lists all the text files
copy "*.txt" "%~dp0output\" && echo Moved text files successfully
echo .
echo .
copy "*.txt" "%~dp0output\" || echo Moving of  text files failed
::copies all the text files to out directory, %~dp0 is the directory where the batch file is ran

del "*.txt"