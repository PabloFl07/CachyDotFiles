#!/usr/bin/env bash

# Si Kitty con la clase especificada no existe, la inicia
if ! pgrep -f "kitty --class kitty-scratchpad" > /dev/null; then
    kitty --class kitty-scratchpad &
    sleep 0.2
fi

# Muestra u oculta el espacio de trabajo especial
hyprctl dispatch togglespecialworkspace scratchpad