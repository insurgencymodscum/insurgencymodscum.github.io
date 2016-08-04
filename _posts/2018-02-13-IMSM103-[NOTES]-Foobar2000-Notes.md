---
layout: post
title: 'IMSM103: [NOTES][MUSIC] Foobar2000 Notes'
date: 2018-02-13
author: InsModScum
tags:
- IMS
- 2018
- Audio
- Foobar2000
- Music
- Notes
- Tools
---

<!-- more -->

# General "Audiophile" Notes #

  ## FFT Size ##

    ~~~
    The selected FFT size directly affects the resolution of the resulting spectra.  The number of spectral lines is always 1/2 of the selected FFT size.  Thus a 1024 point FFT produces 512 output spectral lines.

    The frequency resolution of each spectral line is equal to the Sampling Rate divided by the FFT size.  For instance, if the FFT size is 1024 and the Sampling Rate is 8192, the resolution of each spectral line will be:

        8192 / 1024 = 8 Hz.

    Larger FFT sizes provide higher spectral resolution but take longer to compute.
    ~~~

# Foobar2000 Config Notes #

  ## Buffers ##

    `Playback, Output, buffer length`: MAXIMUM

    `Advanced, Playback, WASAPI`, `Hardware buffer in MS - push (event) mode`: MAXIMUM without glitching (e.g. 50ms)

  ## "MMCSS" ##

    ~~~
    ~~~

# Title Formatting Notes #

  ## Append string to metadata field ##

    Use case: append string to album title (%album%)

    `Format from other fields...`

    Pattern:

    `%album% [string to append]`

  ## Escape Character ##

    Use case: escaping `[`

    Use: `'` (single quote)

    ## Trim leading blank space in metadata ##

    Use: `$trim()` & *MassTagger*

  ## Split multivalue metadata (fields) tags e.g. album artist, genre ##

    Use "album artist" & "genre" instead of %album artist% or %genre%.

    NOTE: can not do any formatting!:

      works
      album artist

      broken
      $stripprefix(album artist,'The')


    NOTE: you can access array elements:
      $meta(album artist,0)
      $meta(album artist,1)

    Config, Advanced, Display, Properties, Multivalue Fields:

      ~~~
      ARTIST;ALBUM ARTIST;PRODUCER;COMPOSER;PERFORMER;GENRE
      ~~~

---

IMSM103_FCD7E024F8AA7274C7B70A9C8282E1274F984EEE