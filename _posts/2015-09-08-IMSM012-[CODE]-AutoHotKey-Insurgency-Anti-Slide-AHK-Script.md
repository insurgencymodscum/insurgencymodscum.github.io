---
layout: post
title: '[CODE] AutoHotKey: Insurgency Anti Slide AHK Script'
date: 2015-09-08
author: Insurgency Mod Scum (InsModScum)
tags:
- IMS
- IMSNOTED
- IMSINSURGENCY
- 2015
---

```
https://www.reddit.com/r/insurgency/comments/4b5k56/eliminating_slide_autohotkey
http://pastebin.com/zUSefvKe
```

```
#SingleInstance Force
#MaxHotkeysPerInterval 99999

V::
{
GetKeyState, state, W
if state=D
{
Send {W up}
Sleep 85
Send {V down}
KeyWait V
Send {V up}
return
}
else if state=U
{
Send {V down}
KeyWait V
Send {V up}
return
}
}

pause::Suspend
```

IMSID1D800B5FC939E9497F5F84EDCB9CAE089151E943