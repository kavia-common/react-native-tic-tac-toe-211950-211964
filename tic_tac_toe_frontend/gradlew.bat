@echo off
REM Lightweight shim for tools that expect Gradle wrapper at repo root.
IF EXIST "%~dp0android\gradlew.bat" (
  call "%~dp0android\gradlew.bat" %*
  exit /b %ERRORLEVEL%
)

echo Error: Gradle wrapper not found.
echo This project does not include a native Android folder by default.
echo If you need Android/Gradle tasks, run: npx expo prebuild --platform android
exit /b 1
