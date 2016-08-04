---
layout: post
title: '[NOTED][TOOLS] JKDefrag CLI Options'
date: 2015-09-26
author: Insurgency Mod Scum (InsModScum)
tags:
- IMS
- IMSNOTED
- IMSTOOLS
- 2015
---

<pre>

   JkDefrag v3.36
   Date: 2016/08/06
   Windows version: v6.1 build 7601 Service Pack 1

   JkDefragCmd.exe [-a N] [-e "mask"] [-u "mask"] [-s N] [-f N] [-d N] [-l "filename"] [items]

   -a N     Select an action to perform. The number N is a value from 1 to 6,
            default is 3:
            1 = Analyze, do not defragment and do not optimize.
            2 = Defragment only, do not optimize.
            3 = Defragment and fast optimize [recommended].
            5 = Force together.
            6 = Move to end of disk.
            7 = Optimize by sorting all files by name (folder + filename).
            8 = Optimize by sorting all files by size (smallest first).
            9 = Optimize by sorting all files by last access (newest first).
            10 = Optimize by sorting all files by last change (oldest first).
            11 = Optimize by sorting all files by creation time (oldest first).
   -e "mask"
            Exclude files or directories that match the mask. The files will not
            be defragged and will not be moved. Use wildcards '*' and '?' in the
            mask to match a set of files or directories. If the mask contains a
            space then it must be enclosed in double-quotes. Some examples:
            "*.avi", "*\w3svc*\*.log", "D:\MySQL\Data".
   -u "mask"
            Files that match a mask will be moved to the SpaceHogs area. The
            program has a build-in list for all files bigger than 50 megabytes,
            files not accessed in the last month, archives, files in the recycler
            bin, service pack files, and some others. Disable this list by
            specifying the special mask "DisableDefaults". Use wildcards '*' and
            '?' in the mask to match a set of files or directories. If the mask
            contains a space then it must be enclosed in double-quotes.
            Some examples: "*.avi", "*\w3svc*\*.log", "D:\MySQL\Data\*".
   -s N     Slow down to N percent (1...100) of normal speed. Default is 100.
   -f N     Set the size of the free spaces to N percent (0...100) of the size of
            the volume. The free spaces are room on disk for temporary files. There
            are 2 free spaces, between the 3 zones (directories, regular files,
            SpaceHogs). Default is 1% (per free space).
   -d N     Select a debug level, controlling the messages that will be written
            to the logfile. The number N is a value from 0 to 6, default is 1:
            0 = Fatal errors.
            1 = Warning messages [default].
            2 = General progress messages.
            3 = Detailed progress messages.
            4 = Detailed file information.
            5 = Detailed gap-filling messages.
            6 = Detailed gap-finding messages.
   -l "filename"
            Specify a filename for the logfile. Default is "JkDefragCmd.log".
            Specify empty string "" (two double-quotes) to disable the logfile.
   -h       Show this help message.
   -help    Show this help message.
   --help   Show this help message.
   /?       Show this help message.
   items    The items to be defragmented, the path to a file, directory, disk,
            mountpoint, or volume, including removable media such as floppies,
            USB disks, memory sticks, and other volumes that behave like a
            harddisk. Wildcards '*' and '?' are allowed to select a set of files.
            If the item contains a space then it must be enclosed in double-
            quotes. Some examples: "C:", "D:\MySQL\Data", "F:\*.log"
</pre>

<br>

IMSIDEEF6D3C121D288A02F0D802AB588AFED34A844AD