# Source file location
$patcherExeSource = "https://github.com/chausner/1337patch/releases/download/version-1.0/1337patch.exe"
$patcherExePath = Join-Path -Path $env:TEMP -ChildPath "1337patch.exe"
$patcherExeHash = "39B702074319493D2B896AEA4876B1A6C9057113FB0DF969F0BE0D5C3A0224F9"

Write-Debug ('$patcherExeSource is ' + $patcherExeSource)
Write-Debug ('$patcherExePath is ' + $patcherExePath)
Write-Debug ('$patcherExeHash is ' + $patcherExeHash)

$patchFileSource = "https://raw.githubusercontent.com/f4bio/fifa22-alt-tab-disable/develop/fuck-ea.1337"
$patchFileScript = "fuck-ea.1337" # Join-Path -Path $env:TEMP -ChildPath "fuck-ea.1337"
$patchFileHash = "A272DB500C12B11C51DC9818297F0F2D1C151357F6A676CF844CD5BD98A162DC"

Write-Debug ('$patchFileSource is ' + $patchFileSource)
Write-Debug ('$patchFileScript is ' + $patchFileScript)
Write-Debug ('$patchFileHash is ' + $patchFileHash)

$Logfile = "fuck-ea.log"
$ProcessName = "FIFA22.exe"

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
  for ($i = 1; $i -le 100; $i++ )
  {
      Write-Progress -Activity "Search in Progress" -Status "$i% Complete:" -PercentComplete $i
      Start-Sleep -Milliseconds 250
  }
}

function Show-SimpleLoading {
  Start-Sleep -Milliseconds 250
}

# todo: better logging and error handling
Start-Transcript -Path $Logfile

try {
  # todo: use `if (-Not test-path $patcherExePath){}`
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

  #Get-Process $ProcessName -ErrorAction Stop

  # do it
  #& $patcherExePath $patchFileScript $ProcessName -ErrorAction Stop

  Write-Host "patched! have fun!"
  Show-SimpleLoading
  Write-Host "FUCK YOU, EA!"
  Show-SimpleLoading
  Write-Host $eaIcon
  Show-SimpleLoading
}
catch {
  Write-Host "An error occurred:"
  Write-Host $_
}

Stop-Transcript
