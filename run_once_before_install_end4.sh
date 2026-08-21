#!/usr/bin/env bash
set -e

echo "==> Checking for end-4 installation..."

# Si le dossier quickshell n'existe pas, on installe end-4
if [ ! -d "$HOME/.config/quickshell" ]; then
    echo "==> end-4 not found. Installing upstream setup..."

    # Téléchargement et exécution de l'installeur officiel end-4
    bash <(curl -s "https://end-4.github.io/dots-hyprland-wiki/setup.sh")
else
    echo "==> end-4 is already installed. Skipping base setup."
fi
