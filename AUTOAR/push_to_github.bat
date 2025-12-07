@echo off
echo ========================================
echo   Push to GitHub - Employee Management System
echo ========================================
echo.

REM Check if token is provided
if "%1"=="" (
    echo ERROR: Personal Access Token is required!
    echo.
    echo Usage: push_to_github.bat YOUR_TOKEN
    echo.
    echo How to get a token:
    echo 1. Go to: https://github.com/settings/tokens
    echo 2. Click "Generate new token" ^> "Generate new token (classic)"
    echo 3. Select "repo" scope
    echo 4. Copy the token
    echo.
    echo Then run: push_to_github.bat YOUR_TOKEN
    pause
    exit /b 1
)

set TOKEN=%1
set REPO_URL=https://%TOKEN%@github.com/tal1b/mvp_autoar.git

echo Setting remote URL with token...
git remote set-url origin %REPO_URL%

echo.
echo Pushing to GitHub...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo   SUCCESS! Project pushed to GitHub
    echo ========================================
    echo.
    echo View your repository at:
    echo https://github.com/tal1b/mvp_autoar
    echo.
) else (
    echo.
    echo ========================================
    echo   ERROR: Push failed
    echo ========================================
    echo.
    echo Please check:
    echo 1. Token is valid and has "repo" scope
    echo 2. You have access to tal1b/mvp_autoar repository
    echo 3. Internet connection is working
    echo.
)

REM Remove token from remote URL for security
git remote set-url origin https://github.com/tal1b/mvp_autoar.git

pause

