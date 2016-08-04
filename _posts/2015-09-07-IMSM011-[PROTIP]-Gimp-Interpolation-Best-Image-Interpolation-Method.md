---
layout: post
title: '[PROTIP] Gimp Interpolation / Best Image Interpolation Method'
date: 2015-09-07
author: Insurgency Mod Scum (InsModScum)
tags:
- IMS
- IMSPROTIP
- IMSVIDEO
- IMSTOOLS
- 2015
---

TLDR: use `Sinc/Lanczos`.

<br>

`http://gimpforums.com/thread-interpolation`

```
'None' (also called "nearest neighbor") means that you just find you nearest neighbor in the original image and take its value, so for instance T2, T4, T5 will get the same color as S1, T6 will get it from S2, and T8 from S3).

'Linear' means that you use a proportional rule (it's a actualy 'bilienar' and use the nearest 2x2 pixels). T2 would be S1+S2/2, T5 would be (S1+S2+S3+S4)/4.

'Cubic' (actually "bicubic") is an improvement on bilinear that uses the nearest 3x3 pixels.

'Sinc/Lanczos' is the more advanced of the lot, using high-level maths that are out of my league.
```

<br>

IMSID04CAC0CD7CDE599D680681F28CD6CD7AA174C363