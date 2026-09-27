


---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local webBrowser  = "firefox"
local terminal    = "kitty"
local fileManager = "kitty -e yazi"
local appMenu        = "./.config/rofi/launcher/launcher.sh"


-- Custom Shortcuts for specific Folders

local downloads = "kitty -e yazi /home/$USER/Descargas"
local documents = "kitty -e yazi /home/$USER/Documentos"
local cachyDotfiles = "kitty -e yazi /home/$USER/CachyDotFiles"
local development = "kitty -e yazi /home/$USER/Dev"

---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- OPEN TERMINAL / SCRATCHPAD
hl.bind(mainMod .. " + Return",               hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + SHIFT + " .. "Return", hl.dsp.exec_cmd("~/.config/hypr/scripts/scratchpad.sh"))

-- CLOSE WINDOW
hl.bind(mainMod .. " + Q", hl.dsp.window.close())

-- SHUT DOWN & RELOAD HYPRLAND
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("/home/pablo/.config/waybar/scripts/launch.sh"))

-- ROFI
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(appMenu))

-- BROWSER
hl.bind(mainMod .. " + SHIFT + " .. "F", hl.dsp.exec_cmd(webBrowser))

-- FILE MANAGER / -- FOLDER QUICK ACCESS
hl.bind(mainMod .. " + SHIFT + " .. "W", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + W",               hl.dsp.exec_cmd("~/.config/hypr/scripts/folder-menu.sh"))

-- SPOTIFY
hl.bind(mainMod .. " + SHIFT + " .. "P",     hl.dsp.exec_cmd("spotify-launcher"))
-- PASSWORDS
hl.bind(mainMod .. " + SHIFT + " .. "K",     hl.dsp.exec_cmd("keepassxc"))
-- VSCode
hl.bind(mainMod .. " + SHIFT + " .. "V",     hl.dsp.exec_cmd("code"))
-- SCREENSHOTS
hl.bind(mainMod .. "+ C", hl.dsp.exec_cmd("flameshot gui"))

-- MENU ATAJOS / HORARIO
hl.bind(mainMod .. " + H",               hl.dsp.exec_cmd("rofi -dmenu -i -p 'Atajos:' -theme ~/.config/rofi/launcher/style-5.rasi < ~/.config/hypr/scripts/shortcuts.txt"))
hl.bind(mainMod .. " + SHIFT + " .."H",  hl.dsp.exec_cmd("$HOME/.config/hypr/scripts/horario.sh"))

-- WEB QUICK ACCESS / VSC Workspaces
hl.bind(mainMod .. "+ Tab", hl.dsp.exec_cmd("~/.config/hypr/scripts/web-menu.sh"))
hl.bind(mainMod .. "+ SHIFT +" .. "Tab", hl.dsp.exec_cmd("~/.config/hypr/scripts/workspace-folder.sh"))

-- SPECIAL WORKSPACE
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- DARK SCREEN / LOCK
hl.bind(mainMod .. " + N ", hl.dsp.exec_cmd("$HOME/.config/hypr/scripts/toggle-black.sh"))
hl.bind(mainMod .. " + B ", hl.dsp.exec_cmd("hyprlock"))



-- WINDOW MANAGEMENT

-- Move/resize windows: mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + O", hl.dsp.window.float({ action = "toggle" })) -- Desencajar la ventana
hl.bind(mainMod .. " + SHIFT + " .. "O", hl.dsp.exec_cmd("pkill -SIGUSR1 waybar")) -- Quitar la waybar
hl.bind(mainMod .. " + F", hl.dsp.layout("togglesplit"))    -- dwindle only

-- MOVE FOCUS
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))


-- WORKSPACES
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- AUDIO / BRIGHTNESS 

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })


-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse:275", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse:276",   hl.dsp.focus({ workspace = "e-1" }))