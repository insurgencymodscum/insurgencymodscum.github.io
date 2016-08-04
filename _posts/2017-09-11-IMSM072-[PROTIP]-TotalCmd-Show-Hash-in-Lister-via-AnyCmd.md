---
layout: post
title: '[PROTIP] TotalCmd: Show Hash in Lister via AnyCmd'
date: 2017-09-11
author: InsModScum
tags:
- IMS
- 2017
- ProTip
- TotalCmd
---

<!-- more -->

# See the following repos for updates: #

```
Total Commander
tools
```

# Code #

`anycmd.ini`

```
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; IMS: tc\PLUGINS\wlx\anycmdHASH\anycmd.ini
; Show SHA1 via RHash64 in Total Commander's Lister
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[AnyCmd]
DetectString=
Command=%COMMANDER_PATH%\..\hash.sha1.given.file.via.rhash64.bat %s & echo 2
; Command=%COMMANDER_PATH%\..\hash.sha1.given.file.via.certutil.bat %s
Stream=3
```

`hash.sha1.given.file.via.rhash64.bat`

```
@echo off

rem Generate SHA1 hash via RHash64 and COPY to clipboard.

echo %1
echo SHA1:

rem Begin localisation of Environment Variables.
setlocal

rem Path
path=d:\tools;%path%

rem Using two "%%"" to escape "%".
rem tee con makes the output pretty (no blank newlines)
start /b rhash64 %1 --printf=%%{sha1} | tee con

rem Restore any environment variables present before the SETLOCAL was issued.
endlocal
```

# Order of plugins in Total Commander via TCPlugMan #

```
[lister plugins with specified EXT]
[plugins without EXT i.e. will work on ALL FILES]
FileInfo
TotalHLT
AnyCmdTEXT (show line numbers via cat)
AnyCmdHASH (show hash via rhash)
...
``` 
 
<br> 
 
IMSID_F4B5561EBC36E12BCC7F77BB324535E4A5D08ED0 
 
<br> 
 