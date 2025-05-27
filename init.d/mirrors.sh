#!/bin/bash
progress "Installing reflector and updating mirrorlist..."

pacman -S --noconfirm reflector

reflector --country YOUR_COUNTRY --latest 10 --sort rate --save /etc/pacman.d/mirrorlist

progress "Mirrorlist updated."
