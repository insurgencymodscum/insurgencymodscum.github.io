---
layout: post
title: '[RTFM][NOTED][MUSIC] Foobar2000: Title Formatting Syntax'
date: 2018-02-17
author: InsModScum
tags:
- IMS
- 2018
- Audio
- Foobar2000
- Music
- Noted
- RTFM
- Tools
---

~~~
http://wiki.hydrogenaud.io/index.php?title=Foobar2000:Title_Formatting_Reference
http://wiki.hydrogenaud.io/index.php?title=Foobar2000:Title_Formatting_Reference&printable=yes

Version:
This page was last modified on 10 March 2018, at 00:23.
~~~

<!-- more -->

~~~
Foobar2000:Title Formatting Reference

From Hydrogenaudio Knowledgebase
Foobar2000_Logo.png
This article contains information about built-in title formatting functions and field references, plus additional documentation about fields and functions which can only be used in specific components or which are provided by specific components.

Please see Title Formatting Introduction for a general overview of title format syntax and its basic rules. The article Titleformat Examples offers user-submitted examples of code for specific purposes; feel free to add your own if you think it can be of use to others.

For details of the query syntax, which uses some of these fields to find files for playlists, etc., see the Query Syntax article.

Contents

1 Syntax
2 Arithmetic functions
2.1 $add(a,b, ...)
2.2 $div(a,b)
2.3 $greater(a,b)
2.4 $max(a,b)
2.5 $min(a,b)
2.6 $mod(a,b)
2.7 $mul(a,b)
2.8 $muldiv(a,b,c)
2.9 $rand()
2.10 $sub(a,b)
3 Boolean functions
3.1 $and(expr, ...)
3.2 $or(expr, ...)
3.3 $not(expr)
3.4 $xor(expr,...)
4 Control flow functions
4.1 [...] (conditional section)
4.2 $if(cond,then)
4.3 $if(cond,then,else)
4.4 $if2(expr,else)
4.5 $if3(a1,a2,...,aN,else)
4.6 $ifequal(int1,int2,then,else)
4.7 $ifgreater(int1,int2,then,else)
4.8 $iflonger(str,n,then,else)
4.9 $select(n,a1,...,aN)
5 String functions
5.1 $abbr(str)
5.2 $abbr(str,len)
5.3 $ansi(str)
5.4 $ascii(str)
5.5 $caps(str)
5.6 $caps2(str)
5.7 $char(nbr)
5.8 $crc32(str)
5.9 $crlf()
5.10 $cut(str,len)
5.11 $directory(path)
5.12 $directory(path,n)
5.13 $directory_path(path)
5.14 $ext(path)
5.15 $filename(path)
5.16 $fix_eol(str)
5.17 $fix_eol(str,indicator)
5.18 $hex(int)
5.19 $hex(int,len)
5.20 $insert(str,insert,n)
5.21 $left(str,len)
5.22 $len(str)
5.23 $len2(str)
5.24 $longer(str1,str2)
5.25 $lower(str)
5.26 $longest(arg,...)
5.27 $num(nbr,len)
5.28 $pad(str,len)
5.29 $pad_right(str,len)
5.30 $pad(str,len,char)
5.31 $pad_right(str,len,char)
5.32 $padcut(str,len)
5.33 $padcut(str,len,char)
5.34 $padcut_right(str,len)
5.35 $padcut_right(str,len,char)
5.36 $progress(pos,range,len,char1,char2)
5.37 $progress2(pos,range,len,char1,char2)
5.38 $repeat(expr,count)
5.39 $replace(str,search,replace)
5.40 $right(str,len)
5.41 $roman(int)
5.42 $rot13()
5.43 $shortest(str,...strN)
5.44 $strchr(str,char)
5.45 $strrchr(str,char)
5.46 $strstr(str1,str2)
5.47 $strcmp(str1,str2)
5.48 $stricmp(str1,str2)
5.49 $stripprefix(str)
5.50 $stripprefix(str,prefix1,prefix2,...)
5.51 $substr(str,from,to)
5.52 $swapprefix(str)
5.53 $swapprefix(str,prefix1,prefix2,...)
5.54 $trim(str)
5.55 $tab()
5.56 $tab(count)
5.57 $upper(str)
6 Track info fields and functions
6.1 Metadata fields and functions
6.1.1 $meta(name)
6.1.2 $meta(name,n)
6.1.3 $meta_sep(name,sep)
6.1.4 $meta_sep(name,sep,lastsep)
6.1.5 $meta_test(...)
6.1.6 $meta_num(name)
6.2 Remapped metadata fields
6.2.1 %album artist%
6.2.2 %album%
6.2.3 %artist%
6.2.4 %discnumber%
6.2.5 %totaldiscs%
6.2.6 %track artist%
6.2.7 %title%
6.2.8 %tracknumber%
6.2.9 %track number%
6.3 Technical information fields
6.3.1 %bitrate%
6.3.2 %channels%
6.3.3 %codec%
6.3.4 %filesize%
6.3.5 %filesize_natural%
6.3.6 %length%
6.3.7 %length_ex%
6.3.8 %length_seconds%
6.3.9 %length_seconds_fp%
6.3.10 %length_samples%
6.3.11 %samplerate%
6.4 Technical information functions
6.4.1 $info(name)
6.4.2 $channels()
6.4.3 %replaygain_album_gain%
6.4.4 %replaygain_album_peak%
6.4.5 %replaygain_track_gain%
6.4.6 %replaygain_track_peak%
6.5 Special fields
6.5.1 %filename%
6.5.2 %filename_ext%
6.5.3 %directoryname%
6.5.4 %last_modified%
6.5.5 %path%
6.5.6 %_path_raw%
6.5.7 %subsong%
6.5.8 %_foobar2000_version%
7 Time and date functions
7.1 $year(time)
7.2 $month(time)
7.3 $day_of_month(time)
7.4 $date(time)
7.5 $time(time)
8 Variable operations
8.1 $get(name)
8.2 $put(name,value)
8.3 $puts(name,value)
9 Component-specific fields and functions
9.1 Now playing info
9.1.1 %playback_time%
9.1.2 %playback_time_seconds%
9.1.3 %playback_time_remaining%
9.1.4 %playback_time_remaining_seconds%
9.2 Playlist-only fields
9.2.1 %isplaying%
9.2.2 %ispaused%
9.2.3 %list_index%
9.2.4 %list_total%
9.2.5 %queue_index%
9.2.6 %queue_indexes%
9.2.7 %queue_total%
9.3 Playlist text color
9.3.1 Dimmed and highlighted text
9.3.2 Historical and Columns UI color functions
9.3.2.1 $blend(color1,color2,part,total)
9.3.2.2 $hsl()
9.3.2.3 $hsl(h,s,l)
9.3.2.4 $hsl(h1,s1,l1,h2,s2,l2)
9.3.2.5 $rgb()
9.3.2.6 $rgb(r,g,b)
9.3.2.7 $rgb(r1,g1,b1,r2,g2,b2)
9.3.2.8 $transition(string,color1,color2)
9.4 Album List
9.5 Playback Statistics
9.6 Playlist Organizer
9.7 Columns UI
10 Additional Reading
Syntax

A title formatting script consists of any combination of literal text, field references, function calls, comments, and line break characters. The script always outputs a text string (which can be empty).

A comment is a line starting with two slashes, e.g. // this is a comment.

A field reference is a field name enclosed in percent signs, for example %artist%.

A function call starts with a dollar sign, followed by the function name and the parameter list. A parameter list can either be empty—denoted as ()—or contain one or more parameters separated by commas, for example $abbr(%artist%). A parameter can be literal text, a field reference, or another function call. Note that there must be no whitespace between the dollar sign and the function name, or the function name and the opening parenthesis of the parameter list.

Any other text is literal text. In literal text, the character %, $, [, ], or ' (apostrophe/single quote) must be escaped by enclosing it in ' (apostrophe/single quote) characters. For example, '[' (a left bracket in single quotes) results in a literal [ (left bracket). As a special case, '' (two single quotes in a row) results in one single quote. In the playlist, < and > are also special; see #Dimmed and highlighted text.

When the script is evaluated, the output string is assembled by evaluating the function parameters, function calls, and field references. Comments and line break characters (CR and LF/newline) are ignored; to output a line break, use $crlf(). Each field reference becomes the field's value, as a string. Each function becomes a string or number, and/or a truth value (not output) which can be used by another function.

Note: the interface for entering custom columns and grouping schemes for the Default UI playlist does not support line breaks; scripts must be written all on one line, without comments.

Arithmetic functions

The functions in this section can be used to perform arithmetic on integer numbers. A string will be automatically converted to a number and vice versa. The conversion to a number uses the longest prefix of the string that can be interpreted as number. Leading whitespace is ignored. Decimal points are not supported. Examples:

c3po → 0
4.8 → 4
-12 → -12
- 12 → 0
$add(a,b, ...)

Adds a and b.

Can be used with an arbitrary number of arguments. $add(a,b,...) is the same as $add($add(a,b),...).

$div(a,b)

Divides a by b and rounds down to an integer. If b evaluates to zero, it returns a.

Can be used with an arbitrary number of arguments. $div(a,b,...) is the same as $div($div(a,b),...).

$greater(a,b)

Returns true, if a is greater than b, otherwise false.

$max(a,b)

Returns the maximum of a and b.

Can be used with an arbitrary number of arguments. $max(a,b,...) is the same as $max($max(a,b),...).

$min(a,b)

Returns the minimum of a and b.

Can be used with an arbitrary number of arguments. $min(a,b,...) is the same as $min($min(a,b),...).

$mod(a,b)

Computes the remainder of dividing a through b. The result has the same sign as a. If b evaluates to zero, the result is a.

Can be used with an arbitrary number of arguments. $mod(a,b,...) is the same as $mod($mod(a,b),...).

$mul(a,b)

Multiplies a and b.

Can be used with an arbitrary number of arguments. $mul(a,b,...) is the same as $mul($mul(a,b),...).

$muldiv(a,b,c)

Multiplies a and b, then divides by c. The result is rounded to the nearest integer.

$rand()

Generates a random number in the range from 0 to 232-1. Available only in sort-related contexts, such as the Edit → Sort → Sort by ... menu command.

$sub(a,b)

Subtracts b from a.

Can be used with an arbitrary number of arguments. $sub(a,b,...) is the same as $sub($sub(a,b),...).

Boolean functions

The functions in this section can be used to work with truth values (true and false), which have no explicit representation in titleformat scripts. They do not return a string or number value. You can use them for more complex conditions with $if and related functions.

Foobar does not have a concept of TRUE and FALSE in a programming language sense where 0 or empty string are considered FALSE and other values TRUE. Therefore there is no difference between numeric 0 and string representation '0' which both are considered as values, and being attached a boolean value FALSE. Apostrophes are only required to escape certain syntax characters. Values are treated as numbers during arithmetic operations like $add().

$and(expr, ...)

Logical And of an arbitrary number of arguments. Returns true, if and only if all expr arguments evaluate to true.

$or(expr, ...)

Logical Or of an arbitrary number of arguments. Returns true, if at least one expression evaluates to true.

$not(expr)

Logical Not. Returns the logical opposite of EXPR: false, if expr is true and true if expr is false.

$xor(expr,...)

Logical Exclusive-or of an arbitrary number of arguments. Returns true, if an odd number of arguments evaluate to true.

Special case: $xor(expr1,expr2) returns true, if EXPR1 or EXPR2 is true. If both expressions are true, returns false.

Control flow functions

The functions in this section can be used to conditionally execute statements.

[...] (conditional section)

Evaluates the expression between [ and ]. If it has the truth value true, its string value and the truth value true are returned. Otherwise an empty string and false are returned.

Example: [%artist%] returns the value of the artist tag, if it exists. Otherwise it returns nothing, when artist would return "?".

$if(cond,then)

If cond evaluates to true, the then part is evaluated and its value returned. Otherwise, false is returned.

Plain strings are FALSE. Field lookups and functions can introduce a boolean value of TRUE. Examples:

False: $if(0,True,False) False: $if('0',True,False) True or False: [$add(%rating%,1)]

The last one would display the value of %rating% plus one, if and only if %rating% is set for the track.

$if(cond,then,else)

If cond evaluates to true, the then part is evaluated and its value returned. Otherwise, the else part is evaluated and its value returned.

$if2(expr,else)

Like $if(expr,expr,else) except that expr is only evaluated once. In other words, if expression expr is true, expr is returned, otherwise the else part is evaluated and expr is returned as true.

$if3(a1,a2,...,aN,else)

Evaluates arguments a1 ... aN, until one is found that evaluates to true. If that happens, its value is returned. Otherwise the else part is evaluated and its value returned.

$ifequal(int1,int2,then,else)

Compares the integer numbers int1 and int2, if int1 is equal to int2, the then part is evaluated and its value returned. Otherwise the else part is evaluated and its value returned.

$ifgreater(int1,int2,then,else)

Compares the integer numbers int1 and int2, if int1 is greater than int2, the then part is evaluated and its value returned. Otherwise the else part is evaluated and its value returned.

$iflonger(str,n,then,else)

Compares the length of the string str to the number n, if str is longer than n characters, the then part is evaluated and its value returned. Otherwise the else part is evaluated and its value returned.

$select(n,a1,...,aN)

If the value of n is between 1 and N, aN is evaluated and its value returned. Otherwise false is returned.

String functions

The functions in this section can be used to manipulate character strings.

$abbr(str)

Returns abbreviation of string str. Words which begin with an alphanumeric character are shortened to the first character. Spaces and parentheses are stripped. Example:

$abbr('This is a Long Title (12-inch version) [needs tags]') → TiaLT1v[needst
$abbr(str,len)

Returns abbreviation of str, if str is longer than len characters, otherwise returns str.

$ansi(str)

Converts string str to system codepage and back. Any characters that are not present in the system codepage will be removed / replaced. Useful for mass-renaming files to ensure compatibility with non-unicode-capable software.

$ascii(str)

Converts string str to ASCII. Any characters that are not present in ASCII will be removed / replaced.

$caps(str)

Converts first letter in every word of string str to uppercase, and all other letters to lowercase.

$caps2(str)

Converts first letter in every word of string str to uppercase, and leaves all other letters as they are.

$char(nbr)

Returns Unicode character of nbr. You can search for characters and find the matching decimal number on this site.

$crc32(str)

Computes the CRC32 of the string str as a number. Intended for use in coloring scripts.

Example: $rgb($mod($crc32(%album%),256),128,128)

$crlf()

Inserts end-of-line marker (carriage return, line feed). Can be used to generate multiple lines in the output, for example for the tooltip of the system notification area ("systray") icon.

$cut(str,len)

Returns first len characters from the left of the string str. This function is the same as $left(a,len). Negative numbers produce the entire string. Examples:

$cut('abc123',3) → abc
$cut('abc123',0) → (nothing)
$cut('abc123',-1) → abc123
$directory(path)

Extracts directory name from the file path.

$directory(path,n)

Extracts directory name from the file path; goes up by n levels.

$directory_path(path)

Extracts directory path from the file path.

$ext(path)

Extracts file extension from string path; a file name or full path.

$filename(path)

Extracts file name from full path.

$fix_eol(str)

If str contains an end-of-line marker (CR-LF), the end-of-line marker and all text to the right of it is replaced by " (...)". Otherwise str is returned unaltered.

$fix_eol(str,indicator)

If str contains an end-of-line marker (CR-LF), the end-of-line marker and all text to the right of it is replaced by indicator. Otherwise str is returned unaltered.

$hex(int)

Formats the integer number int in hexadecimal notation.

$hex(int,len)

Formats the integer number int in hexadecimal notation with len digits. Pads with zeros from the left if necessary.

$insert(str,insert,n)

Inserts insert into str after n characters.

$left(str,len)

Returns first len characters from the left of the string str. This function is the same as $cut(str,len). Negative numbers produce the entire string. Examples:

$left('abc123',3) → abc
$left('abc123',0) → (nothing)
$left('abc123',-1) → abc123
$len(str)

Returns length of string str in characters.

$len2(str)

Returns length of string str in characters, respecting double-width character rules (double-width characters will be counted as two).

$longer(str1,str2)

Returns true, if string str1 is longer than string str2, false otherwise.

$lower(str)

Converts string str to lowercase.

$longest(arg,...)

Returns the longest of its arguments. Can be used with an arbitrary number of strings.

$num(nbr,len)

Formats the integer number nbr in decimal notation with len characters. Pads with zeros from the left if necessary. len includes the dash when the number is negative. If nbr is not numeric, it is treated as zero. Examples:

$num(123,5) → 00123
$num(-123,5) → -0123
$num(4.8,5) → 00004
$num(A1,5) → 00000
$pad(str,len)

Creates a left-aligned version of the string str. If x is shorter than len characters, the function adds spaces to the right of str to make the result len characters long. Otherwise the function returns str unchanged.

$pad_right(str,len)

Creates a right-aligned version of the string str. If str is shorter than len characters, the function adds spaces to the left of str to make the result len characters long. Otherwise the function returns str unchanged.

$pad(str,len,char)

Creates a left-aligned version of the string str. If str is shorter than len characters, the function adds char to the right of str to make the result len characters long. Otherwise the function returns str unchanged.

$pad_right(str,len,char)

Creates a right-aligned version of the string str. If str is shorter than len characters, the function adds char to the left of str to make the result len characters long. Otherwise the function returns str unchanged.

$padcut(str,len)

Returns first len characters from the left of str, if str is longer than len characters. Otherwise adds spaces to the right of str to make the result len characters long.

$padcut(str,len,char)

Returns first len characters from the left of str, if str is longer than len characters. Otherwise adds char to the right of str to make the result len characters long.

$padcut_right(str,len)

Returns first len characters from the left of str, if str is longer than len characters. Otherwise adds spaces to the left of str to make the result len characters long.

$padcut_right(str,len,char)

Returns first len characters from the left of str, if str is longer than len characters. Otherwise adds char to the left of str to make the result len characters long.

$progress(pos,range,len,char1,char2)

Creates a progress bar: pos contains position, range contains range, len progress bar length in characters, char1 and char2 are characters to build progress bar with.

Example:$progress(%_time_elapsed_seconds%, %_time_total_seconds%, 20,'#','=') produces "====#===============", the # character is moving with playback position.

$progress2(pos,range,len,char1,char2)

Creates a progress bar: pos contains position, range contains range, len progress bar length in characters, char1 and char2 are characters to build progress bar with. Produces different appearance than $progress.

$repeat(expr,count)

Returns count copies of expr. Note that expr is evaluated once before its value is used, so $repeat cannot be used for loops.

$replace(str,search,replace)

Replaces all occurrences of string search in string str with string replace.

Can also be used with an arbitrary number of arguments. Note that $replace(str,search1,replace1,search2,replace2) is generally not the same as $replace($replace(str,search1,replace1),search2,replace2).

Example: $replace(ab,a,b,b,c) → "bc", $replace($replace(ab,a,b),b,c) → "cc"

$right(str,len)

Returns the first len characters from the right of string str.

$roman(int)

Formats the integer number int in roman notation.

$rot13()

Performs ROT13 transformation to given string.

Example: $rot13('foobar2000') → "sbbone2000".

$shortest(str,...strN)

Returns the first shortest element of its arguments. Can be used with an arbitrary number of strings.

$strchr(str,char)

Returns position of first occurrence of character char in string str.

Example: $strchr(abca,a) → 1

$strrchr(str,char)

Returns positions of last occurrence of character char in string str.

Example: $strrchr(abca,a) → 4

$strstr(str1,str2)

Returns position of first occurrence of string str2 in string str1. Function is case-sensitive.

$strcmp(str1,str2)

Performs a case-sensitive comparison of the strings str1 and str2.

$stricmp(str1,str2)

Performs a case-insensitive comparison of the strings str1 and str2.

$stripprefix(str)

Removes A and The prefixes from string str.

$stripprefix(str,prefix1,prefix2,...)

Removes the specified prefixes from string str.

$substr(str,from,to)

Returns substring of string str, starting from FROM-th character and ending at TO-th character.

$swapprefix(str)

Moves A and The prefixes to the end of string str.

$swapprefix(str,prefix1,prefix2,...)

Moves the specified prefixes to the end of string str.

$trim(str)

Removes leading and trailing spaces from string str.

$tab()

Inserts one tabulator character.

$tab(count)

Inserts count tabulator characters.

$upper(str)

Converts string str to uppercase.

Track info fields and functions

The functions and fields in this section can be used to access information about tracks.

Metadata fields and functions

Generally, metadata from the files (whether in tags or a cue sheet) is mapped directly to a field which can be referenced case-insensitively. For example, the first tag named URL can be referenced as %url%, and the first standard comment tag can be referenced as %comment%.

The following functions are also available for accessing metadata:

$meta(name)

Returns value of tag called name. If multiple values of that tag exist, they are concatenated with ", " as separator.

Example: $meta(artist) → "He, She, It"

$meta(name,n)

Returns value of n-th (0,1,2 and so on) tag called name.

Example: $meta(artist,1) → "She"

$meta_sep(name,sep)

Returns value of tag called name. If multiple values of that tag exist, they are concatenated with sep as separator.

Example: $meta_sep(artist,' + ') → "He + She + It"

$meta_sep(name,sep,lastsep)

Returns value of tag called name. If multiple values of that tag exist, they are concatenated with sep as separator between all but the last two values which are concatenated with lastsep.

Example: $meta_sep(artist,', ',', and ') → "He, She, and It"

$meta_test(...)

Returns 1, if all given tags exist, undefined otherwise.

Example: $meta_test(artist,title) → true

$meta_num(name)

Returns the number of values for the tag called name.

Example: $meta_num(artist) → 3

Remapped metadata fields

The following fields have special remapped values to make writing title format scripts more convenient:

%album artist%

Name of the artist of the album specified track belongs to. Checks following metadata fields, in this order: "album artist", "artist", "composer", "performer". The difference between this and %artist% is that %album artist% is intended for use where consistent value across entire album is needed even when per-track artists values vary.

%album%

Name of the album specified track belongs to. Checks following metadata fields, in this order: "album", "venue".

%artist%

Name of the artist of the track. Checks following metadata fields, in this order: "artist", "album artist", "composer", "performer". For a SHOUTcast stream which contains metadata, it is the StreamTitle up to the first "-" character.

%discnumber%

Index of disc specified track belongs to, within the album. Available only when "discnumber"/"disc" field is present in track’s metadata.

%totaldiscs%

Index of total discs specified tracks belong to, within the album. Available only when "discnumber"/"disc" field is present in track’s metadata.

%track artist%

Name of the artist of the track; present only if %album artist% is different than %artist% for specific track. Intended for use together with %album artist%, to indicate track-specific artist info, e.g. "%album artist% - %title%[ '//' %track artist%]". In this case, the last part will be displayed only when track-specific artist info is present.

%title%

Title of the track. If "title" metadata field is missing, file name is used instead. For a SHOUTcast stream which contains metadata, it is the StreamTitle after the first "-" character.

%tracknumber%

Two-digit index of specified track within the album. Available only when "tracknumber" field is present in track’s metadata. An extra '0' is placed in front of single digit track numbers (5 becomes 05).

%track number%

Similar to %tracknumber%, however single digit track numbers are not reformatted to have an extra 0.

Technical information fields

%bitrate%

Bitrate of the track in kilobits per second. VBR files will show a dynamic display for currently played track (outside of the playlist).

%channels%

Number of channels in the track, as text; either "mono", "stereo" for 1 or 2 channels, respectively, otherwise a number followed by "ch", e.g. "6ch".

%codec%

Name of codec used to encode the track, e.g. PCM, FLAC, MP3, or AAC. If exact codec name is not available, file extension is used. The Default UI's standard Codec column displays the same info, but sometimes adds details, e.g. "MP3 / VBR V2" or "AAC / LC".

%filesize%

The exact file size in bytes. Old version: %_filesize%

%filesize_natural%

The approximate file size, automatically formatted in appropriate units such as megabytes or kilobytes, e.g. "8.49 MB"

%length%

The length of the track formatted as hours, minutes, and seconds, rounded to the nearest second. Old version: %_time_total%

%length_ex%

The length of the track formatted as hours, minutes, seconds, and milliseconds, rounded to the nearest millisecond.

%length_seconds%

The length of the track in seconds, rounded to the nearest second. Old version: %_time_total_seconds%

%length_seconds_fp%

The length of the track in seconds as a floating point number.

%length_samples%

The length of the track in samples.

%samplerate%

Sample rate of the track, in Hz.

Technical information functions

$info(name)

Returns value of technical information field called name.

For convenience, the %__name% alias is also available.

Example: $info(channels) → 2

Here is an informative list of recognized fields. Some of these depend on the media file type being queried.

field name  Description
General
codec Codec (e.g. MP3)
codec_profile Codec Profile (e.g. CBR)
samplerate  Sample Rate, in hertz (e.g. 44100)
bitrate Bitrate, in kilobits per second (e.g. 320)
tool  Tool used to produce the file, possibly guessed (e.g. LAME3.97)
encoding  Encoding lossiness (e.g. lossy)
channels  Channels count (e.g. 2 [for stereo])
channel_mode  Channel Mode, description of channels (e.g. 3 front, 2 rear surround channels + LFE)
__bitspersample Bits Per Sample (e.g. 16)
tagtype Tag Type, comma-separated list of tag formats (e.g. id3v2|apev2)
cue_embedded  Embedded Cuesheet presence (e.g. no [may be empty!])
md5 Audio MD5 hash, if container defines it (e.g. 1E24A910D91EF09A8CF403C9B6963961)
Other
ENC_DELAY LAME proprietary MP3 enc_delay value for gapless playback (e.g. 576)
ENC_PADDING LAME proprietary MP3 enc_padding value for gapless playback (e.g. 1536)
MP3_ACCURATE_LENGTH MP3 duration (%length% etc.) takes into account LAME or iTunes gapless playback info (e.g. yes)*
MP3_STEREO_MODE Stereo mode used in MP3 file (e.g. mono, stereo, joint stereo, etc.)
VERSION Version of tool (e.g. 3.99)
FLAGS Flags of tool (e.g. 22)

* MP3_ACCURATE_LENGTH won't exist if gapless playback info isn't present or the file is not an MP3. The info can be in a LAME tag in the VBR header, or in an iTunSMPB ID3v2 comment tag. Gapless playback info is taken into account in .m4a files, but there's no special field to say so.
$channels()

The number of channels in text format.

Example: $channels() → "stereo"

%replaygain_album_gain%

The ReplayGain album gain value.

%replaygain_album_peak%

The ReplayGain album peak value.

%replaygain_track_gain%

The ReplayGain track gain value.

%replaygain_track_peak%

The ReplayGain track peak value.

Special fields

%filename%

The filename without directory and extension.

%filename_ext%

The filename with extension, but without the directory.

%directoryname%

The name of the parent directory only, not the complete path.

%last_modified%

The date and time the file was last modified. Eg: 2005-12-22 00:04:10

%path%

The complete path, including the filename and extension.

%_path_raw%

The path as URL including the protocol scheme.

%subsong%

The subsong index. The subsong index is used to distuingish multiple tracks in a single file, for example for cue sheets, tracker modules and various container formats.

%_foobar2000_version%

A string representing the version of foobar2000.

Time and date functions

These functions are used to manipulate time/date strings, notably (but not limited to), those gathered by the Playback Statistics component.

$year(time)

Retrieves the year part (formatted as four digits) from a time/date string.

$month(time)

Retrieves the month part (formatted as two digits) from a time/date string.

$day_of_month(time)

Retrieves the day of month part (formatted as two digits) from a time/date string.

$date(time)

Retrieves the date part (formatted as YYYY-MM-DD) from a time/date string.

$time(time)

Retrieves the time part (formatted as HH:MM:SS or HH:MM) from a date/time string.

Variable operations

Variables can be used to store strings and numbers. They cannot store truth values. They are best used to store intermediate results that you need multiple times. Variable names are not case-sensitive.

For example:

code  output
$put(foo,bar)$char(10)
$get(foo)$char(10)
$get(Foo)$char(10)
$puts(foo,2000)$char(10)
$get(foo)$char(10)
bar
bar
bar

2000
$get(name)

Returns the value that was last stored in the variable name, if the variable was not defined (yet), it returns nothing. The truth value returned by $get indicates if the variable name was defined and is a non-empty string.

$put(name,value)

Stores value in the variable name and returns value unaltered.

$puts(name,value)

Stores value in the variable name and returns nothing.

Component-specific fields and functions

This section lists fields and functions which are specific to certain components. Unless otherwise stated, the fields and functions are only usable in the context of those components.

Now playing info

The following fields related to the currently playing item are only usable in certain locations outside of the playlist, e.g. in the status bar, the main window title and the copy command script.

%playback_time%

The elapsed time formatted as [HH:]MM:SS.

%playback_time_seconds%

The elapsed time in seconds. Old version: %_time_elapsed%

%playback_time_remaining%

The time remaining until the track ends, formatted as [HH:]MM:SS. Old version: %_time_remaining%

%playback_time_remaining_seconds%

The time remaining until the track ends, in seconds. Old version: %_time_remaining_seconds%

Playlist-only fields

The following fields are only usable in playlist display formatting (i.e., the column title formatting patterns).

%isplaying%

"1" if file is currently playing, empty string otherwise.

%ispaused%

"1" if playback is paused, empty string otherwise.

%list_index%

A zero-padded playlist index of specified item. The first item is at index 1.

%list_total%

The number of items in the playlist.

%queue_index%

Index of the specified item in the playback queue. If the item has been queued multiple times, %queue_index% evaluates to the first index.

%queue_indexes%

List of indexes of the specified item in the playback queue. Same as %queue_index% unless the item has been queued more than once.

%queue_total%

Total amount of tracks in playback queue. Available only for queued tracks, for technical reasons.

Playlist text color

Dimmed and highlighted text

In the Default UI playlist, text color can be adjusted by enclosing it in angle-brackets. The only options are to make the text dimmer (mixing the default color with the background color) or brighter (mixing the default color with the highlight color):

<text> – dim text
<<text>> – dimmer text
<<<text>>> – dimmest text
>text< – bright text
>>text<< – brighter text
>>>text<<< – brightest text
Historical and Columns UI color functions

Prior to version 1.0, the default UI playlist supported the following color functions, which are still available in the Columns UI playlist:

$blend(color1,color2,part,total)

Returns a color that is a blend between color1 and color2. If part is smaller than or equal to zero, color1 is returned. If part is greater than or equal to total, color2 is returned. Otherwise a blended color is returned that is part parts color1 and total-part parts color2. The blending is performed in the RGB color space.

$hsl()

Resets the text color to the default color.

$hsl(h,s,l)

Sets the color for text in the HSL color space. h, s and l are the hue, saturation, and lightness of the color for unselected text. The color for selected text is set to the inverse color. The ranges of h, s, and l are from 0 to 240; the function is designed to interpret those values in the same way as the standard Windows color dialog.

$hsl(h1,s1,l1,h2,s2,l2)

Sets the color for text in the HSL color space. h1, s1 and l1 are the hue, saturation, and lightness of the color for unselected text. h2, s2 and l2 are the hue, saturation, and lightness of the color for selected text.

$rgb()

Resets the text color to the default color.

$rgb(r,g,b)

Sets the color for text. r, g and b are the red, green and blue component of the color for unselected text. The color for selected text is set to the inverse color.

$rgb(r1,g1,b1,r2,g2,b2)

Sets the color for text. r1, g1 and b1 are the red, green and blue component of the color for unselected text. r2, g2 and b2 are the red, green and blue component of the color for selected text.

$transition(string,color1,color2)

Inserts color codes into string, so that the first character has color1, the last character has color2, and intermediate characters have blended colors. The blending is performed in the RGB color space. Note that color codes are additional characters that will also be counted by string manipulation functions. For example, if you need to truncate a string, you should do this before applying $transition.

Album List

Album List Title Formatting
Preferences: Album List
Playback Statistics

The foo_playcount component adds a number of fields for playback statistics and ratings. The fields can be used anywhere track info can be displayed. See the documentation for details:

Playback statistics homepage
Playback statistics titleformat reference
Playlist Organizer

This component adds a number of fields to control the display of a list of playlists. See the documentation for details:

Playlist Organizer: Nodes Title Formatting
Columns UI

This component replaces the Default UI framework, including the playlist. See the documentation for details:

Columns UI homepage
Global variables reference
Playlist colors reference
Playlist switcher reference
Additional Reading

Introduction to titleformat scripts
The file titleformat_help.html in your Foobar2000 directory, e.g. file:///C:/Program%20Files%20(x86)/foobar2000/titleformat_help.html
~~~

---

IMSM106_957C502109632CAEAC1745563AAA068F4FF0FAF0