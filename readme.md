# Batch Files in Windows

![Logo](logo.png)

Batch files are simple text files containing commands that are executed by the Windows Command Prompt. This Repo contains batchfiles which is used to demonstrate use of various how-tos
## Files

| Filenames   | How To |
|-------------|-------------|
| demo1.bat  |   use of commands and piping          |
| demo2.bat  |   give information to user and then doing a task          |
| demo3.bat  |   warn the user before doing a task          |
| demo4.bat  |   set local variables and using them for tasks          |
| demo5.bat  |   use arguments          |
| demo6.bat  |   use prompts          |
| demo7.bat  |   use if/else constructs          |
| demo8.bat  |   use errorlevels          |
| demo9.bat  |   A different way of using errorlevels          |
| demo10.bat |   use logging          |
| demo11.bat |   demonstrate for loop structure          |


## Batch file parameters 


Batch file can recieve parameters when it is called. %0  is used to represent the batch file itself,and %1-%9 for actual parameters. The Syntax of Parameter Replacement is in the table below



| Code | Description |
| -----|------------ |
| %* | Refers to all the arguments (e.g. %1 %2 %3 %4 %5 ...). In Windows NT 4 a leading space is added to %*. In Windows 2000 all leading spaces are removed from %* |
| %~1 | Expands %1 removing any surrounding quotes (") For example: set FileNameQuotesRemoved=%~1 |
| %~f1 | Expands %1 to a fully qualified path name For example: set FileNameIsParm1FullyQualified=%~f1 for %%f in (".") do set FullCurrentDir=%%~ff |
| %~$PATH:1 | Searches the directories listed in the PATH environment variable and expands %1 to the fully qualified name of the first one found. It does not look in the current directory and returns "" if not found. For example: @echo off set FullNameOfCtextExe= for %%f in ("ctext.exe") do set FullNameOfCtextExe=%%~$PATH:f if     "%FullNameOfCtextExe%" == "" echo "CTEXT.EXE" not found in PATH (weird)! if not "%FullNameOfCtextExe%" == "" echo "CTEXT.EXE" found at: "%FullNameOfCtextExe%" |
| %~d1 | Expands %1 to a drive letter only For example: @echo off @rem *** Demonstrates main file manipulations *** setlocal cls set    BatchFile=%~f0 set BatchFileDir=%~dp0 for %%x in ("%BatchFile%") do set File83Name=%%~fsx for %%x in ("%BatchFile%") do set FileDrive=%%~dx for %%x in ("%BatchFile%") do set FilePath=%%~px for %%x in ("%BatchFile%") do set FileExtn=%%~xx for %%x in ("%BatchFile%") do set FileAttr=%%~ax for %%x in ("%BatchFile%") do set FileTime=%%~tx for %%x in ("%BatchFile%") do set FileSize=%%~zx for %%f in ("%BatchFile%") do set FileNoPath=%%~nf%%~xf echo BatchFile    = %BatchFile% echo BatchFileDir = %BatchFileDir% echo File83Name   = %File83Name% echo FileDrive    = %FileDrive% echo FilePath     = %FilePath% echo FileExtn     = %FileExtn% echo FileAttr     = %FileAttr% echo FileTime     = %FileTime% echo FileSize     = %FileSize% echo ShortName    = %FileNoPath% |
| %~p1 | Expands %1 to a path only |
| %~n1 | Expands %1 to a file name only For example: set FileThis=C:\TMP\SomeFile.Extn ... for %%f in ("%FileThis%") do set FileThisSN=%%~nf%%~xf |
| %~x1 | Expands %1 to a file extension only |
| %~s1 | Changes the meaning of n and x options to reference the short name instead |
| %~a1 | Expands %1 to file attributes |
| %~t1 | Expands %1 to date/time of file |
| %~z1 | Expands %1 to size of file |
 |
