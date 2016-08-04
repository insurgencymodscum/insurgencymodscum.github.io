@echo off

rem cls

echo ###########################################################################
echo Rename filename according to the post's title and date specified in Jekyll's metadata.
echo See the "Insurgency Mod Scum" post (IMSM124_01A0995D0982B32A81F6B27639C67890B3534228) for more information.
echo Usage:
echo Single file: %~dpnx0 test\test.html
echo Entire folder: %~dpnx0 test\
echo ###########################################################################
echo.

pause
pause
pause

rem ############################################################################
rem Set the current directory to the location of the batch script, using the %0 parameter
pushd "%~dp0"
rem ############################################################################

set targets=*.md,*.html,
set outdirname=_out
set pythonexe=python.exe
set curcnt=

set counterfile=_blog.rename.according.to.jekyll.post.metadata.counter.txt
set jreplbat=_blog.rename.according.to.jekyll.post.metadata_jrepl.bat
set pythonfile=_blog.rename.according.to.jekyll.post.metadata_python-regex-search.py

rem make a dir in specified file's location (%~dp1 arugment)
mkdir %~dp1%outdirname%

rem for copying resulting file
set outputdir=%~dp1%outdirname%
rem echo DEBUG: outputdir:%outputdir% & pause

rem ############################################################################

rem Check if input (%1) is a file or directory.
dir /ad /b %1 1> NUL 2> NUL
if %ERRORLEVEL% EQU 0 (
	rem echo Input is a directory.

	rem read current count
	set /p curcnt=<%counterfile%
	
	for /r  "%1" %%a in (%targets%) do (
		echo ==========================================================================
		rem echo File:"%%~nxa"
		call :dostuff %%a
		set /a curcnt=curcnt+1
		echo ==========================================================================
		 )
) else (
	rem echo Input is a file.
	echo ==========================================================================
	rem echo File:"%~nx1"
	call :dostuff %~dpnx1
	echo ==========================================================================
)

del %counterfile%
echo %curcnt%>%counterfile%
exit /b

rem ###########################################################################

rem ============================================================================
rem begin :dostuff
rem ============================================================================

:dostuff

rem debug
rem echo Args:%* & echo.

rem clear variables
set postTitle=
set postDate=
set postTitleWithoutInvalidChar=
set postTitleWithoutWhitespace=

rem ============================================================================

rem regex must be in quotes!
rem rtfm: jrepl http://www.dostips.com/forum/viewtopic.php?f=3&t=6044
rem %1 = second substring

rem ===========================================================================

rem ##########################################################################
rem regex for: title (with or without single or double quotes / on single or multiple lines)

set arg01a="(?s)(?<=title:\s)(.*?)[\r]?[\n]?(?=date:)"
rem set arg01b="$0"

rem rem JREPL DOES NOT SUPPORT LOOKBEHIND! use python!
rem rem Assign command output to a variable.
rem call %jreplbat% %arg01a% %arg01b%  /jmatch /f %1 >tmptitle.txt

rem read post.html and extract post's title from "title:" YAML metadata, put output to tmptitle.txt
%pythonexe% %pythonfile% "%1" %arg01a% >tmptitle.txt

rem set /p postTitle=<"tmptitle.txt" note does not work with a string containing "|" char. we replace "|" with "_" in python code.
rem also does not work with "&"
set /p postTitle=<tmptitle.txt
echo BATCH RAW:%postTitle%
del tmptitle.txt
rem ##########################################################################

rem ##########################################################################
rem regex for: "date: yyyy-mm-dd"

set arg02a="date:\s?[']?([0-9]{4}-([0][0-9]|[1][0-2])-([0][0-9]|[1][0-9]|[2][0-9]|[3][0-1]))"
set arg02b="$1"

rem Assign command output to a variable.
call %jreplbat% %arg02a% %arg02b%  /jmatch /f %1 >tmpdate.txt
set /p postDate=<tmpdate.txt
rem echo BATCH DATE:%postDate%
del tmpdate.txt
rem ##########################################################################

rem ##########################################################################
rem Replace all invalid characters.

rem whitelist
set arg04a="(?!\s)[^a-zA-Z0-9\.\[\]\+\'\#\-\(\)\@\{\}\~\=\!]"
rem .. replace with underscore
set arg04b="_"
rem ...replace with nothing - omit invalid characters
rem set arg04b=""

rem old way
rem rem Assign command output to a variable.
rem rem /s The source is read from environment variable VarName instead of from stdin.
rem for /f "delims=" %%i in ('%jreplbat% %arg04a% %arg04b% /s postTitle') do set postTitleWithoutInvalidChar=%%i
rem echo BATCH NO INVALID:%postTitleWithoutInvalidChar%

rem new way
rem Assign command output to a variable.
call %jreplbat% %arg04a% %arg04b%  /s postTitle >tmpwhitelisted.txt
set /p postTitleWithoutInvalidChar=<tmpwhitelisted.txt
echo BATCH NO INVALID:%postTitleWithoutInvalidChar%
del tmpwhitelisted.txt

rem ##########################################################################
rem Replace all whitespace with "-".

set arg03a="\s"
set arg03b="-"

rem rem old way
rem rem Assign command output to a variable.
rem rem /s The source is read from environment variable VarName instead of from stdin.
rem for /f "delims=" %%i in ('call %jreplbat% %arg03a% %arg03b% /s postTitleWithoutInvalidChar') do set postTitleWithoutWhitespace=%%i
rem echo BATCH NO WHITESPACE: %postTitleWithoutWhitespace%

rem new way
rem Assign command output to a variable.
call %jreplbat% %arg03a% %arg03b%  /s postTitleWithoutInvalidChar >tmpwhitespace.txt
set /p postTitleWithoutWhitespace=<tmpwhitespace.txt
echo BATCH NO WHITESPACE:%postTitleWithoutWhitespace%
del tmpwhitespace.txt
rem ##########################################################################

echo.
rem echo DEBUG: postDate:%postDate%
rem echo DEBUG: postTitle:%postTitleWithoutWhitespace%
echo DEBUG: OLD: %~nx1
echo DEBUG: NEW: %postDate%-%postTitleWithoutWhitespace%%~x1
echo.
rem pause

rem copy with counter
cp --verbose "%1" "%outputdir%\%postDate%-%curcnt%-%postTitleWithoutWhitespace%%~x1"

rem copy withOUT counter
rem cp --verbose "%1" "%outputdir%\%postDate%-%postTitleWithoutWhitespace%%~x1"

rem UNUSED (?)
rem move with counter
rem mv --verbose --force "%1" "%outdir%\%postDate%-%curcnt%-%postTitleWithoutWhitespace%%~x1"
rem move without counter
rem mv --verbose --force "%1" "%~dp1\..\out\%postDate%-%postTitleWithoutWhitespace%%~x1"

rem UNUSED
rem via rename
rem rename %1 %postDate%-%postTitleWithoutWhitespace%%~x1
rem VIA RENAME & redirect stderr
rem rename %1 %postDate%-%postTitleWithoutWhitespace%%~x1 2>>error.txt
rem ##########################################################################

rem ============================================================================
rem end of :dostuff
rem ============================================================================