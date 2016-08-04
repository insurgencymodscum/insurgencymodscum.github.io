---
layout: post
title: "[PROTIP][NOTED] DD-WRT WPA2 Maximum Key Length"
date: '2015-06-15'
author: insurgencymodscum2
tags:
- Insurgency Mod Scum
- OT-Noted
- OT-PROTIP
blogger_id: tag:blogger.com,1999:blog-7256856399250838035.post-5628079461950720465
blogger_orig_url: http://insurgencymod.blogspot.com/2015/06/protip-noted-dd-wrt-wpa2-maximum-key.html
---

Regarding DD WRT v24-sp2 08.12.10 firmware:  
  
Maximum WPA2 AES key length is 63 characters, if you enter anymore you will ratfuck your router and will have to reset it.  
  
Source:  
[http://www.dd-wrt.com/phpBB2/viewtopic.php?p=650688](http://www.dd-wrt.com/phpBB2/viewtopic.php?p=650688)  
  

> > Checking size of WPA2 Shared Key
> 
> > Post new topic   Reply to topic    DD-WRT Forum Forum Index -> Broadcom SoC based Hardware
> 
> > View previous topic :: View next topic  
> 
> > Author  Message
> 
> > electrickery
> 
> > DD-WRT Novice
> 
> >   
> 
> >   
> 
> > Joined: 17 Jun 2006
> 
> > Posts: 1
> 
> >   
> 
> > PostPosted: Sun Nov 27, 2011 16:44    Post subject: Checking size of WPA2 Shared Key  Reply with quote
> 
> > Recently I found that there is no check for the maximum size of the WPA2 Shared Key (Wireless > Wireless Security). This is 63 characters. You can insert more characters and Save/Apply Changes, with the result that no connection is possible, even if both sides have the same oversized Shared Key. No warning is given.
> 
> >   
> 
> >   
> 
> > Firmware: DD-WRT v24-sp2 (07/21/09)

---

IMSB1331_37808A94FBE0ABEAA1E81B3B496A60EC809DBF5F