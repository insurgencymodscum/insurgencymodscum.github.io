---
layout: post
title: 'IMSM137: [NOTES] DD-WRT Config Notes'
date: 2018-03-09
author: InsModScum
tags:
- IMS
- 2018
- Config
- DD-WRT
- Notes
---

<!-- more -->

# Latest Version #

  ~~~
  DD-WRT suffers the same disease as Google: putting *beta* on everything.

  Latest DD-WRT:
  http://download1.dd-wrt.com/dd-wrtv2/downloads/betas/

  Example:
  For Broadcom SoCs:
  http://download1.dd-wrt.com/dd-wrtv2/downloads/betas/2018/01-07-2018-r34411/broadcom/
  ~~~

# SSH #

  ~~~
  login: root
  pass: your pass
  ~~~

# Show all config vars

  ~~~
  nvram show
  ~~~

# Config Notes (Fixing DD-WRT Stupidity (Outdated & Incomplete Documentation) #

  NTP

    pool.ntp.org

  Shortcut Forwarding Engine

    Shortcut is an in-Linux-kernel IP packet forwarding engine.  It's designed
    to offer very high speed IP packet forwarding based on IP connection tracking.
    It's dramatically faster than the standard netfilter-based NAT forwarding path
    but is designed to synchronise state back to netfilter/conntrack so that it
    doesn't need to deal with all of the complexities of special cases.

  STP

    The Spanning Tree Protocol (STP) is a method for dynamically calculating the "best" spanning-tree of a computer network with or without loops.

    IMS: DISABLE

  Forced DNS Redirection

    https://www.dd-wrt.com/phpBB2/viewtopic.php?t=301220
    "By checking this box, I believe that all DNS traffic is overridden, no matter what you entered into your client settings on your PC/Device, and that your router will redirect all traffic to the DNS servers you have configured under Basic -> Basic Setup."

    No DNS Rebind

    DNS rebinding is an exploit in which the attacker uses JavaScript in a malicious Web page to gain control of the victim's router. The attack works on widely-used routers such as D-Link and Linksys and could, in fact, target any device that uses a default password and Web-based administration.

    IMS: ENABLE

  DNSMasq

    http://www.thekelleys.org.uk/dnsmasq/docs/dnsmasq-man.html

    --all-servers
    By default, when dnsmasq has more than one upstream server available, it will send queries to just one server. Setting this flag forces dnsmasq to send all queries to all available servers. The reply from the server which answers first will be returned to the original requester.

    -c, --cache-size=<cachesize>
    Set the size of dnsmasq's cache. The default is 150 names. Setting the cache size to zero disables caching.

    IMS: use
    cache-size=1000

  IP over DNS Tunneling

    IMS: TLDR: access internet (HTTP) over DNS (name servers).

    DISABLED

  PPPoE Relay

    PPPoE stands for Point-to-Point Protocol over Ethernet, a network protocol for encapsulating Point-to-Point Protocol (PPP) frames inside Ethernet frames. It is used mainly with DSL services where individual users connect to a DSL modem over Ethernet

  Impede WAN DoS/Bruteforce

      ~~~
      Limit SSH Access
      Limit Telnet Access
      Limit PPTP Server Access
      Limit FTP Server Access
      ~~~

    Zero fucking documentation. Probably adds iptables rules.

    ENABLE

  TCP Congestion Control

    Vegas:
    One of the smoothest TCP algorithms(next to cubic), it increases the timeout delay for packets, which allows more to be received, but at a higher rate. It also has set timeouts, which helps with speed because it's constantly being refreshed.

    Westwood/Westwood+:
    A newer version of Reno, and another commonly used one. It controls parameters better, helping out streaming and overall quality of browsing the internet. One of the most 'fair' algorithms out there, and is one of the most efficient algorithms to date.

    Binary Increase Congestion control (BIC):
    BIC is optimized for high speed networks with high latency: so-called "long fat networks". It has a unique congestion window (cwnd) algorithm. This algorithm tries to find the maximum where to keep the window at for a long period of time, by using a binary search algorithm.

    IMS:

    https://www.semanticscholar.org/paper/A-comparison-of-TCP-unfriendly-region-congestion-Yousefi'zadeh-Li/f12833d9cd38e7205eb0f20a8969137e936ef948/figure/2

    Use:
    Vegas

  Use DNSMasq for DHCP

    CHECK

    RTFM:

      https://wiki.dd-wrt.com/wiki/index.php/DNSMasq_as_DHCP_server

      DD-WRT supports using DNSMasq as a local DNS server and can also support using replacement of the standard DD-WRT DHCP service "udhcpd". uDHCPd uses more RAM than DNSMasq.
      Using DNSMasq as the sole DHCP server can save you 300kB. With this savings you can create one more PPTP tunnels with the inserted PPTPD server.

  Use DNSMasq for DNS

    CHECK

    RTFM:

      https://forum.dd-wrt.com/phpBB2/viewtopic.php?t=304630

      Unchecking the Use DNSMasq for DNS option, allows all of the static DNS settings to filter through to the client NIC config., rather than just the gateway address.

  DHCP-Authoritative

    CHECK

    RTFM:

      ~~~
      https://forum.dd-wrt.com/phpBB2/viewtopic.php?t=7335

      In short the authoritative clause means that if your DHCP server is the only one on your network (as is nearly always the case), it KNOWS what the valid IP numbers on its network are, and if a client tries to register with an invalid IP number (laptop still has lease from another network) , it immediately tells the client to f*** o** , um, reset itself and try afresh, instead of doing nothing, and leaving it to the client to timeout.

      So DHCP-Authoritative should nearly always be set.
      ~~~

Forced DNS Redirection

  CHECK

  DD-WRT overrides the DNS servers used specified in Windows, etc. (?)

  https://forum.dd-wrt.com/phpBB2/viewtopic.php?t=301220

# JFFS2 #

  **DD-WRT will not give any warnings if there's not enough space for JFFS2 when using `standard` version of firmware, use `mini`!**

  ~~~
  To enable JFFS you will need a router with at least 4MB flash, a build that supports JFFS such as the Mini build which is the smallest build to support JFFS thus leaving the most space for the JFFS partition, and your build must leave at least 324KB of flash free for the JFFS file system structure which will not be usable space. v24 pre-SP2 Standard builds no longer leave enough space for JFFS on 4MB devices so use the Mini build or one of Eko's specialty builds.
  ~~~

# Verify Adblocking #

  ~~~
  dnslookup doubleclick.com
  dnslookup doubleclick.com 192.168.2.1
  dnslookup doubleclick.com 192.168.1.1
  dnslookup doubleclick.com 1.1.1.1
  ~~~

---

IMSM137_931863AB490ABD15103E3AFF604914155F4ADB6F