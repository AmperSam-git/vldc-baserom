@echo off

:: Name of ROM
set ROMNAME=VLDC13

:: Location of ROM file
set ROMFILE=%~dp0%ROMNAME%.smc

:: Location of original, unmodified SMW rom (change if not using Lunar Magic restore system)
set SMWROM=%~dp0sysLMRestore\smwOrig.smc

if not exist "%~dp0sysLMRestore\smwOrig.smc" (
    echo Could not find an unmodified SMW file. Enter the path to an original, unmodified SMW smc: 
    set /p SMWROM=
) 
echo Name your level patch: 
set /p PATCHNAME=
flips.exe --create --bps %SMWROM% %ROMFILE% %PATCHNAME%.bps
pause