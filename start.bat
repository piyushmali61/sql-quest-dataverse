@echo off
title SSBT Ignite - SQL Quest Game Launcher
color 0A

echo.
echo  =============================================================
echo             SSBT IGNITE - SQL QUEST: LOST IN THE DATAVERSE
echo            "Your database. Your mission. Your query."
echo  =============================================================
echo.

where node >nul 2>&1
if %ERRORLEVEL% equ 0 (
    echo  [+] Launching game with Node.js engine...
    node server.js
    goto END
)

where python >nul 2>&1
if %ERRORLEVEL% equ 0 (
    echo  [+] Node.js not detected. Launching with Python engine on port 3000...
    start "" http://localhost:3000
    python -m http.server 3000
    goto END
)

color 0C
echo  [!] Node.js is required to run the local game server.
echo      Please run setup.bat to see installation instructions,
echo      or install Node.js from https://nodejs.org
echo.
pause

:END
