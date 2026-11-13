#!/usr/bin/env bash
set -euo pipefail
export PATH="/home/anthony/jellyfin-ffmpeg-ac4/sysroot/usr/bin:${PATH}"
cd /home/anthony/jellyfin-ffmpeg-ac4/source
make -j"$(nproc)"
