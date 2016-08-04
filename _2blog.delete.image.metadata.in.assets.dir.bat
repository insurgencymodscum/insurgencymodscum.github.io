@echo ###########################################################################
@echo Delete metadata in all *.jpg then *.png images in "assets"
@echo  dir via EXIFTool.
@echo ---
@echo EXIFTool will make backups before modifying files. Original file is renamed "*.*_original"
@echo ###########################################################################
@echo.

@echo off

pause
pause
pause

rem ###########################################################################
rem This prevents conflict with timeout in Cygwin, MinGW, etc.
set timeout=%SystemRoot%\System32\timeout.exe
rem ###########################################################################

echo ==========================================================================
echo %~nx0 BEGIN
echo ========================================================================== & echo.

rem Set the current directory to the location of the batch script, using the %0 parameter
pushd "%~dp0"

cd assets
echo %CD%

rem ###########################################################################

rem need to specify filetype, otherwise *.jpg.original will be 
rem processed into *.jpg.original.original
for /R %%f in (*.jpg) do (
   echo "%%f"
   exiftool -all= "%%~f"
)

for /R %%f in (*.png) do (
   echo "%%f"
   exiftool -all= "%%~f"
)

@rem ###########################################################################

%timeout% 3

popd

echo ==========================================================================
echo %~nx0 END
echo ========================================================================== & echo.