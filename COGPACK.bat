@ECHO Off
COLOR 0D

::::::::::::::::::::::::::::::::::::
::                                ::
:: COGPACK Universal Starter v1.6 ::
::        13.07.2021 12:35        ::
::       Coded by Prinzessin      ::
::     prinzessin@flampinko.it    ::
::                                ::
::::::::::::::::::::::::::::::::::::

CLS

@ECHO COGPACK wird gestartet...

if not exist "U:\CP.exe" (
	NET USE U: \\Server-hal\cogpack_9.45
)>NUL

CD /D U:\
if not exist "U:\%COMPUTERNAME%" (
	md "U:\%COMPUTERNAME%"
	xcopy "U:\PC_VORLAGEN\*" "U:\%COMPUTERNAME%" /S /E /I /Q /R /Y>NUL
)

if exist "U:\%COMPUTERNAME%\CVOR" (
	@ECHO -1,-1,3740,1,1,9207,6911,32,1,6141>"U:\%COMPUTERNAME%\CVOR"
	@ECHO      1.0000>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 1023019718.0000>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO nix>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 0,11,10,12,13,14>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 8,45>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 800,0.800000>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO U:\Z\results\>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 000.ser>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO u:\>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO u:\ll\>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO u:\series\>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO U:\%COMPUTERNAME%\results\>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO u:\DBF\>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO u:\VEC\>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO u:\BMP\>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO u:\WAV\>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO u:\CODES\>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO U:\%COMPUTERNAME%\ii\>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO NORMS.DBF>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO AL_*.DBF>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO u:\CEDIT.EXE>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO U:\Z\results\R\*>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 6 >>"U:\%COMPUTERNAME%\CVOR"
	@ECHO DE>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO @>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO EUDEDE,DE,63>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO u>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO u:\WAV\>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO. >>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 240>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 0,0,0,0,0,0,0,0,32766,0,24,0,0,4095,15,0 >>"U:\%COMPUTERNAME%\CVOR"
	@ECHO. >>"U:\%COMPUTERNAME%\CVOR"
	@ECHO ^>>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 135,135,135>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 192,192,192>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 219,219,219>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 219,219,219>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 192,192,192>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 192,192,192>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO u:\>>"U:\%COMPUTERNAME%\CVOR"
	@ECHO 0,0,0,255,255,255,255,128,0,Lucida Console>>"U:\%COMPUTERNAME%\CVOR"
)

copy "U:\%COMPUTERNAME%\CVOR" "U:\%COMPUTERNAME%\CVOR.OK">NUL

FOR /F %%A in (U:\ii\netpaths) do IF "%%A" == "%COMPUTERNAME%" GOTO :FERTIG
Set /A "Counter=0"
FOR /F "delims=:" %%A IN ('findstr /N .* "U:\ii\netpaths"') DO SET /A Zeilen=%%A-10
FOR /F "SKIP=1" %%A in (U:\ii\netpaths) do (
	IF "%%A" == "***" goto :REST
	IF NOT EXIST "U:\ii\netpaths_test" (
		@ECHO Z>"U:\ii\netpaths"
		@ECHO Z>"U:\ii\netpaths_test"
	)
	@ECHO %%A>>"U:\ii\netpaths"
)

:REST
@ECHO %COMPUTERNAME%>>"U:\ii\netpaths"
@ECHO ***>>"U:\ii\netpaths"
@ECHO Legenda:>>"U:\ii\netpaths"
@ECHO This file contains paths (default: subfolders of the COGPACK folder) for >>"U:\ii\netpaths"
@ECHO running COGPACK in a network.>>"U:\ii\netpaths"
@ECHO This file has to be named "netpaths" and must reside in the COGPACK subfolder "ii".>>"U:\ii\netpaths"
@ECHO If it exists, the menu "File/Merge net path data" compiles all result data >>"U:\ii\netpaths"
@ECHO from subfolders in line 2 ..%Zeilen% to the first path named, here subfolder "Z".>>"U:\ii\netpaths"
@ECHO The line *** marks the end of the list.>>"U:\ii\netpaths"
@ECHO You can also specify complete path expressions e.g. C:\COGPACK\firstpath.>>"U:\ii\netpaths"
@ECHO.>>"U:\ii\netpaths"
@ECHO.>>"U:\ii\netpaths"

:FERTIG
IF EXIST "U:\ii\netpaths_test" DEL /F /Q "U:\ii\netpaths_test">NUL
U:\cp.exe i=U:\%COMPUTERNAME%
EXIT
