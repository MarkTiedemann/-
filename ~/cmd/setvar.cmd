@echo off

:: print help
if "%~1" == "--help" (
  type %~dp0setvar.txt

) else (

  :: assign output of command to env var
  for /f "delims=" %%i in ('%~2') do set %~1=%%i

  if "%~3" == "--echo" (
    :: split env var `key=value` and echo value
    for /f "delims== tokens=2" %%g in ('set %~1') do echo %%g
  )
)