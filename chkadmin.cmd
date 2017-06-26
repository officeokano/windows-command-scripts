@echo off
:check
    for /f "tokens=1 delims=," %%i in ('whoami /groups /FO CSV /NH') do (
        if "%%~i"=="Mandatory Label\High Mandatory Level" goto main
    )
    echo This command must be run as an administrator.
    exit /b 1
:main
    exit /b 0
