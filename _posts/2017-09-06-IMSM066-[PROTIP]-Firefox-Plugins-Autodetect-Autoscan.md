---
layout: post
title: '[PROTIP] Firefox: Disable Plugin Autodetection'
date: 2017-09-06
author: InsModScum
tags:
- IMS
- 2017
- Firefox
- ProTip
---

```
http://kb.mozillazine.org/Plugin_scanning

To prevent scanning the directories specified in the Windows registry for PLIDs , modify the plugin.scan.plid.all preference value from "true" to "false". Plugins in this category currently include RealPlayer, the Next-Generation Java Plug-In for Mozilla browsers and Adobe Flash (starting with Flash 9.0 r45). [1]. [2]

To prevent scanning the Quicktime, SunJRE, WindowsMediaPlayer or Acrobat installation directories, find the related preference and increase the value of the minimum version to a number greater than the version you have installed. For example, to stop the scan of the Windows Media Player installation directory, which includes the standard WMP plugin "npdsplay.dll" on Windows XP, modify the value of the preference plugin.scan.WindowsMediaPlayer from "7.0" to 19.0 [3].
```

**TLDR:**

```
plugin.scan.plid.all // false
plugin.scan.* // set to high #
``` 
 
<br> 
 
IMSID_3B68BFE79013360D33D42835F73EDAD264EB5250 
 
<br> 
 