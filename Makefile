STOW ?= stow
DOTFILES_DIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

# Paquetes Stow comunes a Linux y macOS
MACOS_PKGS := git/home shell/macos/home prompt/home editor/nvim/home aicode/claude/home aicode/opencode/home
LINUX_PKGS := git/home shell/linux/home prompt/home editor/nvim/home aicode/claude/home aicode/opencode/home

.PHONY: help link-macos link-linux link-windows unlink-macos unlink-linux unlink-windows check

help:
	@echo "Uso: make <target>"
	@echo "  link-macos     Enlaza paquetes Stow para macOS"
	@echo "  link-linux     Enlaza paquetes Stow para Linux"
	@echo "  link-windows   Copia perfiles de PowerShell/CMD a sus rutas en Windows"
	@echo "  unlink-macos   Deshace symlinks de macOS"
	@echo "  unlink-linux   Deshace symlinks de Linux"
	@echo "  unlink-windows Restaura copias .bak de Windows"
	@echo "  check          Muestra qué paquetes Stow están enlazados"

link-macos:
	$(STOW) -R -v $(MACOS_PKGS)

link-linux:
	$(STOW) -R -v $(LINUX_PKGS)

link-windows:
	@bash scripts/link-windows.sh link

unlink-macos:
	$(STOW) -D -v $(MACOS_PKGS)

unlink-linux:
	$(STOW) -D -v $(LINUX_PKGS)

unlink-windows:
	@bash scripts/link-windows.sh unlink

check:
	$(STOW) -n -v $(MACOS_PKGS) 2>&1 || true