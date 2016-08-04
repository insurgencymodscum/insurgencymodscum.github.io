---
layout: post
title: 'IMSM141: [RTFM][TOOLS] hrPing'
date: 2018-03-10
author: InsModScum
tags:
- IMS
- 2018
- Noted
- RTFM
- Tools
---

<!-- more -->

~~~
-t  Ping the specified host until stopped.
Loop forever. You can abort hrPING any time with CTRL-C or CTRL-Break. Unlike Windows PING, hrPING will still print the statistics gathered so far when you abort. CTRL-C waits for some time for replies still to come in before it aborts. If you are fed up with waiting, press Ctrl-C 5 times. Ctrl-Break just prints the statistics, but doesn't abort. That's nice in quiet mode or with many replies.


-s time Interval in milliseconds between packets.
This is the number of milliseconds between sending of two PING packets. hrPING will try to stick to this number quiet accurately. If sending took a little longer for one packet it will send out the next packet a little earlier. Default is 500 milliseconds. (You can use decimals for a very fine grained interval: -s5.4 will send a packet every 5400 microseconds on average.)


-F file Log output into file as well, even if -q is set
All output is logged to file file as well as to the screen. If -q options are set, all output goes to log file, even if it's not printed to the screen.


-T  Print timestamp in front of each line
Preceed each line of output with a timestamp of the form
"2012-05-22 18:19:53.508: "
~~~

---

IMSM141_1E241563C020AE6871227D8EBC7DEA73097CBEF5
