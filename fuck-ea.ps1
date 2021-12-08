$tempDir = [System.IO.Path]::GetTempPath()

# Source file location
$patcherExeSource = "https://github.com/chausner/1337patch/releases/download/version-1.0/1337patch.exe"
$patcherExePath = Join-Path -Path $tempDir -ChildPath "1337patch.exe"
$patcherExeHash = "39B702074319493D2B896AEA4876B1A6C9057113FB0DF969F0BE0D5C3A0224F9"

# Write-Debug ('$patcherExeSource is ' + $patcherExeSource)
# Write-Debug ('$patcherExePath is ' + $patcherExePath)
# Write-Debug ('$patcherExeHash is ' + $patcherExeHash)

$patchFileSource = "https://fixfifa.s3.eu-central-1.amazonaws.com/fuck-ea.1337"
$patchFileScript = Join-Path -Path $tempDir -ChildPath "fuck-ea.1337"
$patchFileHash = "A272DB500C12B11C51DC9818297F0F2D1C151357F6A676CF844CD5BD98A162DC"

# Write-Debug ('$patchFileSource is ' + $patchFileSource)
# Write-Debug ('$patchFileScript is ' + $patchFileScript)
# Write-Debug ('$patchFileHash is ' + $patchFileHash)

$Logfile = "fuck-ea.log"
$ProcessName = "FIFA22"

$eaIcon = @"
....................../´¯/)
....................,/¯../
.................../..../
............./´¯/'...'/´¯¯`·¸
........../'/.../..../......./¨¯\
........('(...´...´.... ¯~/'...')
.........\.................'...../
..........''...\.......... _.·´
............\..............(
..............\.............\...
"@

function Show-Loading {
  for ($i = 1; $i -le 3; $i++ )
  {
    Start-Sleep -Milliseconds 250
    Write-Host . -NoNewline
  }
  Write-Host .
}

# todo: better logging and error handling - maybe?
Start-Transcript -Path $Logfile

# todo: use `if (-Not test-path $patcherExePath){}` - maybe?
Remove-Item $patcherExePath -Force
Remove-Item $patchFileScript -Force

# download files
Invoke-WebRequest -Uri $patcherExeSource -OutFile $patcherExePath
Invoke-WebRequest -Uri $patchFileSource -OutFile $patchFileScript

# todo: check hash - maybe?
# $downloadedHash = Get-FileHash -Algorithm SHA256 -Path $patcherExe
# if (-Not $downloadedHash.Hash -eq $publishedHash)
# {
#   Write-Host "wrong 1337patcher exe... deleting... run again..."
#   Remove-Item $patcherExe
# }

$procId = (Get-Process $ProcessName -ErrorAction Stop).Id

# do it
& $patcherExePath $patchFileScript -pid $procId -ErrorAction Stop

Write-Host "patched! have fun!"
Show-Loading
Write-Host $eaIcon
Show-Loading
Write-Host "SEE YOU IN HELL, EA!"
Show-Loading

Stop-Transcript
