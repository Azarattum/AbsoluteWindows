# Absolute Windows
> Based on: Windows 11 Home

Lightweight and flexible Windows 11 build.

## Added
- [x] Patched to [bypass compatibility checks](https://github.com/JosephM101/Force-Windows-11-Install)
- [x] Updated to [PowerShell 7](https://www.mediafire.com/folder/symg2n0rgcb8t/PowerShell7)
- [x] Added [FiraCode NF](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode) font
- [x] Lightweight [hosts file](Custom/Files/w11/x64/Windows/System32/drivers/etc/hosts) to block telemetry
- [x] Custom [powershell profile](Custom/Files/w11/x64/Users/Default/Documents/PowerShell/profile.ps1)
- [x] Included [BTRFS driver](https://github.com/maharmstone/btrfs)
- [x] Included [Apple drivers](Drivers/Install/w11/x64/)
- [ ] Integrated [WinFsp](https://github.com/winfsp/winfsp/) and [SSHFS](https://github.com/winfsp/sshfs-win)
- [x] Included [Keymapper](https://github.com/houmain/keymapper) with [custom config](Custom/Files/w11/x64/Windows/Keymapper/keymapper.conf)

## Removed
### Apps
- Internet Explorer
- Game Explorer
- Windows Media Player
- Windows Photo Viewer
- Windows TIFF IFilter
- Windows System Assessment Tool
- Wordpad
- Alarms & Clock
- Camera
- Feedback Hub
- Get Help
- My Office
- News
- Tips
- Todos
- Your Phone
- Cortana
- Power Automate Desktop
- Windows Mail
- Windows Web Experience Pack - News and Interests Widgets App

### Features
- AAD Broker Plugin - Credential Handler for Microsoft Azure Logon
- Add Suggested Folders to Library Dialog
- Async Text Service - Messaging extensions for People and Maps Apps
- Bio Enrollment - Windows Hello Setup
- Calling Shell App - App to host call progress on shell
- CBSPreview - App for Camera Barcode Scanner
- Content Delivery Manager - Automatic installation of sponsored or promoted apps, suggesstions and Ads
- Credential Dialog Host - Authentication (Sign-in) shell support for Windows Hello
- ECApp - Modern UI Dialog App for Eye Movement Control
- Edge Classic Browser
- Edge Developer Tools Client - An extension to edge containing tools for web developers
- Lock App - Container App for Apps and Messages on the Lockscreen
- Map Control
- Narrator Quick Start - QuickStart Guide for Narrator
- OOBE Network Captive Portal - Captive Network Portals support during OOBE-Phase of Windows
- OOBE Network Connection Flow - Connection Flow Network Portals support during OOBE-Phase of Windows
- Parental Controls - App for Parental Controls
- People Experience Host - People Bar (People Hub)
- Pinning Confirmation Dialog
- Quick Assist App - Modern Remote Assistance App
- Retail Demo Content
- Secure Assessment Browser - Special Windows Mode for Exams (Take Test App)
- Skype ORTC
- Smart Screen - Windows Defender SmartScreen Functionality for Modern Apps
- Windows Mixed Reality
- Windows Reader (PDF)
- Xbox Game Callable UI - Xbox Live
- XGpu Eject Dialog - Modern Dialog App for safe removal of external GPUs

### Privacy
- Assigned Access
- Customer Experience Improvement Program (CEIP)
- Face Recognition
- Kernel Debugging
- Location Service
- Picture Password
- Pin SignIn Support
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
- [Set Windows Updates to "Notify of download and installation"](Custom/Registry/w11/x64/updates.reg)
- [Set file explorer to "This PC" and show file extensions](Custom/Registry/w11/x64/explorer.reg)
- [Applied profile script for new users](Custom/Registry/w11/x64/profile.reg)
- [Hidden recycle bin from desktop](Custom/Registry/w11/x64/desktop.reg)

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
  - [PowerShell7_w11.txt](Packs/PowerShell7/PowerShell7_w11.txt)
- Integrate
  - Drivers
  - Windows Features (PowerShell 7)
  - Windows Custom Features
    - Fonts
    - System Files
- Customize
  - Import regestry files
- Remove [components](#removed)