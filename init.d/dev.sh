#!/bin/bash
progress "Installing development packages..."

pacman -S --noconfirm base-devel git

progress "Development packages installed."
