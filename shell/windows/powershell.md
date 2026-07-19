# PowerShell en Windows

Guía de instalación de herramientas para PowerShell. La instalación base de PowerShell y Windows Terminal se documenta en [../../pkgmanagers/windows/winget.md](../../pkgmanagers/windows/winget.md).

## Starship
Ver [../../prompt/windows/install.md](../../prompt/windows/install.md) para `winget install starship`. La inicialización va en el perfil (`Invoke-Expression (&starship init powershell)`).

## Zoxide
```bash
   winget install zoxide
```
Variables de entorno de Windows por si no lo coloca de forma automática:
```bash
  C:\Users\usuario\AppData\Local\Microsoft\WinGet\Packages\ajeetdsouza.zoxide_Microsoft.Winget.Source_8wekyb3d8bbwe
```
Inicialización en el perfil: `Invoke-Expression (& { (zoxide init powershell | Out-String) })`.

## LS Deluxe (lsd)
```bash
   winget install lsd
```
Alias recomendado en el perfil: `Set-Alias -Name ls -Value lsd -Option AllScope`.

## Neovim
```bash
   winget install Neovim
```
Ver [../../editor/nvim/](../../editor/nvim/) para la configuración común.

## NVM
```bash
   winget install --id=CoreyButler.NVMforWindows
```
Ver [../../node/nvm/windows/install.md](../../node/nvm/windows/install.md).

## Perfil de PowerShell
El archivo [`Microsoft.PowerShell_profile.ps1`](./Microsoft.PowerShell_profile.ps1) versiona el perfil real del autor con alias (`open`, `cojs`, `coan`) e inicialización de Starship, zoxide y `lsd`.

> Las rutas `C:\Users\migue\...` dentro del perfil son personales del autor; no generalizarlas salvo que se pida explícitamente.