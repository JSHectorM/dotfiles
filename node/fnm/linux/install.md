# fnm — Instalación en Linux

> Descripción común: [../README.md](../README.md).

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

> En macOS: [../macos/install.md](../macos/install.md).