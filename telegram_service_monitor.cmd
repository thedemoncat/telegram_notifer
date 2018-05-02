@echo off
SetLocal EnableExtensions

set application=%1
set token=%2
set chat_id=%3
set textMessege=Server %COMPUTERNAME%. Service drop %1

tasklist | find /I "%application%" >nul

if errorlevel 1 (
  
  %SystemRoot%\System32\WindowsPowerShell\v1.0\PowerShell.exe -ExecutionPolicy ByPass -command ". '%~dp0/telegram_notifer.ps1' '%token%' '%chat_id%' '%textMessege%'"
goto exit
) else (
  echo %application% is running
  )

exit
