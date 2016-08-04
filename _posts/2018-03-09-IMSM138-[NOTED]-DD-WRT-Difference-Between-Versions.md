---
layout: post
title: 'IMSM138: [NOTED] DD-WRT: Difference Between Micro, Mini, Standard (STD), VPN, VoIP'
date: 2018-03-09
author: InsModScum
tags:
- IMS
- 2018
- DD-WRT
- Noted
---

# TLDR #

**USE `mini` (`dd-wrt.v24_mini_wrt300n.r35874.bin` for Linksys WRT300n v1.0), `mini` gives the most space for files in `/jffs` dir for adblocking**

<!-- more -->

---

~~~
Special vs Generic

"Currently brainslayer offers a special version of DD-WRT with extended QoS capabilities:""
~~~

---

~~~
The micro edition is a stripped down version designed for the WRT54G v5 and other 2MB router models.

The mini contains all the features of the standard distribution, with the exception of chillispot, nocat, rflow, kaid, CIFS client, SNMP, IPv6, and MMC/SD card support. 

The standard (std) distribution includes all features, with the exception of VOIP. 

The standard-nokaid (std-nokaid) distribution includes all features of standard, with kaid removed to free some flash space. 

The VOIP distribution includes all features, with kaid removed to make room for Milkfish. 

The VPN edition includes OpenVPN but does not include IPv6, CIFS client, or kaid. 
~~~

---

~~~
kaid

Kai Console Gaming
Kai is a means of connecting platform games over the internet. It integrates all current major platforms (gamecube, xbox, psp, ps2) in one integrated community. While the new Xbox 360 is supported, there appears to be a requirement for super low pingtimes. More information on Kai can be found at

Milkfish
SIPatH/Milkfish

SIPatH is a configurable, free and RFC3261-compliant SIP proxy. SIPatH features a Status web interface, enables individual VoIP provider settings on each IP phone and internal calls among all registered phones within the local network. Main projects objectives are providing a simple solution of the SIP-over-NAT problem and free PBX-like telephony features.
~~~

---

IMSM138_9E7AE6B59647F96FA6D01118BB00B6D3BA54611B