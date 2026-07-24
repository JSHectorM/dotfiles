# opencode

Agente de terminal de código abierto ([opencode.ai](https://opencode.ai)). Similar a Claude Code pero con soporte multi-proveedor y plugins.

## Configuración

El archivo [`home/.config/opencode/opencode.json`](home/.config/opencode/opencode.json) se enlaza a `~/.config/opencode/opencode.json` vía Stow. Contiene:

- `$schema` — URL del schema JSON para autocompletado.
- `plugin` — lista de plugins activos (ej. `@warp-dot-dev/opencode-warp`).

## Uso básico

```sh
opencode           # iniciar sesión interactiva
opencode "tarea"   # ejecutar tarea directa
opencode --help    # ver opciones
```

## Plugins

Los plugins se instalan vía npm en `~/.config/opencode/` (ver `package.json` y `package-lock.json`, no versionados). Para añadir un plugin:

```sh
cd ~/.config/opencode
npm install @opencode-ai/plugin
# luego añadirlo a opencode.json en "plugin": [...]
```

## Notas

- Requiere configuración de proveedor (API keys) — ver [docs](https://opencode.ai).
- El archivo `opencode.jsonc` es una alternativa con comentarios (no versionado).
- Para proyectos específicos, usa `AGENTS.md` o `opencode.json` en la raíz del repo.
