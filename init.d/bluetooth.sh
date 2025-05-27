#!/bin/bash
progress "Installing Bluetooth support..."

pacman -S --noconfirm bluez bluez-utils
systemctl enable bluetooth.service
systemctl start bluetooth.service

progress "Bluetooth enabled."
