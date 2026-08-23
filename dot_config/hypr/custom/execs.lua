hl.on("hyprland.start", function()
  -- Audio setup
  -- hl.exec_cmd("/usr/bin/goxlr-daemon")
  -- hl.exec_cmd("easyeffects --gapplication-service")
  -- hl.exec_cmd("sleep 5 && pactl set-default-source easyeffects_source")

  -- Background integrations and applications
  hl.exec_cmd("kdeconnectd")
  hl.exec_cmd("wayscriber --daemon")
  hl.exec_cmd("betterbird --new-instance")
  hl.exec_once("wayscriber --daemon")
end)
