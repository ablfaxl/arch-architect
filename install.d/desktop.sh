#!/bin/bash
progress "Installing XFCE desktop environment and display manager..."

pacman -S --noconfirm xorg-server xorg-xinit xfce4 xfce4-goodies lightdm lightdm-gtk-greeter pulseaudio alsa-utils

systemctl enable lightdm.service

progress "Desktop environment installed."
