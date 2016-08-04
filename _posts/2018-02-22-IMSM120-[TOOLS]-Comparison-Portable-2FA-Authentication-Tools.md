---
layout: post
title: 'IMSM120: [NOTES][TOOLS] Comparison of Portable 2FA (2-Factor Authentication) Tools (Windows)'
date: 2018-02-22
author: InsModScum
tags:
- IMS
- 2018
- Comparison
- Notes
- Portable
- Tools
---

**TLDR: Mos Authenticator (calls home)**

<!-- more -->

```
Shit
LinOTP
GAuth
TwoStepsAuthenticator
gauth4win (obsolete)

Bad
FreeOTP
Phones only
JAuth (Java, old)
FXAuth ("JavaFX")
"Authenticator" (by: "jcuff") (useless, some type of front-end for Google Authenticator)

OK
Mos Authenticator (calls home)

Appears BEST, but not really
Windows Authenticator AKA winauth (FOSS, portable)
```

# Windows Authenticator AKA WinAuth #

```
There is also a .Net 3.5 build of WinAuth that can be run on Windows 7 installations "out of the box".
```

```
Requires Microsoft .Net 4.5
```

If you choose to use the newer .NET Framework, thus introducing incompatibility to millions of Windows7 users,  you are an idiot.

Also stupid `readme.md`

And looking at the *changelog*, scary sounding security bugs are still being fixed.

**Insecure!**

--- 

IMSM120_6F15613B47ACBC297BA8156827561C678B43EE85 