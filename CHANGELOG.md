# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Added

- File-level header documentation on all LaTeX and bibliography source files
- Placeholder paragraphs (`\blindtext`) in chapters and sections missing body content
- Instructional guidance text in chapters III–V before placeholder content
- Subbab and subsubbab examples in chapters III and IV
- Sample CSV files in `src/resources/` (`chapter-3-sample-requirements.csv`, `chapter-3-sample-components.csv`)
- CSV-driven table examples in chapter III with captions and list-of-tables entries
- GitHub Actions workflow with LaTeX validate job on pull requests, build job on push to main/master, and PDF artifact upload
- DOCX export via pandoc: `docx.ps1`/`docx.bat` (Windows) and `make docx` (Linux/macOS)
- `src/thesis-docx.tex` driver and `docs/pandoc/preprocess.lua` (expands `\input`, converts `\csvautotabular`, normalizes math, marks page breaks/appendix/references)
- `docs/pandoc/postprocess.lua` filter adding DOCX page breaks, "BAB I"/"1.1" numbering, appendix "Lampiran N", and the DAFTAR RUJUKAN heading
- `docs/pandoc/reference.docx` (UM styling: Times New Roman 12 pt, 1.5 spacing, 4/3/3/3 cm margins) and `docs/pandoc/apa.csl`
- `docs/pandoc/make-reference-docx.ps1` to regenerate the reference DOCX
- GitHub Actions `build-docx` job uploading the `thesis-docx` artifact
- Selective DOCX export: `excerpt.ps1`/`excerpt.bat` gain `-Format pdf|docx|both` (interactive menu asks for the format); output `dist/excerpt-<nama>.docx`
- `docs/pandoc/postprocess.lua` handles `@@CHAPSTART:n@@` so partial exports keep correct chapter numbers (e.g. `bab2` → "BAB II")
- CHANGELOG.md
- `.chktexrc` for LaTeX lint configuration

### Changed

- Migrate CI from Travis CI to GitHub Actions
- Rename build output directory from `output/` to `dist/`
- Rename Makefile target from `install` to `build`
- Prefix resource files by chapter (`chapter-3-*.csv`)
- Fix unsupported `\includegraphics` options in cover page for modern TeX Live
- Fix `references.bib` header comments for BibTeX compatibility
- Rename duplicate `\section{Tujuan}` to `\section{Rumusan Masalah}` in chapter I

### Fixed

- `excerpt.ps1` PDF build no longer fails spuriously when latexmk reports a nonzero/-1 exit code despite a successful build: it now redirects all streams to `build/_excerpt-latexmk.out` and verifies the freshly written PDF instead of trusting the exit code (stale output files are removed first)
- DOCX conversion no longer aborts with `unexpected }` on content that uses `\begingroup`/`\endgroup` (e.g. a `longtable` wrapped in a group): `docs/pandoc/preprocess.lua` now strips those grouping tokens, which pandoc otherwise mismatches with surrounding braces

## [1.1.0] - 2018-02-22

### Added

- Windows build script (`make.bat`)

## [1.0.0] - 2016-07-18

### Added

- Additional front matter pages (cover, approval, statement, abstracts, forewords)
- Image example in Tinjauan Pustaka chapter
- Travis CI build

### Changed

- Chapter numbering to Roman numerals with uppercase chapter names
- Paragraph spacing (parskip)

## [0.1.0] - 2011-06-20

### Added

- Initial LaTeX thesis template for ITB Informatika
