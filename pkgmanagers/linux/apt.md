# Gestores de paquetes en Linux (apt)

Lista consolidada de paquetes `apt` referenciados por las guías de este repo (Ubuntu/Debian).

```sh
sudo apt install -y \
  zsh \
  git \
  gcc \
  zip unzip \
  stow
```

## Origen por paquete
| Paquete  | Se usa en                                            |
|----------|------------------------------------------------------|
| `zsh`    | [shell/linux/zsh.md](../../shell/linux/zsh.md)      |
| `gcc`    | [editor/nvim/linux/install.md](../../editor/nvim/linux/install.md) |
| `zip`    | [node/fnm/linux/install.md](../../node/fnm/linux/install.md) |
| `stow`   | despliegue de dotfiles (ver [../../README.md](../../README.md)) |

> Starship y lsd no están en `apt` estándar; ver sus rutas respectivas.