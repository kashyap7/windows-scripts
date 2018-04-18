rem Modifying the registry keys to change the default user
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\winlogon" /v AutoAdminLogon /t REG_SZ /d 1 /f

reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\winlogon" /v DefaultUserName /t REG_SZ /d "restricted-user" /f

reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\winlogon" /v DefaultPassword /t REG_SZ /d "bs123!" /f

reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\winlogon" /v AltDefaultUserName /t REG_SZ /d "restricted-user" /f