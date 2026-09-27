#!/usr/bin/env bash

# Ruta a tu tema de rofi (opcional)
theme="$HOME/.config/rofi/launcher/style-5.rasi" 

# Opciones que se mostrarán en Rofi
options="1. Descargas\n2. Documentos\n3. CachyDotFiles\n4. Development\n5. Papelera\n6. Drives"

# Mostrar Rofi
chosen=$(echo -e "$options" | rofi -dmenu -theme "$theme" -i -p "Abrir Yazi en:")

# Asignación de rutas
case "$chosen" in
    "1. Descargas")     kitty -e yazi "$HOME/Descargas" ;;
    "2. Documentos")    kitty -e yazi "$HOME/Documentos" ;;
    "3. CachyDotFiles") kitty -e yazi "$HOME/CachyDotFiles" ;;
    "4. Development")   kitty -e yazi "$HOME/Dev" ;;
    "5. Papelera")      kitty -e yazi "$HOME/.local/share/Trash/files" ;;
    "6. Drives")        kitty -e yazi "/run/media/$USER" ;;
esac