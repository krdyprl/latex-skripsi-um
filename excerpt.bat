@echo off
REM excerpt.bat - jalankan ekspor selektif bagian skripsi ke PDF.
REM   excerpt.bat                  -> mode interaktif
REM   excerpt.bat bab2             -> seluruh BAB II
REM   excerpt.bat "bab1,ringkasan"
REM   excerpt.bat "bab2[1,2]"
REM   excerpt.bat "bab2[1]" review  -> nama output dist/excerpt-review.pdf

setlocal
set PSLIB="%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe"
if exist "%~dp0excerpt.ps1" goto :run
echo excerpt.ps1 tidak ditemukan di %~dp0
exit /b 1

:run
if "%~1"=="" (
    %PSLIB% -NoProfile -ExecutionPolicy Bypass -File "%~dp0excerpt.ps1"
) else (
    %PSLIB% -NoProfile -ExecutionPolicy Bypass -File "%~dp0excerpt.ps1" -Pilih "%~1" -Nama "%~2"
)
exit /b %errorlevel%
