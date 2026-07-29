local layerRules = {
    hl.layer_rule({
        name = "blur-waybar",
        match = { namespace = "^waybar$" },
        blur = true,
    }),

    hl.layer_rule({
        name = "blur-rofi",
        match = { namespace = "^rofi$" },
        blur = true,
    }),

    hl.layer_rule({
        name = "blur-notifications",
        match = { namespace = "^notifications$" },
        blur = true,
    }),

    -- hl.window_rule({
    --     name = "blur-firefox",
    --     match = { class = "^firefox$" },
    --     opacity = 0.95
    -- })
}
