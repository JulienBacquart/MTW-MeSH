@echo off
setlocal
echo.
set python=c:\Programs\Python\Python38\Scripts\pyinstaller.exe
echo Build using pyinstaller : %python%
set targetDir=dist
set fileHandle=mesh-nt2trx
set srcFile=%fileHandle%.py
set logFile=!build_%fileHandle%.rep

echo. > %logFile%

echo.
echo Building %srcFile% ...

CALL %python% --log-level ERROR --onefile --distpath %targetDir% %srcFile% >> %logFile% 2>&1

set fileHandle=mesh-xml2trx
set srcFile=%fileHandle%.py
set logFile=!build_%fileHandle%.rep

echo. > %logFile%

echo.
echo Building %srcFile% ...

CALL %python% --log-level ERROR --onefile --distpath %targetDir% %srcFile% >> %logFile% 2>&1

echo.
echo Finished
echo.

endlocal
