# Homebrew (macOS)

## Instalación
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
En Apple Silicon añade a `~/.zprofile`:
```sh
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## Brewfile
El archivo [`Brewfile`](./Brewfile) lista las apps y fórmulas del autor. Para instalar todo de una vez:
```sh
brew bundle install --file=dotfiles/pkgmanagers/macos/Brewfile
```

Para regenerarlo desde tu Mac:
```sh
brew bundle dump --file=dotfiles/pkgmanagers/macos/Brewfile --force
```

## Fórmulas y casks referenciadas en las guías
- `starship`, `neovim`, `fnm`, `lsd`, `zoxide`, `stow` → fórmulas.
- `iterm2`, `visual-studio-code` → casks.

> Las apps GUI se instalan como casks; las de CLI como fórmulas. `brew bundle` distingue automáticamente según la sección del Brewfile.