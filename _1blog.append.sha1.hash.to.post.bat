@echo off

echo ###########################################################################
echo Append specified prefix, counter and hash of a given file to the end of the given file via Rhash64.
echo Appending SHA1 hash.
echo Rhash64.exe needs to be in PATH!
echo Example: %~dpnx0 test.txt
echo ###########################################################################
echo.

rem RTFM: rhash
rem http://rhash.anz.ru/manpage.php

rem ############################################################################
rem ############################################################################
rem ############################################################################

rem pause
rem pause
rem pause

set targets=*.md,*.html,

rem Check if input (%1) is a file or directory.
dir /ad /b "%~1" 1> NUL 2> NUL
if %ERRORLEVEL% EQU 0 (
	echo Input is a directory.
	for /r  "%~1" %%a in (%targets%) do (
		echo =======================================================================
		echo File "%%~nxa"
		call :action "%%a"
		echo =======================================================================
		 )
) else (
	echo Input is a file.
	echo =========================================================================
	echo File: "%~nx1"
	call :action %~dpnx1
	echo =========================================================================
)

exit /b

rem ############################################################################

:action


rem old way
rem for /f "delims=" %%i in ('rhash64.exe --sha1 --printf=%%{Sha1} %1') do set hash=%%i

rem new way
rhash64.exe --sha1 --printf=%%{Sha1} %1 >tmphash.txt
set /p hash=<tmphash.txt
del tmphash.txt

set prefix=IMSM
set output="%*"

echo.>> %output%
echo.>> %output%

rem ############################################################################
rem br tag, unused
rem add whitespace after <br> (note the spacing)
rem echo ^<br^> >> %output%
rem do not add a whitespace after <br>
rem echo ^<br^>>> %output%
rem ############################################################################

rem ############################################################################
rem Counter code from "_blog.rename.according.to.jekyll.post.metadata.bat"
set counterFile=_blog.append.hash.counter.txt
set currentCount=
set /p currentCount=<%counterFile%
rem echo DEBUG: COUNT:%currentCount%  & PAUSE
set /a currentCount=currentCount+1
rem echo DEBUG: COUNT:%currentCount%  & PAUSE
del %counterFile%
echo %currentCount%>%counterFile%
rem ############################################################################

rem ############################################################################
rem hr tag ("---" in markdown)
echo --->> %output%
echo.>> %output%
echo %prefix%%currentCount%_%hash%>>%output%
rem ############################################################################