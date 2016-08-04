---
layout: post
title: '[PROTIP] Email Address Obfuscation (Hiding Your Email Address from Spam Bots)'
date: 2015-10-05
author: Insurgency Mod Scum (InsModScum)
tags:
- IMS
- IMSPROTIP
- IMSINTERNAL
- 2015
---

`http://techblog.tilllate.com/2008/07/20/ten-methods-to-obfuscate-e-mail-addresses-compared/`

<br>

# CSS #

```
/* Email Address Obfuscation
https://www.jayway.com/2012/11/30/smart-email-obfuscation-using-css/ */

.changedirection {
    unicode-bidi: bidi-override; /* enable bidirectioinal text */
    direction: rtl;
    text-align:left;
    }
```

`&lt;p class=”changedirection”&gt;TLD.DOMAIN@USERNAME&lt;/p&gt;`

<br>

# JavaScript & ROT13 Encryption #

<br>

`http://rot13.de/`

```
<script type=”text/javascript”>
document.write(“<n uers=\”znvygb:fvyinasbbone10@gvyyyngr.pbz\” ery=\”absbyybj\”>”.replace(/[a-zA-Z]/g, function(c){return String.fromCharCode((c<=”Z”?90:122)>=(c=c.charCodeAt(0)+13)?c:c-26);}));
</script></a>
```

<br>

IMSIDC5C32E1D829AEE029C8198D3282E23EE1B218589