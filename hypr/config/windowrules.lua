local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name           = "suppress-maximize-events",
    match          = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name     = "fix-xwayland-drags",
    match    = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})


-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})


hl.window_rule({
    name = "float-term",
    match = {
        title = "^(float-term)$",
    },

    float = true,
    size = "1400 800",
})

hl.window_rule({
    name = "firefox",
    match = {
        title = "^(firefox)$",
    },
})

hl.window_rule({
    name = "firefox_private",
    match = {
        title = "^firefox_private$",
    },
})

hl.window_rule({
    name = "float-term-1",
    match = {
        title = "^(float-term-1)$",
    },

    float = true,
    size = "860 450",
})
