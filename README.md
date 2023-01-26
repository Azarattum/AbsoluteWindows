# Absolute Windows
> Based on: Windows 11 Home

Lightweight and flexible Windows 11 build.

## Added
- [x] Patched to [bypass compatibility checks](https://github.com/JosephM101/Force-Windows-11-Install)
- [x] Updated to [PowerShell 7](https://download.ru/folders/9Q7wRWOc)
- [x] Included [C++ runtime](https://download.ru/folders/5wAAnH5F)
- [x] Added [FiraCode NF](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode) font
- [x] Lightweight [hosts file](Custom/Files/w11/x64/Windows/System32/drivers/etc/hosts) to block telemetry
- [x] Custom [powershell profile](Custom/Files/w11/x64/Users/Default/Documents/PowerShell/profile.ps1)
- [x] Custom [terminal settings](Custom\Files\w11\x64\Users\Default\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json)
- [x] Included [BTRFS driver](https://github.com/maharmstone/btrfs)
- [x] Included [Apple drivers](Drivers/Install/w11/x64/)
- [x] Included [Keymapper](https://github.com/houmain/keymapper) with [custom config](Custom/Files/w11/x64/Windows/Keymapper/keymapper.conf)
- [x] Set dark theme by default

## Removed
### Apps
- Internet Explorer
- Game Explorer
- Windows Media Player
- Windows Photo Viewer
- Windows TIFF IFilter
- Windows System Assessment Tool
- Wordpad
- Clipchamp Video Editor
- Cortana
- Feedback Hub
- Family
- Gaming App (Xbox App)
- Get Help
- Maps
- Microsoft Teams
- My Office
- News
- People
- Screen Sketch
- Solitaire Collection
- Tips
- Todos
- Phone Link
- Power Automate Desktop
- Quick Assist
- Wallet Service
- Windows Mail
- Xbox Game Bar Plugin 
- Xbox Game Bar 
- Xbox Identity Provider 
- Xbox Game Speech Window 
- Xbox UI

### System Apps
- Add Suggested Folders to Library Dialog
- Async Text Service - Messaging extensions for People and Maps Apps
- Calling Shell App - App to host call progress on shell
- CBSPreview - App for Camera Barcode Scanner
- Content Delivery Manager - Automatic installation of sponsored or promoted apps, suggesstions and Ads
- ECApp - Modern UI Dialog App for Eye Movement Control
- Map Control
- Narrator Quick Start - QuickStart Guide for Narrator
- OOBE Network Captive Portal - Captive Network Portals support during OOBE-Phase of Windows
- OOBE Network Connection Flow - Connection Flow Network Portals support during OOBE-Phase of Windows
- Parental Controls - App for Parental Controls
- People Experience Host - People Bar (People Hub)
- Retail Demo Content
- Secure Assessment Browser - Special Windows Mode for Exams (Take Test App)
- Skype ORTC
- Windows Mixed Reality
- Xbox Console Companion Back-end Client
- Xbox Game Callable UI - Xbox Live

### Privacy
- Assigned Access
- Customer Experience Improvement Program (CEIP)
- Kernel Debugging
- Location Service
- Unified Telemetry Client (Asimov)
- WiFi Network Manager (WiFi Sense)
- Windows Error Reporting
- Windows Insider Hub

### Remoting
- MultiPoint Connector
- OneDrive Desktop Client
- Remote Assistance
- Remote Desktop Server
- Remote Registry
- Work Folders Client

### System Components
- Device Lockdown (Embedded Experience)
- Ease of Access Themes
- Easy Transfer
- File History
- Storage Spaces
- Windows To Go

## Registry
- [Disabled Windows consumer features (advertised apps)](Custom/Registry/w11/x64/consumer.reg)
- [Disabled telemetry](Custom/Registry/w11/x64/telemetry.reg)
- [Disabled useless services](Custom/Registry/w11/x64/services.reg)
- [Set Windows Updates to "Notify of download and installation"](Custom/Registry/w11/x64/updates.reg)
- [Set file explorer to "This PC" and show file extensions](Custom/Registry/w11/x64/explorer.reg)
- [Show full paths in explorer](Custom/Registry/w11/x64/explorer.reg)
- [Hide folders from "This PC"](Custom/Registry/w11/x64/explorer.reg)
- [Disabled Bing in start search](Custom/Registry/w11/x64/shell.reg)
- [Hidden search, chat, widgets from taskbar](Custom/Registry/w11/x64/shell.reg)
- [Bypassed Microsoft account requirement](Custom/Registry/w11/x64/bypass.reg)
- [Applied profile script for new users](Custom/Registry/w11/x64/profile.reg)
- [Hidden recycle bin from desktop](Custom/Registry/w11/x64/desktop.reg)
- [Cleaned context menu](Custom/Registry/w11/x64/context.reg)

## Reproduce
- Accuire [Windows 11 ISO](https://www.microsoft.com/software-download/windows11)
- Clone [Patcher Repo](https://github.com/JosephM101/Force-Windows-11-Install)
- Patch ISO file
- Install [MSMG Toolkit](https://msmgtoolkit.in/)
- Copy `Custom`, `Drivers` and `Packs` to MSMG Toolkit
- Acquire all the components from `.txt` files:
  - [keymapper.exe.txt](Custom/Files/w11/x64/Windows/Keymapper/keymapper.exe.txt)
  - [FiraCode NF.txt](Custom/Fonts/FiraCode%20NF.txt)
  - [btrfs.txt](Drivers/Install/w11/x64/btrfs.txt)
  - [PowerShell7.txt](Packs/PowerShell7/PowerShell7.txt)
  - [VC.txt](Packs/VC/w11/VC.txt)
- Integrate
  - Drivers
  - Windows Features (PowerShell 7)
  - Windows Custom Features
    - Fonts
    - System Files
- Customize
  - Import registry files
- Remove [components](#removed)
- Run [the script](./attrib.bat) to apply file attributes (must run AFTER file integration)