@echo off
title Spoon Tweaks - FPS Boosting Script
color 0a

:menu
cls
echo ===============================
echo         Spoon Tweaks
echo ===============================
echo 1. Run FPS Boosting Script
echo 2. Exit
echo ===============================
set /p choice=Enter your choice (1-2): 

if "%choice%"=="1" goto fps_boost
if "%choice%"=="2" exit
goto menu

:fps_boost
@echo off
echo FPS Boosting Script

echo.
echo Closing unnecessary background processes...
:: Add or remove tasks as necessary for your system
taskkill /F /IM "OneDrive.exe"
taskkill /F /IM "Spotify.exe"
taskkill /F /IM "Discord.exe"
taskkill /F /IM "chrome.exe"
taskkill /F /IM "firefox.exe"

echo.
echo Clearing temporary files...
del /s /q %temp%\*
rd /s /q %temp%
md %temp%
del /s /q C:\Windows\Temp\*
rd /s /q C:\Windows\Temp
md C:\Windows\Temp

echo.
echo Setting PC to high-performance mode...
powercfg -setactive SCHEME_MIN

echo.
echo Cleaning up disk...
cleanmgr /sagerun:1

echo.
echo Optimization complete! Enjoy your improved performance.

pause
exit
