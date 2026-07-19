# Instalar Neovim en Linux (Ubuntu)

Se instala de forma manual para obtener la versión `0.10.1` (LazyVim requiere `>= 0.9`; el `apt` de Ubuntu LTS suele traer una versión más antigua).

```sh
    wget https://github.com/neovim/neovim/releases/download/v0.10.1/nvim-linux64.tar.gz
```
Remueve la carpeta de configuración para evitar errores:
```sh
    sudo rm -rf /opt/nvim
```
Extrae el ejecutable en `/opt`:
```sh
     sudo tar -C /opt -xzf nvim-linux64.tar.gz
```
Agrega al path para su ejecución:
```sh
     export PATH="$PATH:/opt/nvim-linux64/bin"
```

## LazyVim
Requiere un compilador de C:
```sh
    sudo apt install gcc
```
Pasos de la documentación de LazyVim:
```sh
    git clone https://github.com/LazyVim/starter ~/.config/nvim
    rm -rf ~/.config/nvim/.git
```

Si versionas tu configuración desde este repo (vía Stow), omite el `git clone` y enlaza [`../home/.config/nvim/`](../home/.config/nvim/) con `make link-linux`.

> Requisitos comunes y primer arranque en [../README.md](../README.md).