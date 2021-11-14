# Source file location
$patcherExeSource = "https://github.com/chausner/1337patch/releases/download/version-1.0/1337patch.exe"
$patcherExePath = Join-Path -Path $env:TEMP -ChildPath "1337patch.exe"
$patcherExeHash = "39B702074319493D2B896AEA4876B1A6C9057113FB0DF969F0BE0D5C3A0224F9"

$patchFileSource = "https://raw.githubusercontent.com/f4bio/fifa22-alt-tab-disable/develop/fuck-ea.1337"
$patchFileScript = "fuck-ea.1337" # Join-Path -Path $env:TEMP -ChildPath "fuck-ea.1337"
$patchFileHash = "A272DB500C12B11C51DC9818297F0F2D1C151357F6A676CF844CD5BD98A162DC"

# todo: yaya... use `if (-Not test-path $patcherExePath){}`
Remove-Item $patcherExePath -Force
#Remove-Item $patchFileScript -Force

# download files
Invoke-WebRequest -Uri $patcherExeSource -OutFile $patcherExePath
#Invoke-WebRequest -Uri $patchFileSource -OutFile $patchFileScript

# todo: check hash - maybe?
# $downloadedHash = Get-FileHash -Algorithm SHA256 -Path $patcherExe
# if (-Not $downloadedHash.Hash -eq $publishedHash)
# {
#   Write-Host "wrong 1337patcher exe... deleting... run again..."
#   Remove-Item $patcherExe
# }

# do it
& $patcherExePath $patchFileScript "FIFA 22.exe"

Write-Host "patched! have fun! TO HELL WITH YOU EA!"
