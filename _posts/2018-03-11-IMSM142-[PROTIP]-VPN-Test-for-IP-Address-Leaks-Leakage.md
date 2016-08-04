---
layout: post
title: 'IMSM142: [PROTIP] VPN: Test for VPN IP Address Leaks (Leakage)'
date: 2018-03-11
author: InsModScum
tags:
- IMS
- 2018
- pfSense
- ProTip
- VPN
- WireShark
---

<!-- more -->

# Test VPN for Leaks via WireShark (Packet Sniffer, Windows) #

  ## Test 1 ##

    Reboot pfSense VM

    Start WireShark

    *Note: capturing real hardware adapter ("Local Area Connection"), will show RAW traffic (Windows host to pfSense, real IPs!)*

    Capture:

    Loop-back adapter ("Local Area Connection 2")

    Start BitTorrent

    Kill pfSense.

    Stop capture


    ## Analyzing WireShark capture: filter out all communication to and from VPN server's IP ##

    Sort by "destination"

      ~~~
      WIP
      (ip.src == 192.168.2.114 && ip.dst == [VPN_IP/24]) || (ip.src == [VPN_IP] && ip.dst == 192.168.2.114)

      Negating
      !((ip.src == 192.168.2.114 && ip.dst == [VPN_IP]) || (ip.src == [VPN_IP] && ip.dst == 192.168.2.114))

      VPN has multiple IPs, filtering them out with "/24"
      !((ip.src == 192.168.2.114 && ip.dst == [VPN_IP]) || (ip.src == [VPN_IP][VPN_IP] && ip.dst == 192.168.2.114))
      ~~~


    Should only  see "broadcast" ARP packets.

  ## Test 2 ##

    Disable pfSense OpenVPN client.

    On Windows host:

      ~~~
      tracert 1.1.1.1
      nslookup doubleclick.com
      nslookup doubleclick.com 1.1.1.1
      ~~~

    And check pfSense "firewall" logs.

  ## Test 3 ##

    ~~~
    https://www.ivpn.net/privacy-guides/how-to-perform-a-vpn-leak-test
    ~~~

    # capital "d"!!!
    windump -D

    WinDump -n -i 1 not host 1.1.1.1 2>&1 | wtee tcpdump.log

    ping -t 1.1.1.1 2>&1 | wtee ping.log

---

IMSM142_C5FCF385662CFFE9B100FEBAD5670A9F7BD38335
