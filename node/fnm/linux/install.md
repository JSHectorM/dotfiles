# Fast Node Manager ([fnm](https://github.com/Schniz/fnm))

Gestor de versiones de Node.js rápido y sencillo, escrito en Rust.

## Instalación en Linux (Ubuntu)

Requiere `zip`/`unzip`:
```sh
    sudo apt install zip
```

Instalación:
```sh
    curl -fsSL https://fnm.vercel.app/install | zsh
```

Inicialización en `~/.zshrc` (si usas el script de vercel.app suele añadirla automáticamente):
```sh
    eval "$(fnm env --use-on-cd)"
```

> En macOS: [../macos/install.md](../macos/install.md). En Windows: [../../nvm/windows/install.md](../../nvm/windows/install.md).