---
layout: post
title: 'IMSM145: [NOTES] MikroTik RouterOS Config'
date: 2018-03-12
author: InsModScum
tags:
- IMS
- 2018
- MikroTik
- RouterOS
- RTFM
---

<!-- more -->

# Random #

"WinBox" is the GUI client for the router.

~~~
system reboot
~~~

# Stop calling home #

~~~
/ip dns static add address=127.0.0.1 name=upgrade.mikrotik.com
~~~

# RTFM #

~~~
use-encryption (yes | no | default | require; Default: default) Specifies whether to use data encryption or not.
yes - enable data encryption
no - disable data encryption
default - derive this value from the interface default profile; same as no if this is the interface default profile
require - explicitly requires encryption
This setting does not work on OVPN and SSTP tunnels.

**IMS: use:yes**
~~~

---

IMSM145_31F40BBF570CCDD0B4D6AC272396DCFCF2664809
