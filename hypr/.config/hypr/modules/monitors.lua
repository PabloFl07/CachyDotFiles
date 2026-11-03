------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

local MAIN = "eDP-1"     
local ACER = "HDMI-A-1"  

-- Principal (izquierda)
hl.monitor({ output = MAIN, mode = "1920x1080@144", position = "1920x0", scale = 1 })

-- Acer (derecha)
hl.monitor({ output = ACER, mode = "1920x1080@144", position = "0x0", scale = 1 })

-- Comodín para cualquier otra pantalla (proyector, TV...)
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1 })

-- Workspaces 1-5 en el principal, 6-10 en el Acer
for i = 1, 5 do
  hl.workspace_rule({ workspace = tostring(i), monitor = MAIN, persistent = true })
end
for i = 6, 10 do
  hl.workspace_rule({ workspace = tostring(i), monitor = ACER, persistent = true })
end