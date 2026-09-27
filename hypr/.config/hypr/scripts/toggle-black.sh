#!/bin/bash

# Obtiene el brillo actual
CURRENT_BRIGHTNESS=$(brightnessctl g)

if [ "$CURRENT_BRIGHTNESS" -eq 0 ]; then
    # Si ya es 0, lo cambia a 100%
    brightnessctl set 100%
else
    # Si es distinto de 0, guarda el estado actual (-s) y lo pone a 0
    brightnessctl -s set 0
fi