---
layout: post
title: "[PROTIP] TotalCmd: Change Colors & Show Line Numbers in Lister via TotalHLT Lister Plugin"
date: '2015-06-14'
author: insurgencymodscum2
tags:
- Insurgency Mod Scum
- OT-PROTIP
thumbnail: http://3.bp.blogspot.com/-qSvoizNF7wA/VYDOLSn0J1I/AAAAAAAAAkg/tB4lRz2gC2o/s72-c/totalcmd.totalhlt.mod.png
blogger_id: tag:blogger.com,1999:blog-7256856399250838035.post-8119827267803382187
blogger_orig_url: http://insurgencymod.blogspot.com/2015/06/protip-total-commander-show-line.html
---

<!-- more -->

![](/assets/2017/totalcmd.totalhlt.anycmd.1.png)
![](/assets/2017/totalcmd.totalhlt.anycmd.2.png)
![](/assets/2017/totalcmd.totalhlt.anycmd.3.png)

# Objective #

Change colors (background & text) & show line numbers in Total Commander's Lister when displaying plaintext files.

# Note #

By default TotalHLT will only work on source code files. You must specify each extension to display via TotalHLT in `tc\PLUGINS\wlx\TotalHLT\extensions.conf`

# Code #

Install TotalHLT (`wlx_TotalHLT_1.7b160.zip`)

In:

`tc\PLUGINS\wlx\TotalHLT\extensions.conf`

Add:

```
# IMS: show the following extensions using "text" langDef, "text" must exist, but can be empty:
# CASE-SENSETIVE!

$text=txt TXT md MD log LOG conf CONF
```

Create:

`tc\PLUGINS\wlx\TotalHLT\langDefs\text.lang`

```
# IMS: tc\PLUGINS\wlx\TotalHLT\langDefs\text.lang
# display plain text files via TotalHLT ("highlight" in Lister)
# File needs to exist, but can be empty!
```

# Updating TotalHLT #

**TLDR: don't.**

Objective: Update themes and language definitions in TotalHLT from Andre-Simon's "Highlight"

"Highlight" 3.0+ uses different format.

```
highlight 3.0 beta
03.06.2010
-language definitions, themes, filetypes.conf were converted to Lua scripts
(try examples/*2to3.py to convert old files)
```

Trying 2.16:

```
http://www.andre-simon.de/zip/highlight-setup-2.16.exe
```

Themes are not compatible!

`langDefs` are not compatible (RegEx)!

## Rant ##

What a stupid fucking website.

`http://www.andre-simon.de/zip/download.php`

No link to old versions.

`http://www.andre-simon.de/zip/` is not accessible.

Sigh...

<br> 

<br> 

IMSID237A515EEBC44D9C728795E3A9D9777E56473A38 