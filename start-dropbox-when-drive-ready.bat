@echo off
echo Waiting for volume...
:keepwaiting
timeout /nobreak /t 30 >nul
if not exist D:\ goto keepwaiting
start "Dropbox" "C:\Program Files (x86)\Dropbox\Client\Dropbox.exe"
