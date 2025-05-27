#!/bin/bash
progress "Installing and configuring touchpad input..."

pacman -S --noconfirm xf86-input-libinput

# Optional: Add config file to enable tap-to-click
mkdir -p /etc/X11/xorg.conf.d/
cat << EOF > /etc/X11/xorg.conf.d/30-touchpad.conf
Section "InputClass"
    Identifier "touchpad"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
EndSection
EOF

progress "Touchpad configured."
