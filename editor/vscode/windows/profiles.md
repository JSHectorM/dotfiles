# Perfiles aislados de VS Code en Windows

Guía para arrancar perfiles VS Code separados (datos + extensiones) sin compartir con la instalación global.

## Pasos
1. Tener una carpeta donde se alojarán los perfiles (en este caso `C:\Users\migue\Documents\VSCode\code_profiles`).
2. Dentro de la carpeta de perfiles debe haber una carpeta `data` y dentro una `User`:
   ```
   code_profiles/name_profile/data/User
   ```
3. Dentro de `User` crear `settings.json` (opcional):
   ```sh
   touch settings.json
   ```
4. Abrir VS Code apuntando a esa ruta `data` (en CMDER en este caso):
   ```sh
   code --user-data-dir C:\Users\migue\Documents\VSCode\code_profiles\vsc_git\data
   ```
5. Crear un alias en CMDER para no repetir la ruta:
   ```
   vscgit=code --user-data-dir C:\Users\migue\Documents\VSCode\code_profiles\vsc_git\data
   ```

## VS Code "limpio de extensiones"
A) Sólo extensions dir aparte:
```sh
code --extensions-dir C:\Users\migue\Documents\VSCode\code_profiles\co_python\extensions
```
B) Perfil limpio de extensiones **y** settings:
```sh
code --user-data-dir C:\Users\migue\Documents\VSCode\code_profiles\co_python\data --extensions-dir C:\Users\migue\Documents\VSCode\code_profiles\co_python\extensions
```

## Aliases en CMDER
Crear:
```
copython=code --user-data-dir C:\Users\migue\Documents\VSCode\code_profiles\co_python\data --extensions-dir C:\Users\migue\Documents\VSCode\code_profiles\co_python\extensions
```
Eliminar:
```
alias /d nombre_alias
```

> Las rutas `C:\Users\migue\...` son personales del autor; no generalizarlas salvo que se pida explícitamente.

## Fuentes
- https://dev.to/jsjoeio/how-to-create-code-profiles-in-vscode-3ofo
- https://stackoverflow.com/questions/46450228/how-to-remove-an-alias-in-cmder