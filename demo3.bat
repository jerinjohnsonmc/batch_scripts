:: batch file to demonstrate to warn the user before doing a task 
:: By: JJ on 16OCT24
:: Initial file: 03JAN18 by JOR
:: Filename: Demo3.bat
:: every command is followed by its description 

@echo off
cls
:: Clears the screen.
title JJ’s script to list files according to file size and save it to a file
::set the title of the command prompt window.
echo "*******************************************"
::Displays messages 

echo This batch file will list out the contents of the directory its run from.
echo contents will be sorted by their size and then saved to a file called directory_contents.txt.
echo "*******************************************"

echo *** This will list files according to file size and save it to a file ***
echo *** press [ctrl][c] to exit or any key to continue ***
pause 
:: pause command pauses the script untill the user presses any key and then script continues.
dir /o-s
dir /o-s  > directory_contents.txt 
::lists contents of the directory, /o sorts the output ,-s option to sort in descending order, > redirects the output to the mentioned file
