@ECHO OFF
CHCP 936>NUL
CD /D "%~DP0"
FOR /F "TOKENS=2 DELIMS=," %%I IN ('TYPE CONFIG.INI') DO (COLOR %%I)
TITLE 一键处理卡带症状
TASKKILL /IM EXPLORER.EXE /F
START /HIGH EXPLORER.EXE
CLS
ECHO 您的系统现在是否还卡？
CHOICE /C YN
IF %ERRORLEVEL%==2 EXIT
CLS
START /REALTIME LOGOFF
START /REALTIME SHUTDOWN /L
ECHO 程序是否失去了响应？
CHOICE /C YN
IF %ERRORLEVEL%==2 EXIT
TASKKILL /IM S* /F /T
EXIT