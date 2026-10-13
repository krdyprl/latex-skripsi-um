.PHONY: all build clean validate docx

all: clean build

build:
	mkdir -p dist
	mkdir -p build
	latexmk -pdf -outdir=../build -cd src/thesis.tex
	mv build/thesis.pdf dist

# Ekspor seluruh skripsi ke Word (.docx). Butuh pandoc 3.x.
docx:
	mkdir -p dist
	cd src && pandoc lua ../docs/pandoc/preprocess.lua thesis-docx.tex _docx.tex
	cd src && pandoc _docx.tex \
	  -f latex -t docx \
	  --standalone \
	  --toc \
	  --reference-doc=../docs/pandoc/reference.docx \
	  --lua-filter=../docs/pandoc/postprocess.lua \
	  --citeproc \
	  --bibliography=references.bib \
	  --csl=../docs/pandoc/apa.csl \
	  --metadata toc-title="DAFTAR ISI" \
	  --metadata reference-section-title="DAFTAR RUJUKAN" \
	  --resource-path=. \
	  -o ../dist/thesis.docx
	rm -f src/_docx.tex

validate:
	find src -name '*.tex' -print0 | xargs -0 chktex -l .chktexrc

clean:
	rm -f dist/* build/*
	rm -f src/_docx.tex
	rm -f src/thesis.aux src/thesis.bbl src/thesis.bcf src/thesis.blg \
	  src/thesis.fdb_latexmk src/thesis.fls src/thesis.lof src/thesis.log \
	  src/thesis.lot src/thesis.out src/thesis.pdf src/thesis.run.xml \
	  src/thesis.synctex.gz src/thesis.toc
	find . -iname "*~" -exec rm '{}' ';'
