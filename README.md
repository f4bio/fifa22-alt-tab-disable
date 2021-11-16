# FIFA22 Disable Disconnect on Alt-Tab

FUCK YOU, EA! 🖕

## description

address etc taken from [beck123](https://www.elitepvpers.com/forum/members/5995047-beck123.html)'s [cheatengine script](https://www.elitepvpers.com/forum/fifa/4950661-free-fifa-22-timed-shot-anti-alt-tab-bypass.html) - thanks bro!

* address: `142f09359`
* old value: `CC CC CC CC CC CC CC 48 83 EC 48 48 83 3D EC 16`
* new value: `CC CC CC CC CC CC CC C3 90 90 90 48 83 3D EC 16`
* length: 16 bytes

## usage

1. start FIFA22
2. run latest fuck-ea.exe from [releases page](https://github.com/f4bio/fifa22-alt-tab-disable/releases)

### undo / enable alt-tab disconnect again

1. restart game

_no easy way to do this for now - sorry; might be implemented some time soon(tm)..._

## manual usage

```powershell
1337patch.exe "fuck-ea.1337" "FIFA22.exe"
```

### manual requirements

* [1337patch](https://github.com/chausner/1337patch) - thanks bro!

## build exe yourself

```powershell
Invoke-ps2exe "fuck-ea.ps1" -outputFile .\dist\ -version 1.3.38 -noOutput -noVisualStyles
```

### build requirements

* [ps2exe](https://github.com/MScholtes/PS2EXE) - thanks bro!
