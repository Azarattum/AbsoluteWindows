@echo off
echo Setting up your profile...
attrib +r %UserProfile%
attrib +r "%UserProfile%/AppData"
attrib +h "%UserProfile%/Contacts"
attrib +h "%UserProfile%/Favorites"
attrib +h "%UserProfile%/Links"
attrib +h "%UserProfile%/Saved Games"
attrib +h "%UserProfile%/Searches"
del "%UserProfile%\Desktop\*.lnk"

start %SYSTEMROOT%\Resources\Themes\dark.theme
timeout /t 1 /nobreak
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sShortDate" /t REG_SZ /d "ddd, d MMM" /f
taskkill /im explorer.exe /f
start explorer.exe
timeout /t 1 /nobreak
taskkill /im SystemSettings.exe /f