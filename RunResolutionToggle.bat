@echo off
set "currentDir=%~dp0"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%currentDir%resolutionToggleScript.ps1'"
pause