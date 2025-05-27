# Architect - Arch Linux Bootstrap Scripts

<div align="center">
  <img src="./arch.jpg" width="400" alt="Architect Logo">
</div>

## Overview

These are modular, customizable Arch Linux bootstrap scripts inspired by the Architect project. The scripts help automate the installation and configuration of Arch Linux with clear phases:

- **init.d/** — Initial system setup (timezone, sudoers, mirrors, dev packages, input devices, Bluetooth, sound, video)
- **install.d/** — Software installation (AUR helpers, desktop environments, apps, fonts, dev tools, shells)
- **config.d/** — Post-install configuration (shell, SSH keys, GPG keys, npm, git)

## Usage

```bash
git clone https://github.com/yourusername/arch-setup.git
cd arch-setup

# Run initial setup scripts (partitioning, timezone, etc)
./init.sh

# Run package installation scripts
./install.sh

# Change root to /mnt for final configuration:
arch-chroot /mnt /bin/bash

# Inside chroot, run config scripts
./config.sh
```

## How it works ?

- The main scripts (init.sh, install.sh, config.sh) loop through their respective directories and execute modular scripts one-by-one.

- Each modular script is small, focused, and can be enabled or disabled interactively.

- The scripts use color-coded output for clarity and prompt for confirmation before running modules.

- Easily add your own modules by dropping new scripts into the init.d, install.d, or config.d folders.

## Customize

- The main scripts (init.sh, install.sh, config.sh) loop through their respective directories and execute modular scripts one-by-one.

- Set timezone in init.d/timezone.sh.

- Set your Git identity in config.d/git.sh.

- Adjust installed packages in install.d/ scripts.

## Contributions

- Contributions, bug reports, and suggestions are very welcome! Please open issues or pull requests.
