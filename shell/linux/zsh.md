# ZSH en Linux (Ubuntu)

## Instalar zsh y cambiarlo de bash -> zsh
```sh
    sudo apt install zsh -y
```
Verificar zsh
```sh
    zsh --version
```
Cambiar a zsh por defecto.
```sh
    chsh -s $(which zsh)
```

## Instalar oh my zsh
Descargar repositorio
```sh
   sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Instalar plugins

### zsh-syntax-highlighting
- Repo de origen -> [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

Se clona el repo dentro de los plugins en ZSH
```sh
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
Se agrega dentro del archivo de configuración `~/.zshrc`
```sh
    plugins=(git zsh-syntax-highlighting)
```

### ZSH-AutoSuggestion
- Repo de origen -> [ZSH-AutoSuggestion](https://github.com/zsh-users/zsh-autosuggestions)

Se clona el repo dentro de los plugins en ZSH
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

Se agrega dentro del archivo de configuración `~/.zshrc`
```sh
   plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
```

> La configuración del prompt (Starship) se documenta en [../../prompt/README.md](../../prompt/README.md).