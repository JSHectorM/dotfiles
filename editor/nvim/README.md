# Neovim + LazyVim

[LazyVim](https://github.com/LazyVim/LazyVim) es una distribución de Neovim que requiere Neovim `>= 0.9`. La configuración real versionada está en [home/.config/nvim/](home/.config/nvim/) y se enlaza a `~/.config/nvim/` mediante Stow.

## Requisitos comunes
- Compilador de C para los treesitters: `gcc` (Linux) / `clang` (macOS, viene con Xcode CLT).
- `git` para clonar los plugins al primer arranque.
- Una Nerd Font instalada en la terminal (ver [../../README.md](../../README.md)).

## Instalación por SO
- Linux: [linux/install.md](linux/install.md)
- macOS: [macos/install.md](macos/install.md)

## Primer arranque
Tras clonar el starter y abrir `nvim`, Lazy descarga automáticamente los plugins. Si la versión de Neovim es `< 0.9` Lazy no arrancará.