# Importa el módulo de Starship para la terminal (prompt)
Invoke-Expression (&starship init powershell)
# Importa el módulo de iconos para la terminal
Import-Module Terminal-Icons
# Cambia el modo predictivo a una lista
Set-PSReadLineOption -PredictionViewStyle ListView
#Zoxide 
Invoke-Expression (& { (zoxide init powershell | Out-String) })

function ExplorerOpen {
    param (
        [Parameter()]
        [string]$path = $null
    )

    if ($path) {
        explorer.exe $path
    } else {
        explorer.exe
    }
}

New-Alias -Name open -Value ExplorerOpen -Description "Este es un alias para iniciar explorador"

# * Alias para lsdelux
Remove-Alias ls
New-Alias -Name ls -Value lsd -Option AllScope

function Start-VSCodeJavaScript {
    param (
        [Parameter()]
        [string]$path = $null
    )
    $userDataDir = "C:\Users\migue\Documents\VSCode\code_profiles\code_javascript\data\"
    $extensionsDir = "C:\Users\migue\Documents\VSCode\code_profiles\code_javascript\extensions\"

    if ($path) {
        code --user-data-dir $userDataDir --extensions-dir $extensionsDir $path
    } else {
        code --user-data-dir $userDataDir --extensions-dir $extensionsDir
    }
}

New-Alias -Name cojs -Value Start-VSCodeJavaScript -Description "Este es un alias para iniciar VSCodeJavaScript"

function Start-VSCodeAngular {
    param (
        [Parameter()]
        [string]$path = $null
    )
    $userDataDir = "C:\Users\migue\Documents\VSCode\code_profiles\code_angular\data\"
    $extensionsDir = "C:\Users\migue\Documents\VSCode\code_profiles\code_angular\extensions\"
    
    if ($path) {
        code --user-data-dir $userDataDir --extensions-dir $extensionsDir $path
    } else {
        code --user-data-dir $userDataDir --extensions-dir $extensionsDir
    }
}
New-Alias -Name coan -Value Start-VSCodeAngular -Description "Este es un alias para iniciar VSCodeAngular"
