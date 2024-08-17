# Neo Vim
Editor de codigo, el ejemplo va para ubuntu

Se instal de forma manual el neovim , para este caso es la version `0.10.1` ya que Lazy requiere a una versionn superior a 9
```sh 
    wget https://github.com/neovim/neovim/releases/download/v0.10.1/nvim-linux64.tar.gz 
```
Remueve carpeta de configuración para evitar errores
```sh 
    sudo rm -rf /opt/nvim
```
Extraemos el ejecutable en `/opt`
```sh 
     sudo tar -C /opt -xzf nvim-linux64.tar.gz
```
 Y agregamos al path para su ejecucion
```sh 
     export PATH="$PATH:/opt/nvim-linux64/bin"
```


## [Lazyvim](https://github.com/LazyVim/LazyVim)

Para instalar , se requiere un compilador de C
```sh 
    sudo apt install gcc
```

Ya instalado se ahcen los pasos indicados en su documetación
```sh 
    git clone https://github.com/LazyVim/starter ~/.config/nvim
    rm -rf ~/.config/nvim/.git
```

