# ZSH en macOS

## Shell por defecto
macOS trae zsh por defecto desde Catalina. Para confirmar o cambiarlo:
```sh
echo $SHELL
chsh -s /bin/zsh
```

## oh-my-zsh
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
> En macOS usamos `curl` en lugar de `wget` (no viene por defecto).

## Plugins
Opción A — vía Homebrew (recomendada, se actualiza con `brew upgrade`):
```sh
brew install zsh-syntax-highlighting zsh-autosuggestions
```
Cargarlos en `~/.zshrc`:
```sh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
```

Opción B — clonando dentro de `$ZSH_CUSTOM` (igual que en Linux):
```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```
Y en `~/.zshrc`:
```sh
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
```

## Diferencias frente a Linux
- `coreutils` de macOS no incluye `lsd` por defecto → `brew install lsd`.
- `zoxide` se inicializa igual: `eval "$(zoxide init zsh)"`.
- `$ZSH_CUSTOM` por defecto apunta a `~/.oh-my-zsh/custom` (mismo path que Linux).

> La configuración del prompt (Starship) en [../../prompt/macos/install.md](../../prompt/macos/install.md).