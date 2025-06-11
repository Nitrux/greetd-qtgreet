#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    APT_COMMAND="sudo apt-get"
else
    APT_COMMAND="apt-get"
fi

$APT_COMMAND update -q
$APT_COMMAND install -qy --no-install-recommends \
    meson \
    ninja-build \
    checkinstall \
    qt6-base-dev \
    pkg-config \
    cmake \
    qt6-wayland-dev
