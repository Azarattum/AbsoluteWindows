cd %~dp0/Mount/Install/1

attrib +r "Game Files"
attrib +r "Program Files"
attrib +r "Program Files (x86)"
attrib -h "ProgramData"
attrib +r "ProgramData"
attrib +h "ProgramData"
attrib +r "Windows"
attrib +r "Users"
attrib -h "Users/Public"
attrib +r "Users/Public"
attrib +h "Users/Public"
attrib -h "Users/Default"
attrib +r "Users/Default"
attrib +h "Users/Default"
attrib +h "Users/Default/Links"
attrib -h "Users/Default/AppData"
attrib +r "Users/Default/AppData"
attrib +h "Users/Default/NTUSER.DAT"

takeown /R /F ".\Program Files\ModifiableWindowsApps\"
echo Y| cacls "Program Files/ModifiableWindowsApps" /p Administrators:f
takeown /R /F ".\Program Files\WindowsApps\"
echo Y| cacls "Program Files/WindowsApps" /p Administrators:f
attrib -h -s "Program Files/Windows Sidebar"
attrib -h -s "Program Files (x86)/Windows Sidebar"

attrib +h "Program Files/Common Files"
attrib +h "Program Files/ModifiableWindowsApps"
attrib +h "Program Files/PowerShell"
attrib +h "Program Files/Windows Defender"
attrib +h "Program Files/Windows NT"
attrib +s +h "Program Files/Windows Sidebar"
attrib +h "Program Files/WindowsApps"
attrib +h "Program Files/WindowsPowerShell"

attrib +h "Program Files (x86)/Common Files"
attrib +h "Program Files (x86)/Microsoft"
attrib +h "Program Files (x86)/Microsoft.NET"
attrib +h "Program Files (x86)/PowerShell"
attrib +h "Program Files (x86)/Windows Defender"
attrib +h "Program Files (x86)/Windows NT"
attrib +s +h "Program Files (x86)/Windows Sidebar"
attrib +h "Program Files (x86)/WindowsPowerShell"

attrib +s +h "Game Files/desktop.ini"
attrib +s +h "Program Files/desktop.ini"
attrib +s +h "Program Files (x86)/desktop.ini"
attrib +s +h "ProgramData/desktop.ini"
attrib +s +h "ProgramData/Microsoft/Windows/Start Menu/Programs/desktop.ini"
attrib +s +h "Users/desktop.ini"
attrib +s +h "Users/Default/desktop.ini"
attrib +s +h "Users/Default/AppData/desktop.ini"
attrib +s +h "Users/Public/desktop.ini"
attrib +s +h "Windows/desktop.ini"

takeown /R /F ".\Program Files (x86)\Internet Explorer"
echo Y| cacls "Program Files (x86)/Internet Explorer" /p Administrators:f
del /Q "Program Files (x86)/Internet Explorer"
rmdir "Program Files (x86)/Internet Explorer"

del /Q "PerfLogs"
rmdir "PerfLogs"

takeown /R /F ".\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools"
echo Y| cacls "Users/Default/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/System Tools" /p Administrators:f
takeown /R /F ".\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessibility"
echo Y| cacls "Users/Default/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Accessibility" /p Administrators:f

del /A /Q "Users/Default/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Accessibility"
echo Y| rmdir /S "Users/Default/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Accessibility"
del /A /Q "Users/Default/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Accessories"
rmdir "Users/Default/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Accessories"
del /A /Q "Users/Default/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Maintenance"
rmdir "Users/Default/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Maintenance"
del /A /Q "Users/Default/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Windows PowerShell"
rmdir "Users/Default/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Windows PowerShell"
del /A /Q "Users/Default/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/System Tools"
echo Y| rmdir /S "Users/Default/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/System Tools"

pause