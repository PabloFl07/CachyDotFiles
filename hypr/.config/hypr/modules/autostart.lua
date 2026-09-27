-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
hl.on("hyprland.start", function () 
    hl.exec_cmd("waybar & /home/pablo/.config/hypr/waybar/launch.sh")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("hyprctl setcursor Qogir-arrow-only 22")
    hl.exec_cmd("systemctl --user enable --now hypridle.service")
    
end)
