@echo off
setlocal
cd /d "%~dp0"

echo Starting a local preview server...
start "Local portfolio server" /b py -m http.server 8000
timeout /t 2 /nobreak >nul
start "" "http://localhost:8000/temp-with-3d-models-fixed.html"

echo.
echo The portfolio should now be open in your browser.
echo Keep this window open while viewing the page. Press Ctrl+C to stop the server.
pause >nul
