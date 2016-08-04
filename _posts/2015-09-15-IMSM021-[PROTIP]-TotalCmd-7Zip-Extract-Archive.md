---
layout: post
title: '[PROTIP] TotalCmd & 7Zip: "Extract Archive To [Archive''s Name]" (usercmd.ini)'
date: 2015-09-15
author: Insurgency Mod Scum (InsModScum)
tags:
- IMS
- IMSPROTIP
- IMSTOOLS
- IMSTOOLSTOTALCOMMANDER
- 2015
---

`usercmd.ini`

```
[em_unpack7z]
cmd=%COMMANDER_PATH%\..\..\tools2\7za.exe
param=x -o* %P%N
path=
menu=7z Extract HERE
button=

[em_unpack7zALL]
cmd=%COMMANDER_PATH%\..\..\tools2\7za.exe
param=x -o* %P
path=
menu=7z Extract HERE ALL (%P)
button=
```

<br>

There's surprisingly **no** documentation on how to do this!:

`https://sevenzip.osdn.jp/chm/cmdline/commands/extract.htm`

<br>

Proper docs:

```
http://superuser.com/questions/259353/7-zip-windows-7-make-extract-to-folder-default-on-double-click

http://7zip.bugaco.com/7zip/MANUAL/switches/output_dir.htm
```

<br>

IMSID21DFC1EB8CD09D8A3A7FE4B4F584C5B6747DE3F5