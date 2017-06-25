@echo off

call chkadmin.cmd
if %errorlevel% == 0 goto :main
exit /b
:main

﻿netsh winsock reset
netsh int ip reset c:\resetlog.txt

ipconfig /release
ipconfig /renew
ipconfig /flushdns
net stop dnscache
net start dnscache

regsvr32 /s actxprxy.dll
regsvr32 /s shdocvw.dll
regsvr32 /s oleaut32.dll
regsvr32 /s urlmon.dll
regsvr32 /s mshtml.dll
regsvr32 /s msjava.dll
regsvr32 /s browseui.dll
regsvr32 /s softpub.dll
regsvr32 /s wintrust.dll
regsvr32 /s initpki.dll
regsvr32 /s dssenh.dll
regsvr32 /s rsaenh.dl
regsvr32 /s gpkcsp.dll
regsvr32 /s sccbase.dll
regsvr32 /s slbcsp.dll
regsvr32 /s cryptdlg.dll

pause
