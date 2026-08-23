#!/usr/bin/env bash
set -e

echo "==> Checking extra packages..."

PACKAGES=(
    "dolphin-plugins"
    "ark"
    "kdegraphics-thumbnailers"
    "ffmpegthumbs"
    "taglib"
    "kimageformats"
    "konsole"
    "kdeconnect"
    "wayscriber"
)

AUR_PKGS=(
    "betterbird-bin"
    "wayscriber"
)

# Installing official packages
MISSING_OFFICIAL=()
for pkg in "${OFFICIAL_PKGS[@]}"; do
    if ! pacman -Qi "$pkg" &>/dev/null; then
        MISSING_OFFICIAL+=("$pkg")
    fi
done

if [ ${#MISSING_OFFICIAL[@]} -gt 0 ]; then
    echo "==> Installing missing official packages: ${MISSING_OFFICIAL[*]}"
    sudo pacman -S --needed --noconfirm "${MISSING_OFFICIAL[@]}"
fi

# Installing AUR packages
AUR_HELPER=""
if command -v paru &>/dev/null; then
    AUR_HELPER="paru"
elif command -v yay &>/dev/null; then
    AUR_HELPER="yay"
fi

if [ -n "$AUR_HELPER" ]; then
  MISSING_AUR=()
  for pkg in "${AUR_PKGS[@]}"; do
      if ! pacman -Qi "$pkg" &>/dev/null; then
          MISSING_AUR+=("$pkg")
      fi
  done

  if [ ${#MISSING_AUR[@]} -gt 0 ]; then
      echo "==> Installing missing AUR packages: ${MISSING_AUR[*]}"
      "$AUR_HELPER" -S --needed --noconfirm "${MISSING_AUR[@]}"
  fi
else
  echo "==> Warning: Neither paru nor yay found. Skipping AUR packages."
fi

echo "==> All extra packages processed."
