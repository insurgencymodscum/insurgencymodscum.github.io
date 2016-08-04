---
layout: post
title: '[NOTES] Everything (VoidTools) Notes'
date: 2017-09-12
author: InsModScum
tags:
- IMS
- 2017
- Notes
- Tools
- Everything
---

<!-- more -->

# Notes #

"Type" and "ext" seem to do the same thing?

Boolean operators in search quiery must be CAPITALIZED.

## Search Syntax ##

~~~
Search INSIDE files:
path:d:\path content:"foo"

Search in PATH, in EXT files for TERM:
path:d:\path AND (ext:txt OR ext:text) AND content:term
~~~

## RTFM ##

~~~
type:<type> Search for files and folders with the specified type.
ext:<ext1;ext2;...> Search for files with a matching extension in the specified semicolon delimited extension list.
~~~

## Exclude Specified Filetype ##

### Option A: Exclude from being indexed ###

`Options, Indexes, Exclude, Exclude files`

~~~
*.ico;
~~~

### Option B: Exclude from results via Filters ###

`Organize Filters, Edit Filter, Search`

~~~
!ext:ico;
~~~

# Cofnig: Macros & shortcuts #

~~~
everything
z
!ext:ico;

md & txt
ext:md;txt
x

compressed
c

video
v

--

audio
add "flac" to default
a

folder [dir]
d
folder:

file
f
file:

markdown
h

TXT OR MD OR HTM*
j
ext:md;txt;html;htm AND !path:c:

---

exact
w
exact:

exe
e

run
r
nowholefilename:~run AND !ext:unused

text
t

image
i
~~~

---

IMS079_1AFE8F1CC498F9938E2FB9E175B36A8F6A77AD3E