@ECHO On
if not exist "U:\CP.exe" (
	NET USE U: \\Server-hal\cogpack_9.45\
)
CD /D U:\
if not exist "U:\%computername%25" (
	md "U:\%computername%25"
	xcopy "U:\PC_VORLAGEN\*" "U:\%computername%25" /S /E /I /Q /R /Y
)
if exist "U:\%computername%25\CVOR" (
	@ECHO -1,-1,3740,1,1,9207,6911,32,1,6141>"U:\%computername%25\CVOR"
	@ECHO      1.0000>>"U:\%computername%25\CVOR"
	@ECHO 1023019718.0000>>"U:\%computername%25\CVOR"
	@ECHO nix>>"U:\%computername%25\CVOR"
	@ECHO 0,11,10,12,13,14>>"U:\%computername%25\CVOR"
	@ECHO 8,45>>"U:\%computername%25\CVOR"
	@ECHO 800,0.800000>>"U:\%computername%25\CVOR"
	@ECHO U:\Z\results\>>"U:\%computername%25\CVOR"
	@ECHO 000.ser>>"U:\%computername%25\CVOR"
	@ECHO u:\>>"U:\%computername%25\CVOR"
	@ECHO u:\ll\>>"U:\%computername%25\CVOR"
	@ECHO u:\series\>>"U:\%computername%25\CVOR"
	@ECHO U:\%computername%25\results\>>"U:\%computername%25\CVOR"
	@ECHO u:\DBF\>>"U:\%computername%25\CVOR"
	@ECHO u:\VEC\>>"U:\%computername%25\CVOR"
	@ECHO u:\BMP\>>"U:\%computername%25\CVOR"
	@ECHO u:\WAV\>>"U:\%computername%25\CVOR"
	@ECHO u:\CODES\>>"U:\%computername%25\CVOR"
	@ECHO U:\%computername%25\ii\>>"U:\%computername%25\CVOR"
	@ECHO NORMS.DBF>>"U:\%computername%25\CVOR"
	@ECHO AL_*.DBF>>"U:\%computername%25\CVOR"
	@ECHO u:\CEDIT.EXE>>"U:\%computername%25\CVOR"
	@ECHO U:\Z\results\R\*>>"U:\%computername%25\CVOR"
	@ECHO 6 >>"U:\%computername%25\CVOR"
	@ECHO DE>>"U:\%computername%25\CVOR"
	@ECHO @>>"U:\%computername%25\CVOR"
	@ECHO EUDEDE,DE,63>>"U:\%computername%25\CVOR"
	@ECHO u>>"U:\%computername%25\CVOR"
	@ECHO u:\WAV\>>"U:\%computername%25\CVOR"
	@ECHO. >>"U:\%computername%25\CVOR"
	@ECHO 240>>"U:\%computername%25\CVOR"
	@ECHO 0,0,0,0,0,0,0,0,32766,0,24,0,0,4095,15,0 >>"U:\%computername%25\CVOR"
	@ECHO. >>"U:\%computername%25\CVOR"
	@ECHO ^>>>"U:\%computername%25\CVOR"
	@ECHO 135,135,135>>"U:\%computername%25\CVOR"
	@ECHO 192,192,192>>"U:\%computername%25\CVOR"
	@ECHO 219,219,219>>"U:\%computername%25\CVOR"
	@ECHO 219,219,219>>"U:\%computername%25\CVOR"
	@ECHO 192,192,192>>"U:\%computername%25\CVOR"
	@ECHO 192,192,192>>"U:\%computername%25\CVOR"
	@ECHO u:\>>"U:\%computername%25\CVOR"
	@ECHO 0,0,0,255,255,255,255,128,0,Lucida Console>>"U:\%computername%25\CVOR"
)
copy "U:\%computername%25\CVOR" "U:\%computername%25\CVOR.OK"

REM for /F %%A in ("U:\%computername%25\CVOR2") do (
REM @ECHO %%A>>"U:\%computername%25\CVOR"
pause
for /D %%A in (station??) do (
	pushd U:\
	@ECHO %%A
	@ECHO ren "%~dp0\%%A" "%~dp0\%computername%"
)
pause


echo %var% |findstr /b "str" >nul && (

U:\cp.exe i=U:\E2-13
