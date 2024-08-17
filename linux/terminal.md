# Terminal Linux

Para el caso de ubuntu 

- ### [NVIM](./nvim.md)
- ### [Fast Node Manager](./nvim.md)

## ZSH
Istalar zsh y cambiarlo de bash -> zsh
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
## Instalar  oh my zsh
Descargar repositario

```sh
   sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```


## Instalar pluggins

### zsh-syntax-highlighting

 - Repo de origen ->[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

 Se clona el repo dentro de los pluggins en ZSH

```sh
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
Se agrega dentro del archivo de configuración `~/.zshrc`
```sh
    plugins=(git zsh-syntax-highlighting)
```

### ZSH-AutoSuggestion

 -  Repo de origen ->[ZSH-AutoSuggestion](https://github.com/zsh-users/zsh-autosuggestions)

  Se clona el repo dentro de los pluggins en ZSH

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

Se agrega dentro del archivo de configuración `~/.zshrc`
```sh
   plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
```

## Prompt 🚀
Descarga del prompt
```sh
   curl -sS https://starship.rs/install.sh | sh
```

Se agrega dentro del archivo de configuración `~/.zshrc`
```sh
   eval "$(starship init zsh)"
```
### Configuracion del prompt en [Readme](../README.md)