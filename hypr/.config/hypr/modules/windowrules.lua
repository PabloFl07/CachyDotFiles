--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})


hl.layer_rule({
    name = "rofi",
    match = { namespace = "rofi"},
    animation = "slide top 100ms ease-in-out",
    dim_around = true,
})

hl.layer_rule({
    name = "swaync",
    match = { namespace = "swaync-control-center"},
    animation = "slide left 100ms ease-in-out",
    dim_around = false,
})

hl.window_rule({
    match = { class = "[Ff]armingSimulator2022%.exe" },
    float = true,
    pin = true,
})


-- SCRATCHPAD
hl.window_rule({
    name  = "kitty-scratchpad",
    match = { class = "^kitty-scratchpad$" },

    float     = true,
    dim_around = true,
    size      = "1200 200",
    center    = true,
    workspace = "special:scratchpad",
})

hl.window_rule({
    name  = "kitty-horario",
    match = { class = "^kitty-horario$" },

    float     = true,
    dim_around = true,
    size      = "1000 350",
    center    = true,
    workspace = "special:horario",
})

hl.window_rule({
    name  = "swappy-capture",
    match = { class = "^swappy$" },

    float       = true,
    pin         = false,
    stay_focused = true,
})