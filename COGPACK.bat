@ECHO OFF
IF NOT EXIST "U:\CP.exe" (
     NET USE U:\ \\Server-hal\Cogpack_9.45\
)
CD /D U:\
