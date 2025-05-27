#!/bin/bash
progress "Installing useful packages for common file types..."

pacman -S --noconfirm unzip zip p7zip tar gzip base-devel

progress "Common packages installed."
