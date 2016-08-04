---
layout: post
title: 'IMSM124: [CODE] Scripts for Jekyll Blog Publishing'
date: 2018-02-22
author: InsModScum
tags:
- IMS
- 2018
- Code
---

Overview of *Windows BATCH*, and *Python* scripts used in this blog.

<!-- more -->

# _1blog.append.hash.id.to.post.bat #

Append specified prefix, counter and SHA1 hash of a given file to the end of the given file via Rhash64. Rhash64.exe needs to be in PATH!

Counter number in: `_blog.append.hash.counter.txt`

## Example ##

```
d:\blog.ims[master]$_1blog.append.hash.id.to.post.bat ..\imstmp\2018-02-22-IMSM124-[CODE]-Scripts-For-Jekyll_Blog-Publishing.md
```

will append

```
[blank]
---
[blank]
IMSM[COUNTER]_[SHA1]
```
e.g. `IMSM126_01A0995D0982B32A81F6B27639C67890B3534228 `

# _blog.clean.bat #

Delete useless Jekyll-related files. Runs `jekyll clean`

# _blog.delete.image.metadata.calls.another.batch.bat #

Delete metadata in images in \assets dir via EXIFTool.
"delete.image.exif.metadata.bat" needs to be in PATH.
See "delete.image.exif.metadata.bat" in "tools" repo.
EXIFTool will make backups before modifying files. Original file is renamed "*.*_original"

# Rename according to Jekyll post metadata (4 files) #

Used after importing *.xml backup from Google's BlogSpot AKA Blogger into Jekyll. This will rename all the converted *.html files according to post's title and date. See the Insurgency Mod Scum Jekyll blog Git repository (`_posts` folder).

##  Main BATCH file ##

```
_blog.rename.according.to.jekyll.post.metadata.bat
Rename filename according to the post's title and date specified in Jekyll's metadata.
```

### Logic ###

```
"arg01"
Calls Python script to extract  "title" (JREPL.bat does not support look-behind RegEx, so have to use Python)

"arg02"
Calls JREPL.bat to extract "date"

---

Cleaning up "title"

"arg04" (JREPL.bat)
"Replace all invalid characters."
RegEx used: "(?!\s)[^a-zA-Z0-9\.\[\]\+\'\#\-\(\)\@\{\}\~\=\!]"

"arg03" (JREPL.bat)
"Replace all whitespace with "-""

---

Copy file (renaming it) to "_out" via "cp".
```

### Notes ###

Requires:

```
python.exe (Python 2.x)
cp.exe (MSYSGIT-MINGW-WHATEVER-IT'S-CALLED-NOW)
```

Rename all files to consecutive numbers before using this batch. Counter only works if input is a folder. Results in `_out` dir. 

**Set the counter!**

Uncomment in the Python script:

```
# =====================================
# BEGIN CODE FOR OLD AUTOCONVERTED BLOGGER POSTS
# =====================================
# sss = sss.strip('"')
# sss = sss.strip('\'')
# =====================================
# END CODE FOR OLD AUTOCONVERTED BLOGGER POSTS
# =====================================
```

### Example: single HTML file ###

```
d:\vs\a-ims\aa-blog.ims[master]$ _blog.rename.according.to.jekyll.post.metadata.bat _renametest\1.html

###########################################################################
Rename filename according to the post's title and date specified in Jekyll's metadata.
See the "Insurgency Mod Scum" post (IMSM124_01A0995D0982B32A81F6B27639C67890B3534228) for more information.
###########################################################################

Press any key to continue . . .
Press any key to continue . . .
Press any key to continue . . .
==========================================================================
PYTHON RAW: Cheater - eAsT | irAq*andOS STEAM_0:0:32246890 wallhack
PYTHON STRIPPED: Cheater - eAsT | irAq*andOS STEAM_0:0:32246890 wallhack
PYTHON FINAL: Cheater-eAsT-irAq_andOS STEAM_0_0_32246890 wallhac
BATCH RAW:Cheater-eAsT-irAq_andOS STEAM_0_0_32246890 wallhac
BATCH NO INVALID:Cheater-eAsT-irAq_andOS STEAM_0_0_32246890 wallhac
BATCH NO WHITESPACE:Cheater-eAsT-irAq_andOS-STEAM_0_0_32246890-wallhac

DEBUG: OLD: 1.html
DEBUG: NEW: 2010-06-21-Cheater-eAsT-irAq_andOS-STEAM_0_0_32246890-wallhac.html

`d:\\vs\\a-ims\\aa-blog.ims\\_renametest\\1.html' -> `d:\\vs\\a-ims\\aa-blog.ims\\_renametest\\_out\\2010-06-21--Cheater-eAsT-irAq_andOS-STEAM_0_0_32246890-wallhac.html'
==========================================================================

d:\vs\a-ims\aa-blog.ims[master]$
```

### Example: Multiple Files (input is a folder) ###

```
d:\vs\a-ims\aa-blog.ims[master]$_blog.rename.according.to.jekyll.post.metadata.bat _renametest

###########################################################################
Rename filename according to the post's title and date specified in Jekyll's metadata.
See the "Insurgency Mod Scum" post (IMSM124_01A0995D0982B32A81F6B27639C67890B3534228) for more information.
###########################################################################

Press any key to continue . . .
Press any key to continue . . .
Press any key to continue . . .
==========================================================================
PYTHON RAW: Cheater - eAsT | irAq*andOS STEAM_0:0:32246890 wallhack
PYTHON STRIPPED: Cheater - eAsT | irAq*andOS STEAM_0:0:32246890 wallhack
PYTHON FINAL: Cheater-eAsT-irAq_andOS STEAM_0_0_32246890 wallhac
BATCH RAW:Cheater-eAsT-irAq_andOS STEAM_0_0_32246890 wallhac
BATCH NO INVALID:Cheater-eAsT-irAq_andOS STEAM_0_0_32246890 wallhac
BATCH NO WHITESPACE:Cheater-eAsT-irAq_andOS-STEAM_0_0_32246890-wallhac

DEBUG: OLD: 1.html
DEBUG: NEW: 2010-06-21-Cheater-eAsT-irAq_andOS-STEAM_0_0_32246890-wallhac.html

`d:\\vs\\a-ims\\aa-blog.ims\\_renametest\\1.html' -> `d:\\vs\\a-ims\\aa-blog.ims\\_out\\2010-06-21-1-Cheater-eAsT-irAq_andOS-STEAM_0_0_32246890-wallhac.html'
==========================================================================
==========================================================================
PYTHON RAW: '"Danger" TROLL'
PYTHON STRIPPED: '"Danger" TROLL'
PYTHON FINAL: ''Danger' TROLL'
BATCH RAW:''Danger' TROLL'
BATCH NO INVALID:''Danger' TROLL'
BATCH NO WHITESPACE:''Danger'-TROLL'

DEBUG: OLD: 2.html
DEBUG: NEW: 2010-09-11-''Danger'-TROLL'.html

`d:\\vs\\a-ims\\aa-blog.ims\\_renametest\\2.html' -> `d:\\vs\\a-ims\\aa-blog.ims\\_out\\2010-09-11-2-\'\'Danger\'-TROLL\'.html'
==========================================================================
==========================================================================
PYTHON RAW: Cheater -  {HG-o}MasterMind STEAM_0:1:19905072 wallhack
PYTHON STRIPPED: Cheater -  {HG-o}MasterMind STEAM_0:1:19905072 wallhack
PYTHON FINAL: Cheater- {HG-o}MasterMind STEAM_0_1_19905072 wallh
BATCH RAW:Cheater- {HG-o}MasterMind STEAM_0_1_19905072 wallh
BATCH NO INVALID:Cheater- {HG-o}MasterMind STEAM_0_1_19905072 wallh
BATCH NO WHITESPACE:Cheater--{HG-o}MasterMind-STEAM_0_1_19905072-wallh

DEBUG: OLD: 3.html
DEBUG: NEW: 2010-10-15-Cheater--{HG-o}MasterMind-STEAM_0_1_19905072-wallh.html

`d:\\vs\\a-ims\\aa-blog.ims\\_renametest\\3.html' -> `d:\\vs\\a-ims\\aa-blog.ims\\_out\\2010-10-15-3-Cheater--{HG-o}MasterMind-STEAM_0_1_19905072-wallh.html'
==========================================================================
==========================================================================
PYTHON RAW: Griefer - -=58th=- [Gen] The Iceman STEAM_0:1:18801061
PYTHON STRIPPED: Griefer - -=58th=- [Gen] The Iceman STEAM_0:1:18801061
PYTHON FINAL: Griefer-=58th=- [Gen] The Iceman STEAM_0_1_1880106
BATCH RAW:Griefer-=58th=- [Gen] The Iceman STEAM_0_1_1880106
BATCH NO INVALID:Griefer-=58th=- [Gen] The Iceman STEAM_0_1_1880106
BATCH NO WHITESPACE:Griefer-=58th=--[Gen]-The-Iceman-STEAM_0_1_1880106

DEBUG: OLD: 4.html
DEBUG: NEW: 2010-11-03-Griefer-=58th=--[Gen]-The-Iceman-STEAM_0_1_1880106.html

`d:\\vs\\a-ims\\aa-blog.ims\\_renametest\\4.html' -> `d:\\vs\\a-ims\\aa-blog.ims\\_out\\2010-11-03-4-Griefer-=58th=--[Gen]-The-Iceman-STEAM_0_1_1880106.html'
==========================================================================
ECHO is off.

d:\vs\a-ims\aa-blog.ims[master]$
```

## Extra files ##

```
counter for renaming
_blog.rename.according.to.jekyll.post.metadata.counter.txt

JREPL library 4.5, unmodified
_blog.rename.according.to.jekyll.post.metadata_jrepl.bat

Python script, given string, performs RegEx and prints the result.
_blog.rename.according.to.jekyll.post.metadata_python-regex-search.py

From the script:
# IMS: _blog.rename.according.to.jekyll.post.metadata_python-regex-search.py
# Using Python because JREPL.bat doesn't do "look-behind" RegEx.
# Accepts file (argv[1]) and regex (argv[2].

# Performs a  regular expression search and prints the result.
# Example: python python-regex.py data.txt "(.*)"
# Tested with Python 3.x. Python 2.x is OK also.
# Modified to work on auto converted Blogger Jekyll posts.
```

---

IMSM124_01A0995D0982B32A81F6B27639C67890B3534228 