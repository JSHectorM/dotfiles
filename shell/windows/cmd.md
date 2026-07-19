# CMD en Windows (Clink + Starship)

Prompt para CMD se Logra con [Clink](https://chrisant996.github.io/clink/).

Instalación (ver [../../prompt/windows/install.md](../../prompt/windows/install.md)):
```bash
  winget install clink
```

## Configuración
- [`clink_settings`](./clink_settings) va en `%LocalAppData%\clink\settings` (o se carga vía `clink set`). Desactiva el logo y el hint de autosugerencia para mantener la salida limpia.
- [`starship.lua`](./starship.lua) carga la inicialización de Starship en CMD:
  ```lua
  load(io.popen('starship init cmd'):read("*a"))()
  ```
  Este archivo se coloca en el directorio de scripts de Clink (`%LocalAppData%\clink\` por defecto).

El script [`../../scripts/link-windows.sh`](../../scripts/link-windows.sh) coloca ambos archivos en sus rutas correctas automáticamente.