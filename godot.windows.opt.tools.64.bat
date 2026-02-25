@echo off

REM Steam automatically passes "-p" as the first argument, ignore it
if "%~2"=="" (
    REM If no second argument is provided, exit with error
    exit /b 1
)

set TargetPath=%~2

REM Search for the Godot Mono console executable in the given path
for %%f in ("%TargetPath%\Godot*console.exe") do (
    set ExeFile=%%f
    goto found
)

REM If no matching executable is found, exit with error
exit /b 1

:found
REM Launch the executable and wait until it exits
start "" /wait "%ExeFile%"

REM Exit the wrapper script after Godot closes
exit
