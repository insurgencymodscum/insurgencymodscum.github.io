@echo off

echo ###########################################################################
echo Jekyll: delete useless Jekyll and Git related files.
echo ###########################################################################
echo.

rem ###########################################################################
rem This prevents conflict with timeout in Cygwin, MinGW, etc.
set timeout=%SystemRoot%\System32\timeout.exe
rem ###########################################################################

echo ==========================================================================
echo %~nx0 BEGIN
echo ========================================================================== & echo.

rem Set the current directory to the location of the batch script, using the %0 parameter
pushd "%~dp0"

rem /f Force deleting of read-only files.
rem /q Quiet mode, do not ask if ok to remove a direcotry tree with /s
rem /s Recursive. Removes all directories and files in the specified directory in addition to the directory itself. Used to remove a directory tree.
rd /s /q .sass-cache
rd /s /q _site

rd /s /q .git\logs
rd /s /q .git\smartgit

del /f /q .jekyll-metadata

del /f /q .git\COMMIT_EDITMSG
del /f /q .git\smartgit.config

jekyll clean

%timeout% 10

echo ==========================================================================
echo %~nx0 END
echo ========================================================================== & echo.
