@echo off
setlocal enabledelayedexpansion

REM === Loop through all output PPM files ===
for %%f in (output*.ppm) do (
    echo Appending binary data to %%f ...
    copy /b "%%f"+"input.bin" "%%f.tmp" >nul
    move /y "%%f.tmp" "%%f" >nul
)

echo Done!
pause
