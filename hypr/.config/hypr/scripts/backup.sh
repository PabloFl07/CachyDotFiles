#!/usr/bin/env bash
#
# backup.sh — Copia de seguridad de carpetas predefinidas
#
# Edita las variables CARPETAS y DESTINO más abajo con tus rutas.
# Cada ejecución genera un .tar.gz con la fecha y la hora en el nombre.

set -euo pipefail

# ---------------------------------------------------------------------------
# CONFIGURACIÓN — edita estas rutas a tu gusto
# ---------------------------------------------------------------------------
CARPETAS=(
    "$HOME/Documentos"
    "$HOME/Dev"
    "$HOME/.config"
    "$HOME/CachyDotFiles"
)

DESTINO="$HOME/backups"

# ---------------------------------------------------------------------------

mkdir -p "$DESTINO"

# Comprobar que las carpetas configuradas existen realmente
CARPETAS_VALIDAS=()
for carpeta in "${CARPETAS[@]}"; do
    if [[ -d "$carpeta" ]]; then
        CARPETAS_VALIDAS+=("$carpeta")
    else
        echo "Aviso: '$carpeta' no existe, se omite."
    fi
done

if [[ ${#CARPETAS_VALIDAS[@]} -eq 0 ]]; then
    echo "Ninguna de las carpetas configuradas existe. Revisa CARPETAS en el script."
    exit 1
fi

# ---------------------------------------------------------------------------
# Crear el backup con fecha y hora en el nombre
# ---------------------------------------------------------------------------
FECHA=$(date +"%Y-%m-%d")
HORA_ARCHIVO=$(date +"%H-%M-%S")
HORA_LEGIBLE=$(date +"%H:%M:%S")
NOMBRE_BACKUP="backup_${FECHA}_${HORA_ARCHIVO}.tar.gz"
RUTA_BACKUP="$DESTINO/$NOMBRE_BACKUP"

echo "Carpetas a respaldar:"
printf '  - %s\n' "${CARPETAS_VALIDAS[@]}"
echo
echo "Creando backup..."

tar --exclude="$DESTINO" -czf "$RUTA_BACKUP" "${CARPETAS_VALIDAS[@]}"

TAMANO=$(du -h "$RUTA_BACKUP" | cut -f1)

echo
echo "✔ Backup completado"
echo "  Archivo: $RUTA_BACKUP"
echo "  Tamaño:  $TAMANO"
echo "  Fecha:   $FECHA"
echo "  Hora:    $HORA_LEGIBLE"
