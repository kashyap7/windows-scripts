
:loop
tasklist | find /I /N "%1">NUL
if NOT "%ERRORLEVEL%"=="0" %1
TIMEOUT /T 5
goto loop