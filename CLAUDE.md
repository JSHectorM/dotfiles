# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

See also `AGENTS.md` for the canonical, more detailed rules — this file summarizes the essentials.

## What this repo is

Personal dotfiles repo: Markdown guides + real, versioned config files, deployed with GNU Stow (Linux/macOS) or a copy script (Windows). There is no build, lint, or test suite.

## Commands

```sh
make link-macos      # stow -R over MACOS_PKGS (see Makefile)
make link-linux       # stow -R over LINUX_PKGS
make unlink-macos     # stow -D, undo
make unlink-linux
make check            # stow -n -v dry-run, shows what's linked
bash scripts/link-windows.sh link    # Windows: copies files with .bak backup (no Stow)
bash scripts/link-windows.sh unlink  # restores from .bak
```

`.stowrc` sets `--target=$HOME --dotfiles` for all `stow` invocations. Requires `stow` installed (`brew install stow` / `apt install stow`) — not asserted by `make`.

## Architecture: organized by tool, not by OS

Each top-level folder is a tool: `git/`, `shell/`, `prompt/`, `editor/`, `aicode/`, `node/`, `pkgmanagers/`. Inside each, there are usually `linux/`, `macos/`, `windows/` subfolders with per-OS guides, plus a `<so>/home/` (or shared `home/`) folder that is the actual Stow package — its path mirrors the real path relative to `$HOME`. **Never** split by OS at the top level.

- **Guides**: `.md` files (install steps, usage, aliases) — español, for humans to read.
- **Real files**: everything under `*/home/` (e.g. `.zshrc`, `.gitconfig`, `.config/...`) — these are what actually gets symlinked/copied onto the user's machine.

When adding a new real config file, place it inside the correct `*/home/` package (e.g. `prompt/home/.config/starship.toml` → `~/.config/starship.toml`). Never hardcode absolute paths in that content; Stow builds the hierarchy from the package structure.

**Do not sanitize or invent** content under `*/home/`. If a new config is needed, ask the user to copy their real one (e.g. `cp ~/.zshrc dotfiles/shell/macos/home/.zshrc`), or use `brew bundle dump` for the `Brewfile`. `git/home/.gitconfig` is a template — `[user]` has placeholders; real values go in `~/.gitconfig.local` (gitignored), never committed directly.

## Language

All documentation is in **Spanish**. Keep that language when editing/creating `.md` files.

## Conventions and gotchas

- Hardcoded paths like `C:\Users\migue\...` in `editor/vscode/windows/profiles.md` and `shell/windows/Microsoft.PowerShell_profile.ps1` are the author's personal paths — don't generalize them unless explicitly asked.
- Images live only in `img/` at the repo root (never `linux/img/` or `windows/img/`), referenced from the `.md` files.
- Ignored: `.idea`, `*.bak`, `.stow-fail`, `editor/nvim/home/.config/nvim/lazy-lock.json`, `.gitconfig.local`.
- Neovim config (`editor/nvim/`, LazyVim) requires Neovim `>= 0.9`. On Linux install manually (the `apt` version is too old); on macOS use `brew`.
- Don't duplicate guides across OSes: shared content belongs in the tool's `README.md`; only the actual differences go in `<so>/*.md`.
- After moving files, check for broken relative links: `grep -rn '](\./' --include='*.md'`.
