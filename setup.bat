@echo off
title SSBT Ignite - SQL Quest Setup
color 0B

echo.
echo  =============================================================
echo    SSSSSS   SSSSS  BBBBB  TTTTTTT   IIIII  GGGG  N   N I TTTTTTT EEEEE
echo   S        S       B    B    T        I   G      NN  N I    T    E
echo    SSSSS    SSSSS  BBBBB     T        I   G  GGG N N N I    T    EEEE
echo         S        S B    B    T        I   G    G N  NN I    T    E
echo   SSSSSS   SSSSSS  BBBBB     T      IIIII  GGGG  N   N I    T    EEEEE
echo  =============================================================
echo             SQL QUEST: LOST IN THE DATAVERSE (Setup)
echo            "Your database. Your mission. Your query."
echo  =============================================================
echo.

echo  [*] Checking system requirements...
echo.

REM Check if Node.js is installed
where node >nul 2>&1
if %ERRORLEVEL% equ 0 (
    for /f "tokens=*" %%i in ('node -v') do set NODE_VERSION=%%i
    echo  [OK] Node.js is detected (%NODE_VERSION%).
    goto SETUP_SUCCESS
)

REM Check if Python is installed as fallback
where python >nul 2>&1
if %ERRORLEVEL% equ 0 (
    for /f "tokens=*" %%i in ('python --version') do set PY_VERSION=%%i
    echo  [OK] Node.js not found, but Python is available (%PY_VERSION%).
    goto SETUP_SUCCESS
)

REM If neither is found
color 0C
echo  [!] Neither Node.js nor Python was found on your computer.
echo.
echo  To play SQL Quest locally, please install Node.js:
echo    1. Visit: https://nodejs.org
echo    2. Download the LTS version and run the installer.
echo    3. After installation, double-click "start.bat" to play!
echo.
echo  Alternatively, you can play online instantly in your browser:
echo    https://piyushmali61.github.io/sql-quest-dataverse/
echo.
pause
exit /b 1

:SETUP_SUCCESS
color 0A
echo.
echo  =============================================================
echo    [SUCCESS] Environment setup complete! Ready for adventure.
echo  =============================================================
echo.
echo    To launch the game now:
echo      Double-click:  start.bat
echo.
echo  =============================================================
echo.
pause
