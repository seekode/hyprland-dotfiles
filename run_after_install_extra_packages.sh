#!/usr/bin/env bash
set -e

echo "==> Checking extra packages..."

PACKAGES=(
    "dolphin-plugins"
    "dolphin-plugins"
    "ark"
    "kdegraphics-thumbnailers"
    "ffmpegthumbs"
    "taglib"
    "kimageformats"
    "konsole"
)

MISSING_PKGS=()
for pkg in "${PACKAGES[@]}"; do
    if ! pacman -Qi "$pkg" &>/dev/null; then
        MISSING_PKGS+=("$pkg")
    fi
done

if [ ${#MISSING_PKGS[@]} -gt 0 ]; then
    echo "==> Installing missing packages: ${MISSING_PKGS[*]}"
    sudo pacman -S --needed --noconfirm "${MISSING_PKGS[@]}"
else
    echo "==> All extra packages are already installed."
fi
