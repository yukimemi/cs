@echo off
setlocal enabledelayedexpansion
REM ====================================================================== {{{1
set tm=%time: =0%
set today=%date:~-10,4%%date:~-5,2%%date:~-2,2%
set nowtime=%tm:~0,2%%tm:~3,2%%tm:~6,2%%tm:~9,2%
set now=%today%_%nowtime%
set cmdDir=%~dp0
set cmdFile=%~f0
set cmdName=%~n0
set cmdFileName=%~nx0
REM ======================================================================

pushd "%cmdDir%"

set CSC=C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe

echo %CSC% %*
%CSC% %*

set exitCode=%errorlevel%

echo Exit Code: [%exitCode%]

pause
popd

exit /b %exitCode%

