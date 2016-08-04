---
layout: post
title: '[PROTIP] TotalCmd: TotalHLT (TC Lister Plugin) Theme'
date: 2017-09-06
author: InsModScum
tags:
- IMS
- 2017
- ProTip
- TotalCmd
---

*TotalHLT* will show line numbers and change color of text & background in Total Commander's Lister.

See `tc\plugins\wlx\TotalHLT\themes\1ims.totalhlt.totalcmd.lister.plugin.color.theme.style` in Total Commander repo for the latest version.


# Code #

```
# IMS: tc\plugins\wlx\TotalHLT\themes\1ims.totalhlt.totalcmd.lister.plugin.color.theme.style
# color theme for TotalHLT (Total Commander Lister plugin to change text & background colors in Lister & syntax highlighting)
# Specify this theme in "highligh_wlx.xml"
# Based on Themeby-Dark-V2-IMSMOD.tmTheme (SublimeText theme)

# colors do not work in "#ABCDEF" format! must be in "ab cd ef" format!

# text
$DEFAULTCOLOUR=cc cc cc
# background
$BGCOLOUR=1a 1a 1a

$FONTSIZE=12

# gutter line number text
$LINE=33 33 33

# equals & other signs
$SYMBOL=dd dd dd

# from darkness.style

# $DEFAULTCOLOUR=ff ff ff
# $BGCOLOUR=00 00 00
# $FONTSIZE=10
$KW_CLASS(kwa)=ff ff 00 bold
$KW_CLASS(kwb)=00 ff 00
$KW_CLASS(kwc)=26 e0 e7
$NUMBER=ff 00 00
$ESCAPECHAR=bf bf bf
$STRING=ab ab 00 bold
$STRING_DIRECTIVE=ab ab 00
$COMMENT=88 88 88 italic
$DIRECTIVE=00 00 ff
# $LINE=00 88 88
# $SYMBOL=ff 00 ff
```

<br>

IMSID_5C7B6B641D40A6B45C3CB5430E269C72F5D59D4B

<br>