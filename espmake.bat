@echo off

setlocal
 
if not exist "%~dpn0.sh" echo Script "%~dpn0.sh" not found & exit 2
 
set _CYGBIN=C:\cygwin\bin

for /f "delims=" %%A in ('%_CYGBIN%\cygpath.exe "%CD%"') do set _WORKDIR=%%A

for /f "delims=" %%A in ('%_CYGBIN%\cygpath.exe "%~dpn0.sh"') do set _CYGSCRIPT=%%A

endlocal & %_CYGBIN%\bash --login "%_CYGSCRIPT%" %_WORKDIR% %*