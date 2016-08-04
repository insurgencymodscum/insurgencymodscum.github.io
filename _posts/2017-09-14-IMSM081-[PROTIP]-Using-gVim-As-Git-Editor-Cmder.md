---
layout: post
title: '[PROTIP] Using Portable gVim as Git Editor in Cmder'
date: 2017-09-14
author: InsModScum
tags:
- IMS
- 2017
- Cmder
- Git
- gVim
- ProTip
---

Note, if using PortableGVim (PortableApps.com), `GIT_EDITOR` must NOT point to PortableGVim.exe. Git won't wait for you to finish editing in gVim.

`.gitconfig`

```
[core]
  editor = 'D:\\tools\\txt\\gVimPortable\\App\\vim\\vim80\\gvim.exe' -f
```

**NOT** `editor = 'D:\\tools\\txt\\gVimPortable\\gVimPortable.exe' -f`

# Check #

```
$git var GIT_EDITOR // show global editor
```

# Also #

It's *gVim* & *Git* BTW (proper capitalization)!

# RTFM #

```
https://stackoverflow.com/questions/3764481/git-commit-fails-with-vim-and-gvim
```

---

# Problem #

gVimPortable (the one from PortableApps.com)does not read `_vimrc` in the `data` folder, uses the one in `%USERPROFILE%`.

# Fix #

*WIP*

<br>

IMSID_784B48FE7BD902FD5E83082CF53A9B29AFF7F4BE

<br>