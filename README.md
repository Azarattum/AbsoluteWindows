# Absolute Windows

> Based on: Windows 11 Home, version 22H2 (22621.1344)

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

Check out the [removed packages list](Bin/Lists/RemovePkgsList.txt) & [disabled features list](Bin/Lists/DisableFeaturesList.txt) to see all the removed apps and features.

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
- [Cleaned tray icons](Custom/Registry/w11/x64/tray.reg)
- [Changed default TTL to 65](Custom/Registry/w11/x64/ttl.reg)

## Reproduce

- Accuire [Windows 11 ISO](https://uupdump.net/)
- Install [MSMG Toolkit](https://msmgtoolkit.in/)
- Copy all the files from the repo to MSMG Toolkit folder
- Acquire all the components from `.txt` files:
  - [keymapper.exe.txt](Custom/Files/w11/x64/Windows/Keymapper/keymapper.exe.txt)
  - [FiraCode NF.txt](Custom/Fonts/FiraCode%20NF.txt)
  - [btrfs.txt](Drivers/Install/w11/x64/btrfs.txt)
  - [PowerShell7.txt](Packs/PowerShell7/PowerShell7.txt)
  - [VC.txt](Packs/VCRuntime/w11/VC.txt)
- Integrate
  - Windows Drivers
  - Windows Features
    - Windows PowerShell 7
    - Microsoft Visual C++ Runtime
  - Windows Updates (if needed)
  - Windows Custom Features
    - Custom System Files
    - Custom Fonts
- Remove
  - Remove Windows Components Using Package List (ToolKitHelper Method)
- Customize
  - Disable Windows Features using Features List
  - Import Custom Registry Setting from Registry File
  - Apply Tweaks
    - Enable Windows Local Account
- Run [the script](./postprocess.bat) to apply file attributes (must run AFTER file integration)
- Save ISO
- Apply [TPM Bypass](https://github.com/JosephM101/Force-Windows-11-Install)
- After installing the ISO you might want to run [software.ps1](./software.ps1) script to install some programs
