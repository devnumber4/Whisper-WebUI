@echo off

goto :activate_venv

:launch
start "" http://localhost:7860/
%PYTHON% app.py %*
pause

:activate_venv
set PYTHON="%~dp0\venv\Scripts\Python.exe"
echo venv %PYTHON%
goto :launch

:endofscript

echo.
echo Launch unsuccessful. Exiting.
pause