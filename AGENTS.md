# AGENTS.md

Repositorio de dotfiles: guías en Markdown + archivos reales de configuración versionados, desplegables con GNU Stow. No hay build ni tests; *sí* hay un `Makefile` que delega en `stow` y un script de copia para Windows.

## Organización: por herramienta, no por SO

Cada carpeta top-level es una herramienta: `git/`, `shell/`, `prompt/`, `editor/`, `node/`, `pkgmanagers/`. Dentro suelen existir subcarpetas `linux/`, `macos/`, `windows/` con guías por SO, y una carpeta `<so>/home/` (o `home/` común) que es el paquete Stow con la ruta real relativa a `$HOME`. **No** separar por SO en el nivel superior.

## Despliegue (alto riesgo de confundirse)

- Linux/macOS: `make link-macos` / `make link-linux` corre `stow -R` sobre los paquetes definidos en el `Makefile`. `.stowrc` fija `--target=$HOME --dotfiles`. Deshacer con `make unlink-*`.
- Windows: **no se usa Stow**. `bash scripts/link-windows.sh link|unlink` copia (con backup `.bak`) los perfiles a `~/Documents/PowerShell/` y `%LocalAppData%\clink\`. Restaurar con `unlink`.
- Al añadir un archivo real nuevo, créalo dentro del paquete `*/home/` que corresponda (ej. `prompt/home/.config/starship.toml` enlaza a `~/.config/starship.toml`). No pongas rutas absolutas en el contenido; Stow crea la jerarquía a partir del paquete.

## Archivos reales vs. guías

- **Guías**: `.md` (instalación, uso, alias). Es lo que el usuario lee.
- **Archivos reales**: todo lo que vive bajo `*/home/` (`.zshrc`, `.gitconfig`, `.config/...`). Eso es lo que se enlaza a la máquina del usuario.
- **No sanitices ni inventes** contenido de `*/home/`. Si necesitas una config nueva, pídele al usuario que copie la suya (ej. `cp ~/.zshrc dotfiles/shell/macos/home/.zshrc`) o usa `brew bundle dump` para el `Brewfile`. El `.gitconfig` es **plantilla**: `[user]` lleva placeholders y se debe sobreescribir o usar `~/.gitconfig.local` (ignorado).

## Idioma y audiencia

Toda la documentación está en **español**. Mantén ese idioma al editar/crear `.md`.

## Convenciones editoras

- Las rutas hardcodeadas `C:\Users\migue\...` en `editor/vscode/windows/profiles.md` y `shell/windows/Microsoft.PowerShell_profile.ps1` son personales del autor; no generalizarlas salvo que se pida explícitamente.
- Las imágenes viven en `img/` (raíz), no en `linux/img` ni `windows/img`; están referenciadas desde los `.md`.
- `.idea`, `*.bak`, `.stow-fail`, `editor/nvim/home/.config/nvim/lazy-lock.json` y `.gitconfig.local` están en `.gitignore`.
- Requisito para Stow: `brew install stow` (macOS) o `sudo apt install stow` (Linux). Ninguna acción de `make` debe asumir que está instalado sin documentarlo.
- LazzyVim (`editor/nvim/`) requiere Neovim `>= 0.9`; en Linux se instala manualmente (no usar el de `apt` por versión antigua), en macOS vía `brew`.

## Evitar

- No recrear carpetas `linux/img/` o `windows/img/`; las imágenes se centralizaron en `img/`.
- No duplicar guías entre SO: si una herramienta es común, pon la parte común en el `README.md` de la herramienta y sólo las diferencias en `<so>/...md`.
- No enlaces relativos rotos: tras mover archivos, verifica con `grep -rn '](\./' --include='*.md'`.