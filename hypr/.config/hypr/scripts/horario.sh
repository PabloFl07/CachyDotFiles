#!/usr/bin/env bash

# Si Kitty con la clase especificada no existe, la inicia
if ! pgrep -f "kitty --class kitty-horario" > /dev/null; then
    kitty --class kitty-horario sh -c 'glow "$HOME/.config/hypr/scripts/horario.md"; sleep 5'  &
    sleep 0.2
fi

# Muestra u oculta el espacio de trabajo especial
hyprctl dispatch togglespecialworkspace horario

