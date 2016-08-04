---
layout: post
title: '[CONFIG][NOTES][CODE] uBlock: Hidden Settings (Advanced Settings) (Firefox)'
date: 2017-09-10
author: InsModScum
tags:
- IMS
- 2017
- Code
- Config
- Notes
- uBlock
---

# Accessible through "Advanced Settings" in uBlock config #

Only changed `popupFontSize` from 14px.

~~~
https://github.com/gorhill/uBlock/wiki/Advanced-settings
~~~

~~~
ignoreRedirectFilters false
ignoreScriptInjectFilters false
popupFontSize 10px
suspendTabsUntilReady false
~~~

# Accessible through about:config #

Changed `autoUpdatePeriod` to `1 hour` & `suspendTabsUntilReady` to `TRUE`.

~~~
{"assetFetchTimeout":30,"autoUpdateAssetFetchPeriod":120,"autoUpdatePeriod":1,"ignoreRedirectFilters":false,"ignoreScriptInjectFilters":false,"manualUpdateAssetFetchPeriod":2000,"popupFontSize":"10px","suspendTabsUntilReady":true}
~~~

## RTFM ##

~~~
https://github.com/gorhill/uBlock/wiki/Advanced-settings

autoUpdatePeriod

Default: 7 hours.

The time to wait in hours between each update session[1]. uBO will always start an update session a few minutes after launch when auto-update is enabled. Once that first update session is completed, uBO will wait autoUpdatePeriod hours before starting a new update session.

[1] "Update session" means that uBO will lookup and update assets deemed out of date, if any.

popupFontSize

Default: 14px.

A valid CSS font size value to use for the popup panel. Use if you are unhappy with the default size.

suspendTabsUntilReady (experimental)

Default: false.

If set to true, uBO will hard block all network requests when the browser launches until all the filter lists and rules are loaded and ready, at which time uBO will force a reload of the tabs for which there were network requests blocked during the setup phase.

Disclaimer: even with this setting enabled (set to true), it's impossible for uBO to guarantee with 100% certainty that everything will be properly blocked when the browser is launched. This is a by-design browser issue -- do not open an issue on uBO issue tracker about this.
~~~

---

IMSM070_089C5FEE94398C6BD6F315ED89133B36EF5E83FC