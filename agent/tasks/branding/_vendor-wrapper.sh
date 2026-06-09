#!/usr/bin/env bash
set -Eeuo pipefail

ROOT="${HOMELABV4_ROOT:-/opt/homelabv4}"
AGENT="$ROOT/agent"

run_vendor() {
  local script="$1"
  local mode="$2"
  if [[ ! -f "$script" ]]; then
    echo "Vendor branding script missing: $script"
    echo "The pack is registered but its vendor payload was not uploaded."
    exit 4
  fi
  chmod +x "$script"
  exec bash "$script" "$mode"
}
