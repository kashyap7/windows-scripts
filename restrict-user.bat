
rem Restrictions on the user profile

reg load HKU\restrictions C:\Users\restricted-user\NTUSER.DAT

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoTrayItemsDisplay /t REG_DWORD /d 1 /f

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideClock /t REG_DWORD /d 1 /f

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoTrayContextMenu /t REG_DWORD /d 1 /f

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRun /t REG_DWORD /d 1 /f

rem HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer!NoToolbarsOnTaskbar

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoToolbarsOnTaskbar /t REG_DWORD /d 1 /f

rem HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer!ClearRecentProgForNewUserInStartMenu

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v ClearRecentProgForNewUserInStartMenu /t REG_DWORD /d 1 /f

rem Clearing the start menu options

rem remove shutdown/restart/sleep/hibernate

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoClose /t REG_DWORD /d 1 /f

rem remove common programs from Start menu

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoCommonGroups /t REG_DWORD /d 1 /f=

rem remove the favorites menu

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoFavoritesMenu /t REG_DWORD /d 1 /f

rem remove search link

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoFind /t REG_DWORD /d 1 /f

rem remove frequenty programs list from Start menu

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoStartMenuMFUprogramsList /t REG_DWORD /d 1 /f

rem remove help menu

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoSMHelp /t REG_DWORD /d 1 /f

rem remove user tracking

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoInstrumentation /t REG_DWORD /d 1 /f

rem renove all programs list

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoStartMenuMorePrograms /t REG_DWORD /d 1 /f

rem remove network connections

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoNetworkConnections /t REG_DWORD /d 1 /f

rem remove recent docs

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRecentDocsHistory /t REG_DWORD /d 1 /f



rem HKCU\Software\Policies\Microsoft\Windows\Explorer!TaskbarNoPinnedList
reg add "HKU\restrictions\Software\Policies\Microsoft\Windows\Explorer" /v TaskbarNoPinnedList /t REG_DWORD /d 1 /f


rem whitelist applications
rem HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer!RestrictRun HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v RestrictRun /t REG_DWORD /d 1 /f

reg add "HKU\restrictions\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun" /v "1" /t REG_SZ /d "iexplore.exe" /f

reg unload HKU\restrictions

rem To completely disable the Windows key, follow these steps:

rem Open regedit.
rem On the Windows menu, click HKEY_LOCAL_ MACHINE on Local Machine.
rem Double-click the System\CurrentControlSet\Control folder, and then click the Keyboard Layout folder.
rem On the Edit menu, click Add Value, type in Scancode Map, click REG_BINARY as the Data Type, and then click OK.
rem Type 00000000000000000300000000005BE000005CE000000000 in the Data field, and then click OK.
rem Close Registry Editor and restart the computer.