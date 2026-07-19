# Shell

Configuración de shell por sistema operativo. Todas las guías asumen que el prompt (Starship) se configura por separado en [../prompt/README.md](../prompt/README.md).

| SO      | Shell por defecto | Guía                        |
|---------|-------------------|-----------------------------|
| Linux   | zsh               | [linux/zsh.md](linux/zsh.md)|
| macOS   | zsh               | [macos/zsh.md](macos/zsh.md)|
| Windows | PowerShell / CMD  | [windows/powershell.md](windows/powershell.md), [windows/cmd.md](windows/cmd.md) |

## Archivos versionados

- `linux/home/.zshrc` — `.zshrc` para Linux (gestionado con Stow).
- `macos/home/.zshrc` — `.zshrc` para macOS (gestionado con Stow).
- `windows/Microsoft.PowerShell_profile.ps1` — perfil de PowerShell (desplegado por `scripts/link-windows.sh`).
- `windows/clink_settings`, `windows/starship.lua` — config de CMD/Clink (desplegados por el mismo script).