---
layout: post
title: '[RTFM][NOTED][MUSIC][TOOLS] Foobar2000: Query Syntax'
date: 2018-02-17
author: InsModScum
tags:
- IMS
- 2018
- Foobar2000
- Music
- Noted
- RTFM
- Tools
---

~~~
http://wiki.hydrogenaud.io/index.php?title=Foobar2000:Query_syntax
https://wiki.hydrogenaud.io/index.php?title=Foobar2000:Query_syntax&printable=yes

Version:
This page was last modified on 15 May 2016, at 16:22.
~~~

<!-- more -->

~~~
Foobar2000:Query syntax

From Hydrogenaudio Knowledgebase
This page details the syntax that can be used to query for files within the Media Library in foobar2000.

For a list of fields and functions that can be used in query syntax, see the title-formatting reference.

Contents

1 Conventions in this document
1.1 Formatting
1.2 Placeholders
2 Simple search
3 Advanced search
3.1 Text expressions
3.2 Numeric expressions
3.3 Metadata expressions
3.4 Time expressions
3.5 Combined queries using logical operators
4 Sorting results
5 Guidelines
5.1 General
5.1.1 Case-sensitivity
5.1.2 Double quotation marks
5.1.3 Simplified access to metadata fields
5.1.4 Comparing two metadata fields
5.2 Title-formatting
6 Summary of operators
Conventions in this document

Formatting

Query syntax includes various keywords, also called operators, which invoke specific behaviours. These must be typed in caps, for example DURING.

To aid readability, in the following descriptions and examples, example queries (or fragments thereof) that the user could type into foobar2000 are written in italics. In addition, operators are written in bold. Such formatting is for readability only and need not/cannot be typed in foobar2000 itself.

Placeholders

Query examples may contain placeholders which are enclosed in angle brackets. Their names indicate what they should be replaced with in a real query. If multiple placeholders of the same type occur in the same query example, a number will be appended to the name.

Example: <field> GREATER <number>
The following common placeholders are used throughout this document:

<field> – A reference to a field within the tags of files in the Media Library. This can be either a plain field name (e.g. artist) or a title formatting expression (e.g. "%artist%"). See the Guidelines below for details on these two methods of accessing fields.
<number> – An integer value (whole number).
<string> – A text value, which may be enclosed in double quotation marks. See the Guidelines for details.
<time> – A time value or a title-formatting expression that evaluates to a time value. See Time Expressions below for details.
<expression> – A query expression in a composed query. This has to follow the rules described under Advanced Search below.
Simple search

The simple search mode does not use any keywords or functions: it is only used to search for a literal string within the Library.

<any string> – Returns only items that have all words from the specified string within their metadata and/or file path.
Advanced search

The advanced search allows the construction of more complex queries. It offers several keywords to perform specific types of comparisons and to combine multiple query expressions.

Text expressions

<field> HAS <string> – Returns only items that have all words from <string> in metadata field named <field>. Example: title HAS blah
<field> IS <string> – Returns only items where (at least one) metadata field <field> is equal to <string>. Example: artist IS blah
*HAS <string> – Same as simple search, but can be combined using logical operators (see below).
ALL - No operators can be used. This single keyword simply returns all items within the Media Library.
Numeric expressions

Performs integral number comparison between the value of a <field> and a <number>. For example: rating GREATER 3

<field> GREATER <number>
<field> LESS <number>
<field> EQUAL <number>
Metadata expressions

<field> MISSING – Returns only items that don't have a metadata field named <field>. Example: genre MISSING
<field> PRESENT – Returns only items that have a metadata field named <field>. Example: genre PRESENT
Time expressions

<time1> BEFORE <time2> – Returns only items where <time1> value is before <time2>. Example: %last_modified% BEFORE 2008
<time1> AFTER <time2> – Returns only items where <time1> value is after <time2>. Example: %last_modified% AFTER 2008
<time1> SINCE <time2> – Returns only items where <time1> value is not before <time2>. Example: %last_modified% SINCE 2007
<time1> DURING <time2> – Returns only items where <time1> value is a subset of <time2> period. Example: %last_modified% DURING 2007
<time> DURING LAST [<number>] <time-unit> – Returns items where <time> value is contained in the specified period. <time-unit> can be one of SECONDS, MINUTES, HOURS, DAYS, or WEEKS. Example: %last_modified% DURING LAST 2 WEEKS. If <number> is 1, the expression can be simplified to <time> DURING LAST SECOND/MINUTE/HOUR/DAY/WEEK (choose one).
Time values used in these expressions must be in one of the following formats: YYYY, YYYY-MM, YYYY-MM-DD, YYYY-MM-DD hh, YYYY-MM-DD hh:mm, YYYY-MM-DD hh:mm:ss.

Combined queries using logical operators

Several logical operators are available so that the user can search for items that match (or do not match) various criteria in combination. To create more complex logical queries, parentheses () can be used to enclose parts of the query to ensure that they are evaluated in the correct order (much like parentheses in mathematics).

<expression1> AND <expression2> – Returns only items where both expressions are true. Example: artist IS blah AND title HAS blah
<expression1> OR <expression2> – Returns only items where at least one expression is true.
NOT <expression> – Returns only items where the expression is false. Example: NOT last_played AFTER first_played
You can enclose expressions in parentheses to control the order in which logical expressions are evaluated. Example: ( (artist IS blah) AND (title HAS blah) ) OR (rating GREATER 3)
To obtain an exclusive-or (XOR/EOR), which is positive if only one expression is true but not both, you can use this: (<expression1> OR <expression2>) AND NOT (<expression1> AND <expression2>)
Sorting results

You can put a SORT BY operator at the end of your search expression to have the results from the preceding quiery sorted by the specified title-formatting pattern.

SORT BY <sort-pattern> / SORT ASCENDING BY <sort-pattern> – Sort results in ascending order.
SORT DESCENDING BY <sort-pattern> – Sort results in descending order.
Guidelines

General

Case-sensitivity

All keywords (for example IS, HAS) must be written in upper-case.
All search expressions, on the other hand, are non–case-sensitive. For example, artist HAS name will find tracks whose artist field equals "NAME", "name", "Name", and all other combinations of capital and small letters.
To achieve a case-sensitive comparison between two parameters, use "$strcmp(%field%,string)" EQUAL 1 and so on. For more information about how to use title-formatting within query syntax, see the relevant section below.
Double quotation marks

<field> and <string> in HAS and IS expressions should be enclosed in double quotation marks (") if they include spaces. Example: "my favourite field or string" HAS my
In the rare event of complex syntax in which a search expression contains keywords in a way that could introduce ambiguity, enclose the search expression (and hence its embedded 'keywords') within double quotation marks. For example: artist IS "MY BAND IS CALLED AND NOT" AND NOT releasetype IS Demo
Simplified access to metadata fields

Accessing metadata fields can be simplified: If <field> in HAS, IS, GREATER, LESS, EQUAL does not include any of the characters #, $, or %, it will be treated as a metadata field. Example: artist IS Radiohead. However, this simplified method of formatting cannot be used to access/query technical information (such as codec specifications) or component-provided information: for that, the user must use title-formatting, as detailed below.

Comparing two metadata fields

As noted above, operators such as IS compare a field (on the left) to a string (on the right). If the user wishes, instead, to compare one field to another field, this can be done using title-formatting. Example: "$strcmp(%field1%,%field2%)" EQUAL 1

Title-formatting

If <field> in a (sub-)query using HAS, IS, GREATER, LESS, or EQUAL includes at least one of the characters #, $, or %, it will be treated as a title formatting expression. That is: the title-formatting expression will be parsed, and its end-result will take its place, before the actual query is carried out.
If spaces are likely to occur in the result, the title-formatting expression should be enclosed within double quotation marks ("), in line with the guidance given above in General.
Double quotation marks should also be included around title-formatting expressions that use parentheses. This necessarily includes all functions, for example $meta(field) or $info(codec). Doing this removes ambiguity that might result because parenthesis are used natively by query syntax to specify the order of evaluation of logical expressions, as described under the relevant section above.
Using title formatting expressions to access metadata fields (e.g. "$meta(title)") instead of simple field names (e.g. title) will decrease the speed of queries performed upon large libraries and will break handling of multi-value fields by the operator IS.
Summary of operators

Operator  Syntax  Comment
AFTER <time1> AFTER <time2>
AND <expression1> AND <expression2>
BEFORE  <time1> BEFORE <time2>
DURING  <time1> DURING <time2>
DURING LAST <time> DURING LAST <number> SECONDS/MINUTES/HOURS/DAYS/WEEKS
<time> DURING LAST SECOND/MINUTE/HOUR/DAY/WEEK

EQUAL <field> EQUAL <number>
GREATER <field> GREATER <number>
HAS <field> HAS <string>
* HAS <string>

See the main description above for information on the difference between using a field and the * wildcard.
IS  <field> IS <string>
LESS  <field> LESS <number>
MISSING <field> MISSING
NOT NOT <expression>
OR  <expression1> OR <expression2>
PRESENT <field> PRESENT
SINCE <time1> SINCE <time2>
SORT BY SORT BY <sort-pattern>
SORT DESCENDING BY <sort-pattern>

SORTing expressions must be located at the end of the query.
~~~

---

IMSM105_33203BA96E39812EB022FF79662F0157556925FD