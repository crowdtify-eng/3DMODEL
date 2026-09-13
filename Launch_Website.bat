@echo off
title Carzzap Detailing Studio - Website Launcher
cd /d "%~dp0"

echo ========================================================
echo   CARZZAP DETAILING STUDIO - CINEMATIC WEB EXPERIENCE
echo ========================================================
echo.
where node >nul 2>nul
if %errorlevel% equ 0 (
    echo Starting local web server on port 3000...
    start "" http://localhost:3000
    node serve.js
) else (
    echo Opening website directly in your browser...
    start "" index.html
)
