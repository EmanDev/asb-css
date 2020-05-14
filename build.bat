@echo off
title Automatic Server Builder for Counter-Strike: Source
color 0a
cls
unzip.exe -o steamcmd.zip
::unzip.exe -h
:start
cls
echo This is the Automatic Server Builder for Counter-Strike: Source which uses steamcmd to build the server
echo Please select your options below:
echo 1 - Build Server
echo 2 - Continue Building ...
echo 3 - Check script version
echo 4 - Exit
set /p choice=Choose 1, 2, 3, or 4: 
if "%choice%"=="1" goto one
if "%choice%"=="2" goto two
if "%choice%"=="3" goto three
if "%choice%"=="4" goto four
goto start
:one
cls
echo Reminder:
echo Please make sure you have stable internet during this process and be sure to not close this window.
echo This may take a while.
pause
cls
echo Building Server ....
steamcmd.exe +login anonymous +app_update 232330 validate +quit
cls
echo Building Server .... Done!
pause
goto start
:two
cls
echo You've selected Option 2 - Continue Building, this will continue from where you left off.
echo Whether internet has been disconnected or you've accidentality closed this window
pause
cls
echo The server building process is being continued... Please don't close this window
steamcmd.exe +login anonymous +app_update 232330 validate +quit
cls
echo Building Server .... Done!
:three
cls
echo Script version is version 1.00 ....
pause
goto start
:four
exit
