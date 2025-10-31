@echo off
setlocal enabledelayedexpansion

REM === INPUT FILE NAME ===
set "input=input.ppm"

REM === LOOP FROM 9 TO 999 ===
for /l %%i in (9,1,999) do (
    set "outfile=output%%i.ppm"
    set /a line=0

    >"!outfile!" (
        for /f "usebackq delims=" %%A in ("%input%") do (
            set /a line+=1
            if !line! equ 3 (
                echo %%i
            ) else (
                echo %%A
            )
        )
    )
    echo Created !outfile!
)

echo Done generating files!
pause
