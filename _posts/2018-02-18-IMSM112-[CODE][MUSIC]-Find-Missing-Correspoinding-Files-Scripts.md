---
layout: post
title: '[CODE][MUSIC] Find Missing Corresponding Files via BATCH or BASH Scripts (Windows)'
date: 2018-02-18
author: InsModScum
tags:
- IMS
- 2018
- Code
- Foobar2000
- Music
- Tools
---

# RTFM #

```
http://www.m-tags.org
```

# Problem: #

Using `m-TAGS` & `Foobar2000` you may have audio files without corresponding `*.tags* files.

<!-- more -->

E.g.:

```
song1.flac
song1.tags

song2.flac
MISSING TAGS FILE!

song3.flac
song3.tags
```

# Fix: #

See `find.missing.corresponding.files.bat` or `find.missing.corresponding.files.sh` in the `tool` Git repository.

The `bat` doesn't work with some filenames (EM DASHES ("‎–"), NON-ENGLISH CHARACTERS), so use the `sh` script in `BASH` (e.g. `bash.exe` provided in `MSYSGIT/MINGW/whatever-it's-called-now`).

# Example: #

Find all `*.mp3` files without corresponding `*.tags` file:

```
# in cmder
bash.exe

$ ./find.missing.corresponding.files.sh mp3 tags

# output
===================================================================
Recursively find all files WITHOUT a corresponding file with the same name but different extension.
Use in MSYSGIT bash shell.


Example:

Given:

1.flac
1.tags
2.flac

Running:

./find.missing.corresponding.files.sh flac tags

...will print:

2.flac
===================================================================

/d/sound/_test/test1.mp3

```

--- 

IMSM112_E0B41DC26B2C8ABA0B9836754208F7F922AA4234 