
netstat -ano | find /I /N ":9499">NUL
if NOT "%ERRORLEVEL%"=="0" (
	cd C:\Users\Administrator\browser-startstop
	start browser-server-start.bat
)
exit