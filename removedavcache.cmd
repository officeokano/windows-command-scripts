@echo off
call chkadmin.cmd
if %errorlevel% == 0 goto :main
exit /b
:main
del /q /s C:\Windows\ServiceProfiles\LocalService\AppData\Local\Temp\TfsStore\Tfs_DAV\*
dir C:\Windows\ServiceProfiles\LocalService\AppData\Local\Temp\TfsStore\Tfs_DAV
pause
