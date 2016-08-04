---
layout: post
title: 'IMSM146: [NOTES] MikroTik RouterOS VPN: Difference Between "tun" vs "tap"'
date: 2018-03-13
author: InsModScum
tags:
- IMS
- 2018
- MikroTik
- Notes
- RouterOS
---

<!-- more -->

# "tun" vs "tap" #

~~~
TAP is basically at Ethernet level (layer 2) and acts like a switch where as TUN works at network level (layer 3) and routes packets on the VPN. TAP is bridging whereas TUN is routing
~~~

# Nomenclature: MikroTik RouterOS way vs Standard Linux/Windows #

~~~
tun, RouterOS defines this as ip.
tap, which is needed for bridge mode gateways. RouterOS defines this as ethernet.
~~~

---

IMSM146_32996C64EBBE897E8D95E2DF7EED2799284F321D
