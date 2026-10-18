@echo off
title Starting PG and Hostel Finder Spring Boot Backend...
echo ==============================================================
echo    Starting PG & Hostel Finder Backend Server...
echo ==============================================================
echo.

where mvn >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Maven (mvn) command was not found on your system PATH.
    echo.
    echo Please make sure Java JDK 17+ and Apache Maven are installed.
    echo Alternatively, open this folder in IntelliJ IDEA or VS Code
    echo and run PghFinderApplication.java.
    echo.
    echo In the meantime, you can directly double-click:
    echo   open_browser.bat
    echo to preview and interact with the full web interface!
    echo.
    pause
    exit /b
)

echo Running: mvn spring-boot:run ...
mvn spring-boot:run
pause
