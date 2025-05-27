#!/bin/bash
progress "Enabling NTP and setting clock..."

timedatectl set-ntp true

progress "Timezone setup done."
