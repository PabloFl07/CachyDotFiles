#!/usr/bin/env bash

# Ruta a tu tema de rofi (opcional)
theme="$HOME/.config/rofi/launcher/style-5.rasi" 

# Opciones que se mostrarán en Rofi
options="1. CachyDotFiles\n2. CryptoPython\n3. CVPython\n4. Algoritmos\n5. FRFE\n6. Sustentable\n7. LitExplorer\n8. LitMetrics"

# Mostrar Rofi
chosen=$(echo -e "$options" | rofi -dmenu -theme "$theme" -i -p "Abrir VS Code en:")

# Asignación de rutas o workspaces
case "$chosen" in
    "1. CachyDotFiles")     code "$HOME/CachyDotFiles" ;;
    "2. CryptoPython")      code "$HOME/Dev/.workspaces/CryptoPython.code-workspace";;
    "3. CVPython")          code "$HOME/Dev/.workspaces/CVPython.code-workspace";;
    "4. Algoritmos")        code "$HOME/Dev/.workspaces/Algoritmos.code-workspace" ;;
    "5. FRFE")              code "$HOME/Dev/.workspaces/FRFE.code-workspace" ;;
    "6. Sustentable")       code "$HOME/Dev/.workspaces/sustentable.code-workspace";;
    "7. LitExplorer")       code "$HOME/Dev/.workspaces/LitExplorer.code-workspace";;
    "8. LitMetrics")       code "$HOME/Dev/.workspaces/LitMetrics.code-workspace";;
esac