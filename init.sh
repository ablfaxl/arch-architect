#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

ROOT_DIR=$(dirname "$(readlink -f "$BASH_SOURCE")")
source "$ROOT_DIR/utils.sh"

progress "Starting init scripts..."

for script in "$ROOT_DIR"/init.d/*.sh; do
  [[ -x "$script" ]] || continue
  if confirm_run "$(basename "$script")"; then
    source "$script"
    progress "Finished $(basename "$script")"
  else
    echo "Skipped $(basename "$script")"
  fi
done

progress "Init phase complete."
