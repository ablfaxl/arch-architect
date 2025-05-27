#!/bin/bash
progress "Installing fonts..."

pacman -S --noconfirm ttf-dejavu ttf-liberation noto-fonts noto-fonts-cjk noto-fonts-emoji

progress "Fonts installed."
