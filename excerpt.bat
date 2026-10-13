@echo off
REM excerpt.bat - jalankan ekspor selektif bagian skripsi ke PDF atau Word.
REM   excerpt.bat                  -> mode interaktif
REM   excerpt.bat bab2             -> seluruh BAB II (PDF)
REM   excerpt.bat "bab1,ringkasan"
REM   excerpt.bat "bab2[1,2]"
REM   excerpt.bat "bab2[1]" review  -> nama output dist/excerpt-review.pdf
REM   excerpt.bat bab2 "" docx     -> Word: dist/excerpt-bab2.docx
REM   excerpt.bat bab2 "" both     -> PDF + Word

setlocal
set PSLIB="%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe"
if exist "%~dp0excerpt.ps1" goto :run
echo excerpt.ps1 tidak ditemukan di %~dp0
exit /b 1

:run
if "%~1"=="" (
    %PSLIB% -NoProfile -ExecutionPolicy Bypass -File "%~dp0excerpt.ps1"
    exit /b %errorlevel%
)
if "%~3"=="" (
    %PSLIB% -NoProfile -ExecutionPolicy Bypass -File "%~dp0excerpt.ps1" -Pilih "%~1" -Nama "%~2"
) else (
    %PSLIB% -NoProfile -ExecutionPolicy Bypass -File "%~dp0excerpt.ps1" -Pilih "%~1" -Nama "%~2" -Format "%~3"
)
exit /b %errorlevel%
