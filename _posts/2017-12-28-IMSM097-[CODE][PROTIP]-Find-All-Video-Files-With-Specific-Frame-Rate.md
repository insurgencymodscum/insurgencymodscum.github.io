---
layout: post
title: '[CODE] Find All Video Files with Specific Frame Rate (FPS)'
date: 2017-12-28
author: InsModScum
tags:
- IMS
- 2017
- Code
- MediaInfo
- TotalCmd
---

**TLDR: use TotalCmd**

Objective: find all video files with specific frame rate (FPS), e.g. find all files with less than 24fps.

# FINAL #

## Via BASH  & FFprobe ##

```
# find videos with 24fps or 30fps
find -type f -exec sh -c './ffprobe -show_streams 2>/dev/null "{}" | grep -q -e avg_frame_rate=30/1 -e avg_frame_rate=24/1' \; -print

# find videos NOT with 24fps or 30fps
find -type f -exec sh -c './ffprobe "{}" 2>&1| grep ",* fps" | cut -d "," -f 5 | cut -d " " -f 2 | grep -v -e 24 -e 30' \; -print
```

## Via Total Commander ##

Using `MediaInfoWDX`.

Do not use `TCMediaInfo`, since it does not support *GREATER*/*LESS*-than searches.

See TotalCmd repo for this author's TC config.

<!-- more -->

# WIP #

```
orig

$ eval $(./ffprobe -v error -of flat=s=_ -select_streams v:0 -show_entries stream=height,width input.mkv)
$ size=${streams_stream_0_width}x${streams_stream_0_height}
$ echo $size

rtfm

"r_frame_rate": "25/1",
"avg_frame_rate": "25/1",

works!

eval $(./ffprobe -v error -of flat=s=_ -select_streams v:0 -show_entries stream=avg_frame_rate input.mkv)
test=${streams_stream_0_avg_frame_rate}
echo $test

---

better way:

https://superuser.com/questions/1221849/linux-how-to-list-all-video-files-with-exactly-720p-resolution


# find files with "30fps" & print filename
find -type f -exec sh -c './ffprobe -show_streams 2>/dev/null "{}" | grep -q avg_frame_rate=30/1' \; -print

# find files with 30fps & 24fps
# -e "use regex pattern", -q "quiet"
find -type f -exec sh -c './ffprobe -show_streams 2>/dev/null "{}" | grep -q -e avg_frame_rate=30/1 -e avg_frame_rate=24/1' \; -print
# broken
find -type f -exec sh -c './ffprobe -show_streams 2>/dev/null "{}" | awk "/avg_frame_rate=30/ || /avg_frame_rate=24/ { print; }"' \;

---

#show fps of all files
#https://askubuntu.com/questions/110264/how-to-find-frames-per-second-of-any-video-file/110269
find -type f -exec sh -c './ffprobe "{}" 2>&1| grep ",* fps" | cut -d "," -f 5 | cut -d " " -f 2' \; -print

# as above, but with negating grep
find -type f -exec sh -c './ffprobe "{}" 2>&1| grep ",* fps" | cut -d "," -f 5 | cut -d " " -f 2 | grep -v -e 24 -e 30' \; -print

---

# broken
for i in ls *.mkv; do sm=$(./mediainfo $i | grep 'Original frame rate' | sed 's/  //g');if [[ "$sm" != *30* ]]; then printf "\n file: %-s $i string: $sm \n"; fi; done
```

---

IMSID_77509003B2862BFCC81613427D75E2C58C595782 