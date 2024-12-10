:: batch file to demonstrate using arguments  
:: By: JJ on 16OCT24
:: Initial file: 03JAN18 by JOR
:: Filename: Demo5.bat
:: every command is followed by its description 
@echo off

if  [%1]==[] (
echo supply file name as first argument and foldername as second argument
pause
EXIT
)
:: if statement to check whether arguments are present and stop script if they are not present
if  [%2]==[] (
echo supply file name as first argument and foldername as second argument
pause
EXIT
)


:: Clears the screen.
title JJ’s script to list files according to file size and save it to a file named as an argument
::set the title of the command prompt window.
echo "*******************************************"
::Displays messages 

echo This batch file will list out the contents of the directory its run from.
echo contents will be sorted by their size and then saved to a file named in argument1  inside the folder named in argument2.
echo "*******************************************"

echo *** This will list files according to file size and save it to a file named in argument1  inside the folder named in argument2 ***
echo *** press [ctrl][c] to exit or any key to continue ***
pause 
:: pause command pauses the script untill the user presses any key and then script continues.

SETLOCAL
::localizes variables to current script

SET foldername=%2
::sets the variable to the value given
SET filename=%1
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
