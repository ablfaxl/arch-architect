#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

function progress() {
  echo -e "${GREEN}[INFO]${NC} $1"
}

function warn() {
  echo -e "${YELLOW}[WARN]${NC} $1"
}

function error() {
  echo -e "${RED}[ERROR]${NC} $1"
  exit 1
}

function confirm_run() {
  local script_name="$1"
  while true; do
    read -rp "Run ${CYAN}${script_name}${NC}? [y/N] " yn
    case $yn in
      [Yy]*) return 0 ;;
      [Nn]*|'') return 1 ;;
      *) echo "Please answer yes or no." ;;
    esac
  done
}
