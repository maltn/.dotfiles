@echo off
cd %~dp0

if exist nvim\ (
  if exist %HOMEPATH%\appdata\local\nvim\ (
    echo "NVIM ALREADY EXISTS AT TARGET LOCATION"
  ) else (
    mklink /D %HOMEPATH%\appdata\local\nvim %cd%\nvim
  )
) else (
  echo "ERROR: NVIM DOES NOT EXIST"
  pause
  exit
)

echo "FINISHED"
pause
