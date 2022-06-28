;@echo off
;SET filepath=%~f1
;Title "
;echo(
;if "%~1" equ "" (
	;echo 	OPSCRIPT LAUNCHER
	;timeout 5 >nul & exit
;)
;echo %~1
;ping localhost -n 1 >nul
;cls

;goto:detectextension

:detectextension
rem === DETECT FILE
IF NOT EXIST "%filepath%" (
    ECHO script file not found: %filepath% >&2
    EXIT /B 1
)
if not exist msgbox.vbs goto :dataerror
goto:launchcode

:launchcode
>nul find "msgbox" %~1 && (
  start msgbox.vbs
)
>nul find "sizemodify" %~1 && (
  call size.bat
)
>nul find "return" %~1 && (
  echo Returned Value.
)
>nul find "varia" %~1 && (
  echo Successfully Made a variable.
  set varia=0
)
>nul find "time" %~1 && (
  time/t
)
for /f "usebackq tokens=7,10" %%T in (%~1) do (
	echo %%T
)
>nul find "userline" %~1 && (
  set/p userline=
)
for /f "usebackq tokens=8,10" %%V in (%~1) do (
	set varia=%%V
)
>nul find "ptxt_varia" %~1 && (
	echo %varia%
)
>nul find "code -noexecute" %~1 && (
  pause>nul
  exit
)
>nul find "guide_clear" %~1 && (
  cls
)
>nul find "spaceout" %~1 && (
  echo.
)
>nul find "endpage" %~1 && (
  pause
)
>nul find "endp_ ;NOTHING" %~1 && (
  pause>nul
)
>nul find "guide_exit" %~1 && (
  exit
)
>nul find "guide_all" %~1 && (
  pause
  cls
  exit
)





:dataerror
if exist msgbox.vbs exit
echo ERROR. DATA FILE NOT FOUND!
echo REBUILD DATA FILE BY TYPING "rebuild"
exit