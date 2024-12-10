:: batch file to demonstrate usage of commands and piping 
:: By: JJ on 16OCT24
:: Initial file: 03JAN18 by JOR
:: Filename: Demo1.bat
:: every command is followed by its description 
@echo off
::Displays messages, or turns command-echoing on or off.
::  ECHO [ON | OFF]
::  ECHO [message]
::  Type ECHO without parameters to display the current echo setting.
::  The @ sign make the command apply to itself
cls
:: Clears the screen.

ipconfig /all | FINDSTR  "Desc IPv4"
::ipconfig lists all network adaptors and their details ,we pipe it into the input of findstr command which lists the lines containing the search terms
