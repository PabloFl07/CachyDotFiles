#!/usr/bin/env bash

# Ruta a tu tema de rofi (opcional)
theme="$HOME/.config/rofi/launcher/style-5.rasi" 

# Opciones que se mostrarán en Rofi
options="1. CachyDotFiles\n2. CryptoPython\n3. Algoritmos\n4. Software"

# Mostrar Rofi
chosen=$(echo -e "$options" | rofi -dmenu -theme "$theme" -i -p "Abrir VS Code en:")

# Asignación de rutas o workspaces
case "$chosen" in
    "1. CachyDotFiles")     code "$HOME/CachyDotFiles" ;;
    "2. CryptoPython")      code "$HOME/Dev/.workspaces/CryptoPython.code-workspace";;
    "3. Algoritmos")     code "$HOME/GIA25-29/Algoritmos" ;;
    "4. Software")     code "$HOME/GIA25-29/Software" ;;
esac