:: batch file to demonstrate giving information to user and then doing a task 
:: By: JJ on 16OCT24
:: Initial file: 03JAN18 by JOR
:: Filename: Demo2.bat
:: every command is followed by its description 

@echo off
cls
:: Clears the screen.
title JJ’s script to list files according to file size
::set the title of the command prompt window.
echo "*******************************************"
::Displays messages 

echo This batch file will list out the contents of the directory its run from.
echo contents will be sorted by their size.
echo "*******************************************"
dir /o-s
::lists contents of the directory, /o sorts the output ,-s option to sort in descending order



