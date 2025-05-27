#!/bin/bash
progress "Configuring sudoers to allow wheel group passwordless sudo..."

if ! grep -q "^%wheel ALL=(ALL) NOPASSWD: ALL" /etc/sudoers; then
  sed -i 's/^# %wheel ALL=(ALL) NOPASSWD: ALL/%wheel ALL=(ALL) NOPASSWD: ALL/' /etc/sudoers
  progress "Passwordless sudo enabled for wheel group."
else
  progress "Passwordless sudo already enabled."
fi
