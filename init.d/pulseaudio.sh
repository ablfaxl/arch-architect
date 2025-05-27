#!/bin/bash
progress "Installing PulseAudio sound system..."

pacman -S --noconfirm pulseaudio pulseaudio-alsa alsa-utils

progress "PulseAudio installed."
