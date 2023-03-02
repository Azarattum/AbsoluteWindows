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
attrib +r "Users/Default/AppData"

attrib +h "Program Files/Common Files"
attrib +h "Program Files/ModifiableWindowsApps"
attrib +h "Program Files/PowerShell"
attrib +h "Program Files/Windows Defender"
attrib +h "Program Files/Windows NT"
attrib +h "Program Files/Windows Sidebar"
attrib +h "Program Files/WindowsApps"
attrib +h "Program Files/WindowsPowerShell"

attrib +h "Program Files (x86)/Common Files"
attrib +h "Program Files (x86)/Microsoft"
attrib +h "Program Files (x86)/Microsoft.NET"
attrib +h "Program Files (x86)/PowerShell"
attrib +h "Program Files (x86)/Windows Defender"
attrib +h "Program Files (x86)/Windows NT"
attrib +h "Program Files (x86)/Windows Sidebar"
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

pause