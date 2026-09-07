.PHONY: all build clean validate

all: clean build

build:
	mkdir -p dist
	mkdir -p build
	latexmk -pdf -outdir=../build -cd src/thesis.tex
	mv build/thesis.pdf dist

validate:
	find src -name '*.tex' -print0 | xargs -0 chktex -l .chktexrc

clean:
	rm -f dist/* build/*
	rm -f src/thesis.aux src/thesis.bbl src/thesis.bcf src/thesis.blg \
	  src/thesis.fdb_latexmk src/thesis.fls src/thesis.lof src/thesis.log \
	  src/thesis.lot src/thesis.out src/thesis.pdf src/thesis.run.xml \
	  src/thesis.synctex.gz src/thesis.toc
	find . -iname "*~" -exec rm '{}' ';'
