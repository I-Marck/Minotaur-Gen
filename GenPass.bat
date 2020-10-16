@echo off
color 0a
title GenPass Developed by Marck

:Start
cls
echo.
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo             PREMI 1 PER GENERARE LA TUA PASSWORD 
echo             \\\\\\RICORDATI DI COPIARLA/////////          
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo [1] Password Random
echo.
set /p input= Digita [1] per generare la password: 
if %input%== 1 goto :A
echo.
if not goto :Start

:A
cls
Setlocal EnableDelayedExpansion
set _RNDLength=24
set _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,-_
set _Str=%_Alphanumeric%987654321

:_LenLoop
if not "%_Str:~18%"=="" set _Str=%_Str:~9%& set /A _Len+=9& goto :_LenLoop
set _tmp=%_Str:~9,1%
set /A _Len=_Len+_tmp
set _count=0
set _RndAlphaNum=

:_loop
set /a _count+=1
set _RND=%Random%
set /A _RND=_RND%%%_Len%
set _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
if !_count! lss %_RNDLength% goto _loop
echo.
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo           LA TUA PASSWORD E': 
echo         !_RndAlphaNum! 
echo    RICORDATI DI SEGNARTI LA PASSWORD   
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo.
pause
exit