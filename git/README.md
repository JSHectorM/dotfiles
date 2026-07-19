# Configuración de Git

Comando para acceder a la configuración global:
```sh
    git config --global -e
```

El archivo real versionado está en [home/.gitconfig](home/.gitconfig) y se enlaza a `~/.gitconfig` mediante Stow.

## Configuración personal (referencia)

```ini
[user]
        name = Hector JS
        email = jshectorm@gmail.com
[alias]
        lg = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
        s = status
        ss = status -sb
[filter "lfs"]
        clean = git-lfs clean -- %f
        smudge = git-lfs smudge -- %f
        process = git-lfs filter-process
        required = true
```

> Si versionas tu propio `~/.gitconfig` desde este repo, sanitiza la sección `[user]` (o usa `~/.gitconfig.local` incluido en `.gitignore`) para no filtrar datos personales.