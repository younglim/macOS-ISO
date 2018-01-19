# macOS-High-Sierra-ISO

Creates macOS High Sierra ISO file from High Sierra download on Mac App Store.

Run:

`sudo ./create-macOS-High-Sierra-ISO.sh`


=== Virtualbox Guest Configuration ===

Configure the following settings for installing Mac OS X guest on Mac OS hosts:

```
# iMac 11,3
VBoxManage modifyvm "vbox-machine-name" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage setextradata "vbox-machine-name" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata "vbox-machine-name" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "vbox-machine-name" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "BOARD-PRODUCT"
VBoxManage setextradata "vbox-machine-name" "VBoxInternal/Devices/efi/0/Config/DmiSystemSerial" "SERIAL"
VBoxManage setextradata "vbox-machine-name" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "vbox-machine-name" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1

# MacBook Pro 11,3
VBoxManage modifyvm "vbox-machine-name" --cpuidset 00000001 000306a9 04100800 7fbae3ff bfebfbff
VBoxManage setextradata "vbox-machine-name" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "MacBookPro11,3"
VBoxManage setextradata "vbox-machine-name" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "vbox-machine-name" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "BOARD-PRODUCT"
VBoxManage setextradata "vbox-machine-name" "VBoxInternal/Devices/efi/0/Config/DmiSystemSerial" "SERIAL"
VBoxManage setextradata "vbox-machine-name" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "vbox-machine-name" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1

```
