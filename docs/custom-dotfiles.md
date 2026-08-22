[go back](../README.md)

# Custom Dotfiles Overview

## [dot_config/hypr/custom/keybinds.lua](../dot_config/hypr/custom/keybinds.lua)

**SUPER + CTRL + [num]:** Move window to workspace [num] silently
**SUPER + SHIFT + [num]:** Move window to workspace [num] and follow

## [dot_config/hypr/custom/general.lua](../dot_config/hypr/custom/general.lua)

**Keyboard:** *though for coding and write french*
- kb_layout: "us"
- kb_variant: "intl"
- kb_options: "grp:win_space_toggle,caps:escape"

---

**Mouse:** *setup for work & gaming*
- follow_mouse: 1
- accel_profile: "flat"
- force_no_accel: true

---

**Screen & workspaces:** *setup screen and bind workspaces*
Do not forget to adapt these settings to your own configuration.
You can find what to change at hl.monitor and hl.workspace_rule.

## [dot_config/hypr/custom/execs.lua](../dot_config/hypr/custom/execs.lua)

**Audio setup:** *uncomment it or edit it to match with your audio setup*
- start goxlr-deamon
- start easyeffects
- set default source to easyeffects_source

---

**Background integrations & applications**
- start kdeconnectd
- start wayscriber
- start betterbird
