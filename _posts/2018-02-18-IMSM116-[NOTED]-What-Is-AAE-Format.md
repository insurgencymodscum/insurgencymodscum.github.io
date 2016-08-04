---
layout: post
title: '[NOTED] What Is: AAE File Format'
date: 2018-02-18
author: InsModScum
tags:
- IMS
- 2018
- Noted
---

TLDR: XML metadata of changes to the image. Of course, undocumented & proprietary.

<!-- more -->

```
http://fileformats.archiveteam.org/wiki/AAE_sidecar_format


The AAE sidecar format has been reported as present in iOS 8 and OS X Yosemite for transfer of non-destructive adjustments in photo editing between systems and apps. It is an XML based format with various elements with "adjustment" in their names. The .aae file accompanies the actual image which is in a .jpg file. The introduction of this file format seems to have been done with little commentary and no online documentation.

On importing edited pictures from an iOS device into a Windows system, it appears only the JPEG file gets transfered, losing the edits (the picture appears in its original unedited form). Looking at the raw contents of the iOS data from Windows (going to "My Computer" and then the particular device) finds some mysterious "Local Disk" items alongside the graphics, which Windows refuses to open, move, or delete. These are perhaps the sidecar files, represented in the fileystem in a way that Windows can't handle. 
```

--- 

IMSM116_1E3510109678EAA46CC63E81B6874F3A268E01D4 