------------------
---- MONITORS ----
------------------


-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "",
    mode     = "1920x1080@144",
    position = "auto",
    scale    = "1",
})


hl.workspace_rule({ workspace = "1", monitor = "", persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "", persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "", persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "", persistent = true })

