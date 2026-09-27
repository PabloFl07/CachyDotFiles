-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_THEME", "Qogir-arrow-only")
hl.env("XCURSOR_SIZE", "22")
hl.env("HYPRCURSOR_THEME", "Qogir-arrow-only")
hl.env("HYPRCURSOR_SIZE", "22")


-- Toolkit Backend

hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")

-- XDG

hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- Qt

hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")

-- Nvidia (base, híbrido Intel + 4060)
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("NVD_BACKEND", "direct")

-- Condicionales (descomentar solo ante el síntoma):
-- hl.env("GBM_BACKEND", "nvidia-drm")     -- si el compositor cae a software rendering
-- hl.env("WLR_NO_HARDWARE_CURSORS", "1")  -- si el cursor desaparece
-- hl.env("AQ_FORCE_LINEAR_BLIT", "0")     -- si parpadea un monitor externo colgado de la dGPU
