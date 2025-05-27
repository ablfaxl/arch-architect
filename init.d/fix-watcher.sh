#!/bin/bash
progress "Increasing max user watches for filesystem..."

echo fs.inotify.max_user_watches=524288 | tee /etc/sysctl.d/99-inotify.conf
sysctl --system

progress "Max user watches updated."
