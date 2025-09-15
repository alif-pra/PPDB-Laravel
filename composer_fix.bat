@echo off
echo === Memindahkan cache Composer ke D:\composer-cache ===
set COMPOSER_CACHE_DIR=D:\composer-cache

echo.
echo === Membersihkan cache lama di C: ===
if exist "C:\Users\%USERNAME%\AppData\Local\Composer" (
    rmdir /s /q "C:\Users\%USERNAME%\AppData\Local\Composer"
    echo Cache lama di C: sudah dihapus.
) else (
    echo Tidak ada cache lama di C:.
)

echo.
echo === Membersihkan cache Composer ===
composer clear-cache

echo.
echo === Menginstall vendor ===
composer install

echo.
echo === Selesai! ===
pause
