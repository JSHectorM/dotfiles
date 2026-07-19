# Instalar Neovim en macOS

```sh
brew install neovim
```

LazyVim requiere Neovim `>= 0.9`; la fórmula de Homebrew siempre va por delante de ese requisito.

## LazyVim
```sh
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

Si versionas tu configuración desde este repo (vía Stow), omite el `git clone` anterior y simplemente enlaza [`../home/.config/nvim/`](../home/.config/nvim/) con `make link-macos`.

> Requisitos comunes y primer arranque en [../README.md](../README.md).