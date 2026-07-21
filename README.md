# Dotfiles

Notas y configuración de mis entornos de trabajo: Linux (Ubuntu), macOS y Windows. Organizado **por herramienta**, con guías en Markdown y archivos reales versionados bajo carpetas `<so>/home/` desplegables con [GNU Stow](https://www.gnu.org/software/stow/) (Linux/macOS) y un script de respaldo para Windows.

## Índice por herramienta

| Herramienta | Linux | macOS | Windows |
|---|:---:|:---:|:---:|
| [Git](git/README.md) | ✓ | ✓ | ✓ |
| [Shell](shell/README.md) | [zsh](shell/linux/zsh.md) | [zsh](shell/macos/zsh.md) | [powershell](shell/windows/powershell.md)<br>[cmd](shell/windows/cmd.md)<br>[wsl](shell/windows/wsl.md)<br>[temas](shell/windows/themes.md) |
| [Prompt (Starship)](prompt/README.md) | [install](prompt/linux/install.md) | [install](prompt/macos/install.md) | [install](prompt/windows/install.md) |
| [Editor: Neovim](editor/nvim/README.md) | [install](editor/nvim/linux/install.md) | [install](editor/nvim/macos/install.md) | — |
| [Editor: VS Code](editor/vscode/README.md) | — | — | [perfiles](editor/vscode/windows/profiles.md) |
| Node (fnm / nvm) | [fnm](node/fnm/linux/install.md) | [fnm](node/fnm/macos/install.md) | [nvm](node/nvm/windows/install.md) |
| [Gestores de paquetes](pkgmanagers/) | [apt](pkgmanagers/linux/apt.md) | [brew](pkgmanagers/macos/README.md)<br>[Brewfile](pkgmanagers/macos/Brewfile) | [winget](pkgmanagers/windows/winget.md) |

## Despliegue

### Linux / macOS (GNU Stow)
Requisito: `sudo apt install stow` (Linux) o `brew install stow` (macOS).

```sh
make link-macos    # o make link-linux
make unlink-macos  # para deshacer
```

Cada paquete `*/home/` se enlaza relativo a `$HOME` (ver `.stowrc`). Por ejemplo `prompt/home/.config/starship.toml` → `~/.config/starship.toml`.

### Windows (script de copia con backup)
No se usa Stow (rutas fuera de `$HOME`). El script respalda como `*.bak` y restaura al deshacer.

```sh
bash scripts/link-windows.sh link
bash scripts/link-windows.sh unlink
```
Copia:
- `shell/windows/Microsoft.PowerShell_profile.ps1` → `~/Documents/PowerShell/Microsoft.PowerShell_profile.ps1`
- `shell/windows/clink_settings` → `%LocalAppData%\clink\settings`
- `shell/windows/starship.lua` → `%LocalAppData%\clink\starship.lua`

## Archivos reales versionados

- `git/home/.gitconfig` — plantilla (rellena `[user]` o usa `~/.gitconfig.local`, ignorado).
- `shell/macos/home/.zshrc`, `shell/linux/home/.zshrc` — `.zshrc` por SO.
- `prompt/home/.config/starship.toml` — configuración común de Starship.
- `editor/nvim/home/.config/nvim/` — configuración de LazyVim (pendiente de añadir).
- `pkgmanagers/macos/Brewfile` — apps CLI+GUI del autor.

## Fuentes externas
- [NerdFonts](https://github.com/ryanoasis/nerd-fonts/?tab=readme-ov-file#font-installation)
- [Cascadia code](https://github.com/microsoft/cascadia-code)
- [Starship](https://starship.rs/guide/)