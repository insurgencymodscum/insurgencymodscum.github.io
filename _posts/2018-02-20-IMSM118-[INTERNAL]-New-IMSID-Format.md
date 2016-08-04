---
layout: post
title: '[INTERNAL] New Format For Post Title & "IMSID"'
date: 2018-02-20
author: InsModScum
tags:
- IMS
- 2018
- Internal
---

<!-- more -->

# Format for post title #

`[tags] IMSM[#]: [title]`

# Format for unique ID for each post ("IMSID") #

For old *Blogger-AKA-Blogspot* posts:

`IMSB1366_[MD5]`

For new *Markdown-GitHub-Pages* posts:

~~~
[post text]

---

IMSM[POST_###]_[MD5]
~~~

# Templates #

## Superseded by another post ##

~~~
# Superseded by: #

IMSM###_MD5

# Original Post #
~~~

## Superseded by a file in a Git repo ##

~~~
# Superseded by: #

```
foobar2000.outdated.config.md
```
...in the `configs` repository.
~~~

---

IMSM118_C292DDD2A0E4CB74A6955E637AE22C07CBECDB80