---
layout: post
title: '[OUTDATED][PROTIP] TotalCmd ToolTips ("User-defined Help Texts") Config'
date: 2017-07-26
author: InsModScum
tags:
- 2017
- IMS
- ProTip
- TotalCmd
- Outdated
---

# Superseded by: #

Outdated. See the `Total Commander` repository.

<!-- more -->

# ToolTips (Config, Display, User-defined "Help texts")

```
*.mp4;*.flv;*.avi;*.wmv;*.mkv;*.f4v;*.mov;*.m4v;*.mpg;

(AKA PORN!)

WIP

Format: [=tcmediainfo.Format]\n\n
Duration: [=tcmediainfo.Duration.h:m:s]\n\n
Resolution (Frame Size): [=tcmediainfo.Frame Size]\n\n
Framerate: [=tcmediainfo.Frame Rate]\n\n
Encoded Date: [=tcmediainfo.Encoded Date.Y-M-D]\n\n
Aspect Ratio: [=tcmediainfo.Common aspect ratio]\n
Aspect Ratio: [=tcmediainfo.Display aspect ratio]\n\n
Video Format: [=tcmediainfo.Video Format]\n
Video Codec: [=tcmediainfo.Video Codec]\n\n
Video Bitrate: [=tcmediainfo.Video Bitrate.Bps] bps\n
Video Bitrate: [=tcmediainfo.Video Bitrate.KBps] kbps\n
Video Bitrate: [=tcmediainfo.Video Bitrate.MBps] mbps\n\n
Audio Format: [=tcmediainfo.Audio Format]\n
Audio Bitrate: [=tcmediainfo.Audio Bitrate.KBps] kbps\n\n
files

Rel 1

Format: [=tcmediainfo.Format]\n\nDuration: [=tcmediainfo.Duration.h:m:s]\n\nResolution (Frame Size): [=tcmediainfo.Frame Size]\n\nFramerate: [=tcmediainfo.Frame Rate]\n\nEncoded Date: [=tcmediainfo.Encoded Date.Y-M-D]\n\nAspect Ratio: [=tcmediainfo.Common aspect ratio]\nAspect Ratio: [=tcmediainfo.Display aspect ratio]\n\nVideo Format: [=tcmediainfo.Video Format]\nVideo Codec: [=tcmediainfo.Video Codec]\n\nVideo Bitrate: [=tcmediainfo.Video Bitrate.Bps] bps\nVideo Bitrate: [=tcmediainfo.Video Bitrate.KBps] kbps\nVideo Bitrate: [=tcmediainfo.Video Bitrate.MBps] mbps\n\nAudio Format: [=tcmediainfo.Audio Format]\nAudio Bitrate: [=tcmediainfo.Audio Bitrate.KBps] kbps\n\n[=tc.path][=tc.fullname]\n\nSize (B): [=tc.size.bytes] B\nSize (KB): [=tc.size.kbytes] KB\nSize (MB): [=tc.size.Mbytes] MB\n\nSize (bkM2): [=tc.size.bkM2]\nSize (bkMG2): [=tc.size.bkMG2]\nSize (bkMGT2): [=tc.size.bkMGT2]\nSize (bkMGT3): [=tc.size.bkMGT3]\n

Rel 2

Format: [=tcmediainfo.Format]\n\nDuration: [=tcmediainfo.Duration.h:m:s]\n\nResolution (Frame Size): [=tcmediainfo.Frame Size]\n\nFramerate: [=tcmediainfo.Frame Rate]\n\nEncoded Date: [=tcmediainfo.Encoded Date.Y-M-D]\n\nAspect Ratio: [=tcmediainfo.Common aspect ratio]\nAspect Ratio: [=tcmediainfo.Display aspect ratio]\n\nVideo Format: [=tcmediainfo.Video Format]\nVideo Codec: [=tcmediainfo.Video Codec]\n\nVideo Bitrate: [=tcmediainfo.Bitrate.Bps] bps\nVideo Bitrate: [=tcmediainfo.Bitrate.KBps_kiloBYTES] kbps\nVideo Bitrate:  [=tcmediainfo.Bitrate.MBps_megaBYTES] mbps\n\nAudio Format: [=tcmediainfo.Audio Format]\nAudio Bitrate: [=tcmediainfo.Audio Bitrate.KBps] kbps\n\n[=tc.path][=tc.fullname]\n\nSize (bytes): [=tc.size.bytes]\nSize (kbytes): [=tc.size.kbytes]\nSize (Mbytes): [=tc.size.Mbytes]\n\nSize (bkM2): [=tc.size.bkM2]\nSize (bkMG2): [=tc.size.bkMG2]\nSize (bkMGT2): [=tc.size.bkMGT2]\nSize (bkMGT3): [=tc.size.bkMGT3]\n

Rel 3
Fixed spacing
Using the "without dates" *.* code
Removed extra blank lines

\n \nFormat              : [=tcmediainfo.Format]\nDuration            : [=tcmediainfo.Duration.h:m:s]\nFrame Size          : [=tcmediainfo.Frame Size]\nFramerate           : [=tcmediainfo.Frame Rate]\nAspect Ratio        : [=tcmediainfo.Common aspect ratio] ([=tcmediainfo.Display aspect ratio])\nVideo Format (CODEC): [=tcmediainfo.Video Format] ([=tcmediainfo.Video Codec])\n\nEncoded Date (Y-M-D): [=tcmediainfo.Encoded Date.Y-M-D]\n\nVideo Bitrate: [=tcmediainfo.Bitrate.Bps] bps\nVideo Bitrate: [=tcmediainfo.Bitrate.KBps_kiloBYTES] kbps\nVideo Bitrate: [=tcmediainfo.Bitrate.MBps_megaBYTES] mbps\n\nAudio Format : [=tcmediainfo.Audio Format]\nAudio Bitrate: [=tcmediainfo.Audio Bitrate.KBps] kbps\n\n[=tc.path][=tc.fullname]\n\nSize (bytes) : [=tc.size.bytes]\nSize (kbytes): [=tc.size.kbytes]\nSize (Mbytes): [=tc.size.Mbytes]\n\nSize (bkM2)  : [=tc.size.bkM2]\nSize (bkMG2) : [=tc.size.bkMG2]\nSize (bkMGT2): [=tc.size.bkMGT2]\nSize (bkMGT3): [=tc.size.bkMGT3]\n \n

FILES (*.*)

WIP

[=tc.path][=tc.fullname]\n\n
Size (B): [=tc.size.bytes] B\n
Size (KB): [=tc.size.kbytes] KB\n
Size (MB): [=tc.size.Mbytes] MB\n\n
Size (bkM2): [=tc.size.bkM2]\n
Size (bkMG2): [=tc.size.bkMG2]\n
Size (bkMGT2): [=tc.size.bkMGT2]\n
Size (bkMGT3): [=tc.size.bkMGT3]\n

Rel 1

[=tc.path][=tc.fullname]\n\nSize (B): [=tc.size.bytes] B\nSize (KB): [=tc.size.kbytes] KB\nSize (MB): [=tc.size.Mbytes] MB\n\nSize (bkM2): [=tc.size.bkM2]\nSize (bkMG2): [=tc.size.bkMG2]\nSize (bkMGT2): [=tc.size.bkMGT2]\nSize (bkMGT3): [=tc.size.bkMGT3]\n

Rel 2

[=tc.path][=tc.fullname]\n\nSize (bytes): [=tc.size.bytes]\nSize (kbytes): [=tc.size.kbytes]\nSize (Mbytes): [=tc.size.Mbytes]\n\nSize (bkM2): [=tc.size.bkM2]\nSize (bkMG2): [=tc.size.bkMG2]\nSize (bkMGT2): [=tc.size.bkMGT2]\nSize (bkMGT3): [=tc.size.bkMGT3]\n

Rel 3

Added dates
Use monospaced font as "Dialog box font"!
Corrected spacing
USED AT THE END OF EACH SUPERSEDING CODE ABOVE (APPEND TO THE END)

WITH PATH & NAME
\n \n[=tc.path][=tc.fullname]\n\nCreated : [=tc.creationdate.Y]-[=tc.creationdate.M]-[=tc.creationdate.D] [=tc.creationtime.h:m:s]\nAccessed: [=tc.accessdate.Y]-[=tc.accessdate.M]-[=tc.accessdate.D] [=tc.accesstime.h:m:s]\nModified: [=tc.writedate.Y]-[=tc.writedate.M]-[=tc.writedate.D] [=tc.writetime.h:m:s]\n\nSize (bytes) : [=tc.size.bytes]\nSize (kbytes): [=tc.size.kbytes]\nSize (Mbytes): [=tc.size.Mbytes]\n\nSize (bkM2)  : [=tc.size.bkM2]\nSize (bkMG2) : [=tc.size.bkMG2]\nSize (bkMGT2): [=tc.size.bkMGT2]\nSize (bkMGT3): [=tc.size.bkMGT3]\n \n
WITHOUT PATH & NAME
Created : [=tc.creationdate.Y]-[=tc.creationdate.M]-[=tc.creationdate.D] [=tc.creationtime.h:m:s]\nAccessed: [=tc.accessdate.Y]-[=tc.accessdate.M]-[=tc.accessdate.D] [=tc.accesstime.h:m:s]\nModified: [=tc.writedate.Y]-[=tc.writedate.M]-[=tc.writedate.D] [=tc.writetime.h:m:s]\n\nSize (bytes) : [=tc.size.bytes]\nSize (kbytes): [=tc.size.kbytes]\nSize (Mbytes): [=tc.size.Mbytes]\n\nSize (bkM2)  : [=tc.size.bkM2]\nSize (bkMG2) : [=tc.size.bkMG2]\nSize (bkMGT2): [=tc.size.bkMGT2]\nSize (bkMGT3): [=tc.size.bkMGT3]\n
WITHOUT DATES
[=tc.path][=tc.fullname]\n\nSize (bytes) : [=tc.size.bytes]\nSize (kbytes): [=tc.size.kbytes]\nSize (Mbytes): [=tc.size.Mbytes]\n\nSize (bkM2)  : [=tc.size.bkM2]\nSize (bkMG2) : [=tc.size.bkMG2]\nSize (bkMGT2): [=tc.size.bkMGT2]\nSize (bkMGT3): [=tc.size.bkMGT3]\n

```

---

IMSIDBE345C71158D07F0D821D178AC5FE815EAE18901