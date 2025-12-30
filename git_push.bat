@echo off
echo ---------------------------------------
echo   GitHub Auto-Uploader
echo ---------------------------------------
echo.
echo Checking status...
git status
echo.
echo Adding all changes...
git add .
echo.
set /p msg="Enter commit message (Press Enter for 'Update'): "
if "%msg%"=="" set msg=Update
echo.
echo Committing with message: "%msg%"
git commit -m "%msg%"
echo.
echo Pushing to GitHub...
git push origin master
echo.
echo ---------------------------------------
echo   Process Complete!
echo ---------------------------------------
pause
