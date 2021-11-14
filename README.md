# FIFA22 ALT-Tab Disable

FUCK YOU, EA! 🖕

## description

address etc taken from [beck123](https://www.elitepvpers.com/forum/members/5995047-beck123.html)'s [cheatengine script](https://www.elitepvpers.com/forum/fifa/4950661-free-fifa-22-timed-shot-anti-alt-tab-bypass.html) - thanks bro!

* address: `142f09359`
* old value: `CC CC CC CC CC CC CC 48 83 EC 48 48 83 3D EC 16`
* new value: `CC CC CC CC CC CC CC C3 90 90 90 48 83 3D EC 16`
* length: 16 bytes

## manual usage

```powershell
1337patch.exe "fuck-ea.1337" "FIFA22.exe"
```

### manual requirements

* [1337patch](https://github.com/chausner/1337patch) - thanks bro!

## build instructions

```powershell
Invoke-ps2exe "fuck-ea.ps1" -outputFile .\dist\ -version 0.0.1 -noOutput -noVisualStyles
```

### build requirements

* [ps2exe](https://github.com/MScholtes/PS2EXE) - thanks bro!
