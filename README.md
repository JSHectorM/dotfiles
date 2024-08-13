# Dotfiles

Pasos para configurar mis diferetes entornos de trabajo
- [Windows](./windows/terminal.md)
- [Git](./git/gitCofig.md)
<!-- - Osx -->
<!-- - Linux -->

## Fuentes
- [NerdFonts](https://github.com/ryanoasis/nerd-fonts/?tab=readme-ov-file#font-installation)
- [Cascadia code](https://github.com/microsoft/cascadia-code)

## Prompt 
Starship – Cross-shell prompt https://starship.rs/guide/

[StarShip](https://starship.rs/guide/)
Configuracion del prompt
```Lua
#~/.config/starship.toml

right_format = "$time"

[time]
disabled = false
style = "bold bright-black"
format = "[$time]($style)"

[line_break]
disabled = true

[git_branch]
symbol = '🌱 '
#truncation_length = 8
truncation_symbol = ''
#ignore_branches = ['master', 'main']

```




<!-- https://docs.github.com/es/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax -->