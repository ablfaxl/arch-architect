#!/bin/bash
progress "Installing VirtualBox and dependencies..."

pacman -S --noconfirm virtualbox virtualbox-host-modules-arch

progress "VirtualBox installed."
