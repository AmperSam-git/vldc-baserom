@echo off

:: Name of ROM
set ROMNAME=VLDC13

:: Location of ROM file (usually in main folder)
set ROMFILE=%~dp0%ROMNAME%.smc

cd Patches
for /f "tokens=*" %%a in (list_asar.txt) do (
	asar.exe -v %%a %ROMFILE%
)
pause