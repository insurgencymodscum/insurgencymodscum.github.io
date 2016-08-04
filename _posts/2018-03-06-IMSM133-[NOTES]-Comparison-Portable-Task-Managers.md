---
layout: post
title: 'IMSM133: [NOTES][TOOLS] Comparison of Portable Windows Task Managers'
date: 2018-03-06
author: InsModScum
tags:
- IMS
- 2018
- Comparison
- Notes
- Tools
---

**TLDR**: use *SystemExplorer*, unpacked via *Universal Extractor*, (*7-Zip* won't work).

Alternatives to Microsoft's SysInternals ProcessExplorerPortable (PortableApps)

The *PortableApps* version of ProcessExplorer (*procexp.exe*) is broken!

Some columns are not displayed (e.g. network), probably due to lack of admin rights. 

<!-- more -->

~~~
MiTeC Task Manager DeLuxe
Not portable. Writes to C:\Users\ADMIN\AppData\Roaming\MiTeC\Task Manager DeLuxe\TMX64.ini.

DBCTaskman
Suspicious

"ExtenSoft" Free Extended Task Manager
Not portable.

SterJo Task Manager
Broken. Doesn't start.

SystemExplorer
Not portable. Possibly portable via *Universal Extractor*.

ProcessHacker
Fraud. Deceptive. Claims to be "portable", it is not.

DTaskManager
OK, but unimpressed.

DBC TaskManager
Flashy, OK, but unimpressed. Probably abandoned.
~~~

---

IMSM133_1682993A4BDDF3794D96C7870AEFD7C36B916B6F