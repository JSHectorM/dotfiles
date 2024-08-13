# Configuracion de git
Comando para acceder a la configuracion
```sh
    git config --global -e
```

Configuracion de git personal
```bash
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