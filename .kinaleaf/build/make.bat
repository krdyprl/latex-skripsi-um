REM clean
rmdir /S /Q build
rmdir /S /Q dist
	
REM build
mkdir -p dist
mkdir -p build
latexmk -pdf -outdir=../build -cd src/thesis.tex
move build\thesis.pdf dist
