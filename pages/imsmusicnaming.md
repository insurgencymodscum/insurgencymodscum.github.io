---
layout: post
title: "Music Naming System"
date: 2018-01-01
author: InsModScum
tags:
- IMS
- Audio
- Music
- IMSSTICKY
permalink: /musicnaming
---

# Folder & Album name #

  ## Rev1 ##

    Artist - YYYY_Recorded - Album - YYYY_Released
    [BOOTLEG_PROMO_xCD;CODEC;
    Label,Cat_#;
    Format_CD_Vinyl_File_RM[remastered]_RE[reissued]
    XX_Country_Site;
    Site,User;
    Site_Original,User_Original]

  ## WIP ##

# File name #

  *Track - Artist - Title*

# ReplayGain #

  Scan each CD as a separate album.

# CUETools #

  ## Notes ##

  %releasedateandlabel% produces the following "country label catalognumber - date"

  Catalogue Number is %labelno% in CueTools.

  ## CueTools file name format ##

  ~~~
  %tracknumber% - %artist% - %title%
  ~~~

  ## CueTools folder path template ##

  ~~~
  RTFM:
  http://www.cuetools.net/wiki/CUETools_Templates

  D:\TMP\%artist% - [%year% - ]%album%[ - %label%][ - %labelno%][ - %country%][' ('%unique%')']\$ifgreater($max(%discnumber%,%totaldiscs%),1,CD%discnumber%,)\%artist% - %album%.cu
  ~~~