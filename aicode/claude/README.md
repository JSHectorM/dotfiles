# Claude Code

Agente de terminal de Anthropic (`claude.ai/code`). Lee el contexto del proyecto, ejecuta comandos, edita archivos y gestiona tareas de desarrollo.

## Configuración

El archivo [`home/.claude/settings.json`](home/.claude/settings.json) se enlaza a `~/.claude/settings.json` vía Stow. Contiene:

- `model` — modelo por defecto (ej. `sonnet`, `opus`).
- `effortLevel` — nivel de esfuerzo (`low`, `medium`, `high`).
- `tui` — modo de interfaz (`fullscreen`, `inline`).
- `theme` — tema visual (`dark`, `light`).
- `language` — idioma de respuesta (ej. `Español`, `English`).

## Uso básico

```sh
claude           # iniciar sesión interactiva
claude "tarea"   # ejecutar tarea directa
claude --help    # ver opciones
```

## Notas

- Requiere cuenta de Anthropic y autenticación (`claude login`).
- Los plugins y marketplaces se gestionan vía `~/.claude/plugins/` (no versionado).
- Para proyectos específicos, usa `CLAUDE.md` en la raíz del repo (ver [CLAUDE.md](../../CLAUDE.md) de este dotfiles).
