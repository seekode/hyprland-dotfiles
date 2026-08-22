hl.window_rule({ match = { class = ".*" }, no_blur = false })
hl.window_rule({match = {float = 0 }, no_shadow = false})

-- Utility windows & file pickers as centered floating windows
hl.window_rule({
    match = { class = "^(xdg-desktop-portal-.*)$|com.saivert.pwvucontrol|io.github.celluloid_player.Celluloid|org.gnome.gThumb" },
    float = true,
    center = true,
    size = { 1280, 720 }
})

-- Android emulators (Mobile dev)
hl.window_rule({
    match = { class = "Emulator" },
    float = true,
    no_blur = true,
    immediate = true
})
