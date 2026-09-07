@echo off
REM clean
rmdir /S /Q build
rmdir /S /Q dist

REM Hapus artefak LaTeX yang tertinggal di src/ dari build manual
REM (latexmk langsung / VS Code) agar dist/thesis.pdf selalu segar.
REM Catatan: jangan pakai "thesis.*" karena akan menghapus thesis.tex.
del /Q src\thesis.aux src\thesis.bbl src\thesis.bcf src\thesis.blg src\thesis.fdb_latexmk src\thesis.fls src\thesis.lof src\thesis.log src\thesis.lot src\thesis.out src\thesis.pdf src\thesis.run.xml src\thesis.synctex.gz src\thesis.toc 2>nul

REM build
if not exist dist mkdir dist
if not exist build mkdir build
latexmk -pdf -outdir=../build -cd src/thesis.tex
move build\thesis.pdf dist
