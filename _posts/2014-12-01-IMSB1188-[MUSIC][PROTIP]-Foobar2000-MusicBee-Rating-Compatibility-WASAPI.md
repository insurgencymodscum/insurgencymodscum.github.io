---
layout: post
title: '[MUSIC][PROTIP] Foobar2000 and MusicBee Rating Compatibility, foobar2000 Config, WASAPI Output'
date: '2014-12-01'
author: insurgencymodscum2
tags:
- Insurgency Mod Scum
- OT-Noted
- OT-Tools
- OT-PROTIP
- OT-Music
thumbnail: http://3.bp.blogspot.com/-h2y7u5Ri124/VHu7tdesJjI/AAAAAAAAAGs/kKzTNYTpaXA/s72-c/foobarconfig2.png
blogger_id: tag:blogger.com,1999:blog-7256856399250838035.post-4699889981913590242
blogger_orig_url: http://insurgencymod.blogspot.com/2014/12/pro-tip-foobar2000-and-musicbee-rating.html
---

[![](http://3.bp.blogspot.com/-h2y7u5Ri124/VHu7tdesJjI/AAAAAAAAAGs/kKzTNYTpaXA/s1600/foobarconfig2.png)]

(http://3.bp.blogspot.com/-h2y7u5Ri124/VHu7tdesJjI/AAAAAAAAAGs/kKzTNYTpaXA/s1600/foobarconfig2.png)

foobar2000. Note left and right hidden panels.

[![](http://2.bp.blogspot.com/-aiYRhjv1Rto/VHu8Fv7QBcI/AAAAAAAAAG0/KO9A_1UFsOY/s1600/foobarconfig3.png)]

(http://2.bp.blogspot.com/-aiYRhjv1Rto/VHu8Fv7QBcI/AAAAAAAAAG0/KO9A_1UFsOY/s1600/foobarconfig3.png)

foobar2000. Volume control doesn't work, but everything else is ready to party.

UPDATED: 2014.11.27  

[![](http://2.bp.blogspot.com/-XgZi3pSh4ls/VHu7JUnl8FI/AAAAAAAAAGk/1Bh86zZOG-4/s1600/foobarconfig1.png)]

(http://2.bp.blogspot.com/-XgZi3pSh4ls/VHu7JUnl8FI/AAAAAAAAAGk/1Bh86zZOG-4/s1600/foobarconfig1.png)

foobar2000 ColumnsUI config. Not enough filters.

I was going to write something about KISS (Keep It Simple, Stupid) Principle, but oh well, what's the point?!  
  
Regarding ratings:  
  
MusicBee uses the following system:  
  

> 100 = 5 Stars  
> 80? = 4 Stars  
> 60? = 3 Stars  
> 40? = 2 Stars  
> 20? = 1 Stars

  
Also note the following ([http://wiki.hydrogenaud.io/index.php?title=Foobar2000:Components/Playback\_Statistics\_v3.x_

%28foo_playcount%29](http://wiki.hydrogenaud.io/index.php?title=Foobar2000:Components/Playback_Statistics_v3.x_

%28foo_playcount%29)):  
  

> Please note that foo\_playcount takes over %rating%, %play\_count%, and all other mappings corresponding to its native fields 

listed above, using these mappings to return the fields from its own database rather than from files themselves. If you want to 

display such fields from the tags of files rather than from the database, use $meta(rating) and so on in your title-formatting.

  

**foobar2000 Config**

  
Note: STAR = $char(9733)  
  
  

**WITHOUT "foo_playcount.dll". This is simpler. Each time you rate a song, the rating will be immediately written.**

  

> Columns

> $rgb(233,155,12,233,155,12)$if(%rating%,$repeat($char(9733),$div(%rating%,20)),)$rgb()

  

> Filters  
>   
> $rgb(233,155,12,233,155,12)$if(%rating%,$repeat($char(9733),$div(%rating%,20)),$rgb()UNRATED)

  

> Notification  
>   
> \[%artist%\] - \[%title%\]$crlf()%album% '('%date%')'$crlf()$if(%rating%,$repeat($char(9733),$div(%rating

%,20)),UNRATED)$crlf()%genre%

  

> Main Window  
>   
> '('%playback\_time%\[/%length%\]')' '('$if(%rating%,$repeat($char(9733),$div(%rating%,20)),UNRATED)')' %artist% - %title% 

'('%\_foobar2000_version%')'

  

**With "foo_playcount.dll". Current choice. Complicated, just the way we like it.**

  

> Main Window  
>   
> $if(%\_ispaused%,'('PAUSED')','('%playback\_time%\[/%length%\]')')  
> '('$if(%rating%,$repeat($char(9733),%rating%),UNRATED)')'  
> ?\[%artist% - %title%\]  
> '('%\_foobar2000\_version%')'

  

> Status Bar  
>   
> %artist% - %title%  
> '('%playback_time%\[/%length%\]')'  
> '('$if(%rating%,$repeat($char(9733),%rating%),UNRATED)')'  
> \['('%genre%')'\]  
> $crlf()  
> \['('%codec%')'\]  
> \['('$info(bitrate)kbps')'\]  
> \['('$info(bitspersample)bits')'\]  
> \['('$div(%samplerate%,1000)Hz')'\]  
> '('$if($not($or(%replaygain\_track\_gain%,%replaygain\_album\_gain%)),$trim(NO REPLAYGAIN),  
> $if($not(%replaygain\_track\_gain%),$trim(NO TRACK GAIN),  
> $if($not(%replaygain\_album\_gain%),$trim(NO ALBUM GAIN),$trim(REPLAYGAIN OK))))')'

  

> Notification Area  
>   
> \[%title%\]  
> $crlf()  
> \[%artist%\]  
> $crlf()  
> \[%album% '('%date%')'\]  
> $crlf()  
> $if(%rating%,$repeat($char(9733),%rating%),UNRATED)

  

**Filters**

  

> RatingStars0-5  
> $rgb(233,155,12,233,155,12)$if(%rating%,$repeat($char(9733),%rating%),$rgb()UNRATED)

  

> RatingStars0-100($meta)  
> $ifgreater($meta(rating),19,$rgb(233,155,12,233,155,12)$repeat($char(9733),$div($meta(rating),20)),$rgb()UNRATED)

  

> Rating#  
> $if(%rating%,%rating%,UNRATED)

  

> Rating#($meta)  
> $if($meta(rating),$meta(rating),UNRATED)

  

> ReplayGain  
> $if($not($or(%replaygain\_track\_gain%,%replaygain\_album\_gain%)),$trim(NO REPLAYGAIN),  
> $if($not(%replaygain\_track\_gain%),$trim(NO TRACK GAIN),  
> $if($not(%replaygain\_album\_gain%),$trim(NO ALBUM GAIN),$trim(OK))))

  

> Year + Album  
> $if($year(%date%),$if(%album%,'('$year(%date%)')' %album%,NO ALBUM),$if(%album%,%album%,NO ALBUM))

  

> Album + Year  
> $if($year(%date%),$if(%album%,%album% '('$year(%date%)')',NO ALBUM),$if(%album%,%album%,NO ALBUM))

  

> Album  
> $if(%album%,%album%,NO ALBUM)

  

> Year  
> $year(%date%)

  
Also  
  

> "Behavior"->"Sort incoming files by:"  
> $year(%date%) - %album artist% - %album% - %discnumber% - %tracknumber% - %title%

  

**Playlist Columns**

  

> Year  
> \[$year(%date%)\]

  

> CODEC  
> \[%codec%\]

  

> Bitrate  
> \[$info(bitrate)\]

  

> RG (ReplayGain)  
> $if(%\_\_replaygain\_track_gain%,T)  
> $if(%\_\_replaygain\_album_gain%,A)

  

> Rating0-5  
> $rgb(233,155,12,233,155,12)$if(%rating%,$repeat($char(9733),%rating%))$rgb()

  

> Rating#  
> \[%rating%\]

  

> Rating#($meta)  
> \[$meta(rating)\]

  

**Album List**

> Year  
> $year(%date%)|\[%album artist% - \]%album%|\[\[%discnumber%.\]%tracknumber%. \]\[%track artist% - \]%title%

  
Also:  
  
Regarding foobar2000 WASAPI output component: "WASAPI EVENT" is better than "WASAPI PUSH".  
  
Also see: [http://insurgencymod.blogspot.com/2014/08/noted-metadata-rating-compatablity.html]

(http://insurgencymod.blogspot.com/2014/08/noted-metadata-rating-compatablity.html)  
  
---

IMSB1188_40527F032E0E15B0E36AA62149EC9F1E9B93B8E0