#!/usr/bin/env bash

# Utilizar el mismo tema de Rofi que usaste anteriormente
THEME="$HOME/.config/rofi/launcher/style-5.rasi"

# Lista de páginas web
options="1. GitHub\n2. Claude\n3. Campus"

# Desplegar Rofi
chosen=$(echo -e "$options" | rofi -dmenu -theme "$THEME" -i -p "🌐 Web:")

# Abrir el navegador en la URL correspondiente
case "$chosen" in
    "1. GitHub")  firefox "https://github.com/" ;;
    "2. Claude")  firefox "https://claude.ai/new" ;;
    "3. Campus")  firefox "https://udconline.udc.gal/?_gl=1*1rmk1y2*_ga*MTQyNzMzMjE2OS4xNzU4NzgwMDEy*_ga_PKZEC02YMQ*czE3NTg3ODAwMTIkbzEkZzAkdDE3NTg3ODAwMTIkajYwJGwwJGgw" ;;

esac