@echo off
set "currentDir=%~dp0"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%currentDir%changeDisplayResolution.ps1'"
