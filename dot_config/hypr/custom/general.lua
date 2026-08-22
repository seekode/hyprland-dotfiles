-- Don't forget to change this setting for make it match your monitors, otherwise it won't work properly.
hl.monitor({ output = "DP-1", mode = "3840x1600@160", position = "2560x0", scale = 1 })
hl.monitor({ output = "HDMI-A-1", mode = "2560x1440@144", position = "0x70", scale = 1 })
hl.workspace_rule({ workspace = "1", monitor = "DP-1", default = true });
hl.workspace_rule({ workspace = "2", monitor = "HDMI-A-1", default = true });

hl.config({
    input = {
      kb_layout = "us",
      kb_variant = "intl",
      kb_model = "",
      kb_options = "grp:win_space_toggle,caps:escape",
      kb_rules = "",

      follow_mouse = 1,

      sensitivity = 0,
      accel_profile = "flat",
      force_no_accel = true,

      touchpad = {
        natural_scroll = false
      }
    },
    decoration = {
      active_opacity = 0.93,
      inactive_opacity = 0.88,

      blur = {
        enabled = true,
        size = 6,
        passes = 5,
        vibrancy = 0.2,
        noise = 0.2,
        contrast = 1.5,
        brightness = 1
      }
  }
})
