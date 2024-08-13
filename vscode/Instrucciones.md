# Crear diferentes perfiles en VSC
- 1.-Tener una carpeta donde se alojaran los perfiles
	Se creo la carpeta code_profiles
- 2.-Dentro de la carpeta de los perfiles deben de haber una carpeta data y dentro una User
	code_profiles/name_profile/data/User
- 3.-Dentro de la carpeta User crear un archivo de settings.json (opcional)
	touch settings.json
- 4.-Abrir VSC con la ruta de data en ese momento ( Dentro de la terminal en mi caso CMDER )
	code --user-data-dir C:\Users\migue\Documents\VSCode\code_profiles\vsc_git\data
- 5.-Crear un Alias para que no se tenga que escribir toda la ruta siempre para abrir ese perfil, en mi caso con CMDER solo es con el comando alias nomAlias=comando
	vscgit=code --user-data-dir C:\Users\migue\Documents\VSCode\code_profiles\vsc_git\data

***

Para tener un VSC Libre tambien de extenciones "LIMPIO DE EXTENCIONES " es enecesario agregar un directorio donde se almacenen las extenciones
- A) 4.- Se crea una carpeta llamada extensions y ejecutamos en CMDER
	code --extensions-dir C:\Users\migue\Documents\VSCode\code_profiles\co_python\extensions

- B) 4.- Para el caso de que se quiera un VSC CON PERFIL LIMPIO DE EXTENSIONES Y SETTINGS
	 code --user-data-dir C:\Users\migue\Documents\VSCode\code_profiles\co_python\data --extensions-dir C:\Users\migue\Documents\VSCode\code_profiles\co_python\extensios

***

## Crear Alias
- 5.- Crear un Alias para que no se tenga que escribir toda la ruta siempre para abrir ese perfil, en mi caso con CMDER solo es con el comando alias nomAlias=comando
	copython=code --user-data-dir C:\Users\migue\Documents\VSCode\code_profiles\co_python\data --extensions-dir C:\Users\migue\Documents\VSCode\code_profiles\co_python\extensions


## Eliminar Alias
alias /d nombre_alias




Guia: 
https://dev.to/jsjoeio/how-to-create-code-profiles-in-vscode-3ofo
https://stackoverflow.com/questions/46450228/how-to-remove-an-alias-in-cmder

