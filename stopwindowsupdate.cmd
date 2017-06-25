@echo off
call chkadmin.cmd
if %errorlevel% == 0 goto :main
exit /b
:main
net stop wuauserv
net stop bits
net stop dosvc
pause
