>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (GOTO askAdmin)
goto gotAdmin
:askAdmin
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )

echo Setting up your profile...
attrib +r %UserProfile%
attrib +r "%UserProfile%/AppData"
attrib +h "%UserProfile%/Contacts"
attrib +h "%UserProfile%/Favorites"
attrib +h "%UserProfile%/Links"
attrib +h "%UserProfile%/Saved Games"
attrib +h "%UserProfile%/Searches"
del "%UserProfile%\Desktop\*.lnk"
rd "%AppData%\Microsoft\Windows\Start Menu\Programs\Accessories" /S /Q
schtasks /create /xml "C:\Windows\Keymapper\keymapperd.xml" /tn "\KeymapperD"
schtasks /create /xml "C:\Windows\Keymapper\keymapper.xml" /tn "\Keymapper"
schtasks /run /tn "\KeymapperD"
schtasks /run /tn "\Keymapper"
%SYSTEMROOT%\Resources\Themes\dark.theme