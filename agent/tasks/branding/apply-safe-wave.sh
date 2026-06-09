#!/usr/bin/env bash
set -Eeuo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
bash "$DIR/bacscloud-nextcloud-apply.sh" || true
bash "$DIR/bacsflix-jellyfin-apply.sh" || true
bash "$DIR/bacstatus-uptime-kuma.sh" apply || true
bash "$DIR/bachome-homeassistant.sh" apply || true
bash "$DIR/bacphotos-immich.sh" apply || true
bash "$DIR/bacmastersai-openwebui.sh" apply || true
echo "Safe branding wave finished."
