---
layout: post
title: '[PROTIP] Git Security: Anonymous Git Usage / Git Data Leakage'
date: 2015-09-14
author: Insurgency Mod Scum (InsModScum)
tags:
- IMS
- IMSPROTIP
- IMSTOOLS
- IMSTOOLSGIT
- 2015
---

Seems like the only thing Git leaks (excluding user.name and user.email) is a time zone in `.git\logs\` files.

```
Use a specific time and or time zone when committing.

git commit --date 2014-05-27T01:23:45-07:00

```

**Note the real date, time and time zone are in `.git\logs\` files!!!** You can safely delete those!

```
delete.git.logs.bat

@echo off

rem Set the current directory to the location of the batch script, using the %0 parameter
pushd "%~dp0"

rem /s Recursive. Removes all directories and files in the specified directory in addition to the directory itself. Used to remove a directory tree.
rem /q Quiet mode, do not ask if ok to remove a direcotry tree with /s
rd /s /q %cd%\.git\logs
```

<br>

IMSID25D79BC2025C2B0FD0C1DF00D9F2C3B0219B0AAE