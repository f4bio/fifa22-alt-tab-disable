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
Invoke-ps2exe "fuck-ea.ps1" -version 1.3.38 -noOutput -noVisualStyles
```

### build requirements

* [ps2exe](https://github.com/MScholtes/PS2EXE) - thanks bro!


## TODOs

not sure of any of these are even possible... users are very suspicous about stuff like this.
also, not trying to hide anyhting here (its FOSS), but this tool does act the same way actually harmuful tools do - its kind of the nature of the beast.

* improve "trojan" detection rate at [virustotal](https://www.virustotal.com/gui/file/8d5776b21b2a1eed07bec47171ff382ed7094ca02fb7534cba7b4f245209e3be?nocache=1)
* not trigger chrome's "this file is harmful" ting
* not trigger windows UAC/smartscreen
  * [see ms code singing](https://docs.microsoft.com/de-de/archive/blogs/ie/microsoft-smartscreen-extended-validation-ev-code-signing-certificates)
* other things, currently mentioned (with `# todo:`) in code
* write todo comments from code in here :D

"safe" exe file can be found, for example [here](http://www.lancsngfl.ac.uk/cmsmanual/index.php?category_id=14)

