@echo off
REM docx.bat - ekspor seluruh skripsi ke Word (.docx) via pandoc.
REM   docx.bat                 -> dist/thesis.docx
REM   docx.bat draft           -> dist/draft.docx
REM
REM Prasyarat: pandoc 3.x terpasang.

setlocal
set PSLIB="%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe"
if exist "%~dp0docx.ps1" goto :run
echo docx.ps1 tidak ditemukan di %~dp0
exit /b 1

:run
%PSLIB% -NoProfile -ExecutionPolicy Bypass -File "%~dp0docx.ps1" -Nama "%~1"
exit /b %errorlevel%
