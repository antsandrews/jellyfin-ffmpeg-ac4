#!/usr/bin/env bash
set -euo pipefail

SYSROOT="/home/anthony/jellyfin-ffmpeg-ac4/sysroot"
export PATH="${SYSROOT}/usr/bin:${PATH}"
export PKG_CONFIG_PATH="${SYSROOT}/usr/lib/x86_64-linux-gnu/pkgconfig:${SYSROOT}/usr/share/pkgconfig:/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/share/pkgconfig"

cd /home/anthony/jellyfin-ffmpeg-ac4/source

./configure \
  --prefix=/home/anthony/jellyfin-ffmpeg-ac4/install \
  --extra-version=Jellyfin-AC4 \
  --extra-cflags="-I${SYSROOT}/usr/include -I${SYSROOT}/usr/include/x86_64-linux-gnu" \
  --extra-ldflags="-L${SYSROOT}/usr/lib/x86_64-linux-gnu -L/lib/x86_64-linux-gnu" \
  --disable-doc \
  --disable-ffplay \
  --disable-libxcb \
  --disable-sdl2 \
  --disable-xlib \
  --enable-gpl \
  --enable-version3 \
  --enable-gmp \
  --enable-gnutls \
  --enable-opencl \
  --enable-libdrm \
  --enable-libass \
  --enable-libfreetype \
  --enable-libfribidi \
  --enable-libfontconfig \
  --enable-libharfbuzz \
  --enable-libmp3lame \
  --enable-libopus \
  --enable-libvorbis \
  --enable-libdav1d \
  --enable-libwebp \
  --enable-libvpx \
  --enable-libx264 \
  --enable-libx265 \
  --enable-libzimg \
  --enable-vulkan \
  --enable-vaapi \
  --enable-libvpl
