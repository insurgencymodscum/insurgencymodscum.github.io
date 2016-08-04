---
layout: post
title: 'IMSM129: [NOTED] Android: Negative dBm (proper spelling!) in Signal Strength'
date: 2018-03-03
author: InsModScum
tags:
- IMS
- 2018
- Noted
- Android
---

~~~
https://stackoverflow.com/questions/17874852/what-is-meaning-of-negative-dbm-in-signal-strength
~~~

<!-- more -->

~~~
I think it is confusing to think of it in terms of negative numbers. Since it is a logarithm think of the negative values the same way you think of powers of ten. 10^3 = 1000 while 10^-3 = 0.001.

With this in mind and using the formulas from S Lists's answer (and assuming our base power is 1mW in all these cases) we can build a little table:

|--------|-------------------|
| P(dBm) |        P(mW)      |
|--------|-------------------|
|    50  |  100000           |    
|    40  |   10000           |    strong transmitter
|    30  |    1000           |             ^  
|    20  |     100           |             |
|    10  |      10           |             |
|     0  |       1           |
|   -10  |       0.1         |
|   -20  |       0.01        |
|   -30  |       0.001       |
|   -40  |       0.0001      |
|   -50  |       0.00001     |             |
|   -60  |       0.000001    |             |
|   -70  |       0.0000001   |             v
|   -80  |       0.00000001  |    sensitive receiver
|   -90  |       0.000000001 |
|--------|-------------------|
When I think of it like this I find that it's easier to see that the more negative the dBm value then the farther to the right of the decimal the actual power value is.

When it comes to mobile networks, it not so much that they aren't powerful enough, rather it is that they are more sensitive. When you see receivers specs with dBm far into the negative values, then what you are seeing is more sensitive equipment.

Normally you would want your transmitter to be powerful (further in to the positives) and your receiver to be sensitive (further in to the negatives).


edited Aug 7 '15 at 5:32
answered Aug 7 '15 at 5:00

Octopus
~~~

---

IMSM129_A67089A2E9F48D79E07FA2A12DA01E50290A1706