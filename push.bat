@echo off
cd /d "%~dp0"
echo === adding files ===
git add -A
echo === committing ===
git commit -m "update %date% %time%"
echo === pushing ===
git remote | findstr origin >nul
if errorlevel 1 (
  echo.
  echo No remote set yet. Run these two commands once:
  echo   git remote add origin https://github.com/YOURNAME/uav-coverage-planning.git
  echo   git push -u origin main
) else (
  git push
)
echo.
pause
