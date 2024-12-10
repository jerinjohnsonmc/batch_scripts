:: batch file to demonstrate using if/else constructs  
:: By: JJ on 16OCT24
:: Initial file: 03JAN18 by JOR
:: Filename: Demo7.bat
:: every command is followed by its description 

@echo off
cls
:: Clears the screen.
title JJ’s script to list files according to file size and save it to a file
::set the title of the command prompt window.
echo "*******************************************"
::Displays messages 

echo This batch file will list out the contents of the directory its run from.
echo contents will be sorted by their size and then saved to a file to a file named by user while checking the existence of the file.
echo "*******************************************"

set /p filename=enter the filename to which output is to be saved
::asks user for input
echo output will be saved to  %filename%


If exist %filename% ( echo %filename% exists appending output to %filename% 
	dir /o-s 
	dir /o-s  >> %filename% ) else ( echo No file named %filename% creating the file and writing output
	dir /o-s
    dir /o-s  > %filename% )
	::lists contents of the directory, /o sorts the output ,-s option to sort in descending order, > redirects the output to the mentioned file
	:: if statement checks the existence of file and appends the output to it if it exists, else it creates the file and write output to it
