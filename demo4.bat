:: batch file to demonstrate setting local variables and using them for tasks 
:: By: JJ on 16OCT24
:: Initial file: 03JAN18 by JOR
:: Filename: Demo4.bat
:: every command is followed by its description 

@echo off
cls
:: Clears the screen.
title JJ’s script to list files according to file size and save it to a file named as a variable
::set the title of the command prompt window.
echo "*******************************************"
::Displays messages 

echo This batch file will list out the contents of the directory its run from.
echo contents will be sorted by their size and then saved to a file named in the filename variable inside the folder named in foldername variable.
echo "*******************************************"

echo *** This will list files according to file size and save it to a file named in the filename variable inside the folder named in foldername variable ***
echo *** press [ctrl][c] to exit or any key to continue ***
pause 
:: pause command pauses the script untill the user presses any key and then script continues.

SETLOCAL
::localizes variables to current script

SET foldername=output
::sets the variable to the value given
SET filename=directory_contents.txt
echo Path to output file is %foldername%/%filename%

SET cnt=0
FOR %%A IN (*) DO SET /a cnt+=1
::for loop to count all the files and set the cnt variable,/a option is used if the value needs to be numeric in nature. 
echo number of files in the current directory is %cnt%
if not exist %foldername% mkdir %foldername%
::creates the output folder if it does not exist
dir /o-s
dir /o-s  > %foldername%/%filename% 
::lists contents of the directory, /o sorts the output ,-s option to sort in descending order, > redirects the output to the mentioned file
ENDLOCAL
::ends variable assignments

