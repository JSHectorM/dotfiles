# Agentes de código IA

Asistentes de terminal para desarrollo asistido por IA. Ambos funcionan como REPLs interactivos que leen el contexto del proyecto y ejecutan acciones sobre el código.

| Herramienta | Linux | macOS | Windows |
|---|:---:|:---:|:---:|
| [Claude Code](claude/README.md) | [install](claude/linux/install.md) | [install](claude/macos/install.md) | [install](claude/windows/install.md) |
| [opencode](opencode/README.md) | [install](opencode/linux/install.md) | [install](opencode/macos/install.md) | [install](opencode/windows/install.md) |

## Archivos versionados

- `claude/home/.claude/settings.json` — preferencias de Claude Code (modelo, tema, idioma).
- `opencode/home/.config/opencode/opencode.json` — configuración de opencode (plugins, schema).

## Despliegue

```sh
make link-macos    # o make link-linux
make unlink-macos  # para deshacer
```

Los paquetes `aicode/claude/home` y `aicode/opencode/home` se enlazan vía Stow a `$HOME`.
