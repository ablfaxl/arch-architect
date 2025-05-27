#!/bin/bash
progress "Installing video drivers and utilities..."

pacman -S --noconfirm mesa xf86-video-intel light

progress "Video stack installed."
