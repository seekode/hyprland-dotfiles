# Dotfiles Setup (Arch Linux + Hyprland + end-4)

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/). Built on top of the `end-4` Hyprland configuration.

## 🚀 Quick Start

### 1. Requirements
Ensure `git` and `chezmoi` are installed:
```bash
sudo pacman -S --needed git chezmoi
```
## 2. Apply Configuration
Clone and apply the dotfiles in a single command:
```bash
chezmoi init --apply [https://github.com/seekode/hyprland-dotfiles.git](https://github.com/seekode/hyprland-dotfiles.git)
```

### What this does:
1. Installs `end-4` Base Setup: Detects if `quickshell` is present; if missing, runs the official `end-4` installer script (`run_once_before_install_end4.sh`).
2. Deploys Custom Hyprland Config: Copies `dot_config/hypr/custom/` to `~/.config/hypr/custom/`. [You can get an overview of the customizations here](docs/custom-dotfiles.md).

## 📖 Optional Guides
- [AI Widget Configuration (Add latest Gemini models)](docs/ai-widget.md)

## 🔧 Troubleshooting
- [Nvidia Sleep / Wake Black Screen Fix](docs/nvidia-sleep-fix.md)
