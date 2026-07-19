# Instalar Starship en Linux

Descarga del prompt
```sh
   curl -sS https://starship.rs/install.sh | sh
```

Se agrega dentro del archivo de configuración `~/.zshrc`
```sh
   eval "$(starship init zsh)"
```

La configuración del prompt (tema, símbolos, hora) se documenta en [../README.md](../README.md).