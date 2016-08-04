---
layout: post
title: 'IMSM134: [NOTES] foobar2000: Strip Prefix from Multivalue (Multi-value) Metadata Fields (Tags)'
date: 2018-03-07
author: InsModScum
tags:
- IMS
- 2018
- Audio
- foobar2000
- Music
- Notes
- Tools
---

# Problem #

%ALBUM ARTIST% is: "Various, The Police"

# Goal #

Show album under "Various" and "Police, The"

# Fix #

Not possible with ColumnUI *filters* at least since 2010!

Alternative: use *Facets*. The *Album List* workaround is useless.

<!-- more -->

~~~
https://hydrogenaud.io/index.php/topic,108980.0.html
https://hydrogenaud.io/index.php/topic,108980.0.html
https://hydrogenaud.io/index.php/topic,38866.0.html
https://hydrogenaud.io/index.php/topic,72191.html
https://hydrogenaud.io/index.php/topic,78196.0.html
https://hydrogenaud.io/index.php/topic,93764.0.html
https://hydrogenaud.io/index.php/topic,97632.0.html
~~~

~~~
https://hydrogenaud.io/index.php/topic,28647.msg683221.html#msg683221

Zarkon
Joined: Nov 07, 2004
Reply #5801 – 2010-01-25 16:22:16

Do you know where to configure the filter panels? (Display > CUI > Filter tab) Each filter is configured by a pair of Name and Field, and Field is where you enter what to filter by.

I'd just be repeating what it says in the help window that I mentioned: You can either access field information (e.g., for album artist) by entering "Album Artist" or "%album artist%". The former splits multi-valued fields into their own entries, but does not allow you to use titleformatting to further modify the output. The latter allows you to use titleformatting (e.g., the $rgb() function to color the output), but does not split multi-valued fields.
~~~


~~~
https://hydrogenaud.io/index.php/topic,93764.0.html

BenB
stripprefix / swapprefix on mutli-value fields does not work
Reply #3 – 2012-08-25 16:31:07

Yes, you've ran into a limitation of Album list in the Default UI. There are workarounds but they require additional components. You can use Facets with the DUI, or you can use Album list panel with Columns UI. Both allow you to use the following:

$meta_branch_stripprefix(tag)
$meta_branch_swapprefix(tag)

The next two take foobar's remapping into account:

$meta_branch_remap_stripprefix(tag)
$meta_branch_remap_swapprefix(tag)

Replace tag with the tag's name only (no %, < or >) such as artist, genre and so on.
~~~

---

IMSM134_97A3DAAFF71586737E1AE0642677741B432B567E
