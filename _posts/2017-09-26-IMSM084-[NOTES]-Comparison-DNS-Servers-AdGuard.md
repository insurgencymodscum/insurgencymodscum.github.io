---
layout: post
title: '[NOTES] Comparison of DNS Servers'
date: 2017-09-26
author: InsModScum
tags:
- IMS
- 2017
- Comparison
- DD-WRT
- DNS
- ProTip
---

Comparison of DNS servers (turn domain name (`google.com`) into IP addresses (`192.168.1.1`)).

# TLDR #

Avoid Google!

## Rev1 ##

Use OpenDNS & DDNS [Dynamic DNS] feature in DD-WRT with dnsomatic.com. (This will send DD-WRT's IP to OpenDNS).

## Rev2 ##

Use OpenNIC "Worldwide Anycast" servers.

## Rev3 ##

AdGuard & CloudFare & OpenDNS

~~~
176.103.130.130
176.103.130.131

1.1.1.1
1.0.0.1

208.67.222.222
208.67.220.220

208.67.222.220
208.67.220.222

~~~

<!-- more -->

# OpenDNS #

~~~
Name:    resolver1.opendns.com
Address:  208.67.222.222

Name:    resolver2.opendns.com
Address:  208.67.220.220

Name:    resolver3.opendns.com
Address:  208.67.222.220

Name:    resolver4.opendns.com
Address:  208.67.220.222
~~~


# Comodo "Secure" DNS #

~~~
8.26.56.26
8.20.247.20

SCAM! Hijacks and displays ads. DO NOT USE!
~~~

---

# FoolDNS #

~~~
Claims to block ads.

87.118.111.215
213.187.11.62
~~~

---

# OpenNIC #

Doesn't inspire confidence.

~~~
https://servers.opennic.org/
Look for "No logs kept"

As of 2018-04-03

"Tier 1"
94.103.153.176
79.124.7.81

"Tier 2" / "Worldwide Anycast"
185.121.177.177
169.239.202.202
198.251.90.143	
~~~

---

# CloudFare #

~~~
1.0.0.1
1.1.1.1
2606:4700:4700::1111
2606:4700:4700::1001
~~~

---

## AdGuard ##

Block ads.

~~~
https://adguard.com/en/adguard-dns/overview.html

176.103.130.130
176.103.130.131
~~~

## Epsilon Eight ##

Block ads. Suspicious.

~~~
138.68.250.168
~~~

---

IMSM084_7D3F56E2135307B13B91865B840D9340C8F68F31