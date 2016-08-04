---
layout: post
title: '[PROTIP] gVim: Set Default Font'
date: 2017-09-14
author: InsModScum
tags:
- IMS
- 2017
- gVim
- ProTip
- Vim
---

`gVimPortable\Data\settings\_vimrc`

```
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
  set guifont=Consolas:h12
endif
```

# RTFM #

```
https://stackoverflow.com/questions/16882696/settings-default-font-in-gvim
```

---

Problem: gVimPortable (the one from PortableApps.com)does not read `_vimrc` in the `data` folder, uses the one in `%USERPROFILE%`. 
 
<br> 
 
IMSID_862187030F56B2B69E051A5D9B7E915796183138 
 
<br> 
 