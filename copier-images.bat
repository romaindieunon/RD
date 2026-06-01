@echo off
chcp 65001 >nul
echo ============================================
echo Copie des images des procedures
echo ============================================
echo.

set "SOURCE_AD=C:\Claude\portfolio\assets\projets\ad"
set "SOURCE_PFSENSE=C:\Claude\portfolio\assets\projets\pfsense"
set "DEST_AD=C:\Claude\cv-portfolio\assets\projets\ad"
set "DEST_PFSENSE=C:\Claude\cv-portfolio\assets\projets\pfsense"
set "SOURCE_SCHEMA=C:\Claude\portfolio\assets\projets\schema-reseau.png"
set "DEST_SCHEMA=C:\Claude\cv-portfolio\assets\projets\schema-reseau.png"

if not exist "%DEST_AD%" mkdir "%DEST_AD%"
if not exist "%DEST_PFSENSE%" mkdir "%DEST_PFSENSE%"

echo [1/3] Copie des images Active Directory...
xcopy "%SOURCE_AD%\*" "%DEST_AD%\" /Y /Q
echo.

echo [2/3] Copie des images pfSense...
xcopy "%SOURCE_PFSENSE%\*" "%DEST_PFSENSE%\" /Y /Q
echo.

echo [3/3] Copie du schema reseau...
copy /Y "%SOURCE_SCHEMA%" "%DEST_SCHEMA%" >nul
echo OK
echo.

echo ============================================
echo Copie terminee !
echo ============================================
pause
