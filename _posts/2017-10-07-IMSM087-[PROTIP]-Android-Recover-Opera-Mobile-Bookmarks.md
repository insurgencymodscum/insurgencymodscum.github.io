---
layout: post
title: '[PROTIP] Android: Recover Opera Mobile [AKA Opera Classic] 12.10 Bookmarks'
date: 2017-10-07
author: InsModScum
tags:
- IMS
- 2017
- Android
- ProTip
---

<!-- more -->

Need root.

Open `/data/data/com.opera.browser.classic\opera\etc\2\all` in `010 Editor` (hex editor).
Search, Find Strings.

"10, ASCII, Letters, Numbers, Underscores, Symbols, Spaces".

RMB on "Found ...", Copy column.
You should have a bunch of strings, one per line.

In SublimeText, RegEx search: `https?:\/\/.*`
Copy & paste the resulting lines.

You should have URLs.

---

IMSM087_7FFF447F54E4B5E68425A1E1F529907089BF0E21