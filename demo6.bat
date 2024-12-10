:: batch file to demonstrate using prompts  
:: By: JJ on 16OCT24
:: Initial file: 03JAN18 by JOR
:: Filename: Demo6.bat
:: every command is followed by its description 

@echo off
cls
:: Clears the screen.
title JJ’s script to list files according to file size and save it to a file
::set the title of the command prompt window.
echo "*******************************************"
::Displays messages 

echo This batch file will list out the contents of the directory its run from.
echo contents will be sorted by their size and then saved to a file to a file named by user.
echo "*******************************************"

set /p filename=enter the filename to which output is to be saved
::asks user for input
echo output will be saved to  %filename%
dir /o-s
dir /o-s  > %filename% 
::lists contents of the directory, /o sorts the output ,-s option to sort in descending order, > redirects the output to the mentioned file
