@ECHO OFF
COLOR 0D

::::::::::::::::::::::::::::::::::::
::                                ::
:: COGPACK Alt zu Neu Import v1.0 ::
::        13.07.2021 12:35        ::
::       Coded by Prinzessin      ::
::     prinzessin@flampinko.it    ::
::                                ::
::::::::::::::::::::::::::::::::::::

CLS

SET ORDNER_ALT=\\SERVER-HAL\Freigabe_Cogpack
SET ORDNER_NEU=\\Server-hal\cogpack_9.45
SET LOG_DATEI=Backup_LOG_%DATE%_%TIME::=.%.log

@ECHO %DATE% %TIME% COGPACK Backup wird gestartet...
@ECHO %DATE% %TIME% COGPACK Backup wird gestartet...>>"%ORDNER_NEU%\%LOG_DATEI%"

REM Mit der Option "/TEE" hinter dem pfad der Log Datei wird die ausgabe auch auf dem Bildschirm ausgegeben.
ROBOCOPY "%ORDNER_ALT%\Codes"   "%ORDNER_NEU%\Codes"   /MIR /LOG+:"%ORDNER_NEU%\%LOG_DATEI%"
ROBOCOPY "%ORDNER_ALT%\Results" "%ORDNER_NEU%\Results" /MIR /LOG+:"%ORDNER_NEU%\%LOG_DATEI%"
ROBOCOPY "%ORDNER_ALT%\Series"  "%ORDNER_NEU%\Series"  /MIR /LOG+:"%ORDNER_NEU%\%LOG_DATEI%"

@ECHO.
@ECHO %DATE% %TIME% COGPACK Backup Fertig.
@ECHO %DATE% %TIME% COGPACK Backup Fertig.>>"%ORDNER_NEU%\%LOG_DATEI%"
@ECHO.
CHCP 65001>NUL
@ECHO Taste drücken zum beenden.

PAUSE>NUL
EXIT