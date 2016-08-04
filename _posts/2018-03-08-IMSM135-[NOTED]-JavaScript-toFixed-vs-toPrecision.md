---
layout: post
title: 'IMSM135: [NOTED][RTFM] JavaScript toFixed() vs toPrecision()'
date: 2018-03-08
author: InsModScum
tags:
- IMS
- 2018
- Noted
- RTFM
---

~~~
https://stackoverflow.com/questions/3337849/difference-between-tofixed-and-toprecision
~~~

JavaScript toFixed() vs toPrecision()

toFixed(n) provides *n* length after the decimal point; toPrecision(x) provides *x* total length.

For completeness, I should mention that toFixed() is equivalent to toFixed(0) and toPrecision() just returns the original number with no formatting.

---

IMSM135_595A7860FB5FC6F06400DAF9918C97DB0054D173