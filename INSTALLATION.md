# Installation Instructions for Absolute Windows

These instructions will guide you through the process of creating a bootable USB drive from the provided AbsoluteWindows.iso file, installing the Windows build from that USB drive, and updating both Windows and applications from the Windows Store.

## Prepare Bootable USB Drive

**WARNING: The USB drive will be formatted during this process, so be sure to backup any important files before proceeding.**

0.  Download [AbsoluteWindows.iso](https://drive.google.com/file/d/16JBmrA5fl9uxzuGT_S0L7YplX0JNlaoW/)
1.  Insert a USB flash drive with a minimum of **8GB** capacity into your computer.
2.  Download and install the [Rufus](https://rufus.ie/) tool to create a bootable USB drive.
3.  Open Rufus and select your USB drive from the "Device" dropdown menu.
4.  Click the "Select" button next to "Boot selection" and choose the **AbsoluteWindows.iso** file.
5.  Select "MBR" partition scheme and "BIOS or UEFI" target system, then click the "Start" button.
6.  Rufus will format the USB drive and create a bootable drive from the ISO file.

## Install Absolute Windows Build

**NOTE: The following steps may vary depending on your computer's hardware and configuration.**

1.  Insert the bootable USB drive into your computer and restart your computer.
2.  Press the key to access the boot menu (usually F12, but this can vary depending on your computer).
3.  Select the USB drive from the boot menu and press Enter to boot from the USB drive.
4.  Follow the on-screen prompts to install the custom Windows build.
5.  If you encounter an error message stating "Windows cannot be installed to this disk. The selected disk is not of the GPT partition style," you will need to convert your hard drive to the GPT file system before installing Windows. In this case, you can follow the steps below:
    - While in the installation menu, press Shift + F10 to open the Command Prompt.
    - Type "`diskpart`" and press Enter to open the DiskPart utility.
    - Type "`list disk`" and press Enter to display a list of available disks.
    - Type "`select disk <disk number>`" (replace `<disk number>` with the number of the disk you want to convert) and press Enter.
    - Type "`clean`" and press Enter to remove all partitions from the disk.
    - Type "`convert gpt`" and press Enter to convert the disk to the GPT partition style.
    - Close the Command Prompt and click the "New" button to create a new partition to use as reserved storage, confirm creating additional partitions.
    - Continue with the installation process.
6.  If you encounter any errors during the installation process, don't worry! It's common to experience errors while installing Windows files. Simply redo the installation process again and the issue should be resolved.
7.  Once the installation is complete, you may remove the USB drive.

## Update Windows and Applications

1.  Connect to the internet.
2.  Open the Microsoft Store app and go to "Library".
3.  Click "Get updates" to download and install any available updates for Windows and applications.
4.  Open Windows Settings and go to the Windows Update section.
5.  Click "Check for updates" and install any necessary updates for Windows, security updates, drivers, and other components.
6.  In Windows Update, go to Advanced options.
7.  (Optional) Enable "Receive updates for other Microsoft products" if desired.
8.  Look for the "Optional updates" section and install any additional updates that you need.
9.  Wait for all installations to complete.
10. Restart your computer if needed.

After completing the above steps, you may want to:

11. Activate your Windows license.
12. Install any necessary drivers for your hardware components that were not installed automatically during the Windows installation process.
13. Install any additional programs or applications that you need for your work or entertainment.
    > You can use [winget](https://docs.microsoft.com/en-us/windows/package-manager/winget/) to install many popular software packages easily.

Congratulations, you have successfully installed and updated your Absolute Windows!
Enjoy <3
