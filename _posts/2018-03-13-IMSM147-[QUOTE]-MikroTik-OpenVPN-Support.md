---
layout: post
title: 'IMSM147: [QUOTE] MikroTik RouterOS OpenVPN Support'
date: 2018-03-13
author: InsModScum
tags:
- IMS
- 2018
- MikroTik
- Quote
- RouterOS
---

**TLDR: MikroTik RouterOS is a piece of shit.**

<!-- more -->

~~~
gsloop
Member Candidate
Posts: 213
Joined: Wed Jan 04, 2012 11:34 pm

#3
Fri Aug 10, 2012 9:18 pm

Perhaps that will work, but I just copied the text output of the key and crt and then imported those. They imported fine, with no need for a password and all was well.

However, IMO, consider OpenVPN completely DEAD on RouterOS. They can't seem to care enough to do even the most basic things - like produce their own documentation. Instead they "crowd-source" it and pass the buck off to us. 

The result is OpenVPN that doesn't have any reasonable and current documentation - and it costs us again, because we spend HOURS trying stuff till something works.

OpenVPN doesn't support LZO compression or UDP either. Both really key features!

So, IMO, it's very misleading to claim that RoS supports OpenVPN. They really don't, and their actions show it. 

If you're lucky, you might be able to figure out how to jam the thing together and get it to work, at least a little, in some cases, with very limited interop, [<sarcasm> on Thursdays, in November, if your name is Fritzy </sarcasm>] - but most of the time you're going to be going crazy trying to get it to work - and MikroTik isn't going to do much to help. 

[If they can't even be bothered to do docs, how do you think they're going to respond when you have a problem?]

So, for anyone who's trying to generate certs for OpenVPN: Think long and hard. Can you do it without OpenVPN, say IPSec or SSTP [which seems to have problems too, at the time this was written] or L2TP - you'll probably be happier - and you'll almost certainly spend less time doing it.

[I abandoned OpenVPN for my Roadwarrier VPN clients. Really lousy AND erratic throughput performance in my test-bench setup. See: http://forum.mikrotik.com/viewtopic.php?f=2&t=64628

Given everything else, I eventually gave up and tried L2TP, which works, mostly Ok. Perhaps my test bench was screwed, I don't know. Given, again, the horrible OpenVPN docs, it's really hard to know. But that same test-bed setup produced vastly better/solid L2TP benchmarks, along with IPSec and PPTP.]

If you just *MUST* use OpenVPN and are still trying to get your certs imported, just realize that my solution was to dump the cert/key out to text and create a new crt and key from that text and import that into RB. [And by dumping the key out to text, you lose any protection on that key-file - which is bad. So, if the PEM idea works, then that would be better.]

That worked. Perhaps using PEM will work too, I just don't know. [And RB certainly doesn't give you a lot of feedback on what's wrong - which would be mighty helpful in the case where no good docs exist.]

-Greg
~~~

---

IMSM147_42725699CAAEE1813FEC161BD7397A945B649827
