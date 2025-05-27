#!/bin/bash
progress "Installing paru AUR helper..."

if ! command -v paru &>/dev/null; then
  cd /tmp || exit
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg -si --noconfirm
else
  progress "paru already installed."
fi
