---
layout: post
title: '[PROTIP] TotalCmd: Start Cmder Here (usercmd.ini)'
date: 2015-10-11
author: InsModScum
tags:
- IMS
- IMSPROTIP
- IMSTOOLS
- IMSTOOLSTOTALCOMMANDER
- 2015
---

`usercmd.ini`

```
[em_Cmder]
cmd=%COMMANDER_PATH%\..\cmder\cmder.exe
; need %P%N (just %P does not work with paths with spaces) to work with paths with spaces
param=%P%N
path=
menu=Cmder HERE
button=

[em_CmderBat]
cmd=%COMMANDER_PATH%\.wip\run.cmder.here.bat
param=%P
path=
menu=Cmder HERE
button=
```

`run.cmder.here.bat`

```
@echo off

set cmder=d:\tools3\cmder\cmder.exe

start /b %cmder% /start %1

exit
```

**UPDATE:** See GitLab Total Commander & Cmder repos for the latest config.

<br>

IMSID808011299134F93FDA743A74E5851CC7F4BE6BEA