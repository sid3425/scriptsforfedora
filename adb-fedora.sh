#!/bin/bash

echo "installing adb"
sudo dnf install android-tools -y

echo "setting up udev rules"
sudo ln -s /usr/share/doc/android-tools/51-android.rules /etc/udev.rules.d

echo "adding user to the plugdev rule"
sudo groupadd plugdev && sudo usermod -aG plugdev $USER

echo "Install complete! For best results its better to reboot your system, or logout and log back in"
