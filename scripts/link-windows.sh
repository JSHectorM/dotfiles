#!/usr/bin/env bash
# Despliegue de dotfiles de Windows (PowerShell, CMD/Clink) sin Stow.
# Stow no soporta rutas fuera de $HOME estilo Windows; aquí copiamos con backup .bak.

set -euo pipefail

MODE="${1:-link}"

# Resuelve LOCALAPPDATA dependiendo de la plataforma (ejecutado desde Git Bash o WSL)
if [[ -n "${LOCALAPPDATA:-}" ]]; then
  LOCAL_APPDATA="$LOCALAPPDATA"
elif [[ -n "${USERPROFILE:-}" ]]; then
  LOCAL_APPDATA="${USERPROFILE}/AppData/Local"
else
  echo "LOCALAPPDATA/USERPROFILE no definido. Ejecuta este script desde Windows (Git Bash o WSL)." >&2
  exit 1
fi

PS_PROFILE_DIR="${USERPROFILE}/Documents/PowerShell"
CLINK_DIR="${LOCAL_APPDATA}/clink"

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/shell/windows"

backup() { [[ -e "$1" ]] && cp -v "$1" "$1.bak" || true; }
restore() { [[ -e "$1.bak" ]] && mv -v "$1.bak" "$1" || true; }

link_file() {
  local src="$1" dest="$2"
  mkdir -p "$(dirname "$dest")"
  backup "$dest"
  cp -v "$src" "$dest"
}

unlink_file() {
  local dest="$1"
  restore "$dest"
}

case "$MODE" in
  link)
    link_file "$SRC_DIR/Microsoft.PowerShell_profile.ps1" "$PS_PROFILE_DIR/Microsoft.PowerShell_profile.ps1"
    link_file "$SRC_DIR/clink_settings" "$CLINK_DIR/settings"
    link_file "$SRC_DIR/starship.lua" "$CLINK_DIR/starship.lua"
    echo "OK. Backups .bak creados si reemplazaron archivos previos."
    ;;
  unlink)
    unlink_file "$PS_PROFILE_DIR/Microsoft.PowerShell_profile.ps1"
    unlink_file "$CLINK_DIR/settings"
    unlink_file "$CLINK_DIR/starship.lua"
    echo "OK. Restaurados desde .bak (si existían)."
    ;;
  *)
    echo "Uso: link-windows.sh {link|unlink}" >&2
    exit 2
    ;;
esac