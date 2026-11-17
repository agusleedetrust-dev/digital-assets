@echo off
title Update Digital Assets ke GitHub
echo ===================================================
echo     MENGIRIM PEMBARUAN KE GITHUB REPOSITORY
echo ===================================================
echo.
git add .
set /p commit_msg="Masukkan pesan update (kosongkan untuk default): "
if "%commit_msg%"=="" set commit_msg="update: pembaharuan katalog digital assets"

git commit -m "%commit_msg%"
echo.
echo Mengirim ke remote repository GitHub...
git push origin main
echo.
echo ===================================================
echo   SELESAI! Vercel akan otomatis meng-update web Anda.
echo ===================================================
pause
