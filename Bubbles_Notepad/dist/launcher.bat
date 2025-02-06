@echo off
REM Save the current directory
pushd %~dp0

REM Check if Bubbles-Notepad.py exists
if not exist Bubbles-Notepad.py (
    echo Error: Bubbles-Notepad.py not found in the current directory.
    popd
    pause
    exit /b 1
)

REM Run the Python script and check for errors
echo Running Bubbles-Notepad.py...
python Bubbles-Notepad.py
if %errorlevel% neq 0 (
    echo Error: Bubbles-Notepad.py did not run successfully. Error level: %errorlevel%
    popd
    pause
    exit /b %errorlevel%
)

REM Provide success feedback
echo Bubbles-Notepad.py ran successfully.

REM Return to the original directory
popd
pause
