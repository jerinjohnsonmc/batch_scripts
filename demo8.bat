:: batch file to demonstrate using errorlevels  
:: By: JJ on 16OCT24
:: Initial file: 03JAN18 by JOR
:: Filename: Demo8.bat
:: every command is followed by its description 

@echo off
cls
:: Clears the screen.
title JJ’s script to list and move all the text files in a directory to an output directory
::set the title of the command prompt window.
echo "*******************************************"
::Displays messages 

echo This batch file will list and move all the text files in a directory its run from, to an output directory.with errorlevel check
echo "*******************************************"
for %%a in (*.txt) do  echo %%a will be moved
:: lists all the text files
copy "*.txt" "%~dp0output\"
::copies all the text files to out directory, %~dp0 is the directory where the batch file is ran
IF %ERRORLEVEL% NEQ 0 (
 echo The error level was %ERRORLEVEL% and no files were moved.
)
::checks the error level of previous command and reports  it
del "*.txt"

:: deletes all the text files after copying
