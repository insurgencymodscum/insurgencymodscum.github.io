---
layout: post
title: '[CODE] Overview (Description) of *.BAT Scripts in IMS Tools Repository'
date: 2018-02-18
author: InsModScum
tags:
- IMS
- 2018
- Code
---

```
find.missing.corresponding.files.bat
[CODE][MUSIC] Find Missing Corresponding Files via BATCH or BASH Scripts (Windows)
See post.

git.add.commit.current.dir.with.datetimestamp.1NO.INIT.bat
Git: DO NOT initialize repo in %CD%, add all files and commit using date and time as message

git.add.commit.current.dir.with.datetimestamp.2YES.INIT.bat
Git: DO initialize repo in %CD%, add all files and commit using date and time as message

git.do.command.recursively.bat
Perform specified command (TWO ARGUMENTS MAXIMUM!) on all Git repositries recursively (e.g. reinitalized all repos).
E.g. git.do.command.recursively.bat d:\ git init

git.do.command.recursively.less.verbose.bat
Above

git.reinitialize.all.repos.on.d.disk.bat
call git.do.command.recursively.bat D:\ git init | grep -v Reinitialized | cat -n

# Hash functions #
hash.md5.given.file.via.certutil.bat
hash.md5.given.file.via.rhash64.bat
hash.sha1.given.file.via.certutil.bat
hash.sha1.given.file.via.rhash64.bat
hash.sha1.given.file.via.rhash64.clipboard.bat

image.delete.image.exif.metadata.bat
Delete ALL image metadata vi EXIFTool
Original file is...
filename.jpg_original

jrepl.bat
JREPL library
"Performs a global regular expression search and replace operation on each line of ASCII input from stdin and prints the result to stdout."

network.ping.host.bat
CONTINUOUSLY ping the specified host

network.reboot.if.down.bat
Reboot network if cannot successfuly ping 3 websites.

rmempty.as.admin.via.elevate.bat
rmempty.as.normal.bat
Remove empty directories (folders)

text.convert.tab.to.4.spaces.in.all.files.in.given.dir.RECURSIVELY.bat
RECURSIVELY convert each TAB to 4 SPACES in all files with the given extension in the GIVEN directory via JREPL.bat
echo JREPL.bat needs to be in PATH.

video.convert.dir.container.to.mkv.bat
Convert video file container to MKV. INDIVIDUAL FILES. ffmpeg.exe needs to be in PATH!

video.convert.file.container.to.mkv.bat
Convert video file container to MKV. SINGLE FILE. ffmpeg.exe needs to be in PATH!

video.convert.file.container.to.mp4.bat
Convert video file container to... MP4. SINGLE FILE. ffmpeg.exe needs to be in PATH!

whereis.bat
Whereis program by Raymond Chen
http://blogs.msdn.com/oldnewthing/archive/2005/01/20/357225.aspx

~run.delete.trash.recent.files.bat
rmdir /s /q %appdata%\microsoft\windows\recent
NirSoft\NirSoft\nircmd emptybin

~run.delete.trash.rmempty.as.admin.via.elevate.bat
NirSoft\NirSoft\nircmd emptybin
call rmempty.as.admin.via.elevate.bat

~run.spoon.aka.turbo.chrome.RUN.NO.DATA.LOSS.latest.bat
turbo run --detach chrome

~run.spoon.aka.turbo.chrome.START.NO.DATA.LOSS.c.bat
Continer must be named "c"!
turbo start --detach c

~run.spoon.aka.turbo.chrome.TRY.DATA.LOSS.latest.bat
DANGER! DATA ("CONTAINER") WILL BE DELETED AFTER EXITING!
turbo try chrome


~run.spoon.aka.turbo.delete.remove.containers.careful.actual.user.data.bat
remove (delete) all CONTAINERS (ACTUAL USER DATA! CAREFUL!)
~run.spoon.aka.turbo.delete.remove.images.bat
remove all IMAGES (OK, no data loss!)

Note:
deleting "turbo" aka "spoon" "containers" will delete user data!
deleting "images" is OK (no data loss)!

~runKillAllWiFiLAN.bat
~runKillLAN.bat
~runKillUnkillAllWiFiLAN.bat
~runKillUnkillLAN.bat
~runKillUnkillWiFi.bat
~runkillWiFi.bat

netsh interface set interface "Local Area Connection" DISABLED
netsh interface set interface "Local Area Connection" ENABLED
rem netsh interface set interface "Wireless Network Connection" DISABLED
rem netsh interface set interface "Wireless Network Connection" ENABLED
```

--- 

IMSM115_1C386F875CB2B7E7574CC437F245FD5E256EFCFD 