@echo off
REM Minimal Gradle wrapper stub for Windows tooling.
REM Native Android build is not configured in this repo; this stub exists to satisfy analyzers.

set CMD=%1

if "%CMD%"=="" goto ok
if "%CMD%"=="help" goto ok
if "%CMD%"=="tasks" goto ok
if "%CMD%"=="--version" goto ok
if "%CMD%"=="-v" goto ok
if "%CMD%"=="version" goto ok

:ok
echo Gradle wrapper stub: native Android build not configured in this repo.
exit /b 0
