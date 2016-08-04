---
layout: post
title: 'IMSM119: [NOTES][TOOLS] TotalCmd Notes'
date: 2018-02-22
author: InsModScum
tags:
- IMS
- 2018
- Config
- Notes
- Tools
- TotalCmd
---

Collection of notes for TotalCmd (Total Commander).

<!-- more -->

# Config, Display, User-defined #

  ## Images ##

    ~~~
    [=tc.path][=tc.fullname]\n\nSize: [=tc.size.bytes] B\nSize: [=tc.size.kbytes] KB\nSize: [=tc.size.bkM2]\nSize: [=tc.size.bkMG2]\n\nWidth: [=imgsize.Width]\nHeight: [=imgsize.Height]\n\nEXIF Width: [=jpg-comment.ExifImageWidth]\nEXIF Height: [=jpg-comment.ExifImageHeight]\n\nEXIF Modify Date: [=jpg-comment.ModifyDate.Y-M-D]\nEXIF Original Date: [=jpg-comment.DateTimeOriginal.Y-M-D]\nEXIF Creation Date: [=jpg-comment.CreateDate.Y-M-D]
    ~~~

# Config, Thumbnails, Fields by type #
  
  ## Images ##

    ~~~
    Rev1
    ([=imgsize.Width] x [=imgsize.Height]) ([=tc.size.bkMGT3])

    Rev2
    "imgsize" is sometimes broken

    ([=imgsize.Width] x [=imgsize.Height]) ([=jpg-comment.ExifImageWidth] x [=jpg-comment.ExifImageHeight]) ([=tc.size.bkMGT3])
    ~~~

# Multi-Rename Tool: rename only the extension as lowercase #

  ~~~
  http://www.ghisler.ch/board/viewtopic.php?p=70448

  Lefteous
  Power Member
  Power Member
  Joined: 08 Feb 2003
  Posts: 9392
  Location: Germany
  PostPosted: Fri Oct 21, 2005 2:51 am    Post subject: Reply with quote
  2Xtrician

  Set Upper/Lowercase to unchanged and set the Extension to
  Code:
  [L][E]

  [L] means all characters after this mark should be converted to lowercase. Find information more in the help file.


  or

  [LE]
  ~~~

# Multi-Rename Tool: brackets (escape character) #

  ##  TLDR ##

  ~~~
  Left bracket:
  [[]
  Right bracket:
  []]
  ~~~

## RTFM ##

  ~~~
  http://www.ghisler.ch/wiki/index.php/Multi-rename_tool
  ~~~

  ~~~
  Here is a description of all available placeholders. IMPORTANT: Upper/lowercase is relevant!
  [N]   old file name, WITHOUT extension
  [N2-5]  Characters 2 to 5 from the old name (totals to 4 characters). Double byte characters (e.g. Chinese, Japanese) are counted as 1 character! The first letter is accessed with '1'.
  [N2,5]  5 characters starting at character 2
  [N2-]   All characters starting at character 2
  [N-8,5]   5 characters starting at the 8-last character (counted from the end of the name)
  [N-8-5]   Characters from the 8th-last to the 5th-ast character
  [N2--5]   Characters from the 2nd to the 5th-last character
  [N-5-]  Characters from the 5th-last character to the end of the name
  [2-5]   Characters 2-5 from the whole name and extension (other numbers as in [N] definition)
  [P]   Paste name of the parent directory, e.g. when renaming c:\directory\file.txt -> pastes "directory".

  Also working: [P2-5], [P2,5], [P-8,5], [P-8-5] and [P2-], see description of [N] above.
  [G]   Grandparent directory (usage: see [P]).
  [E]   Extension
  [E1-2]  Characters 1-2 from the extension (other numbers as in [N] definition)
  [C]   Paste counter, as defined in Define counter field
  [C10+5:3]   Paste counter, define counter settings directly. In this example, start at 10, step by 5, use 3 digits width.

  Partial definitions like [C10] or [C+5] or [C:3] are also accepted.
  [Caa+1]   Paste counter, define counter settings directly. In this example, start at aa, step 1 letter, use 2 digits (defined by 'aa' width)
  [d]   Paste date as defined in current country settings. / is replaced by a dash
  [Y]   Paste year in 4 digit form
  [M]   Paste month, always 2 digit
  [D]   Paste day, always 2 digit
  [t]   Paste time, as defined in current country settings. : is replaced by a dot.
  [h]   Paste hours, always in 24 hour 2 digit format
  [m]   Paste minutes, always in 2 digit format
  [s]   Paste seconds, always in 2 digit format
  [U]   All characters after this position in uppercase
  [L]   All characters after this position in lowercase
  [F]   First letter of each word uppercase after this position, all others lowercase
  [n]   All characters after this position again as in original name (upper/lowercase unchanged)
  [[]   Insert square bracket: open
  []]   Insert square bracket: close (cannot be combined with other commands inside the square bracket!)
  [=pluginname.fieldname.unit]  Insert field named "fieldname" from content plugin named "pluginname". "unit" may be an optional unit (if supported by that field), or a field formatter like YMD for date fields. You can use the [=?] Plugin button to insert plugin fields.
  [=pluginname.fieldname.unit:4-7]  Same as above, but for partial strings (here: letters 4-7).
  ~~~

# Unused #

  ## BitChaos ##

  ~~~
  Packed: [=bitchaos.Packed]\n
  Signature:  [=bitchaos.Signature]\n
  Entrypoint:  [=bitchaos.Entrypoint]\n
  Sections entropy  [=bitchaos.Sections entropy]\n
  Version:  [=bitchaos.Version info]\n
  Imports:  [=bitchaos.Imports]\n
  AV:  [=bitchaos.AV detect]\n

  Packed: [=bitchaos.Packed]\nSignature:  [=bitchaos.Signature]\nEntrypoint:  [=bitchaos.Entrypoint]\nSections entropy  [=bitchaos.Sections entropy]\nVersion:  [=bitchaos.Version info]\nImports:  [=bitchaos.Imports]\nAV:  [=bitchaos.AV detect]\n
  ~~~

  ## "Custom fields by file type" ##

    ### Hashes ###

      ~~~
      Rev1

      wdhash CRC32: [=wdhash.CRC32] MD5: [=wdhash.MD5]\nlotsofhashes CRC32: [=lotsofhashes.CRC32.Uppercase] MD5: [=lotsofhashes.MD5.Uppercase]\nhashsys CRC32: [=hashsys.CRC32] MD5: [=hashsys.MD5]
      ~~~

      ~~~
      Rev2
      Removed CRC32 & HashSys, b/c it's shows wrong hash sometimes.

      Default for *.*
      SHA2-512
      WDHash SHA2-512: [=wdhash.SHA512]\nLotsOfHashes SHA2-512: [=lotsofhashes.SHA2 512.Lowercase]\n

      Optional
      SHA3-512
      LotsOfHashes SHA3-512: [=lotsofhashes.SHA3 512.Delimited uppercase]\n
      ~~~

---

IMSM119_11AE92C48B0E852A79414A1227018ECF3ECE51CF
