rem usage: test.bat <process you don't want to end>
:loop
tasklist /FI "IMAGENAME eq %1" 2>NUL | find /I /N "%1">NUL
if NOT "%ERRORLEVEL%"=="0" %1
goto loop