# Kumpulan Kode Project: if-itb-latex

Berkas ini memuat seluruh kode dan berkas teks dari repositori `if-itb-latex` (template skripsi LaTeX Universitas Negeri Malang), diurutkan per kelompok berkas.

- Dibuat: 02 November 2026, 12.47 WIB
- Jumlah berkas: **78**
- Total ukuran: **845,763 byte** (825.9 KB)
- Total baris: **13,311**
- Akar repositori: `D:\KEJARCEPATTTT\if-itb-latex`

**Tidak disertakan** (artefak build dan berkas biner): direktori `.git/`, `build/`, `dist/`, `.kinaleaf/`, `-p/`; hasil kompilasi LaTeX (`.aux`, `.log`, `.toc`, `.out`, `.bcf`, `.bbl`, `.fls`, `.fdb_latexmk`, `.run.xml`, `.lof`, `.lot`, `.blg`); serta gambar dan PDF (`.png`, `.jpg`, `.pdf`, `.docx`).

## Daftar Isi

**1. Konfigurasi Build, CI, dan Editor** (10 berkas)

- [`.chktexrc`](#f-chktexrc)
- [`.github/workflows/build.yml`](#f-github-workflows-build-yml)
- [`.gitignore`](#f-gitignore)
- [`.vscode/settings.json`](#f-vscode-settings-json)
- [`Makefile`](#f-makefile)
- [`docx.bat`](#f-docx-bat)
- [`docx.ps1`](#f-docx-ps1)
- [`excerpt.bat`](#f-excerpt-bat)
- [`excerpt.ps1`](#f-excerpt-ps1)
- [`make.bat`](#f-make-bat)

**2. Berkas Utama LaTeX** (4 berkas)

- [`src/_t8.tex`](#f-src-t8-tex)
- [`src/paper.tex`](#f-src-paper-tex)
- [`src/thesis-docx.tex`](#f-src-thesis-docx-tex)
- [`src/thesis.tex`](#f-src-thesis-tex)

**3. Bab, Halaman Awal, dan Lampiran** (20 berkas)

- [`src/chapters/abstract-en.tex`](#f-src-chapters-abstract-en-tex)
- [`src/chapters/abstract-id.tex`](#f-src-chapters-abstract-id-tex)
- [`src/chapters/appendix-1.tex`](#f-src-chapters-appendix-1-tex)
- [`src/chapters/appendix-2.tex`](#f-src-chapters-appendix-2-tex)
- [`src/chapters/appendix-3.tex`](#f-src-chapters-appendix-3-tex)
- [`src/chapters/approval.tex`](#f-src-chapters-approval-tex)
- [`src/chapters/biography.tex`](#f-src-chapters-biography-tex)
- [`src/chapters/chapter-1.tex`](#f-src-chapters-chapter-1-tex)
- [`src/chapters/chapter-2.tex`](#f-src-chapters-chapter-2-tex)
- [`src/chapters/chapter-3.tex`](#f-src-chapters-chapter-3-tex)
- [`src/chapters/chapter-4.tex`](#f-src-chapters-chapter-4-tex)
- [`src/chapters/chapter-5.tex`](#f-src-chapters-chapter-5-tex)
- [`src/chapters/cover.tex`](#f-src-chapters-cover-tex)
- [`src/chapters/endorsement.tex`](#f-src-chapters-endorsement-tex)
- [`src/chapters/forewords.tex`](#f-src-chapters-forewords-tex)
- [`src/chapters/hypenation-id.tex`](#f-src-chapters-hypenation-id-tex)
- [`src/chapters/instruction.tex`](#f-src-chapters-instruction-tex)
- [`src/chapters/logo.tex`](#f-src-chapters-logo-tex)
- [`src/chapters/statement.tex`](#f-src-chapters-statement-tex)
- [`src/chapters/title-page.tex`](#f-src-chapters-title-page-tex)

**4. Konfigurasi LaTeX (style dan informasi)** (2 berkas)

- [`src/config/if-itb-thesis.sty`](#f-src-config-if-itb-thesis-sty)
- [`src/config/informations.tex`](#f-src-config-informations-tex)

**5. Bibliografi dan Referensi** (4 berkas)

- [`src/bab2_revisi.md`](#f-src-bab2-revisi-md)
- [`src/rancanganbab1.md`](#f-src-rancanganbab1-md)
- [`src/reference.md`](#f-src-reference-md)
- [`src/references.bib`](#f-src-references-bib)

**6. Skrip Pandoc / DOCX** (4 berkas)

- [`docs/pandoc/apa.csl`](#f-docs-pandoc-apa-csl)
- [`docs/pandoc/make-reference-docx.ps1`](#f-docs-pandoc-make-reference-docx-ps1)
- [`docs/pandoc/postprocess.lua`](#f-docs-pandoc-postprocess-lua)
- [`docs/pandoc/preprocess.lua`](#f-docs-pandoc-preprocess-lua)

**7. Data Contoh (CSV)** (2 berkas)

- [`src/resources/chapter-3-sample-components.csv`](#f-src-resources-chapter-3-sample-components-csv)
- [`src/resources/chapter-3-sample-requirements.csv`](#f-src-resources-chapter-3-sample-requirements-csv)

**8. Dokumentasi Repositori** (5 berkas)

- [`CHANGELOG.md`](#f-changelog-md)
- [`README.md`](#f-readme-md)
- [`docs/CATATAN-PAKAI.md`](#f-docs-catatan-pakai-md)
- [`docs/CATATAN-PERBAIKAN.md`](#f-docs-catatan-perbaikan-md)
- [`docs/TUTORIAL.md`](#f-docs-tutorial-md)

**9. Catatan Kerja dan Analisis** (27 berkas)

- [`ANALISIS_BAB1_BAB2.md`](#f-analisis-bab1-bab2-md)
- [`ANALISIS_BAB3.md`](#f-analisis-bab3-md)
- [`AUDIT_PARAGRAF_BAB2.md`](#f-audit-paragraf-bab2-md)
- [`KAJIAN_PROPOSAL_TAFFTADIA.md`](#f-kajian-proposal-tafftadia-md)
- [`PENILAIAN_BAB2.md`](#f-penilaian-bab2-md)
- [`PENILAIAN_SKRIPSI.md`](#f-penilaian-skripsi-md)
- [`PROPOSAL_PENELITIAN_TERDAHULU.md`](#f-proposal-penelitian-terdahulu-md)
- [`RENCANA_BAB2.md`](#f-rencana-bab2-md)
- [`TUGAS_BAB2.md`](#f-tugas-bab2-md)
- [`TUGAS_STATUS.md`](#f-tugas-status-md)
- [`bab2/00_PANDUAN.md`](#f-bab2-00-panduan-md)
- [`bab2/01_sub1-3.md`](#f-bab2-01-sub1-3-md)
- [`bab2/02_sub4-5.md`](#f-bab2-02-sub4-5-md)
- [`bab2/03_sub6-8.md`](#f-bab2-03-sub6-8-md)
- [`bab2/04_STRUKTUR_RINGKAS.md`](#f-bab2-04-struktur-ringkas-md)
- [`bab2/05_STRUKTUR_v3.md`](#f-bab2-05-struktur-v3-md)
- [`bahan_justifikasi/README.md`](#f-bahan-justifikasi-readme-md)
- [`bahan_justifikasi/justifikasi_bab1.md`](#f-bahan-justifikasi-justifikasi-bab1-md)
- [`bahan_justifikasi/justifikasi_bab2.md`](#f-bahan-justifikasi-justifikasi-bab2-md)
- [`bahan_justifikasi/sumber/Pemilahan_Dokumen.md`](#f-bahan-justifikasi-sumber-pemilahan-dokumen-md)
- [`bahan_justifikasi/sumber/Tabel_Review_Bahan.md`](#f-bahan-justifikasi-sumber-tabel-review-bahan-md)
- [`bahan_justifikasi/verifikasi_penelitian_terdahulu.md`](#f-bahan-justifikasi-verifikasi-penelitian-terdahulu-md)
- [`bahan_justifikasi/verifikasi_sumber_uji.md`](#f-bahan-justifikasi-verifikasi-sumber-uji-md)
- [`bahan_justifikasi/verifikasi_tabel_terdahulu.md`](#f-bahan-justifikasi-verifikasi-tabel-terdahulu-md)
- [`claude_catatan.md`](#f-claude-catatan-md)
- [`report.md`](#f-report-md)
- [`reports.md`](#f-reports-md)

---

# 1. Konfigurasi Build, CI, dan Editor

<a id="f-chktexrc"></a>

## `.chktexrc`

Ukuran 312 byte &middot; 16 baris &middot; sha256 `5dbf733ecc6c` &middot; encoding `utf-8-sig`

```text
# chktex configuration for if-itb-latex template
# Suppress stylistic warnings common in thesis templates.

CmdLine
{
    -q
    -n 1
    -n 8
    -n 11
    -n 18
    -n 24
    -n 26
    -n 27
    -n 36
    -n 44   % Aturan tabel (garis vertikal / booktabs) — gaya tabel templat memakai grid
}
```

<a id="f-github-workflows-build-yml"></a>

## `.github/workflows/build.yml`

Ukuran 2,026 byte &middot; 76 baris &middot; sha256 `271e942a4fbc` &middot; encoding `utf-8-sig`

```yaml
name: Build

on:
  push:
    branches: [main, master]
  pull_request:
    branches: [main, master]

jobs:
  validate:
    name: Validate LaTeX
    if: github.event_name == 'pull_request'
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v6

      - name: Install chktex
        run: |
          sudo apt-get update
          sudo apt-get install -y --no-install-recommends chktex

      - name: Lint LaTeX sources
        run: make validate

      - name: Verify resource files
        run: |
          test -f src/resources/chapter-3-sample-requirements.csv
          test -f src/resources/chapter-3-sample-components.csv
          test -f src/resources/cover-ganesha.jpg
          test -f src/resources/chapter-2-infrastructure-diagram.png

  build:
    name: Build PDF
    if: github.event_name == 'push'
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v6

      - name: Install TeX Live
        run: |
          sudo apt-get update
          sudo apt-get install -y --no-install-recommends \
            texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended \
            texlive-bibtex-extra biber xzdec texlive-lang-other latexmk

      - name: Build thesis
        run: make build

      - name: Upload PDF artifact
        uses: actions/upload-artifact@v6
        with:
          name: thesis-pdf
          path: dist/thesis.pdf
          if-no-files-found: error

  build-docx:
    name: Build DOCX
    if: github.event_name == 'push'
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v6

      - name: Install pandoc
        run: |
          sudo apt-get update
          sudo apt-get install -y --no-install-recommends pandoc

      - name: Build DOCX
        run: make docx

      - name: Upload DOCX artifact
        uses: actions/upload-artifact@v6
        with:
          name: thesis-docx
          path: dist/thesis.docx
          if-no-files-found: error
```

<a id="f-gitignore"></a>

## `.gitignore`

Ukuran 191 byte &middot; 22 baris &middot; sha256 `d29c07d72745` &middot; encoding `utf-8-sig`

```gitignore
*.aux
*.toc
*.tex~
*.log
*.lof
*.idx
*.bbl
*.blg
*.lot
*.ilg
*.lol
*.out
*.ind
*.backup
*.synctex.gz
texmf
thesis.pdf
.directory
dist/*
build/*
_docx*.tex
_excerpt*.tex
```

<a id="f-vscode-settings-json"></a>

## `.vscode/settings.json`

Ukuran 173 byte &middot; 7 baris &middot; sha256 `b0c72f0d77de` &middot; encoding `utf-8-sig`

```json
{
    "latex-workshop.linting.chktex.exec.args": [
        "--miktex-disable-maintenance",
        "--miktex-disable-diagnose",
        "--miktex-disable-installer"
    ]
}
```

<a id="f-makefile"></a>

## `Makefile`

Ukuran 1,177 byte &middot; 40 baris &middot; sha256 `96279cf7ce3d` &middot; encoding `utf-8-sig`

```makefile
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
```

<a id="f-docx-bat"></a>

## `docx.bat`

Ukuran 488 byte &middot; 16 baris &middot; sha256 `3abc72f08dda` &middot; encoding `utf-8-sig`

```bat
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
```

<a id="f-docx-ps1"></a>

## `docx.ps1`

Ukuran 2,527 byte &middot; 73 baris &middot; sha256 `6bae74de097e` &middot; encoding `utf-8-sig`

```powershell
# docx.ps1 - Ekspor seluruh skripsi ke Word (.docx) menggunakan pandoc.
#
# Cara pakai:
#   .\docx.ps1                 -> dist/thesis.docx
#   .\docx.ps1 -Nama "draft"   -> dist/draft.docx
#
# Prasyarat: pandoc 3.x terpasang (https://pandoc.org/installing.html).
# Skrip ini:
#   1. menjalankan praproses Lua (ekspansi \input & \csvautotabular),
#   2. mengonversi ke DOCX dengan gaya APA dan reference.docx UM,
#   3. membersihkan berkas sementara.

[CmdletBinding()]
param(
    [string]$Nama = "thesis"
)

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location -LiteralPath $root

function Get-PandocPath {
    $cmd = Get-Command pandoc -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Source }
    $candidates = @(
        (Join-Path $env:LOCALAPPDATA 'Pandoc\pandoc.exe'),
        (Join-Path $env:ProgramFiles 'Pandoc\pandoc.exe')
    )
    foreach ($c in $candidates) { if (Test-Path -LiteralPath $c) { return $c } }
    throw "pandoc tidak ditemukan. Pasang dari https://pandoc.org/installing.html"
}

# Segarkan PATH agar pandoc yang baru dipasang langsung terdeteksi.
$env:Path = [Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' +
            [Environment]::GetEnvironmentVariable('Path', 'User')

$pandoc = Get-PandocPath
$dist = Join-Path $root 'dist'
$src = Join-Path $root 'src'
New-Item -ItemType Directory -Path $dist -Force | Out-Null

$out = Join-Path $dist ("{0}.docx" -f $Nama)
$temp = Join-Path $src '_docx.tex'

Push-Location -LiteralPath $src
try {
    Write-Host "Praproses sumber LaTeX..." -ForegroundColor Cyan
    & $pandoc lua ../docs/pandoc/preprocess.lua thesis-docx.tex _docx.tex
    if ($LASTEXITCODE -ne 0) { throw "Praproses gagal (kode $LASTEXITCODE)." }

    Write-Host "Mengonversi ke DOCX..." -ForegroundColor Cyan
    & $pandoc _docx.tex `
        -f latex -t docx `
        --standalone `
        --toc `
        --reference-doc=../docs/pandoc/reference.docx `
        --lua-filter=../docs/pandoc/postprocess.lua `
        --citeproc `
        --bibliography=references.bib `
        --csl=../docs/pandoc/apa.csl `
        --metadata "toc-title=DAFTAR ISI" `
        --metadata "reference-section-title=DAFTAR RUJUKAN" `
        --resource-path=. `
        -o $out
    if ($LASTEXITCODE -ne 0) { throw "Konversi gagal (kode $LASTEXITCODE)." }
}
finally {
    Remove-Item -LiteralPath $temp -Force -ErrorAction SilentlyContinue
    Pop-Location
}

Write-Host ""
Write-Host ("SELESAI: {0}" -f $out) -ForegroundColor Green
```

<a id="f-excerpt-bat"></a>

## `excerpt.bat`

Ukuran 1,002 byte &middot; 27 baris &middot; sha256 `a1e6c80d888b` &middot; encoding `utf-8-sig`

```bat
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
```

<a id="f-excerpt-ps1"></a>

## `excerpt.ps1`

Ukuran 25,943 byte &middot; 594 baris &middot; sha256 `961d73fff29a` &middot; encoding `utf-8-sig`

```powershell
# excerpt.ps1 - Ekspor selektif bagian skripsi ke PDF atau Word (DOCX).
#
# Cara pakai:
#   .\excerpt.ps1                 -> mode interaktif (menu pilihan)
#   .\excerpt.ps1 -Pilih "bab2"   -> seluruh BAB II (PDF)
#   .\excerpt.ps1 -Pilih "bab1,bab3"
#   .\excerpt.ps1 -Pilih "bab2[1]"            -> hanya section 1 (Dasar Teori) BAB II
#   .\excerpt.ps1 -Pilih "bab2[1,2]"          -> section 1 dan 2
#   .\excerpt.ps1 -Pilih "ringkasan,bab2[1]"  -> campur halaman awal + bagian bab
#   .\excerpt.ps1 -Pilih "lamp1"              -> Lampiran 1
#   .\excerpt.ps1 -Pilih "bab2" -Nama "bab2-untuk-review"  -> nama file bebas
#   .\excerpt.ps1 -Pilih "bab2" -Format docx  -> hasil Word (dist/excerpt-bab2.docx)
#
# Format keluaran: -Format pdf (bawaan) atau -Format docx.
# Ekspor DOCX memerlukan pandoc 3.x dan mengikuti gaya DOCX skripsi
# (lihat docs/TUTORIAL.md bagian "Ekspor ke Word").
#
# Kode unit yang tersedia (urutan = urutan di thesis.tex):
#   cover logo title approval endorsement statement
#   ringkasan summary forewords
#   bab1..bab5            (bab2[1,2] untuk pilih section)
#   lamp1..lamp2          (Lampiran)
#   bio                   (Riwayat Hidup)

[CmdletBinding()]
param(
    [string]$Pilih = "",
    [string]$Nama = "",
    [ValidateSet('pdf', 'docx', 'both')]
    [string]$Format = "pdf"
)

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location -LiteralPath $root

# ---------------------------------------------------------------------
# Katalog unit (urutan kanonik = urutan thesis.tex)
# ---------------------------------------------------------------------
$catalog = @(
    @{ key = 'cover';       kind = 'front';  file = 'chapters/cover';          label = 'Halaman Sampul' }
    @{ key = 'logo';        kind = 'front';  file = 'chapters/logo';           label = 'Lembar Logo' }
    @{ key = 'title';       kind = 'front';  file = 'chapters/title-page';     label = 'Halaman Judul' }
    @{ key = 'approval';    kind = 'front';  file = 'chapters/approval';       label = 'Persetujuan Pembimbing' }
    @{ key = 'endorsement'; kind = 'front';  file = 'chapters/endorsement';    label = 'Pengesahan' }
    @{ key = 'statement';   kind = 'front';  file = 'chapters/statement';      label = 'Pernyataan Keaslian' }
    @{ key = 'ringkasan';   kind = 'front';  file = 'chapters/abstract-id';    label = 'Ringkasan (Indonesia)' }
    @{ key = 'summary';     kind = 'front';  file = 'chapters/abstract-en';    label = 'Summary (Inggris)' }
    @{ key = 'forewords';   kind = 'front';  file = 'chapters/forewords';      label = 'Kata Pengantar' }
    @{ key = 'daftarisi';    kind = 'list';   ext = 'toc';  label = 'Daftar Isi' }
    @{ key = 'daftartabel';  kind = 'list';   ext = 'lot';  label = 'Daftar Tabel' }
    @{ key = 'daftargambar'; kind = 'list';   ext = 'lof';  label = 'Daftar Gambar' }
    @{ key = 'daftarrumus';  kind = 'list';   ext = 'rum';  label = 'Daftar Rumus' }
    @{ key = 'bab1';        kind = 'bab';    num = 1;  file = 'chapters/chapter-1'; label = 'Bab I — Pendahuluan' }
    @{ key = 'bab2';        kind = 'bab';    num = 2;  file = 'chapters/chapter-2'; label = 'Bab II — Tinjauan Pustaka' }
    @{ key = 'bab3';        kind = 'bab';    num = 3;  file = 'chapters/chapter-3'; label = 'Bab III — Analisis dan Perancangan' }
    @{ key = 'bab4';        kind = 'bab';    num = 4;  file = 'chapters/chapter-4'; label = 'Bab IV — Evaluasi dan Pembahasan' }
    @{ key = 'bab5';        kind = 'bab';    num = 5;  file = 'chapters/chapter-5'; label = 'Bab V — Penutup' }
    @{ key = 'pustaka';      kind = 'bib';    label = 'Daftar Rujukan' }
    @{ key = 'lamp1';       kind = 'lamp';   num = 1;  file = 'chapters/appendix-1'; label = 'Lampiran 1 — Instrumen Pengujian' }
    @{ key = 'lamp2';       kind = 'lamp';   num = 2;  file = 'chapters/appendix-2'; label = 'Lampiran 2 — Rincian Kasus Uji' }
    @{ key = 'bio';         kind = 'bio';    file = 'chapters/biography';        label = 'Riwayat Hidup' }
)

# ---------------------------------------------------------------------
# Baca judul section sebuah bab (untuk menu & slicing)
# ---------------------------------------------------------------------
function Get-BabSections {
    param([string]$File)
    $lines = [System.IO.File]::ReadAllLines((Join-Path $root "src\$File.tex"))
    $result = New-Object System.Collections.Generic.List[object]
    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($lines[$i] -match '^\s*\\section\*?\{') {
            $title = ($lines[$i] -replace '^\s*\\section\*?\{', '') -replace '\}.*$', ''
            $result.Add(@{ line = $i; title = $title })
        }
    }
    return $result.ToArray()
}

# Slug nama file dari teks (hapus spasi & karakter khusus)
function Get-Slug {
    param([string]$Text)
    # Tanda hubung dan garis bawah dipertahankan agar nama berkas tetap terbaca
    # (mis. "awal-sampai-bab3"), bukan digabung menjadi satu kata.
    $t = $Text -replace '[^A-Za-z0-9_-]', ''
    $t = $t.Trim('-', '_')
    if ($t.Length -eq 0) { $t = 'bagian' }
    return $t
}

# ---------------------------------------------------------------------
# Tampilkan menu katalog
# ---------------------------------------------------------------------
function Show-Menu {
    Write-Host ""
    Write-Host "=== EKSPOR BAGIAN SKRIPSI (PDF / Word) ===" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Ketik kode pilihan, pisahkan dengan koma. Contoh: bab2  atau  bab1,ringkasan  atau  bab2[1,2]"
    Write-Host ""
    Write-Host "--- Halaman awal ---"
    foreach ($u in $catalog) { if ($u.kind -eq 'front') { Write-Host ("  {0,-12} {1}" -f $u.key, $u.label) } }
    Write-Host "--- Bab (utuh atau pilih section: babN[a,b]) ---"
    foreach ($u in $catalog) { if ($u.kind -eq 'bab') { Write-Host ("  {0,-12} {1}" -f $u.key, $u.label) } }
    Write-Host "--- Daftar & rujukan ---"
    foreach ($u in $catalog) { if ($u.kind -eq 'list' -or $u.kind -eq 'bib') { Write-Host ("  {0,-12} {1}" -f $u.key, $u.label) } }
    Write-Host "--- Lampiran & lain ---"
    foreach ($u in $catalog) { if ($u.kind -eq 'lamp' -or $u.kind -eq 'bio') { Write-Host ("  {0,-12} {1}" -f $u.key, $u.label) } }
    Write-Host ""
}

# ---------------------------------------------------------------------
# Parsing pilihan
# ---------------------------------------------------------------------
function Convert-Pilihan {
    param([string]$Raw)
    $items = @()
    # pecah koma, tapi abaikan koma di dalam kurung siku [a,b]
    $tokens = New-Object System.Collections.Generic.List[string]
    $depth = 0; $cur = ''
    foreach ($ch in $Raw.ToCharArray()) {
        if ($ch -eq '[') { $depth++ }
        elseif ($ch -eq ']') { $depth-- }
        if ($ch -eq ',' -and $depth -eq 0) { $tokens.Add($cur); $cur = '' }
        else { $cur += $ch }
    }
    $tokens.Add($cur)

    foreach ($tok in $tokens) {
        $tok = $tok.Trim()
        if ($tok -eq '') { continue }
        if ($tok -match '^(bab\d+)\[([\d,\s]+)\]$') {
            $key = $Matches[1]
            $secs = @()
            foreach ($s in ($Matches[2] -split ',')) { $s = $s.Trim(); if ($s -ne '') { $secs += [int]$s } }
            $items += @{ key = $key; sections = $secs }
        }
        elseif ($tok -match '^bab\d+$' -or $tok -in $catalog.key) {
            $items += @{ key = $tok; sections = $null }
        }
        else {
            throw "Kode tidak dikenal: $tok"
        }
    }
    return $items
}

# ---------------------------------------------------------------------
# Slice bagian bab -> file _excerpt-partN.tex
# ---------------------------------------------------------------------
function New-BabPartFile {
    param($Bab, [int[]]$SecIdx)
    $srcFile = Join-Path $root "src\$($Bab.file).tex"
    $lines = [System.IO.File]::ReadAllLines($srcFile)

    $secs = @(Get-BabSections -File $Bab.file)
    if ($secs.Count -eq 0) { throw "Tidak ada section di $($Bab.file)" }

    $chosen = @()
    foreach ($ix in $SecIdx) {
        if ($ix -lt 1 -or $ix -gt $secs.Count) { throw "Nomor section $ix di luar jangkauan ($($Bab.file): 1..$($secs.Count))" }
        $chosen += $secs[$ix - 1]
    }
    # urutkan sesuai posisi asli di file
    $chosen = @($chosen | Sort-Object -Property @{ Expression = { $_.line } })

    $firstSecLine = $secs[0].line
    $out = New-Object System.Collections.Generic.List[string]
    # bagian atas file: komentar + \chapter + intro sampai sebelum section pertama
    for ($i = 0; $i -lt $firstSecLine; $i++) { $out.Add($lines[$i]) }

    for ($c = 0; $c -lt $chosen.Count; $c++) {
        $start = $chosen[$c].line
        # potongan berakhir sebelum \section berikutnya dalam FILE ASLI
        $end = $lines.Count - 1
        foreach ($s in $secs) {
            if ($s.line -gt $start) { $end = $s.line - 1; break }
        }
        # jika ada celah antara potongan sebelumnya dan potongan ini, lewati
        for ($i = $start; $i -le $end; $i++) { $out.Add($lines[$i]) }
    }

    $partPath = Join-Path $root "src\_excerpt-part$($Bab.num).tex"
    [System.IO.File]::WriteAllLines($partPath, $out, (New-Object System.Text.UTF8Encoding($false)))
    return $partPath
}

# ---------------------------------------------------------------------
# Resolve pilihan -> urutan unit kanonik + info
# ---------------------------------------------------------------------
function Resolve-Seleksi {
    param($Items)
    $units = @()
    $babMap = @{}
    foreach ($it in $Items) {
        $cat = $catalog | Where-Object { $_.key -eq $it.key }
        if (-not $cat) { throw "Kode tidak dikenal: $($it.key)" }
        if ($cat.kind -eq 'bab' -and $it.sections) {
            if (-not $babMap.ContainsKey($cat.key)) { $babMap[$cat.key] = @() }
            $babMap[$cat.key] += $it.sections
        }
        else {
            $units += @{ cat = $cat; full = $true }
        }
    }
    # bab yang dipilih sebagian -> dijadikan unit khusus
    foreach ($k in $babMap.Keys) {
        $cat = $catalog | Where-Object { $_.key -eq $k }
        $units += @{ cat = $cat; full = $false; sections = $babMap[$k] }
    }
    # urutkan sesuai urutan katalog
    $sorted = New-Object System.Collections.Generic.List[object]
    foreach ($cat in $catalog) {
        foreach ($u in $units) {
            if ($u.cat.key -eq $cat.key) { $sorted.Add($u) }
        }
    }
    return $sorted.ToArray()
}

# ---------------------------------------------------------------------
# Bangun driver LaTeX
# ---------------------------------------------------------------------
function New-Driver {
    param($Units, [string]$Format = 'pdf')
    $isDocx = ($Format -eq 'docx')
    $sb = New-Object System.Text.StringBuilder
    [void]$sb.AppendLine('% Berkas sementara dibuat oleh excerpt.ps1')
    [void]$sb.AppendLine('\documentclass[12pt,a4paper,onecolumn,oneside,final]{report}')
    if ($isDocx) {
        # Driver DOCX: tanpa .sty (tidak dikenali pandoc). Nomor bab dijaga
        # lewat penanda @@CHAPSTART:n@@ yang dibaca docs/pandoc/postprocess.lua.
        [void]$sb.AppendLine('\input{config/informations}')
    }
    else {
        [void]$sb.AppendLine('\input{config/if-itb-thesis.sty}')
        [void]$sb.AppendLine('\input{config/informations}')
        [void]$sb.AppendLine('\bibliography{references}')
    }
    [void]$sb.AppendLine('\begin{document}')
    # Nomor halaman: pilihan yang dimulai dari halaman tata letak memakai
    # romawi (sampul s.d. kata pengantar), lalu arabic mulai 1 pada bab.
    $frontKeys = @('cover', 'logo', 'title')
    $startsAtFront = ($Units.Count -gt 0) -and ($Units[0].cat.kind -eq 'front')
    $romanOpen = $false
    $romawiDitutup = $false
    $arabicStarted = $false
    if (-not $isDocx) {
        if ($startsAtFront) {
            [void]$sb.AppendLine('\pagenumbering{roman}')
            [void]$sb.AppendLine('\setcounter{page}{1}')
            $romanOpen = $true
        }
        else {
            [void]$sb.AppendLine('\pagenumbering{arabic}')
            [void]$sb.AppendLine('\setcounter{page}{1}')
            [void]$sb.AppendLine('\pagestyle{plain}')
            $arabicStarted = $true
        }
    }

    $hasBab = $false
    $hasLamp = $false
    foreach ($u in $Units) {
        if ($u.cat.kind -eq 'bab') { $hasBab = $true }
        if ($u.cat.kind -eq 'lamp') { $hasLamp = $true }
    }

    # Penanda DOCX harus berdiri sebagai paragraf sendiri (dipisah baris
    # kosong) agar dibaca utuh oleh docs/pandoc/postprocess.lua.
    function Add-Marker([string]$Marker) {
        [void]$sb.AppendLine('')
        [void]$sb.AppendLine($Marker)
        [void]$sb.AppendLine('')
    }
    function Add-ChapterStart([int]$Num) {
        if ($isDocx) { Add-Marker "@@CHAPSTART:$Num@@" }
        else { [void]$sb.AppendLine("\setcounter{chapter}{$($Num - 1)}") }
    }

    $appendixDone = $false
    $bibWritten = $false
    foreach ($u in $Units) {
        $cat = $u.cat
        # Sampul/lambang/halaman judul tidak bernomor; halaman berikutnya = i.
        if (-not $isDocx -and $romanOpen -and -not $romawiDitutup -and ($frontKeys -notcontains $cat.key)) {
            [void]$sb.AppendLine('\setcounter{page}{1}')
            [void]$sb.AppendLine('\pagestyle{plain}')
            $romawiDitutup = $true
        }
        # Bab pertama memulai nomor arabic dari 1.
        if (-not $isDocx -and $cat.kind -eq 'bab' -and -not $arabicStarted) {
            [void]$sb.AppendLine('\clearpage')
            [void]$sb.AppendLine('\pagestyle{fancy}')
            [void]$sb.AppendLine('\pagenumbering{arabic}')
            [void]$sb.AppendLine('\setcounter{page}{1}')
            $arabicStarted = $true
        }
        switch ($cat.kind) {
            'front' {
                [void]$sb.AppendLine("\input{$($cat.file)}")
            }
            'bab' {
                Add-ChapterStart $cat.num
                if ($u.full) {
                    [void]$sb.AppendLine("\input{$($cat.file)}")
                }
                else {
                    $part = Join-Path $root ("src\_excerpt-part{0}.tex" -f $cat.num)
                    if (-not (Test-Path $part)) {
                        $part = New-BabPartFile -Bab $cat -SecIdx $u.sections
                    }
                    [void]$sb.AppendLine("\input{_excerpt-part$($cat.num)}")
                }
            }
            'list' {
                if (-not $isDocx) {
                    switch ($cat.ext) {
                        'toc' { [void]$sb.AppendLine('\tableofcontents') }
                        'lot' { [void]$sb.AppendLine('\listoftables') }
                        'lof' { [void]$sb.AppendLine('\listoffigures') }
                        'rum' { [void]$sb.AppendLine('\listofrumus') }
                    }
                }
                # DOCX: hanya Daftar Isi yang bisa dibuat pandoc (--toc).
            }
            'bib' {
                if ($isDocx) {
                    Add-Marker '@@REFS@@'
                }
                else {
                    # heading=bibintoc: judul sekaligus entri Daftar Isi pada
                    # halaman pertama daftar rujukan.
                    [void]$sb.AppendLine('\printbibliography[heading=bibintoc, title={Daftar Rujukan}]')
                }
                $bibWritten = $true
            }
            'lamp' {
                if (-not $appendixDone) {
                    if ($isDocx) {
                        # Daftar Rujukan mendahului lampiran (urutan UM).
                        if ($hasBab -and -not $bibWritten) {
                            Add-Marker '@@REFS@@'
                            $bibWritten = $true
                        }
                        Add-Marker '@@APPENDIX@@'
                    }
                    else {
                        [void]$sb.AppendLine('\appendix')
                        [void]$sb.AppendLine('\renewcommand{\thechapter}{\arabic{chapter}}')
                        [void]$sb.AppendLine('\titleformat{\chapter}[display]{\normalsize\bfseries\centering}{Lampiran\ \thechapter}{0pt}{\MakeUppercase}')
                    }
                    $appendixDone = $true
                }
                Add-ChapterStart $cat.num
                [void]$sb.AppendLine("\input{$($cat.file)}")
            }
            'bio' {
                [void]$sb.AppendLine("\input{$($cat.file)}")
            }
        }
        # PDF: Daftar Rujukan setelah bab terakhir (sebelum lampiran) jika ada bab
        if (-not $isDocx -and $hasBab -and $cat.kind -eq 'lamp' -and -not $bibWritten) {
            [void]$sb.AppendLine('\printbibliography[heading=bibintoc, title={Daftar Rujukan}]')
            $bibWritten = $true
        }
    }

    # Daftar Rujukan di akhir bila hanya lampiran/isi tanpa bab yang urutannya belum menulis
    if (-not $bibWritten -and ($hasBab -or $hasLamp)) {
        if ($isDocx) {
            Add-Marker '@@REFS@@'
        }
        else {
            [void]$sb.AppendLine('\printbibliography[heading=bibintoc, title={Daftar Rujukan}]')
        }
    }

    [void]$sb.AppendLine('\end{document}')

    $drvPath = Join-Path $root 'src\_excerpt.tex'
    [System.IO.File]::WriteAllText($drvPath, $sb.ToString(), (New-Object System.Text.UTF8Encoding($false)))
    return $drvPath
}

# ---------------------------------------------------------------------
# Nama output otomatis dari pilihan
# ---------------------------------------------------------------------
function New-NamaOutput {
    param($Units)
    $parts = @()
    foreach ($u in $Units) {
        $key = $u.cat.key
        if (-not $u.full -and $u.cat.kind -eq 'bab') {
            $secs = @(Get-BabSections -File $u.cat.file)
            $slug = ($u.sections | ForEach-Object { Get-Slug $secs[$_ - 1].title }) -join '-'
            $parts += "$key-$slug"
        }
        else {
            $parts += $key
        }
    }
    return ($parts -join '-')
}

# ---------------------------------------------------------------------
# Bangun PDF via latexmk
# ---------------------------------------------------------------------
function Invoke-Build {
    param([string]$DrvPath, [string]$OutBase)
    New-Item -ItemType Directory -Path (Join-Path $root 'build') -Force | Out-Null
    New-Item -ItemType Directory -Path (Join-Path $root 'dist') -Force | Out-Null

    $buildAbs = Join-Path $root 'build'
    $env:Path = [Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' + [Environment]::GetEnvironmentVariable('Path', 'User')

    # Bersihkan keluaran lama agar verifikasi memakai berkas yang segar.
    $pdf = Join-Path $buildAbs '_excerpt.pdf'
    Remove-Item -LiteralPath $pdf -Force -ErrorAction SilentlyContinue
    $mkOut = Join-Path $buildAbs '_excerpt-latexmk.out'
    Remove-Item -LiteralPath $mkOut -Force -ErrorAction SilentlyContinue

    $started = Get-Date
    Push-Location (Join-Path $root 'src')
    try {
        $latexArgs = @('-pdf', '-interaction=nonstopmode', '-halt-on-error', "-outdir=$buildAbs", '_excerpt.tex')
        # Alihkan SEMUA aliran ke berkas agar keluaran progres/stderr latexmk
        # tidak diperlakukan sebagai error oleh $ErrorActionPreference='Stop'.
        $prevEAP = $ErrorActionPreference
        $ErrorActionPreference = 'Continue'
        & latexmk @latexArgs *> $mkOut
        $code = $LASTEXITCODE
        $ErrorActionPreference = $prevEAP
    }
    finally {
        Pop-Location
    }

    # Verifikasi berdasarkan artefak, bukan hanya kode keluar: latexmk pada
    # MiKTeX kadang melaporkan kode aneh (-1) walau PDF berhasil dibuat.
    $ok = (Test-Path $pdf) -and ((Get-Item $pdf).LastWriteTime -ge $started)
    if (-not $ok) {
        $tail = ''
        if (Test-Path $mkOut) {
            $tail = (Get-Content $mkOut -Tail 15 -ErrorAction SilentlyContinue) -join [Environment]::NewLine
        }
        throw "latexmk gagal (kode $code) dan PDF tidak terbentuk. Lihat build\_excerpt.log.`n$tail"
    }

    $dest = Join-Path $root "dist\excerpt-$OutBase.pdf"
    Copy-Item -LiteralPath $pdf -Destination $dest -Force
    return $dest
}

# ---------------------------------------------------------------------
# Bangun DOCX via pandoc
# ---------------------------------------------------------------------
function Get-PandocPath {
    $cmd = Get-Command pandoc -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Source }
    $candidates = @(
        (Join-Path $env:LOCALAPPDATA 'Pandoc\pandoc.exe'),
        (Join-Path $env:ProgramFiles 'Pandoc\pandoc.exe')
    )
    foreach ($c in $candidates) { if (Test-Path -LiteralPath $c) { return $c } }
    throw "pandoc tidak ditemukan. Pasang dari https://pandoc.org/installing.html"
}

function Invoke-BuildDocx {
    param([string]$DrvPath, [string]$OutBase, [switch]$WithToc)
    New-Item -ItemType Directory -Path (Join-Path $root 'dist') -Force | Out-Null
    $env:Path = [Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' + [Environment]::GetEnvironmentVariable('Path', 'User')
    $pandoc = Get-PandocPath
    $dest = Join-Path $root "dist\excerpt-$OutBase.docx"

    Push-Location (Join-Path $root 'src')
    try {
        # Ekspansi \input & penanda struktur agar dikenali pandoc.
        & $pandoc lua ../docs/pandoc/preprocess.lua _excerpt.tex _excerpt-docx.tex
        if ($LASTEXITCODE -ne 0) { throw "Praproses DOCX gagal (kode $LASTEXITCODE)." }

        $pandocArgs = @(
            '_excerpt-docx.tex',
            '-f', 'latex', '-t', 'docx',
            '--standalone'
        )
        if ($WithToc) { $pandocArgs += '--toc' }
        $pandocArgs += @(
            '--reference-doc=../docs/pandoc/reference.docx',
            '--lua-filter=../docs/pandoc/postprocess.lua',
            '--citeproc',
            '--bibliography=references.bib',
            '--csl=../docs/pandoc/apa.csl',
            '--metadata', 'reference-section-title=DAFTAR RUJUKAN',
            '--resource-path=.',
            '-o', $dest
        )
        & $pandoc @pandocArgs
        if ($LASTEXITCODE -ne 0) { throw "Konversi DOCX gagal (kode $LASTEXITCODE)." }
    }
    finally {
        Pop-Location
    }

    if (-not (Test-Path $dest)) { throw "DOCX tidak ditemukan: $dest" }
    return $dest
}

# ---------------------------------------------------------------------
# Bersihkan berkas sementara
# ---------------------------------------------------------------------
function Clear-Sementara {
    # log dibiarkan untuk debugging; hanya bersihkan file kerja LaTeX
    Get-ChildItem (Join-Path $root 'src') -Filter '_excerpt*' -File | Where-Object { $_.Extension -ne '.log' } | Remove-Item -Force
    Get-ChildItem (Join-Path $root 'build') -Filter '_excerpt*' -File -ErrorAction SilentlyContinue | Where-Object { $_.Extension -ne '.log' } | Remove-Item -Force
}

# =====================================================================
# Main
# =====================================================================
try {
    $items = @()
    if ($Pilih.Trim() -ne '') {
        $items = Convert-Pilihan -Raw $Pilih
    }
    else {
        Show-Menu
        $ans = Read-Host 'Pilihan (koma)'
        $items = Convert-Pilihan -Raw $ans
        # prompt tambahan untuk bab yang bisa dipecah
        foreach ($it in $items) {
            if ($it.key -match '^bab\d+$' -and -not $it.sections) {
                $cat = $catalog | Where-Object { $_.key -eq $it.key }
                Write-Host ""
                Write-Host ("Bab terpilih: {0} ({1})" -f $cat.key, $cat.label)
                Write-Host "  0 = seluruh bab"
                $secs = @(Get-BabSections -File $cat.file)
                for ($s = 0; $s -lt $secs.Count; $s++) {
                    Write-Host ("  {0} = {1}" -f ($s + 1), $secs[$s].title)
                }
                $sub = Read-Host 'Pilih section (0 utk seluruh, koma utk banyak)'
                if ($sub.Trim() -ne '' -and $sub.Trim() -ne '0') {
                    $secList = @()
                    foreach ($s in ($sub -split ',')) { $s = $s.Trim(); if ($s -ne '') { $secList += [int]$s } }
                    $it.sections = $secList
                }
            }
        }
        # pilih format keluaran (bawaan PDF)
        Write-Host ""
        Write-Host "Format keluaran:  1 = PDF   2 = Word (DOCX)   3 = Keduanya"
        $fmtAns = (Read-Host 'Pilih format (1/2/3, kosong = PDF)').Trim()
        switch ($fmtAns) {
            '2' { $Format = 'docx' }
            '3' { $Format = 'both' }
            default { $Format = 'pdf' }
        }
    }

    $units = @(Resolve-Seleksi -Items $items)
    if ($units.Count -eq 0) { throw 'Tidak ada pilihan valid.' }

    $base = if ($Nama.Trim() -ne '') { (Get-Slug $Nama) } else { New-NamaOutput -Units $units }
    $ringkasan = ($units | ForEach-Object { if ($_.full) { $_.cat.key } else { "$($_.cat.key)[$($_.sections -join ',')]" } }) -join ', '

    $hasToc = [bool](@($units | Where-Object { $_.cat.kind -eq 'list' -and $_.cat.ext -eq 'toc' }).Count -gt 0)
    $daftarTakDidukung = @($units | Where-Object { $_.cat.kind -eq 'list' -and $_.cat.ext -ne 'toc' })
    if ($Format -ne 'pdf' -and $daftarTakDidukung.Count -gt 0) {
        Write-Host 'Peringatan: Daftar Tabel/Gambar/Rumus hanya dibuat pada keluaran PDF.' -ForegroundColor Yellow
    }

    $formats = if ($Format -eq 'both') { @('pdf', 'docx') } else { @($Format) }
    $hasil = @()
    foreach ($fmt in $formats) {
        $drv = New-Driver -Units $units -Format $fmt
        Write-Host ""
        Write-Host ("Membangun ({0}): {1}  ->  dist/excerpt-{2}.{0}" -f $fmt, $ringkasan, $base)
        if ($fmt -eq 'docx') {
            $hasil += Invoke-BuildDocx -DrvPath $drv -OutBase $base -WithToc:$hasToc
        }
        else {
            $hasil += Invoke-Build -DrvPath $drv -OutBase $base
        }
    }
    Write-Host ""
    foreach ($h in $hasil) { Write-Host ("SELESAI: {0}" -f $h) -ForegroundColor Green }
}
catch {
    Write-Host ("GAGAL: {0}" -f $_.Exception.Message) -ForegroundColor Red
    exit 1
}
finally {
    Clear-Sementara
}
```

<a id="f-make-bat"></a>

## `make.bat`

Ukuran 650 byte &middot; 15 baris &middot; sha256 `f5549774f237` &middot; encoding `utf-8-sig`

```bat
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
```

---

# 2. Berkas Utama LaTeX

<a id="f-src-t8-tex"></a>

## `src/_t8.tex`

Ukuran 311 byte &middot; 14 baris &middot; sha256 `5b1dbb8c5571` &middot; encoding `utf-8-sig`

```latex
\documentclass[12pt,a4paper,onecolumn,oneside,final]{report}
\input{config/if-itb-thesis.sty}
\input{config/informations}
\begin{document}
\pagenumbering{roman}
\tableofcontents
\clearpage
\pagenumbering{arabic}
\chapter{Pendahuluan}
\section{Latar Belakang}
Teks.
\chapter{Kajian Pustaka}
Teks.
\end{document}
```

<a id="f-src-paper-tex"></a>

## `src/paper.tex`

Ukuran 0 byte &middot; 0 baris &middot; sha256 `e3b0c44298fc` &middot; encoding `utf-8-sig`

_(berkas kosong)_

<a id="f-src-thesis-docx-tex"></a>

## `src/thesis-docx.tex`

Ukuran 2,018 byte &middot; 54 baris &middot; sha256 `e796d84abf7b` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Driver khusus konversi ke DOCX (pandoc).
%
% JANGAN dipakai untuk membangun PDF. Berkas ini sengaja TIDAK memuat
% if-itb-thesis.sty, daftar isi/tabel/gambar, atau \printbibliography
% karena hal-hal tersebut tidak dikenali pandoc dan ditangani oleh
% opsi pandoc (--toc, --citeproc) serta reference.docx.
%
% Halaman tata letak (sampul, logo, halaman judul, persetujuan,
% pengesahan, pernyataan) SENGAJA tidak disertakan karena hanya berupa
% tata letak LaTeX murni yang tidak dapat direproduksi di DOCX. Halaman
% tersebut tetap ada di PDF (thesis.tex). DOCX berfokus pada isi:
% Ringkasan, Summary, Kata Pengantar, bab, daftar rujukan, lampiran,
% dan riwayat hidup.
%
% PENTING: Jaga agar daftar \input di bawah tetap sinkron dengan
% src/thesis.tex. Bila menambah/menghapus bab, ubah keduanya.
%
%--------------------------------------------------------------------%

\documentclass[12pt,a4paper,onecolumn,oneside,final]{report}

\input{config/informations}

\begin{document}

    %------------------------------------------------------------%
    % Bagian awal (isi; halaman tata letak sengaja dilewati)
    %------------------------------------------------------------%
    \input{chapters/abstract-id}   % Ringkasan
    \input{chapters/abstract-en}   % Summary
    \input{chapters/forewords}     % Kata Pengantar

    %------------------------------------------------------------%
    % Bagian inti
    %------------------------------------------------------------%
    \input{chapters/chapter-1}
    \input{chapters/chapter-2}
    \input{chapters/chapter-3}
    \input{chapters/chapter-4}
    \input{chapters/chapter-5}

    %------------------------------------------------------------%
    % Lampiran & riwayat hidup
    %------------------------------------------------------------%
    \appendix

    \input{chapters/appendix-1}
    \input{chapters/appendix-2}

    \input{chapters/biography}     % Riwayat Hidup

\end{document}
```

<a id="f-src-thesis-tex"></a>

## `src/thesis.tex`

Ukuran 3,132 byte &middot; 90 baris &middot; sha256 `48ecfae47fbf` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Berkas utama templat Skripsi Universitas Negeri Malang.
%
% Diadaptasi dari templat Tesis IF-ITB (Petra Barus, Peb Ruswono Aryan)
% mengikuti Pedoman Penulisan Karya Ilmiah UM Edisi 2017.
%
%--------------------------------------------------------------------%

\documentclass[12pt, a4paper, onecolumn, oneside, final]{report}

\input{config/if-itb-thesis.sty}
\input{config/informations}

\bibliography{references}

\begin{document}

    \title{\judul}
    \author{\penulis}
    \date{}

    %----------------------------------------------------------------%
    % Bagian awal — nomor halaman romawi, tengah bawah.
    %----------------------------------------------------------------%
    \pagenumbering{roman}
    \setcounter{page}{1}

    % Halaman sampul, lambang, dan halaman judul tidak bernomor dan tidak
    % dihitung, sehingga Lembar Persetujuan menjadi halaman i.
    \input{chapters/cover}
    \input{chapters/logo}
    \input{chapters/title-page}

    \setcounter{page}{1}
    \pagestyle{plain}

    \input{chapters/approval}      % Lembar Persetujuan Pembimbing
    \input{chapters/endorsement}   % Lembar Persetujuan dan Pengesahan
    \input{chapters/statement}     % Pernyataan Keaslian Tulisan

    \input{chapters/abstract-id}   % Ringkasan
    \input{chapters/abstract-en}   % Summary
    \input{chapters/forewords}     % Kata Pengantar

    \tableofcontents
    \listoftables
    \listoffigures
    \listofrumus                   % Daftar Rumus

    %----------------------------------------------------------------%
    % Bagian inti — nomor halaman arabic; kanan atas, awal bab tengah bawah.
    %----------------------------------------------------------------%
    \clearpage                     % halaman terakhir bagian awal tetap romawi
    \pagestyle{fancy}
    \pagenumbering{arabic}
    \setcounter{page}{1}

    \input{chapters/chapter-1}
    \input{chapters/chapter-2}
    \input{chapters/chapter-3}
    \input{chapters/chapter-4}
    \input{chapters/chapter-5}

    % Daftar Rujukan (gaya APA). heading=bibintoc membuat judul sekaligus
    % entri Daftar Isi pada halaman pertama daftar rujukan.
    {\setlength{\emergencystretch}{2em}\printbibliography[heading=bibintoc, title={DAFTAR RUJUKAN}]}

    %----------------------------------------------------------------%
    % Lampiran — label "Lampiran <angka>".
    %----------------------------------------------------------------%
    \appendix
    \renewcommand{\thechapter}{\arabic{chapter}}
    % Entri Daftar Isi untuk lampiran: "Lampiran 1", bukan "BAB I".
    \renewcommand{\tocchapapp}{Lampiran}
    \renewcommand{\tocchapnum}{\arabic{chapter}}
    \titleformat{\chapter}[display]
      {\normalsize\bfseries\centering}
      {Lampiran\ \thechapter}{0pt}
      {\MakeUppercase}

    % Entri "LAMPIRAN" dihapus: sebelumnya menunjuk halaman terakhir Daftar
    % Rujukan, sedangkan Lampiran 1 dan 2 sudah punya entri sendiri.

    \input{chapters/appendix-1}
    \input{chapters/appendix-2}

    \input{chapters/biography}     % Riwayat Hidup

\end{document}
```

---

# 3. Bab, Halaman Awal, dan Lampiran

<a id="f-src-chapters-abstract-en-tex"></a>

## `src/chapters/abstract-en.tex`

Ukuran 2,837 byte &middot; 31 baris &middot; sha256 `9d0f5982f424` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Summary (Pedoman UM Lampiran 7 — versi Bahasa Inggris dari Ringkasan)
% Spasi tunggal, maksimal 750 kata.
%
%--------------------------------------------------------------------%

\clearpage
\addcontentsline{toc}{chapter}{SUMMARY}

\begin{center}
    \bfseries SUMMARY
\end{center}

\begin{singlespace}

\noindent \penulis. \bulantahun. \textit{Weight-Only Post-Training Quantization for Indonesian Extractive Question Answering}. Thesis, \departemen, \fakultas, State University of Malang. Advisors: (I) \pembimbingSatu\ifx\pembimbingDua\empty\else, (II) \pembimbingDua\fi

\vspace{0.5\baselineskip}
\noindent \textbf{Keywords:} \katakunciEn%

\vspace{\baselineskip}

Large pre-trained language models have become the primary choice for Indonesian natural language processing tasks, including extractive question answering. Their size limits deployment on memory-constrained devices, so a compression technique that does not require retraining is needed. Weight-only INT4 post-training quantization promises up to fourfold storage reduction relative to FP16, but the resulting performance loss depends on the granularity of the quantization scale. For Indonesian extractive question answering, the effect of that granularity has not been tested systematically with significance testing.

This study evaluates the effect of INT4 weight-only quantization granularity on the performance and efficiency of the IndoBERT-base phase 2 model on the SQuAD-id dataset. The data were filtered into 70,051 training rows, 5,997 validation rows, and 5,244 test rows. The model was fine-tuned in FP32 precision with three seeds, and its weights were then copied into three configurations, namely the FP16 baseline, per-tensor quantization, and per-channel quantization. Performance was measured with Exact Match and F1, while efficiency was measured through model file size and inference latency. Performance differences were tested with the McNemar test for EM and a paired bootstrap of 10,000 resamples for F1, with Holm correction applied to three paired comparisons.

The results show [mean EM and F1 of the three configurations together with their differences from the baseline, the actual file sizes and their ratios to FP16, and the Holm-corrected $p$ values]. These findings describe the trade-off between storage savings and performance loss, and can serve as a basis for choosing quantization granularity when deploying IndoBERT on resource-constrained devices. The contribution of this study is empirical evidence on the effect of weight-only quantization granularity for Indonesian extractive question answering, together with an evaluation procedure that accounts for variation across seeds and for multiple-comparison correction.

\end{singlespace}
\clearpage
```

<a id="f-src-chapters-abstract-id-tex"></a>

## `src/chapters/abstract-id.tex`

Ukuran 2,926 byte &middot; 31 baris &middot; sha256 `6c0c569e28de` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Ringkasan (Pedoman UM Lampiran 7a) — Bahasa Indonesia, spasi tunggal,
% maksimal 750 kata. Baris identitas: Nama-akhir, Nama-awal. Tahun. dst.
%
%--------------------------------------------------------------------%

\clearpage
\addcontentsline{toc}{chapter}{RINGKASAN}

\begin{center}
    \bfseries RINGKASAN
\end{center}

\begin{singlespace}

\noindent \penulis. \bulantahun. \textit{\judul}. Skripsi, \departemen, \fakultas, Universitas Negeri Malang. Pembimbing: (I) \pembimbingSatu\ifx\pembimbingDua\empty\else, (II) \pembimbingDua\fi

\vspace{0.5\baselineskip}
\noindent \textbf{Kata Kunci:} \katakunci%

\vspace{\baselineskip}

Model bahasa pra-latih berukuran besar telah menjadi pilihan utama pada tugas pemrosesan bahasa alami berbahasa Indonesia, termasuk \textit{extractive question answering}. Ukuran model tersebut membatasi penerapan pada perangkat dengan memori terbatas, sehingga diperlukan teknik kompresi yang tidak menuntut pelatihan ulang. Kuantisasi pascapelatihan \textit{weight-only} INT4 menjanjikan pengurangan penyimpanan hingga seperempat dibanding FP16, tetapi besarnya penurunan kinerja bergantung pada granularitas skala kuantisasi. Pada tugas \textit{extractive question answering} bahasa Indonesia, pengaruh granularitas tersebut belum diuji secara sistematis dengan uji signifikansi.

Penelitian ini mengevaluasi pengaruh granularitas kuantisasi \textit{weight-only} INT4 terhadap kinerja dan efisiensi model IndoBERT-base fase 2 pada \textit{dataset} SQuAD-id. Data disaring menjadi 70.051 baris latih, 5.997 baris validasi, dan 5.244 baris uji. Model di-\textit{fine-tune} pada presisi FP32 dengan tiga nilai \textit{seed}, lalu bobotnya disalin menjadi tiga konfigurasi, yaitu \textit{baseline} FP16, kuantisasi per-tensor, dan kuantisasi \textit{per-channel}. Kinerja diukur dengan \textit{Exact Match} dan F1, sedangkan efisiensi diukur melalui ukuran berkas model dan latensi inferensi. Perbedaan kinerja diuji dengan uji McNemar untuk EM dan \textit{paired bootstrap} 10.000 sampel ulang untuk F1, disertai koreksi Holm pada tiga perbandingan berpasangan.

Hasil penelitian menunjukkan [EM dan F1 rata-rata ketiga konfigurasi beserta selisihnya terhadap \textit{baseline}, ukuran berkas aktual dan rasionya terhadap FP16, serta nilai $p$ setelah koreksi Holm]. Temuan ini memberi gambaran mengenai pertukaran antara penghematan penyimpanan dan penurunan kinerja, sehingga dapat menjadi dasar pemilihan granularitas kuantisasi untuk penerapan IndoBERT pada perangkat dengan sumber daya terbatas. Kontribusi penelitian ini adalah bukti empiris mengenai pengaruh granularitas kuantisasi \textit{weight-only} pada tugas \textit{extractive question answering} bahasa Indonesia, beserta prosedur pengujian yang memperhitungkan variasi \textit{seed} dan koreksi perbandingan berganda.

\end{singlespace}
\clearpage
```

<a id="f-src-chapters-appendix-1-tex"></a>

## `src/chapters/appendix-1.tex`

Ukuran 438 byte &middot; 16 baris &middot; sha256 `42a4bbe08eb7` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Lampiran A — Instrumen Pengujian
%
% @author Petra Novandi
%
%--------------------------------------------------------------------%
%
% Berisi instrumen atau alat bantu pengujian. Ganti teks placeholder
% dengan isi sebenarnya.
%
%--------------------------------------------------------------------%

\chapter{Instrumen Pengujian}

\blindtext%
```

<a id="f-src-chapters-appendix-2-tex"></a>

## `src/chapters/appendix-2.tex`

Ukuran 416 byte &middot; 16 baris &middot; sha256 `873fe38ad676` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Lampiran B — Rincian Kasus Uji
%
% @author Petra Novandi
%
%--------------------------------------------------------------------%
%
% Berisi rincian kasus uji. Ganti teks placeholder dengan isi
% sebenarnya.
%
%--------------------------------------------------------------------%

\chapter{Rincian Kasus Uji}

\blindtext%
```

<a id="f-src-chapters-appendix-3-tex"></a>

## `src/chapters/appendix-3.tex`

Ukuran 0 byte &middot; 0 baris &middot; sha256 `e3b0c44298fc` &middot; encoding `utf-8-sig`

_(berkas kosong)_

<a id="f-src-chapters-approval-tex"></a>

## `src/chapters/approval.tex`

Ukuran 1,112 byte &middot; 44 baris &middot; sha256 `41f6b1e28cf4` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Lembar Persetujuan Pembimbing (Pedoman UM Lampiran 4a)
%
% Halaman ini adalah halaman pertama bagian awal yang bernomor (i).
%
%--------------------------------------------------------------------%

\clearpage

\begin{center}
    \bfseries LEMBAR PERSETUJUAN PEMBIMBING SKRIPSI
\end{center}

\phantomsection
\addcontentsline{toc}{chapter}{LEMBAR PERSETUJUAN PEMBIMBING SKRIPSI}

\vspace{\baselineskip}

\noindent Skripsi oleh \penulis\ dengan judul ``\judul'' telah diperiksa dan disetujui untuk dilaksanakan sidang skripsi.

\vspace{2\baselineskip}

% Satu pembimbing: satu blok tanda tangan rata kiri.
% Dua pembimbing: dua blok berdampingan (Pembimbing I dan II).
\ifx\pembimbingDua\empty
\noindent
\begin{tabular}{@{}l@{}}
\kotatanggal \\
Dosen Pembimbing \\[2cm]
\pembimbingSatu \\
\nipSatu
\end{tabular}
\else
\noindent
\begin{tabular}{@{}p{0.45\textwidth}p{0.45\textwidth}@{}}
\kotatanggal & \kotatanggal \\
Pembimbing I & Pembimbing II \\[2cm]
\pembimbingSatu & \pembimbingDua \\
\nipSatu & \nipDua
\end{tabular}
\fi

\clearpage
```

<a id="f-src-chapters-biography-tex"></a>

## `src/chapters/biography.tex`

Ukuran 441 byte &middot; 17 baris &middot; sha256 `08f8ac22b4a9` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Riwayat Hidup (Pedoman UM Lampiran 13) — naratif, spasi tunggal,
% tanpa foto. Batasi pendidikan sampai jenjang di atas SMA.
%
%--------------------------------------------------------------------%

\clearpage
\addcontentsline{toc}{chapter}{RIWAYAT HIDUP}

\begin{center}
    \bfseries RIWAYAT HIDUP
\end{center}

\begin{singlespace}
\blindtext%
\end{singlespace}
```

<a id="f-src-chapters-chapter-1-tex"></a>

## `src/chapters/chapter-1.tex`

Ukuran 14,882 byte &middot; 91 baris &middot; sha256 `ad3cf3fd2fbc` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Bab I — Pendahuluan
%
% @author Petra Novandi
%
%--------------------------------------------------------------------%
%
% Berisi latar belakang, rumusan masalah, tujuan penelitian, dan
% batasan masalah.
%
%--------------------------------------------------------------------%

\chapter{Pendahuluan}

\section{Latar Belakang}

Pemanfaatan model bahasa pada pengolahan bahasa alami (\textit{Natural Language Processing}) mencakup tugas klasifikasi, penerjemahan, dan \textit{question answering}, yaitu tugas menjawab pertanyaan berdasarkan informasi yang tersedia \parencite{jurafsky2025speech}. Pada \textit{extractive question answering}, sistem tidak menyusun teks baru, melainkan memilih satu rentang teks (\textit{span}) dari konteks \parencite{jurafsky2025speech}. Rentang tersebut berasal langsung dari teks sumber, sehingga model harus memahami hubungan antara pertanyaan dan konteks.

BERT (\textit{Bidirectional Encoder Representations from Transformers}) adalah model bahasa pralatih berarsitektur \textit{Transformer} yang disesuaikan pada tugas tertentu melalui \textit{fine-tuning}, termasuk \textit{question answering} \parencite{devlin2019bert}. Untuk bahasa Indonesia, IndoBERT dilatih pada korpus Indo4B dan disediakan sebagai bagian dari \textit{benchmark} IndoNLU \parencite{wilie2020indonlu}. Selain model, tugas ini memerlukan \textit{dataset} evaluasi. SQuAD (\textit{Stanford Question Answering Dataset}) dipakai pada empat penelitian kuantisasi model \textit{encoder} \parencite{bai2022towards, guo2023olive, wei2022outlier, zadeh2022mokey}. Versi terjemahannya, yaitu SQuAD-id, dipakai pada dua studi \textit{question answering} berbahasa Indonesia \parencite{ramaputra2026evaluating, suhendra2026matrik}.

Kebutuhan penyimpanan menjadi salah satu kendala penerapan model bahasa karena ukuran model bertambah sebanding dengan jumlah parameter dan jumlah bit untuk setiap parameter \parencite{gholami2021survey}. Model IndoBERT-base untuk tugas \textit{extractive question answering} memiliki 123.852.290 parameter, sehingga ukuran teoretisnya sekitar 495,4 MB pada FP32 (32 bit) dan 247,7 MB pada FP16 (16 bit). Pada sistem yang menyimpan satu model untuk setiap tugas, kebutuhan ini bertambah sebanyak model yang disediakan, misalnya sekitar 2,5 GB untuk sepuluh model pada FP16. Kondisi yang diharapkan adalah ukuran penyimpanan menurun tanpa mengurangi kemampuan model menjawab pertanyaan, tetapi dampak penurunan presisi bobot terhadap kemampuan tersebut berbeda-beda antarpenelitian.

Pada model \textit{encoder} berbahasa Indonesia, \textcite{abdurrahman2023implementing} menerapkan kuantisasi pascapelatihan (\textit{post-training quantization}, PTQ) dan \textit{quantization-aware training} (QAT) pada IndoBERT dengan bobot 16, 8, 6, dan 4 bit untuk tujuh tugas IndoNLU. F1 rata-rata pada PTQ 4-bit turun dari 77,35 pada FP32 menjadi 72,78, sedangkan QAT 4-bit mencapai 74,94, dengan ukuran model 59,75 MB dibanding 474,72 MB. \textcite{suhendra2026matrik} membandingkan model BERT berbahasa Indonesia pada SQuAD-id tanpa kuantisasi dan memakai \textit{bootstrap}, dengan F1 63,59 untuk \texttt{indobert-base-p1} dan 71,58 untuk \texttt{indolem/indobert-base-uncased}.

Pada \textit{question answering}, Ramaputra dan Joddy (\citeyear{ramaputra2026evaluating}) mengukur dampak PTQ \textit{weight-only} dengan metode AWQ dan GPTQ pada SQuAD-id menggunakan model bahasa besar \textit{decoder-only}. \textit{Exact Match} (EM) pada Qwen2.5-14B 4-bit turun dari 48,61 menjadi 44,73 (AWQ) dan 43,80 (GPTQ), sedangkan pada Qwen2.5-7B 4-bit EM berubah dari 42,05 menjadi 42,15 (AWQ) dan 42,34 (GPTQ). Pada model \textit{encoder} berbahasa Inggris, \textcite{zadeh2022mokey} memetakan bobot BERT-Large ke indeks 4-bit yang merujuk ke nilai pusat (\textit{centroid}), dan F1 pada SQuAD v1.1 berubah dari 93,15 menjadi 93,17. \textcite{bondarenko2021understanding} melaporkan rata-rata skor GLUE pada BERT-base sebesar 83,06 (FP32), 83,23 bila hanya bobot dikuantisasi 8 bit (W8A32), dan 71,03 bila bobot dan aktivasi dikuantisasi 8 bit (W8A8).

Studi pada IndoBERT melaporkan F1 rata-rata tujuh tugas dan tidak menyebut granularitas yang dipakai, sehingga pengaruh kuantisasi pada tugas \textit{span extraction} tidak dapat dipisahkan \parencite{abdurrahman2023implementing}. Kuantisasi pada SQuAD-id baru dilaporkan untuk model \textit{decoder-only} \parencite{ramaputra2026evaluating}, sedangkan studi SQuAD-id pada model \textit{encoder} tidak menerapkan kuantisasi \parencite{suhendra2026matrik}, sehingga belum diketahui apakah selisih EM tersebut berlaku pada model \textit{encoder} berparameter sekitar 124 juta. Studi yang mengkaji pengelompokan skala dilakukan pada BERT-base berbahasa Inggris dengan tugas GLUE \parencite{bondarenko2021understanding}. Granularitas relevan pada INT4 karena hanya tersedia 16 tingkat nilai, dan satu skala \textit{per-tensor} ditentukan oleh nilai absolut terbesar seluruh \textit{tensor} sehingga satu nilai ekstrem dapat memperlebar langkah kuantisasi seluruh bobot dalam \textit{tensor} itu, sedangkan skala \textit{per-channel} membatasi pengaruh tersebut pada satu baris dengan menambah jumlah skala dari 75 menjadi 133.458 \parencite{gholami2021survey}, sebagaimana dirinci pada Subbab 3.2.6. Dalam penelusuran penulis, belum ditemukan evaluasi \textit{weight-only} PTQ INT4 yang membandingkan granularitas \textit{per-tensor} dan \textit{per-channel} pada model \textit{encoder} berbahasa Indonesia untuk \textit{extractive question answering}, maupun penggunaan uji signifikansi dengan koreksi perbandingan berganda untuk selisih EM dan F1 pada evaluasi kuantisasi.

Penelitian ini menerapkan PTQ, yaitu kuantisasi yang dijalankan setelah \textit{fine-tuning} selesai sehingga tidak memerlukan pelatihan ulang \parencite{gholami2021survey}. Kuantisasi dibatasi pada bobot (\textit{weight-only}), sedangkan aktivasi tetap pada presisi asal, sehingga perubahan yang diukur hanya berasal dari representasi bobot. Presisi yang dipakai adalah INT4 (bilangan bulat 4 bit dengan 16 tingkat nilai), yang secara teoretis memperkecil ukuran bobot menjadi seperempat dari FP16, atau sekitar separuhnya bila INT4 disimpan dalam wadah 8 bit seperti pada penelitian ini. Pada INT8, \textcite{bondarenko2021understanding} melaporkan skor GLUE W8A32 sebesar 83,23 dibanding 83,06 pada FP32, sehingga penelitian ini memilih INT4 yang menurunkan presisi lebih jauh agar pengaruh granularitas lebih mungkin teramati. Pilihan ini merupakan keputusan penulis, dan INT8 tidak diuji.

Kuantisasi dijalankan dengan dua granularitas, yaitu \textit{per-tensor} (satu skala untuk seluruh \textit{tensor}, disebut \textit{coarse-grained}) dan \textit{per-channel} (satu skala untuk setiap baris keluaran, disebut \textit{fine-grained}), yang merupakan dua dari tiga tingkat granularitas pada Subbab 2.5.6. Granularitas \textit{per-group} tidak diuji karena di luar batasan penelitian. Kedua konfigurasi diterapkan pada bobot hasil \textit{fine-tuning} yang sama, sehingga selisih kinerja antarkonfigurasi hanya berasal dari perlakuan kuantisasi.

Berdasarkan uraian tersebut, penelitian ini mengevaluasi \textit{weight-only post-training quantization} INT4 pada model IndoBERT untuk tugas \textit{extractive question answering} berbahasa Indonesia menggunakan \textit{dataset} SQuAD-id. Kinerja diukur dengan EM dan F1, efisiensi diukur dengan ukuran model dan latensi inferensi, dan model pembanding adalah model FP16. Perbedaan EM dan F1 antara konfigurasi \textit{per-tensor}, \textit{per-channel}, dan \textit{baseline} diuji signifikansinya secara statistik. Hasilnya diharapkan memperlihatkan besar selisih EM dan F1 antara kedua granularitas dibandingkan jumlah skala yang disimpan, yaitu 75 untuk \textit{per-tensor} dan 133.458 untuk \textit{per-channel}. Penelitian ini berjudul \textit{Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia}.

\section{Rumusan Masalah}

Berdasarkan uraian pada latar belakang, penelitian ini diarahkan pada tiga pertanyaan utama, yaitu prosedur penerapan \textit{weight-only post-training quantization}, besarnya perubahan kinerja dan efisiensi yang dihasilkan, serta signifikansi statistik dari perbedaan tersebut. Pertanyaan pertama dijawab melalui prosedur yang dirinci pada Bab III, sedangkan pertanyaan kedua dan ketiga dijawab melalui eksperimen dengan metrik dan uji statistik. Dengan demikian, penelitian ini merumuskan tiga permasalahan.
\begin{enumerate}
    \item Bagaimana menerapkan \textit{weight-only post-training quantization} INT4 dengan granularitas \textit{per-tensor} dan \textit{per-channel} pada model IndoBERT untuk tugas \textit{extractive question answering} bahasa Indonesia?
    \item Seberapa besar perubahan EM, F1, ukuran model, dan latensi inferensi pada model terkuantisasi \textit{per-tensor} dan \textit{per-channel} dibandingkan model FP16 pada \textit{dataset} SQuAD-id?
    \item Apakah perbedaan EM dan F1 antarkonfigurasi signifikan secara statistik?
\end{enumerate}

\section{Tujuan Penelitian}

Berdasarkan rumusan masalah tersebut, penelitian ini memiliki tiga tujuan.
\begin{enumerate}
    \item Menerapkan \textit{weight-only post-training quantization} INT4 dengan granularitas \textit{per-tensor} dan \textit{per-channel} pada model IndoBERT untuk tugas \textit{extractive question answering} bahasa Indonesia.
    \item Mengukur perubahan EM, F1, ukuran model, dan latensi inferensi pada model terkuantisasi dibandingkan model FP16 pada \textit{dataset} SQuAD-id.
    \item Menguji signifikansi statistik perbedaan EM dan F1 antarkonfigurasi.
\end{enumerate}

\section{Manfaat Penelitian}

Manfaat penelitian terbagi menjadi manfaat teoretis (Subbab 1.4.1) dan manfaat praktis (Subbab 1.4.2).

\subsection{Manfaat Teoretis}

Secara teoretis, penelitian ini diharapkan:
\begin{enumerate}
    \item Memperkaya kajian \textit{weight-only post-training quantization} INT4 pada model \textit{encoder} berbahasa Indonesia untuk tugas \textit{extractive question answering}. Penelitian sebelumnya melaporkan IndoBERT pada tujuh tugas IndoNLU \parencite{abdurrahman2023implementing}. Kuantisasi pada \textit{question answering} dengan SQuAD-id baru dilaporkan untuk model bahasa besar \textit{decoder-only} \parencite{ramaputra2026evaluating}.
    \item Menyediakan data pembanding antara granularitas \textit{per-tensor} dan \textit{per-channel} pada model, \textit{dataset}, dan presisi yang sama.
    \item Memberikan data empiris mengenai pertukaran antara kinerja (EM dan F1) dan ukuran model pada kuantisasi INT4, termasuk selisih antara ukuran teoretis (hasil hitungan dari jumlah bit per parameter) dan ukuran berkas (ukuran riil pada penyimpanan).
    \item Menunjukkan konsistensi arah selisih kinerja antarkonfigurasi pada tiga nilai \textit{seed}, disertai uji signifikansi berpasangan dan koreksi perbandingan berganda.
\end{enumerate}

\subsection{Manfaat Praktis}

Secara praktis, penelitian ini diharapkan:
\begin{enumerate}
    \item Menjadi bahan pertimbangan bagi pengembang sistem \textit{question answering} berbahasa Indonesia dalam memilih konfigurasi kuantisasi bobot IndoBERT berdasarkan perubahan EM, F1, dan ukuran model.
    \item Menjadi bahan pembanding bagi peneliti selanjutnya untuk pengembangan skema kuantisasi lain, misalnya granularitas \textit{per-group}, kuantisasi bobot dan aktivasi sekaligus, atau \textit{quantization-aware training}.
    \item Memberikan gambaran kuantitatif penghematan ruang penyimpanan bagi institusi yang mempertimbangkan penerapan model bahasa pada infrastruktur dengan ruang penyimpanan terbatas.
\end{enumerate}

\section{Batasan Masalah}

Batasan masalah dalam penelitian ini terdiri atas sepuluh butir.
\begin{enumerate}
    \item Model yang digunakan adalah IndoBERT-base fase 2 \parencite{wilie2020indonlu}, yaitu model bahasa pralatih umum yang tidak dikhususkan untuk tugas \textit{question answering}. Penyesuaian ke tugas \textit{extractive question answering} dilakukan melalui \textit{fine-tuning} pada penelitian ini, dan tidak ada model dasar lain yang dibandingkan.
    \item \textit{Dataset} yang digunakan adalah SQuAD-id \parencite{muis2020sequence}, yaitu terjemahan mesin SQuAD v2.0 ke bahasa Indonesia, dalam versi yang didistribusikan SEACrowd \parencite{lovenia2024seacrowd}. Setiap baris berisi satu pasangan pertanyaan dan konteks. Kolom yang dipakai adalah konteks, pertanyaan, jawaban (teks dan posisi awal hasil perbaikan), dan judul artikel untuk pembagian data. Data validasi dibentuk dari sebagian data latih.
    \item Sampel yang tidak diikutsertakan terdiri atas dua jenis, yaitu pertanyaan tanpa jawaban pada konteks (bagian dari rancangan SQuAD v2.0) dan pertanyaan terjawab yang jawabannya tidak dapat dilacak pada konteks (galat \textit{dataset}). Metrik hanya dihitung pada sampel yang memiliki jawaban, sehingga penelitian ini tidak mengukur kemampuan model memutuskan bahwa suatu pertanyaan tidak dapat dijawab. Jumlah setiap jenis disajikan pada Subbab 3.2.4.
    \item Mutu terjemahan mesin tidak dinilai melalui evaluasi manusia (\textit{human evaluation}) pada penelitian ini. Oleh karena itu, hasil penelitian tidak dapat digeneralisasi ke \textit{dataset} berbahasa Indonesia yang ditulis langsung oleh penutur jati.
    \item Kuantisasi yang diterapkan adalah \textit{weight-only post-training quantization} pada bobot model hasil \textit{fine-tuning}, tanpa pelatihan ulang dan tanpa kuantisasi aktivasi. Kuantisasi bersifat tersimulasi, yaitu bobot dikembalikan ke presisi \textit{floating point} sebelum komputasi, sehingga penelitian ini tidak mengklaim percepatan inferensi. Model pembanding adalah model FP16.
    \item Kuantisasi diterapkan pada matriks bobot lapisan linear dan \textit{embedding}. Kepala jawaban, \textit{bias}, dan normalisasi lapisan tetap pada presisi asal.
    \item Presisi numerik dibatasi pada INT4, sehingga perbandingan antargranularitas dilakukan pada jumlah bit yang sama.
    \item Granularitas dibatasi pada \textit{per-tensor} (satu skala untuk setiap \textit{tensor}) dan \textit{per-channel} (satu skala untuk setiap baris keluaran). Jumlah \textit{tensor} dan skala disajikan pada Subbab 3.2.6.
    \item Kinerja diukur dengan EM dan F1, sedangkan efisiensi diukur dengan ukuran model dan latensi inferensi. Hanya EM dan F1 yang diuji signifikansinya secara statistik, sedangkan latensi dilaporkan secara deskriptif.
    \item Eksperimen dijalankan pada satu jenis \textit{graphics processing unit} (GPU), yaitu NVIDIA Tesla T4, dengan tiga nilai \textit{seed}. Penelitian ini tidak menerapkan \textit{quantization-aware training}, tidak mengembangkan \textit{kernel} khusus untuk presisi rendah, dan tidak menguji model pada perangkat dengan sumber daya terbatas.
\end{enumerate}
```

<a id="f-src-chapters-chapter-2-tex"></a>

## `src/chapters/chapter-2.tex`

Ukuran 47,450 byte &middot; 402 baris &middot; sha256 `ffd2d52a81a6` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Bab II — Kajian Pustaka
%
% @author Petra Novandi, disesuaikan untuk penelitian kuantisasi
%
%--------------------------------------------------------------------%

\chapter{Kajian Pustaka}

\section{Tugas \textit{Extractive Question Answering}}

\textit{Question answering} adalah tugas pengolahan bahasa alami yang meminta sistem menjawab pertanyaan berdasarkan informasi yang tersedia \parencite{jurafsky2025speech}. Tugas ini termasuk dalam \textit{machine reading comprehension}, yaitu menjawab pertanyaan berdasarkan teks tertentu, dan dapat dipandang sebagai masalah pembelajaran terbimbing dengan masukan berupa konteks dan pertanyaan dalam bahasa alami \parencite{wang2022extractive}. Pada pendekatan \textit{extractive} (disebut juga \textit{span prediction}), jawaban tidak dihasilkan dari awal, melainkan dipilih sebagai rentang teks (\textit{span}) di dalam konteks \parencite{jurafsky2025speech, wang2022extractive}. Penelitian ini memakai bentuk \textit{single-span}, yaitu hanya satu rentang yang dipilih sebagai jawaban.

Pada bentuk \textit{single-span}, model memilih satu urutan \textit{token} yang berurutan dari konteks sebagai jawaban atas pertanyaan \parencite{wang2022extractive}. Masukan tugas ini berupa pasangan pertanyaan dan konteks, sedangkan keluarannya berupa posisi \textit{token} awal dan posisi \textit{token} akhir \textit{span} jawaban \parencite{devlin2019bert}. Dengan formulasi tersebut, \textit{extractive question answering} dapat dipandang sebagai dua klasifikasi posisi pada urutan \textit{token} konteks, sehingga kualitas jawaban dapat dibandingkan langsung dengan jawaban acuan melalui kecocokan teks dan \textit{token overlap}. Perbandingan ini memakai \textit{Exact Match} (EM), yaitu proporsi jawaban yang persis sama dengan jawaban acuan, dan F1, yaitu ukuran \textit{token overlap} antara jawaban prediksi dan jawaban acuan \parencite{rajpurkar2016squad}.

Model \textit{extractive question answering} tersusun dari empat komponen, yaitu \textit{embedding}, ekstraksi fitur, interaksi antara konteks dan pertanyaan, serta prediksi jawaban \parencite{wang2022extractive}. Ekstraksi fitur memakai jaringan saraf berulang (\textit{recurrent neural network}), jaringan saraf konvolusional (\textit{convolutional neural network}), atau struktur \textit{Transformer} berbasis \textit{multi-head self-attention}, sedangkan model bahasa pralatih seperti BERT dipasangkan dengan \textit{pointer head} untuk menentukan rentang jawaban \parencite{wang2022extractive}. Pada BERT, \textit{fine-tuning} ke tugas ini hanya menambahkan satu lapisan keluaran \parencite{raikwar2024five}. Model yang mampu memodelkan hubungan antara pertanyaan dan konteks diperlukan untuk menentukan kedua posisi tersebut, sehingga pembahasan dilanjutkan pada arsitektur \textit{Transformer}.

SQuAD (\textit{Stanford Question Answering Dataset}) diperkenalkan pada 2016 dan berperan penting dalam pelatihan dan evaluasi model \textit{machine comprehension} \parencite{rajpurkar2016squad, raikwar2024five}. Versi 2.0 memuat pertanyaan yang tidak memiliki jawaban pada konteks \parencite{rajpurkar2018squad}, dan pertanyaan semacam itu juga dicatat sebagai salah satu masalah pada \textit{dataset} \textit{single-span} \parencite{wang2022extractive}. Penelitian ini hanya memakai pertanyaan yang memiliki jawaban, karena kemampuan model memutuskan bahwa suatu pertanyaan tidak dapat dijawab tidak termasuk yang diuji (Subbab 1.5).

Pada bahasa Inggris, tugas ini telah dikaji dengan membandingkan lima model berbasis BERT yang di-\textit{fine-tune} pada SQuAD \parencite{raikwar2024five}. Pada bahasa Indonesia, \textit{extractive question answering} dievaluasi pada SQuAD-id \parencite{muis2020sequence, ramaputra2026evaluating, suhendra2026matrik} dan pada FacQA, yaitu tugas \textit{span extraction} berita di dalam \textit{benchmark} IndoNLU \parencite{wilie2020indonlu}. Penelitian ini memakai SQuAD-id, yang dijelaskan pada Subbab 2.3.

\section{Model Bahasa Pralatih BERT dan IndoBERT}

\subsection{Arsitektur dan Cara Kerja BERT}

\textit{Transformer} adalah arsitektur yang memproses urutan \textit{token} dengan mekanisme \textit{attention} tanpa rekurensi \parencite{vaswani2017attention}. Setiap lapisan memakai matriks proyeksi \textit{query}, \textit{key}, \textit{value}, dan keluaran, diikuti lapisan \textit{feed-forward}. Matriks-matriks inilah, bersama \textit{embedding}, yang menjadi bobot yang dikuantisasi pada penelitian ini.

BERT (\textit{Bidirectional Encoder Representations from Transformers}) adalah model bahasa yang dibangun dari tumpukan \textit{encoder} \textit{Transformer} dan dipralatih pada korpus teks tanpa label melalui dua tugas, yaitu \textit{masked language modeling} (MLM) dan \textit{next sentence prediction} (NSP) \parencite{devlin2019bert}. Pada MLM, 15\% \textit{token} dipilih secara acak sebagai target prediksi dan, pada 80\% di antaranya, diganti dengan \textit{token} khusus \textit{[MASK]}, lalu model memprediksi \textit{token} target dengan memanfaatkan konteks di kiri dan kanan sekaligus, sehingga representasinya bersifat dua arah (\textit{bidirectional}). Pada NSP, model menerima sepasang kalimat dan menentukan apakah kalimat kedua merupakan kelanjutan dari kalimat pertama atau diambil secara acak dari korpus. Kombinasi kedua tugas ini membuat BERT memperoleh pengetahuan bahasa umum yang kemudian diadaptasi ke tugas spesifik melalui \textit{fine-tuning} \parencite{devlin2019bert}.

Teks masukan terlebih dahulu ditokenisasi dengan \textit{WordPiece}, yaitu metode yang memecah kata jarang menjadi potongan subkata (\textit{subword}) \parencite{devlin2019bert}. Tokenisasi menambahkan \textit{token} khusus \textit{[CLS]} di awal urutan dan \textit{[SEP]} sebagai pemisah antarsegmen, serta menghasilkan tiga keluaran, yaitu \textit{input\_ids} (representasi numerik \textit{token}), \textit{attention\_mask} (penanda \textit{token} asli terhadap \textit{padding}), dan \textit{token\_type\_ids} (penanda segmen). Setiap \textit{token} dipetakan ke tiga \textit{embedding}, yaitu \textit{embedding} \textit{token}, segmen, dan posisi, yang dijumlahkan sebelum masuk ke lapisan \textit{encoder} \parencite{devlin2019bert}. Pada setiap lapisan \textit{encoder}, mekanisme \textit{self-attention} memungkinkan sebuah \textit{token} berinteraksi dengan \textit{token} lain dalam urutan yang sama, termasuk yang posisinya berjauhan, sehingga setiap \textit{token} memperoleh representasi kontekstual \parencite{vaswani2017attention}.

Penyesuaian ke tugas \textit{extractive question answering} dilakukan melalui \textit{fine-tuning}. Pertanyaan dan konteks digabung menjadi satu urutan masukan yang dipisahkan oleh \textit{[SEP]}, lalu satu lapisan linear menghasilkan skor posisi awal dan posisi akhir untuk setiap \textit{token}, dan \textit{span} dengan jumlah skor awal dan akhir tertinggi dipilih sebagai jawaban \parencite{devlin2019bert}. Lapisan tambahan ini hanya berukuran $768 \times 2$, yaitu 1.536 bobot, sehingga ukuran model hasil \textit{fine-tuning} ditentukan oleh \textit{encoder} dan \textit{embedding}, dan ukuran itu menentukan kebutuhan penyimpanan. Karena itu, kompresi model dibahas pada Subbab 2.4.

\subsection{Model IndoBERT-base yang Digunakan}

IndoBERT adalah model bahasa pralatih berbahasa Indonesia berarsitektur BERT yang disediakan sebagai bagian dari \textit{benchmark} IndoNLU dan dipralatih pada korpus Indo4B \parencite{wilie2020indonlu}. Model yang digunakan pada penelitian ini adalah IndoBERT-base fase 2. Konfigurasinya terdiri atas 12 lapisan \textit{encoder}, ukuran \textit{hidden} 768, 12 \textit{head} perhatian, ukuran lapisan \textit{feed-forward} 3.072, kosakata 50.000 \textit{token}, dan panjang urutan maksimum 512 \textit{token}. Model untuk tugas \textit{question answering} tidak memakai lapisan \textit{pooler}, sehingga jumlah parameternya 123.852.290 berdasarkan penghitungan pada model yang digunakan. Dengan lapisan \textit{pooler}, jumlahnya menjadi 124.442.882.

Nama model yang dipakai dinyatakan secara eksplisit pada Subbab 3.2.5 karena kinerja pada SQuAD-id berbeda antarmodel berbahasa Indonesia. Pada SQuAD-id, \textcite{suhendra2026matrik} melaporkan F1 sebesar 63,59 untuk model \texttt{indobert-base-p1}. Untuk model \texttt{indolem/indobert-base-uncased}, F1 yang dilaporkan adalah 71,58. IndoBERT-base dipralatih dalam dua fase. Fase 1 memakai panjang urutan maksimum 128 \textit{token}, dan fase 2 melanjutkan pralatih dengan panjang urutan maksimum 512 \textit{token} \parencite{wilie2020indonlu}. Penelitian ini memakai fase 2 (\texttt{indobert-base-p2}) karena konteks SQuAD-id diproses dalam jendela hingga 384 \textit{token} (Bab III), lebih panjang daripada 128 \textit{token} pada fase 1. Pada FacQA, skor IndoBERT-base naik dari 53,45 pada fase 1 menjadi 57,06 pada fase 2 \parencite{wilie2020indonlu}.

\section{Karakteristik \textit{Dataset} SQuAD-id}

SQuAD-id adalah \textit{dataset} \textit{extractive question answering} berbahasa Indonesia yang dibentuk dari terjemahan mesin SQuAD v2.0 ke bahasa Indonesia oleh \textcite{muis2020sequence} untuk penelitian pembangkit pertanyaan otomatis. Setiap baris memuat satu pasangan pertanyaan dan konteks dengan kolom konteks, pertanyaan, jawaban (teks dan posisi awal), judul artikel, dan penanda pertanyaan tanpa jawaban. \textit{Dataset} asalnya, SQuAD, memuat jawaban berupa \textit{span} teks dari paragraf Wikipedia \parencite{rajpurkar2016squad}.

Berkas yang dipakai hanya menyediakan data latih dan data uji tanpa data validasi, sehingga data validasi dibentuk dari data latih pada tahap praproses (Subbab 3.2.3). Jumlah data dan panjang teks dirangkum pada Tabel~\ref{tab:karakteristik-dataset}. Tabel tersebut dipakai untuk menunjukkan jumlah baris yang tidak dapat dipakai, baik karena pertanyaannya tidak memiliki jawaban maupun karena teks jawabannya tidak dapat dilacak pada konteks.

\begin{table}[htbp]
  \centering
  \small
  \renewcommand{\arraystretch}{1.2}
  \caption{Karakteristik \textit{dataset} SQuAD-id}
  \label{tab:karakteristik-dataset}
  \begin{tabularx}{\textwidth}{@{}Xrr@{}}
    \hline
    \textbf{Karakteristik} & \textbf{Data latih} & \textbf{Data uji} \\
    \hline
    Jumlah baris & 130.319 & 11.873 \\
    Artikel unik & 441 & 35 \\
    Konteks unik & 19.029 & 1.204 \\
    Pertanyaan tanpa jawaban & 43.498 (33,38\%) & 5.945 (50,07\%) \\
    Pertanyaan terjawab & 86.821 & 5.928 \\
    Jawaban tidak terlacak pada konteks setelah perbaikan & 16.705 & 676 \\
    Duplikat konteks dan pertanyaan & 65 & 8 \\
    Baris yang dipakai pada penelitian ini & 70.051 (53,75\%) & 5.244 (44,17\%) \\
    Median panjang konteks (kata) & 98 & 101 \\
    Median panjang pertanyaan (kata) & 8 & 8 \\
    \hline
  \end{tabularx}
\end{table}

Dua batasan \textit{dataset} perlu dicatat. Pertama, SQuAD-id berasal dari terjemahan mesin, sehingga dapat membawa pengaruh proses terjemahan pada kelancaran kalimat dan ketepatan istilah. Kedua, hasil pada satu \textit{dataset} hasil terjemahan tidak dapat langsung digeneralisasi ke domain atau sumber teks lain.

\section{Teknik Kompresi Model}

Kompresi model mencakup tiga kelompok teknik untuk mengurangi kebutuhan sumber daya, yaitu \textit{pruning}, \textit{knowledge distillation}, dan kuantisasi \parencite{gholami2021survey, han2016deep, hinton2015distilling}.

\textit{Pruning} menghapus bobot atau koneksi yang kontribusinya kecil terhadap keluaran model \parencite{han2016deep}. Struktur bobot yang dihasilkan tidak beraturan, sehingga penghematan waktu komputasi bergantung pada dukungan perangkat keras terhadap operasi \textit{sparse}, dan model perlu dilatih ulang untuk memulihkan akurasi \parencite{han2016deep}.

\textit{Knowledge distillation} melatih model berukuran lebih kecil (\textit{student}) agar meniru distribusi keluaran model besar (\textit{teacher}) \parencite{hinton2015distilling}. Teknik ini menghasilkan model baru dengan arsitektur berbeda, bukan versi terkompresi dari model yang sudah ada, sehingga memerlukan proses pelatihan penuh.

Kuantisasi menurunkan presisi representasi numerik bobot atau aktivasi \parencite{gholami2021survey}. Berbeda dengan dua teknik sebelumnya, kuantisasi tidak mengubah arsitektur maupun jumlah parameter dan dapat diterapkan pada model yang telah selesai dilatih tanpa pelatihan ulang \parencite{gholami2021survey}. Bobot hasil \textit{fine-tuning} tetap dapat dipertahankan sebagai acuan, dan \textit{error} yang muncul dapat dikendalikan melalui pilihan cakupan dan granularitas.

Besarnya pengurangan ukuran dapat dihitung langsung dari jumlah parameter. Model dengan 123.852.290 parameter berukuran 495,4 MB pada format \textit{floating point} 32 bit (FP32), 247,7 MB pada \textit{floating point} 16 bit (FP16), 123,9 MB pada bilangan bulat 8 bit (INT8), dan 61,9 MB pada bilangan bulat 4 bit (INT4) apabila setiap parameter menempati 4, 2, 1, dan 0,5 byte. Angka tersebut adalah ukuran teoretis, dan 1 MB pada penelitian ini sama dengan $10^{6}$ byte.

Hasil kuantisasi 4-bit pada model \textit{encoder} dan model bahasa besar dilaporkan sebagai berikut. Pada BERT-Large untuk SQuAD v1.1, kuantisasi bobot 4-bit mengubah F1 dari 93,15 menjadi 93,17 \parencite{zadeh2022mokey}. Pada IndoBERT, kuantisasi pascapelatihan 4-bit menurunkan F1 rata-rata tujuh tugas dari 77,35 menjadi 72,78 \parencite{abdurrahman2023implementing}. Pada SQuAD-id dengan model bahasa besar, EM Qwen2.5-14B 4-bit turun dari 48,61 menjadi 44,73 (AWQ) dan 43,80 (GPTQ), sedangkan EM Qwen2.5-7B 4-bit berubah dari 42,05 menjadi 42,15 (AWQ) dan 42,34 (GPTQ) \parencite{ramaputra2026evaluating}. Perubahan F1 berkisar dari naik 0,02 poin hingga turun 4,57 poin, dan perubahan EM dari naik 0,29 poin hingga turun 4,81 poin, sehingga dampak kuantisasi perlu diukur pada model dan tugas yang spesifik, termasuk \textit{extractive question answering} berbahasa Indonesia.

\section{Konsep dan Skema Kuantisasi pada Jaringan Saraf Tiruan}

Dalam jaringan saraf, kuantisasi diterapkan pada \textit{tensor} bobot dan aktivasi yang tersimpan dalam format \textit{floating point}. Proses ini beroperasi dua arah: kuantisasi memetakan nilai riil ke bilangan bulat berpresisi rendah, sedangkan \textit{dequantization} mengembalikan nilai tersebut ke bentuk riil untuk komputasi. Ruang desain kuantisasi ditunjukkan pada Gambar~\ref{fig:alur-kuantisasi} dalam tujuh tahapan, yaitu representasi numerik awal, skema pemetaan simetris atau asimetris, cakupan bobot dan aktivasi, waktu penerapan, granularitas, representasi memori \textit{bit-packing}, serta \textit{dequantization} dan rekonstruksi inferensi. Subbab 2.5.1 sampai 2.5.7 membahas tahapan tersebut, dengan \textit{dequantization} dijelaskan pada Subbab 2.5.2 dan 2.5.7.

\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.90\textwidth]{"resources/alur kuantisasi.png"}
  \caption{Tahapan dan ruang desain kuantisasi pada jaringan saraf}
  \label{fig:alur-kuantisasi}
\end{figure}

\subsection{Format Representasi Numerik FP16, INT8, dan INT4}

Presisi numerik menunjukkan jumlah bit untuk menyimpan setiap nilai. Format \textit{floating point} seperti FP32 dan FP16 memisahkan bit menjadi tanda, eksponen, dan mantisa, sehingga mampu mewakili rentang nilai hingga $\pm 3{,}4 \times 10^{38}$ pada FP32 (Tabel~\ref{tab:format-numerik}). Format bilangan bulat seperti INT8 dan INT4 hanya menyimpan nilai diskret dengan rentang tetap dan memerlukan faktor skala untuk memetakan nilai riil \parencite{gholami2021survey}. INT8 menyediakan 256 tingkat nilai dan INT4 hanya 16 tingkat, sehingga pada rentang bobot yang sama, langkah kuantisasi INT4 lebih lebar daripada INT8 dan \textit{error} pembulatannya lebih besar \parencite{gholami2021survey}. Susunan bit dan rentang nilai keempat format dirangkum pada Tabel~\ref{tab:format-numerik}. Bilangan bulat bertanda disimpan dalam bentuk komplemen dua, dan pada kuantisasi simetris yang dipakai penelitian ini INT4 hanya memakai $-7$ sampai 7 (15 tingkat nilai) dengan nilai $-8$ tidak dipakai (Subbab 2.5.3). Pembagian bit FP16, INT8, dan INT4 ditunjukkan pada Gambar~\ref{fig:layout-fp16} sampai Gambar~\ref{fig:layout-int4}.

Pada format \textit{floating point}, satu nilai disusun dari tiga bagian. Bit tanda menyimpan apakah nilai positif (0) atau negatif (1). Bit eksponen menyimpan pangkat dua yang menggeser titik desimal, sehingga menentukan seberapa besar atau kecil nilai yang dapat diwakili. Bit mantisa menyimpan digit pecahan di belakang angka 1 awal, sehingga menentukan ketelitian nilai. Pada FP16 terdapat 1 bit tanda, 5 bit eksponen, dan 10 bit mantisa, dan nilai bilangan normalnya dihitung dengan $(-1)^{s} \times 2^{e-15} \times (1 + m/1024)$, dengan $s$ bit tanda, $e$ nilai eksponen, $m$ nilai mantisa, dan 15 bias eksponen.

Sebagai contoh, bobot 0,30 ditulis pada FP16 sebagai $1{,}2 \times 2^{-2}$. Eksponen $-2$ disimpan sebagai $-2 + 15 = 13$, yaitu \texttt{01101} dalam biner. Pecahan 0,2 disimpan sebagai $0{,}2 \times 1024 \approx 205$, yaitu \texttt{0011001101} dalam biner. Dengan bit tanda 0, susunan bitnya adalah \texttt{0 01101 0011001101}, yang dibaca kembali sebagai $2^{-2} \times (1 + 205/1024) \approx 0{,}30005$. Selisih 0,00005 terhadap nilai asli muncul karena mantisa hanya 10 bit.

Format bilangan bulat tidak memiliki bit eksponen dan bit mantisa. Seluruh bit menyimpan satu bilangan bulat dengan bit tertinggi sebagai tanda, sehingga jarak antar nilai yang dapat disimpan selalu sama. Karena itu, nilai riil harus dibagi dengan faktor skala terlebih dahulu agar muat pada rentang bilangan bulat (Subbab 2.5.2).

\begin{table}[htbp]
  \centering
  \small
  \renewcommand{\arraystretch}{1.2}
  \caption{Susunan bit dan rentang nilai format numerik \parencite{gholami2021survey}}
  \label{tab:format-numerik}
  \setlength{\tabcolsep}{4pt}
  \begin{tabularx}{\textwidth}{@{}lcccccc@{}}
    \hline
    \textbf{Format} & \textbf{Total bit} & \textbf{Tanda} & \textbf{Eksponen} & \textbf{Mantisa} & \textbf{Rentang nilai} & \textbf{Presisi} \\
    \hline
    FP32 & 32 & 1 & 8 & 23 & $\pm 3{,}4 \times 10^{38}$ & 7 digit desimal \\
    FP16 & 16 & 1 & 5 & 10 & $\pm 6{,}6 \times 10^{4}$ & 3 digit desimal \\
    INT8 & 8 & 1 & -- & -- & $-128$ sampai 127 & 256 tingkat \\
    INT4 & 4 & 1 & -- & -- & $-8$ sampai 7 & 16 tingkat \\
    \hline
  \end{tabularx}
\end{table}

\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.86\textwidth]{"resources/IEEE FP16 Bit Layout Diagram.png"}
  \caption{Susunan bit pada format \textit{floating point} IEEE FP16}
  \label{fig:layout-fp16}
\end{figure}

\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.86\textwidth]{"resources/8-Bit Signed Integer Layout.png"}
  \caption{Susunan bit pada bilangan bulat bertanda 8-bit (INT8)}
  \label{fig:layout-int8}
\end{figure}

\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.86\textwidth]{"resources/4-Bit Signed Integer Layout.png"}
  \caption{Susunan bit pada bilangan bulat bertanda 4-bit (INT4)}
  \label{fig:layout-int4}
\end{figure}

Ukuran teoretis model sebanding dengan jumlah bit per parameter. Dibandingkan FP16, ukuran teoretis INT4 adalah 25\% apabila seluruh parameter disimpan pada 4 bit dan dipadatkan. Angka itu adalah batas teoretis, bukan ukuran berkas tanpa \textit{bit-packing} (Subbab 2.5.7).

\subsection{Pemetaan Nilai Riil ke Bilangan Bulat}

Kuantisasi pada jaringan saraf diperkenalkan sebagai cara menggantikan komputasi \textit{floating point} dengan aritmetika bilangan bulat pada inferensi tanpa mengubah arsitektur model \parencite{jacob2018quantization}. Pemetaan nilai riil $x$ ke bilangan bulat $x_q$ berbentuk \parencite{jacob2018quantization}:
\begin{equation}
  x_q = \mathrm{round}\left(\frac{x}{s}\right) + z
  \label{eq:kuantisasi}
\end{equation}
\noindent dengan $s$ faktor skala dan $z$ \textit{zero point} (bilangan bulat yang mewakili nilai riil nol). Hasilnya dibatasi pada rentang bilangan bulat yang tersedia. \textit{Dequantization} mengembalikan nilai riil melalui $\hat{x} = s\,(x_q - z)$. Selisih antara $x$ dan $\hat{x}$ adalah \textit{error} kuantisasi yang ditentukan oleh lebar langkah $s$. Skema simetris dan asimetris (Subbab 2.5.3), cakupan (Subbab 2.5.4), dan granularitas (Subbab 2.5.6) pada dasarnya adalah cara berbeda menentukan $s$ dan $z$.

Penerapan kuantisasi pada model terlatih dimulai dengan menentukan rentang nilai setiap \textit{tensor}. Pada kuantisasi bobot saja, rentang dihitung dari bobot itu sendiri sehingga tidak memerlukan data kalibrasi, sedangkan kuantisasi aktivasi memerlukan data untuk mengamati rentang aktivasi \parencite{gholami2021survey}. Dari rentang tersebut dihitung $s$ dan $z$, lalu nilai riil dipetakan ke bilangan bulat dengan Persamaan~\ref{eq:kuantisasi}. Nilai terkuantisasi disimpan beserta skalanya, dan saat inferensi nilai tersebut dikembalikan melalui \textit{dequantization} sebelum komputasi.

\subsection{Skema Kuantisasi Simetris dan Asimetris}

Skema simetris menetapkan \textit{zero point} sama dengan nol dan membatasi bilangan bulat $b$-bit pada $-q_{\max}$ sampai $q_{\max}$, dengan $q_{\max} = 2^{b-1}-1$ \parencite{gholami2021survey}:
\begin{equation}
  x_q = \mathrm{round}\left(\frac{x}{s}\right)
  \label{eq:simetris}
\end{equation}
\begin{equation}
  s = \frac{\alpha}{q_{\max}}
  \label{eq:skala}
\end{equation}
\noindent dengan $\alpha$ nilai absolut terbesar pada cakupan yang dipilih. Untuk $b = 4$, $q_{\max} = 7$, sehingga bilangan bulat berada pada $-7$ sampai 7 dan nilai $-8$ tidak dipakai. \textit{Dequantization} dilakukan dengan $\hat{x} = x_q \cdot s$.

Sebagai contoh, bobot 0,30 pada \textit{tensor} dengan $\alpha = 0{,}8$ disimpan pada tiga format lalu dibaca kembali. Pada FP16, bobot ditulis langsung sebagai bit tanda, eksponen, dan mantisa (Subbab 2.5.1). Pada INT8, $q_{\max} = 127$ sehingga $s = 0{,}8/127 \approx 0{,}0063$, lalu $0{,}30/0{,}0063 \approx 47{,}6$ dibulatkan menjadi 48 dan dibaca kembali sebagai $48 \times 0{,}0063 \approx 0{,}3024$. Pada INT4, $q_{\max} = 7$ sehingga $s = 0{,}8/7 \approx 0{,}1143$, lalu $0{,}30/0{,}1143 \approx 2{,}63$ dibulatkan menjadi 3 dan dibaca kembali sebagai $3 \times 0{,}1143 \approx 0{,}3429$. Hasil ketiganya dirangkum pada Tabel~\ref{tab:contoh-format}. \textit{Error} INT4 paling besar karena langkah kuantisasi $s$ lebih lebar 18,1 kali daripada INT8 ($127/7$), dan \textit{error} pembulatan setiap bobot paling besar setengah dari $s$, yaitu 0,0031 pada INT8 dan 0,0571 pada INT4.

\begin{table}[htbp]
  \centering
  \footnotesize
  \setlength{\tabcolsep}{4pt}
  \renewcommand{\arraystretch}{1.2}
  \caption{Contoh penyimpanan bobot 0,30 pada FP16, INT8, dan INT4}
  \label{tab:contoh-format}
  \begin{tabularx}{\textwidth}{@{}>{\centering\arraybackslash}p{1.5cm}>{\centering\arraybackslash}p{1.9cm}>{\centering\arraybackslash}p{3.7cm}>{\centering\arraybackslash}X>{\centering\arraybackslash}X@{}}
    \hline
    \textbf{Format} & \textbf{Faktor skala $s$} & \textbf{Nilai tersimpan} & \textbf{Nilai dibaca kembali} & \textbf{\textit{Error}} \\
    \hline
    FP16 & -- & \mbox{\texttt{0 01101 0011001101}} & 0,30005 & 0,00005 \\
    INT8 & 0,0063 & 48 & 0,3024 & 0,0024 \\
    INT4 & 0,1143 & 3 & 0,3429 & 0,0429 \\
    \hline
  \end{tabularx}
\end{table}

Pada skema asimetris, rentang dipetakan dari nilai terkecil hingga terbesar menggunakan seluruh tingkat dengan tambahan parameter $z$. Misalkan satu \textit{tensor} bernilai $-0{,}8$ sampai 0,6. Skema simetris memakai $\alpha = 0{,}8$ dengan $s \approx 0{,}114$, dan dua tingkat positif tertinggi tidak terpakai karena data hanya sampai 0,6. Skema asimetris memakai seluruh 16 tingkat dengan $s = 1{,}4/15 \approx 0{,}093$ dan $z = 1$. Perbedaan keduanya ditunjukkan pada Gambar~\ref{fig:pemetaan-simetris} dan Gambar~\ref{fig:pemetaan-asimetris}.

\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.80\textwidth]{"resources/Pemetaan Rentang FP32 ke INT8.png"}
  \caption{Pemetaan rentang pada kuantisasi simetris}
  \label{fig:pemetaan-simetris}
\end{figure}

\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.80\textwidth]{"resources/Asymmetric FP32 to INT8 Mapping.png"}
  \caption{Pemetaan rentang pada kuantisasi asimetris}
  \label{fig:pemetaan-asimetris}
\end{figure}

Skema simetris dipilih karena bobot model terlatih terkonsentrasi di sekitar nol, sehingga \textit{zero point} tidak diperlukan \parencite{gholami2021survey}. Aktivasi setelah fungsi aktivasi yang hanya menghasilkan nilai non-negatif tidak simetris terhadap nol, sehingga skema asimetris dipakai untuk aktivasi tersebut \parencite{gholami2021survey}.

\subsection{Cakupan Kuantisasi \textit{Weight-Only} dan \textit{Joint Weight-Activation}}

Kuantisasi dapat diterapkan pada bobot saja atau pada bobot dan aktivasi sekaligus. Notasi W$x$A$y$ menunjukkan bobot $x$-bit dan aktivasi $y$-bit, misalnya W8A8 untuk bobot dan aktivasi 8-bit \parencite{bondarenko2021understanding}. Pada BERT-base, \textcite{bondarenko2021understanding} melaporkan rata-rata skor GLUE sebesar 83,06 (FP32), 71,03 (W8A8), 70,25 (W32A8), dan 83,23 (W8A32). Penurunan skor muncul ketika aktivasi dikuantisasi, sedangkan kuantisasi bobot saja menghasilkan skor 83,23, 0,17 poin di atas FP32. Pada \textit{weight-only} PTQ, bobot dikuantisasi setelah pelatihan dan aktivasi tetap pada presisi asalnya.

Cakupan bobot yang dikuantisasi juga memengaruhi hasil. Model IndoBERT-base untuk \textit{question answering} terdiri atas tiga kelompok parameter. Parameter \textit{embedding} berjumlah 38.794.752 (31,3\%), parameter lapisan linear berjumlah 84.934.656 (68,6\%) yang meliputi proyeksi atensi dan lapisan \textit{feed-forward}, dan sisanya 122.882 parameter (0,1\%) berupa \textit{answer head}, \textit{bias}, dan normalisasi lapisan. Penelitian ini mengkuantisasi matriks bobot lapisan linear dan \textit{embedding} (Subbab 1.5). Apabila seluruh matriks bobot tersebut dikuantisasi INT4 dan disimpan dalam wadah satu \textit{byte}, ukuran bobot terkuantisasi adalah 50\% dari ukuran FP16, dan 25\% bila dipadatkan, di luar parameter yang tidak dikuantisasi dan faktor skala (Subbab 2.5.7).

\subsection{Waktu Penerapan \textit{Post-Training Quantization} dan \textit{Quantization-Aware Training}}

Kuantisasi pascapelatihan (\textit{post-training quantization}, PTQ) menentukan skala dan \textit{zero point} dari model yang sudah dilatih, sehingga tidak memerlukan pelatihan ulang dan dapat diterapkan pada model hasil \textit{fine-tuning} \parencite{gholami2021survey}. Sebaliknya, \textit{quantization-aware training} (QAT) memasukkan operasi kuantisasi ke dalam proses pelatihan agar model beradaptasi dengan presisi rendah, dengan konsekuensi biaya komputasi karena pelatihan ulang \parencite{gholami2021survey}. Perbedaan keduanya dirangkum pada Tabel~\ref{tab:qat-ptq}.

\begin{table}[htbp]
  \centering
  \small
  \renewcommand{\arraystretch}{1.2}
  \caption{Perbandingan \textit{Quantization-Aware Training} dan \textit{Post-Training Quantization} \parencite{gholami2021survey, abdurrahman2023implementing}}
  \label{tab:qat-ptq}
  \begin{tabularx}{\textwidth}{@{}>{\raggedright\arraybackslash}p{3.2cm}>{\raggedright\arraybackslash}X>{\raggedright\arraybackslash}X@{}}
    \hline
    \textbf{Aspek} & \textbf{QAT} & \textbf{PTQ} \\
    \hline
    Waktu penerapan & Selama proses pelatihan & Setelah model selesai dilatih \\
    Pelatihan ulang & Diperlukan & Tidak diperlukan \\
    Biaya komputasi & Tinggi karena pelatihan ulang & Rendah, hanya penentuan parameter kuantisasi \\
    F1 rata-rata IndoBERT 4-bit & 74,94 \parencite{abdurrahman2023implementing} & 72,78 \parencite{abdurrahman2023implementing} \\
    Contoh penelitian & Q8BERT \parencite{zafrir2019q8bert} dan QAT pada IndoBERT \parencite{abdurrahman2023implementing} & PTQ pada IndoBERT \parencite{abdurrahman2023implementing} dan Mokey \parencite{zadeh2022mokey} \\
    \hline
  \end{tabularx}
\end{table}

\subsection{Granularitas \textit{Per-Tensor} dan \textit{Per-Channel}}

Granularitas menentukan cakupan bobot yang memakai parameter kuantisasi bersama \parencite{gholami2021survey}. Pada \textit{per-tensor} (\textit{coarse-grained}), satu skala dipakai untuk seluruh \textit{tensor}, sehingga $\alpha$ pada Persamaan~\ref{eq:skala} adalah nilai absolut terbesar seluruh \textit{tensor} $W$:
\begin{equation}
  s = \frac{\max(|W|)}{q_{\max}}
  \label{eq:skala-coarse}
\end{equation}
Pada \textit{per-channel} (\textit{fine-grained}), satu skala ditentukan untuk setiap baris keluaran $j$ dari \textit{tensor} bobot \parencite{gholami2021survey}:
\begin{equation}
  s_j = \frac{\max(|W_j|)}{q_{\max}}
  \label{eq:skala-fine}
\end{equation}
Kedua granularitas memakai rumus kuantisasi yang sama dan hanya berbeda pada cakupan nilai maksimum untuk menghitung skala. Sumbu $j$ adalah sumbu keluaran, yaitu baris pada matriks bobot lapisan linear, sedangkan pada \textit{embedding} satu baris adalah satu \textit{token}.

Contoh berikut memakai matriks bobot $2 \times 4$ pada INT4 dengan baris A (0,80; $-0{,}30$; 0,10; 0,55) dan baris B (0,20; 0,09; $-0{,}15$; 0,04). Pada \textit{per-tensor}, nilai absolut terbesar seluruh matriks adalah 0,80, sehingga satu skala $s = 0{,}80/7 \approx 0{,}1143$ dipakai untuk kedelapan bobot. Pada \textit{per-channel}, baris A tetap memakai $s_A = 0{,}80/7 \approx 0{,}1143$, sedangkan baris B memakai $s_B = 0{,}20/7 \approx 0{,}0286$ karena nilai terbesarnya 0,20. Setiap bobot dibagi dengan skala barisnya, dibulatkan, lalu dikalikan kembali dengan skala yang sama, dan hasilnya ditunjukkan pada Tabel~\ref{tab:contoh-granularitas}. Pada baris A, kedua granularitas menghasilkan nilai yang sama karena skalanya sama. Pada baris B, rata-rata \textit{error} turun dari 0,0321 pada \textit{per-tensor} menjadi 0,0057 pada \textit{per-channel}, atau 5,6 kali lebih kecil, karena bobot kecil pada baris B tidak lagi dibulatkan dengan langkah yang ditentukan oleh nilai 0,80 pada baris A.

\begin{table}[htbp]
  \centering
  \scriptsize
  \setlength{\tabcolsep}{3pt}
  \renewcommand{\arraystretch}{1.15}
  \caption{Contoh penghitungan \textit{per-tensor} dan \textit{per-channel} pada matriks bobot $2 \times 4$}
  \label{tab:contoh-granularitas}
  \begin{tabularx}{\textwidth}{@{}c>{\centering\arraybackslash}p{0.9cm}*{6}{>{\centering\arraybackslash}X}@{}}
    \hline
    \textbf{Baris} & \textbf{Bobot} & \textbf{\textit{Per-tensor} bilangan bulat} & \textbf{\textit{Per-tensor} dibaca kembali} & \textbf{\textit{Per-tensor} \textit{error}} & \textbf{\textit{Per-channel} bilangan bulat} & \textbf{\textit{Per-channel} dibaca kembali} & \textbf{\textit{Per-channel} \textit{error}} \\
    \hline
    A & 0,80 & 7 & 0,8000 & 0,0000 & 7 & 0,8000 & 0,0000 \\
    A & $-0{,}30$ & $-3$ & $-0{,}3429$ & 0,0429 & $-3$ & $-0{,}3429$ & 0,0429 \\
    A & 0,10 & 1 & 0,1143 & 0,0143 & 1 & 0,1143 & 0,0143 \\
    A & 0,55 & 5 & 0,5714 & 0,0214 & 5 & 0,5714 & 0,0214 \\
    B & 0,20 & 2 & 0,2286 & 0,0286 & 7 & 0,2000 & 0,0000 \\
    B & 0,09 & 1 & 0,1143 & 0,0243 & 3 & 0,0857 & 0,0043 \\
    B & $-0{,}15$ & $-1$ & $-0{,}1143$ & 0,0357 & $-5$ & $-0{,}1429$ & 0,0071 \\
    B & 0,04 & 0 & 0,0000 & 0,0400 & 1 & 0,0286 & 0,0114 \\
    \hline
  \end{tabularx}
\end{table}

Cakupan yang lebih kecil membuat nilai ekstrem pada satu bagian bobot tidak memengaruhi skala bagian lain, tetapi menambah jumlah skala yang harus disimpan \parencite{gholami2021survey}. Faktor skala ikut tersimpan di samping bobot terkuantisasi, sehingga ukuran berkas aktual lebih besar daripada ukuran teoretis. Tabel~\ref{tab:granularitas} menempatkan \textit{per-tensor} dan \textit{per-channel} di antara pilihan granularitas yang tersedia.

\begin{table}[htbp]
  \centering
  \small
  \renewcommand{\arraystretch}{1.2}
  \caption{Perbandingan tingkat granularitas kuantisasi \parencite{gholami2021survey}}
  \label{tab:granularitas}
  \begin{tabularx}{\textwidth}{@{}>{\raggedright\arraybackslash}p{3.4cm}>{\raggedright\arraybackslash}X>{\raggedright\arraybackslash}X>{\raggedright\arraybackslash}X@{}}
    \hline
    \textbf{Aspek} & \textbf{\textit{Per-tensor}} & \textbf{\textit{Per-channel}} & \textbf{\textit{Per-group}} \\
    \hline
    Cakupan satu skala & Satu \textit{tensor} & Satu baris keluaran & Satu kelompok elemen \\
    Jumlah skala pada model penelitian & 75 & 133.458 & Tidak diuji \\
    Variasi antarbaris & Tidak ditangani & Ditangani & Ditangani \\
    Variasi dalam satu baris & Tidak ditangani & Tidak ditangani & Ditangani \\
    \hline
  \end{tabularx}
\end{table}

\subsection{Penyimpanan Bobot INT4 dengan Teknik \textit{Bit-Packing}}

Memori umumnya dialamatkan per \textit{byte} (8 bit), sedangkan nilai INT4 hanya membutuhkan 4 bit. Tanpa penanganan khusus, satu nilai INT4 menempati satu \textit{byte} sehingga setengah kapasitas tidak terpakai. \textit{Bit-packing} memadatkan dua nilai INT4 ke dalam satu \textit{byte} melalui operasi \textit{bitwise} berupa penggeseran dan penggabungan bit, sehingga ukuran berkas bergantung pada cara penyimpanan dan bukan hanya pada jumlah bit per nilai.

Tanpa \textit{bit-packing}, ukuran berkas INT4 dua kali ukuran teoretisnya, yaitu 50\% dari ukuran FP16 dan bukan 25\%. Parameter yang tidak dikuantisasi dan faktor skala menambah kurang dari 0,5\% dari ukuran FP16. Pada kuantisasi tersimulasi, bobot dikembalikan ke presisi asal melalui \textit{dequantization} sebelum komputasi sehingga penghematan hanya terjadi pada penyimpanan, bukan pada waktu komputasi \parencite{gholami2021survey}. Karena itu, latensi tidak dapat diklaim membaik hanya karena bobot disimpan pada presisi lebih rendah (Subbab 2.6.2).

\section{Metrik Evaluasi dan Pengujian Signifikansi}

\subsection{Metrik \textit{Exact Match} dan F1}

\textit{Exact Match} (EM) dan F1 adalah metrik standar evaluasi SQuAD \parencite{rajpurkar2016squad}. Sebelum dibandingkan, jawaban prediksi dan jawaban acuan dinormalisasi dengan mengubah huruf menjadi huruf kecil, membuang tanda baca dan kata sandang bahasa Inggris (\textit{a}, \textit{an}, \textit{the}), serta menyeragamkan spasi \parencite{rajpurkar2016squad}. Pada SQuAD-id, pembuangan kata sandang bahasa Inggris hanya berdampak pada \textit{token} bahasa Inggris yang tidak diterjemahkan (seperti nama atau judul) dan berlaku setara pada kedua jawaban. Sebuah sampel bernilai 1 apabila jawaban prediksi cocok dengan salah satu jawaban acuan setelah normalisasi dan 0 apabila tidak, dan EM adalah proporsi sampel yang bernilai 1:
\begin{equation}
  \mathrm{EM} = \frac{\text{jumlah sampel yang cocok}}{N}
  \label{eq:em}
\end{equation}
\noindent dengan $N$ jumlah sampel.

F1 mengukur \textit{token overlap} antara jawaban prediksi dan jawaban acuan. \textit{Precision} ($P$) adalah proporsi \textit{token} prediksi yang juga muncul pada jawaban acuan, dan \textit{recall} ($R$) adalah proporsi \textit{token} jawaban acuan yang muncul pada prediksi \parencite{rajpurkar2016squad}. F1 dihitung dari keduanya:
\begin{equation}
  F1 = \frac{2 \cdot P \cdot R}{P + R}
  \label{eq:f1}
\end{equation}
Pada setiap sampel dipakai jawaban acuan yang menghasilkan F1 tertinggi, lalu F1 akhir adalah rata-rata seluruh sampel.

\subsection{Metrik Ukuran Model dan Latensi Inferensi}

Latensi inferensi adalah waktu yang diperlukan model untuk menghasilkan prediksi bagi satu \textit{batch} masukan \parencite{gholami2021survey}. Latensi bergantung pada perangkat, implementasi \textit{kernel}, dan cara penyimpanan bobot, sehingga dilaporkan sebagai metrik deskriptif, tidak diuji signifikansinya, dan tidak dipakai sebagai dasar klaim percepatan. Prosedur pengukurannya dijelaskan pada Subbab 3.2.7.

Efisiensi penyimpanan diukur melalui ukuran model dalam megabita (MB, 1 MB = $10^{6}$ byte), yaitu ukuran berkas setelah status model disimpan. Ukuran berkas aktual berbeda dari ukuran teoretis pada Subbab 2.4 karena faktor skala disimpan di samping bobot terkuantisasi, \textit{bias}, normalisasi lapisan, dan \textit{answer head} tidak dikuantisasi, dan \textit{bit-packing} tidak diterapkan (Subbab 2.5.7). Karena itu, ukuran teoretis dan ukuran berkas dilaporkan sebagai dua nilai yang berbeda.

\subsection{Uji Signifikansi dengan McNemar dan \textit{Paired Bootstrap}}

Selisih EM atau F1 antarkonfigurasi belum tentu mencerminkan perbedaan kinerja yang sesungguhnya, karena nilai tersebut dihitung pada sampel uji yang terbatas \parencite{dror2018hitchhiker}. Uji signifikansi diperlukan agar selisih yang teramati dapat dibedakan dari variasi acak pada sampel uji \parencite{dror2018hitchhiker}. Karena kedua model dievaluasi pada sampel uji yang sama, digunakan pengujian berpasangan.

Untuk EM yang bernilai biner pada setiap sampel, selisih dua model diuji dengan uji McNemar \parencite{dror2018hitchhiker, mcnemar1947}. Sampel dikelompokkan menurut kebenaran prediksi kedua model, dengan $b$ jumlah sampel yang benar pada model pertama tetapi salah pada model kedua dan $c$ sebaliknya. Statistik ujinya dengan koreksi kontinuitas \parencite{edwards1948continuity} adalah:
\begin{equation}
  \chi^2 = \frac{\left(|b - c| - 1\right)^2}{b + c}
  \label{eq:mcnemar}
\end{equation}
Apabila $b + c$ kurang dari 25, digunakan uji binomial eksak \parencite{fagerland2013mcnemar}.

Untuk F1 yang bernilai kontinu, \textit{paired bootstrap} mengambil sampel ulang dengan pengembalian dari himpunan sampel uji sebanyak $B$ kali, lalu menghitung selisih rata-rata skor kedua model pada setiap sampel ulang \parencite{bergkirkpatrick2012, efron1993}:
\begin{equation}
  \Delta^{*} = \bar{f}^{*}_{A} - \bar{f}^{*}_{B}
  \label{eq:bootstrap}
\end{equation}
\noindent dengan $\bar{f}^{*}_{A}$ dan $\bar{f}^{*}_{B}$ rata-rata skor model A dan model B pada satu sampel ulang. Penelitian ini memakai $B = 10.000$, sehingga diperoleh 10.000 nilai $\Delta^{*}$. Selisih dianggap signifikan apabila interval persentil 95\% dari $\Delta^{*}$ tidak memuat nol dengan taraf signifikansi $\alpha = 0{,}05$. Nilai $p$ dua sisi diperoleh dari dua kali proporsi sampel ulang yang selisihnya berada di sisi nol yang lebih kecil \parencite{efron1993}.

Perbandingan beberapa konfigurasi pada \textit{dataset} yang sama menambah jumlah uji berpasangan dan peluang kesalahan tipe I, sehingga nilai $p$ dikoreksi dengan metode Holm \parencite{holm1979}. Koreksi diterapkan terpisah untuk EM dan F1. $m$ nilai $p$ diurutkan dari terkecil, dan hipotesis ke-$k$ ditolak apabila $p_{(k)} \le \alpha/(m-k+1)$ serta seluruh hipotesis sebelumnya telah ditolak. Ukuran model bersifat deterministik sehingga tidak diuji, dan latensi diperlakukan sebagai metrik deskriptif.

\section{Penelitian Terdahulu dan Celah Penelitian}

\subsection{Ringkasan Penelitian Terdahulu}

Penelitian terdahulu pada Tabel~\ref{tab:penelitian-terdahulu} dipilih dengan empat syarat. Pertama, penelitian menerapkan kuantisasi tanpa pelatihan ulang atau pada model \textit{encoder} \textit{Transformer}. Kedua, penelitian dievaluasi pada GLUE atau SQuAD. Ketiga, penelitian terbit dalam lima tahun terakhir (2021--2026). Keempat, penelitian telah disitasi minimal lima kali menurut OpenAlex per 21 Oktober 2026. Urutannya dari yang paling relevan, yaitu PTQ \textit{weight-only} 4-bit pada BERT, hingga studi yang hanya berbagi masalah \textit{outlier} atau pengelompokan skala. SQuAD (termasuk SQuAD v1.1 dan v2.0) dipakai pada empat dari enam studi di tabel \parencite{zadeh2022mokey, bai2022towards, guo2023olive, wei2022outlier}. \textcite{gholami2021survey} adalah survei yang menjadi dasar teori Subbab 2.5 dan tidak dimasukkan ke tabel karena tidak melaporkan eksperimen.

\textcite{zadeh2022mokey} mengubah bobot BERT-Large menjadi indeks 4-bit tanpa \textit{fine-tuning} dan melaporkan F1 SQuAD v1.1 sebesar 93,17 dibanding 93,15 pada presisi penuh. \textcite{bai2022towards} meminimalkan \textit{error} rekonstruksi per modul, sedangkan \textcite{wei2022outlier} dan \textcite{guo2023olive} menangani \textit{outlier} aktivasi pada presisi 6-bit dan 4-bit. \textcite{bondarenko2021understanding} menganalisis kegagalan kuantisasi naif pada \textit{Transformer} dan memakai pengelompokan skala \textit{per-embedding-group}, sedangkan \textcite{kim2021ibert} membangun inferensi bilangan bulat penuh dengan \textit{speedup} 2,4 sampai 4,0 kali pada GPU T4.

Keenam penelitian tersebut dievaluasi pada bahasa Inggris. Penelitian pada bahasa Indonesia yang relevan terbit pada 2023 sampai 2026 dan belum mencapai lima sitasi pada tanggal tersebut, sehingga tidak dimasukkan ke tabel tetapi dibahas di sini. \textcite{abdurrahman2023implementing} menerapkan PTQ dan QAT pada IndoBERT dengan bobot 16, 8, 6, dan 4 bit untuk tujuh tugas IndoNLU, dan melaporkan F1 rata-rata PTQ 4-bit sebesar 72,78 dibanding 77,35 pada FP32, tanpa menyebut granularitas. Ramaputra dan Joddy (\citeyear{ramaputra2026evaluating}) menerapkan PTQ \textit{weight-only} dengan AWQ dan GPTQ pada model Qwen2.5 dan Gemma-3 untuk SQuAD-id, dengan EM Qwen2.5-14B 4-bit turun dari 48,61 menjadi 44,73 dan 43,80, sedangkan Qwen2.5-7B 4-bit berubah dari 42,05 menjadi 42,15 dan 42,34. \textcite{suhendra2026matrik} membandingkan model BERT berbahasa Indonesia pada SQuAD-id tanpa kuantisasi dan memakai \textit{bootstrap}, dengan F1 63,59 untuk \texttt{indobert-\allowbreak base-\allowbreak p1} dan 71,58 untuk \texttt{indolem/\allowbreak indobert-\allowbreak base-\allowbreak uncased}. \textcite{sanjaya2026quantization} membandingkan PTQ dan QAT pada IndoBERT untuk analisis sentimen tiga kelas dengan presisi FP16, INT8, dan INT4, dan melaporkan akurasi yang berubah tidak lebih dari 0,4 poin persentase.

{\setlength{\tabcolsep}{3pt}
\captionsetup[longtable]{font=normalsize}
\begingroup\scriptsize
\renewcommand{\arraystretch}{1.15}
\begin{longtable}{@{}c>{\raggedright\arraybackslash}p{1.55cm}>{\raggedright\arraybackslash}p{1.95cm}>{\raggedright\arraybackslash}p{2.45cm}>{\raggedright\arraybackslash}p{1.95cm}>{\raggedright\arraybackslash}p{1.25cm}>{\raggedright\arraybackslash}p{2.55cm}@{}}
  \caption{Penelitian terdahulu}
  \label{tab:penelitian-terdahulu} \\
  \hline
  \textbf{No} & \textbf{Referensi} & \textbf{Tujuan atau masalah} & \textbf{Model dan \textit{dataset}} & \textbf{Teknik} & \textbf{Metrik} & \textbf{Hasil utama} \\
  \hline
  \endfirsthead
  \hline
  \multicolumn{7}{c}{\tablename~\thetable{} (lanjutan)} \\
  \hline
  \textbf{No} & \textbf{Referensi} & \textbf{Tujuan atau masalah} & \textbf{Model dan \textit{dataset}} & \textbf{Teknik} & \textbf{Metrik} & \textbf{Hasil utama} \\
  \hline
  \endhead
  \hline
  \endlastfoot
  1 & Zadeh et al. (2022) & Metode \textit{fixed-point} biasanya menuntut pelatihan ulang, sehingga perlu cara agar model \textit{floating point} dapat dijalankan tanpa \textit{fine-tuning} & BERT-Base/Large, RoBERTa-Large, DeBERTa-XL; MNLI, STS-B, SQuAD v1.1 & PTQ \textit{weight-only} 4-bit: bobot menjadi indeks 4-bit ke \textit{dictionary} \textit{centroid} 16-bit & F1, akurasi & BERT-Large SQuAD: F1 93,15 (FP) $\rightarrow$ 93,17 (\textit{weight-only}), 92,22 bila aktivasi ikut dikuantisasi \\
  2 & Bai et al. (2022) & PTQ naif menurunkan akurasi model bahasa pralatih, sehingga diperlukan optimasi per modul & Model bahasa pralatih (keluarga BERT); GLUE dan SQuAD & PTQ per modul (MREM): \textit{error} rekonstruksi diminimalkan pada tiap modul & EM, F1, metrik GLUE & Hasil mendekati QAT pada GLUE dan SQuAD dengan biaya pelatihan lebih rendah \\
  3 & Guo et al. (2023) & \textit{Outlier} pada aktivasi membuat kuantisasi 4-bit bobot dan aktivasi gagal & BERT-Base/Large, BART-Base; GLUE (8 tugas), SQuAD v1.1 dan v2.0 & PTQ 4-bit bobot dan aktivasi (W4A4) dengan \textit{outlier-victim pair} & Akurasi, F1 & Penurunan akurasi kurang dari 1\% pada 4-bit, mengungguli PTQ 6-bit \textit{outlier suppression} \\
  4 & Wei et al. (2022) & \textit{Outlier} pada aktivasi dan \textit{embedding} menghambat kuantisasi presisi rendah & BERT, RoBERTa, BART; GLUE, SQuAD v1.1 dan v2.0, peringkasan & PTQ 6-bit: \textit{gamma migration} dan \textit{token-wise clipping} & EM, F1, metrik GLUE & PTQ BERT 6-bit mencapai level presisi penuh. Pada SQuAD v1.1 unggul 4,73\% (BERT) dan 15,55\% (RoBERTa) dibanding metode PTQ 6-bit terbaik sebelumnya \\
  5 & Bondarenko et al. (2021) & Kuantisasi naif gagal pada \textit{Transformer} & BERT-Base; GLUE & PTQ dan QAT dengan \textit{per-embedding-group quantization} & Metrik GLUE & GLUE 83,06 (FP32), 71,03 (W8A8), 70,25 (W32A8), 83,23 (W8A32) \\
  6 & Kim et al. (2021) & Operasi non-linear seperti GELU, Softmax, dan LayerNorm menghalangi kuantisasi \textit{integer-only} & BERT, RoBERTa; GLUE & Kuantisasi \textit{integer-only} INT8 (W8A8) dengan aproksimasi GELU, Softmax, dan LayerNorm & Metrik GLUE & Akurasi setara atau sedikit lebih tinggi dari FP32, dengan \textit{speedup} 2,4--4,0$\times$ pada GPU T4 \\
\end{longtable}
\endgroup
}

\noindent Keterangan: MREM (\textit{module-wise reconstruction error minimization}), GLUE (\textit{General Language Understanding Evaluation}), MNLI (\textit{Multi-Genre Natural Language Inference}), STS-B (\textit{Semantic Textual Similarity Benchmark}). Angka antarbaris tidak dapat dibandingkan langsung karena metrik dilaporkan pada \textit{dataset} dan tugas yang berbeda. Tabel ini menunjukkan selisih kinerja terhadap presisi penuh pada masing-masing penelitian, bukan peringkat metode.

\subsection{Celah Penelitian dan Kerangka Berpikir}

Tabel~\ref{tab:penelitian-terdahulu} dan penelitian berbahasa Indonesia pada Subbab 2.7.1 menunjukkan tiga celah. Pertama, kuantisasi bobot 4-bit pada model \textit{encoder} dilaporkan pada BERT berbahasa Inggris \parencite{zadeh2022mokey}. Pada IndoBERT, kuantisasi 4-bit baru dilaporkan sebagai F1 rata-rata tujuh tugas IndoNLU, termasuk FacQA yang berupa \textit{span extraction}, tanpa menyebut granularitas \parencite{abdurrahman2023implementing}. Pada SQuAD-id, kuantisasi baru dilaporkan untuk model \textit{decoder-only} \parencite{ramaputra2026evaluating}, dan studi pada model \textit{encoder} tidak menerapkan kuantisasi \parencite{suhendra2026matrik}. Kedua, pengelompokan skala pada \textit{encoder} dikaji pada BERT berbahasa Inggris dengan tugas GLUE \parencite{bondarenko2021understanding}. Granularitas relevan pada INT4 karena skema simetris hanya menyediakan 15 tingkat nilai ($-7$ sampai 7) dan satu nilai ekstrem dapat memperlebar langkah kuantisasi seluruh bobot dalam satu \textit{tensor} (Persamaan~\ref{eq:skala-coarse}), sedangkan \textit{per-channel} membatasi pengaruh itu pada satu baris (Persamaan~\ref{eq:skala-fine}). Ketiga, studi yang membandingkan model pada SQuAD-id memakai \textit{bootstrap} \parencite{suhendra2026matrik}, tetapi tidak untuk menguji selisih model terkuantisasi terhadap \textit{baseline} dengan koreksi perbandingan berganda. Dalam penelusuran penulis, ketiga hal tersebut belum ditemukan.

Penelitian ini menjawab celah tersebut dengan mengevaluasi \textit{weight-only} PTQ INT4 pada IndoBERT untuk SQuAD-id. Dua granularitas, \textit{per-tensor} dan \textit{per-channel}, dibandingkan dengan model FP16 menggunakan EM, F1, ukuran model, dan latensi, dan selisih EM dan F1 diuji signifikansinya. Alur penalaran ini dirangkum pada Gambar~\ref{fig:kerangka-berpikir}.

\begin{figure}[htbp]
  \centering
  \includegraphics[width=\textwidth,height=0.34\textheight,keepaspectratio]{"resources/Kerangka berpikir penelitian.png"}
  \caption{Kerangka berpikir penelitian}
  \label{fig:kerangka-berpikir}
\end{figure}
```

<a id="f-src-chapters-chapter-3-tex"></a>

## `src/chapters/chapter-3.tex`

Ukuran 28,075 byte &middot; 303 baris &middot; sha256 `c56efc9ef707` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Bab III — Metode Penelitian
%
%--------------------------------------------------------------------%

\chapter{Metode Penelitian}

\section{Jenis dan Alur Penelitian}

\subsection{Jenis Penelitian Eksperimental Kuantitatif}

Penelitian ini merupakan penelitian eksperimental kuantitatif. Perlakuan yang diberikan adalah kuantisasi \textit{weight-only} INT4 pada model yang telah di-\textit{fine-tune}, dengan dua granularitas sebagai variasi perlakuan, yaitu \textit{per-tensor} dan \textit{per-channel}. Kondisi pengujian dikendalikan agar identik, yaitu data uji, model dasar, lingkungan komputasi, dan prosedur evaluasi yang sama untuk seluruh konfigurasi.

Pendekatan eksperimental dipilih karena tiga alasan. Pertama, rumusan masalah menuntut pengukuran akibat suatu perlakuan, bukan pengamatan keadaan yang sudah ada. Kedua, perlakuan dapat diberikan secara terkendali karena kuantisasi hanya mengubah presisi bobot, sedangkan arsitektur model tidak berubah. Ketiga, hasil perlakuan dapat diukur secara kuantitatif melalui metrik baku tugas \textit{extractive question answering} (Subbab 2.6).

Penelitian ini tidak termasuk penelitian pengembangan perangkat lunak. Keluaran penelitian berupa bukti empiris mengenai pengaruh kuantisasi INT4 dan granularitasnya, bukan sistem atau aplikasi baru. Kode program kuantisasi disertakan sebagai lampiran agar hasil dapat direproduksi, dan kedudukannya adalah alat penelitian.

\subsection{Alur Penelitian}

Penelitian dimulai dengan studi literatur untuk menyusun rumusan masalah pada Bab I dan celah penelitian pada Subbab 2.7.2, lalu menetapkan tujuan dan batasan penelitian. Eksperimen dirancang dengan menetapkan data, model, konfigurasi kuantisasi, metrik, dan uji statistik. Data disiapkan dan model di-\textit{fine-tune} pada FP32 untuk tiga nilai \textit{seed}.

Model hasil \textit{fine-tuning} kemudian dijadikan \textit{baseline} dan model terkuantisasi, lalu ukurannya diukur. Ketiga konfigurasi diuji pada data uji, dianalisis secara deskriptif, dan diuji signifikansinya. Kesimpulan ditarik dan laporan disusun. Alur ini ditunjukkan pada Gambar~\ref{fig:alur-penelitian}.

\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.90\textwidth,height=0.40\textheight,keepaspectratio]{"resources/Alur penelitian.png"}
  \caption{Alur penelitian}
  \label{fig:alur-penelitian}
\end{figure}

\section{Desain Eksperimen}

\subsection{Gambaran Umum Desain Eksperimen}

Desain eksperimen bertumpu pada satu model dasar yang sama untuk seluruh konfigurasi. Model IndoBERT-base fase 2 di-\textit{fine-tune} pada data latih dalam FP32, lalu bobot hasil \textit{fine-tuning} disalin tiga kali. Salinan pertama dikonversi ke FP16 sebagai \textit{baseline}. Salinan kedua dikuantisasi INT4 dengan granularitas \textit{per-tensor}, dan salinan ketiga dikuantisasi INT4 dengan granularitas \textit{per-channel}.

Pemisahan dilakukan pada kuantisasi, bukan pada pelatihan. Dengan cara ini ketiga konfigurasi berbagi bobot awal yang identik, sehingga perbedaan hasil hanya berasal dari presisi dan granularitas bobot. Ketiga konfigurasi dievaluasi pada data uji yang sama dengan prosedur yang sama, dan alurnya ditunjukkan pada Gambar~\ref{fig:desain-eksperimen}.

\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.90\textwidth,height=0.40\textheight,keepaspectratio]{"resources/desain eksperimen.png"}
  \caption{Desain eksperimen untuk tiga konfigurasi}
  \label{fig:desain-eksperimen}
\end{figure}

\subsection{Lingkungan Eksperimen}

Seluruh eksperimen dijalankan pada lingkungan komputasi yang sama, mulai dari penyiapan data, \textit{fine-tuning}, kuantisasi, hingga pengukuran. Lingkungan tersebut dirangkum pada Tabel~\ref{tab:lingkungan}. Spesifikasi dicantumkan karena pengukuran latensi dan ukuran berkas bergantung pada perangkat keras, sistem operasi, dan versi pustaka.

\begin{table}[!ht]
  \centering
  \small
  \renewcommand{\arraystretch}{1.2}
  \caption{Lingkungan eksperimen penelitian}
  \label{tab:lingkungan}
  \begin{tabularx}{\textwidth}{@{}>{\raggedright\arraybackslash}p{4.2cm}X@{}}
    \hline
    \textbf{Komponen} & \textbf{Spesifikasi} \\
    \hline
    Platform & Kaggle Notebooks \\
    GPU & NVIDIA Tesla T4, 16 GB VRAM, satu GPU dipakai \\
    CPU & 4 vCPU \\
    Memori & 29 GB RAM \\
    Penyimpanan & 20 GB, ditambah \textit{dataset} yang diunggah permanen \\
    Batas eksekusi & 9 jam per sesi, kuota 30 jam GPU per minggu \\
    Bahasa pemrograman & Python \\
    Pustaka utama & PyTorch, \textit{transformers}, \textit{datasets}, NumPy \\
    Versi pustaka & Mengikuti \textit{image} Kaggle saat eksekusi dan dicatat pada lampiran \\
    \hline
  \end{tabularx}
\end{table}

Dua keputusan lingkungan perlu dijelaskan. Pertama, hanya satu GPU yang dipakai walaupun platform menyediakan dua, karena model 123,9 juta parameter yang dilatih pada 64.054 baris dapat ditampung pada satu GPU 16 GB sehingga pelatihan terdistribusi tidak diperlukan. Kedua, seluruh \textit{run} dijalankan pada jenis GPU yang sama, karena latensi yang diukur pada perangkat berbeda tidak dapat dibandingkan walaupun model dan data uji identik.

Kaggle dipilih karena menyediakan GPU T4 dengan kuota 30 jam per minggu dan batas sesi 9 jam. \textit{Dataset} diunggah sebagai \textit{dataset} permanen agar tidak diunduh ulang pada setiap sesi. Lokasi penelitian adalah lingkungan daring Kaggle Notebooks, sehingga penelitian tidak terikat pada satu ruang fisik.

\subsection{Data Penelitian dan Analisis Data Eksploratif}

Penelitian ini menggunakan \textit{dataset} SQuAD-id, yaitu terjemahan mesin SQuAD v2.0 ke bahasa Indonesia \parencite{muis2020sequence}. Karakteristik berkas mentah dirangkum pada Tabel~\ref{tab:karakteristik-dataset} di Subbab 2.3. Data bersifat sekunder dan tersedia untuk umum. Lisensi \textit{dataset} belum ditetapkan pada kartu \textit{dataset}, sehingga ketentuan penggunaan diperiksa sebelum data didistribusikan ulang.

Berkas data diunduh dari sumber publik yang tercantum pada kartu \textit{dataset}, lalu diunggah ke Kaggle sebagai \textit{dataset} permanen (Subbab 3.2.2). Instrumen pengumpulan data adalah \textit{dataset} itu sendiri, tanpa kuesioner atau wawancara. Setiap baris berisi satu konteks, satu pertanyaan, teks jawaban beserta posisi awalnya, dan penanda apakah pertanyaan tersebut tidak dapat dijawab.

Analisis data eksploratif dilakukan pada berkas mentah sebelum penyaringan. Pemeriksaan mencakup lima hal, yaitu keutuhan berkas dan jumlah baris tiap pembagian, jumlah artikel dan konteks unik, distribusi penanda pertanyaan tanpa jawaban, kesesuaian posisi jawaban dengan teksnya, serta panjang konteks dan pertanyaan dalam kata dan \textit{token}. Pemeriksaan posisi jawaban paling menentukan karena berkas mentah memuat 25.462 dari 86.821 baris terjawab pada data latih (29,3\%) yang posisi jawabannya tidak menunjuk pada teks jawaban.

Hasil pemeriksaan menunjukkan dua hal yang memengaruhi rancangan eksperimen. Pertama, satu konteks dipakai rata-rata 6,8 pertanyaan (130.319 baris pada 19.029 konteks unik), sehingga pemisahan data secara acak per baris akan menempatkan konteks yang sama pada data latih dan data validasi. Kedua, panjang konteks memiliki median 98 kata dan persentil ke-95 sebesar 192 kata, sehingga batas panjang masukan dapat ditetapkan dari distribusi tersebut (Subbab 3.2.4).

Pembagian data dilakukan pada tingkat artikel, bukan pada tingkat baris. Data uji memakai seluruh pembagian \textit{dev} asli yang memuat 35 artikel, dan tidak ada artikel yang muncul pada data latih sekaligus data uji. Data latih mentah memuat 441 artikel, dan setelah penyaringan dua artikel tidak menyisakan baris yang dapat dipakai sehingga tersisa 439 artikel.

Data validasi dibentuk dengan memisahkan 10\% dari 439 artikel tersebut, yaitu 44 artikel, menggunakan \textit{seed} tetap, dan 395 artikel sisanya menjadi data latih. Dari 70.051 baris hasil penyaringan, 5.997 baris masuk ke data validasi sehingga tersisa 64.054 baris untuk pelatihan. Pemisahan pada tingkat artikel membuat data validasi meniru kondisi data uji sekaligus mencegah kebocoran konteks, dan hasil pembagian akhir ditunjukkan pada Tabel~\ref{tab:pembagian-data}.

\begin{table}[!ht]
  \centering
  \small
  \renewcommand{\arraystretch}{1.2}
  \caption{Pembagian data setelah praproses}
  \label{tab:pembagian-data}
  \begin{tabularx}{\textwidth}{@{}Xrrr@{}}
    \hline
    \textbf{Ukuran} & \textbf{Latih} & \textbf{Validasi} & \textbf{Uji} \\
    \hline
    Jumlah baris & 64.054 & 5.997 & 5.244 \\
    Artikel & 395 & 44 & 35 \\
    Konteks unik & 17.136 & 1.574 & 1.200 \\
    Jumlah jawaban acuan & 64.054 & 5.997 & 16.428 \\
    Median panjang konteks (\textit{token}) & 135 & 136 & 137 \\
    \hline
  \end{tabularx}
\end{table}

\subsection{Praproses Data}

Praproses membuang baris pertanyaan tanpa jawaban, memperbaiki posisi jawaban, membuang duplikat, dan menyiapkan fitur masukan. Baris bertanda pertanyaan tanpa jawaban dibuang, yaitu 43.498 baris data latih dan 5.945 baris data uji, karena penelitian ini tidak menguji kemampuan model memutuskan bahwa suatu pertanyaan tidak dapat dijawab (Subbab 1.5).

Posisi jawaban diperbaiki pada baris yang ditandai tidak valid. Untuk setiap jawaban, konteks dibersihkan dari karakter tak terlihat dan spasi ganda, lalu pencocokan dilakukan bertingkat, yaitu \textit{exact matching}, \textit{exact matching} setelah normalisasi kapitalisasi dan diakritik, dan \textit{fuzzy matching} berbasis Levenshtein dengan ambang kemiripan 85. Hasil pencocokan dirapatkan ke batas kata, dan teks jawaban disimpan sebagai potongan konteks agar posisi dan isinya konsisten.

Perbaikan berhasil pada 8.757 baris data latih, terdiri atas 3.168 baris yang hanya memerlukan normalisasi dan 5.589 baris yang memerlukan \textit{fuzzy matching}. Sebanyak 16.705 baris data latih dan 676 baris data uji dibuang karena jawabannya tidak ditemukan pada konteks. Penulis memeriksa secara manual 30 jawaban hasil \textit{fuzzy matching} dan menemukan 29 jawaban benar (96,7\%), dengan interval kepercayaan Wilson 95\% sebesar 83\% sampai 99\%. Sampel ini kecil, sehingga angka tersebut dilaporkan sebagai gambaran kualitas perbaikan dan bukan sebagai jaminan.

Duplikat berdasarkan pasangan konteks dan pertanyaan dibuang, yaitu 65 baris data latih dan 8 baris data uji. Setiap contoh kemudian dibentuk dari pasangan pertanyaan dan konteks dengan panjang maksimum 384 \textit{token} dan \textit{stride} 128 \textit{token} antarjendela, sehingga konteks yang lebih panjang dipecah menjadi lebih dari satu jendela yang saling tumpang tindih. Panjang jawaban maksimum ditetapkan 30 \textit{token}.

Batas 384 \textit{token} ditetapkan dari distribusi panjang konteks hasil tokenisasi, yaitu median 135 \textit{token}, persentil ke-95 sebesar 261 \textit{token}, dan persentil ke-99 sebesar 349 \textit{token}. Hanya 0,70\% konteks yang melebihi 384 \textit{token} dan dipecah menjadi lebih dari satu jendela, dan seluruh jawaban berada di dalam setidaknya satu jendela sehingga tidak ada label yang hilang. Setiap contoh menyimpan tiga masukan, yaitu \textit{input\_ids}, \textit{attention\_mask}, dan \textit{token\_type\_ids}, serta dua label berupa posisi awal dan posisi akhir jawaban.

\subsection{Model IndoBERT-base dan Pengaturan \textit{Fine-Tuning}}

Model yang dipakai adalah \texttt{indobert-base-p2} dengan 12 lapisan \textit{encoder}, ukuran \textit{hidden} 768, 12 \textit{head} perhatian, ukuran lapisan \textit{feed-forward} 3.072, dan kosakata 50.000 \textit{token}. Model untuk tugas \textit{question answering} tidak memiliki lapisan \textit{pooler}, sehingga jumlah parameternya 123.852.290. Model ini dipralatih pada korpus Indo4B \parencite{wilie2020indonlu}. Fase 2 dipilih karena melanjutkan pralatih pada panjang urutan maksimum 512 \textit{token}, sedangkan fase 1 hanya 128 \textit{token}, dan penelitian ini memakai jendela hingga 384 \textit{token} (Subbab 2.2.2).

\textit{Task head} ditambahkan di atas keluaran \textit{encoder} untuk memprediksi posisi awal dan posisi akhir jawaban. \textit{Head} ini terdiri atas satu lapisan linear berukuran 768 ke 2, yaitu 1.538 parameter (0,001\% dari seluruh parameter). Keluaran model berupa skor untuk setiap posisi \textit{token}. \textit{Span} dengan jumlah skor awal dan akhir tertinggi, dengan posisi awal tidak melewati posisi akhir dan panjang paling banyak 30 \textit{token}, dipilih sebagai jawaban, dan untuk pertanyaan yang konteksnya terbagi menjadi lebih dari satu jendela dipakai \textit{span} dengan skor tertinggi di antara seluruh jendela.

\textit{Fine-tuning} dilakukan dengan pengaturan pada Tabel~\ref{tab:hyperparameter}. \textit{Learning rate} dan ukuran \textit{batch} berada pada rentang yang direkomendasikan \textcite{devlin2019bert} untuk \textit{fine-tuning} BERT, sedangkan jumlah \textit{epoch} maksimum 6 dibatasi oleh \textit{early stopping}. Pada setiap \textit{epoch}, model dievaluasi pada data validasi, dan bobot dengan F1 validasi tertinggi disimpan sebagai \textit{checkpoint}. Fungsi kerugian adalah \textit{cross-entropy} pada posisi awal dan posisi akhir jawaban, dengan nilai kerugian keduanya dirata-ratakan. Seluruh pengaturan ditetapkan sebelum pelatihan dan tidak disetel menggunakan data uji.

\begin{table}[!ht]
  \centering
  \small
  \renewcommand{\arraystretch}{1.2}
  \caption{Pengaturan \textit{fine-tuning}}
  \label{tab:hyperparameter}
  \begin{tabularx}{\textwidth}{@{}>{\raggedright\arraybackslash}p{6.2cm}X@{}}
    \hline
    \textbf{Parameter} & \textbf{Nilai} \\
    \hline
    Model dasar & \texttt{indobert-base-p2} \\
    Panjang urutan maksimum & 384 \textit{token} \\
    \textit{Stride} antarjendela & 128 \textit{token} \\
    Panjang jawaban maksimum & 30 \textit{token} \\
    Ukuran \textit{batch} & 16 \\
    Fungsi kerugian & \textit{Cross-entropy} posisi awal dan akhir, dirata-ratakan \\
    \textit{Optimizer} & AdamW \\
    \textit{Learning rate} & $2 \times 10^{-5}$ \\
    Jumlah \textit{epoch} maksimum & 6 \\
    \textit{Early stopping} & \textit{patience} 2 pada F1 validasi, ambang perbaikan 0,001 \\
    Pemilihan \textit{checkpoint} & F1 validasi tertinggi, bobot terbaik dipulihkan \\
    \textit{Seed} & 42, 1337, dan 2024 \\
    \hline
  \end{tabularx}
\end{table}

Tiga \textit{seed} dipakai untuk mengukur variasi hasil akibat proses pelatihan, mengikuti praktik pada penelitian kuantisasi model berbahasa Indonesia yang melaporkan tiga \textit{seed} \parencite{sanjaya2026quantization}. Setiap \textit{seed} menghasilkan satu \textit{checkpoint} yang menjadi dasar bagi ketiga konfigurasi.

\subsection{Implementasi Kuantisasi \textit{Weight-Only} INT4}

Kuantisasi diterapkan pada bobot model setelah \textit{fine-tuning} selesai, tanpa pelatihan ulang dan tanpa data kalibrasi. Skema yang dipakai adalah kuantisasi seragam simetris INT4 dengan bilangan bulat pada rentang $-7$ sampai 7 (Persamaan~\ref{eq:simetris} dan Persamaan~\ref{eq:skala} pada Subbab 2.5.3). Aktivasi tidak dikuantisasi, sehingga konfigurasi ini termasuk \textit{weight-only} PTQ (Subbab 2.5.4). Nilai $\alpha$ diambil dari bobot itu sendiri, sehingga tidak ada hiperparameter kuantisasi yang disetel menggunakan data uji.

Model hasil \textit{fine-tuning} FP32 disalin agar bobot asli tetap tersedia, lalu seluruh lapisan linear dan \textit{embedding} dikumpulkan dengan menelusuri modul secara rekursif. Untuk setiap \textit{tensor} bobot dihitung nilai absolut terbesar $\alpha$, yaitu satu $\alpha$ per \textit{tensor} pada konfigurasi \textit{per-tensor} (Persamaan~\ref{eq:skala-coarse}) dan satu $\alpha$ per baris pada konfigurasi \textit{per-channel} (Persamaan~\ref{eq:skala-fine}), lalu skala dihitung sebagai $s = \alpha / 7$. Setiap bobot dibagi dengan skalanya, dibulatkan ke bilangan bulat terdekat, dan dibatasi pada $-7$ sampai 7. Modul asli kemudian diganti dengan modul terkuantisasi yang menyimpan bilangan bulat dalam \textit{container} 8-bit beserta skala dalam FP32. Contoh penghitungan dengan angka tercantum pada Tabel~\ref{tab:contoh-format} dan Tabel~\ref{tab:contoh-granularitas}.

Skala dihitung dari bobot FP32 hasil \textit{fine-tuning}, bukan dari bobot FP16, agar pembulatan tidak terjadi dua kali. Pada inferensi, bilangan bulat dikalikan dengan skalanya melalui \textit{dequantization} sehingga kembali menjadi bobot FP16 sebelum operasi linear dijalankan, dan aktivasi tetap pada FP16. Karena itu, penghematan berada pada ukuran penyimpanan, bukan pada waktu komputasi. Bobot INT4 disimpan dalam \textit{container} 8-bit tanpa \textit{bit-packing}, sehingga ukuran bobot terkuantisasi dua kali ukuran teoretisnya (Subbab 2.5.7).

Prosedur yang sama diterapkan pada \textit{checkpoint} ketiga \textit{seed}, karena prosedur ini hanya beroperasi pada \textit{tensor} bobot dan tidak bergantung pada data. Perbedaan antar\textit{seed} hanya berasal dari bobot hasil \textit{fine-tuning}.

Kuantisasi mencakup seluruh matriks bobot, termasuk \textit{embedding}, karena \textit{embedding} menyumbang 31,3\% dari seluruh parameter dan melewatkannya akan membuat 31,3\% parameter tetap berukuran FP16 sehingga penghematan ukuran yang menjadi tujuan penelitian berkurang. \textit{Bias}, normalisasi lapisan, dan \textit{answer head} tidak dikuantisasi dan disimpan dalam FP16, sama seperti pada \textit{baseline}. Sumbu \textit{per-channel} adalah baris \textit{tensor}, yaitu satu keluaran pada lapisan linear dan satu \textit{token} pada \textit{embedding} kata, posisi, dan tipe \textit{token}. Modul yang dikuantisasi, jumlah parameter, dan jumlah skalanya ditunjukkan pada Tabel~\ref{tab:modul-kuantisasi}.

\begin{table}[!ht]
  \centering
  \small
  \renewcommand{\arraystretch}{1.2}
  \caption{Modul IndoBERT-base untuk \textit{question answering} dan jumlah skala kuantisasinya}
  \label{tab:modul-kuantisasi}
  \begin{tabularx}{\textwidth}{@{}>{\raggedright\arraybackslash}Xrrrr@{}}
    \hline
    \textbf{Kelompok modul} & \textbf{Jumlah \textit{tensor}} & \textbf{Jumlah parameter} & \textbf{Dikuantisasi} & \textbf{Skala \textit{per-channel}} \\
    \hline
    \textit{Embedding} kata, posisi, dan tipe \textit{token} & 3 & 38.794.752 & ya & 50.514 \\
    Proyeksi atensi (\textit{query}, \textit{key}, \textit{value}, keluaran) & 48 & 28.311.552 & ya & 36.864 \\
    Lapisan \textit{feed-forward} (12 lapisan) & 24 & 56.623.104 & ya & 46.080 \\
    \textit{Bias} dan normalisasi lapisan & -- & 121.346 & tidak & -- \\
    \textit{Answer head} & -- & 1.536 & tidak & -- \\
    \hline
    Total & 75 & 123.852.290 & 123.729.408 & 133.458 \\
    \hline
  \end{tabularx}
\end{table}

Skala \textit{per-channel} menambah 0,2\% dari ukuran FP16, sedangkan skala \textit{per-tensor} hanya menambah 300 \textit{byte}. Ukuran model hasil hitungan ditunjukkan pada Tabel~\ref{tab:ukuran-model}, dengan 1 MB sama dengan $10^{6}$ \textit{byte}.

\begin{table}[!ht]
  \centering
  \small
  \renewcommand{\arraystretch}{1.2}
  \caption{Ukuran model hasil hitungan dengan parameter tak terkuantisasi FP16 dan skala FP32}
  \label{tab:ukuran-model}
  \begin{tabularx}{\textwidth}{@{}Xrr@{}}
    \hline
    \textbf{Konfigurasi} & \textbf{Ukuran (MB)} & \textbf{Rasio terhadap FP16} \\
    \hline
    FP16 & 247,7 & 100\% \\
    INT4 \textit{per-tensor} dalam \textit{container} 8-bit & 124,0 & 50,1\% \\
    INT4 \textit{per-channel} dalam \textit{container} 8-bit & 124,5 & 50,3\% \\
    \hline
  \end{tabularx}
\end{table}

Ukuran berkas aktual diukur setelah model disimpan dan dibandingkan dengan hitungan pada Tabel~\ref{tab:ukuran-model}.

\subsection{Skenario dan Pengukuran Pengujian}

Pengujian dilakukan terhadap tiga konfigurasi pada data uji yang sama, dengan tiga \textit{seed} sebagai ulangan. Setiap konfigurasi diukur dengan empat metrik, yaitu EM, F1, ukuran model, dan latensi inferensi. Definisi keempat metrik dibahas pada Subbab 2.6, sedangkan subbab ini menetapkan skenario dan prosedur pengukurannya.

EM dan F1 diukur pada setiap \textit{seed}, sehingga terdapat sembilan nilai untuk masing-masing metrik dari tiga konfigurasi dan tiga \textit{seed}. Ukuran model diukur sekali untuk setiap konfigurasi karena nilainya tidak bergantung pada \textit{seed}. Latensi diukur pada setiap konfigurasi menggunakan model \textit{seed} 42 dengan satu \textit{batch} berisi 16 contoh berpanjang 384 \textit{token} yang diambil dari data uji. Pengukuran diawali 10 iterasi \textit{warm-up} dan dilanjutkan 100 pengulangan, dengan sinkronisasi CUDA sebelum dan sesudah setiap pengulangan, lalu dilaporkan median dan persentil ke-95 waktu per \textit{batch}. Rangkuman skenario ditunjukkan pada Tabel~\ref{tab:skenario}.

\begin{table}[!ht]
  \centering
  \small
  \renewcommand{\arraystretch}{1.2}
  \caption{Skenario pengujian}
  \label{tab:skenario}
  \begin{tabularx}{\textwidth}{@{}c>{\raggedright\arraybackslash}p{2.4cm}>{\raggedright\arraybackslash}p{2.4cm}>{\raggedright\arraybackslash}p{2.8cm}>{\raggedright\arraybackslash}p{1.6cm}>{\raggedright\arraybackslash}X@{}}
    \hline
    \textbf{No} & \textbf{Konfigurasi} & \textbf{Presisi bobot} & \textbf{Granularitas} & \textbf{Ulangan} & \textbf{Metrik} \\
    \hline
    1 & \textit{Baseline} & FP16 & -- & 3 \textit{seed} & EM, F1, ukuran, latensi \\
    2 & Kuantisasi & INT4 & \textit{per-tensor} & 3 \textit{seed} & EM, F1, ukuran, latensi \\
    3 & Kuantisasi & INT4 & \textit{per-channel} & 3 \textit{seed} & EM, F1, ukuran, latensi \\
    \hline
  \end{tabularx}
\end{table}

Data uji berisi 5.244 pertanyaan dengan 16.428 jawaban acuan. Evaluasi EM dan F1 memakai jawaban acuan dengan skor tertinggi untuk setiap pertanyaan, sesuai prosedur standar SQuAD \parencite{rajpurkar2016squad}, dan normalisasi teks mengikuti Subbab 2.6.1.

\section{Teknik Analisis Hasil Penelitian}

\subsection{Analisis Deskriptif}

Analisis deskriptif menggambarkan selisih kinerja dan efisiensi antara konfigurasi kuantisasi dan \textit{baseline}. Untuk EM dan F1 dilaporkan rata-rata dan simpangan baku sampel (pembagi $n-1$) dari tiga \textit{seed}, serta selisih terhadap \textit{baseline} pada \textit{seed} yang sama. Untuk ukuran model dilaporkan ukuran berkas aktual dalam megabita dan rasionya terhadap FP16. Untuk latensi dilaporkan median dan persentil ke-95 tanpa uji statistik.

Pertukaran antara kinerja dan efisiensi dianalisis dengan menyandingkan penurunan F1 (dalam poin) dan pengurangan ukuran model (dalam persen) pada setiap granularitas. Dari penyandingan ini terlihat granularitas mana yang memberi penghematan ukuran terbesar untuk penurunan F1 terkecil.

Selisih EM dan F1 dihitung berpasangan per \textit{seed} agar variasi akibat pelatihan tidak tercampur dengan pengaruh kuantisasi. Selisih antargranularitas kemudian dibandingkan dengan simpangan baku antar\textit{seed}. Bila selisih antargranularitas lebih kecil daripada simpangan baku tersebut, kedua granularitas dilaporkan tidak dapat dibedakan secara deskriptif. Karena hanya ada tiga \textit{seed}, simpangan baku dipakai sebagai gambaran distribusi dan bukan sebagai dasar inferensi.

\subsection{Uji Signifikansi Statistik}

Analisis deskriptif menunjukkan besarnya selisih, tetapi tidak menunjukkan apakah selisih tersebut berasal dari perlakuan atau dari variasi acak pada sampel uji. Karena itu dilakukan uji signifikansi berpasangan, dengan pemilihan uji sesuai sifat metrik pada Tabel~\ref{tab:uji-metrik}.

\begin{table}[!ht]
  \centering
  \small
  \renewcommand{\arraystretch}{1.2}
  \caption{Pemilihan uji signifikansi per metrik}
  \label{tab:uji-metrik}
  \begin{tabularx}{\textwidth}{@{}l>{\raggedright\arraybackslash}p{5.6cm}X@{}}
    \hline
    \textbf{Metrik} & \textbf{Sifat nilai} & \textbf{Uji} \\
    \hline
    EM & biner per sampel, berpasangan & uji McNemar dengan koreksi kontinuitas \\
    F1 & kontinu per sampel, berpasangan & \textit{paired bootstrap} 10.000 sampel ulang \\
    Ukuran model & deterministik & tidak diuji \\
    Latensi & bergantung perangkat dan implementasi & tidak diuji, dilaporkan deskriptif \\
    \hline
  \end{tabularx}
\end{table}

Untuk EM, hasil kedua konfigurasi disusun menjadi tabel kontingensi, dengan $b$ jumlah pertanyaan yang benar pada konfigurasi pertama tetapi salah pada konfigurasi kedua dan $c$ sebaliknya. Statistik uji dihitung dengan Persamaan~\ref{eq:mcnemar}. Hipotesis nol menyatakan bahwa kedua konfigurasi memiliki proporsi jawaban benar yang sama ($b = c$ dalam harapan), sedangkan hipotesis alternatif menyatakan proporsi itu berbeda. Bila jumlah sampel yang berbeda ($b + c$) kurang dari 25, dipakai uji binomial eksak \parencite{fagerland2013mcnemar}. Untuk F1, selisih rata-rata skor dihitung pada setiap sampel ulang dengan Persamaan~\ref{eq:bootstrap}. Sampel ulang diambil pada tingkat pertanyaan (5.244 pertanyaan), dengan indeks yang sama untuk kedua konfigurasi. Hipotesis nol menyatakan bahwa rata-rata selisih F1 kedua konfigurasi sama dengan nol, sedangkan hipotesis alternatif menyatakan selisih itu tidak nol. Nilai $p$ dua sisi dan interval persentil 95\% dari $\Delta^{*}$ dihitung dari 10.000 sampel ulang tersebut \parencite{bergkirkpatrick2012, efron1993}, dan selisih dilaporkan bersama intervalnya.

Ukuran model tidak diuji karena nilainya dihitung secara deterministik dari jumlah parameter dan tipe datanya, tanpa proses pengukuran yang mengandung variasi acak. Latensi tidak diuji karena nilainya bergantung pada perangkat dan implementasi, dan hanya diukur pada satu model dengan pengulangan pada perangkat yang sama.

Terdapat tiga perbandingan berpasangan, yaitu \textit{baseline} terhadap \textit{per-tensor}, \textit{baseline} terhadap \textit{per-channel}, dan \textit{per-tensor} terhadap \textit{per-channel}. Ketiga perbandingan ini meningkatkan peluang kesalahan tipe I, sehingga nilai $p$ dikoreksi dengan metode Holm \parencite{holm1979}. Koreksi diterapkan terpisah untuk setiap metrik dengan $m = 3$, dan dijalankan di dalam masing-masing \textit{seed}.

Suatu perbedaan dinyatakan signifikan bila signifikan setelah koreksi Holm pada taraf $\alpha = 0{,}05$ di ketiga \textit{seed} dengan arah yang sama. Syarat ketiga \textit{seed} ini lebih ketat daripada satu uji tunggal, sehingga koreksi tambahan antar\textit{seed} tidak diperlukan. Uji berpasangan pada setiap \textit{seed} hanya menangkap variasi sampel uji untuk model yang telah dilatih, sedangkan variasi akibat \textit{seed} pelatihan dilaporkan secara deskriptif. Karena itu, kesimpulan penelitian ini tidak mencakup seluruh kemungkinan hasil pelatihan.

\section{Jadwal Penelitian}

Penelitian direncanakan berlangsung selama 6 bulan, yaitu Juli sampai Desember 2026, dimulai dari studi literatur dan penyusunan proposal, dilanjutkan penyiapan data, pelatihan, kuantisasi, pengujian, dan penyusunan laporan. Rincian kegiatan per bulan ditunjukkan pada Tabel~\ref{tab:jadwal}.

\begin{table}[!ht]
  \centering
  \small
  \renewcommand{\arraystretch}{1.2}
  \caption{Jadwal penelitian}
  \label{tab:jadwal}
  \begin{tabularx}{\textwidth}{@{}c>{\raggedright\arraybackslash}X*{6}{c}@{}}
    \hline
    \textbf{No} & \textbf{Kegiatan} & \textbf{Jul} & \textbf{Agu} & \textbf{Sep} & \textbf{Okt} & \textbf{Nov} & \textbf{Des} \\
    \hline
    1 & Studi literatur dan penyusunan proposal & \checkmark & \checkmark & & & & \\
    2 & Penyusunan kajian pustaka dan kerangka berpikir & & \checkmark & \checkmark & & & \\
    3 & Analisis data eksploratif dan praproses data & & & \checkmark & \checkmark & & \\
    4 & Implementasi kode program pelatihan dan kuantisasi & & & & \checkmark & & \\
    5 & \textit{Fine-tuning} tiga \textit{seed} dan pemilihan \textit{checkpoint} & & & & \checkmark & \checkmark & \\
    6 & Penerapan kuantisasi dan pengukuran ukuran model & & & & & \checkmark & \\
    7 & Pengujian, analisis deskriptif, dan uji signifikansi & & & & & \checkmark & \\
    8 & Penyusunan Bab IV dan Bab V & & & & & \checkmark & \checkmark \\
    9 & Pemeriksaan akhir dan penyusunan laporan & & & & & & \checkmark \\
    \hline
  \end{tabularx}
\end{table}
```

<a id="f-src-chapters-chapter-4-tex"></a>

## `src/chapters/chapter-4.tex`

Ukuran 1,653 byte &middot; 60 baris &middot; sha256 `dee546418bc7` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Bab IV — Evaluasi dan Pembahasan
%
% @author Petra Novandi
%
%--------------------------------------------------------------------%
%
% Berisi tujuan pengujian, skenario, hasil pengujian, dan pembahasan.
% Ganti teks placeholder dengan isi sebenarnya.
%
%--------------------------------------------------------------------%

\chapter{Evaluasi dan Pembahasan}

Bab ini mempresentasikan pengujian solusi yang dirancang pada Bab
III dan membahas apakah tujuan serta rumusan masalah telah
terpenuhi. Hasil yang ditampilkan harus dapat dipertanggungjawabkan
secara objektif.

\section{Tujuan Pengujian}

Tuliskan tujuan pengujian yang spesifik dan terukur. Setiap tujuan
sebaiknya berkaitan langsung dengan tujuan tugas akhir dan
rumusan masalah di Bab I.

\blindtext%

\section{Skenario Pengujian}

Jelaskan metode, lingkungan, data uji, dan langkah-langkah
pengujian yang dilakukan. Skenario harus cukup jelas agar pengujian
dapat direplikasi oleh pembaca.

\blindtext%

\section{Hasil Pengujian}

Sajikan hasil pengujian secara faktual menggunakan tabel, grafik,
atau angka. Hindari interpretasi panjang di subbab ini. Fokuskan
pada data dan temuan yang diperoleh.

    \subsection{Subbab}

    \blindtext%

    \subsubsection{Subsubbab}

    \blindtext%

\blindtext%

\section{Pembahasan}

Interpretasikan hasil pengujian dan kaitkan dengan rumusan masalah
serta tujuan tugas akhir. Jelaskan apakah solusi yang diusulkan
berhasil, keterbatasannya, dan perbandingannya dengan studi terkait
jika relevan.

\blindtext%
```

<a id="f-src-chapters-chapter-5-tex"></a>

## `src/chapters/chapter-5.tex`

Ukuran 1,021 byte &middot; 34 baris &middot; sha256 `23e4fe457440` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Bab V — Penutup
%
% @author Petra Novandi
%
%--------------------------------------------------------------------%
%
% Berisi kesimpulan dan saran. Ganti teks placeholder dengan isi
% sebenarnya.
%
%--------------------------------------------------------------------%

\chapter{Penutup}

Bab ini merangkum hasil tugas akhir dan memberikan saran untuk
pengembangan lebih lanjut. Kesimpulan harus menjawab rumusan masalah
dan tujuan yang telah dirumuskan di awal laporan.

\section{Kesimpulan}

Tuliskan kesimpulan utama berdasarkan hasil analisis, perancangan,
dan evaluasi. Setiap poin kesimpulan sebaiknya merujuk pada tujuan
atau rumusan masalah yang telah diselesaikan.

\blindtext%

\section{Saran}

Berikan saran yang konstruktif untuk pengembangan solusi, perbaikan
metodologi, atau penelitian lanjutan. Saran dapat mencakup aspek
teknis, evaluasi, maupun implementasi di lingkungan nyata.

\blindtext%
```

<a id="f-src-chapters-cover-tex"></a>

## `src/chapters/cover.tex`

Ukuran 736 byte &middot; 37 baris &middot; sha256 `19d4e316d64d` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Halaman Sampul Skripsi (Pedoman UM Lampiran 1a)
%
% Nilai diambil dari config/informations.tex.
%
%--------------------------------------------------------------------%

\clearpage
\thispagestyle{empty}

\begin{center}
    \setstretch{1.5}

    \bfseries \MakeUppercase{\judul}
    \vfill

    SKRIPSI
    \vfill

    OLEH \\
    \MakeUppercase{\penulis} \\
    NIM \nim%
    \vfill

    % Lambang UM (diameter 3 cm)
    \includegraphics[width=3cm]{resources/logo-um.png}
    \vfill

    \MakeUppercase{Universitas Negeri Malang} \\
    \MakeUppercase{\fakultas} \\
    \MakeUppercase{\programstudi} \\
    \MakeUppercase{\bulantahun}

\end{center}

\clearpage
```

<a id="f-src-chapters-endorsement-tex"></a>

## `src/chapters/endorsement.tex`

Ukuran 1,412 byte &middot; 55 baris &middot; sha256 `c014f94455cb` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Lembar Persetujuan dan Pengesahan (Pedoman UM Lampiran 5a)
%
% Nama dewan penguji dan pejabat penanda tangan diambil dari
% config/informations.tex.
%
%--------------------------------------------------------------------%

\clearpage

\begin{center}
    \bfseries LEMBAR PERSETUJUAN DAN PENGESAHAN SKRIPSI
\end{center}

\phantomsection
\addcontentsline{toc}{chapter}{LEMBAR PERSETUJUAN DAN PENGESAHAN SKRIPSI}

\vspace{\baselineskip}

\noindent Skripsi oleh \MakeUppercase{\penulis} ini telah dipertahankan di depan dewan penguji pada tanggal \tanggalSidang.

\vspace{\baselineskip}

\noindent Dewan Penguji

\vspace{\baselineskip}

% Satu baris penguji: nama (atau garis kosong) lalu NIP (atau garis kosong).
\newcommand*{\pengujiBaris}[2]{%
  \ifx#1\empty\underline{\strut\hspace{6.5cm}}\else#1\fi\\[0.15cm]
  \ifx#2\empty NIP~\underline{\strut\hspace{4.5cm}}\else#2\fi}

\noindent
\pengujiBaris{\pengujiSatu}{\nipPengujiSatu}

\vspace{0.8cm}
\noindent
\pengujiBaris{\pengujiDua}{\nipPengujiDua}

\vspace{0.8cm}
\noindent
\pengujiBaris{\pengujiTiga}{\nipPengujiTiga}

\vspace{2\baselineskip}

\noindent
\begin{tabular}{@{}p{0.48\textwidth}p{0.48\textwidth}@{}}
Mengesahkan, & Mengetahui, \\
Dekan \fakultas, & Ketua Departemen \departemen, \\[2cm]
\dekan & \ketuaDepartemen \\
\nipDekan & \nipKetuaDepartemen
\end{tabular}

\clearpage
```

<a id="f-src-chapters-forewords-tex"></a>

## `src/chapters/forewords.tex`

Ukuran 2,188 byte &middot; 35 baris &middot; sha256 `e9fb857f44c8` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Kata Pengantar (Pedoman UM Lampiran 7)
%
% DRAF: isi bagian dalam kurung siku dengan data sebenarnya, lalu hapus
% tanda kurung siku. Urutan ucapan terima kasih mengikuti pedoman, yaitu
% pembimbing dan program studi lebih dahulu, keluarga kemudian.
%
%--------------------------------------------------------------------%

\chapter*{Kata Pengantar}
\phantomsection
\addcontentsline{toc}{chapter}{KATA PENGANTAR}

Puji syukur penulis panjatkan kepada Tuhan Yang Maha Esa atas rahmat dan karunia-Nya. Atas kehendak-Nya penulis dapat menyelesaikan skripsi yang berjudul ``\judul''. Skripsi ini disusun untuk memenuhi salah satu persyaratan dalam menyelesaikan program \gelarprogram.

Penyusunan skripsi ini berlangsung melalui proses panjang. Pada setiap tahapnya penulis memperoleh bantuan, arahan, dan dukungan dari berbagai pihak. Karena itu, pada kesempatan ini penulis menyampaikan terima kasih kepada pihak-pihak yang berperan dalam penyelesaian skripsi ini.

\begin{enumerate}
    \item \pembimbingSatu, selaku dosen pembimbing, atas arahan, ketelitian, dan waktu yang diberikan. Bimbingan beliau membantu penulis merumuskan masalah penelitian, menyusun metode, dan menafsirkan hasil pengujian.
    \item \dekan, selaku Dekan \fakultas, atas kebijakan dan fasilitas yang mendukung pelaksanaan penelitian ini.
    \item \ketuaDepartemen, selaku Ketua Departemen \departemen, atas dukungan administratif selama masa studi penulis.
    \item Bapak Dr. Eng. Ir. Didik Dwi Prasetya, S.T., M.T., selaku Ketua \programstudi\ Universitas Negeri Malang, atas arahan mengenai ketentuan penulisan skripsi.
    \item \pembimbingSatu, selaku Dosen Pembimbing Akademik, atas nasihat dan motivasi selama masa studi.
\end{enumerate}

Penulis menyadari bahwa skripsi ini masih memiliki kekurangan. Karena itu, kritik dan saran yang membangun penulis harapkan untuk perbaikan pada penelitian selanjutnya. Penulis berharap skripsi ini bermanfaat bagi pengembangan pemrosesan bahasa alami berbahasa Indonesia.

\vspace{2\baselineskip}
\begin{flushright}
\begin{tabular}{c}
\kotatanggal \\
Penulis
\end{tabular}
\end{flushright}
```

<a id="f-src-chapters-hypenation-id-tex"></a>

## `src/chapters/hypenation-id.tex`

Ukuran 1,255 byte &middot; 114 baris &middot; sha256 `3a8ec59d618d` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Hypenation untuk Bahasa Indonesia
%
% @author Petra Barus
%
%--------------------------------------------------------------------%
%
% Secara otomatis LaTeX dapat langsung memenggal kata dalam dokumen,
% tapi sering kali terdapat kesalahan dalam pemenggalan kata. Untuk
% memperbaiki kesalahan pemenggalan kata tertentu, cara pemenggalan
% kata tersebut dapat ditambahkan pada dokumen ini. Pemenggalan
% dilakukan dengan menambahkan karakter '-' pada suku kata yang
% perlu dipisahkan.
%
% Contoh pemenggalan kata 'analisa' dilakukan dengan 'a-na-li-sa'
%
%--------------------------------------------------------------------%

\hypenation {
	% A
	%
	a-na-li-sa
	a-pli-ka-si

	% B
	%
	be-be-ra-pa
	ber-ge-rak

	% C
	%
	ca-ri

	% D
	%
	da-e-rah
	di-nya-ta-kan
	de-fi-ni-si

	% E
	%
	e-ner-gi
	eks-klu-sif

	% F
	%
	fa-si-li-tas

	% G
	%
	ga-bung-an

	% H
	%
	ha-lang-an

	% I
	% 
	i-nduk

	% J
	%
	ka-me-ra
	kua-li-tas

	% K
	%

	% L
	%

	% M
	%

	% N
	%

	% O
	%

	% P
	%

	% Q
	%

	% R
	%

	% S
	%

	% T
	% 

	% U
	%

	% V
	%

	% W
	%

	% X
	%

	% Y
	% 

	% Z
	%
}
```

<a id="f-src-chapters-instruction-tex"></a>

## `src/chapters/instruction.tex`

Ukuran 0 byte &middot; 0 baris &middot; sha256 `e3b0c44298fc` &middot; encoding `utf-8-sig`

_(berkas kosong)_

<a id="f-src-chapters-logo-tex"></a>

## `src/chapters/logo.tex`

Ukuran 423 byte &middot; 17 baris &middot; sha256 `7263e9f3396d` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Lembar Logo (Pedoman UM Lampiran 2) — hanya lambang UM diameter 8 cm.
%
%--------------------------------------------------------------------%

\clearpage
\thispagestyle{empty}

\begin{center}
    \vspace*{\fill}
    % Lambang UM (diameter 8 cm)
    \includegraphics[width=8cm]{resources/logo-um.png}
    \vspace*{\fill}
\end{center}

\clearpage
```

<a id="f-src-chapters-statement-tex"></a>

## `src/chapters/statement.tex`

Ukuran 1,302 byte &middot; 44 baris &middot; sha256 `ddf487f0c214` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Pernyataan Keaslian Tulisan (Pedoman UM Lampiran 6)
%
%--------------------------------------------------------------------%

\clearpage

\begin{center}
    \bfseries PERNYATAAN KEASLIAN TULISAN
\end{center}

\phantomsection
\addcontentsline{toc}{chapter}{PERNYATAAN KEASLIAN TULISAN}

\vspace{\baselineskip}
\noindent Saya yang bertanda tangan di bawah ini:

\vspace{0.5\baselineskip}
\noindent
\begin{tabular}{@{}p{5cm}@{: }>{\raggedright\arraybackslash}p{8.5cm}@{}}
Nama & \penulis \\
NIM & \nim \\
Departemen/Program Studi & \departemen/\programstudi \\
Fakultas & \fakultas \\
\end{tabular}

\vspace{\baselineskip}
\noindent Skripsi yang berjudul ``\judul'' merupakan hasil karya asli saya sendiri dan bukan merupakan plagiasi, fabrikasi, maupun falsifikasi, baik sebagian maupun seluruhnya.

\vspace{0.5\baselineskip}
\noindent Apabila di kemudian hari terbukti atau dapat dibuktikan bahwa skripsi ini mengandung unsur plagiasi, fabrikasi, atau falsifikasi, maka saya bersedia menerima sanksi sesuai dengan peraturan dan ketentuan yang berlaku.

\vspace{2\baselineskip}
\begin{flushright}
\begin{tabular}{c}
\kotatanggal \\
Yang membuat pernyataan, \\[2cm]
\penulis \\
NIM \nim
\end{tabular}
\end{flushright}

\clearpage
```

<a id="f-src-chapters-title-page-tex"></a>

## `src/chapters/title-page.tex`

Ukuran 892 byte &middot; 41 baris &middot; sha256 `b5cd0f58bb0f` &middot; encoding `utf-8-sig`

```latex
%--------------------------------------------------------------------%
%
% Halaman Judul lembar kedua (Pedoman UM Lampiran 3a)
%
%--------------------------------------------------------------------%

\clearpage
\thispagestyle{empty}

\begin{center}
    \setstretch{1.5}

    \bfseries \MakeUppercase{\judul}
    \vfill

    \normalfont%
    SKRIPSI \\[0.3\baselineskip]
    Diajukan kepada \\
    Universitas Negeri Malang \\
    untuk memenuhi salah satu persyaratan \\
    dalam menyelesaikan program \gelarprogram%
    \vfill

    OLEH \\
    \MakeUppercase{\penulis} \\
    NIM \nim%
    \vfill

    % Lambang UM (diameter 3 cm)
    \includegraphics[width=3cm]{resources/logo-um.png}
    \vfill

    \bfseries
    \MakeUppercase{Universitas Negeri Malang} \\
    \MakeUppercase{\fakultas} \\
    \MakeUppercase{\programstudi} \\
    \MakeUppercase{\bulantahun}

\end{center}

\clearpage
```

---

# 4. Konfigurasi LaTeX (style dan informasi)

<a id="f-src-config-if-itb-thesis-sty"></a>

## `src/config/if-itb-thesis.sty`

Ukuran 8,797 byte &middot; 243 baris &middot; sha256 `c6980cc380bf` &middot; encoding `utf-8-sig`

```latex
%-------------------------------------------------------------------%
%
% Konfigurasi dokumen LaTeX untuk Skripsi Universitas Negeri Malang
% Mengikuti Pedoman Penulisan Karya Ilmiah UM Edisi 2017.
%
% Berkas asli: templat Tesis IF-ITB (Petra Novandi / Steven Lolong),
% diadaptasi ke pedoman UM.
%
%-------------------------------------------------------------------%

% Ukuran kertas A4
\special{papersize=210mm,297mm}

% Margin UM: kiri 4 cm; atas, kanan, bawah 3 cm (Pedoman UM Bab 9)
\usepackage[top=3cm,bottom=3cm,left=4cm,right=3cm]{geometry}

% Times New Roman 12 pt
\usepackage{mathptmx}

% Perataan mikro: sedikit peregangan dan pemotongan huruf agar baris
% rata kanan-kiri tidak melewati margin (overfull).
\usepackage{microtype}


% Bahasa Indonesia
\usepackage[bahasa]{babel}

% Sitasi & daftar rujukan gaya APA (butuh backend biber).
% biblatex-apa tidak punya lokalisasi bahasa/bahasa-apa, sehingga bahasa
% dokumen (bahasa) perlu dipetakan ke lokalisasi APA yang tersedia
% (american-apa) agar makro sitasi APA terdefinisi.
\usepackage{csquotes}
\usepackage[backend=biber,style=apa,language=auto]{biblatex}
\DeclareLanguageMapping{bahasa}{american-apa}

\usepackage[utf8]{inputenc}
\usepackage{graphicx}
\usepackage{tikz}           % Diagram vektor (gambar proses kuantisasi)
\usetikzlibrary{arrows.meta,positioning,calc,fit,backgrounds}
\usepackage{amsmath}        % Persamaan matematika (\text, \frac, align, dll.)
\usepackage{amssymb}        % Simbol matematika tambahan (mis. \mathbb)
\usepackage{titling}
\usepackage{blindtext}
\usepackage{chngcntr}
\usepackage{etoolbox}
\usepackage{setspace}       % Spasi 1,5 (isi) & tunggal (ringkasan/caption/rujukan)
\usepackage{caption}        % Format judul tabel/gambar
\usepackage{csvsimple}      % Tabel otomatis dari berkas CSV
\usepackage{tabularx}       % Tabel lebar otomatis (kolom X) agar pas \textwidth
\usepackage{longtable}      % Tabel panjang yang dapat terpotong antar-halaman
\usepackage{fancyhdr}       % Nomor halaman UM
% Tambal penulisan entri Daftar Isi bab SEBELUM hyperref dimuat: hyperref
% membungkus ulang \@chapter sehingga tambalan sesudahnya hilang.
\makeatletter
\patchcmd{\@chapter}
  {\protect\numberline{\thechapter}#1}
  {\protect\numberline{\tocchapapp\space\tocchapnum}\protect\MakeUppercase{#1}}
  {}{\PackageWarning{if-itb-thesis}{Entri Daftar Isi bab gagal ditambal}}
\makeatother
\usepackage[hidelinks]{hyperref}  % Tautan di daftar isi (tanpa kotak/garis warna)
\usepackage{titlesec}       % Format judul bab/subbab
\usepackage{enumitem}     % Spasi butir daftar (rapat, tanpa jarak antarbutir)
\setlist{itemsep=0pt, parsep=0pt, partopsep=0pt}

% Cadangan peregangan agar baris rata kanan-kiri tidak melewati margin
\setlength{\emergencystretch}{3em}
\usepackage{indentfirst}


% Spasi 1,5 untuk teks induk
\onehalfspacing%

% Indent paragraf 1,2 cm tanpa jarak antarparagraf tambahan (UM)
\setlength{\parindent}{1.2cm}
\setlength{\parskip}{0pt}

% Kedalaman penomoran s.d. sub-sub bab
\setcounter{secnumdepth}{3}

%-------------------------------------------------------------------%
% Hierarki judul (Pedoman UM Bab 8) — seluruhnya 12 pt bold.
% Nomor section tetap arabic (1.1) walau bab ditampilkan "BAB <Roman>".
%-------------------------------------------------------------------%
\titleformat{\chapter}[display]
  {\normalsize\bfseries\centering}
  {BAB\ \Roman{chapter}}{0pt}
  {\MakeUppercase}
\titlespacing*{\chapter}{0pt}{0pt}{0.5\baselineskip}

% Subbab: KAPITAL, bold, tepi kiri
\titleformat{\section}
  {\normalsize\bfseries\filright}{\thesection}{1em}{}
\titlespacing*{\section}{0pt}{1.5\baselineskip}{0.75\baselineskip}
% Sub-sub bab: Title Case, bold, tepi kiri
\titleformat{\subsection}
  {\normalsize\bfseries\filright}{\thesubsection}{1em}{}
\titlespacing*{\subsection}{0pt}{1.2\baselineskip}{0.5\baselineskip}
% Bagian sub-sub bab: Title Case, bold, italic, tepi kiri
\titleformat{\subsubsection}
  {\normalsize\bfseries\itshape\filright}{\thesubsubsection}{1em}{} % chktex 6
\titlespacing*{\subsubsection}{0pt}{1.0\baselineskip}{0.5\baselineskip}

% Counter gambar, tabel, & persamaan per bab (Gambar 3.1, Tabel 3.1, Persamaan 2.1)
\counterwithin{figure}{chapter}
\counterwithin{table}{chapter}
\counterwithin{equation}{chapter}

% Label caption bold; nama Indonesia
\captionsetup{labelfont=bf,labelsep=space}
\addto\captionsbahasa{%
  \renewcommand{\figurename}{Gambar}%
  \renewcommand{\tablename}{Tabel}%
}

%-------------------------------------------------------------------%
% Nomor halaman (UM Bab 9):
%   bagian awal  -> romawi, tengah bawah  (gaya "plain")
%   bagian isi   -> arabic, kanan atas    (gaya "fancy")
%   halaman awal bab (otomatis "plain") -> tengah bawah
%-------------------------------------------------------------------%
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\thepage}
\setlength{\headheight}{14.5pt}

\renewcommand{\headrulewidth}{0pt}

%-------------------------------------------------------------------%
% Daftar tabel, daftar gambar, dan daftar rumus (Pedoman UM Bab 8)
%
% Setiap daftar diawali baris judul kolom: kata "Tabel"/"Gambar"/
% "Rumus" di tepi kiri dan "Halaman" di tepi kanan. Daftar Rumus
% diisi otomatis, yaitu setiap persamaan bernomor yang ditulis
% dengan lingkungan equation dicatat ke berkas .rum.
%-------------------------------------------------------------------%
\makeatletter

\newcommand*{\@listheadrow}[1]{%
  \par\noindent #1\hfill Halaman\par
  \nobreak\vspace{0.5\baselineskip}%
}

% Baris judul kolom untuk masing-masing daftar
\@namedef{listhead@toc}{\@listheadrow{}}
\@namedef{listhead@lot}{\@listheadrow{Tabel}}
\@namedef{listhead@lof}{\@listheadrow{Gambar}}
\@namedef{listhead@rum}{\@listheadrow{Rumus}}

\let\@starttoc@orig\@starttoc

\renewcommand*{\@starttoc}[1]{%
  \@ifundefined{listhead@#1}{}{\@nameuse{listhead@#1}}%
  \begin{singlespace}%
  \emergencystretch=3em
  \@starttoc@orig{#1}%
  \end{singlespace}%
}

% Daftar Tabel dan Daftar Gambar: judul halaman + entri pada Daftar Isi
\renewcommand*{\listoftables}{%
  \chapter*{\listtablename}%
  \phantomsection
  \addcontentsline{toc}{chapter}{DAFTAR TABEL}%
  \@starttoc{lot}%
}
\renewcommand*{\listoffigures}{%
  \chapter*{\listfigurename}%
  \phantomsection
  \addcontentsline{toc}{chapter}{DAFTAR GAMBAR}%
  \@starttoc{lof}%
}

% Daftar Rumus: judul halaman + entri "Rumus (2.1)"
\newcommand*{\listofrumusname}{Daftar Rumus}
\newcommand*{\listofrumus}{%
  \chapter*{\listofrumusname}%
  \phantomsection
  \addcontentsline{toc}{chapter}{DAFTAR RUMUS}%
  \@starttoc{rum}%
}
\newcommand*{\l@rumus}[2]{\@dottedtocline{1}{0em}{0em}{#1}{#2}}

% Entri Daftar Tabel dan Daftar Gambar diberi awalan jenisnya
% (contoh: "Tabel 2.1 Karakteristik dataset ...")
\renewcommand*{\l@table}[2]{%
  \begingroup
  \def\numberline##1{\makebox[2.4em][l]{##1}}%
  \@dottedtocline{1}{0em}{5.4em}{Tabel~#1}{#2}%
  \endgroup}
\renewcommand*{\l@figure}[2]{%
  \begingroup
  \def\numberline##1{\makebox[2.4em][l]{##1}}%
  \@dottedtocline{1}{0em}{5.9em}{Gambar~#1}{#2}%
  \endgroup}

% Catat setiap persamaan bernomor ke Daftar Rumus
\AfterEndEnvironment{equation}{%
  \phantomsection
  \addcontentsline{rum}{rumus}{Rumus~(\theequation)}%
}

\makeatother

%-------------------------------------------------------------------%
% Daftar Isi (Pedoman UM Bab 8)
%
% Seluruh entri memakai titik-titik penuh sampai nomor halaman. Entri
% bab ditulis dua baris, yaitu label bab ("BAB I", atau "Lampiran 1"
% pada bagian lampiran) lalu judul bab dalam kapital. Entri halaman
% awal dan daftar sudah ditulis kapital pada berkas sumbernya.
%-------------------------------------------------------------------%
\makeatletter

\renewcommand*{\@pnumwidth}{2.2em}

% Label depan entri bab pada Daftar Isi; diganti "Lampiran" pada lampiran.
\newcommand*{\tocchapapp}{BAB}
\newcommand*{\tocchapnum}{\Roman{chapter}}

% Titik-titik penuh dan nomor halaman di ujung baris yang sedang berjalan.
\newcommand*{\@tocleaders}{%
  \nobreak\leaders\hbox{$\m@th\mkern\@dotsep mu\hbox{.}\mkern\@dotsep mu$}\hfill
  \nobreak\hb@xt@\@pnumwidth{\hfil\@tocpage}\par}

% Satu baris penuh: teks, titik-titik, nomor halaman.
\newcommand*{\@tocdots}[1]{\noindent #1\@tocleaders}

\renewcommand*{\l@chapter}[2]{%
  \ifnum \c@tocdepth >\m@ne
    \par
    \addpenalty{-\@highpenalty}%
    \begingroup
      \rightskip\@tocrmarg \parfillskip-\rightskip \parindent\z@
      \def\@tocpage{#2}%
      % \numberline{BAB I} menjadi baris pertama; judul menyusul di baris kedua.
      \def\numberline##1{\@tocdots{##1}}%
      \noindent
      #1\@tocleaders
      \penalty\@highpenalty
    \endgroup
  \fi}

\makeatother
```

<a id="f-src-config-informations-tex"></a>

## `src/config/informations.tex`

Ukuran 2,297 byte &middot; 52 baris &middot; sha256 `5abc855a0c36` &middot; encoding `utf-8-sig`

```latex
%-------------------------------------------------------------------%
%
% Informasi umum skripsi — SUNTING DI SINI SAJA.
% Semua halaman front matter mengambil nilai dari makro di bawah.
%
%-------------------------------------------------------------------%

\newcommand{\judul}{Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia}
\newcommand{\penulis}{Kardynan Parulian}
\newcommand{\nim}{230535607270}

\newcommand{\departemen}{Teknik Elektro dan Informatika}
\newcommand{\fakultas}{Fakultas Teknik}
\newcommand{\programstudi}{Program Studi Teknik Informatika}
% Diisi pada halaman judul: "...menyelesaikan program <gelarprogram>"
\newcommand{\gelarprogram}{Sarjana Teknik Informatika}

\newcommand{\bulantahun}{Oktober 2026}
\newcommand{\kotatanggal}{Malang, 23 Oktober 2026}

\newcommand{\pembimbingSatu}{Muhammad Jauharul Fuady, S.T., M.T.}
\newcommand{\nipSatu}{NIP 198305072009121002}
% Pembimbing II: kosongkan (isi kurung kurawal) bila hanya ada satu pembimbing
\newcommand{\pembimbingDua}{}
\newcommand{\nipDua}{}

%-------------------------------------------------------------------%
% Lembar Persetujuan dan Pengesahan (Lampiran 5a)
% Periksa kembali nama pejabat saat berkas dicetak.
%-------------------------------------------------------------------%

% Tanggal sidang; kosongkan isinya bila belum ditetapkan (tercetak garis kosong)
\newcommand{\tanggalSidang}{\underline{\hspace{3cm}}}

% Dewan penguji: kosongkan bila belum ditetapkan. Baris nama dan NIP
% akan tercetak sebagai garis kosong untuk diisi tangan.
\newcommand{\pengujiSatu}{}
\newcommand{\nipPengujiSatu}{}
\newcommand{\pengujiDua}{}
\newcommand{\nipPengujiDua}{}
\newcommand{\pengujiTiga}{}
\newcommand{\nipPengujiTiga}{}

% Pejabat penanda tangan
\newcommand{\dekan}{Prof. Dr. Andoko, S.T., M.T.}
\newcommand{\nipDekan}{NIP 196508121991031005}
\newcommand{\ketuaDepartemen}{Dr. Ir. Triyanna Widiyaningtyas, M.T.}
\newcommand{\nipKetuaDepartemen}{NIP 197412152008122002}

% Kata kunci ringkasan (3--5 kata), dipisah koma
\newcommand{\katakunci}{kuantisasi, weight-only, granularitas kuantisasi, extractive question answering, IndoBERT}
\newcommand{\katakunciEn}{post-training quantization, weight-only, quantization granularity, extractive question answering, IndoBERT}
```

---

# 5. Bibliografi dan Referensi

<a id="f-src-bab2-revisi-md"></a>

## `src/bab2_revisi.md`

Ukuran 36,554 byte &middot; 234 baris &middot; sha256 `31d3fa4bc5af` &middot; encoding `utf-8-sig`

```markdown
# BAB II KAJIAN PUSTAKA

> Penanda kerja (hapus sebelum dikumpulkan): **[PUTUSKAN]** = keputusan di tanganmu, **[CEK]** = cocokkan ke PDF/notebook, **[ISI]** = isi dari notebook.

Bab ini menguraikan landasan teori dan penelitian terdahulu yang mendasari penelitian. Pembahasan diawali dengan pemrosesan bahasa alami dan analisis sentimen pada subbab 2.1 dan 2.2, kemudian BERT dan IndoBERT pada subbab 2.3 sebagai model yang diuji. Subbab 2.4 dan 2.5 membahas kuantisasi dan Post-Training Quantization (PTQ) sebagai teknik kompresi yang diterapkan pada model tersebut. Subbab 2.6 memaparkan dataset finansial bahasa Indonesia, subbab 2.7 menjelaskan metrik evaluasi, dan subbab 2.8 merangkum penelitian relevan beserta celah yang diisi penelitian ini.

## 2.1 Pemrosesan Bahasa Alami

Natural Language Processing (NLP) merupakan cabang kecerdasan buatan yang berfokus pada interaksi antara komputer dan bahasa manusia melalui pemahaman, penafsiran, serta penghasilan teks atau tuturan secara alami (Jurafsky & Martin, 2025). Pendekatan NLP bergeser dari penggunaan aturan linguistik manual menuju metode statistik dan pembelajaran mesin yang memungkinkan komputer mempelajari pola bahasa dari data. Pergeseran ini berlanjut ke deep learning atau pembelajaran mendalam, yaitu pembelajaran menggunakan jaringan saraf berlapis yang mempelajari representasi bahasa secara otomatis dari data, sehingga ketergantungan pada rekayasa fitur manual berkurang (Jurafsky & Martin, 2025).

Perkembangan deep learning pada NLP ditandai dengan hadirnya Transformer, yaitu arsitektur jaringan saraf yang memproses sekuens data secara paralel menggunakan mekanisme self-attention untuk mempelajari hubungan kontekstual antarkata (Vaswani et al., 2017). Pemrosesan paralel ini mempersingkat waktu pelatihan dibandingkan model berurutan sebelumnya (Vaswani et al., 2017). Transformer kemudian menjadi dasar bagi pengembangan model bahasa pralatih (Gardazi et al., 2025), salah satunya Bidirectional Encoder Representations from Transformers (BERT) yang dipublikasikan pada tahun 2018. BERT menggunakan bagian encoder dan dilatih secara bidirectional, sehingga mempertimbangkan konteks dari arah kiri dan kanan secara bersamaan. Prapelatihan BERT memanfaatkan dua strategi, yaitu Masked Language Model (MLM) untuk memprediksi token yang ditutupi dan Next Sentence Prediction (NSP) (Devlin et al., 2019).

Pendekatan model pralatih tersebut diadaptasi ke dalam bahasa Indonesia melalui IndoBERT, yang dievaluasi menggunakan benchmark IndoNLU melalui 12 tugas downstream (Wilie et al., 2020). Salah satu tugas downstream yang menjadi fokus penelitian ini adalah analisis sentimen, yaitu tugas klasifikasi teks yang diselesaikan melalui fine-tuning (Devlin et al., 2019; Wilie et al., 2020). Klasifikasi teks dibedakan menurut ruang labelnya, yaitu binary classification untuk dua kelas dengan satu label per teks, multi-class classification untuk lebih dari dua kelas yang saling lepas, dan multi-label classification jika satu teks dapat menerima lebih dari satu label (Galke et al., 2025).

Analisis sentimen menentukan polaritas teks ke dalam kategori positif, negatif, atau netral (Ferdous et al., 2024). Karena penelitian ini memakai tiga kelas yang saling lepas dengan satu label per teks, tugasnya dikategorikan sebagai multi-class classification. Subbab berikutnya membahas analisis sentimen pada domain keuangan beserta penerapan IndoBERT pada domain tersebut.

## 2.2 Analisis Sentimen

Analisis sentimen bertujuan mengidentifikasi orientasi afektif suatu teks ke dalam kategori positif, negatif, atau netral (Ferdous et al., 2024). Kelas netral diberikan pada teks yang tidak memuat tendensi positif maupun negatif. Analisis sentimen dapat diterapkan pada domain keuangan yang membahas kondisi atau peristiwa finansial, seperti berita ekonomi dan unggahan media sosial terkait saham. Teks keuangan memiliki karakteristik khusus karena memuat istilah teknis dan ekspresi numerik, sementara makna sentimennya bergantung pada konteks domain (Araci, 2019; Maharani et al., 2023).

Malo et al. (2014) merumuskan penilaian sentimen dari sudut pandang investor, yaitu dampak teks terhadap harga saham. Rumusan ini diadaptasi menjadi skema tiga label pada Indonesian Financial PhraseBank dengan komposisi kelas netral sebesar 61,44% (Maharani et al., 2023). Sebagai contoh, Maharani et al. (2023) memberi label netral pada kalimat yang hanya menyebutkan durasi dan nilai suatu proyek tanpa penilaian emosional, meskipun kalimat tersebut mengandung angka dan istilah teknis.

Penerapan model berbasis BERT berbahasa Indonesia untuk sentimen teks keuangan telah dilaporkan dalam empat penelitian terdahulu, yaitu Maharani et al. (2023), Jiwandono et al. (2026), Bimasena et al. (2026), dan Tanjaya et al. (2025). Tanjaya et al. (2025) melaporkan indikasi overfitting pada klasifikasi sentimen tweet saham Indonesia, dengan selisih F1 makro sebesar 0,124 antara data latih (0,971) dan data validasi (0,847). Bimasena et al. (2026) melaporkan akurasi 0,94 tetapi Macro F1 hanya 0,71 pada berita keuangan Indonesia. Kedua temuan ini menunjukkan bahwa satu angka akurasi tidak cukup menggambarkan perilaku model pada data keuangan.

Selain tantangan evaluasi tersebut, ukuran model membatasi penerapannya pada perangkat dengan sumber daya komputasi terbatas (Abdurrahman et al., 2023). IndoBERT-base memiliki 124,5 juta parameter (Wilie et al., 2020) **[CEK: tabel Wilie untuk varian p2]**. Kuantisasi menjadi salah satu teknik kompresi yang dapat mengurangi kebutuhan memori tersebut, tetapi dampaknya tidak selalu terlihat pada akurasi. Sanjaya et al. (2026) melaporkan akurasi IndoBERT pada SmSA yang berada pada rentang 92,9–93,2% di seluruh varian kompresi, dengan selisih macro F1 dalam 0,4 poin. Pada saat yang sama, kestabilan atribusi penjelasan turun pada varian QAT (ρ Spearman 0,788 pada QAT-FP32). Nilai ρ tersebut mengukur kestabilan atribusi, bukan perubahan probabilitas keluaran. Temuan ini mendasari perlunya evaluasi kuantisasi yang tidak hanya bertumpu pada akurasi label (Sanjaya et al., 2026).

## 2.3 BERT dan IndoBERT

### 2.3.1 BERT

BERT diperkenalkan oleh Devlin et al. (2019) sebagai model bahasa pralatih yang menggunakan encoder Transformer secara dua arah. BERT dilatih dengan dua tugas, yaitu Masked Language Modeling (MLM) dan Next Sentence Prediction (NSP). Pada MLM, sebagian token input disembunyikan dan model memprediksinya berdasarkan konteks kiri dan kanan, sehingga BERT menangkap konteks yang lebih kaya daripada model bahasa searah (Devlin et al., 2019). BERT-base memiliki 110 juta parameter dan BERT-large memiliki 340 juta parameter (Devlin et al., 2019).

Mekanisme inti Transformer adalah scaled dot-product attention, yang menghitung bobot perhatian dari hubungan antara query (Q), key (K), dan value (V) (Vaswani et al., 2017):

$$\mathrm{Attention}(Q,K,V)=\mathrm{softmax}\!\left(\frac{QK^{T}}{\sqrt{d_k}}\right)V \tag{2.1}$$

dengan $d_k$ adalah dimensi key. Karena attention tidak memiliki urutan bawaan, Transformer menambahkan positional encoding untuk mempertahankan informasi urutan. Multi-head attention menjalankan $h$ attention secara paralel:

$$\mathrm{MultiHead}(Q,K,V)=\mathrm{Concat}(\mathrm{head}_1,\dots,\mathrm{head}_h)W^{O} \tag{2.2}$$

dengan $\mathrm{head}_i=\mathrm{Attention}(QW_i^{Q},KW_i^{K},VW_i^{V})$, di mana $W_i^{Q}$, $W_i^{K}$, $W_i^{V}$ adalah matriks proyeksi head ke-$i$ dan $W^{O}$ adalah matriks proyeksi keluaran (Vaswani et al., 2017). Lapisan feed-forward dan layer normalization melengkapi blok encoder (Devlin et al., 2019). Objektif pelatihan MLM dirumuskan sebagai:

$$\mathcal{L}_{MLM}=-\sum_{i\in M}\log P(w_i\mid w_{\setminus M}) \tag{2.3}$$

dengan $M$ adalah himpunan indeks token yang disembunyikan, $w_i$ adalah token target, dan $w_{\setminus M}$ adalah konteks token yang tersisa (Devlin et al., 2019). Ukuran parameter BERT yang besar menyulitkan penerapannya pada perangkat dengan sumber daya terbatas, sehingga kuantisasi menjadi teknik kompresi yang relevan.

### 2.3.2 IndoBERT

IndoBERT merupakan adaptasi BERT untuk bahasa Indonesia yang dilatih pada korpus Indo4B, yaitu korpus sekitar empat miliar kata yang mencakup teks formal dan kolokial dari media sosial, blog, berita, dan situs web (Wilie et al., 2020). Arsitekturnya mirip BERT, dengan kosakata dan representasi yang disesuaikan dengan bahasa Indonesia (Maharani et al., 2023). Penelitian ini menggunakan checkpoint IndoBERT-base-p2 dengan 124,5 juta parameter, 12 lapisan, 12 head, dan hidden size 768 (Maharani et al., 2023; Wilie et al., 2020) **[CEK: samakan dengan notebook dan Sanjaya; ganti ke p1 bila notebook p1]**.

Abdurrahman et al. (2023) menguji kuantisasi pada IndoBERT dan melaporkan tiga temuan. Kuantisasi INT8 pada bobot menghasilkan degradasi minimal, kuantisasi 4-bit pada bobot masih mempertahankan performa pada tugas klasifikasi tetapi lebih merugikan tugas sequence labeling, dan kuantisasi aktivasi 4-bit menyebabkan penurunan yang besar. Angka rinci studi tersebut disajikan pada subbab 2.8.

## 2.4 Kuantisasi Model

Kuantisasi adalah teknik untuk melakukan komputasi dan menyimpan tensor pada presisi bit yang lebih rendah (Abdurrahman et al., 2023). Secara matematis, kuantisasi merupakan pemetaan nilai riil kontinu ke himpunan nilai diskret berhingga, dengan input di luar rentang yang dipilih dipotong (clipped) ke batas rentang tersebut (Gholami et al., 2021). Model terkuantisasi dapat menjalankan sebagian atau seluruh operasinya pada presisi rendah (Wu et al., 2023). Kebutuhan memori dan komputasi berkurang, tetapi besarnya degradasi performa bergantung pada presisi dan cakupan kuantisasi (Gholami et al., 2021).

Presisi yang digunakan dalam penelitian ini adalah FP32, INT8, dan INT4. Notasi WxAy menunjukkan bobot $x$-bit dan aktivasi $y$-bit; W8A8 berarti bobot dan aktivasi 8-bit, sedangkan W4A4 berarti keduanya 4-bit (Wu et al., 2023). Dalam penelitian ini, W4A32 menunjukkan bobot 4-bit dengan aktivasi 32-bit yang tidak dikuantisasi (skenario weight-only), dan W4A8 menunjukkan bobot 4-bit dengan aktivasi 8-bit. Kuantisasi dapat diterapkan pada bobot saja (weight-only) atau pada bobot dan aktivasi sekaligus (weight-activation) (Wu et al., 2023). Relatif terhadap model FP32, model 16-bit berukuran sekitar 50% dan model 8-bit sekitar 25% (Abdurrahman et al., 2023).

Kuantisasi simetris untuk bilangan bulat $b$-bit dengan pendekatan pembagi didefinisikan sebagai:

$$x_q=\mathrm{clip}\!\left(\mathrm{round}\!\left(\frac{x}{s}\right),\,-(2^{b-1}-1),\,2^{b-1}-1\right) \tag{2.4}$$

dengan faktor skala:

$$s=\frac{\alpha}{2^{b-1}-1} \tag{2.5}$$

Pada Persamaan (2.4) dan (2.5), $x$ adalah nilai riil input, $x_q$ adalah nilai terkuantisasi, $b$ adalah jumlah bit, dan $\alpha$ adalah nilai absolut maksimum dari rentang yang dipilih (Gholami et al., 2021). Skema ini simetris terhadap nol sehingga zero point bernilai nol, dan batas clip simetris sesuai dengan faktor skala pada Persamaan (2.5). Dekuantisasi dilakukan dengan mengalikan nilai terkuantisasi dengan faktor skala, yaitu $\hat{x}=x_q\cdot s$ (Gholami et al., 2021).

## 2.5 Post-Training Quantization

Post-Training Quantization (PTQ) adalah proses penentuan skala dan zero point setiap tensor dengan menjalankan model untuk memperoleh statistik tiap lapisan (Abdurrahman et al., 2023). PTQ tidak memerlukan retraining, sehingga praktis untuk deployment model yang sudah dilatih (Gholami et al., 2021). Data kalibrasi diperlukan ketika aktivasi dikuantisasi, karena digunakan untuk mengestimasi statistik aktivasi per lapisan (Williams & Aletras, 2024). Williams dan Aletras (2024) menunjukkan bahwa pemilihan data kalibrasi memengaruhi kualitas kuantisasi model bahasa, sedangkan Hubara et al. (2021) menemukan bahwa PTQ dengan set kalibrasi kecil masih mencapai akurasi kompetitif pada model vision.

Penelitian ini menggunakan skema simetris dengan bobot dikuantisasi per-channel berbasis absmax **[PUTUSKAN: notebook memakai MSE per-tensor; samakan Persamaan 2.6–2.7 dan notebook]**. Faktor skala per-channel dirumuskan sebagai:

$$s_j=\frac{\max(|W_j|)}{2^{b-1}-1} \tag{2.6}$$

dengan $W_j$ adalah bobot pada channel ke-$j$ dan $s_j$ adalah faktor skala channel tersebut (Gholami et al., 2021). Bobot hasil rekonstruksi diperoleh dengan:

$$\hat{W}_j=s_j\cdot\mathrm{round}\!\left(\frac{W_j}{s_j}\right) \tag{2.7}$$

dengan $\hat{W}_j$ adalah bobot hasil dekuantisasi (Gholami et al., 2021). Persamaan (2.7) menunjukkan bahwa bobot asli didekati kembali dari representasi bilangan bulat dengan mengalikan faktor skala.

Untuk aktivasi, penelitian ini menetapkan skema berikut: **[ISI dari notebook: jumlah batch kalibrasi (atau dinamis tanpa kalibrasi), penaksir rentang (min-max / MSE), simetris atau asimetris, per-tensor, dan daftar lapisan yang dikuantisasi (mis. Linear pada encoder; embedding, LayerNorm, softmax, dan classifier tetap FP32)]**. Perlakuan kuantisasi pada setiap kondisi percobaan, termasuk kondisi tanpa kuantisasi aktivasi, dijelaskan pada Bab III.

Cakupan kuantisasi menentukan besarnya degradasi. Abdurrahman et al. (2023) melaporkan bahwa kuantisasi aktivasi 4-bit jauh lebih merusak performa daripada kuantisasi bobot 4-bit pada IndoBERT. Bondarenko et al. (2021) memperkuat temuan tersebut pada BERT-base dengan rata-rata skor GLUE sebesar 83,06 (FP32), 71,03 (W8A8), 70,25 (W32A8), dan 83,23 (W8A32). Penurunan skor hanya muncul ketika aktivasi dikuantisasi, sedangkan kuantisasi bobot saja nyaris tidak mengubah skor. Sanjaya et al. (2026) melaporkan bahwa PTQ weight-only INT4 hampir tidak menurunkan metrik klasifikasi, tetapi kestabilan atribusi turun (ρ = 0,850).

Berbeda dengan PTQ, Quantization-Aware Training (QAT) memasukkan operasi kuantisasi ke dalam model sebelum pelatihan atau fine-tuning sehingga model beradaptasi dengan presisi rendah (Wu et al., 2023). Q8BERT mempertahankan 99% akurasi FP32 pada delapan tugas NLP dengan QAT 8-bit, dengan error relatif di bawah 1% kecuali pada tugas RTE (Zafrir et al., 2019). Wu et al. (2023) melaporkan bahwa QAT dengan knowledge distillation pada BERT-base tidak menurunkan akurasi pada QQP dan MNLI, sedangkan pada model decoder-only GPT2 perplexity meningkat setidaknya 1,5 poin. QAT memerlukan biaya komputasi lebih tinggi karena retraining tambahan, dan Sanjaya et al. (2026) menemukan bahwa QAT mengubah atribusi model bahkan pada presisi penuh (ρ = 0,788 sebelum kuantisasi). Penelitian ini memilih PTQ untuk mengevaluasi kuantisasi tanpa retraining.

## 2.6 Dataset Finansial Bahasa Indonesia

### 2.6.1 IndoFinSent

IndoFinSent adalah dataset sentimen finansial bahasa Indonesia yang dibuat dengan scraping judul artikel berita keuangan dari Liputan6, CNBC, Detik, Sindo, Jawapos, dan Metrotv News (Maharani et al., 2023). Setiap kalimat dilabeli secara manual oleh dua anotator dan diperiksa silang. Dataset berisi 2.274 entri dengan distribusi label positif 52,77%, netral 26,25%, dan negatif 20,98%. Split resmi terdiri dari 1.591 data latih, 227 data validasi, dan 456 data uji (Maharani et al., 2023) **[PUTUSKAN: notebook memakai 2.046/228 tanpa test; ditulis di sini mengikuti split resmi karena ECE dan flip membutuhkan test set]**. Karena dibuat dari teks asli bahasa Indonesia, dataset ini mempertahankan nuansa bahasa, referensi budaya, dan ekspresi idiomatik yang spesifik.

IndoFinSent berisi judul berita yang merujuk pada satu institusi keuangan (contohnya BRI), sehingga generalisasi ke institusi lain atau domain finansial yang lebih luas harus dilakukan dengan hati-hati (Maharani et al., 2023). Kelas negatif sebesar 20,98% juga merupakan kelas minoritas. Karena itu, Macro F1-Score menjadi metrik utama karena memberi bobot setara pada setiap kelas (Hinojosa Lee et al., 2024), dilengkapi evaluasi per kelas untuk melihat apakah kuantisasi lebih merugikan kelas minoritas.

### 2.6.2 Indonesian Financial PhraseBank

Indonesian Financial PhraseBank adalah terjemahan Financial PhraseBank ke bahasa Indonesia menggunakan Google Translate (Maharani et al., 2023). Dataset memakai subset "all agree" yang terdiri dari 2.264 kalimat keuangan beserta label sentimennya (Malo et al., 2014). Distribusi labelnya adalah netral 61,44%, positif 25,18%, dan negatif 13,38%, dengan split resmi 1.629 data latih, 182 data validasi, dan 453 data uji (Maharani et al., 2023). Penerjemahan memungkinkan perbandingan dengan penelitian yang memakai versi Inggris (Araci, 2019). Terjemahan berpotensi menggeser makna, tetapi subset "all agree" hanya memuat kalimat dengan kesepakatan anotator yang tinggi (Malo et al., 2014).

Kelas netral sebesar 61,44% berarti model yang memprediksi netral untuk seluruh kalimat tetap memperoleh akurasi 61,44% pada keseluruhan dataset. Karena itu, akurasi saja tidak cukup untuk menilai dampak kuantisasi pada dataset ini, dan penelitian ini melaporkan Macro F1 serta hasil per kelas. Perubahan prediksi akibat kuantisasi juga dianalisis per kelas untuk melihat apakah kelas minoritas (negatif 13,38%) lebih terdampak (subbab 2.7.2).

## 2.7 Metrik Evaluasi

Metrik yang dipilih dibatasi pada ukuran yang memiliki dukungan penelitian terdahulu. Ukuran selisih skor sentimen kontinu per sampel (misalnya MAE antara skor model FP32 dan model terkuantisasi) tidak digunakan karena belum ditemukan penelitian yang mendukung pemakaiannya untuk menilai kuantisasi. Evaluasi dikelompokkan menjadi kinerja klasifikasi dan kalibrasi (2.7.1), pergeseran perilaku keluaran (2.7.2), dan efisiensi (2.7.3).

### 2.7.1 Klasifikasi Diskret dan Kalibrasi

Macro F1-Score dihitung dari F1-score setiap kelas secara terpisah, kemudian dirata-ratakan. Metrik ini memberi bobot setara pada setiap kelas sehingga lebih peka terhadap ketidakseimbangan kelas daripada Micro F1-Score (Hinojosa Lee et al., 2024):

$$F1_{macro}=\frac{1}{N}\sum_{i=1}^{N}F1_i \tag{2.8}$$

dengan $N$ adalah jumlah kelas dan $F1_i$ adalah F1-score kelas ke-$i$. Hinojosa Lee et al. (2024) membahas metrik ini pada klasifikasi emosi multilabel, sedangkan penelitian ini memakainya pada klasifikasi multi-class. Akurasi dihitung sebagai proporsi prediksi benar terhadap seluruh data uji:

$$\mathrm{Akurasi}=\frac{\sum_{i=1}^{N}TP_i}{N_{total}} \tag{2.9}$$

dengan $TP_i$ adalah jumlah prediksi benar kelas ke-$i$ (diagonal matriks konfusi) dan $N_{total}$ adalah jumlah sampel uji. Akurasi mudah dipahami tetapi dapat menyesatkan pada data yang tidak seimbang (Sokolova & Lapalme, 2009), seperti pada Bimasena et al. (2026) yang melaporkan akurasi 0,94 bersama Macro F1 0,71. Precision dan recall dilaporkan per kelas untuk melihat apakah kuantisasi lebih merugikan kelas minoritas.

Kalibrasi diukur dengan Expected Calibration Error (ECE), yaitu selisih rata-rata tertimbang antara akurasi dan confidence model (Guo et al., 2017). Prediksi dibagi ke dalam $M=15$ bin berdasarkan confidence, yaitu probabilitas kelas tertinggi:

$$\mathrm{ECE}=\sum_{m=1}^{M}\frac{|B_m|}{n}\,\bigl|\,\mathrm{acc}(B_m)-\mathrm{conf}(B_m)\,\bigr| \tag{2.10}$$

dengan $B_m$ adalah himpunan sampel pada bin ke-$m$, $n$ adalah jumlah sampel uji, $\mathrm{acc}(B_m)$ adalah akurasi pada bin tersebut, dan $\mathrm{conf}(B_m)$ adalah rata-rata confidence-nya. Sanjaya et al. (2026) memakai ECE untuk membandingkan model FP32, PTQ, dan QAT pada IndoBERT, dengan nilai 5,4–5,6% pada FP32 dan PTQ serta 6,2–6,3% pada QAT.

### 2.7.2 Pergeseran Perilaku Keluaran

Akurasi yang sama pada model FP32 dan model terkuantisasi tidak menjamin keduanya memberi prediksi yang sama pada setiap sampel. Dutta et al. (2024) mendefinisikan flips sebagai perubahan jawaban antara model asal dan model terkompresi, yaitu dari benar menjadi salah atau sebaliknya, dan menunjukkan bahwa akurasi saja tidak cukup untuk menilai kompresi. Sanjaya et al. (2026) mengukur hal serupa melalui prediction agreement, yaitu 99,5% antara PTQ-INT8 dan FP32. Penelitian ini mendefinisikan flip rate sebagai proporsi sampel yang label prediksinya berubah:

$$\mathrm{Flip\ Rate}=\frac{1}{n}\sum_{i=1}^{n}\mathbb{1}\bigl[\hat{y}_{FP32,i}\neq\hat{y}_{q,i}\bigr] \tag{2.11}$$

dengan $\hat{y}_{FP32,i}$ adalah label prediksi model FP32 untuk sampel ke-$i$, $\hat{y}_{q,i}$ adalah label prediksi model terkuantisasi pada sampel yang sama, $q$ menunjukkan konfigurasi kuantisasi, dan $\mathbb{1}[\cdot]$ adalah fungsi indikator.

Sebagai analisis tambahan penelitian ini (bukan hasil sitasi), flip dipecah menjadi flip merugikan, yaitu prediksi benar pada FP32 menjadi salah pada model terkuantisasi, dan flip menguntungkan, yaitu kebalikannya. Flip juga dirinci dalam matriks transisi 3×3 antara label FP32 dan label model terkuantisasi, serta dilaporkan per kelas. Dengan pemecahan ini, akurasi yang tampak stabil dapat dibedakan dari kondisi ketika flip merugikan dan flip menguntungkan saling meniadakan.

Pergeseran distribusi probabilitas diukur dengan KL divergence pada distribusi tiga kelas (positif, netral, negatif), dirata-ratakan pada seluruh sampel uji:

$$D_{KL}(P_{FP32}\parallel P_q)=\frac{1}{n}\sum_{i=1}^{n}\sum_{c=1}^{3}\tilde{P}_{FP32,i}(c)\,\ln\frac{\tilde{P}_{FP32,i}(c)}{\tilde{P}_{q,i}(c)} \tag{2.12}$$

dengan $\tilde{P}(c)=(P(c)+\varepsilon)/(1+3\varepsilon)$ adalah probabilitas yang dihaluskan dengan $\varepsilon=10^{-8}$ agar tidak terjadi pembagian dengan nol, dan logaritma yang digunakan adalah logaritma natural. Dutta et al. (2024) melaporkan korelasi KL divergence dengan flips sebesar 0,981, sehingga KL divergence dapat berfungsi sebagai ukuran pelengkap flip. Ukuran jarak distribusi lain, yaitu JSD dan TVD, dipakai oleh Qamar et al. (2026) **[CEK PDF Qamar: konteks dan klaimnya]**. Prosedur pengukuran, termasuk pengujian statistik, dijelaskan pada Bab III.

### 2.7.3 Efisiensi Komputasi

Ukuran model diukur dalam megabyte (MB) dan dibandingkan antara FP32, INT8, dan INT4. Ukuran teoretis dihitung dari jumlah bit dan dapat berbeda dari ukuran berkas aktual. Sanjaya et al. (2026) melaporkan bahwa PTQ-INT8 mengurangi ukuran IndoBERT dari 475 MB menjadi 230 MB (sekitar 52%), sedangkan PTQ-INT4 weight-only tetap 230 MB karena disimpan sebagai INT8 dengan metadata tambahan.

Latensi inferensi diukur dalam milidetik per sampel. Sanjaya et al. (2026) melaporkan bahwa PTQ-INT8 menurunkan latensi dari 25,1 ms menjadi 9,4 ms pada CPU (sekitar 2,7 kali lebih cepat), sedangkan PTQ-INT4 weight-only lebih lambat (32,7 ms) karena dekuantisasi ke FP32 sebelum komputasi. Wu et al. (2023) melaporkan percepatan hingga 8,5 kali pada skenario berorientasi latensi dan hingga 3 kali pada throughput dibandingkan FP16 pada GPU A6000, dengan syarat dukungan kernel hardware tertentu. Percepatan tersebut tidak terwujud pada weight-only quantization tanpa dukungan itu (Wu et al., 2023).

Penelitian ini menggunakan simulasi kuantisasi (fake quantization), sehingga ukuran model bersifat teoretis dan latensi yang terukur tidak mencerminkan percepatan pada perangkat dengan kernel presisi rendah. Kedua angka tersebut dilaporkan sebagai informasi pelengkap dengan keterbatasan ini dicantumkan pada Bab III.

## 2.8 Penelitian Relevan

Penelitian terdahulu yang relevan dan terbit dalam lima tahun terakhir dirangkum pada Tabel 2.1. Studi-studi tersebut dikelompokkan ke dalam tiga jalur, yaitu sentimen finansial berbahasa Indonesia, kuantisasi model bahasa, dan evaluasi kompresi di luar akurasi.

Pada jalur sentimen finansial Indonesia, Maharani et al. (2023) melakukan post-training IndoBERT pada korpus finansial Indonesia sebesar 647.586 kata. Pada Financial PhraseBank terjemahan, model base mencapai F1 0,91 pada baseline dan 0,94 setelah post-training dengan 100% data latih, sedangkan pada IndoFinSent model base mencapai F1 0,79–0,81 dan model large 0,78–0,79. Tanjaya et al. (2025) melakukan fine-tuning IndoBERTweet pada 3.288 tweet saham Indonesia dan melaporkan F1 makro 0,8177 pada data uji dan 0,8106 pada data uji dengan noise sintetis, dengan indikasi overfitting yang diakui penulisnya. Bimasena et al. (2026) membandingkan IndoBERT dan mBERT pada 3.366 artikel berita keuangan Indonesia dan melaporkan IndoBERT dengan akurasi 0,94 dan Macro F1 0,71, sedangkan mBERT mencapai 0,93 dan 0,70. Data Bimasena et al. (2026) memakai pseudo-label hasil mesin, bukan ground truth manusia. Ketiga studi ini mengevaluasi model tanpa kompresi dan memakai metrik klasifikasi diskret.

Pada jalur kuantisasi, Abdurrahman et al. (2023) meneliti kuantisasi IndoBERT pada tujuh tugas downstream IndoNLU. PTQ INT8 pada bobot mencapai rata-rata F1 77,04 terhadap 77,35 pada FP32. PTQ 4-bit pada bobot menurunkan F1 sekitar 1 poin pada tugas klasifikasi (SmSA 86,30 menjadi 85,20), tetapi tugas sequence labeling turun lebih besar (FACQA 54,16 menjadi 43,90; NERGRIT 70,92 menjadi 60,31). PTQ 4-bit pada aktivasi menurunkan rata-rata F1 dari 76,98 (W16A32) menjadi 17,71 (W16A4), sedangkan QAT aktivasi 4-bit masih mencapai 47,29. Pada SmSA, PTQ W4A32 mencapai F1 85,20 dan QAT W4A32 mencapai 79,21, yang menjadi salah satu alasan penelitian ini memilih PTQ. Studi tersebut menguji bobot (WxA32) dan aktivasi (W16Ay) secara terpisah, sehingga F1 untuk kombinasi bobot dan aktivasi (WxAy) tidak dilaporkan. Bondarenko et al. (2021) menunjukkan pada BERT-base GLUE bahwa aktivasi merupakan sumber utama degradasi pada 8-bit (rata-rata 83,06 pada FP32, 71,03 pada W8A8, dan 83,23 pada W8A32).

Wu et al. (2023) meneliti W4A4 pada Transformer dengan QAT dan knowledge distillation, dan melaporkan tidak ada degradasi akurasi pada BERT-base (QQP dan MNLI) tetapi penurunan besar pada GPT2. Williams dan Aletras (2024) menunjukkan bahwa pemilihan data kalibrasi memengaruhi performa downstream pada LLaMA, Vicuna, dan OPT; SpQR paling tidak sensitif (0,6–1,0%) dan SparseGPT paling sensitif (2,4–4,8%). Sanjaya et al. (2026) mengevaluasi PTQ dan QAT pada IndoBERT untuk SmSA pada FP16, INT8, dan INT4. Akurasi bertahan pada 92,9–93,2%, sedangkan kestabilan atribusi bergantung pada jalur kompresi: PTQ-INT8 memiliki ρ = 0,967, PTQ-INT4 weight-only ρ = 0,850, dan QAT yang diekspor ke ONNX turun hingga ρ sekitar 0,55. Studi ini memakai data umum (SmSA), INT4 hanya pada bobot, dan metrik berbasis atribusi.

Pada jalur evaluasi di luar akurasi, Dutta et al. (2024) mengusulkan flips dan KL divergence sebagai pelengkap akurasi pada kompresi model, dengan korelasi KL divergence terhadap flips sebesar 0,981. Sanjaya et al. (2026) melengkapi akurasi dengan ECE, prediction agreement, dan kestabilan atribusi pada IndoBERT. Kedua studi ini menjadi dasar pemilihan flip rate, KL divergence, dan ECE pada penelitian ini.

**Tabel 2.1** Penelitian Terdahulu

| No | Referensi | Model | Dataset & Domain | Teknik | Metrik | Hasil Utama | Relevansi |
|---|---|---|---|---|---|---|---|
| 1 | Maharani dkk. (2023) | IndoBERT-base (124,5M), IndoBERT-large (335,2M) | Korpus finansial Indonesia (647.586 kata), IndoFinSent (2.274), Financial PhraseBank ID (2.264) | Post-training MLM | F1 | PhraseBank ID: F1 0,91 → 0,94; IndoFinSent: F1 0,79–0,81 (base), 0,78–0,79 (large) | Sumber kedua dataset dan split resmi |
| 2 | Abdurrahman dkk. (2023) | IndoBERT | IndoNLU (7 tugas), termasuk SmSA | PTQ dan QAT; 4-bit dan 8-bit pada bobot dan aktivasi (terpisah) | F1, FLOPs, estimasi ukuran | INT8 bobot 77,04 vs 77,35; aktivasi 4-bit 76,98 → 17,71; F1 kombinasi WxAy tidak dilaporkan | Dasar pemilihan PTQ; celah kombinasi bobot dan aktivasi |
| 3 | Wu dkk. (2023) | BERT-base, GPT2 | Inggris, GLUE (QQP, MNLI), Wikitext | QAT + KD; W4A4 | Akurasi, perplexity, latensi, throughput | Tanpa degradasi pada encoder; perplexity GPT2 naik; hingga 8,5× (latensi) dan 3× (throughput) vs FP16 | Notasi WxAy; syarat percepatan INT4 |
| 4 | Williams & Aletras (2024) | LLaMA, Vicuna, OPT (7B–33B) | Lima sumber data kalibrasi | PTQ (GPTQ, SpQR), pruning | Akurasi zero-shot, perplexity | Data kalibrasi memengaruhi performa; SpQR paling stabil, SparseGPT paling sensitif | Dasar pembahasan kalibrasi |
| 5 | Tanjaya dkk. (2025) | IndoBERTweet | 3.288 tweet saham Indonesia | Fine-tuning dengan variasi preprocessing dan hyperparameter | Macro F1 | F1 makro 0,8177 (uji), 0,8106 (uji ber-noise); selisih latih–validasi 0,124 sebelum tuning | Bukti overfitting pada sentimen saham Indonesia |
| 6 | Sanjaya dkk. (2026) | IndoBERT-base-p2, XLM-R, mBERT | SmSA, NusaX-senti | PTQ dan QAT; FP16/INT8/INT4 (INT4 hanya bobot) | Akurasi, F1, ECE, agreement, korelasi atribusi | Akurasi 92,9–93,2%; PTQ-INT8 ρ 0,967; PTQ-INT4 ρ 0,850; QAT-ONNX ρ ≈ 0,55; INT8 230 MB, 9,4 ms | Studi terdekat; dasar ECE dan agreement |
| 7 | Bimasena dkk. (2026) | IndoBERT, mBERT | 3.366 artikel berita finansial Indonesia (pseudo-label) | Fine-tuning dengan class weighting | Akurasi, Macro F1 | IndoBERT 0,94 / 0,71; mBERT 0,93 / 0,70 | Dasar Macro F1 sebagai metrik utama |
| 8 | Bondarenko dkk. (2021) | BERT-base | GLUE (Inggris) | PTQ W8A8, W32A8, W8A32 | Rata-rata skor GLUE | FP32 83,06; W8A8 71,03; W32A8 70,25; W8A32 83,23 | Aktivasi penyebab utama degradasi |
| 9 | Dutta dkk. (2024) | LLM **[CEK]** | **[CEK]** | Kompresi model **[CEK]** | Akurasi, flips, KL divergence | KL divergence berkorelasi 0,981 dengan flips | Dasar flip rate dan KL divergence |
| 10 | Penelitian ini | IndoBERT-base-p2 | IndoFinSent, Indonesian Financial PhraseBank | PTQ: FP32, INT8-W8A8, INT4-W4A32, INT4-W4A8, INT4-W4A4 | Macro F1, akurasi, ECE, flip rate, KL divergence, ukuran model, latensi | Dilaporkan pada Bab IV | Mengisi celah pada keempat dimensi |

Berdasarkan Tabel 2.1, dapat diidentifikasi empat celah. Pertama, studi pada jalur sentimen finansial Indonesia (Bimasena et al., 2026; Maharani et al., 2023; Tanjaya et al., 2025) belum mengevaluasi model terkompresi. Kedua, studi kuantisasi pada IndoBERT (Abdurrahman et al., 2023; Sanjaya et al., 2026) belum mencakup domain finansial, dan hanya menguji bobot atau aktivasi secara terpisah (Abdurrahman et al., 2023) atau INT4 hanya pada bobot (Sanjaya et al., 2026), padahal aktivasi merupakan penyebab utama degradasi pada BERT (Bondarenko et al., 2021). Ketiga, evaluasi kuantisasi di luar akurasi (Dutta et al., 2024; Sanjaya et al., 2026) belum diterapkan pada teks keuangan Indonesia, padahal akurasi dan Macro F1 dapat berselisih jauh pada data keuangan (Bimasena et al., 2026). Keempat, belum ada studi yang secara bersamaan mencakup PTQ pada kombinasi bobot dan aktivasi, sentimen, domain finansial, dan bahasa Indonesia.

Penelitian ini mengisi celah tersebut dengan mengevaluasi PTQ pada IndoBERT menggunakan dua dataset finansial Indonesia, yaitu IndoFinSent dan Indonesian Financial PhraseBank, pada lima kondisi: FP32, INT8-W8A8, INT4-W4A32, INT4-W4A8, dan INT4-W4A4. Evaluasi mencakup Macro F1, akurasi, ECE, flip rate, dan KL divergence, dilengkapi ukuran model dan latensi.

---

# DAFTAR RUJUKAN

Abdurrahman, M. A., Cahyawijaya, S., Winata, G. I., & Purwarianti, A. (2023). Implementing Quantization to Indonesian BERT Language Model. *2023 10th International Conference on Advanced Informatics: Concept, Theory and Application (ICAICTA)*. https://doi.org/10.1109/ICAICTA59291.2023.10390159 **[CEK halaman di IEEE Xplore]**

Araci, D. (2019). FinBERT: Financial Sentiment Analysis with Pre-trained Language Models. *arXiv preprint arXiv:1908.10063*.

Bimasena, M. I., Prayoga, I. K. Y., Mahendra, I. G. A. P., & Sidik, P. (2026). Benchmarking IndoBERT and Multilingual BERT for Indonesian Financial News Sentiment Classification. *Jurnal Teknologi dan Open Source, 9*(1), 164–176. https://doi.org/10.36378/jtos.v9i1.5583

Bondarenko, Y., Nagel, M., & Blankevoort, T. (2021). Understanding and Overcoming the Challenges of Efficient Transformer Quantization. *Proceedings of EMNLP 2021*. **[LENGKAPI: halaman dan DOI dari PDF]**

Devlin, J., Chang, M.-W., Lee, K., & Toutanova, K. (2019). BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding. *Proceedings of NAACL-HLT*, 4171–4186. https://doi.org/10.18653/v1/N19-1423

Dutta, A., et al. (2024). Accuracy is Not All You Need. **[LENGKAPI dari PDF: daftar penulis, venue, tahun terbit]**

Ferdous, S. M., Newaz, S. N. E., Mugdha, S. B. S., & Uddin, M. (2024). Sentiment Analysis in the Transformative Era of Machine Learning: A Comprehensive Review. *Statistics, Optimization & Information Computing, 13*(1), 331–346. https://doi.org/10.19139/soic-2310-5070-2113

Galke, L., Scherp, A., Diera, A., Karl, F., Lin, B. X., Khera, B., Meuser, T., & Singhal, T. (2025). Are We Really Making Much Progress in Text Classification? A Comparative Review. *ACM Computing Surveys, 57*(4), 1–38. https://doi.org/10.1145/3711129

Gardazi, N. M., Daud, A., Malik, M. K., Bukhari, A., Alsahfi, T., & Alshemaimri, B. (2025). BERT applications in natural language processing: a review. *Artificial Intelligence Review, 58*, 166. https://doi.org/10.1007/s10462-025-11162-5

Gholami, A., Kim, S., Dong, Z., Yao, Z., Mahoney, M. W., & Keutzer, K. (2021). A Survey of Quantization Methods for Efficient Neural Network Inference. *arXiv preprint arXiv:2103.13630*.

Guo, C., Pleiss, G., Sun, Y., & Weinberger, K. Q. (2017). On Calibration of Modern Neural Networks. *Proceedings of the 34th ICML, PMLR 70*, 1321–1330. **[TAMBAHAN BARU untuk rumus ECE; cek ke PDF/sumber]**

Hinojosa Lee, M. C., Braet, J., & Springael, J. (2024). Performance Metrics for Multilabel Emotion Classification: Comparing Micro, Macro, and Weighted F1-Scores. *Applied Sciences, 14*(21), 9863. https://doi.org/10.3390/app14219863

Hubara, I., Nahshan, Y., Hanani, Y., Banner, R., & Soudry, D. (2021). Accurate Post Training Quantization with Small Calibration Sets. *Proceedings of the 38th ICML, 139*, 4466–4475.

Jiwandono, T. A., Achmad, M. H., & Suhirman, S. (2026). Fine-tuned IndoBERT for stock market sentiment analysis: evidence from CNBC Indonesia news. *IJEECS, 42*(3), 774–785. https://doi.org/10.11591/ijeecs.v42.i3.pp774-785

Jurafsky, D., & Martin, J. H. (2025). *Speech and Language Processing* (3rd ed.) [Online manuscript released August 24, 2025]. https://web.stanford.edu/~jurafsky/slp3/

Maharani, N. P. I., Purwarianti, A., Yustiawan, Y., & Rochim, F. C. (2023). Domain-Specific Language Model Post-Training for Indonesian Financial NLP. *2023 International Conference on Electrical Engineering and Informatics (ICEEI)*, 1–6. https://doi.org/10.1109/ICEEI59426.2023.10346625

Malo, P., Sinha, A., Korhonen, P., Wallenius, J., & Takala, P. (2014). Good debt or bad debt: Detecting semantic orientations in economic texts. *Journal of the Association for Information Science and Technology, 65*(4), 782–796. https://doi.org/10.1002/asi.23062

Qamar, et al. (2026). **[LENGKAPI dari PDF: judul, penulis, venue; opsional]**

Sanjaya, H. A., Collin, M., Tjahyadi, B. G., & Suhartono, D. (2026). Quantization Effects on Explainability in Indonesian Transformer-Based Sentiment Analysis. *Procedia Computer Science, 289*, 1084–1093. https://doi.org/10.1016/j.procs.2026.08.328

Sokolova, M., & Lapalme, G. (2009). A systematic analysis of performance measures for classification tasks. *Information Processing & Management, 45*(4), 427–437. https://doi.org/10.1016/j.ipm.2009.03.002

Tanjaya, R. D., Simanjuntak, G. E., Nugroho, K. S., Isnan, M., & Pardamean, B. (2025). Optimizing Transformer-Based Models for Financial Sentiment in Indonesian Stock Tweets. *2025 IEEE 11th Information Technology International Seminar (ITIS)*, 214–219. https://doi.org/10.1109/ITIS67966.2025.11308959

Vaswani, A., Shazeer, N., Parmar, N., Uszkoreit, J., Jones, L., Gomez, A. N., Kaiser, Ł., & Polosukhin, I. (2017). Attention is All You Need. *NeurIPS, 30*, 5998–6008.

Wilie, B., Vincentio, K., Winata, G. I., Cahyawijaya, S., Li, X., Lim, Z. Y., Soleman, S., Mahendra, R., Fung, P., Bahar, S., & Purwarianti, A. (2020). IndoNLU: Benchmark and Resources for Evaluating Indonesian Natural Language Understanding. *Proceedings of AACL-IJCNLP*, 843–857. https://doi.org/10.18653/v1/2020.aacl-main.85

Williams, M., & Aletras, N. (2024). On the Impact of Calibration Data in Post-training Quantization and Pruning. *Proceedings of the 62nd ACL (Volume 1: Long Papers)*, 10100–10118. https://doi.org/10.18653/v1/2024.acl-long.544

Wu, X., Li, C., Aminabadi, R. Y., Yao, Z., & He, Y. (2023). Understanding INT4 Quantization for Language Models: Latency Speedup, Composability, and Failure Cases. *Proceedings of the 40th ICML, PMLR 202*. **[CEK halaman di proceedings.mlr.press]**

Zafrir, O., Boudoukh, G., Izsak, P., & Wasserblat, M. (2019). Q8BERT: Quantized 8Bit BERT. *arXiv preprint arXiv:1910.06188*.
```

<a id="f-src-rancanganbab1-md"></a>

## `src/rancanganbab1.md`

Ukuran 4,530 byte &middot; 13 baris &middot; sha256 `b49228a5e7ad` &middot; encoding `utf-8-sig`

```markdown
Perkembangan teknologi kecerdasan buatan telah mendorong pemanfaatan model bahasa dalam berbagai tugas pengolahan bahasa alami (Natural Language Processing). Salah satu penerapannya adalah question answering, yaitu sistem yang dirancang untuk menjawab pertanyaan berdasarkan informasi yang tersedia. Pada pendekatan extractive question answering, sistem menentukan bagian teks yang paling relevan dari suatu konteks sebagai jawaban atas pertanyaan yang diberikan. Pendekatan ini dapat digunakan untuk membantu pengguna memperoleh informasi dari dokumen berbahasa alami secara lebih terarah.

Dalam penerapannya, sistem question answering membutuhkan model yang mampu memahami hubungan antara pertanyaan dan konteks untuk menentukan jawaban yang sesuai. Model bahasa berbasis arsitektur Transformer menjadi salah satu pendekatan yang banyak digunakan karena mampu mempelajari representasi kontekstual dari teks. Perkembangan model bahasa pralatih juga memungkinkan penyesuaian model terhadap tugas tertentu melalui proses fine-tuning. Seiring dengan perkembangan tersebut, model bahasa tidak hanya dikembangkan untuk bahasa Inggris, tetapi juga untuk berbagai bahasa lain, termasuk bahasa Indonesia.

Pengembangan sistem question answering berbahasa Indonesia memerlukan model dan dataset yang sesuai dengan karakteristik bahasa yang digunakan. Model bahasa pralatih berbahasa Indonesia dapat dimanfaatkan untuk memahami pertanyaan dan konteks, sedangkan dataset question answering digunakan untuk melatih dan mengevaluasi kemampuan model dalam menemukan jawaban. Meskipun demikian, kemampuan model dalam menyelesaikan tugas tersebut tidak hanya menjadi pertimbangan dalam penerapannya. Kebutuhan sumber daya komputasi juga perlu diperhatikan, terutama ketika model akan digunakan pada lingkungan dengan keterbatasan memori dan kapasitas pemrosesan.

Salah satu kendala dalam penerapan model bahasa adalah kebutuhan penyimpanan parameter dan memori selama proses inferensi. Model dengan representasi numerik berpresisi tinggi membutuhkan ruang penyimpanan yang lebih besar dibandingkan model dengan representasi berpresisi lebih rendah. Kondisi tersebut mendorong pengembangan teknik optimasi model untuk mengurangi kebutuhan sumber daya tanpa menghilangkan kemampuan utama model dalam menyelesaikan tugasnya. Salah satu pendekatan yang dapat digunakan adalah kuantisasi, yaitu proses merepresentasikan nilai numerik model menggunakan presisi yang lebih rendah.

Kuantisasi pasca-pelatihan (Post-Training Quantization atau PTQ) merupakan pendekatan kuantisasi yang diterapkan setelah model selesai dilatih. Dalam penelitian ini, perhatian difokuskan pada weight-only PTQ, yaitu kuantisasi yang diterapkan pada bobot model, sedangkan aktivasi tidak menjadi objek kuantisasi. Pendekatan ini memungkinkan kebutuhan penyimpanan bobot dikurangi tanpa mengharuskan seluruh komponen model menggunakan presisi numerik yang lebih rendah. Namun, perubahan representasi bobot dapat memengaruhi hasil prediksi model sehingga penerapannya perlu dievaluasi berdasarkan kualitas keluaran dan efisiensi penyimpanan.

Efektivitas weight-only PTQ tidak hanya berkaitan dengan tingkat presisi numerik yang digunakan, tetapi juga dengan granularitas kuantisasi. Bit-width menentukan jumlah bit yang digunakan untuk merepresentasikan nilai bobot, sedangkan granularitas menentukan cakupan bobot yang menggunakan parameter kuantisasi bersama. Perbedaan konfigurasi tersebut dapat menghasilkan pertukaran antara efisiensi penyimpanan dan kemampuan model dalam mempertahankan representasi bobot aslinya. Oleh karena itu, evaluasi terhadap variasi bit-width dan granularitas diperlukan untuk memahami pengaruh masing-masing konfigurasi terhadap kinerja model extractive question answering.

Berdasarkan permasalahan tersebut, penelitian ini berfokus pada evaluasi weight-only PTQ terhadap model encoder untuk tugas extractive question answering berbahasa Indonesia. Penelitian dilakukan dengan menguji konfigurasi kuantisasi berdasarkan variasi bit-width dan granularitas pada model serta dataset yang telah ditentukan. Kinerja model dievaluasi menggunakan metrik Exact Match (EM) dan F1 untuk mengukur kesesuaian jawaban yang dihasilkan, sedangkan ukuran model digunakan untuk mengamati perubahan kebutuhan penyimpanan setelah kuantisasi. Hasil evaluasi diharapkan dapat memberikan gambaran mengenai pengaruh konfigurasi kuantisasi terhadap kualitas prediksi dan efisiensi penyimpanan model bahasa untuk question answering berbahasa Indonesia.
```

<a id="f-src-reference-md"></a>

## `src/reference.md`

Ukuran 21,661 byte &middot; 527 baris &middot; sha256 `a3c58c29e3e3` &middot; encoding `utf-8-sig`

```markdown
%--------------------------------------------------------------------%
%
% Database referensi bibliografi
%
% author: [Kardynan Parulian]
%
%--------------------------------------------------------------------%
%
% Tambahkan entri referensi baru di sini. Sitasi di dokumen dengan
% \parencite{key}, \textcite{key}, atau perintah biblatex lainnya.
%
%--------------------------------------------------------------------%


% ====================================================================
% NLP DAN ARSITEKTUR TRANSFORMER
% ====================================================================

@inproceedings{vaswani2017attention,
    title={Attention is All You Need},
    author={Vaswani, Ashish and Shazeer, Noam and Parmar, Niki and Uszkoreit, Jakob and Jones, Llion and Gomez, Aidan N and Kaiser, {\L}ukasz and Polosukhin, Illia},
    booktitle={Advances in Neural Information Processing Systems (NeurIPS)},
    volume={30},
    pages={5998--6008},
    year={2017}
}

@inproceedings{devlin2019bert,
    title={{BERT}: Pre-training of Deep Bidirectional Transformers for Language Understanding},
    author={Devlin, Jacob and Chang, Ming-Wei and Lee, Kenton and Toutanova, Kristina},
    booktitle={Proceedings of the 2019 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies (NAACL-HLT)},
    pages={4171--4186},
    year={2019},
    address={Minneapolis, Minnesota},
    publisher={Association for Computational Linguistics},
    doi={10.18653/v1/N19-1423}
}

@article{fields2023survey,
    title={A Survey of Text Classification with Transformers: How Wide? How Large? How Long? How Accurate? How Expensive? How Safe?},
    author={Fields, John and Chovanec, Kevin and Madiraju, Praveen},
    journal={IEEE Access},
    volume={11},
    pages={1--25},
    year={2023},
    publisher={IEEE},
    doi={10.1109/ACCESS.2023.0322000}
}

@article{rahali2023end,
    title={End-to-End Transformer-Based Models in Textual-Based NLP},
    author={Rahali, Abir and Akhloufi, Moulay A},
    journal={AI},
    volume={4},
    number={1},
    pages={54--110},
    year={2023},
    publisher={MDPI},
    doi={10.3390/ai4010004}
}

@article{galke2025really,
    title={Are We Really Making Much Progress in Text Classification? A Comparative Review},
    author={Galke, Lukas and Scherp, Ansgar and Diera, Andor and Karl, Fabian and Lin, Bao Xin and Khera, Bhakti and Meuser, Tim and Singhal, Tushar},
    journal={ACM Computing Surveys},
    volume={57},
    number={4},
    pages={1--38},
    year={2025},
    publisher={ACM},
    doi={10.1145/3711129}
}

@article{gardazi2025bert,
    title={{BERT} applications in natural language processing: a review},
    author={Gardazi, Nadia Mushtaq and Daud, Ali and Malik, Muhammad Kamran and Bukhari, Amal and Alsahfi, Tariq and Alshemaimri, Bader},
    journal={Artificial Intelligence Review},
    volume={58},
    pages={166},
    year={2025},
    publisher={Springer},
    doi={10.1007/s10462-025-11162-5}
}


% ====================================================================
% INDOBERT DAN NLP BAHASA INDONESIA
% ====================================================================

@inproceedings{wilie2020indonlu,
    title={{IndoNLU}: Benchmark and Resources for Evaluating Indonesian Natural Language Understanding},
    author={Wilie, Bryan and Vincentio, Karissa and Winata, Genta Indra and Cahyawijaya, Samuel and Li, Xiaohong and Lim, Zhi Yuan and Soleman, Sidik and Mahendra, Rahmad and Fung, Pascale and Bahar, Syafri and Purwarianti, Ayu},
    booktitle={Proceedings of the 1st Conference of the Asia-Pacific Chapter of the Association for Computational Linguistics and the 10th International Joint Conference on Natural Language Processing (AACL-IJCNLP)},
    pages={843--857},
    year={2020},
    address={Suzhou, China},
    publisher={Association for Computational Linguistics},
    doi={10.18653/v1/2020.aacl-main.85},
    url={https://aclanthology.org/2020.aacl-main.85/}
}

@inproceedings{maharani2023domain,
    title={Domain-Specific Language Model Post-Training for Indonesian Financial {NLP}},
    author={Maharani, Ni Putu Intan and Purwarianti, Ayu and Yustiawan, Yoga and Rochim, Fauzy Caesar},
    booktitle={2023 International Conference on Electrical Engineering and Informatics (ICEEI)},
    pages={1--6},
    year={2023},
    publisher={IEEE},
    doi={10.1109/ICEEI59426.2023.10346625}
}

@inproceedings{abdurrahman2023implementing,
    title={Implementing Quantization to Indonesian {BERT} Language Model},
    author={Abdurrahman, Muhammad Ayyub and Cahyawijaya, Samuel and Winata, Genta Indra and Purwarianti, Ayu},
    booktitle={2023 International Conference on Advanced Informatics: Concepts, Theory and Applications (ICAICTA)},
    year={2023},
    publisher={IEEE}
}

@inproceedings{tanjaya2025optimizing,
    title={Optimizing Transformer-Based Models for Financial Sentiment in Indonesian Stock Tweets},
    author={Tanjaya, Richard Dean and Simanjuntak, Grace Esther and Nugroho, Kuncahyo Setyo and Isnan, Mahmud and Pardamean, Bens},
    booktitle={2025 IEEE 11th Information Technology International Seminar (ITIS)},
    pages={214--219},
    year={2025},
    publisher={IEEE},
    doi={10.1109/ITIS64717.2025.11295978}
}

@article{santosa2026comparative,
    title={Comparative Evaluation of {FinBERT} and {IndoBERT} for {LSTM}-Based Stock Price Prediction in Indonesia},
    author={Santosa, Heri and Kusrini and Martinez-B{\'e}jar, Rodrigo},
    journal={Journal of Applied Informatics and Computing},
    year={2026},
    publisher={Universitas Diponegoro}
}

@article{alam2025finetuning,
    title={Fine-Tuning {IndoBERT} Untuk Analisis Sentimen Berita Saham Berbahasa Indonesia Dengan Hyperparameter Optimization},
    author={Alam, Samsul},
    journal={JTERA (Jurnal Teknologi Rekayasa)},
    volume={11},
    number={1},
    year={2025}
}

@article{armstrong2026flat,
    title={When Flat Minima Fail: Characterizing {INT4} Quantization Collapse After {FP32} Convergence},
    author={Armstrong, Marcus},
    journal={arXiv preprint arXiv:2604.15167},
    year={2026}
}

% --------------------------------------------------------------------
% ANALISIS SENTIMEN FINANSIAL BAHASA INDONESIA (INDOBERT)
% --------------------------------------------------------------------
@article{bimasena2026benchmarking,
    title={Benchmarking {IndoBERT} and Multilingual {BERT} for Indonesian Financial News Sentiment Classification},
    author={Bimasena, Matius Ivan and Prayoga, I Kadek Yogi and Mahendra, I Gusti Agung Putu and Sidik, Purnama},
    journal={JURNAL TEKNOLOGI DAN OPEN SOURCE},
    volume={9},
    number={1},
    pages={164--176},
    year={2026},
    doi={10.36378/jtos.v9i1.5583}
}

@article{jiwandono2026finetuned,
    title={Fine-tuned {IndoBERT} for stock market sentiment analysis: evidence from {CNBC} Indonesia news},
    author={Jiwandono, Tri Agung and Achmad, MS Hendriyawan and Suhirman, Suhirman},
    journal={Indonesian Journal of Electrical Engineering and Computer Science (IJEECS)},
    volume={42},
    number={3},
    pages={774--785},
    year={2026},
    doi={10.11591/ijeecs.v42.i3.pp774-785}
}


% ====================================================================
% FINBERT DAN ANALISIS SENTIMEN FINANSIAL
% ====================================================================

@article{araci2019finbert,
    title={{FinBERT}: Financial Sentiment Analysis with Pre-trained Language Models},
    author={Araci, Dogu},
    journal={arXiv preprint arXiv:1908.10063},
    year={2019}
}

@article{yang2020finbert,
    title={{FinBERT}: A Pre-trained Language Model for Financial Communications},
    author={Yang, Yi and UY, Mark Christopher Siy and Huang, Allen},
    journal={arXiv preprint arXiv:2006.08097},
    year={2020}
}

@article{ferdous2024sentiment,
    title={Sentiment Analysis in the Transformative Era of Machine Learning: A Comprehensive Review},
    author={Ferdous, Sayeda Muntaha and Newaz, Syed Nur E and Mugdha, Shafayat Bin Shabbir and Uddin, Mahtab},
    journal={Statistics, Optimization \& Information Computing},
    volume={13},
    number={1},
    pages={331--346},
    year={2024},
    doi={10.19139/soic-2310-5070-2113}
}


% ====================================================================
% KUANTISASI PADA BERT DAN TRANSFORMER
% ====================================================================

@article{zafrir2019q8bert,
    title={{Q8BERT}: Quantized 8Bit {BERT}},
    author={Zafrir, Ofir and Boudoukh, Guy and Izsak, Peter and Wasserblat, Moshe},
    journal={arXiv preprint arXiv:1910.06188},
    year={2019}
}

@inproceedings{wu2023understanding,
    title={Understanding {INT4} Quantization for Language Models: Latency Speedup, Composability, and Failure Cases},
    author={Wu, Xiaoxia and Li, Cheng and Aminabadi, Reza Yazdani and Yao, Zhewei and He, Yuxiong},
    booktitle={Proceedings of the 40th International Conference on Machine Learning (ICML)},
    volume={202},
    year={2023},
    organization={PMLR}
}

@article{huang2026sherry,
    title={Sherry: Hardware-Efficient 1.25-Bit Ternary Quantization via Fine-grained Sparsification},
    author={Huang, Hong and Wu, Decheng and Hu, Qiangqiang and Yu, Guanghua and Yang, Jinhai and Zhu, Jianchen and Liu, Xue and Wu, Dapeng},
    journal={arXiv preprint arXiv:2601.07892},
    year={2026}
}


% ====================================================================
% METRIK EVALUASI
% ====================================================================

@article{hinojosalee2024performance,
    title={Performance Metrics for Multilabel Emotion Classification: Comparing Micro, Macro, and Weighted {F1}-Scores},
    author={Hinojosa Lee, Maria Cecilia and Braet, Johan and Springael, Johan},
    journal={Applied Sciences},
    volume={14},
    number={21},
    pages={9863},
    year={2024},
    publisher={MDPI},
    doi={10.3390/app14219863}
}


% ====================================================================
% REFERENSI TAMBAHAN BAB II
% ====================================================================

@book{jurafsky2025speech,
    title={Speech and Language Processing: An Introduction to Natural Language Processing, Computational Linguistics, and Speech Recognition with Language Models},
    author={Jurafsky, Daniel and Martin, James H.},
    edition={3rd},
    year={2025},
    note={Online manuscript released August 24, 2025},
    url={https://web.stanford.edu/~jurafsky/slp3/}
}

@inproceedings{barter2026bondbert,
    title={{BondBERT}: What we learn when assigning sentiment in the bond market},
    author={Barter, Toby and Gao, Zheng and Christodoulaki, Eva and Chen, Jing and Cartlidge, John},
    booktitle={Proceedings of the 18th International Conference on Agents and Artificial Intelligence (ICAART)},
    volume={5},
    pages={4056--4063},
    year={2026},
    address={Marbella, Spain},
    publisher={SCITEPRESS},
    doi={10.5220/0014251100004052}
}

@article{mishev2020evaluation,
    title={Evaluation of Sentiment Analysis in Finance: From Lexicons to Transformers},
    author={Mishev, Kostadin and Gjorgjevikj, Ana and Vodenska, Irena and Chitkushev, Lubomir T. and Trajanov, Dimitar},
    journal={IEEE Access},
    volume={8},
    pages={131662--131682},
    year={2020},
    publisher={IEEE},
    doi={10.1109/ACCESS.2020.3009626}
}

@article{kim2023forecasting,
    title={Forecasting the {S\&P} 500 Index Using Mathematical-Based Sentiment Analysis and Deep Learning Models: A {FinBERT} Transformer Model and {LSTM}},
    author={Kim, Jihwan and Kim, Hui-Sang and Choi, Sun-Yong},
    journal={Axioms},
    volume={12},
    number={9},
    pages={835},
    year={2023},
    publisher={MDPI},
    doi={10.3390/axioms12090835}
}

@article{sanjaya2026quantization,
    title={Quantization Effects on Explainability in Indonesian Transformer-Based Sentiment Analysis},
    author={Sanjaya, Helena Aurelia and Collin, Marvel and Tjahyadi, Bertrand Geraldo and Suhartono, Derwin},
    journal={Procedia Computer Science},
    volume={289},
    pages={1084--1093},
    year={2026},
    publisher={Elsevier},
    doi={10.1016/j.procs.2026.08.328}
}

@article{gholami2021survey,
    title={A Survey of Quantization Methods for Efficient Neural Network Inference},
    author={Gholami, Amir and Kim, Sehoon and Dong, Zhen and Yao, Zhewei and Mahoney, Michael W. and Keutzer, Kurt},
    journal={arXiv preprint arXiv:2103.13630},
    year={2021}
}

@inproceedings{williams2024impact,
    title={On the Impact of Calibration Data in Post-training Quantization and Pruning},
    author={Williams, Miles and Aletras, Nikolaos},
    booktitle={Proceedings of the 62nd Annual Meeting of the Association for Computational Linguistics (Volume 1: Long Papers)},
    pages={10100--10118},
    year={2024},
    address={Bangkok, Thailand},
    publisher={Association for Computational Linguistics},
    doi={10.18653/v1/2024.acl-long.544}
}

@inproceedings{hubara2021accurate,
    title={Accurate Post Training Quantization with Small Calibration Sets},
    author={Hubara, Itay and Nahshan, Yury and Hanani, Yair and Banner, Ron and Soudry, Daniel},
    booktitle={Proceedings of the 38th International Conference on Machine Learning (ICML)},
    series={Proceedings of Machine Learning Research},
    volume={139},
    pages={4466--4475},
    year={2021},
    organization={PMLR}
}

@article{malo2014good,
    title={Good debt or bad debt: Detecting semantic orientations in economic texts},
    author={Malo, Pekka and Sinha, Ankur and Korhonen, Pekka and Wallenius, Jyrki and Takala, Pyry},
    journal={Journal of the Association for Information Science and Technology},
    volume={65},
    number={4},
    pages={782--796},
    year={2014},
    publisher={Wiley},
    doi={10.1002/asi.23062}
}

@article{sokolova2009systematic,
    title={A systematic analysis of performance measures for classification tasks},
    author={Sokolova, Marina and Lapalme, Guy},
    journal={Information Processing \& Management},
    volume={45},
    number={4},
    pages={427--437},
    year={2009},
    publisher={Elsevier},
    doi={10.1016/j.ipm.2009.03.002}
}

% --------------------------------------------------------------------
% REFERENSI TAMBAHAN BAB II (revisi metrik: ECE, flip, KL)
% --------------------------------------------------------------------

@inproceedings{bondarenko2021understanding,
    title={Understanding and Overcoming the Challenges of Efficient Transformer Quantization},
    author={Bondarenko, Yelysei and Nagel, Markus and Blankevoort, Tijmen},
    booktitle={Proceedings of the 2021 Conference on Empirical Methods in Natural Language Processing (EMNLP)},
    pages={7947--7969},
    year={2021},
    address={Online and Punta Cana, Dominican Republic},
    publisher={Association for Computational Linguistics},
    doi={10.18653/v1/2021.emnlp-main.627}
}

@inproceedings{guo2017calibration,
    title={On Calibration of Modern Neural Networks},
    author={Guo, Chuan and Pleiss, Geoff and Sun, Yu and Weinberger, Kilian Q.},
    booktitle={Proceedings of the 34th International Conference on Machine Learning (ICML)},
    series={Proceedings of Machine Learning Research},
    volume={70},
    pages={1321--1330},
    year={2017},
    organization={PMLR}
}

@article{dutta2024accuracy,
    title={Accuracy is Not All You Need},
    author={Dutta, Abhinav and Krishnan, Shankar and Kwatra, Nipun and Ramjee, Ramachandran},
    journal={arXiv preprint arXiv:2407.09141},
    year={2024},
    url={https://arxiv.org/abs/2407.09141}
}

% [LENGKAPI] Qamar et al. (2026): lengkapi judul, penulis, dan venue dari PDF (opsional).
@misc{qamar2026,
    title={[LENGKAPI] Judul makalah Qamar et al. (2026)},
    author={Qamar, A. and others},
    year={2026}
}

% --------------------------------------------------------------------
% REFERENSI TAMBAHAN BAB I DAN BAB II (revisi: Devign + CodeBERT)
% --------------------------------------------------------------------

@inproceedings{daloisio2025compression,
    title={On the Compression of Language Models for Code: An Empirical Study on {CodeBERT}},
    author={D'Aloisio, G. and Traini, L. and Sarro, F. and Di Marco, A.},
    booktitle={2025 IEEE International Conference on Software Analysis, Evolution and Reengineering (SANER)},
    pages={12--23},
    year={2025},
    url={https://arxiv.org/abs/2412.13737}
}

@inproceedings{feng2020codebert,
    title={{CodeBERT}: A Pre-Trained Model for Programming and Natural Languages},
    author={Feng, Z. and Guo, D. and Tang, D. and Duan, N. and Feng, X. and Gong, M. and Shou, L. and Qin, B. and Liu, T. and Jiang, D. and Zhou, M.},
    booktitle={Findings of the Association for Computational Linguistics: EMNLP 2020},
    pages={1536--1547},
    year={2020},
    publisher={Association for Computational Linguistics},
    url={https://aclanthology.org/2020.findings-emnlp.139}
}

@inproceedings{zhou2019devign,
    title={{Devign}: Effective Vulnerability Identification by Learning Comprehensive Program Semantics via Graph Neural Networks},
    author={Zhou, Y. and Liu, S. and Siow, J. and others},
    booktitle={Advances in Neural Information Processing Systems},
    pages={10197--10207},
    year={2019}
}

@article{lu2021codexglue,
    title={{CodeXGLUE}: A Machine Learning Benchmark Dataset for Code Understanding and Generation},
    author={Lu, S. and Guo, D. and Ren, S. and others},
    journal={CoRR},
    volume={abs/2102.04664},
    year={2021},
    url={https://arxiv.org/abs/2102.04664}
}

@inproceedings{shi2022compressing,
    title={Compressing Pre-trained Models of Code into 3 {MB}},
    author={Shi, J. and Yang, Z. and Xu, B. and Kang, H. J. and Lo, D.},
    booktitle={Proceedings of the 37th IEEE/ACM International Conference on Automated Software Engineering (ASE '22)},
    year={2022},
    doi={10.1145/3551349.3556964}
}

@inproceedings{shi2024greening,
    title={Greening Large Language Models of Code},
    author={Shi, J. and Yang, Z. and Kang, H. J. and Xu, B. and He, J. and Lo, D.},
    booktitle={Proceedings of the 46th International Conference on Software Engineering: Software Engineering in Society (ICSE-SEIS '24)},
    pages={142--153},
    year={2024},
    doi={10.1145/3639475.3640097}
}

@inproceedings{wei2023towards,
    title={Towards Greener Yet Powerful Code Generation via Quantization: An Empirical Study},
    author={Wei, X. and Gonugondla, S. K. and Wang, S. and Ahmad, W. and Ray, B. and Qian, H. and Li, X. and Kumar, V. and Wang, Z. and Tian, Y. and Sun, Q. and Athiwaratkun, B. and Shang, M. and Ramanathan, M. K. and Bhatia, P. and Xiang, B.},
    booktitle={Proceedings of the 31st ACM Joint European Software Engineering Conference and Symposium on the Foundations of Software Engineering (ESEC/FSE '23)},
    pages={224--236},
    year={2023},
    doi={10.1145/3611643.3616302}
}

@article{giagnorio2025quantizing,
    title={Quantizing Large Language Models for Code Generation: A Differentiated Replication},
    author={Giagnorio, A. and Bavota, G.},
    journal={arXiv preprint arXiv:2503.07103},
    year={2025},
    url={https://arxiv.org/abs/2503.07103}
}

@article{chicco2020advantages,
    title={The advantages of the Matthews correlation coefficient ({MCC}) over {F1} score and accuracy in binary classification evaluation},
    author={Chicco, D. and Jurman, G.},
    journal={BMC Genomics},
    volume={21},
    year={2020},
    doi={10.1186/s12864-019-6413-7}
}

@inproceedings{moussa2022evaluation,
    title={On the use of evaluation measures for defect prediction studies},
    author={Moussa, R. and Sarro, F.},
    booktitle={Proceedings of the 31st ACM SIGSOFT International Symposium on Software Testing and Analysis (ISSTA '22)},
    year={2022},
    doi={10.1145/3533767.3534405}
}

% --------------------------------------------------------------------
% REFERENSI TAMBAHAN (VIBE CODING)
% --------------------------------------------------------------------

@article{elgendy2026responsible,
    title={Responsible Vibe Coding: Architecture, Opportunities, and Research Agenda},
    author={Elgendy, I. A. and Dwivedi, Y. K. and Al-Sharafi, M. A. and Hosny, M. and Helal, M. Y. and Crick, T. and Al-Busaidi, A. S.},
    journal={Journal of Computer Information Systems},
    pages={1--19},
    year={2026}
}

@article{zhao2025vibecodingsafe,
    title={Is Vibe Coding Safe? Benchmarking Vulnerability of Agent-Generated Code in Real-World Tasks},
    author={Zhao, S. and Wang, D. and Zhang, K. and Luo, J. and Li, Z. and Li, L.},
    journal={arXiv preprint arXiv:2512.03262},
    year={2025},
    url={https://arxiv.org/abs/2512.03262}
}

@misc{waseem2025vibecodingpracticeflow,
    title={Vibe Coding in Practice: Flow, Technical Debt, and Guidelines for Sustainable Use},
    author={Waseem, Muhammad and Ahmad, Aakash and Kemell, Kai-Kristian and Rasku, Jussi and Lahti, Sami and M{\"a}kel{\"a}, Kalle and Abrahamsson, Pekka},
    year={2025},
    eprint={2512.11922},
    archivePrefix={arXiv},
    primaryClass={cs.SE},
    url={https://arxiv.org/abs/2512.11922}
}
```

<a id="f-src-references-bib"></a>

## `src/references.bib`

Ukuran 23,840 byte &middot; 557 baris &middot; sha256 `0c835b0db1fa` &middot; encoding `utf-8-sig`

```bibtex
%--------------------------------------------------------------------%
%
% Database referensi bibliografi
%
% author: [Kardynan Parulian]
%
%--------------------------------------------------------------------%
%
% Tambahkan entri referensi baru di sini. Sitasi di dokumen dengan
% \parencite{key}, \textcite{key}, atau perintah biblatex lainnya.
%
%--------------------------------------------------------------------%

% ====================================================================
% NLP DAN ARSITEKTUR TRANSFORMER
% ====================================================================

@inproceedings{vaswani2017attention,
    title={Attention is All You Need},
    author={Vaswani, Ashish and Shazeer, Noam and Parmar, Niki and Uszkoreit, Jakob and Jones, Llion and Gomez, Aidan N and Kaiser, {\L}ukasz and Polosukhin, Illia},
    booktitle={Advances in Neural Information Processing Systems (NeurIPS)},
    volume={30},
    pages={5998--6008},
    year={2017}
}

@inproceedings{devlin2019bert,
    title={{BERT}: Pre-training of Deep Bidirectional Transformers for Language Understanding},
    author={Devlin, Jacob and Chang, Ming-Wei and Lee, Kenton and Toutanova, Kristina},
    booktitle={Proceedings of the 2019 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies (NAACL-HLT)},
    pages={4171--4186},
    year={2019},
    address={Minneapolis, Minnesota},
    publisher={Association for Computational Linguistics},
    doi={10.18653/v1/N19-1423}
}

@article{rahali2023end,
    title={End-to-End Transformer-Based Models in Textual-Based NLP},
    author={Rahali, Abir and Akhloufi, Moulay A},
    journal={AI},
    volume={4},
    number={1},
    pages={54--110},
    year={2023},
    publisher={MDPI},
    doi={10.3390/ai4010004}
}

@book{jurafsky2025speech,
    title={Speech and Language Processing: An Introduction to Natural Language Processing, Computational Linguistics, and Speech Recognition with Language Models},
    author={Jurafsky, Daniel and Martin, James H.},
    edition={3rd},
    year={2025},
    note={Online manuscript released August 24, 2025},
    url={https://web.stanford.edu/~jurafsky/slp3/}
}

% ====================================================================
% EXTRACTIVE QUESTION ANSWERING DAN DATASET
% ====================================================================

@inproceedings{rajpurkar2016squad,
    title={{SQuAD}: 100,000+ Questions for Machine Comprehension of Text},
    author={Rajpurkar, Pranav and Zhang, Jian and Lopyrev, Konstantin and Liang, Percy},
    booktitle={Proceedings of the 2016 Conference on Empirical Methods in Natural Language Processing (EMNLP)},
    pages={2383--2392},
    year={2016},
    address={Austin, Texas},
    publisher={Association for Computational Linguistics},
    doi={10.18653/v1/D16-1264},
    url={https://aclanthology.org/D16-1264/},
}

@inproceedings{muis2020sequence,
    title={Sequence-to-Sequence Learning for Indonesian Automatic Question Generator},
    author={Muis, Ferdiant Joshua and Purwarianti, Ayu},
    booktitle={2020 7th International Conference on Advance Informatics: Concepts, Theory and Applications (ICAICTA)},
    pages={1--6},
    year={2020},
    organization={IEEE},
    doi={10.1109/ICAICTA49861.2020.9429032}
}

% ====================================================================
% INDOBERT DAN NLP BAHASA INDONESIA
% ====================================================================

@inproceedings{wilie2020indonlu,
    title={{IndoNLU}: Benchmark and Resources for Evaluating Indonesian Natural Language Understanding},
    author={Wilie, Bryan and Vincentio, Karissa and Winata, Genta Indra and Cahyawijaya, Samuel and Li, Xiaohong and Lim, Zhi Yuan and Soleman, Sidik and Mahendra, Rahmad and Fung, Pascale and Bahar, Syafri and Purwarianti, Ayu},
    booktitle={Proceedings of the 1st Conference of the Asia-Pacific Chapter of the Association for Computational Linguistics and the 10th International Joint Conference on Natural Language Processing (AACL-IJCNLP)},
    pages={843--857},
    year={2020},
    address={Suzhou, China},
    publisher={Association for Computational Linguistics},
    doi={10.18653/v1/2020.aacl-main.85},
    url={https://aclanthology.org/2020.aacl-main.85/}
}

@inproceedings{abdurrahman2023implementing,
    title={Implementing Quantization to Indonesian {BERT} Language Model},
    author={Abdurrahman, Muhammad Ayyub and Cahyawijaya, Samuel and Winata, Genta Indra and Purwarianti, Ayu},
    booktitle={2023 International Conference on Advanced Informatics: Concepts, Theory and Applications (ICAICTA)},
    pages={1--6},
    year={2023},
    publisher={IEEE},
    doi={10.1109/ICAICTA59291.2023.10390159}
}

@article{sanjaya2026quantization,
    title={Quantization Effects on Explainability in Indonesian Transformer-Based Sentiment Analysis},
    author={Sanjaya, Helena Aurelia and Collin, Marvel and Tjahyadi, Bertrand Geraldo and Suhartono, Derwin},
    journal={Procedia Computer Science},
    volume={289},
    pages={1084--1093},
    year={2026},
    publisher={Elsevier},
    doi={10.1016/j.procs.2026.08.328}
}

% ====================================================================
% KUANTISASI PADA BERT DAN TRANSFORMER
% ====================================================================

@inproceedings{zafrir2019q8bert,
    title={{Q8BERT}: Quantized 8Bit {BERT}},
    author={Zafrir, Ofir and Boudoukh, Guy and Izsak, Peter and Wasserblat, Moshe},
    booktitle={Proceedings of the 5th Workshop on Energy Efficient Machine Learning and Cognitive Computing (EMC2) at NeurIPS 2019},
    year={2019},
    doi={10.1109/EMC2-NIPS53020.2019.00016},
    eprint={1910.06188},
    archivePrefix={arXiv},
    primaryClass={cs.CL}
}

@inproceedings{wu2023understanding,
    title={Understanding {INT4} Quantization for Transformer Models: Latency Speedup, Composability, and Failure Cases},
    author={Wu, Xiaoxia and Li, Cheng and Aminabadi, Reza Yazdani and Yao, Zhewei and He, Yuxiong},
    booktitle={Proceedings of the 40th International Conference on Machine Learning (ICML)},
    series={Proceedings of Machine Learning Research},
    volume={202},
    year={2023},
    organization={PMLR},
    eprint={2301.12017},
    archivePrefix={arXiv},
    primaryClass={cs.CL}
}

@article{gholami2021survey,
    title={A Survey of Quantization Methods for Efficient Neural Network Inference},
    author={Gholami, Amir and Kim, Sehoon and Dong, Zhen and Yao, Zhewei and Mahoney, Michael W. and Keutzer, Kurt},
    journal={arXiv preprint arXiv:2103.13630},
    year={2021}
}

@inproceedings{bondarenko2021understanding,
    title={Understanding and Overcoming the Challenges of Efficient Transformer Quantization},
    author={Bondarenko, Yelysei and Nagel, Markus and Blankevoort, Tijmen},
    booktitle={Proceedings of the 2021 Conference on Empirical Methods in Natural Language Processing (EMNLP)},
    pages={7947--7969},
    year={2021},
    address={Online and Punta Cana, Dominican Republic},
    publisher={Association for Computational Linguistics},
    doi={10.18653/v1/2021.emnlp-main.627}
}

@article{armstrong2026flat,
    title={When Flat Minima Fail: Characterizing {INT4} Quantization Collapse After {FP32} Convergence},
    author={Armstrong, Marcus},
    journal={arXiv preprint arXiv:2604.15167},
    year={2026}
}

@article{hu2022empirical,
    title={Empirical Evaluation of Post-Training Quantization Methods for Language Tasks},
    author={Hu, Ting and Meinel, Christoph and Yang, Haojin},
    journal={arXiv preprint arXiv:2210.16621},
    year={2022},
    doi={10.48550/arXiv.2210.16621}
}

@article{han2026breaking,
    title={Where Post-Training Quantization Breaks Text Embedders: A Measured Map Across Four Embedder Families},
    author={Han, Hyojung},
    journal={arXiv preprint arXiv:2609.16391},
    year={2026},
    doi={10.48550/arXiv.2609.16391}
}

@article{ramaputra2026evaluating,
    title={Evaluating the Impact of Quantization on Indonesian Question Answering Performance in Large Language Models},
    author={Ramaputra, Vincent and Joddy, Setiawan},
    journal={Procedia Computer Science},
    volume={289},
    pages={709--718},
    year={2026},
    publisher={Elsevier},
    doi={10.1016/j.procs.2026.08.289}
}

% ====================================================================
% PENGUJIAN SIGNIFIKANSI STATISTIK
% ====================================================================

@inproceedings{dror2018hitchhiker,
    title={The Hitchhiker's Guide to Testing Statistical Significance in Natural Language Processing},
    author={Dror, Rotem and Baumer, Gili and Shlomov, Segev and Reichart, Roi},
    booktitle={Proceedings of the 56th Annual Meeting of the Association for Computational Linguistics (ACL), Volume 1: Long Papers},
    pages={1383--1392},
    year={2018},
    address={Melbourne, Australia},
    publisher={Association for Computational Linguistics},
    doi={10.18653/v1/P18-1128},
}

@inproceedings{bergkirkpatrick2012,
    title={An Empirical Investigation of Statistical Significance in {NLP}},
    author={Berg-Kirkpatrick, Taylor and Burkett, David and Klein, Dan},
    booktitle={Proceedings of the 2012 Joint Conference on Empirical Methods in Natural Language Processing and Computational Natural Language Learning (EMNLP-CoNLL)},
    pages={995--1005},
    year={2012},
    address={Jeju Island, Korea},
    publisher={Association for Computational Linguistics},
    url={https://aclanthology.org/D12-1091/}
}

@book{efron1993,
    title={An Introduction to the Bootstrap},
    author={Efron, Bradley and Tibshirani, Robert J.},
    publisher={Chapman \& Hall},
    year={1993},
    address={New York}
}

@article{holm1979,
    title={A Simple Sequentially Rejective Multiple Test Procedure},
    author={Holm, Sture},
    journal={Scandinavian Journal of Statistics},
    volume={6},
    number={2},
    pages={65--70},
    year={1979}
}

% ====================================================================
% ENTRI ARSIP: TIDAK DISITASI LAGI SEJAK TOPIK BERUBAH MENJADI
% EXTRACTIVE QUESTION ANSWERING. DIBIARKAN TERKOMENTARI AGAR DAPAT
% DIPULIHKAN BILA DIPERLUKAN.
% ====================================================================

% @article{gardazi2025bert,
%     title={{BERT} applications in natural language processing: a review},
%     author={Gardazi, Nadia Mushtaq and Daud, Ali and Malik, Muhammad Kamran and Bukhari, Amal and Alsahfi, Tariq and Alshemaimri, Bader},
%     journal={Artificial Intelligence Review},
%     volume={58},
%     pages={166},
%     year={2025},
%     publisher={Springer},
%
% }

% @inproceedings{guo2017calibration,
%     title={On Calibration of Modern Neural Networks},
%     author={Guo, Chuan and Pleiss, Geoff and Sun, Yu and Weinberger, Kilian Q.},
%     booktitle={Proceedings of the 34th International Conference on Machine Learning (ICML)},
%     series={Proceedings of Machine Learning Research},
%     volume={70},
%     pages={1321--1330},
%     year={2017},
%     organization={PMLR}
% }

% @article{dutta2024accuracy,
%     title={Accuracy is Not All You Need},
%     author={Dutta, Abhinav and Krishnan, Shankar and Kwatra, Nipun and Ramjee, Ramachandran},
%     journal={arXiv preprint arXiv:2407.09141},
%     year={2024},
%     url={https://arxiv.org/abs/2407.09141}
% }

% @inproceedings{daloisio2025compression,
%     title={On the Compression of Language Models for Code: An Empirical Study on {CodeBERT}},
%     author={D'Aloisio, G. and Traini, L. and Sarro, F. and Di Marco, A.},
%     booktitle={2025 IEEE International Conference on Software Analysis, Evolution and Reengineering (SANER)},
%     pages={12--23},
%     year={2025},
%     url={https://arxiv.org/abs/2412.13737}
% }

% @inproceedings{feng2020codebert,
%     title={{CodeBERT}: A Pre-Trained Model for Programming and Natural Languages},
%     author={Feng, Z. and Guo, D. and Tang, D. and Duan, N. and Feng, X. and Gong, M. and Shou, L. and Qin, B. and Liu, T. and Jiang, D. and Zhou, M.},
%     booktitle={Findings of the Association for Computational Linguistics: EMNLP 2020},
%     pages={1536--1547},
%     year={2020},
%     publisher={Association for Computational Linguistics},
%     url={https://aclanthology.org/2020.findings-emnlp.139}
% }

% @inproceedings{zhou2019devign,
%     title={{Devign}: Effective Vulnerability Identification by Learning Comprehensive Program Semantics via Graph Neural Networks},
%     author={Zhou, Y. and Liu, S. and Siow, J. and others},
%     booktitle={Advances in Neural Information Processing Systems},
%     pages={10197--10207},
%     year={2019}
% }

% @article{lu2021codexglue,
%     title={{CodeXGLUE}: A Machine Learning Benchmark Dataset for Code Understanding and Generation},
%     author={Lu, S. and Guo, D. and Ren, S. and others},
%     journal={CoRR},
%     volume={abs/2102.04664},
%     year={2021},
%     url={https://arxiv.org/abs/2102.04664}
% }

% @inproceedings{shi2022compressing,
%     title={Compressing Pre-trained Models of Code into 3 {MB}},
%     author={Shi, J. and Yang, Z. and Xu, B. and Kang, H. J. and Lo, D.},
%     booktitle={Proceedings of the 37th IEEE/ACM International Conference on Automated Software Engineering (ASE '22)},
%     year={2022},
%     doi={10.1145/3551349.3556964}
% }

% @inproceedings{shi2024greening,
%     title={Greening Large Language Models of Code},
%     author={Shi, J. and Yang, Z. and Kang, H. J. and Xu, B. and He, J. and Lo, D.},
%     booktitle={Proceedings of the 46th International Conference on Software Engineering: Software Engineering in Society (ICSE-SEIS '24)},
%     pages={142--153},
%     year={2024},
%     doi={10.1145/3639475.3640097}
% }

% @inproceedings{wei2023towards,
%     title={Towards Greener Yet Powerful Code Generation via Quantization: An Empirical Study},
%     author={Wei, X. and Gonugondla, S. K. and Wang, S. and Ahmad, W. and Ray, B. and Qian, H. and Li, X. and Kumar, V. and Wang, Z. and Tian, Y. and Sun, Q. and Athiwaratkun, B. and Shang, M. and Ramanathan, M. K. and Bhatia, P. and Xiang, B.},
%     booktitle={Proceedings of the 31st ACM Joint European Software Engineering Conference and Symposium on the Foundations of Software Engineering (ESEC/FSE '23)},
%     pages={224--236},
%     year={2023},
%     doi={10.1145/3611643.3616302}
% }

% @article{giagnorio2025quantizing,
%     title={Quantizing Large Language Models for Code Generation: A Differentiated Replication},
%     author={Giagnorio, A. and Bavota, G.},
%     journal={arXiv preprint arXiv:2503.07103},
%     year={2025},
%     url={https://arxiv.org/abs/2503.07103}
% }

% @article{chicco2020advantages,
%     title={The advantages of the Matthews correlation coefficient ({MCC}) over {F1} score and accuracy in binary classification evaluation},
%     author={Chicco, D. and Jurman, G.},
%     journal={BMC Genomics},
%     volume={21},
%     year={2020},
%     doi={10.1186/s12864-019-6413-7}
% }

% @inproceedings{moussa2022evaluation,
%     title={On the use of evaluation measures for defect prediction studies},
%     author={Moussa, R. and Sarro, F.},
%     booktitle={Proceedings of the 31st ACM SIGSOFT International Symposium on Software Testing and Analysis (ISSTA '22)},
%     year={2022},
%     doi={10.1145/3533767.3534405}
% }

% @article{elgendy2026responsible,
%     title={Responsible Vibe Coding: Architecture, Opportunities, and Research Agenda},
%     author={Elgendy, I. A. and Dwivedi, Y. K. and Al-Sharafi, M. A. and Hosny, M. and Helal, M. Y. and Crick, T. and Al-Busaidi, A. S.},
%     journal={Journal of Computer Information Systems},
%     pages={1--19},
%     year={2026}
% }

% @article{zhao2025vibecodingsafe,
%     title={Is Vibe Coding Safe? Benchmarking Vulnerability of Agent-Generated Code in Real-World Tasks},
%     author={Zhao, S. and Wang, D. and Zhang, K. and Luo, J. and Li, Z. and Li, L.},
%     journal={arXiv preprint arXiv:2512.03262},
%     year={2025},
%     url={https://arxiv.org/abs/2512.03262}
% }

% @misc{waseem2025vibecodingpracticeflow,
%     title={Vibe Coding in Practice: Flow, Technical Debt, and Guidelines for Sustainable Use},
%     author={Waseem, Muhammad and Ahmad, Aakash and Kemell, Kai-Kristian and Rasku, Jussi and Lahti, Sami and M{\"a}kel{\"a}, Kalle and Abrahamsson, Pekka},
%     year={2025},
%     eprint={2512.11922},
%     archivePrefix={arXiv},
%     primaryClass={cs.SE},
%     url={https://arxiv.org/abs/2512.11922}
% }

% ====================================================================
% KOMPRESI MODEL DAN KUANTISASI (TAMBAHAN)
% ====================================================================

@inproceedings{han2016deep,
    title={Deep Compression: Compressing Deep Neural Networks with Pruning, Trained Quantization and Huffman Coding},
    author={Han, Song and Mao, Huizi and Dally, William J.},
    booktitle={International Conference on Learning Representations (ICLR)},
    year={2016}
}

@misc{hinton2015distilling,
    title={Distilling the Knowledge in a Neural Network},
    author={Hinton, Geoffrey and Vinyals, Oriol and Dean, Jeff},
    year={2015},
    eprint={1503.02531},
    archivePrefix={arXiv},
    primaryClass={cs.LG}
}

@inproceedings{zadeh2022mokey,
    title={Mokey: Enabling Narrow Fixed-Point Inference for Out-of-the-Box Floating-Point Transformer Models},
    author={Zadeh, Ali Hadi and Mahmoud, Mostafa and Abdelhadi, Ameer and Moshovos, Andreas},
    booktitle={Proceedings of the 49th Annual International Symposium on Computer Architecture (ISCA)},
    pages={1--14},
    year={2022},
    doi={10.1145/3470496.3527438}
}

@article{suhendra2026matrik,
    title={Comparative Analysis of Indonesian Pre-trained {BERT} Models for the Extractive Question Answering Task on an Indonesian-Translated {SQuAD} Dataset},
    author={Suhendra, Fattah Al Ilmi and Darmayantie, Astie and Suhendra, Adang and Min, Pa Pa},
    journal={Matrik: Jurnal Manajemen, Teknik Informatika, dan Rekayasa Komputer},
    volume={25},
    number={2},
    pages={311--322},
    year={2026},
    doi={10.30812/matrik.v25i2.5847}
}

@article{mcnemar1947,
    title={Note on the Sampling Error of the Difference Between Correlated Proportions or Percentages},
    author={McNemar, Quinn},
    journal={Psychometrika},
    volume={12},
    number={2},
    pages={153--157},
    year={1947},
    doi={10.1007/BF02295996},
}

@inproceedings{lovenia2024seacrowd,
    title={{SEACrowd}: A Multilingual Multimodal Data Hub and Benchmark Suite for {Southeast Asian} Languages},
    author={Lovenia, Holy and Mahendra, Rahmad and Akbar, Salsabil Maulana and Miranda, Lester James V. and Santoso, Jennifer and others},
    booktitle={Proceedings of the 2024 Conference on Empirical Methods in Natural Language Processing (EMNLP)},
    year={2024},
    doi={10.18653/v1/2024.emnlp-main.296},
    url={https://arxiv.org/abs/2406.10118},
}

@inproceedings{rajpurkar2018squad,
    title={Know What You Don't Know: Unanswerable Questions for {SQuAD}},
    author={Rajpurkar, Pranav and Jia, Robin and Liang, Percy},
    booktitle={Proceedings of the 56th Annual Meeting of the Association for Computational Linguistics (ACL): System Demonstrations},
    pages={784--789},
    year={2018},
    doi={10.18653/v1/P18-2124}
}

@inproceedings{jacob2018quantization,
    title={Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference},
    author={Jacob, Benoit and Kligys, Skirmantas and Chen, Bo and Zhu, Menglong and Tang, Matthew and Howard, Andrew and Adam, Hartwig and Kalenichenko, Dmitry},
    booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
    pages={2704--2713},
    year={2018},
    doi={10.1109/CVPR.2018.00286}
}

% ====================================================================
% PENELITIAN TERDAHULU — BARIS TABEL 2.5 YANG BELUM PUNYA ENTRI
% ====================================================================

@inproceedings{bai2022towards,
    title={Towards Efficient Post-Training Quantization of Pre-Trained Language Models},
    author={Bai, Haoli and Hou, Lu and Shang, Lifeng and Jiang, Xin and King, Irwin and Lyu, Michael R.},
    booktitle={Advances in Neural Information Processing Systems 35 (NeurIPS)},
    pages={1405--1418},
    year={2022},
    doi={10.52202/068431-0103}
}

@inproceedings{guo2023olive,
    title={{OliVe}: Accelerating Large Language Models via Hardware-friendly Outlier-Victim Pair Quantization},
    author={Guo, Cong and Tang, Jiaming and Hu, Weiming and Leng, Jingwen and Zhang, Chen and Yang, Fan},
    booktitle={Proceedings of the 50th Annual International Symposium on Computer Architecture (ISCA)},
    pages={1--15},
    year={2023},
    doi={10.1145/3579371.3589038}
}

@inproceedings{wei2022outlier,
    title={Outlier Suppression: Pushing the Limit of Low-Bit Transformer Language Models},
    author={Wei, Xiuying and Zhang, Yunchen and Zhang, Xiangguo and Gong, Ruihao and Zhang, Shanghang and Zhang, Qi},
    booktitle={Advances in Neural Information Processing Systems 35 (NeurIPS)},
    pages={17402--17414},
    year={2022},
    doi={10.52202/068431-1265}
}

@inproceedings{kim2021ibert,
    title={{I-BERT}: Integer-only {BERT} Quantization},
    author={Kim, Sehoon and Gholami, Amir and Yao, Zhewei and Mahoney, Michael W. and Keutzer, Kurt},
    booktitle={Proceedings of the 38th International Conference on Machine Learning (ICML)},
    series={Proceedings of Machine Learning Research},
    volume={139},
    pages={5493--5504},
    year={2021},
    url={https://arxiv.org/abs/2101.01321}
}

% ====================================================================
% TAMBAHAN BAB II (revisi 25 Okt 2026)
% ====================================================================

@inproceedings{wang2022extractive,
    title={A Survey of Extractive Question Answering},
    author={Wang, Luqi and Zheng, Kaiwen and Qian, Liyin and Li, Sheng},
    booktitle={2022 International Conference on High Performance Big Data and Intelligent Systems (HDIS)},
    pages={147--153},
    year={2022},
    doi={10.1109/HDIS56859.2022.9991478}
}

@inproceedings{raikwar2024five,
    title={Five Shades of {BERT}: Assessing Performance in Question Answering through Comparative Analysis},
    author={Raikwar, Kanishka and Rajusth, Priyansh and Prabhu, Sania and Shrivastava, Navya},
    booktitle={2024 4th Asian Conference on Innovation in Technology (ASIANCON)},
    pages={1--6},
    year={2024},
    doi={10.1109/ASIANCON62057.2024.10837814}
}

@article{edwards1948continuity,
    title={Note on the ``Correction for Continuity'' in Testing the Significance of the Difference between Correlated Proportions},
    author={Edwards, Allen L.},
    journal={Psychometrika},
    volume={13},
    number={3},
    pages={185--187},
    year={1948},
    doi={10.1007/BF02289261}
}

@article{fagerland2013mcnemar,
    title={The {McNemar} Test for Binary Matched-Pairs Data: Mid-$p$ and Asymptotic are Better than Exact Conditional},
    author={Fagerland, Morten W. and Lydersen, Stian and Laake, Petter},
    journal={BMC Medical Research Methodology},
    volume={13},
    number={1},
    pages={91},
    year={2013},
    doi={10.1186/1471-2288-13-91}
}
```

---

# 6. Skrip Pandoc / DOCX

<a id="f-docs-pandoc-apa-csl"></a>

## `docs/pandoc/apa.csl`

Ukuran 85,817 byte &middot; 2,278 baris &middot; sha256 `3917def5fc95` &middot; encoding `utf-8-sig`

```xml
<?xml version="1.0" encoding="utf-8"?>
<style xmlns="http://purl.org/net/xbiblio/csl" class="in-text" demote-non-dropping-particle="never" initialize-with=". " names-delimiter=", " page-range-format="expanded" version="1.0">
  <!-- This file was generated by the Style Variant Builder <https://github.com/citation-style-language/style-variant-builder>. To contribute changes, modify the template and regenerate variants. -->
  <info>
    <title>APA Style 7th edition</title>
    <title-short>Publication Manual of the American Psychological Association, with Bluebook</title-short>
    <id>http://www.zotero.org/styles/apa</id>
    <link href="http://www.zotero.org/styles/apa" rel="self"/>
    <link href="http://www.zotero.org/styles/apa-6th-edition" rel="template"/>
    <link href="https://apastyle.apa.org/style-grammar-guidelines/references" rel="documentation"/>
    <link href="https://zotero.org/groups/2205533/collections/MR2N872S" rel="documentation"/>
    <author>
      <name>Brenton M. Wiernik</name>
      <email>zotero@wiernik.org</email>
      <uri>https://orcid.org/0000-0001-9560-6336</uri>
    </author>
    <author>
      <name>Andrew Dunning</name>
      <uri>https://orcid.org/0000-0003-0464-5036</uri>
    </author>
    <contributor>
      <name>Jay Pfaffman</name>
      <email>jay@literatecomputing.com</email>
    </contributor>
    <category citation-format="author-date"/>
    <category field="anthropology"/>
    <category field="communications"/>
    <category field="generic-base"/>
    <category field="law"/>
    <category field="medicine"/>
    <category field="psychology"/>
    <category field="social_science"/>
    <category field="sociology"/>
    <summary>Author-date system of the Publication Manual of the American Psychological Association (2020)</summary>
    <updated>2026-02-07T00:00:00+00:00</updated>
    <rights license="http://creativecommons.org/licenses/by-sa/3.0/">This work is licensed under a Creative Commons Attribution-ShareAlike 3.0 License</rights>
  </info>
  <locale xml:lang="en">
    <terms>
      <term name="ad"> C.E.</term>
      <term name="bc"> B.C.E.</term>
      <term form="short" name="circa">ca.</term>
      <term name="guest">
        <single>guest expert</single>
        <multiple>guest experts</multiple>
      </term>
      <term form="short" name="illustrator">illus.</term>
      <term form="short" name="interviewer">
        <single>interviewer</single>
        <multiple>interviewers</multiple>
      </term>
      <term form="short" name="legislation">Pub. L.</term>
      <term name="manuscript">unpublished manuscript</term>
      <term form="verb" name="performer">recorded by</term>
      <term name="post">online post</term>
      <term name="review-of">review of the</term>
      <term form="short" name="review-of">review of</term>
      <term name="software">computer software</term>
      <term name="dataset">data set</term>
      <term form="short" name="supplement">
        <single>suppl.</single>
        <multiple>suppls.</multiple>
      </term>
    </terms>
  </locale>
  <locale xml:lang="da">
    <terms>
      <term name="et-al">et al.</term>
    </terms>
  </locale>
  <locale xml:lang="de">
    <terms>
      <term name="et-al">et al.</term>
    </terms>
  </locale>
  <locale xml:lang="es">
    <terms>
      <term name="from">de</term>
    </terms>
  </locale>
  <locale xml:lang="fr">
    <terms>
      <term form="short" name="editor">
        <single>éd.</single>
        <multiple>éds.</multiple>
      </term>
    </terms>
  </locale>
  <locale xml:lang="nb">
    <terms>
      <term name="et-al">et al.</term>
    </terms>
  </locale>
  <locale xml:lang="nl">
    <terms>
      <term name="et-al">et al.</term>
    </terms>
  </locale>
  <locale xml:lang="nn">
    <terms>
      <term name="et-al">et al.</term>
    </terms>
  </locale>
  <locale xml:lang="pl">
    <terms>
      <term name="et-al">i in.</term>
    </terms>
  </locale>
  <locale xml:lang="ro">
    <terms>
      <term name="et-al">et al.</term>
    </terms>
  </locale>
  <!-- Contents:

       APA uses four main reference elements:

        1. Author (APA 9.7-12)
        2. Date (APA 9.13-17)
        3. Title and descriptions (APA 9.18-22)
            3.1. Title (APA 9.18)
            3.2. Identifier (in parentheses) (APA 9.19)
            3.3. Description [in square brackets] (APA 9.21-22)
        4. Source (APA 9.23-37)
            4.1. Serial sources (APA 9.25-27)
            4.2. Monographic sources (APA 9.28)
            4.3. Publisher sources (APA 9.29)
            4.4. Database and archive sources (APA 9.30)
            4.5. Works with specific locations (APA 9.31)
            4.6. Social media and website sources (APA 9.32-33)
            4.7. DOI or URL (APA 9.34-36)

       A note on the source may follow the main reference elements:

        5. Publication history (APA 9.39-41)

       APA also provides parallel rules for legal references following The Bluebook: A Uniform System of Citation (chap. 11):

        6. Legal references
  -->
  <!-- APA categorizes all sources as serial (APA 9.25-27) or monographic (APA 9.28).

       Serial
       : article-journal article-magazine article-newspaper periodical post-weblog review review-book

       Serial or Monographic
       : interview paper-conference

         Monographic with any of `collection-editor compiler editor editorial-director`.
         A serial `paper-conference` is unpublished if it lacks any of `issue page supplement-number volume`.

       Monographic
       : article book broadcast chapter classic collection dataset document entry entry-dictionary entry-encyclopedia event figure graphic manuscript map motion_picture musical_score pamphlet patent performance personal_communication post report software song speech standard thesis webpage

       Legal
       : bill hearing legal_case legislation regulation treaty
  -->
  <!-- Equivalencies:

       `classic` == `book`
       `document` == `report` (but give full date)
       `standard` == `report`
       `performance` == `speech`
       `event` == `speech`
  -->
  <!-- Role equivalencies:

       `compiler` == `editor`
       `organizer`, `curator` == `chair`
       `script-writer` == `director`
       `producer` == `director` (but don't print both)
       `guest`, `host` == `director`
       `series-creator`, `executive-producer` == `editor`
  -->
  <!-- Reviews are detected if an item has type `review` or `review-book` or if it has any of the variables `reviewed-title`, `reviewed-author`, or `reviewed-genre`. For the latter case, reviews are commonly stored as types `article-journal`, `article-magazine`, `article-newspaper`, `post-weblog`, or `webpage`. -->
  <!-- Indigeneous knowledge: Assume the item is stored as `document` or `speech` and that Nation/Community, treaty territory, where the Elder lives, and topic are all stored in `title`. Cf. <https://libguides.norquest.ca/c.php?g=314831&p=5188823>. If the item is stored as `interview`, assume that Nation/Community, treaty territory, and topic are stored in `title`. 'Oral teaching' or similar is stored in `archive`, and where the Elder lives is stored in `archive-place`. -->
  <!-- Variable labels -->
  <macro name="label-chapter-number">
    <group delimiter=" ">
      <choose>
        <if is-numeric="chapter-number" type="song">
          <text text-case="capitalize-first" value="track"/>
        </if>
        <else-if is-numeric="chapter-number">
          <label text-case="capitalize-first" variable="chapter-number"/>
        </else-if>
      </choose>
      <text variable="chapter-number"/>
    </group>
  </macro>
  <macro name="label-edition">
    <group delimiter=" ">
      <choose>
        <if is-numeric="edition">
          <number form="ordinal" variable="edition"/>
          <label form="short" variable="edition"/>
        </if>
        <else>
          <text variable="edition"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="label-issue">
    <group delimiter=" ">
      <label text-case="capitalize-first" variable="issue"/>
      <text variable="issue"/>
    </group>
  </macro>
  <macro name="label-locator">
    <!-- Abbreviate page and paragraph; leave other locator labels in long form (APA 8.13) -->
    <group delimiter=" ">
      <choose>
        <if locator="page">
          <label form="short" variable="locator"/>
        </if>
        <else-if match="any" type="bill hearing legal_case legislation regulation treaty">
          <!-- Bluebook-style labels for legal types -->
          <choose>
            <if locator="chapter paragraph section" match="any">
              <label form="symbol" variable="locator"/>
            </if>
            <else>
              <label text-case="capitalize-first" variable="locator"/>
            </else>
          </choose>
        </else-if>
        <else-if locator="paragraph">
          <label form="short" variable="locator"/>
        </else-if>
        <else-if is-numeric="locator">
          <label text-case="capitalize-first" variable="locator"/>
        </else-if>
        <!-- a non-numeric canonical reference is identified by its formatting and does not need a label, similar to a timestamp -->
        <else-if locator="chapter line verse" match="any"/>
        <else>
          <label text-case="capitalize-first" variable="locator"/>
        </else>
      </choose>
      <text variable="locator"/>
    </group>
  </macro>
  <macro name="label-number">
    <group delimiter=" ">
      <choose>
        <if type="standard"/>
        <else-if is-numeric="number" match="any" type="legislation patent regulation">
          <label form="short" text-case="capitalize-first" variable="number"/>
        </else-if>
      </choose>
      <text text-case="capitalize-first" variable="number"/>
    </group>
  </macro>
  <macro name="label-number-capitalized">
    <!-- alias for cross-compatibility of Bluebook macros -->
    <text macro="label-number"/>
  </macro>
  <macro name="label-number-article">
    <!-- APA example 6: Journal article with article number or eLocator -->
    <group delimiter=" ">
      <text term="article-locator" text-case="capitalize-first"/>
      <text variable="number"/>
    </group>
  </macro>
  <macro name="label-number-of-volumes">
    <group delimiter=" ">
      <choose>
        <if is-numeric="number-of-volumes">
          <label form="short" text-case="capitalize-first" variable="number-of-volumes"/>
          <group>
            <text prefix="1" term="page-range-delimiter"/>
            <number variable="number-of-volumes"/>
          </group>
        </if>
        <else>
          <text variable="number-of-volumes"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="label-page">
    <group delimiter=" ">
      <label form="short" variable="page"/>
      <text variable="page"/>
    </group>
  </macro>
  <macro name="label-part-number">
    <group delimiter=" ">
      <choose>
        <if is-numeric="part-number">
          <!-- TODO: Replace with `part-number` label when CSL provides one -->
          <text form="short" term="part" text-case="capitalize-first"/>
        </if>
      </choose>
      <text text-case="capitalize-first" variable="part-number"/>
    </group>
  </macro>
  <macro name="label-section-symbol">
    <group delimiter=" ">
      <label form="symbol" variable="section"/>
      <text variable="section"/>
    </group>
  </macro>
  <macro name="label-supplement-number">
    <group delimiter=" ">
      <choose>
        <if is-numeric="supplement-number">
          <!-- TODO: Replace with `supplement-number` label when CSL provides one -->
          <text form="short" term="supplement" text-case="capitalize-first"/>
        </if>
      </choose>
      <text text-case="capitalize-first" variable="supplement-number"/>
    </group>
  </macro>
  <macro name="label-version">
    <group delimiter=" ">
      <label text-case="capitalize-first" variable="version"/>
      <text variable="version"/>
    </group>
  </macro>
  <macro name="label-volume">
    <group delimiter=" ">
      <choose>
        <if is-numeric="volume">
          <label form="short" text-case="capitalize-first" variable="volume"/>
        </if>
      </choose>
      <text text-case="capitalize-first" variable="volume"/>
    </group>
  </macro>
  <!-- 1. Author (APA 9.7-12) -->
  <macro name="author">
    <!-- Substitutes for missing authors: order prioritizes primary creators (e.g., composer, author) over secondary roles (e.g., editor, curator), with title as the final fallback. -->
    <names variable="composer">
      <name and="symbol" delimiter-precedes-last="always" name-as-sort-order="all"/>
      <label form="short" prefix=" (" suffix=")" text-case="title"/>
      <substitute>
        <names variable="author"/>
        <!-- `narrator` only cited in `identifier-contributors` -->
        <names variable="illustrator"/>
        <choose>
          <if type="broadcast">
            <names variable="script-writer director">
              <!-- Actors/performers and producers [not executive] not cited in APA style. -->
              <name and="symbol" delimiter-precedes-last="always" name-as-sort-order="all"/>
              <label prefix=" (" suffix=")" text-case="title"/>
            </names>
          </if>
        </choose>
        <names variable="director">
          <!-- For non-broadcast items, APA only cites directors and not writers. -->
          <name and="symbol" delimiter-precedes-last="always" name-as-sort-order="all"/>
          <label prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names variable="guest host">
          <!-- TODO: Collapse variables when that becomes available. -->
          <name and="symbol" delimiter-precedes-last="always" name-as-sort-order="all"/>
          <label prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names variable="producer">
          <!-- Producers not cited if there is a writer/director, but use if they are the principal creator. -->
          <name and="symbol" delimiter-precedes-last="always" name-as-sort-order="all"/>
          <label prefix=" (" suffix=")" text-case="title"/>
        </names>
        <choose>
          <if match="any" type="entry-dictionary entry-encyclopedia">
            <text variable="publisher"/>
          </if>
        </choose>
        <choose>
          <if match="none" variable="container-title"/>
          <else-if match="any" type="book classic entry entry-dictionary entry-encyclopedia">
            <!-- Items with a monographic `container-title` substitute their title and identifier, but leave description after `container-title`. This mimics the `source-monographic` macro. -->
            <text macro="author-title-substitute"/>
          </else-if>
        </choose>
        <names variable="executive-producer">
          <name and="symbol" delimiter-precedes-last="always" name-as-sort-order="all"/>
          <label prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names variable="series-creator">
          <name and="symbol" delimiter-precedes-last="always" name-as-sort-order="all"/>
          <label prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names variable="editor-translator"/>
        <!-- `translator` is not cited as a primary creator (only as Ed. & Trans.). -->
        <names variable="editor"/>
        <names variable="editorial-director"/>
        <names variable="compiler">
          <name and="symbol" delimiter-precedes-last="always" name-as-sort-order="all"/>
          <label prefix=" (" suffix=")" text-case="title"/>
        </names>
        <choose>
          <if match="any" type="event performance speech">
            <names variable="chair">
              <name and="symbol" delimiter-precedes-last="always" name-as-sort-order="all"/>
              <label prefix=" (" suffix=")" text-case="title"/>
            </names>
            <names variable="organizer">
              <name and="symbol" delimiter-precedes-last="always" name-as-sort-order="all"/>
              <label prefix=" (" suffix=")" text-case="title"/>
            </names>
          </if>
        </choose>
        <names variable="curator">
          <name and="symbol" delimiter-precedes-last="always" name-as-sort-order="all"/>
          <label prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names variable="collection-editor"/>
        <choose>
          <if match="any" type="software webpage">
            <!-- `software` (APA 10.10) and `webpage` (APA 10.16) can be cited under "name of group": likely in `publisher` if no `author` -->
            <text variable="publisher"/>
          </if>
          <else-if type="standard">
            <text variable="authority"/>
          </else-if>
        </choose>
        <text macro="author-title-substitute"/>
      </substitute>
    </names>
  </macro>
  <macro name="author-and-contributors">
    <group delimiter=" ">
      <text macro="author"/>
      <choose>
        <!-- add nonprimary authors equivalent to those appearing "on a book cover"; do not modify the in-text citation (APA 9.8) -->
        <if match="none" variable="author compiler composer editor editor-translator illustrator"/>
        <else-if match="any" type="book musical_score pamphlet report standard">
          <names prefix="(" suffix=")" variable="contributor">
            <label form="verb" suffix=" "/>
            <name and="symbol" delimiter-precedes-last="always" name-as-sort-order="all"/>
          </names>
        </else-if>
      </choose>
    </group>
  </macro>
  <macro name="author-short">
    <choose>
      <if match="any" type="bill hearing legal_case legislation regulation treaty">
        <text macro="title-and-descriptions-short"/>
      </if>
      <else-if match="any" type="interview personal_communication">
        <choose>
          <!-- These variables indicate that the letter is retrievable by the reader. If not, use the APA in-text-only personal communication format. -->
          <if match="any" variable="archive archive-place container-title DOI number publisher references URL">
            <names variable="author">
              <name and="symbol" form="short"/>
              <substitute>
                <text macro="title-and-descriptions-short"/>
              </substitute>
            </names>
          </if>
          <else>
            <group delimiter=", ">
              <names variable="author">
                <name and="symbol"/>
                <substitute>
                  <text macro="title-and-descriptions-short"/>
                </substitute>
              </names>
              <text term="personal-communication"/>
            </group>
          </else>
        </choose>
      </else-if>
      <else>
        <names variable="composer">
          <name and="symbol" form="short"/>
          <substitute>
            <names variable="author"/>
            <names variable="illustrator"/>
            <choose>
              <if type="broadcast">
                <!-- TODO: Collapse variables when that becomes available. -->
                <!-- Ideally combine as `script-writer director` -->
                <names variable="script-writer"/>
              </if>
            </choose>
            <names variable="director"/>
            <!-- TODO: Collapse variables when that becomes available. -->
            <names variable="guest host"/>
            <names variable="producer"/>
            <choose>
              <if match="any" type="entry-dictionary entry-encyclopedia">
                <text variable="publisher"/>
              </if>
            </choose>
            <choose>
              <if match="none" variable="container-title"/>
              <else-if match="any" type="book classic entry entry-dictionary entry-encyclopedia">
                <text macro="title-and-descriptions-short"/>
              </else-if>
            </choose>
            <names variable="executive-producer"/>
            <names variable="series-creator"/>
            <names variable="editor"/>
            <names variable="editorial-director"/>
            <names variable="compiler"/>
            <choose>
              <if match="any" type="event performance speech">
                <names variable="chair"/>
                <names variable="organizer"/>
              </if>
            </choose>
            <names variable="curator"/>
            <names variable="collection-editor"/>
            <choose>
              <if match="any" type="software webpage">
                <!-- `software` (APA 10.10) and `webpage` (APA 10.16) can be cited under "name of group": likely in `publisher` if no `author` -->
                <text form="short" variable="publisher"/>
              </if>
              <else-if type="standard">
                <text form="short" variable="authority"/>
              </else-if>
            </choose>
            <text macro="title-and-descriptions-short"/>
          </substitute>
        </names>
      </else>
    </choose>
  </macro>
  <macro name="author-sort">
    <choose>
      <if match="any" type="bill hearing legal_case legislation regulation treaty">
        <text macro="legal-title"/>
      </if>
      <else>
        <text macro="author"/>
      </else>
    </choose>
  </macro>
  <!-- Author elements -->
  <macro name="author-title-substitute">
    <choose>
      <if match="any" type="review review-book" variable="reviewed-author reviewed-genre reviewed-title">
        <!-- `title` is only the review title if there is a separate `reviewed-genre` or `reviewed-title`; otherwise, it is the title of the reviewed work, printed in the description -->
        <choose>
          <if variable="reviewed-genre title">
            <text macro="title"/>
          </if>
          <else-if variable="reviewed-title title">
            <text macro="title"/>
          </else-if>
          <else>
            <text macro="title-and-descriptions"/>
          </else>
        </choose>
      </if>
      <else-if variable="title">
        <!-- If an item has a `title`, substitute missing author with title and identifier, but leave description after the date (in the title position). -->
        <group delimiter=" ">
          <text macro="title"/>
          <text macro="identifier"/>
        </group>
      </else-if>
      <else>
        <!-- If an item has no `title`, substitute with descriptions. -->
        <text macro="title-and-descriptions"/>
      </else>
    </choose>
  </macro>
  <!-- 2. Date (APA 9.13-17) -->
  <macro name="date">
    <!-- Full dates included for ephemeral sources (e.g. broadcasts, interviews) to provide maximum specificity, while books use year only. -->
    <group delimiter="-" prefix="(" suffix=")">
      <choose>
        <if variable="issued">
          <group delimiter=", ">
            <group>
              <text macro="date-issued-year"/>
              <text variable="year-suffix"/>
            </group>
            <choose>
              <if match="any" type="article-magazine article-newspaper broadcast collection document event motion_picture pamphlet performance personal_communication post post-weblog song speech webpage">
                <!-- Many video and audio examples in manual give full dates. Err on the side of too much information. -->
                <text macro="date-issued-month-day"/>
              </if>
              <!-- Only show the month and day for an unpublished `interview` or `paper-conference` -->
              <else-if match="any" variable="collection-editor compiler editor editorial-director issue page supplement-number volume"/>
              <else-if match="any" type="interview paper-conference">
                <text macro="date-issued-month-day"/>
              </else-if>
              <!-- Only year: article article-journal book chapter classic entry entry-dictionary entry-encyclopedia dataset figure graphic manuscript map musical_score paper-conference[published] patent periodical report review review-book software standard thesis -->
            </choose>
          </group>
        </if>
        <else-if variable="status">
          <!-- Print the status variable rather than use generic CSL terms (`in press`, etc.) -->
          <text text-case="lowercase" variable="status"/>
          <text variable="year-suffix"/>
        </else-if>
        <else>
          <text form="short" term="no date"/>
          <text variable="year-suffix"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="date-short">
    <group delimiter="-">
      <choose>
        <if variable="issued">
          <group delimiter="/">
            <text macro="date-original-year"/>
            <group>
              <choose>
                <if match="any" variable="archive archive-place container-title DOI number publisher references URL">
                  <text macro="date-issued-year"/>
                </if>
                <else-if match="any" type="interview personal_communication">
                  <!-- use the in-text-only format for inaccessible personal communications -->
                  <text macro="date-issued-full"/>
                </else-if>
                <else>
                  <text macro="date-issued-year"/>
                </else>
              </choose>
              <text variable="year-suffix"/>
            </group>
          </group>
        </if>
        <else-if variable="status">
          <!-- Print the status variable rather than use generic CSL terms (`in press`, etc.) -->
          <text text-case="lowercase" variable="status"/>
          <text variable="year-suffix"/>
        </else-if>
        <else>
          <text form="short" term="no date"/>
          <text variable="year-suffix"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="date-sort">
    <!-- Sort items by issue date as printed -->
    <choose>
      <if match="any" type="article article-journal book chapter entry entry-dictionary entry-encyclopedia dataset figure graphic manuscript map musical_score patent report review review-book thesis">
        <date date-parts="year" form="numeric" variable="issued"/>
      </if>
      <else-if type="paper-conference">
        <!-- Determine whether published and serial or monographic -->
        <choose>
          <if match="any" variable="collection-editor compiler editor editorial-director issue page supplement-number volume">
            <date date-parts="year" form="numeric" variable="issued"/>
          </if>
          <else>
            <text macro="date-issued-leading-zeros"/>
          </else>
        </choose>
      </else-if>
      <else>
        <text macro="date-issued-leading-zeros"/>
      </else>
    </choose>
  </macro>
  <macro name="date-sort-group">
    <!-- Sorts items with and without dates:

          1. `no date` items (= 0)
          2. items with dates (= 1)
          3. items with `status` (forthcoming, in press, etc.) (= 2) -->
    <choose>
      <if variable="issued">
        <text value="1"/>
      </if>
      <else-if variable="status">
        <text value="2"/>
      </else-if>
      <else>
        <text value="0"/>
      </else>
    </choose>
  </macro>
  <!-- Date elements -->
  <macro name="date-event-full">
    <group delimiter=" ">
      <choose>
        <if is-uncertain-date="event-date">
          <text form="short" term="circa"/>
        </if>
      </choose>
      <date form="text" variable="event-date"/>
    </group>
  </macro>
  <macro name="date-issued-full">
    <group delimiter=" ">
      <choose>
        <if is-uncertain-date="issued">
          <text form="short" term="circa"/>
        </if>
      </choose>
      <date form="text" variable="issued"/>
    </group>
  </macro>
  <macro name="date-issued-leading-zeros">
    <date delimiter="-" variable="issued">
      <date-part name="year"/>
      <date-part form="numeric-leading-zeros" name="month"/>
      <date-part form="numeric-leading-zeros" name="day"/>
    </date>
  </macro>
  <macro name="date-issued-month-day">
    <date variable="issued">
      <date-part name="month"/>
      <date-part name="day" prefix=" "/>
    </date>
  </macro>
  <macro name="date-issued-year">
    <group delimiter=" ">
      <choose>
        <if is-uncertain-date="issued">
          <text form="short" term="circa"/>
        </if>
      </choose>
      <date date-parts="year" form="numeric" variable="issued"/>
    </group>
  </macro>
  <macro name="date-original-year">
    <group delimiter=" ">
      <choose>
        <if is-uncertain-date="original-date">
          <text form="short" term="circa"/>
        </if>
      </choose>
      <date date-parts="year" form="numeric" variable="original-date"/>
    </group>
  </macro>
  <!-- 3. Title and descriptions (APA 9.18-22) -->
  <macro name="title-and-descriptions">
    <group delimiter=" ">
      <choose>
        <if variable="title">
          <text macro="title"/>
          <text macro="identifier"/>
          <text macro="description"/>
        </if>
        <else-if match="any" type="bill report">
          <!-- Bills, resolutions, and congressional reports substitute bill number if no title. -->
          <!-- Congressional reports are indistinguishable from other reports -->
          <text macro="identifier-number"/>
          <text macro="description"/>
          <text macro="identifier"/>
        </else-if>
        <else>
          <text macro="description"/>
          <text macro="identifier"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="title-and-descriptions-short">
    <choose>
      <if variable="title">
        <text macro="title-short"/>
      </if>
      <else-if match="any" type="bill report">
        <!-- Bills, resolutions, and congressional reports substitute bill number if no title. -->
        <text macro="legal-identifier-bill-report"/>
      </else-if>
      <else>
        <text macro="description-short"/>
      </else>
    </choose>
  </macro>
  <!-- 3.1. Title (APA 9.18) -->
  <macro name="title">
    <choose>
      <if match="any" type="post webpage">
        <!-- part number/title always at the analytic level -->
        <text font-style="italic" macro="title-and-part-filter-review"/>
      </if>
      <!-- Other types are italicized based on presence of `container-title`. Assume that `review` and `review-book` are published either in a serial or on a webpage (APA example 69) -->
      <else-if match="any" type="article-journal article-magazine article-newspaper periodical post-weblog review review-book">
        <text macro="title-serial"/>
      </else-if>
      <else-if match="any" variable="collection-editor compiler editor editorial-director">
        <text macro="title-monographic"/>
      </else-if>
      <else-if match="any" type="interview paper-conference">
        <text macro="title-serial"/>
      </else-if>
      <else>
        <text macro="title-monographic"/>
      </else>
    </choose>
  </macro>
  <macro name="title-short">
    <choose>
      <if match="any" type="review review-book" variable="reviewed-author reviewed-genre reviewed-title">
        <!-- `title` is only the review title if there is a separate `reviewed-genre` or `reviewed-title`; otherwise, it is the title of the reviewed work, printed in the description -->
        <choose>
          <if variable="reviewed-genre title">
            <!-- Quotes, title case -->
            <text form="short" quotes="true" text-case="title" variable="title"/>
          </if>
          <else-if variable="reviewed-title title">
            <!-- Quotes, title case -->
            <text form="short" quotes="true" text-case="title" variable="title"/>
          </else-if>
          <else>
            <text macro="description-short"/>
          </else>
        </choose>
      </if>
      <else-if match="any" type="bill legislation regulation report treaty">
        <!-- No italics or quotes, title case -->
        <text form="short" text-case="title" variable="title"/>
      </else-if>
      <else-if match="any" type="legal_case post">
        <!-- Italicized, sentence case -->
        <text font-style="italic" form="short" variable="title"/>
      </else-if>
      <else-if match="any" type="hearing webpage">
        <!-- Italicized, title case (regardless of `container-title`) -->
        <text font-style="italic" form="short" text-case="title" variable="title"/>
      </else-if>
      <!-- Other types are formatted based on presence of `container-title`, as in title macro -->
      <else-if variable="container-title">
        <!-- Quotes, title case -->
        <text form="short" quotes="true" text-case="title" variable="title"/>
      </else-if>
      <else>
        <!-- Italicized, title case (default) -->
        <text font-style="italic" form="short" text-case="title" variable="title"/>
      </else>
    </choose>
  </macro>
  <!-- Title elements -->
  <macro name="title-and-part-filter-review">
    <choose>
      <if match="any" type="review review-book" variable="reviewed-author reviewed-genre reviewed-title">
        <!-- If a review has no `reviewed-genre` or `reviewed-title`, assume that `title` contains the title of the reviewed work; the description provides it. -->
        <choose>
          <if variable="reviewed-genre title">
            <text macro="title-and-part-title"/>
          </if>
          <else-if variable="reviewed-title title">
            <text macro="title-and-part-title"/>
          </else-if>
        </choose>
      </if>
      <else>
        <text macro="title-and-part-title"/>
      </else>
    </choose>
  </macro>
  <macro name="title-and-part-title">
    <group delimiter=": ">
      <text variable="title"/>
      <text macro="title-part"/>
    </group>
  </macro>
  <macro name="title-and-volume-title">
    <group delimiter=": ">
      <text variable="title"/>
      <text macro="title-volume"/>
    </group>
  </macro>
  <macro name="title-monographic">
    <!-- For monographic items, assume `part-number` and `part-title` refer to the book/volume. -->
    <choose>
      <if variable="container-title">
        <text variable="title"/>
      </if>
      <else>
        <!-- For monographic items without `container-title` and with `volume-title`, append `volume-title` to `title` (APA example 30) -->
        <text font-style="italic" macro="title-and-volume-title"/>
      </else>
    </choose>
  </macro>
  <macro name="title-part">
    <choose>
      <if variable="part-title">
        <group delimiter=". ">
          <text macro="label-part-number"/>
          <text text-case="capitalize-first" variable="part-title"/>
        </group>
      </if>
      <else-if is-numeric="part-number"/>
      <else>
        <text macro="label-part-number"/>
      </else>
    </choose>
  </macro>
  <macro name="title-serial">
    <!-- For serials, assume that `part-number` and `part-title` refer to the article and append to `title` -->
    <choose>
      <if variable="container-title">
        <text macro="title-and-part-filter-review"/>
      </if>
      <else>
        <!-- for serial items without `container-title`, don't append `volume-title` to `title` -->
        <text font-style="italic" macro="title-and-part-filter-review"/>
      </else>
    </choose>
  </macro>
  <macro name="title-volume">
    <group delimiter=", ">
      <choose>
        <!-- Assume that `part-number` and `part-title` of monographic items refer to the source book/volume -->
        <if variable="volume-title">
          <group delimiter=": ">
            <group delimiter=". ">
              <text macro="label-volume"/>
              <text variable="volume-title"/>
            </group>
            <text macro="title-part"/>
          </group>
        </if>
        <else-if variable="part-title">
          <text macro="label-volume"/>
          <text macro="title-part"/>
        </else-if>
        <!-- if there is no `part-title` or `volume title`, `part-number` and `volume` appear in `identifier` if numeric -->
        <else-if is-numeric="part-number volume"/>
        <else-if is-numeric="part-number" variable="volume">
          <text macro="label-volume"/>
        </else-if>
        <else-if is-numeric="volume" variable="part-number">
          <text macro="label-part-number"/>
        </else-if>
        <else-if is-numeric="part-number"/>
        <else-if is-numeric="volume"/>
        <else>
          <text macro="label-volume"/>
          <text macro="label-part-number"/>
        </else>
      </choose>
    </group>
  </macro>
  <!-- 3.2. Identifier (in parentheses) (APA 9.19) -->
  <macro name="identifier">
    <!-- (Secondary contributors; Database location; Genre no. 123; Report Series 123, Version, Edition, Volume, Page) -->
    <group delimiter="; " prefix="(" suffix=")">
      <choose>
        <if type="patent">
          <text macro="identifier-patent"/>
        </if>
        <else-if match="any" type="post webpage">
          <!-- print `container-title` on `post` or `webpage` in the same way as `publisher` -->
          <text macro="identifier-contributors"/>
          <text macro="identifier-number"/>
          <text macro="identifier-monographic"/>
        </else-if>
        <else-if type="report" variable="container-title">
          <!-- If the report is a chapter in a larger report, then most identifying information is printed in the source. -->
          <text macro="identifier-contributors"/>
        </else-if>
        <else-if type="report" variable="title">
          <text macro="identifier-contributors"/>
          <text macro="identifier-number"/>
          <text macro="identifier-monographic"/>
        </else-if>
        <else-if type="report">
          <!-- If there is no `title`, then `genre` and `number` are already printed as the title. -->
          <text macro="identifier-contributors"/>
          <text macro="identifier-monographic"/>
        </else-if>
        <else-if variable="container-title">
          <choose>
            <if match="none" variable="genre title">
              <text macro="label-chapter-number"/>
            </if>
          </choose>
          <text macro="identifier-contributors"/>
          <choose>
            <if match="any" type="broadcast graphic map motion_picture">
              <!-- For some audiovisual media, `number` information comes after title, not `container-title` (APA example 94); but an album track number is `chapter-number` -->
              <text macro="identifier-number"/>
            </if>
          </choose>
          <text macro="identifier-serial"/>
        </else-if>
        <else>
          <text macro="identifier-contributors"/>
          <text macro="identifier-number"/>
          <text macro="identifier-monographic"/>
          <text macro="identifier-serial"/>
        </else>
      </choose>
    </group>
  </macro>
  <!-- Identifier elements -->
  <macro name="identifier-contributors">
    <choose>
      <if match="any" type="article-journal article-magazine article-newspaper periodical post-weblog review review-book">
        <text macro="identifier-contributors-serial"/>
      </if>
      <else-if match="any" variable="collection-editor compiler editor editorial-director">
        <text macro="identifier-contributors-monographic"/>
      </else-if>
      <else-if match="any" type="interview paper-conference">
        <text macro="identifier-contributors-serial"/>
      </else-if>
      <else>
        <text macro="identifier-contributors-monographic"/>
      </else>
    </choose>
  </macro>
  <macro name="identifier-contributors-monographic">
    <group delimiter="; ">
      <choose>
        <if variable="title">
          <names variable="interviewer">
            <name and="symbol"/>
            <label form="short" prefix=", " text-case="title"/>
          </names>
        </if>
      </choose>
      <choose>
        <if match="any" type="post webpage">
          <!-- print `container-title` on `post` or `webpage` in the same way as `publisher` -->
          <names variable="container-author">
            <label form="verb-short" suffix=" " text-case="title"/>
            <name and="symbol"/>
          </names>
          <names delimiter="; " variable="editor translator">
            <name and="symbol"/>
            <label form="short" prefix=", " text-case="title"/>
          </names>
          <names delimiter="; " variable="illustrator narrator">
            <name and="symbol"/>
            <label form="short" prefix=", " text-case="title"/>
          </names>
          <names delimiter="; " variable="compiler chair organizer curator series-creator executive-producer">
            <name and="symbol"/>
            <label prefix=", " text-case="title"/>
          </names>
        </if>
        <else>
          <names delimiter="; " variable="illustrator narrator">
            <name and="symbol"/>
            <label form="short" prefix=", " text-case="title"/>
          </names>
          <choose>
            <if variable="container-title editor-translator"/>
            <else-if variable="container-title">
              <!-- TODO: Check logic once processors start to automatically populate `editor-translator` -->
              <names delimiter="; " variable="translator">
                <name and="symbol"/>
                <label form="short" prefix=", " text-case="title"/>
              </names>
            </else-if>
            <else>
              <names variable="container-author">
                <label form="verb-short" suffix=" " text-case="title"/>
                <name and="symbol"/>
              </names>
              <names delimiter="; " variable="editor translator">
                <name and="symbol"/>
                <label form="short" prefix=", " text-case="title"/>
              </names>
              <names delimiter="; " variable="compiler chair organizer curator series-creator executive-producer">
                <name and="symbol"/>
                <label prefix=", " text-case="title"/>
              </names>
            </else>
          </choose>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="identifier-contributors-serial">
    <group delimiter="; ">
      <choose>
        <if variable="title">
          <names delimiter="; " variable="interviewer">
            <name and="symbol"/>
            <label form="short" prefix=", " text-case="title"/>
          </names>
        </if>
      </choose>
      <names delimiter="; " variable="translator narrator">
        <name and="symbol"/>
        <label form="short" prefix=", " text-case="title"/>
      </names>
    </group>
  </macro>
  <macro name="identifier-locators">
    <choose>
      <if variable="page">
        <text macro="label-page"/>
      </if>
      <else-if variable="chapter-number genre">
        <text macro="label-chapter-number"/>
      </else-if>
      <else-if variable="chapter-number title">
        <text macro="label-chapter-number"/>
      </else-if>
      <!-- `chapter-number` appears earlier in `identifier` if there is no `title` or `genre` -->
    </choose>
  </macro>
  <macro name="identifier-monographic">
    <choose>
      <!-- omit serial types -->
      <if match="any" type="article-journal article-magazine article-newspaper broadcast event patent performance periodical post post-weblog review review-book speech webpage"/>
      <else-if match="any" variable="collection-editor compiler editor editorial-director">
        <!-- monographic types -->
        <text macro="identifier-monographic-item"/>
      </else-if>
      <!-- omit serial types -->
      <else-if match="any" type="interview paper-conference"/>
      <else>
        <!-- monographic types -->
        <text macro="identifier-monographic-item"/>
      </else>
    </choose>
  </macro>
  <macro name="identifier-monographic-item">
    <group delimiter=", ">
      <text macro="label-version"/>
      <text macro="label-edition"/>
      <text macro="identifier-series"/>
      <text macro="label-supplement-number"/>
      <text macro="identifier-number-volume"/>
      <text macro="identifier-number-part"/>
      <text macro="label-issue"/>
      <text macro="identifier-locators"/>
    </group>
  </macro>
  <macro name="identifier-number">
    <group delimiter=" ">
      <choose>
        <if type="thesis" variable="genre">
          <!-- `genre` provided with thesis description (APA example 65) -->
          <text text-case="capitalize-first" value="publication"/>
        </if>
        <else-if variable="number">
          <text text-case="title" variable="genre"/>
        </else-if>
      </choose>
      <text macro="label-number"/>
    </group>
  </macro>
  <macro name="identifier-number-part">
    <choose>
      <!-- Part number printed with part title -->
      <if variable="part-title"/>
      <!-- Non-numeric part numbers printed as part of the title -->
      <else-if is-numeric="part-number">
        <text macro="label-part-number"/>
      </else-if>
    </choose>
  </macro>
  <macro name="identifier-number-volume">
    <choose>
      <!-- Volume number printed with volume/part title -->
      <if variable="volume volume-title"/>
      <else-if variable="part-title volume"/>
      <!-- Non-numeric volumes printed as part of the book title -->
      <else-if is-numeric="volume">
        <text macro="label-volume"/>
      </else-if>
      <else>
        <text macro="label-number-of-volumes"/>
      </else>
    </choose>
  </macro>
  <macro name="identifier-patent">
    <!-- `authority`: U.S. ; `genre`: patent ; `number`: 123,445 -->
    <group delimiter=" ">
      <text form="short" variable="authority"/>
      <choose>
        <if variable="genre">
          <text text-case="capitalize-first" variable="genre"/>
        </if>
        <else>
          <text term="patent" text-case="capitalize-first"/>
        </else>
      </choose>
      <text macro="label-number"/>
    </group>
  </macro>
  <macro name="identifier-serial">
    <choose>
      <if match="any" type="article-journal article-magazine article-newspaper periodical post-weblog review review-book">
        <!-- serial types -->
        <text macro="identifier-number-part"/>
      </if>
      <!-- omit monographic types -->
      <else-if match="any" variable="collection-editor compiler editor editorial-director"/>
      <else-if match="any" type="interview paper-conference">
        <!-- serial types -->
        <text macro="identifier-number-part"/>
      </else-if>
    </choose>
  </macro>
  <macro name="identifier-series">
    <!-- Series given only for report-like types (APA example 52) -->
    <choose>
      <if match="any" type="document report standard">
        <group delimiter=" ">
          <text text-case="title" variable="collection-title"/>
          <text variable="collection-number"/>
        </group>
      </if>
    </choose>
  </macro>
  <!-- 3.3. Description [in square brackets] (APA 9.21) -->
  <macro name="description">
    <group prefix="[" suffix="]">
      <choose>
        <if match="any" type="interview" variable="interviewer">
          <text macro="description-interview"/>
        </if>
        <else-if match="any" type="review review-book" variable="reviewed-author reviewed-genre reviewed-title">
          <text macro="description-review"/>
        </else-if>
        <else-if type="personal_communication">
          <text macro="description-letter"/>
        </else-if>
        <else-if type="song" variable="composer">
          <text macro="description-song"/>
        </else-if>
        <else-if type="thesis">
          <text macro="description-thesis"/>
        </else-if>
        <else-if match="any" type="article-journal article-magazine article-newspaper periodical post-weblog review review-book">
          <text macro="description-serial"/>
        </else-if>
        <else-if match="none" variable="container-title">
          <!-- Other description -->
          <text macro="description-format"/>
        </else-if>
        <!-- For unpublished conference presentations/performances/events, chapters in reports/standards/generic documents, software, place description within the source element -->
        <else-if match="any" type="document report software standard"/>
        <else-if match="any" type="event paper-conference performance speech">
          <choose>
            <if match="any" variable="collection-editor compiler editor editorial-director issue page supplement-number volume">
              <text macro="description-format"/>
            </if>
          </choose>
        </else-if>
        <else>
          <text macro="description-format"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="description-short">
    <group prefix="[" suffix="]">
      <choose>
        <if match="any" type="interview" variable="interviewer">
          <text macro="description-interview-short"/>
        </if>
        <else-if match="any" type="review review-book" variable="reviewed-author reviewed-genre reviewed-title">
          <text macro="description-review-short"/>
        </else-if>
        <else-if type="personal_communication">
          <text macro="description-letter-short"/>
        </else-if>
        <else-if match="any" type="article-journal article-magazine article-newspaper periodical post-weblog review review-book">
          <!-- serial types -->
          <text macro="description-serial-short"/>
        </else-if>
        <else-if match="any" variable="collection-editor compiler editor editorial-director">
          <!-- monographic types -->
          <text macro="description-format-short"/>
        </else-if>
        <else-if match="any" type="interview paper-conference">
          <!-- serial types -->
          <text macro="description-serial-short"/>
        </else-if>
        <else>
          <!-- monographic types -->
          <text macro="description-format-short"/>
        </else>
      </choose>
    </group>
  </macro>
  <!-- Description elements -->
  <macro name="description-format">
    <choose>
      <if match="any" variable="genre medium">
        <group delimiter="; ">
          <choose>
            <if match="none" variable="number">
              <text text-case="capitalize-first" variable="genre"/>
            </if>
          </choose>
          <text text-case="capitalize-first" variable="medium"/>
        </group>
      </if>
      <else>
        <text macro="description-format-term-generic"/>
      </else>
    </choose>
  </macro>
  <macro name="description-format-short">
    <choose>
      <if variable="genre">
        <text form="short" text-case="capitalize-first" variable="genre"/>
      </if>
      <else-if variable="medium">
        <text form="short" text-case="capitalize-first" variable="medium"/>
      </else-if>
      <else>
        <text macro="description-format-term-generic"/>
      </else>
    </choose>
  </macro>
  <macro name="description-format-term-generic">
    <!-- Generic labels for specific types -->
    <choose>
      <if type="broadcast">
        <text term="broadcast" text-case="capitalize-first"/>
      </if>
      <else-if type="collection">
        <text term="collection" text-case="capitalize-first"/>
      </else-if>
      <else-if type="dataset">
        <text term="dataset" text-case="capitalize-first"/>
      </else-if>
      <else-if type="figure">
        <text term="figure" text-case="capitalize-first"/>
      </else-if>
      <else-if type="graphic">
        <text term="graphic" text-case="capitalize-first"/>
      </else-if>
      <else-if match="any" type="interview personal_communication">
        <choose>
          <if match="none" variable="archive archive-place container-title DOI number publisher references URL">
            <text term="personal-communication" text-case="capitalize-first"/>
          </if>
          <else-if type="interview">
            <text term="interview" text-case="capitalize-first"/>
          </else-if>
          <else-if type="personal_communication">
            <text term="letter" text-case="capitalize-first"/>
          </else-if>
        </choose>
      </else-if>
      <else-if type="manuscript">
        <choose>
          <if match="none" variable="archive archive-place container-title DOI number publisher references URL">
            <text term="manuscript" text-case="capitalize-first"/>
          </if>
        </choose>
      </else-if>
      <else-if type="map">
        <text term="map" text-case="capitalize-first"/>
      </else-if>
      <else-if type="motion_picture">
        <text term="motion_picture" text-case="capitalize-first"/>
      </else-if>
      <else-if type="periodical" variable="container-title supplement-number">
        <text term="supplement" text-case="capitalize-first"/>
      </else-if>
      <else-if type="periodical" variable="container-title title">
        <text term="special-issue" text-case="capitalize-first"/>
      </else-if>
      <else-if type="song">
        <text term="song" text-case="capitalize-first"/>
      </else-if>
      <else-if type="software">
        <text term="software" text-case="capitalize-first"/>
      </else-if>
      <else-if type="post">
        <text term="post" text-case="capitalize-first"/>
      </else-if>
      <else-if type="review">
        <text term="review" text-case="capitalize-first"/>
      </else-if>
      <else-if type="review-book">
        <text term="review-book" text-case="capitalize-first"/>
      </else-if>
    </choose>
  </macro>
  <macro name="description-interview">
    <group delimiter="; ">
      <choose>
        <if variable="interviewer title">
          <!-- Avoid repeating 'interview' -->
          <choose>
            <if match="none" variable="number">
              <text text-case="capitalize-first" variable="genre"/>
            </if>
          </choose>
          <text text-case="capitalize-first" variable="medium"/>
        </if>
        <else-if variable="title">
          <text macro="description-format"/>
        </else-if>
        <else-if variable="genre">
          <group delimiter=" ">
            <text text-case="capitalize-first" variable="genre"/>
            <choose>
              <if variable="interviewer">
                <text form="verb" term="container-author"/>
                <names variable="interviewer">
                  <name and="symbol"/>
                </names>
              </if>
            </choose>
          </group>
        </else-if>
        <else-if variable="interviewer">
          <names variable="interviewer">
            <label form="verb" suffix=" " text-case="capitalize-first"/>
            <name and="symbol"/>
          </names>
          <text text-case="capitalize-first" variable="medium"/>
        </else-if>
        <else>
          <text macro="description-format"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="description-interview-short">
    <names variable="interviewer">
      <label form="verb" suffix=" " text-case="capitalize-first"/>
      <name and="symbol" form="short"/>
      <substitute>
        <text macro="description-format-short"/>
      </substitute>
    </names>
  </macro>
  <macro name="description-letter">
    <choose>
      <if variable="recipient">
        <group delimiter="; ">
          <group delimiter=" ">
            <text macro="description-format"/>
            <names variable="recipient">
              <label form="verb" suffix=" "/>
              <name and="symbol" initialize="false"/>
            </names>
          </group>
          <text macro="description-medium"/>
        </group>
      </if>
      <else>
        <text macro="description-format"/>
      </else>
    </choose>
  </macro>
  <macro name="description-letter-short">
    <choose>
      <if variable="recipient">
        <group delimiter=" ">
          <text macro="description-format-short"/>
          <names variable="recipient">
            <label form="verb" suffix=" "/>
            <name and="symbol" form="short"/>
          </names>
        </group>
      </if>
      <else>
        <text macro="description-format-short"/>
      </else>
    </choose>
  </macro>
  <macro name="description-medium">
    <choose>
      <if variable="number"/>
      <else-if variable="genre">
        <text text-case="capitalize-first" variable="medium"/>
      </else-if>
    </choose>
  </macro>
  <macro name="description-review">
    <group delimiter="; ">
      <group delimiter=", ">
        <group delimiter=" ">
          <choose>
            <if variable="reviewed-genre">
              <text term="review-of" text-case="capitalize-first"/>
              <text variable="reviewed-genre"/>
            </if>
            <else-if variable="number">
              <!-- Genre printed with `number` -->
              <text form="short" term="review-of" text-case="capitalize-first"/>
            </else-if>
            <!-- If no `reviewed-genre`, assume that `genre` or `medium` is entered as 'Review of the book' or similar -->
            <else-if variable="genre">
              <text text-case="capitalize-first" variable="genre"/>
            </else-if>
            <else-if variable="medium">
              <text text-case="capitalize-first" variable="medium"/>
            </else-if>
            <else-if type="review-book">
              <text term="review-of" text-case="capitalize-first"/>
              <text term="book" text-case="lowercase"/>
            </else-if>
            <else>
              <text form="short" term="review-of" text-case="capitalize-first"/>
            </else>
          </choose>
          <text macro="description-review-title"/>
        </group>
        <names variable="reviewed-author">
          <label form="verb-short" suffix=" "/>
          <name and="symbol"/>
        </names>
      </group>
      <text macro="description-medium"/>
    </group>
  </macro>
  <macro name="description-review-short">
    <group delimiter=" ">
      <text form="short" term="review-of" text-case="capitalize-first"/>
      <text macro="description-review-title-short"/>
    </group>
  </macro>
  <macro name="description-review-title">
    <choose>
      <if match="any" variable="reviewed-genre reviewed-title">
        <!-- Not possible to distinguish TV series episode from other reviewed works without a reviewed source title (APA example 69) -->
        <!-- TODO: Adapt for `reviewed-container-title` or similar if it becomes available -->
        <text font-style="italic" variable="reviewed-title"/>
      </if>
      <else>
        <!-- Assume `title` is the title of the reviewed work -->
        <text font-style="italic" variable="title"/>
      </else>
    </choose>
  </macro>
  <macro name="description-review-title-short">
    <choose>
      <if match="any" variable="reviewed-genre reviewed-title">
        <!-- Not possible to distinguish TV series episode from other reviewed works without a reviewed source title (APA example 69) -->
        <!-- TODO: Adapt for `reviewed-container-title` or similar if it becomes available -->
        <text font-style="italic" form="short" text-case="title" variable="reviewed-title"/>
      </if>
      <else>
        <!-- Assume `title` is the title of the reviewed work -->
        <text font-style="italic" form="short" text-case="title" variable="title"/>
      </else>
    </choose>
  </macro>
  <macro name="description-serial">
    <group delimiter="; ">
      <text macro="description-format"/>
      <choose>
        <if match="none" variable="title">
          <text variable="section"/>
        </if>
      </choose>
    </group>
  </macro>
  <macro name="description-serial-short">
    <choose>
      <if variable="title"/>
      <else-if variable="section">
        <text form="short" text-case="capitalize-first" variable="section"/>
      </else-if>
      <else>
        <text macro="description-format-short"/>
      </else>
    </choose>
  </macro>
  <macro name="description-song">
    <!-- Performer of classical music works -->
    <group delimiter="; ">
      <group delimiter=" ">
        <!-- Based on `description-format` macro -->
        <choose>
          <if match="any" variable="genre medium">
            <choose>
              <if match="none" variable="number">
                <text text-case="capitalize-first" variable="genre"/>
              </if>
            </choose>
            <text text-case="capitalize-first" variable="medium"/>
            <text form="verb" term="performer"/>
          </if>
          <else>
            <text form="verb" term="performer" text-case="capitalize-first"/>
          </else>
        </choose>
        <names variable="author">
          <name and="symbol"/>
          <substitute>
            <names variable="performer"/>
          </substitute>
        </names>
      </group>
      <text macro="description-medium"/>
    </group>
  </macro>
  <macro name="description-thesis">
    <group delimiter="; ">
      <group delimiter=", ">
        <text text-case="capitalize-first" variable="genre"/>
        <choose>
          <if match="any" variable="archive DOI URL">
            <!-- Include the university in description if thesis is published -->
            <text variable="publisher"/>
          </if>
        </choose>
      </group>
      <text text-case="capitalize-first" variable="medium"/>
    </group>
  </macro>
  <!-- 4. Source (APA 9.23-37) -->
  <macro name="source">
    <group delimiter=". ">
      <choose>
        <if match="any" type="post webpage"/>
        <else-if match="any" type="article-journal article-magazine article-newspaper periodical post-weblog review review-book">
          <text macro="source-serial"/>
        </else-if>
        <else-if match="any" variable="collection-editor compiler editor editorial-director">
          <text macro="source-monographic"/>
        </else-if>
        <else-if match="any" type="interview paper-conference">
          <text macro="source-serial"/>
        </else-if>
        <else>
          <text macro="source-monographic"/>
        </else>
      </choose>
      <text macro="source-publisher"/>
      <text macro="source-archive"/>
      <text macro="source-location"/>
      <text macro="source-website"/>
    </group>
  </macro>
  <!-- 4.1. Serial sources (APA 9.25-27) -->
  <macro name="source-serial">
    <group delimiter=". ">
      <group delimiter=", ">
        <group delimiter=", " font-style="italic">
          <text text-case="title" variable="container-title"/>
          <!-- `collection-title` is for any serial with multiple series (e.g. 'second series') -->
          <text text-case="title" variable="collection-title"/>
        </group>
        <group>
          <text font-style="italic" variable="volume"/>
          <group delimiter=", " prefix="(" suffix=")">
            <text variable="issue"/>
            <text macro="label-supplement-number"/>
          </group>
        </group>
        <choose>
          <if variable="number">
            <text macro="label-number-article"/>
          </if>
          <else>
            <text variable="page"/>
          </else>
        </choose>
      </group>
      <choose>
        <if match="any" variable="collection-title issue number page supplement-number volume"/>
        <else-if variable="issued status">
          <!-- Print the status variable rather than use generic CSL terms (`in press`, etc.) -->
          <text text-case="capitalize-first" variable="status"/>
        </else-if>
      </choose>
    </group>
  </macro>
  <!-- 4.2. Monographic sources (APA 9.28) -->
  <macro name="source-monographic">
    <!-- Monographic sources repeat main reference elements -->
    <choose>
      <if variable="container-title">
        <group delimiter=" ">
          <choose>
            <if type="song">
              <text term="on" text-case="capitalize-first"/>
            </if>
            <else>
              <text term="in" text-case="capitalize-first"/>
            </else>
          </choose>
          <group delimiter=", ">
            <text macro="source-monographic-author"/>
            <text macro="source-monographic-title"/>
          </group>
          <text macro="source-monographic-identifier"/>
          <text macro="source-monographic-description"/>
        </group>
      </if>
    </choose>
  </macro>
  <!-- Monographic source author -->
  <macro name="source-monographic-author">
    <names variable="container-author">
      <name and="symbol"/>
      <label prefix=" (" suffix=")" text-case="title"/>
      <substitute>
        <names variable="executive-producer"/>
        <names variable="series-creator"/>
        <names variable="editor-translator">
          <name and="symbol"/>
          <label form="short" prefix=" (" suffix=")" text-case="title"/>
        </names>
        <!-- TODO: Translator omitted on the assumption that editor-translators are uncommon for chapter citations. If needed, direct entry or automatic population of `editor-translator` can produce combined labels. -->
        <names delimiter="; " variable="editor">
          <name and="symbol"/>
          <label form="short" prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names variable="editorial-director">
          <name and="symbol"/>
          <label form="short" prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names variable="compiler"/>
        <choose>
          <if match="any" type="event performance speech">
            <names variable="chair"/>
            <names variable="organizer"/>
          </if>
        </choose>
        <names variable="curator"/>
        <names variable="collection-editor">
          <name and="symbol"/>
          <label form="short" prefix=" (" suffix=")" text-case="title"/>
        </names>
      </substitute>
    </names>
  </macro>
  <!-- Monographic source title -->
  <macro name="source-monographic-title">
    <group delimiter=": " font-style="italic">
      <text variable="container-title"/>
      <text macro="title-volume"/>
    </group>
  </macro>
  <!-- Monographic source identifier -->
  <macro name="source-monographic-identifier">
    <choose>
      <if variable="container-title">
        <group delimiter="; " prefix="(" suffix=")">
          <choose>
            <if match="none" type="broadcast graphic map motion_picture">
              <!-- For some audiovisual media, number information comes after `title`, not `container-title` (APA example 94); but an album track number is `chapter-number` -->
              <text macro="identifier-number"/>
            </if>
          </choose>
          <text macro="identifier-monographic"/>
        </group>
      </if>
    </choose>
  </macro>
  <!-- Monographic source description -->
  <macro name="source-monographic-description">
    <group prefix="[" suffix="]">
      <choose>
        <if match="any" type="document report software standard">
          <!-- place description after `container-title` -->
          <text macro="description-format"/>
        </if>
        <else-if match="any" variable="collection-editor compiler editor editorial-director issue page supplement-number volume"/>
        <else-if match="any" type="event paper-conference performance speech">
          <!-- unpublished conference presentations should describe the session -->
          <text macro="description-format"/>
        </else-if>
      </choose>
    </group>
  </macro>
  <!-- 4.3. Publisher sources (APA 9.29) -->
  <macro name="source-publisher">
    <choose>
      <if type="thesis">
        <choose>
          <if match="none" variable="archive DOI URL">
            <!-- Provide university in `publisher` if unpublished -->
            <text variable="publisher"/>
          </if>
        </choose>
      </if>
      <!-- omit serial types -->
      <else-if match="any" type="article-journal article-magazine article-newspaper periodical post-weblog review review-book"/>
      <else-if match="any" variable="collection-editor compiler editor editorial-director">
        <!-- monographic types -->
        <text variable="publisher"/>
      </else-if>
      <else-if type="interview">
        <!-- give publisher for a broadcast `interview` handled as a serial type -->
        <text variable="publisher"/>
      </else-if>
      <!-- omit serial `paper-conference` -->
      <else-if type="paper-conference"/>
      <else>
        <text variable="publisher"/>
      </else>
    </choose>
  </macro>
  <!-- 4.4. Database and archive sources (APA 9.30) -->
  <macro name="source-archive">
    <group delimiter=", ">
      <choose>
        <if variable="archive_collection">
          <!-- With collection: `archive_collection` (`archive_location`), `archive`, `archive-place` -->
          <group delimiter=" ">
            <text variable="archive_collection"/>
            <text prefix="(" suffix=")" variable="archive_location"/>
          </group>
          <text variable="archive"/>
          <text variable="archive-place"/>
        </if>
        <else>
          <!-- No collection: `archive` (`archive_location`), `archive-place` -->
          <group delimiter=" ">
            <text variable="archive"/>
            <text prefix="(" suffix=")" variable="archive_location"/>
          </group>
          <text variable="archive-place"/>
        </else>
      </choose>
      <!-- a database identifier/number is stored in `number` and appears in `identifier-number` -->
    </group>
  </macro>
  <!-- 4.5. Works with specific locations (APA 9.31) -->
  <macro name="source-location">
    <choose>
      <if match="any" variable="event event-title">
        <!-- TODO: To prevent Zotero from printing `event-place`, due to its double-mapping of `publisher-place` and `event-place`. Remove this when that is changed. -->
        <choose>
          <if type="paper-conference">
            <choose>
              <if match="none" variable="collection-editor compiler editor editorial-director issue page supplement-number volume">
                <!-- Don't print event info for conference papers published in a proceedings -->
                <text macro="source-location-title-place-date"/>
              </if>
            </choose>
          </if>
          <else>
            <!-- For other item types, print event info even if published (e.g. collection catalogs, performance programs). These items aren't given explicit examples in the APA manual, so err on the side of providing too much information. -->
            <text macro="source-location-title-place-date"/>
          </else>
        </choose>
      </if>
    </choose>
  </macro>
  <macro name="source-location-title-place-date">
    <group delimiter=", ">
      <choose>
        <!-- TODO: We expect `event-title` to be used, but processors and applications may not be updated yet. This macro ensures that either `event` or `event-title` can be accepted. Remove if processor logic and application adoption can handle this. -->
        <if variable="event-title">
          <text text-case="capitalize-first" variable="event-title"/>
        </if>
        <else>
          <text text-case="capitalize-first" variable="event"/>
        </else>
      </choose>
      <text variable="event-place"/>
      <text macro="date-event-full"/>
    </group>
  </macro>
  <!-- 4.6. Social media and website sources (APA 9.32-33) -->
  <macro name="source-website">
    <choose>
      <if match="any" type="post webpage">
        <text text-case="title" variable="container-title"/>
      </if>
    </choose>
  </macro>
  <!-- 4.7. DOI or URL (APA 9.34-36) -->
  <macro name="source-DOI-URL">
    <choose>
      <if variable="DOI">
        <text prefix="https://doi.org/" variable="DOI"/>
      </if>
      <else-if variable="URL">
        <group delimiter=" ">
          <choose>
            <if match="none" variable="issued status">
              <text term="retrieved" text-case="capitalize-first"/>
              <group delimiter=", ">
                <date form="text" variable="accessed"/>
                <text term="from"/>
              </group>
            </if>
          </choose>
          <text variable="URL"/>
        </group>
      </else-if>
    </choose>
  </macro>
  <!-- 5. Publication history (APA 9.39-41) -->
  <macro name="publication-history">
    <!-- Notes on source element: original publication, reprint info, retraction info -->
    <group delimiter="; " prefix="(" suffix=")">
      <choose>
        <if type="patent">
          <text variable="references"/>
        </if>
        <else>
          <!-- Print `status` here for "retracted" etc. if it's not printed elsewhere. -->
          <choose>
            <if match="none" variable="issued"/>
            <else-if match="any" variable="collection-title issue number page supplement-number volume">
              <text text-case="capitalize-first" variable="status"/>
            </else-if>
          </choose>
          <choose>
            <if variable="references">
              <!-- Provide the option for more elaborate description of publication history, such as full "reprinted" references (APA examples 11, 43, 44) -->
              <text variable="references"/>
            </if>
            <else>
              <!-- Format publication history using CSL variables -->
              <group delimiter=" ">
                <text term="original-work-published" text-case="capitalize-first"/>
                <group delimiter=", ">
                  <group delimiter=" ">
                    <text value="as"/>
                    <text font-style="italic" variable="original-title"/>
                  </group>
                  <text macro="date-original-year"/>
                  <text variable="original-publisher"/>
                </group>
              </group>
            </else>
          </choose>
        </else>
      </choose>
    </group>
  </macro>
  <!-- 6. Legal references: Bluebook style (shared with Chicago) -->
  <!-- Where APA or Chicago diverge from Bluebook, the official manual is followed -->
  <macro name="legal-reference">
    <!-- Type usage:

         `bill`
         : bills, resolutions, federal reports

         `legal_case`
         : all legal and court cases

         `hearing`
         : hearings and testimony

         `legislation`
         : statutes, constitutional items, and charters

         `regulation`
         : codified regulations, uncodified regulations, executive orders

         `treaty`
         : treaties
    -->
    <group delimiter=", ">
      <choose>
        <if type="treaty">
          <text macro="legal-title"/>
          <names variable="author">
            <!-- Treaty parties should be included at least for bilateral treaties (Bluebook 21.4.2) -->
            <name delimiter="-" et-al-min="100" et-al-use-first="99" form="short" initialize="false"/>
          </names>
          <text macro="legal-date"/>
          <!-- treaty source/report in addition to URL (Bluebook 21.4.5) -->
          <text macro="legal-source"/>
        </if>
        <else>
          <group delimiter=" ">
            <group delimiter=", ">
              <text macro="legal-title"/>
              <text macro="legal-source"/>
            </group>
            <text macro="legal-date"/>
            <text macro="legal-identifier"/>
          </group>
        </else>
      </choose>
      <group delimiter=" ">
        <!-- locator for use in notes -->
        <choose>
          <if locator="page" variable="page">
            <text term="at"/>
          </if>
        </choose>
        <text macro="label-locator"/>
      </group>
    </group>
  </macro>
  <!-- 6.1. Legal date -->
  <macro name="legal-date">
    <choose>
      <if type="treaty">
        <text macro="date-issued-full"/>
      </if>
      <else-if type="legal_case">
        <text macro="legal-date-case"/>
      </else-if>
      <else-if match="any" type="bill hearing legislation regulation">
        <group delimiter=" " prefix="(" suffix=")">
          <group delimiter=" ">
            <text macro="date-original-year"/>
            <text form="symbol" term="and"/>
          </group>
          <choose>
            <if variable="issued">
              <text macro="date-issued-year"/>
            </if>
            <else>
              <!-- Show proposal date for uncodified regulations. Assume date is entered literally ala "proposed May 23, 2016". -->
              <!-- TODO: Add `proposed` date here if that becomes available -->
              <date form="text" variable="submitted"/>
            </else>
          </choose>
        </group>
      </else-if>
    </choose>
  </macro>
  <macro name="legal-date-case">
    <group delimiter=" " prefix="(" suffix=")">
      <text variable="authority"/>
      <choose>
        <if variable="container-title">
          <!-- Print only year for cases published in reporters-->
          <text macro="date-issued-year"/>
        </if>
        <else>
          <text macro="date-issued-full"/>
        </else>
      </choose>
    </group>
  </macro>
  <!-- 6.2.1. Legal title -->
  <macro name="legal-title">
    <choose>
      <if match="any" type="bill legal_case legislation regulation treaty">
        <text text-case="title" variable="title"/>
      </if>
      <else-if type="hearing">
        <!-- use standard format (Bluebook 13.3) -->
        <group delimiter=": " font-style="italic">
          <text text-case="capitalize-first" variable="title"/>
          <group delimiter=" ">
            <text term="hearing" text-case="capitalize-first"/>
            <group delimiter=" ">
              <text term="on"/>
              <text variable="number"/>
            </group>
            <group delimiter=" ">
              <text value="before the"/>
              <text variable="section"/>
            </group>
          </group>
        </group>
      </else-if>
    </choose>
  </macro>
  <!-- 6.2.2. Legal identifier -->
  <macro name="legal-identifier">
    <group delimiter=" " prefix="(" suffix=")">
      <choose>
        <if type="hearing">
          <!-- Use the 'verb' form of the hearing term to hold 'testimony of' -->
          <text form="verb" term="hearing"/>
          <names variable="author">
            <name and="symbol" initialize="false"/>
          </names>
        </if>
        <else-if match="any" type="bill legislation regulation">
          <!-- For uncodified regulations, assume future code section is in `status`. -->
          <text variable="status"/>
        </else-if>
      </choose>
    </group>
  </macro>
  <macro name="legal-identifier-bill-report">
    <group delimiter=" ">
      <text variable="genre"/>
      <choose>
        <if match="any" variable="authority chapter-number container-title">
          <text variable="number"/>
        </if>
        <else>
          <!-- If there is no legislative body, session number, or code/record title, assume the item is a congressional report and include 'No.' label. -->
          <text macro="label-number-capitalized"/>
        </else>
      </choose>
    </group>
  </macro>
  <!-- 6.3. Legal source -->
  <macro name="legal-source">
    <!-- Expect legal item `container-title` to be stored in short form -->
    <choose>
      <if type="bill">
        <text macro="legal-source-bill"/>
      </if>
      <else-if type="hearing">
        <text macro="legal-source-hearing"/>
      </else-if>
      <else-if type="legal_case">
        <text macro="legal-source-case"/>
      </else-if>
      <else-if type="legislation">
        <text macro="legal-source-legislation"/>
      </else-if>
      <else-if type="regulation">
        <text macro="legal-source-regulation"/>
      </else-if>
      <else-if type="treaty">
        <text macro="legal-source-treaty"/>
      </else-if>
    </choose>
  </macro>
  <!-- Legal source types -->
  <macro name="legal-source-bill">
    <group delimiter=", ">
      <text macro="legal-identifier-bill-report"/>
      <group delimiter=" ">
        <text variable="authority"/>
        <!-- `chapter-number` is a session number -->
        <text variable="chapter-number"/>
      </group>
      <group delimiter=" ">
        <text variable="volume"/>
        <text variable="container-title"/>
        <text variable="page-first"/>
      </group>
    </group>
  </macro>
  <macro name="legal-source-case">
    <group delimiter=" ">
      <choose>
        <if variable="container-title">
          <text variable="volume"/>
          <text variable="container-title"/>
          <text macro="label-section-symbol"/>
          <choose>
            <if match="any" variable="page page-first">
              <text variable="page-first"/>
            </if>
            <else>
              <text value="___"/>
            </else>
          </choose>
        </if>
        <else>
          <text macro="label-number-capitalized"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="legal-source-hearing">
    <group delimiter=" ">
      <text variable="authority"/>
      <!-- `chapter-number` is a session number -->
      <text variable="chapter-number"/>
    </group>
  </macro>
  <macro name="legal-source-legislation">
    <choose>
      <if variable="number">
        <!-- `number` is a public law number -->
        <group delimiter=", ">
          <group delimiter=" ">
            <choose>
              <if variable="genre">
                <text text-case="capitalize-first" variable="genre"/>
              </if>
              <else>
                <text form="short" term="legislation" text-case="capitalize-first"/>
              </else>
            </choose>
            <text macro="label-number-capitalized"/>
          </group>
          <group delimiter=" ">
            <text variable="volume"/>
            <text variable="container-title"/>
            <text variable="page-first"/>
          </group>
        </group>
      </if>
      <else>
        <group delimiter=" ">
          <text variable="volume"/>
          <text variable="container-title"/>
          <choose>
            <if variable="section">
              <text macro="label-section-symbol"/>
            </if>
            <else>
              <text variable="page-first"/>
            </else>
          </choose>
        </group>
      </else>
    </choose>
  </macro>
  <macro name="legal-source-regulation">
    <group delimiter=", ">
      <group delimiter=" ">
        <text variable="genre"/>
        <text macro="label-number-capitalized"/>
      </group>
      <group delimiter=" ">
        <text variable="volume"/>
        <text variable="container-title"/>
        <choose>
          <if variable="section">
            <text macro="label-section-symbol"/>
          </if>
          <else>
            <text variable="page-first"/>
          </else>
        </choose>
      </group>
    </group>
  </macro>
  <macro name="legal-source-treaty">
    <group delimiter=" ">
      <number variable="volume"/>
      <text variable="container-title"/>
      <choose>
        <if match="any" variable="page page-first">
          <text variable="page-first"/>
        </if>
        <else>
          <text macro="label-number-capitalized"/>
        </else>
      </choose>
    </group>
  </macro>
  <!-- Citation -->
  <citation collapse="year" disambiguate-add-givenname="true" disambiguate-add-names="true" disambiguate-add-year-suffix="true" et-al-min="3" et-al-use-first="1" givenname-disambiguation-rule="primary-name-with-initials">
    <sort>
      <key macro="author-sort" names-min="3" names-use-first="1"/>
      <key macro="date-sort-group"/>
      <key macro="date-sort"/>
      <key variable="status"/>
    </sort>
    <layout delimiter="; " prefix="(" suffix=")">
      <group delimiter=", ">
        <text macro="author-short"/>
        <text macro="date-short"/>
        <text macro="label-locator"/>
      </group>
    </layout>
  </citation>
  <!-- Bibliography -->
  <macro name="bibliography">
    <group delimiter=" ">
      <choose>
        <if match="any" type="bill hearing legal_case legislation regulation treaty">
          <!-- Legal items have different orders and delimiters -->
          <text macro="legal-reference" suffix="."/>
          <text macro="source-DOI-URL"/>
          <text variable="references"/>
        </if>
        <else>
          <group delimiter=". " suffix=".">
            <text macro="author-and-contributors"/>
            <text macro="date"/>
            <text macro="title-and-descriptions"/>
            <text macro="source"/>
          </group>
          <text macro="source-DOI-URL"/>
          <text macro="publication-history"/>
        </else>
      </choose>
    </group>
  </macro>
  <bibliography entry-spacing="0" et-al-min="21" et-al-use-first="19" et-al-use-last="true" hanging-indent="true" line-spacing="2">
    <sort>
      <key macro="author-sort"/>
      <key macro="date-sort-group"/>
      <key macro="date-sort"/>
      <key variable="status"/>
      <key macro="title"/>
      <key variable="volume"/>
      <key variable="part-number"/>
      <key variable="event-date"/>
      <key variable="original-date"/>
      <key macro="source-archive"/>
    </sort>
    <layout>
      <choose>
        <if match="any" variable="archive archive-place container-title DOI number publisher references URL">
          <text macro="bibliography"/>
        </if>
        <!-- an inaccessible `interview` or `personal_communication` is cited in-text only (APA 8.9) -->
        <else-if match="any" type="interview personal_communication"/>
        <else>
          <text macro="bibliography"/>
        </else>
      </choose>
    </layout>
  </bibliography>
</style>
```

<a id="f-docs-pandoc-make-reference-docx-ps1"></a>

## `docs/pandoc/make-reference-docx.ps1`

Ukuran 7,326 byte &middot; 183 baris &middot; sha256 `cef1d2a5f621` &middot; encoding `utf-8-sig`

```powershell
<#
.SYNOPSIS
  Membuat docs/pandoc/reference.docx (gaya & margin DOCX) dari template
  bawaan pandoc.

.DESCRIPTION
  Skrip mengambil reference.docx bawaan pandoc, lalu menyuntingnya agar
  mengikuti pedoman UM:
    - Font Times New Roman 12 pt
    - Spasi 1,5 dan indent paragraf 1,2 cm
    - Margin kiri 4 cm; atas/kanan/bawah 3 cm; ukuran A4
    - Judul bab (Heading 1) rata tengah, semua heading tebal 12 pt

  Hasil disimpan ke docs/pandoc/reference.docx. Skrip ini biasanya hanya
  perlu dijalankan ulang bila ingin menyesuaikan format.

.EXAMPLE
  .\docs\pandoc\make-reference-docx.ps1
#>

[CmdletBinding()]
param(
    [string]$Output = (Join-Path $PSScriptRoot 'reference.docx')
)

$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.IO.Compression.FileSystem

function Get-PandocPath {
    $cmd = Get-Command pandoc -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Source }
    $candidates = @(
        (Join-Path $env:LOCALAPPDATA 'Pandoc\pandoc.exe'),
        (Join-Path $env:ProgramFiles 'Pandoc\pandoc.exe')
    )
    foreach ($c in $candidates) { if (Test-Path -LiteralPath $c) { return $c } }
    throw "pandoc tidak ditemukan. Pasang dari https://pandoc.org/installing.html"
}

$W = 'http://schemas.openxmlformats.org/wordprocessingml/2006/main'

function New-WEl {
    param($Doc, [string]$Name)
    return $Doc.CreateElement('w', $Name, $W)
}

function Get-WNode {
    param($Parent, [string]$XPath, $Ns)
    return $Parent.SelectSingleNode($XPath, $Ns)
}

function Set-Fonts {
    param($Doc, $RPr)
    $old = Get-WNode $RPr 'w:rFonts' $script:ns
    if ($old) { [void]$RPr.RemoveChild($old) }
    $rf = New-WEl $Doc 'rFonts'
    foreach ($a in @('ascii', 'hAnsi', 'cs')) { [void]$rf.SetAttribute($a, $W, 'Times New Roman') }
    if ($RPr.FirstChild) { [void]$RPr.InsertBefore($rf, $RPr.FirstChild) } else { [void]$RPr.AppendChild($rf) }
}

$pandoc = Get-PandocPath
$work = Join-Path ([System.IO.Path]::GetTempPath()) ('refdocx-' + [guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $work -Force | Out-Null

try {
    $base = Join-Path $work 'base.docx'
    & $pandoc -o $base --print-default-data-file reference.docx
    if ($LASTEXITCODE -ne 0) { throw "Gagal mengambil reference.docx bawaan pandoc." }

    $extract = Join-Path $work 'x'
    [System.IO.Compression.ZipFile]::ExtractToDirectory($base, $extract)

    # ---------------- styles.xml ----------------
    $stylesPath = Join-Path $extract 'word\styles.xml'
    $doc = New-Object System.Xml.XmlDocument
    $doc.PreserveWhitespace = $true
    $doc.Load($stylesPath)
    $script:ns = New-Object System.Xml.XmlNamespaceManager($doc.NameTable)
    $script:ns.AddNamespace('w', $W)

    # Default: font Times New Roman 12 pt, spasi 1,5, indent 1,2 cm
    $rpr = Get-WNode $doc '//w:docDefaults/w:rPrDefault/w:rPr' $ns
    Set-Fonts $doc $rpr
    foreach ($tag in @('sz', 'szCs')) {
        $s = Get-WNode $rpr "w:$tag" $ns
        if (-not $s) { $s = New-WEl $doc $tag; [void]$rpr.AppendChild($s) }
        [void]$s.SetAttribute('val', $W, '24')
    }
    $dppr = Get-WNode $doc '//w:docDefaults/w:pPrDefault/w:pPr' $ns
    $dsp = Get-WNode $dppr 'w:spacing' $ns
    if (-not $dsp) { $dsp = New-WEl $doc 'spacing'; [void]$dppr.AppendChild($dsp) }
    $dsp.RemoveAllAttributes()
    [void]$dsp.SetAttribute('before', $W, '0')
    [void]$dsp.SetAttribute('after', $W, '0')
    [void]$dsp.SetAttribute('line', $W, '360')
    [void]$dsp.SetAttribute('lineRule', $W, 'auto')
    $dind = Get-WNode $dppr 'w:ind' $ns
    if (-not $dind) { $dind = New-WEl $doc 'ind'; [void]$dppr.AppendChild($dind) }
    [void]$dind.SetAttribute('firstLine', $W, '680')

    # Heading 1..6: Times New Roman 12 pt tebal; Heading1 rata tengah
    foreach ($lvl in 1..6) {
        $style = Get-WNode $doc "//w:style[@w:styleId='Heading$lvl']" $ns
        if (-not $style) { continue }
        $srpr = Get-WNode $style 'w:rPr' $ns
        if (-not $srpr) { $srpr = New-WEl $doc 'rPr'; [void]$style.AppendChild($srpr) }
        Set-Fonts $doc $srpr
        foreach ($drop in @('color', 'i', 'iCs')) {
            $n = Get-WNode $srpr "w:$drop" $ns
            if ($n) { [void]$srpr.RemoveChild($n) }
        }
        if (-not (Get-WNode $srpr 'w:b' $ns)) { [void]$srpr.AppendChild((New-WEl $doc 'b')) }
        foreach ($tag in @('sz', 'szCs')) {
            $s = Get-WNode $srpr "w:$tag" $ns
            if (-not $s) { $s = New-WEl $doc $tag; [void]$srpr.AppendChild($s) }
            [void]$s.SetAttribute('val', $W, '24')
        }
        if ($lvl -eq 1) {
            $sppr = Get-WNode $style 'w:pPr' $ns
            $jc = Get-WNode $sppr 'w:jc' $ns
            if (-not $jc) { $jc = New-WEl $doc 'jc'; [void]$sppr.AppendChild($jc) }
            [void]$jc.SetAttribute('val', $W, 'center')
        }
    }

    # Body Text: spasi 1,5, tanpa jarak antarparagraf, indent 1,2 cm
    $bt = Get-WNode $doc "//w:style[@w:styleId='BodyText']" $ns
    if ($bt) {
        $bppr = Get-WNode $bt 'w:pPr' $ns
        $bsp = Get-WNode $bppr 'w:spacing' $ns
        if (-not $bsp) { $bsp = New-WEl $doc 'spacing'; [void]$bppr.AppendChild($bsp) }
        $bsp.RemoveAllAttributes()
        [void]$bsp.SetAttribute('before', $W, '0')
        [void]$bsp.SetAttribute('after', $W, '0')
        [void]$bsp.SetAttribute('line', $W, '360')
        [void]$bsp.SetAttribute('lineRule', $W, 'auto')
        $bind = Get-WNode $bppr 'w:ind' $ns
        if (-not $bind) { $bind = New-WEl $doc 'ind'; [void]$bppr.AppendChild($bind) }
        [void]$bind.SetAttribute('firstLine', $W, '680')
    }

    $doc.Save($stylesPath)

    # ---------------- document.xml (margin & ukuran A4) ----------------
    $docPath = Join-Path $extract 'word\document.xml'
    $doc2 = New-Object System.Xml.XmlDocument
    $doc2.PreserveWhitespace = $true
    $doc2.Load($docPath)
    $ns2 = New-Object System.Xml.XmlNamespaceManager($doc2.NameTable)
    $ns2.AddNamespace('w', $W)

    $sect = $doc2.SelectSingleNode('//w:sectPr', $ns2)
    if (-not $sect) {
        $body = $doc2.SelectSingleNode('//w:body', $ns2)
        $sect = New-WEl $doc2 'sectPr'
        [void]$body.AppendChild($sect)
    }
    foreach ($tag in @('pgSz', 'pgMar')) {
        $old = $sect.SelectSingleNode("w:$tag", $ns2)
        if ($old) { [void]$sect.RemoveChild($old) }
    }
    $pgsz = New-WEl $doc2 'pgSz'
    [void]$pgsz.SetAttribute('w', $W, '11906')   # A4
    [void]$pgsz.SetAttribute('h', $W, '16838')
    $pgmar = New-WEl $doc2 'pgMar'
    [void]$pgmar.SetAttribute('top', $W, '1701')     # 3 cm
    [void]$pgmar.SetAttribute('right', $W, '1701')   # 3 cm
    [void]$pgmar.SetAttribute('bottom', $W, '1701')  # 3 cm
    [void]$pgmar.SetAttribute('left', $W, '2268')    # 4 cm
    [void]$pgmar.SetAttribute('header', $W, '851')
    [void]$pgmar.SetAttribute('footer', $W, '992')
    [void]$pgmar.SetAttribute('gutter', $W, '0')
    [void]$sect.InsertBefore($pgsz, $sect.FirstChild)
    [void]$sect.InsertAfter($pgmar, $pgsz)
    $doc2.Save($docPath)

    if (Test-Path -LiteralPath $Output) { Remove-Item -LiteralPath $Output -Force }
    [System.IO.Compression.ZipFile]::CreateFromDirectory($extract, $Output)
    Write-Host ("reference.docx dibuat: {0}" -f $Output) -ForegroundColor Green
}
finally {
    if (Test-Path -LiteralPath $work) { Remove-Item -LiteralPath $work -Recurse -Force }
}
```

<a id="f-docs-pandoc-postprocess-lua"></a>

## `docs/pandoc/postprocess.lua`

Ukuran 4,947 byte &middot; 177 baris &middot; sha256 `59c6cc388d17` &middot; encoding `utf-8-sig`

```lua
--[[------------------------------------------------------------------
postprocess.lua - Filter pandoc untuk merapikan DOCX skripsi.

Dijalankan SETELAH reader LaTeX dan SEBELUM writer DOCX, lewat:
  pandoc ... --lua-filter=docs/pandoc/postprocess.lua

Tugas:
  - Mengubah penanda @@PAGEBREAK@@ menjadi page break DOCX.
  - Menyisipkan page break sebelum tiap Heading tingkat 1 (bab,
    halaman awal, daftar rujukan, lampiran).
  - Memberi nomor bab/subbab manual: "BAB I", "1.1", "1.1.1", dst.
    (menggantikan opsi --number-sections).
  - Mengubah @@APPENDIX@@ menjadi mode lampiran ("Lampiran N").
  - Mengubah @@REFS@@ menjadi Div id="refs" tempat citeproc menaruh
    Daftar Rujukan (tepat sebelum lampiran).

Penanda berasal dari docs/pandoc/preprocess.lua.
--------------------------------------------------------------------]]

local pagebreak = pandoc.RawBlock(
  "openxml",
  '<w:p><w:r><w:br w:type="page"/></w:r></w:p>'
)

local ROMANS = {
  "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X",
  "XI", "XII", "XIII", "XIV", "XV", "XVI", "XVII", "XVIII", "XIX", "XX",
}

local function to_roman(n)
  return ROMANS[n] or tostring(n)
end

local function has_class(el, name)
  for _, c in ipairs(el.classes or {}) do
    if c == name then return true end
  end
  return false
end

-- Judul yang tidak diberi nomor walau levelnya 1.
local UNNUMBERED_TITLES = {
  ["DAFTAR RUJUKAN"] = true,
  ["RINGKASAN"] = true,
  ["SUMMARY"] = true,
  ["KATA PENGANTAR"] = true,
  ["RIWAYAT HIDUP"] = true,
  ["REFERENCES"] = true,
}

local state = {
  chapter = 0,
  section = 0,
  subsection = 0,
  subsubsection = 0,
  appendix = false,
}

local function is_marker(el, marker)
  if el.t ~= "Str" then return false end
  return el.text == marker
end

local function para_marker(block)
  if block.t ~= "Para" and block.t ~= "Plain" then return nil end
  if #block.content == 1 and is_marker(block.content[1], "@@PAGEBREAK@@") then
    return "pagebreak"
  end
  if #block.content == 1 and is_marker(block.content[1], "@@REFS@@") then
    return "refs"
  end
  if #block.content == 1 and is_marker(block.content[1], "@@APPENDIX@@") then
    return "appendix"
  end
  return nil
end

-- Penanda nomor bab untuk ekspor sebagian (excerpt):
-- @@CHAPSTART:n@@ memaksa bab berikutnya bernomor n.
local function chapstart_num(block)
  if block.t ~= "Para" and block.t ~= "Plain" then return nil end
  if #block.content == 1 and block.content[1].t == "Str" then
    local n = block.content[1].text:match("^@@CHAPSTART:(%d+)@@$")
    if n then return tonumber(n) end
  end
  return nil
end

local function prefix_content(el, prefix)
  local new = pandoc.Inlines({ pandoc.Str(prefix), pandoc.Space() })
  new:extend(el.content)
  el.content = new
end

function Header(el)
  local blocks = { pagebreak }
  local title = pandoc.utils.stringify(el.content)

  if el.level == 1 then
    local skip = has_class(el, "unnumbered") or UNNUMBERED_TITLES[string.upper(title)]
    if skip then
      blocks[#blocks + 1] = el
      return blocks
    end

    state.chapter = state.chapter + 1
    state.section = 0
    state.subsection = 0
    state.subsubsection = 0

    local label
    if state.appendix then
      label = "Lampiran " .. tostring(state.chapter)
    else
      label = "BAB " .. to_roman(state.chapter)
    end
    el.content = pandoc.Inlines({
      pandoc.Str(label),
      pandoc.LineBreak(),
      pandoc.Str(string.upper(title)),
    })
    blocks[#blocks + 1] = el
    return blocks
  elseif el.level == 2 then
    state.section = state.section + 1
    state.subsection = 0
    state.subsubsection = 0
    prefix_content(el, string.format("%d.%d", state.chapter, state.section))
    return el
  elseif el.level == 3 then
    state.subsection = state.subsection + 1
    state.subsubsection = 0
    prefix_content(el, string.format("%d.%d.%d", state.chapter, state.section, state.subsection))
    return el
  elseif el.level == 4 then
    state.subsubsection = state.subsubsection + 1
    prefix_content(el, string.format("%d.%d.%d.%d",
      state.chapter, state.section, state.subsection, state.subsubsection))
    return el
  end
  return el
end

function Para(el)
  local cn = chapstart_num(el)
  if cn then
    state.chapter = cn - 1
    state.section = 0
    state.subsection = 0
    state.subsubsection = 0
    return {}
  end
  local kind = para_marker(el)
  if kind == "pagebreak" then return { pagebreak } end
  if kind == "refs" then
    -- citeproc hanya mengisi Div id="refs"; judul bagian ditambahkan di sini.
    return {
      pagebreak,
      pandoc.Header(1, { pandoc.Str("DAFTAR RUJUKAN") },
        pandoc.Attr("", { "unnumbered" })),
      pandoc.Div({}, pandoc.Attr("refs")),
    }
  end
  if kind == "appendix" then
    state.appendix = true
    state.chapter = 0
    state.section = 0
    state.subsection = 0
    state.subsubsection = 0
    return {}
  end
  return nil
end

function Plain(el)
  return Para(el)
end
```

<a id="f-docs-pandoc-preprocess-lua"></a>

## `docs/pandoc/preprocess.lua`

Ukuran 6,309 byte &middot; 207 baris &middot; sha256 `9a9ed1f9e3db` &middot; encoding `utf-8-sig`

```lua
--[[------------------------------------------------------------------
preprocess.lua - Praproses sumber LaTeX untuk konversi DOCX (pandoc).

Tugas:
  1. Mengekspansi \input{...} secara rekursif menjadi satu berkas datar.
  2. Mengganti \csvautotabular[opsi]{berkas.csv} dengan lingkungan
     tabular LaTeX yang dihasilkan dari isi CSV, agar pandoc dapat
     membacanya sebagai tabel biasa.
  3. Menormalkan lingkungan matematika (align -> aligned, buang \notag).
  4. Menandai \clearpage/\newpage, \appendix, dan lokasi daftar rujukan
     dengan penanda teks yang diolah docs/pandoc/postprocess.lua.

Dijalankan lewat:  pandoc lua preprocess.lua <driver.tex> <keluaran.tex>
Direktori kerja HARUS direktori src/ agar \input dan path CSV relatif
benar (sama seperti excerpt.ps1).

Catatan: parser CSV di sini menangani pemisah koma, tanda kutip ganda,
dan koma di dalam tanda kutip pada satu baris. Bidang yang membentang
beberapa baris belum didukung.
--------------------------------------------------------------------]]

local driver = arg[1]
local output = arg[2]

if not driver or not output then
  io.stderr:write("Pemakaian: pandoc lua preprocess.lua <driver.tex> <keluaran.tex>\n")
  os.exit(1)
end

local function read_file(path)
  local f, err = io.open(path, "rb")
  if not f then
    error("Tidak bisa membuka berkas: " .. path .. " (" .. tostring(err) .. ")")
  end
  local content = f:read("*a")
  f:close()
  return content
end

local function write_file(path, content)
  local f, err = io.open(path, "wb")
  if not f then
    error("Tidak bisa menulis berkas: " .. path .. " (" .. tostring(err) .. ")")
  end
  f:write(content)
  f:close()
end

local function dirname(path)
  local d = path:match("^(.*)[/\\][^/\\]*$")
  if d == nil or d == "" then return "." end
  return d
end

-- Escape karakter khusus LaTeX pada satu nilai sel.
local PLACEHOLDER = "\1"
local function latex_escape(s)
  s = s:gsub("\\", PLACEHOLDER)
  s = s:gsub("&", "\\&")
  s = s:gsub("%%", "\\%%")
  s = s:gsub("%$", "\\$")
  s = s:gsub("#", "\\#")
  s = s:gsub("_", "\\_")
  s = s:gsub("{", "\\{")
  s = s:gsub("}", "\\}")
  s = s:gsub("~", "\\textasciitilde{}")
  s = s:gsub("%^", "\\textasciicircum{}")
  s = s:gsub(PLACEHOLDER, "\\textbackslash{}")
  return s
end

-- Pecah satu baris CSV menjadi daftar bidang (dukung tanda kutip ganda).
local function split_csv_line(line)
  local fields = {}
  local cur = {}
  local in_quotes = false
  local i = 1
  local n = #line
  while i <= n do
    local c = line:sub(i, i)
    if in_quotes then
      if c == '"' then
        if line:sub(i + 1, i + 1) == '"' then
          cur[#cur + 1] = '"'
          i = i + 1
        else
          in_quotes = false
        end
      else
        cur[#cur + 1] = c
      end
    else
      if c == '"' then
        in_quotes = true
      elseif c == "," then
        fields[#fields + 1] = table.concat(cur)
        cur = {}
      else
        cur[#cur + 1] = c
      end
    end
    i = i + 1
  end
  fields[#fields + 1] = table.concat(cur)
  return fields
end

-- Bangun lingkungan tabular LaTeX dari sebuah berkas CSV.
local function csv_to_tabular(path)
  local text = read_file(path)
  text = text:gsub("\r\n", "\n"):gsub("\r", "\n")

  local rows = {}
  for line in text:gmatch("[^\n]*") do
    if line:gsub("%s", "") ~= "" then
      rows[#rows + 1] = split_csv_line(line)
    end
  end

  if #rows == 0 then
    return "% CSV kosong: " .. path
  end

  local ncol = 0
  for _, row in ipairs(rows) do
    if #row > ncol then ncol = #row end
  end

  local spec = "|" .. string.rep("l|", ncol)
  local out = { "\\begin{tabular}{" .. spec .. "}", "\\hline" }
  for _, row in ipairs(rows) do
    local cells = {}
    for c = 1, ncol do
      cells[c] = latex_escape(row[c] or "")
    end
    out[#out + 1] = table.concat(cells, " & ") .. " \\\\"
    out[#out + 1] = "\\hline"
  end
  out[#out + 1] = "\\end{tabular}"
  return table.concat(out, "\n")
end

-- Normalisasi lingkungan math agar dapat dikonversi ke OMML oleh pandoc.
-- texmath tidak menangani \notag/\nonumber dan lebih baik dengan "aligned".
local function normalize_math(content)
  content = content:gsub("\\begin{align%*?}", "\\[\\begin{aligned}")
  content = content:gsub("\\end{align%*?}", "\\end{aligned}\\]")
  content = content:gsub("\\notag", "")
  content = content:gsub("\\nonumber", "")
  return content
end

-- Pandoc keliru memasangkan \begingroup dengan kurung kelompok di sekitarnya
-- (mis. longtable yang dibungkus "{ ... }"), sehingga muncul galat "unexpected }".
-- Buang penanda kelompok eksplisit ini; efeknya tidak diperlukan di DOCX.
local function normalize_groups(content)
  content = content:gsub("\\begingroup", "")
  content = content:gsub("\\endgroup", "")
  return content
end

-- Tandai struktur dokumen dengan penanda teks yang dibaca
-- postprocess.lua:
--   \clearpage/\newpage -> @@PAGEBREAK@@
--   \appendix           -> @@REFS@@ @@APPENDIX@@
--     (daftar rujukan diletakkan tepat sebelum lampiran)
local function normalize_markers(content)
  content = content:gsub("\\clearpage", "\n\n@@PAGEBREAK@@\n\n")
  content = content:gsub("\\newpage", "\n\n@@PAGEBREAK@@\n\n")
  content = content:gsub("\\appendix", "\n\n@@REFS@@\n\n@@APPENDIX@@\n\n")

  -- Gabungkan penanda halaman yang berurutan dan buang spasi berlebih.
  content = content:gsub("(@@PAGEBREAK@@%s*)+", "@@PAGEBREAK@@\n\n")
  return content
end

local function expand(content, base, depth)
  depth = depth or 0
  if depth > 30 then
    error("\\input terlalu dalam; kemungkinan rekursi tak berujung.")
  end

  content = content:gsub("\\input%s*{([^}]*)}", function(p)
    local f = p
    if not f:match("%.tex$") then f = f .. ".tex" end
    local full = base .. "/" .. f
    return expand(read_file(full), dirname(full), depth + 1)
  end)

  -- \csvautotabular[opsi]{berkas}
  content = content:gsub("\\csvautotabular%s*%b[]%s*{([^}]*)}", function(p)
    return csv_to_tabular(p)
  end)
  -- \csvautotabular{berkas}
  content = content:gsub("\\csvautotabular%s*{([^}]*)}", function(p)
    return csv_to_tabular(p)
  end)

  return content
end

local source = read_file(driver)
local expanded = expand(source, ".", 0)
expanded = normalize_math(expanded)
expanded = normalize_groups(expanded)
expanded = normalize_markers(expanded)
write_file(output, expanded)
```

---

# 7. Data Contoh (CSV)

<a id="f-src-resources-chapter-3-sample-components-csv"></a>

## `src/resources/chapter-3-sample-components.csv`

Ukuran 167 byte &middot; 5 baris &middot; sha256 `2941619ff6d3` &middot; encoding `utf-8-sig`

```csv
Komponen,Deskripsi,Teknologi
Frontend,Antarmuka pengguna,React
Backend,Layanan API,Node.js
Database,Penyimpanan data,PostgreSQL
Cache,Penyimpanan sementara,Redis
```

<a id="f-src-resources-chapter-3-sample-requirements-csv"></a>

## `src/resources/chapter-3-sample-requirements.csv`

Ukuran 190 byte &middot; 5 baris &middot; sha256 `672a866a61b6` &middot; encoding `utf-8-sig`

```csv
ID,Kebutuhan,Prioritas,Status
FR-01,Autentikasi pengguna,Tinggi,Diterima
FR-02,Manajemen data,Tinggi,Diterima
FR-03,Ekspor laporan,Sedang,Ditinjau
FR-04,Notifikasi email,Rendah,Ditunda
```

---

# 8. Dokumentasi Repositori

<a id="f-changelog-md"></a>

## `CHANGELOG.md`

Ukuran 3,364 byte &middot; 67 baris &middot; sha256 `d18b29c29b6c` &middot; encoding `utf-8-sig`

```markdown
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
```

<a id="f-readme-md"></a>

## `README.md`

Ukuran 8,606 byte &middot; 165 baris &middot; sha256 `e8c48a4e9f23` &middot; encoding `utf-8-sig`

````markdown
# Templat LaTeX Skripsi Universitas Negeri Malang (UM)

[![Build](https://github.com/petrabarus/if-itb-latex/actions/workflows/build.yml/badge.svg)](https://github.com/petrabarus/if-itb-latex/actions/workflows/build.yml)

Templat LaTeX skripsi (S-1) yang mengikuti **Pedoman Penulisan Karya Ilmiah Universitas Negeri Malang (Edisi 2017)**: margin 4/3/3/3 cm, Times New Roman 12 pt, spasi 1,5, indent paragraf 1,2 cm, penomoran bab "BAB I" dengan subbab `1.1`, gambar/tabel bernomor per bab, dan daftar rujukan gaya APA (`biblatex-apa` + `biber`).

Diadaptasi dari templat Tesis IF-ITB oleh Petra Novandi / Steven Lolong. Silakan gunakan, modifikasi, dan sebarkan.

Silakan mengunduh, menggunakan, memodifikasi, dan menyebarkan templat ini. :)

## Memulai

Cara termudah untuk menggunakan templat ini:

1. **Fork** repositori ini di GitHub ke akun Anda.
2. **Clone** fork Anda ke komputer lokal.
3. **Tulis** tesis Anda — mulai dari `src/thesis.tex` (judul dan penulis), lalu isi berkas di `src/chapters/`.
4. **Bangun** PDF dengan `make` (lihat [Penggunaan](#penggunaan)), atau **push** ke branch `main`/`master` di fork Anda untuk membangun PDF otomatis di GitHub Actions (lihat [CI / Build Otomatis](#ci--build-otomatis)).

Anda tidak perlu mengunduh arsip ZIP atau membuat proyek LaTeX dari nol. Cukup fork, clone, tulis, dan kompilasi — lokal atau lewat GitHub Actions.

## Kebutuhan

Templat ini membutuhkan TeX Live (Linux/macOS) atau MiKTeX/TeX Live (Windows) beserta paket berikut:

- `texlive-latex-recommended`, `texlive-latex-extra`, `texlive-fonts-recommended`
- `texlive-bibtex-extra`, `biber`, `xzdec`, `texlive-lang-other`
- `latexmk`

Pada Ubuntu/Debian, instalasi dapat dilakukan dengan perintah berikut:

```bash
sudo apt-get -qq update && sudo apt-get install -y --no-install-recommends \
    texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended \
    texlive-bibtex-extra biber xzdec texlive-lang-other latexmk
```

## Penggunaan

Templat ini dilengkapi skrip kompilasi. Untuk membangun dokumen:

**Linux/macOS:**

```bash
make          # bersihkan lalu bangun
make build    # bangun saja (tanpa clean)
make validate # periksa sumber LaTeX dengan chktex
make clean    # hapus artefak build
```

**Windows:**

```bat
make.bat
```

Hasil kompilasi berada di `dist/thesis.pdf`. File sementara latexmk disimpan di direktori `build/` (keduanya diabaikan oleh git).

## Ekspor ke Word (DOCX)

Seluruh skripsi dapat diekspor ke Word (`.docx`) yang dapat diedit menggunakan [pandoc](https://pandoc.org/installing.html) 3.x. Sumbernya sama dengan PDF, jadi tidak ada isi yang perlu ditulis dua kali.

**Windows (PowerShell):**

```powershell
.\docx.ps1                 # -> dist/thesis.docx
.\docx.ps1 -Nama "draft"   # -> dist/draft.docx
```

**Command Prompt:** `docx.bat`

**Linux/macOS:**

```bash
make docx                  # -> dist/thesis.docx
```

Ekspor **sebagian** (mis. satu bab) juga bisa ke Word:

```powershell
.\excerpt.ps1 -Pilih "bab2" -Format docx   # -> dist/excerpt-bab2.docx
.\excerpt.ps1 -Pilih "bab1" -Format both   # PDF + Word sekaligus
```

Proses ini mengekspansi `\input{...}` dan `\csvautotabular{...}` lebih dulu (via `docs/pandoc/preprocess.lua`), lalu mengonversi memakai `docs/pandoc/reference.docx` (gaya & margin UM), `docs/pandoc/apa.csl` (sitasi APA), dan filter `docs/pandoc/postprocess.lua` (page break, penomoran "BAB I"/"1.1", judul DAFTAR RUJUKAN). Driver `src/thesis-docx.tex` memuat bab yang sama dengan `src/thesis.tex` — **ubah keduanya bila menambah/menghapus bab.**

Isi DOCX: Ringkasan → Summary → Kata Pengantar → DAFTAR ISI → BAB I–V → DAFTAR RUJUKAN → Lampiran → Riwayat Hidup, masing-masing di halaman baru. Sudah rapi: teks, bab/subbab, rumus (OMML), tabel (termasuk dari CSV), gambar, serta sitasi & Daftar Rujukan gaya APA. **Halaman tata letak** (sampul, logo, halaman judul, persetujuan, pengesahan, pernyataan) hanya ada di PDF. Daftar tabel/gambar dan rujukan persamaan belum otomatis. Rincian ada di [docs/TUTORIAL.md](docs/TUTORIAL.md#ekspor-ke-word-docx).

## Struktur Proyek

```text
src/
├── thesis.tex              # Berkas utama; atur judul, penulis, dan daftar bab
├── thesis-docx.tex         # Driver ekspor DOCX (pandoc); jaga sinkron dengan thesis.tex
├── references.bib          # Database referensi bibliografi
├── config/
│   ├── if-itb-thesis.sty   # Pengaturan format (aturan UM)
│   ├── informations.tex    # Metadata skripsi — SUNTING DI SINI SAJA
│   └── hypenation-id.tex   # Aturan pemenggalan kata Bahasa Indonesia
├── resources/
│   ├── cover-ganesha.jpg   # PLACEHOLDER logo — ganti dengan logo UM
│   ├── chapter-2-infrastructure-diagram.png
│   ├── chapter-3-sample-requirements.csv
│   └── chapter-3-sample-components.csv
└── chapters/
    ├── cover.tex           # Halaman sampul (Lampiran 1a)
    ├── logo.tex            # Lembar logo (Lampiran 2)
    ├── title-page.tex      # Halaman judul (Lampiran 3a)
    ├── approval.tex        # Persetujuan pembimbing (Lampiran 4a)
    ├── endorsement.tex     # Persetujuan & pengesahan (Lampiran 5a)
    ├── statement.tex       # Pernyataan keaslian (Lampiran 6)
    ├── abstract-id.tex     # Ringkasan (Lampiran 7a)
    ├── abstract-en.tex     # Summary (versi Inggris)
    ├── forewords.tex       # Kata pengantar
    ├── biography.tex       # Riwayat hidup (Lampiran 13)
    ├── chapter-1.tex … chapter-5.tex
    └── appendix-1.tex, appendix-2.tex
```

## Menulis Tesis

- Isi seluruh metadata (judul, penulis, NIM, jurusan, pembimbing, kata kunci, dll.) **hanya di `src/config/informations.tex`** — semua halaman front matter mengambil nilainya dari sana.
- Ganti logo di `src/resources/cover-ganesha.jpg` dengan logo UM (diameter 3 cm untuk sampul, 8 cm untuk lembar logo).
- Tulis isi bab di `src/chapters/chapter-N.tex`. Untuk menambah bab baru, buat berkas baru lalu tambahkan `\input{chapters/chapter-N}` di `thesis.tex`.
- Hierarki judul UM (Bab 8) sudah otomatis: `\chapter` → "BAB I" (tengah, kapital), `\section` → subbab kapital, `\subsection` → sub-sub bab, `\subsubsection` → bagian (miring). Nomor subbab arabic (`1.1`).
- Tambahkan referensi di `src/references.bib` dan sitasi dengan `\parencite{key}`/`\textcite{key}`. Daftar Rujukan otomatis gaya APA.
- **Gambar**: letakkan `\caption` di **bawah** gambar. **Tabel**: letakkan `\caption` di **atas** tabel (Pedoman UM). Keduanya bernomor per bab (`Gambar 3.1`, `Tabel 3.1`).

### Tabel dari CSV

Templat mendukung tabel yang diisi dari berkas CSV menggunakan paket `csvsimple` (termasuk dalam `texlive-latex-extra`). Contoh ada di Bab III (`Rancangan Solusi`):

```latex
\begin{table}[ht]
    \centering
    \caption{Kebutuhan fungsional sistem}
    \label{tab:sample-requirements}
    \csvautotabular{resources/chapter-3-sample-requirements.csv}
\end{table}
```

Tabel dengan `\caption` otomatis masuk ke **Daftar Tabel**. Simpan berkas CSV di `src/resources/` dan sesuaikan path relatif dari direktori `src/`.

## CI / Build Otomatis

GitHub Actions menjalankan job **Validate LaTeX** (`make validate` dengan chktex dan pemeriksaan berkas resource) pada pull request ke `main`/`master`. Job **Build PDF** hanya dijalankan pada push ke `main`/`master`.

Jika Anda tidak ingin membangun PDF secara lokal, cukup **push** perubahan ke branch `main` atau `master` di fork repositori Anda. GitHub Actions akan mengompilasi tesis dan mengunggah hasilnya sebagai artifact **`thesis-pdf`**. Job terpisah juga membuat DOCX dan mengunggahnya sebagai artifact **`thesis-docx`**. Unduh keduanya dari tab **Actions** → pilih workflow run → bagian **Artifacts**:

![Unduh thesis-pdf dari GitHub Actions Artifacts](docs/artifacts.png)

## Changelog

Lihat [CHANGELOG.md](CHANGELOG.md) untuk riwayat perubahan.

## Kontribusi

Templat ini dapat digunakan secara gratis, akan tetapi penulis sangat berharap adanya kritik serta saran dari pengguna untuk meningkatkan kualitas hasil dan penggunaan templat ini.

Kritik dan saran dapat dikirim melalui [GitHub Issues](https://github.com/petrabarus/if-itb-latex/issues).

## Terima Kasih

- [Steven Lolong](https://github.com/steven-lolong) atas pemberian templat LaTeX yang asli.
- [Peb Ruswono Aryan](https://github.com/pebbie) atas bantuan pelengkapan struktur dokumen.
````

<a id="f-docs-catatan-pakai-md"></a>

## `docs/CATATAN-PAKAI.md`

Ukuran 3,316 byte &middot; 84 baris &middot; sha256 `13acfc078ea9` &middot; encoding `utf-8-sig`

````markdown
# Catatan Singkat — Templat Skripsi LaTeX UM

Cheat-sheet satu halaman. Panduan lengkap ada di [TUTORIAL.md](TUTORIAL.md).

## Build jadi PDF

| Sistem | Perintah |
|---|---|
| Windows (Command Prompt) | `make.bat` |
| Windows (PowerShell) | `.\make.bat` (wajib pakai `.\`) |
| Linux/macOS | `make` (bersih lalu bangun) atau `make build` (bangun saja) |

Hasil: **`dist/thesis.pdf`**. File sementara ada di `build/` dan aman dihapus.

## Alur menulis (tiga hal utama)

1. **Metadata** — isi judul, nama, NIM, pembimbing, dll. **hanya di**
   `src/config/informations.tex`. Ganti isi `\newcommand{...}{...}`, jangan
   ubah nama makro.
2. **Isi bab** — tulis di `src/chapters/chapter-1.tex` sampai `chapter-5.tex`.
   Ganti semua `\blindtext` dengan tulisan asli.
3. **Gambar/tabel** — simpan berkas di `src/resources/`. Gambar: `\caption`
   di **bawah**; tabel: `\caption` di **atas**. Tabel bisa dibaca dari CSV via
   `\csvautotabular{resources/namafile.csv}`.

## Referensi

- Tambah entri di `src/references.bib`.
- Sitasi dengan `\parencite{key}` atau `\textcite{key}`.
- Daftar Rujukan gaya APA dibuat otomatis (butuh `biber`, sudah ditangani
  `latexmk`).

## Ekspor sebagian (untuk kirim ke pembimbing)

```powershell
.\excerpt.ps1 -Pilih "bab2"        # BAB II utuh
.\excerpt.ps1 -Pilih "bab2[1]"     # hanya section 1 BAB II
.\excerpt.ps1 -Pilih "bab2" -Format docx   # Word: dist/excerpt-bab2.docx

# Seluruh bagian awal + Bab I-III + Daftar Rujukan (untuk kirim ke pembimbing)
.\excerpt.ps1 -Pilih "cover,logo,title,approval,endorsement,statement,ringkasan,summary,forewords,daftarisi,daftartabel,daftargambar,daftarrumus,bab1,bab2,bab3,pustaka" -Nama "awal-sampai-bab3"
```

```bat
excerpt.bat bab2
excerpt.bat bab2 "" docx
```

Hasil: `dist/excerpt-<nama>.pdf` (atau `.docx` dengan `-Format docx`).
Di menu interaktif, format keluaran ditanyakan di akhir (1 = PDF, 2 = Word, 3 = keduanya).
Kode `daftarisi`, `daftartabel`, `daftargambar`, dan `daftarrumus` hanya tersedia
pada keluaran PDF; pada DOCX hanya Daftar Isi yang dibuat (lewat `--toc` pandoc).

## Ekspor ke Word (DOCX)

Butuh **pandoc 3.x** (Windows: `winget install --id JohnMacFarlane.Pandoc -e`).

| Sistem | Perintah | Hasil |
|---|---|---|
| Windows (PowerShell) | `.\docx.ps1` | `dist/thesis.docx` |
| Windows (Command Prompt) | `docx.bat` | `dist/thesis.docx` |
| Linux/macOS | `make docx` | `dist/thesis.docx` |

Nama file bebas: `.\docx.ps1 -Nama "draft"` → `dist/draft.docx`.

Sumbernya sama dengan PDF. Rumus jadi OMML (bisa diedit), tabel termasuk dari CSV,
dan sitasi APA otomatis. Isi DOCX: Ringkasan → Summary → Kata Pengantar → DAFTAR ISI
→ BAB I–V → DAFTAR RUJUKAN → Lampiran → Riwayat Hidup, tiap bagian di halaman baru.
Halaman tata letak (sampul, halaman judul, persetujuan, pengesahan, pernyataan) hanya
ada di PDF. Detail: [TUTORIAL.md](TUTORIAL.md#ekspor-ke-word-docx).

## Validasi dan bersih

- `make validate` — periksa sumber dengan chktex.
- `make clean` — hapus artefak build.

## Kalau ada masalah

- Masih ada tulisan Latin acak? Ganti sisa `\blindtext`.
- Sitasi tampil tanda tanya? Jalankan clean build (`make.bat` / `make`).
- File diubah tapi PDF tidak berubah? Pastikan file itu memang di-`\input`
  di `src/thesis.tex`.

Detail lengkap dan FAQ: [TUTORIAL.md](TUTORIAL.md).
````

<a id="f-docs-catatan-perbaikan-md"></a>

## `docs/CATATAN-PERBAIKAN.md`

Ukuran 9,489 byte &middot; 153 baris &middot; sha256 `0d6331edb16e` &middot; encoding `utf-8-sig`

```markdown
# Catatan Perbaikan

Log perbaikan teknis dan *troubleshooting* pada templat ini. Ditulis secara
kronologis; entri terbaru di atas.

---

## 2026-09-03 — Fitur ekspor selektif `excerpt`

### Ditambahkan

`excerpt.bat` / `excerpt.ps1` untuk membangun PDF hanya dari bagian skripsi
yang dipilih, tanpa mengubah `thesis.tex` atau `make.bat`.

Cara pakai:
- **PowerShell / terminal editor (VS Code, Zed, Windows Terminal):** jalankan
  `.\excerpt.ps1` langsung agar menu muncul di terminal yang sama.
- **Command Prompt / klik ganda:** `excerpt.bat` (tanpa `.\`).

| Perintah (PowerShell) | Hasil |
|----------|-------|
| `.\excerpt.ps1` | menu interaktif (ketik kode, pisahkan koma) |
| `.\excerpt.ps1 -Pilih "bab2"` | seluruh BAB II → `dist/excerpt-bab2.pdf` |
| `.\excerpt.ps1 -Pilih "bab1,ringkasan"` | campur halaman awal + bab |
| `.\excerpt.ps1 -Pilih "bab2[1]"` | hanya section 1 (Dasar Teori) BAB II |
| `.\excerpt.ps1 -Pilih "bab2[1,2]"` | section 1 dan 2 BAB II |
| `.\excerpt.ps1 -Pilih lamp1` | Lampiran 1 |
| `.\excerpt.ps1 -Pilih "bab2[1]" -Nama review` | nama file bebas `dist/excerpt-review.pdf` |

> Catatan: `excerpt.bat` menelurkan PowerShell baru; di terminal editor yang
> sudah PowerShell (mis. Zed) hal ini bisa membuka jendela pop-up terpisah.
> Karena itu di editor gunakan `.\excerpt.ps1` langsung.

Kode unit: `cover logo title approval endorsement statement ringkasan summary
forewords bab1..bab5 lamp1..lamp2 bio`. Nomor section dalam `babN[x,y]` diurut
sesuai kemunculan di file (dibaca dari `\section`).

Cara kerja: skrip membuat driver sementara `src/_excerpt.tex` (preamble sama
dengan `thesis.tex`, `\setcounter{chapter}` untuk mempertahankan label "BAB N",
`\appendix` untuk lampiran, `\printbibliography` bila ada bab/lampiran),
menjalankan `latexmk`, menyalin ke `dist/excerpt-<nama>.pdf`, lalu membersihkan
artefak sementara. Untuk bagian bab, file diiris per rentang baris `\section`
sehingga `\subsection`/`\subsubsection` ikut bersama induknya.

### Catatan implementasi

- PowerShell: argumen native `-outdir=$path` tidak diekspansi bila ditulis
  langsung; gunakan array `@(..., "-outdir=$path", ...)` + `& latexmk @args`.
- Fungsi PowerShell yang mengembalikan array perlu `@(…)` di sisi pemanggil
  agar tetap berupa array walau isinya satu elemen (`Get-BabSections`,
  `Resolve-Seleksi`).
- Urutan unit dalam PDF mengikuti urutan di `thesis.tex`, bukan urutan ketik.

---

## 2026-09-03 — Ribuan *diagnostic* palsu di panel Problems VS Code (chktex)

### Gejala

Panel Problems VS Code menampilkan banyak peringatan pada hampir semua berkas
`src/chapters/*.tex` (1–12 per berkas) dan terlihat seperti error. Padahal
`make.bat` berhasil dan PDF terbit normal.

### Akar masalah & perbaikan

| No | Akar masalah | Perbaikan | Berkas |
|----|--------------|-----------|--------|
| 1 | Ekstensi LaTeX-Workshop menjalankan `chktex` sebagai linter. `chktex` bawaan MiKTeX melakukan pemindaian pemeliharaan/manajemen paket saat mulai dan menggantung lama (tidak ada keluaran), sehingga laporan lint basi/menumpuk dan tampak seperti banyak error. | Tambah pengaturan *workspace* agar LaTeX-Workshop memanggil chktex dengan bendera MiKTeX yang menonaktifkan pemeliharaan/diagnosa/pemasang otomatis. | `.vscode/settings.json` (baru) |
| 2 | Setelah chktex jalan normal, banyak peringatan nyata muncul: `Command terminated with space` (Warning 1) pada baris yang diakhiri `\macrokata`/`\\`, terutama `\blindtext`, `\penulis`, `\nim`, `\katakunci`, `\kotatanggal`, `\normalfont`, dll. | Beri `%` di akhir baris (menghentikan spasi setelah makro) pada ±35 baris di 18 berkas; tidak melemahkan aturan lint. | `src/chapters/*.tex`, `src/config/if-itb-thesis.sty` |
| 3 | `thesis.tex` memicu Warning 27 berulang (``Could not execute LaTeX command``) untuk setiap `\input{...}` — positif palsu karena chktex tidak bisa menelusuri `\input` lintas direktori saat memeriksa berkas tunggal. | Sembunyikan Warning 27 di `.chktexrc`. | `.chktexrc` |
| 4 | `if-itb-thesis.sty` baris `\titleformat{\subsubsection}` memicu Warning 6 (koreksi italik `\/` hilang). | Sisipkan komentar `% chktex 6` di baris tersebut (penekanan per baris). | `src/config/if-itb-thesis.sty` |
| 5 | `forewords.tex` contoh teks memakai kutip lurus `"`, elipsis `....`, dan spasi sebelum tanda baca (Warning 11/18/26; sudah disembunyikan rc, tetapi tetap dibersihkan). | Ganti `"…"` dengan `` ``…'' ``, `....` dengan `\ldots`, dan rapi ruang sebelum tanda baca. | `src/chapters/forewords.tex` |

### Hasil verifikasi

- `chktex -q -l .chktexrc` pada **semua** berkas sumber (bab, `thesis.tex`,
  `.sty`, `informations.tex`) = **0 temuan**.
- `make.bat` tetap sukses: `dist/thesis.pdf` 32 halaman, ±337 KB.

### Catatan

- Paket font `luxi` yang disebut dalam log pemeliharaan MiKTeX tidak tersedia
  di repositori paket MiKTeX (bukan nama paket yang bisa dipasang); peringatan
  itu tidak berbahaya dan dapat diabaikan. Bendera `--miktex-disable-*` di
  `.vscode/settings.json` membuat chktex tidak menggantung di editor.
- Peringatan ``So far, you have not checked for MiKTeX updates`` di setiap
  perintah MiKTeX hanya pengingat pembaruan; tidak memengaruhi hasil.

---

## 2026-09-03 — Sampul & halaman judul memakai logo Ganesha; PDF basi

### Gejala

Sampul dan halaman judul masih menampilkan logo Ganesha (placeholder lama)
walau `src/resources/logo-um.png` sudah disiapkan. Selain itu `dist/thesis.pdf`
tampak tidak segar: hasil build `make.bat` dan hasil kompilasi manual
(langsung `latexmk` di `src/`) bisa tertukar.

### Akar masalah & perbaikan

| No | Akar masalah | Perbaikan | Berkas |
|----|--------------|-----------|--------|
| 1 | `cover.tex` masih menunjuk `cover-ganesha.jpg`; hanya `title-page.tex` dan `logo.tex` yang sudah memakai `logo-um.png`. | Ganti referensi sampul ke `resources/logo-um.png` (lebar 3 cm) dan rapikan komentar lama. | `src/chapters/cover.tex` |
| 2 | `logo-um.png` beresolusi sangat besar (9651×9654 px, 4,3 MB) sehingga PDF membengkak ke ±3 MB. | Turunkan resolusinya ke 1200×1200 px (161 KB) dengan *high-quality bicubic*; transparansi dipertahankan. PDF kini ±340 KB. Cadangan asli disimpan di `%TEMP%`. | `src/resources/logo-um.png` |
| 3 | `make.bat` hanya membersihkan `build/` dan `dist/`, tidak membersihkan artefak LaTeX yang tertinggal di `src/` (dari `latexmk` manual / editor). Akibatnya `src/thesis.pdf` bisa lebih baru daripada `dist/thesis.pdf` dan membingungkan. | `make.bat` sekarang menghapus artefak `src/thesis.*` (daftar eksplisit, tanpa menyentuh `thesis.tex`), dan mengganti `mkdir -p` (tidak valid di `cmd`) dengan `if not exist ... mkdir`. | `make.bat` |
| 4 | `Makefile` (Linux/CI) tidak membersihkan artefak `src/` yang sama. | Target `clean` ikut menghapus artefak `src/thesis.*`. | `Makefile` |

### Hasil verifikasi

- `dist/thesis.pdf` 32 halaman, ±337 KB, dibuat `make.bat` bersih (folder
  `src/` hanya berisi `thesis.tex`, `paper.tex`, `references.bib`).
- Log kompilasi menunjukkan `resources/logo-um.png` dipakai di halaman 1
  (sampul), 2 (lembar logo), dan 3 (halaman judul); `cover-ganesha.jpg` tidak
  lagi dirujuk berkas mana pun.
- Gambar hasil pengecilan tidak rusak: 1200×1200 px, piksel hitam pekat ±25 %
  dari sampel (logo lingkaran UM di atas latar transparan) — bukan kosong.

---

## 2026-09-03 — `latexmk` tidak bisa dijalankan & build gagal

### Gejala

1. `latexmk -v` gagal dengan pesan:
   > MiKTeX could not find the script engine 'perl' which is required to
   > execute 'latexmk'.
2. Setelah Perl terpasang, `make.bat` masih gagal dua kali: tabel CSV di
   Bab III tidak bisa dibuat, lalu sitasi `\parencite` mematikan kompilasi.

### Akar masalah & perbaikan

| No | Akar masalah | Perbaikan | Berkas |
|----|--------------|-----------|--------|
| 1 | Sistem tidak punya interpreter **Perl**, padahal `latexmk` MiKTeX adalah pembungkus skrip Perl (`runperl.cpp`). | Pasang Strawberry Perl lewat `winget install StrawberryPerl.StrawberryPerl`, lalu muat ulang `PATH` di sesi shell. | lingkungan (bukan berkas repo) |
| 2 | Saat diadaptasi dari ITB ke UM, `\usepackage{csvsimple}` terhapus dari konfigurasi, padahal Bab III memakai `\csvautotabular`. Akibatnya: `! Undefined control sequence. \csvautotabular`. | Kembalikan `\usepackage{csvsimple}`. | `src/config/if-itb-thesis.sty` |
| 3 | `biblatex-apa` **tidak punya** lokalisasi Indonesia (`bahasa-apa.lbx`). Dengan babel bahasa `bahasa`, `\parencite` memanggil makro yang tak terdefinisi (`\datecircaprint`, `\mkbibdateapalongextra`) dan mematikan pdflatex. | Petakan bahasa dokumen ke lokalisasi APA yang tersedia dengan `\DeclareLanguageMapping{bahasa}{american-apa}` setelah pemuatan biblatex. | `src/config/if-itb-thesis.sty` |

### Hasil verifikasi

- `latexmk -v` mencetak versi (Latexmk 4.88) — tidak ada lagi error script engine.
- `make.bat` selesai; `dist/thesis.pdf` terbit (32 halaman).
- Daftar Rujukan terisi; sitasi `knuth2001art` ter-resolve (tidak ada lagi
  peringatan *Citation undefined* / *Empty bibliography* di `build/thesis.log`).

### Catatan

- Jalankan build dari **terminal baru** agar `C:\Strawberry\perl\bin` terbaca
  di `PATH` (PATH yang dimuat ulang manual hanya berlaku untuk sesi itu).
- Peringatan yang tersisa di log tidak menghentikan build dan tidak
  memengaruhi keluaran, antara lain: babel `bahasa` deprecated (pakai
  `indonesian`), `\blindtext` masih dipakai sebagai pengisi, *overfull hbox*,
  dan *headheight* terlalu kecil (12 pt, disarankan ≥ 14,5 pt).
```

<a id="f-docs-tutorial-md"></a>

## `docs/TUTORIAL.md`

Ukuran 36,449 byte &middot; 975 baris &middot; sha256 `574bdc26c60d` &middot; encoding `utf-8-sig`

````markdown
# Tutorial Lengkap: Mengisi dan Menyesuaikan Templat Skripsi LaTeX UM

Panduan langkah-demi-langkah untuk memakai templat ini — dari prasyarat, menjalankan
build pertama, sampai mengisi seluruh isi skripsi dan menghasilkan `dist/thesis.pdf`.

> **Hasil akhir:** satu berkas PDF `dist/thesis.pdf` berisi skripsi Anda yang mengikuti
> Pedoman Penulisan Karya Ilmiah Universitas Negeri Malang (Edisi 2017).

---

## Daftar Isi

1. [Cara pakai panduan ini](#1-cara-pakai-panduan-ini)
2. [Jalur cepat 10 menit](#2-jalur-cepat-10-menit)
3. [Prasyarat dan instalasi](#3-prasyarat-dan-instalasi)
4. [Struktur berkas proyek](#4-struktur-berkas-proyek)
5. [Alur pengisian lengkap](#5-alur-pengisian-lengkap)
   - [Fase 1 Persiapan](#fase-1-persiapan)
   - [Fase 2 Ganti logo](#fase-2-ganti-logo)
   - [Fase 3 Metadata](#fase-3-metadata)
   - [Fase 4 Halaman awal front matter](#fase-4-halaman-awal-front-matter)
   - [Fase 5 Bab satu sampai lima](#fase-5-bab-satu-sampai-lima)
   - [Fase 6 Referensi dan sitasi](#fase-6-referensi-dan-sitasi)
   - [Fase 7 Gambar dan tabel](#fase-7-gambar-dan-tabel)
   - [Fase 8 Lampiran](#fase-8-lampiran)
   - [Fase 9 Verifikasi bertahap](#fase-9-verifikasi-bertahap)
6. [Menambah atau mengurangi bab](#6-menambah-atau-mengurangi-bab)
7. [Menjalankan build dan membersihkan](#7-menjalankan-build-dan-membersihkan)
   - [Membangun hanya sebagian (ekspor pilihan)](#membangun-hanya-sebagian-ekspor-pilihan)
   - [Ekspor ke Word (DOCX)](#ekspor-ke-word-docx)
8. [Validasi dan GitHub Actions](#8-validasi-dan-github-actions)
9. [FAQ pemecahan masalah](#9-faq-pemecahan-masalah)
10. [Daftar periksa akhir](#10-daftar-periksa-akhir)

---

## 1. Cara pakai panduan ini

Panduan ini punya **dua jalur**:

| Jalur | Untuk siapa | Ke mana |
|---|---|---|
| **Jalur cepat** | Baru mulai, ingin lihat PDF pertama secepatnya | [Bagian 2](#2-jalur-cepat-10-menit) |
| **Jalur lengkap** | Akan mengisi seluruh skripsi sampai siap ujian | [Bagian 5](#5-alur-pengisian-lengkap) |

Prinsip penting yang dipakai di seluruh panduan:

- **Satu lokasi metadata.** Judul, nama, NIM, pembimbing, dan lainnya **hanya** diisi di
  `src/config/informations.tex`. Halaman-halaman awal mengambil nilainya dari sana
  secara otomatis. Jangan mengubah teks di file lain yang nilainya sama.
- **Build sering.** Jalankan build setiap selesai beberapa langkah agar error cepat
  ketahuan — bukan menunggu semua isi selesai ditulis.
- **Hindari `\blindtext`.** Semua teks Latin acak (`\blindtext`) hanyalah pengisi.
  Ganti seluruhnya dengan tulisan Anda sebelum dikumpulkan.

> Sudah pernah memakai LaTeX? Lompat langsung ke [Bagian 2](#2-jalur-cepat-10-menit)
> atau [Fase 3](#fase-3-metadata).

---

## 2. Jalur cepat 10 menit

Resep minimal untuk menghasilkan PDF pertama Anda.

1. **Pastikan LaTeX terpasang.** Buka terminal (Windows: *Command Prompt* atau
   *PowerShell*) lalu ketik:
   ```bat
   latexmk -v
   biber --version
   ```
   Jika kedua perintah dikenali, lanjut. Jika tidak, ikuti [Bagian 3](#3-prasyarat-dan-instalasi).

2. **Buka berkas metadata**: `src/config/informations.tex`.
   Ganti nilai `\newcommand{...}{...}` sesuai data Anda — minimal `\judul`, `\penulis`,
   `\nim`. Cara lengkap ada di [Fase 3](#fase-3-metadata).

3. **Jalankan build** dari folder utama proyek (folder yang berisi `make.bat`):
   - Windows: ketik `make.bat` di **Command Prompt**, atau `.\make.bat` di **PowerShell**
     (PowerShell tidak menjalankan perintah dari folder aktif tanpa awalan `.\`).
   - Linux/macOS: `make` (atau `make build`)

   Jalankan pertama kali bisa memakan beberapa menit karena LaTeX mengompilasi dokumen
   beberapa kali dan (di MiKTeX) menginstal paket yang belum ada.

4. **Buka hasilnya**: `dist/thesis.pdf`.

Selesai — PDF templat (masih berisi contoh) sudah jadi. Dari sini, lanjut mengisi
dengan panduan lengkap di [Bagian 5](#5-alur-pengisian-lengkap).

---

## 3. Prasyarat dan instalasi

Templat ini butuh distribusi LaTeX yang lengkap beserta `latexmk` dan `biber`
(dipakai untuk daftar rujukan gaya APA). Bahasa utama dokumen adalah Indonesia, jadi
paket bahasa juga diperlukan.

### Windows - MiKTeX disarankan

1. Unduh MiKTeX dari <https://miktex.org/download> dan instal.
2. Pastikan opsi **Install missing packages on the fly** aktif (default: *Ask me
   first* — pilih **Yes**) agar paket yang kurang diunduh otomatis saat build.
3. Verifikasi instalasi:
   ```bat
   latexmk -v
   biber --version
   ```

> Alternatif: TeX Live untuk Windows juga bisa dipakai. Cara pemakaian template sama.

### Linux atau macOS - TeX Live

Paket yang dibutuhkan (nama paket Ubuntu/Debian):

```bash
sudo apt-get -qq update && sudo apt-get install -y --no-install-recommends \
    texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended \
    texlive-bibtex-extra biber xzdec texlive-lang-other latexmk
```

macOS dapat memasang **MacTeX** (unduh dari <https://tug.org/mactex/>) atau TeX Live
via Homebrew: `brew install --cask mactex`.

### Periksa setelah instalasi

```bash
latexmk -v      # harus mencetak versi latexmk
biber --version # harus mencetak versi biber
pdflatex -v     # harus mencetak versi pdfTeX/MiKTeX
```

---

## 4. Struktur berkas proyek

```
if-itb-latex/
├── make.bat               # skrip build untuk Windows
├── Makefile               # skrip build untuk Linux/macOS (make)
├── excerpt.bat            # (opsional) ekspor sebagian bab/bagian ke PDF (Windows)
├── excerpt.ps1            # mesin di balik excerpt.bat
├── README.md              # deskripsi singkat templat
├── .chktexrc              # konfigurasi chktex (validasi kode LaTeX)
├── .github/workflows/     # CI: build dan validasi otomatis di GitHub
├── docs/                  # dokumentasi (panduan ini)
├── build/                 # artefak sementara kompilasi (diabaikan git, dibuat saat build)
├── dist/                  # HASIL AKHIR: thesis.pdf (dibuat saat build)
└── src/                   # SEMUA sumber dokumen ada di sini
    ├── thesis.tex         # berkas utama — mengatur alur dan daftar bab
    ├── references.bib     # database referensi (BibTeX)
    ├── config/
    │   ├── informations.tex    # METADATA skripsi — sunting di sini
    │   ├── if-itb-thesis.sty   # format dan aturan UM (jarang perlu disentuh)
    │   └── hypenation-id.tex   # aturan pemenggalan kata Indonesia
    ├── resources/         # gambar dan data pendukung
    └── chapters/          # isi per halaman/bab
```

### Peran thesis.tex

`thesis.tex` adalah pengatur alur dokumen: berkas ini menentukan **urutan** dan **isi**
halaman melalui perintah `\input{chapters/nama-file}`. Untuk sekadar menulis skripsi,
Anda **tidak perlu** mengubah file ini — kecuali ingin menambah/mengurangi bab
(lihat [Bagian 6](#6-menambah-atau-mengurangi-bab)).

### Folder build vs dist

- `build/` berisi file sementara hasil kompilasi (`thesis.aux`, `.bbl`, `.log`, dll).
  Jangan diedit; aman dihapus kapan saja.
- `dist/` berisi **satu-satunya hasil yang Anda butuhkan**: `thesis.pdf`.

### Berkas yang ada tapi tidak dipakai

Beberapa berkas di `src/` saat ini **tidak diikutkan** oleh `thesis.tex`. Jangan
bingung jika perubahannya tidak memengaruhi PDF:

| Berkas | Status |
|---|---|
| `src/paper.tex` | Kosong atau sisa templat lama — tidak dipakai |
| `src/chapters/instruction.tex` | Kosong atau sisa templat lama — tidak dipakai |
| `src/chapters/appendix-3.tex` | Kosong — tidak dipakai. Cara mengaktifkannya di [Fase 8](#fase-8-lampiran) |
| `src/chapters/logo.tex`, `cover.tex`, `title-page.tex` | **Dipakai**, tetapi memuat komentar GANTI DENGAN LOGO UM — abaikan komentarnya, ikuti [Fase 2](#fase-2-ganti-logo) |

---

## 5. Alur pengisian lengkap

> Setiap fase menyebutkan berkas yang diedit dan kapan sebaiknya build. Prinsip:
> **metadata dulu, lalu halaman awal, lalu bab demi bab dari depan ke belakang.**

### Fase 1 Persiapan

**Tujuan:** memastikan proyek siap diedit dan build pertama berhasil.

1. Dapatkan salinan proyek ini di komputer Anda (fork + clone, atau salin folder).
2. Pastikan prasyarat terpasang ([Bagian 3](#3-prasyarat-dan-instalasi)).
3. **Uji build awal** (tanpa mengubah apa pun) untuk memastikan lingkungan jalan:
   - Windows: `make.bat` (Command Prompt) atau `.\make.bat` (PowerShell)
   - Linux/macOS: `make`
4. Jika PDF `dist/thesis.pdf` berhasil terbentuk, lingkungan siap.
5. (*Opsional, disarankan*) Buat backup/commit pertama sebelum mulai mengubah isi,
   agar selalu bisa kembali ke keadaan awal.

**Indikator selesai:** `dist/thesis.pdf` terbentuk tanpa error.

---

### Fase 2 Ganti logo

**Tujuan:** menampilkan lambang UM (bukan logo placeholder) di sampul, halaman judul,
dan lembar logo.

Tiga berkas memakai logo — semuanya *dipakai* oleh dokumen:

| Berkas | Ukuran logo | Keterangan |
|---|---|---|
| `src/chapters/cover.tex` | 3 cm (`width=3cm`) | Sampul luar |
| `src/chapters/title-page.tex` | 3 cm (`width=3cm`) | Halaman judul |
| `src/chapters/logo.tex` | 8 cm (`width=8cm`) | Lembar logo (halaman khusus lambang) |

Baris yang mengacu logo di tiap berkas berbentuk:

```latex
\includegraphics[width=3cm]{resources/cover-ganesha.jpg}
```

**Cara mengganti — dua pilihan:**

**Pilihan A (paling sederhana):** timpa berkas placeholder dengan logo UM Anda, tapi
**pertahankan nama dan ekstensi** `cover-ganesha.jpg`. Caranya: simpan gambar logo UM
Anda (format JPG) lalu salin dengan nama persis `resources/cover-ganesha.jpg`
(menggantikan yang lama). Tidak perlu mengubah LaTeX sama sekali.

**Pilihan B (memakai logo yang sudah tersedia di repo):** proyek ini sudah menyertakan
berkas `src/resources/LAMBANG FILLED HITAM.png`. Untuk memakainya, ubah nama berkas
di ketiga file di atas dari `cover-ganesha.jpg` menjadi `LAMBANG FILLED HITAM.png`,
misalnya di `cover.tex`:

```latex
% sebelum
\includegraphics[width=3cm]{resources/cover-ganesha.jpg}
% sesudah
\includegraphics[width=3cm]{resources/LAMBANG FILLED HITAM.png}
```

Ulangi untuk `title-page.tex` (3 cm) dan `logo.tex` (8 cm).

> Catatan (Pedoman UM): diameter lambang **3 cm** pada sampul dan halaman judul, dan
> **8 cm** pada lembar logo. Jika file logo Anda berisi latar putih, pastikan
> gambarnya sudah dirapikan (krop) agar tidak tampak sebagai kotak putih besar.

**Indikator selesai:** logo UM tampil di sampul, halaman judul, dan lembar logo
setelah build.

---

### Fase 3 Metadata

**Berkas:** `src/config/informations.tex`

Ini adalah **satu-satunya** tempat mengisi identitas skripsi. Semua halaman awal
(sampul, judul, persetujuan, pengesahan, pernyataan, ringkasan/summary) membaca nilai
dari berkas ini.

**Aturan emas:**
- Jangan menghapus baris `\newcommand`.
- Jangan mengubah nama makro di dalam kurung kurawal pertama (misal `\judul`).
- Ganti **hanya** isi kurung kurawal kedua dengan teks Anda.
- Jangan menambahkan makro baru di sini (kecuali Anda paham LaTeX).

**Tabel makro yang perlu diisi:**

| Makro | Contoh isi | Dipakai di |
|---|---|---|
| `\judul` | `Pengembangan Sistem ...` | Sampul, judul, ringkasan |
| `\penulis` | `Nama Lengkap` | Sampul, judul, dll. |
| `\nim` | `2001234567` | Sampul, judul, pernyataan |
| `\jurusan` | `Jurusan Teknik Elektro` | Sampul, judul, pengesahan |
| `\fakultas` | `Fakultas Teknik` | Sampul, judul, pengesahan |
| `\programstudi` | `Program Studi S1 Pendidikan Teknik Informatika` | Sampul, judul, pernyataan |
| `\gelarprogram` | `Sarjana Pendidikan ...` | Halaman judul (menyelesaikan program ...) |
| `\bulantahun` | `Juli 2026` | Sampul, judul, ringkasan |
| `\kotatanggal` | `Malang, 1 Juli 2026` | Lembar persetujuan, pernyataan |
| `\pembimbingSatu` | `Dr. Ahmad Fauzi, M.Pd.` | Persetujuan, pengesahan, ringkasan |
| `\nipSatu` | `NIP 19700101 200003 1 001` | Lembar persetujuan |
| `\pembimbingDua` | `Dr. Siti Aminah, M.T.` | Persetujuan, pengesahan, ringkasan |
| `\nipDua` | `NIP 19750210 200501 2 002` | Lembar persetujuan |
| `\katakunci` | `media pembelajaran, Android, evaluasi` | Ringkasan (Indonesia) |
| `\katakunciEn` | `learning media, Android, evaluation` | Summary (Inggris) |

**Contoh sebelum dan sesudah:**

```latex
% SEBELUM (placeholder)
\newcommand{\judul}{Judul Skripsi yang Informatif dan Mencerminkan Isi}
\newcommand{\penulis}{Nama Lengkap Penulis}
\newcommand{\nim}{123456789}

% SESUDAH (data Anda)
\newcommand{\judul}{Pengembangan Media Pembelajaran Interaktif Berbasis Android untuk Mata Pelajaran Fisika SMA}
\newcommand{\penulis}{Budi Santoso}
\newcommand{\nim}{2001234567}
```

> Nama berkas yang benar adalah `informations.tex` (bukan `information.tex`), dan
> di sampingnya ada `if-itb-thesis.sty` — jangan tertukar. Berkas `.sty` mengatur
> format; **tidak perlu diubah** untuk menulis skripsi biasa.

**Indikator selesai:** setelah build, sampul dan halaman judul menampilkan data Anda.

---

### Fase 4 Halaman awal front matter

Halaman-halaman awal didefinisikan di `src/chapters/`. Sebagian besar mengambil nilai
dari metadata secara otomatis; beberapa memuat bagian yang harus **Anda tulis manual**
atau **isi nama orang**.

> Nomor halaman bagian awal menggunakan **angka Romawi** (i, ii, iii, ...) secara
> otomatis — tidak perlu diatur manual.

#### 4.1 Halaman sampul, judul, dan logo otomatis

`cover.tex`, `title-page.tex`, `logo.tex` mengambil semua nilainya dari
`informations.tex`. Setelah [Fase 2](#fase-2-ganti-logo) dan
[Fase 3](#fase-3-metadata), tidak ada lagi yang perlu diubah di ketiga berkas ini.

#### 4.2 Lembar persetujuan pembimbing

**Berkas:** `approval.tex`

Menampilkan nama dan NIP pembimbing (dari metadata) beserta tanggal (`\kotatanggal`).
Umumnya **tidak perlu diubah**. Periksa sekali bahwa susunan Pembimbing I dan II
sesuai kebiasaan jurusan Anda.

#### 4.3 Lembar pengesahan

**Berkas:** `endorsement.tex`

Berisi **dewan penguji** dan pejabat penandatangan. Bagian ini **tidak** diambil dari
metadata — **isi manual** di berkas ini. Yang perlu disesuaikan:

- Tanggal sidang (baris `pada tanggal \underline{\hspace{4cm}}`).
- **Nama dan gelar Ketua/Anggota dewan penguji** (tiga blok
  `\underline{\hspace{6cm}}, ...` diikuti baris Nama dan Gelar ... Penguji).
- **Dekan dan Ketua Jurusan**: baris Nama dan Gelar Dekan dengan NIP, dan Nama dan
  Gelar Ketua Jurusan dengan NIP.

Contoh pengisian blok penguji:

```latex
\noindent \underline{\hspace{6cm}}, Ketua \\
Nama dan Gelar Ketua Penguji
```

menjadi:

```latex
\noindent \underline{Dr. Ahmad Fauzi, M.Pd.}, Ketua \\
Dr. Ahmad Fauzi, M.Pd.
```

> Silakan isi **setelah** jadwal sidang pasti, atau biarkan dulu garis bawahnya dan
> lengkapi belakangan.

#### 4.4 Pernyataan keaslian

**Berkas:** `statement.tex`

Otomatis (dari metadata). Umumnya **tidak perlu diubah**. Bagian tanda tangan memuat
`(materai 6000)` — tempel materai asli pada lembar cetak saat pengesahan.

#### 4.5 Ringkasan dan Summary

**Berkas:** `abstract-id.tex`, `abstract-en.tex`

Dua berkas ini berisi ringkasan (Indonesia) dan summary (Inggris), **spasi tunggal**,
maksimal **750 kata** (Pedoman UM).

- Baris identitas dan kata kunci **otomatis** dari metadata.
- **Ganti `\blindtext`** dengan ringkasan asli Anda. Untuk versi Inggris
  (`abstract-en.tex`), judul di baris identitas masih tertulis harfiah
  `English Translation of the Thesis Title` — **ubah manual** menjadi terjemahan
  resmi judul skripsi Anda.

Contoh (`abstract-en.tex`):

```latex
% SEBELUM
\noindent \penulis. \bulantahun. \textit{English Translation of the Thesis Title}. ...

% SESUDAH
\noindent \penulis. \bulantahun. \textit{Development of an Android-Based Interactive
Learning Media for High School Physics}. ...
```

#### 4.6 Kata pengantar

**Berkas:** `forewords.tex`

Berisi ucapan terima kasih. **Ganti seluruh placeholder** (termasuk dua paragraf
contoh dan `\blindtext`) dengan kata pengantar sungguhan. Tips dari komentar berkas:
ucapkan terima kasih kepada pembimbing dan pihak prodi terlebih dahulu, lalu pihak
lain (keluarga, teman, penyandang dana). Tidak perlu menulis permintaan maaf.

#### 4.7 Riwayat hidup

**Berkas:** `biography.tex`

Naratif singkat (spasi tunggal), riwayat pendidikan **sampai jenjang di atas SMA**.
**Ganti `\blindtext`** dengan narasi: tempat/tanggal lahir, riwayat pendidikan, dan
pengalaman relevan. Tanpa foto (Pedoman UM).

**Indikator selesai Fase 4:** seluruh halaman awal (sampai daftar isi) berisi data
dan teks Anda — tanpa `\blindtext` tersisa. **Build** untuk memeriksa.

---

### Fase 5 Bab satu sampai lima

**Berkas:** `src/chapters/chapter-1.tex` sampai `chapter-5.tex`

Setiap bab berisi penjelasan singkat tentang apa yang harus ditulis (komentar LaTeX
`%`) lalu placeholder `\blindtext`. **Ganti placeholder dengan tulisan Anda.**
Komentar panduan bisa dibiarkan atau dihapus — tidak memengaruhi PDF.

Gunakan hierarki judul berikut (formatnya sudah otomatis sesuai pedoman UM):

```latex
\section{Nama Subbab}        % subbab -> 1.1, KAPITAL
\subsection{Nama Sub-Subbab} % sub-sub bab -> 1.1.1
\subsubsection{Nama Bagian}  % bagian -> 1.1.1.1, miring
```

Tabel isi tiap bab dan pola penulisannya:

| Bab | File | Isi yang diharapkan |
|---|---|---|
| **I Pendahuluan** | `chapter-1.tex` | Latar belakang, rumusan masalah, tujuan, batasan masalah, metodologi, sistematika pembahasan |
| **II Tinjauan Pustaka** | `chapter-2.tex` | Dasar teori, studi terkait/literatur — sertakan sitasi (lihat [Fase 6](#fase-6-referensi-dan-sitasi)) |
| **III Analisis dan Perancangan** | `chapter-3.tex` | Analisis masalah, solusi umum, rancangan solusi (arsitektur, komponen, dll.) |
| **IV Evaluasi dan Pembahasan** | `chapter-4.tex` | Tujuan dan skenario pengujian, hasil pengujian, pembahasan |
| **V Penutup** | `chapter-5.tex` | Kesimpulan (menjawab rumusan masalah) dan saran |

**Contoh pola menulis paragraf (chapter-1.tex):**

```latex
\chapter{Pendahuluan}

\section{Latar Belakang}

Tulis latar belakang di sini sebagai paragraf biasa. Cukup satu paragraf
per ide pokok. LaTeX otomatis memberi spasi 1,5 dan indent 1,2 cm sesuai
pedoman UM — Anda tidak perlu menulisnya.

\section{Rumusan Masalah}

Rumusan masalah pada penelitian ini adalah:

\begin{enumerate}
    \item Bagaimana merancang media pembelajaran berbasis Android yang valid?
    \item Bagaimana tingkat kelayakan media pembelajaran berbasis Android?
\end{enumerate}
```

> **Hindari `\blindtext` lolos ke PDF.** Sebelum menyelesaikan bab, cari sisa
> `\blindtext` dengan *search* (Ctrl+F) di folder `src/chapters/` dan ganti semuanya.

**Indikator selesai tiap bab:** bab terisi tulisan Anda; **build** setelah selesai
satu sampai dua bab untuk memastikan tidak ada error (misal kurung kurawal tak seimbang).

---

### Fase 6 Referensi dan sitasi

**Berkas:** `src/references.bib`

Referensi disimpan dalam format BibTeX, lalu dicetak otomatis menjadi **Daftar
Rujukan gaya APA** oleh `biblatex` dan `biber` (diatur di `src/thesis.tex` dan
`src/config/if-itb-thesis.sty`).

#### Menambah referensi

Buka `references.bib` dan tambahkan entri. Contoh untuk jurnal:

```bibtex
@article{santoso2020pembelajaran,
    author  = {Santoso, Budi and Rahayu, Sri},
    title   = {Pengembangan Media Pembelajaran Interaktif},
    journal = {Jurnal Teknologi Pendidikan},
    year    = {2020},
    volume  = {22},
    number  = {3},
    pages   = {145--158},
    doi     = {10.1234/jtp.v22i3.5678}
}
```

> Kunci sitasi (misal `santoso2020pembelajaran`) bebas Anda tentukan, asalkan unik
> dan konsisten dipakai di dokumen. Isi kolom sesuai jenis sumber: `@book`,
> `@inproceedings`, `@article`, `@online`, dan lain-lain. Ambil data langsung dari
> Google Scholar melalui menu Cite lalu BibTeX untuk akurasi.

#### Menyitasi di teks

Di dalam bab, gunakan perintah biblatex:

```latex
Penelitian ini merujuk pada \parencite{santoso2020pembelajaran}.
\parencite{santoso2020pembelajaran, knuth2001art}   % dua sumber sekaligus
\textcite{santoso2020pembelajaran} menjelaskan bahwa ...
```

#### Mengapa biber penting

`\printbibliography` (di `thesis.tex`) baru menghasilkan daftar rujukan setelah
`biber` memproses sitasi — itu sebabnya build berjalan **beberapa kali** secara
otomatis. Selama Anda memakai `latexmk` (via `make.bat`/`make`), semuanya ditangani
otomatis. **Jangan** menghapus berkas `.aux`/`.bbl` di tengah jalan selain lewat
`make clean`.

**Indikator selesai:** semua sitasi contoh terganti sitasi sungguhan, dan **Daftar
Rujukan** muncul di PDF setelah build.

---

### Fase 7 Gambar dan tabel

Aturan utama (Pedoman UM):

- **Gambar**: `\caption` di **bawah** gambar.
- **Tabel**: `\caption` di **atas** tabel.
- Penomoran otomatis per bab: `Gambar 3.1`, `Tabel 3.1` (bab III, nomor urut 1).

#### Menambah gambar

```latex
\begin{figure}[ht]
    \centering
    \includegraphics[width=0.8\textwidth]{resources/nama-berkas-gambar.png}
    \caption{Teks keterangan gambar}
    \label{fig:contoh}
\end{figure}
```

- Simpan berkas gambar di `src/resources/`. Nama berkas **tanpa spasi** lebih aman.
- Rujuk silang di teks dengan `Gambar \ref{fig:contoh}`.

#### Menambah tabel

```latex
\begin{table}[ht]
    \centering
    \caption{Teks keterangan tabel}
    \label{tab:contoh}
    \begin{tabular}{|l|c|}
        \hline
        Kolom A & Kolom B \\
        \hline
        isi 1   & isi 2   \\
        \hline
    \end{tabular}
\end{table}
```

#### Tabel dari berkas CSV

Templat mendukung tabel yang dibaca langsung dari CSV (`csvsimple`). Contoh yang ada
di `chapter-3.tex`:

```latex
\begin{table}[ht]
    \centering
    \caption{Kebutuhan fungsional sistem}
    \label{tab:sample-requirements}
    \csvautotabular{resources/chapter-3-sample-requirements.csv}
\end{table}
```

Berkas CSV sampel (`resources/chapter-3-sample-requirements.csv`) berisi baris
pertama judul kolom:

```csv
ID,Kebutuhan,Prioritas,Status
FR-01,Autentikasi pengguna,Tinggi,Diterima
```

Untuk memakai data Anda: buat CSV baru di `resources/`, lalu ganti nama berkas di
`\csvautotabular{...}` (path relatif dari folder `src/`). Pastikan CSV memakai
pemisah koma dan tidak ada sel berisi koma tanpa tanda kutip.

**Indikator selesai:** gambar/tabel Anda muncul dengan nomor dan keterangan benar,
serta masuk Daftar Gambar dan Daftar Tabel di halaman awal.

---

### Fase 8 Lampiran

**Berkas yang dipakai:** `src/chapters/appendix-1.tex` (Instrumen Pengujian) dan
`appendix-2.tex` (Rincian Kasus Uji) — keduanya diikutkan oleh `thesis.tex` dan
bernomor otomatis Lampiran 1, Lampiran 2.

Ganti `\blindtext` dengan isi lampiran Anda.

**Menambah lampiran baru** (misal mengaktifkan `appendix-3.tex` yang sudah tersedia,
atau membuat `appendix-4.tex`):

1. Buka `src/thesis.tex`.
2. Cari blok lampiran (setelah `\appendix`), yang berisi:
   ```latex
   \input{chapters/appendix-1}
   \input{chapters/appendix-2}
   ```
3. Tambahkan baris `\input{chapters/appendix-3}` di bawahnya.

Setiap berkas lampiran diawali `\chapter{Nama Lampiran}`; penomorannya otomatis.

**Indikator selesai:** semua lampiran terisi dan bernomor urut benar.

---

### Fase 9 Verifikasi bertahap

Jadwal build yang disarankan selama mengerjakan:

| Setelah fase | Jalankan build | Tujuan |
|---|---|---|
| Fase 1 | Ya | Pastikan lingkungan jalan |
| Fase 2 dan 3 | Ya | Pastikan logo dan metadata tampil benar |
| Setiap satu sampai dua bab (Fase 4 sampai 8) | Ya | Deteksi error sejak dini |
| Semua selesai | `make clean` lalu build penuh | Hasil final yang bersih |

Jika ada error, baca pesan di terminal: file yang bermasalah biasanya disebutkan
(nama `chapter-N.tex` + nomor baris). Lihat [Bagian 9](#9-faq-pemecahan-masalah)
untuk error umum.

---

## 6. Menambah atau mengurangi bab

Buka `src/thesis.tex`. Bagian isi terlihat seperti ini:

```latex
\input{chapters/chapter-1}
\input{chapters/chapter-2}
\input{chapters/chapter-3}
\input{chapters/chapter-4}
\input{chapters/chapter-5}
```

- **Menambah bab VI**: buat berkas `src/chapters/chapter-6.tex` berisi
  `\chapter{Judul Bab}` lalu tambahkan `\input{chapters/chapter-6}` setelah
  `chapter-5`.
- **Menghapus bab**: hapus baris `\input{...}`-nya (berkasnya boleh dihapus juga).
- Setiap berkas bab wajib diawali satu perintah `\chapter{...}` — jumlah bab PDF
  mengikuti jumlah `\input{chapters/chapter-N}` di berkas ini.

> Hati-hati: penomoran BAB I dan seterusnya dihitung dari perintah `\chapter`, jadi
> jangan ada berkas bab yang ikut ter-input dua kali.

---

## 7. Menjalankan build dan membersihkan

### Windows

```bat
REM Command Prompt
make.bat
```

```powershell
# PowerShell
.\make.bat
```

> PowerShell tidak menjalankan perintah dari folder aktif tanpa awalan `.\`.
> Jadi di PowerShell selalu tulis `.\make.bat`, bukan `make.bat`.

### Linux atau macOS

```bash
make          # bersihkan lalu bangun (default)
make build    # bangun saja (tanpa bersihkan dulu)
make clean    # hapus artefak build/ dan dist/
make validate # periksa sumber LaTeX dengan chktex
```

### Manual di semua OS

```bash
latexmk -pdf -outdir=../build -cd src/thesis.tex
```

Jalankan dari folder utama; hasil akhir `dist/thesis.pdf`, artefak di `build/`.

> **Catatan** `make.bat` = bersihkan lalu bangun (menghapus `build/` dan `dist/`
> lebih dulu). Build penuh dari nol lebih lama, tetapi menghindari artefak basi.
> `make build` (tanpa bersih) lebih cepat untuk iterasi biasa.

---

## Membangun hanya sebagian (ekspor pilihan)

Kadang Anda hanya ingin mengirim **satu bab** atau **bagian tertentu** (misalnya
ke dosen pembimbing) tanpa membuat seluruh skripsi. `excerpt.bat`/`excerpt.ps1`
membangun PDF dari bab/bagian yang Anda pilih saja, tanpa mengubah
`thesis.tex` atau `make.bat`.

### Cara menjalankan

> **Di terminal editor seperti Zed (yang sudah PowerShell), jalankan
> `.\excerpt.ps1` langsung** — bukan `.\excerpt.bat`. `excerpt.bat`
> menelurkan PowerShell baru sehingga menu bisa muncul di jendela pop-up
> terpisah. `excerpt.bat` tetap dipakai untuk Command Prompt / klik ganda.

```powershell
# PowerShell (VS Code, Zed, Windows Terminal) — muncul di terminal yang sama
.\excerpt.ps1                      # menu interaktif
.\excerpt.ps1 -Pilih "bab2"        # BAB II utuh
.\excerpt.ps1 -Pilih "bab1,ringkasan"  # campur bab + halaman Ringkasan
.\excerpt.ps1 -Pilih "bab2[1]"     # hanya section 1 pada BAB II
.\excerpt.ps1 -Pilih lamp1         # Lampiran 1
.\excerpt.ps1 -Pilih "bab2[1]" -Nama review  # nama file bebas
.\excerpt.ps1 -Pilih "bab2" -Format docx     # Word: dist/excerpt-bab2.docx
.\excerpt.ps1 -Pilih "bab1" -Format both     # PDF + Word sekaligus
```

```bat
REM Command Prompt / klik ganda — cukup nama berkas, tanpa .\
excerpt.bat
excerpt.bat bab2
excerpt.bat "bab1,ringkasan"
excerpt.bat bab2 "" docx
```

Tanpa argumen (`excerpt.ps1` atau `excerpt.bat` tanpa `-Pilih`), tampil menu
interaktif: ketik kode pilihan (dipisah koma), lalu jika memilih bab, Anda bisa
memilih **seluruh bab** atau **section tertentu**. Di akhir, menu menanyakan
**format keluaran** (1 = PDF, 2 = Word, 3 = keduanya; kosong = PDF).

### Kode unit yang tersedia

| Kode | Bagian |
|---|---|
| `cover`, `logo`, `title`, `approval`, `endorsement`, `statement` | halaman awal (sampul, logo, judul, persetujuan, pengesahan, pernyataan) |
| `ringkasan`, `summary`, `forewords` | Ringkasan (ID), Summary (EN), Kata Pengantar |
| `daftarisi`, `daftartabel`, `daftargambar`, `daftarrumus` | Daftar Isi, Daftar Tabel, Daftar Gambar, Daftar Rumus (hanya PDF) |
| `bab1` … `bab5` | Bab I … V (utuh), atau `babN[a,b]` untuk section tertentu |
| `pustaka` | Daftar Rujukan |
| `lamp1`, `lamp2` | Lampiran 1, Lampiran 2 |
| `bio` | Riwayat Hidup |

Hasilnya tersimpan sebagai `dist/excerpt-<nama>.pdf` (atau `.docx` bila
`-Format docx`). Catatan:

- Urutan bab dalam hasil mengikuti urutan di `thesis.tex`, bukan urutan ketik.
- Bab yang memuat sitasi otomatis menyertakan **Daftar Rujukan**.
- `subsection`/`subsubsection` ikut bersama `section` induknya.
- `make.bat` (build penuh) tidak terpengaruh.
- Ekspor **DOCX** memakai gaya yang sama dengan ekspor penuh (lihat
  [Ekspor ke Word (DOCX)](#ekspor-ke-word-docx)): nomor bab tetap benar
  (mis. `bab2` → "BAB II"), rumus jadi OMML, dan perlu **pandoc 3.x**.

---

## Ekspor ke Word (DOCX)

Selain PDF, seluruh skripsi dapat diekspor ke **Word (`.docx`) yang dapat diedit**
menggunakan [pandoc](https://pandoc.org/installing.html). Sumbernya sama dengan PDF —
tidak ada isi yang perlu ditulis dua kali.

### Prasyarat

- **pandoc 3.x** terpasang dan ada di PATH:
  - Windows: `winget install --id JohnMacFarlane.Pandoc -e`
  - macOS: `brew install pandoc`
  - Linux: `sudo apt-get install pandoc`
- Build PDF tidak terpengaruh; keduanya membaca berkas `src/` yang sama.

### Cara menjalankan

```powershell
# Windows (PowerShell) — muncul di terminal yang sama
.\docx.ps1                 # -> dist/thesis.docx
.\docx.ps1 -Nama "draft"   # -> dist/draft.docx
```

```bat
REM Command Prompt / klik ganda
docx.bat
docx.bat draft
```

```bash
# Linux/macOS
make docx                  # -> dist/thesis.docx
```

CI juga membuat artifact **`thesis-docx`** pada setiap push ke `main`/`master`.

### Cara kerja

`docx.ps1` / `make docx` menjalankan tiga tahap:

1. **Praproses** (`docs/pandoc/preprocess.lua`) — mengekspansi semua `\input{...}`
   menjadi satu berkas datar, mengubah `\csvautotabular{...}` menjadi tabel LaTeX,
   menormalkan lingkungan matematika (`align` → `aligned`), serta menandai
   `\clearpage`, `\appendix`, dan lokasi Daftar Rujukan.
2. **Konversi** dengan pandoc, memakai `docs/pandoc/reference.docx` (gaya & margin
   UM), `docs/pandoc/apa.csl` (sitasi APA), dan filter `docs/pandoc/postprocess.lua`
   yang menambahkan page break, penomoran "BAB I"/"1.1", dan judul DAFTAR RUJUKAN.
3. **Pembersihan** berkas sementara `src/_docx.tex`.

Driver khusus `src/thesis-docx.tex` memuat bab yang sama dengan `src/thesis.tex`,
**kecuali halaman tata letak** (sampul, logo, halaman judul, persetujuan, pengesahan,
pernyataan) yang sengaja dilewati. **Bila menambah/menghapus bab, ubah kedua berkas
agar tetap sinkron.**

### Yang ada di DOCX

Isi mengikuti urutan: **Ringkasan → Summary → Kata Pengantar → DAFTAR ISI →
BAB I–V → DAFTAR RUJUKAN → Lampiran → Riwayat Hidup**, masing-masing dimulai pada
halaman baru.

| Sudah rapi | Disederhanakan / tidak ada |
|---|---|
| Teks, bab ("BAB I"), subbab ("1.1"), daftar bernomor | Halaman sampul, logo, halaman judul, persetujuan, pengesahan, pernyataan (hanya ada di PDF) |
| Rumus matematika (OMML, dapat diedit di Word) | Daftar Tabel/Gambar tidak dibuat otomatis |
| Tabel, termasuk yang dibaca dari CSV | Rujukan persamaan (`\eqref`) tampil sebagai penanda, bukan nomor |
| Gambar | — |
| Sitasi & Daftar Rujukan gaya APA | — |
| Page break antar bagian & Daftar Isi (`DAFTAR ISI`) | — |

### Menyesuaikan gaya

Font, margin, dan spasi diatur di `docs/pandoc/reference.docx`, yang dibuat oleh
`docs/pandoc/make-reference-docx.ps1`. Sunting skrip itu lalu jalankan ulang untuk
menghasilkan `reference.docx` baru:

```powershell
.\docs\pandoc\make-reference-docx.ps1
```

---

## 8. Validasi dan GitHub Actions

### Validasi lokal dengan chktex

Periksa kebersihan kode LaTeX (spasi, kutip, dan lain-lain):

```bash
chktex -l .chktexrc src/chapters/chapter-1.tex   # per berkas
```

### Build otomatis di GitHub

Repositori ini menyertakan CI di `.github/workflows/build.yml`:

- **Pada pull request** ke `main`/`master`: menjalankan `make validate` (chktex) dan
  pemeriksaan berkas resource.
- **Pada push** ke `main`/`master`: menginstal TeX Live, menjalankan `make build`,
  lalu mengunggah `dist/thesis.pdf` sebagai artifact bernama **`thesis-pdf`**.
  Job terpisah juga menjalankan `make docx` (pandoc) dan mengunggah
  `dist/thesis.docx` sebagai artifact **`thesis-docx`**.

Cara memakai tanpa build lokal: *fork* repo ini, tulis skripsi, lalu *push* ke
`main`/`master`. Buka tab **Actions**, pilih workflow *Build*, lalu di bagian
**Artifacts** unduh **`thesis-pdf`**.

> Karena CI memvalidasi berkas `src/resources/cover-ganesha.jpg`, jika Anda memakai
> logo lain (Pilihan B di [Fase 2](#fase-2-ganti-logo)) pastikan file yang dirujuk
> tetap ada di `src/resources/` agar pemeriksaan tidak gagal.

---

## 9. FAQ pemecahan masalah

### `excerpt.ps1`, `excerpt.bat`, atau `make.bat` tidak dikenali di PowerShell

Itu bukan karena berkasnya hilang — PowerShell **tidak menjalankan perintah dari
folder aktif** tanpa awalan `.\`. Ketik:

```powershell
.\excerpt.ps1
.\make.bat
```

Untuk ekspor sebagian, di PowerShell gunakan `.\excerpt.ps1` (bukan
`excerpt.bat`, yang menelurkan PowerShell baru dan bisa muncul di jendela
terpisah). Di **Command Prompt** cukup `excerpt.bat` / `make.bat` (tanpa `.\`).

### MiKTeX menanyakan instalasi paket saat build

Ini normal pada build pertama. Pilih **Install** atau **Yes** agar paket diunduh
otomatis. Agar tidak ditanya berulang: MiKTeX Console, menu *Settings*, bagian
*Package installation*, ubah dari *Always ask first* menjadi *Yes*.

### Perintah biber atau latexmk tidak dikenali

Perintah belum ada di PATH. Di Windows, instal ulang MiKTeX dengan opsi *Add to
PATH*, atau jalankan lewat *MiKTeX Console*. Pastikan `latexmk -v` dan
`biber --version` berhasil sebelum build.

### PDF jadi tapi tulisan masih berbahasa Latin acak

`\blindtext` belum diganti. Cari semua kemunculan `\blindtext` di `src/chapters/`
dan ganti dengan isi asli Anda.

### Daftar Rujukan tidak muncul atau sitasi tampil tanda tanya

Biasanya karena proses biber belum tuntas (butuh beberapa kali kompilasi) atau ada
entri `references.bib` yang bermasalah. Solusi: jalankan **clean build**:
`make.bat` (Windows) atau `make` (Linux/macOS). Pastikan kunci sitasi di teks sama
persis dengan kunci di `references.bib`.

### Nomor halaman gambar atau tabel tidak seperti harapan

Penomoran sudah diatur otomatis (romawi di awal, arabic di isi; gambar/tabel per bab).
Jika terlihat aneh, biasanya karena ada artefak basi — lakukan *clean build*
(`make clean` lalu build).

### Logo tidak muncul atau masih placeholder lama

Periksa [Fase 2](#fase-2-ganti-logo): pastikan berkas yang dirujuk di `cover.tex`,
`title-page.tex`, `logo.tex` benar-benar ada di `src/resources/` dengan nama dan
huruf yang sama persis (nama berkas peka huruf besar/kecil di Linux dan CI).

### Saya mengubah file di src tapi PDF tidak berubah

Pastikan Anda mengubah berkas yang **benar-benar dipakai** oleh `thesis.tex`
(lihat tabel Berkas yang ada tapi tidak dipakai di [Bagian 4](#4-struktur-berkas-proyek)),
lalu lakukan build ulang dan buka `dist/thesis.pdf` yang baru (jangan PDF lama).

### Error File not found saat build

Berkas gambar/CSV yang dirujuk tidak ditemukan. Cek nama berkas di perintah
`\includegraphics{...}` atau `\csvautotabular{...}` — path relatif dari folder `src/`,
nama harus sama persis termasuk ekstensi.

### Angka bab jadi BAB 0 atau urutan lampiran aneh

Pastikan `thesis.tex` tidak meng-input berkas bab dua kali, dan setiap berkas bab
berisi tepat satu `\chapter`. Lihat [Bagian 6](#6-menambah-atau-mengurangi-bab).

---

## 10. Daftar periksa akhir

Sebelum mencetak atau mengumpulkan, pastikan semuanya:

**Identitas dan halaman awal**
- [ ] `informations.tex` berisi judul, nama, NIM, jurusan/fakultas/prodi, pembimbing, tanggal, dan kata kunci yang benar.
- [ ] Logo UM tampil di sampul, halaman judul (3 cm), dan lembar logo (8 cm) — bukan placeholder.
- [ ] Judul pada `abstract-en.tex` sudah diterjemahkan (bukan English Translation of the Thesis Title).
- [ ] `endorsement.tex` berisi nama dewan penguji, dekan, dan ketua jurusan yang benar.
- [ ] Kata pengantar dan riwayat hidup sudah diganti dengan tulisan asli.
- [ ] Judul dan nama di sampul sesuai pedoman (huruf kapital, dan lain-lain).

**Isi**
- [ ] Tidak ada satu pun `\blindtext` tersisa di `src/chapters/`.
- [ ] Bab satu sampai lima dan lampiran terisi sesuai struktur templat.
- [ ] Keterangan gambar di bawah, tabel di atas; penomoran per bab benar.
- [ ] Semua gambar/tabel dirujuk dan ada di `src/resources/`.

**Referensi**
- [ ] Semua sitasi di teks ada entrinya di `references.bib`.
- [ ] Daftar Rujukan muncul dengan format APA (bukan tanda tanya).

**Build**
- [ ] `make clean` lalu build penuh berhasil tanpa error.
- [ ] `dist/thesis.pdf` terbuka normal; nomor halaman romawi/arabic benar.
- [ ] (Jika pakai GitHub) push ke `main`/`master` menghasilkan artifact `thesis-pdf`.
- [ ] (Opsional) `chktex -l .chktexrc` pada file yang diubah tidak ada peringatan kritis.
````

---

# 9. Catatan Kerja dan Analisis

<a id="f-analisis-bab1-bab2-md"></a>

## `ANALISIS_BAB1_BAB2.md`

Ukuran 11,336 byte &middot; 129 baris &middot; sha256 `5e6c94a6dda1` &middot; encoding `utf-8-sig`

```markdown
# Analisis Bab I dan Bab II

Judul yang dianalisis: **Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia**

Berkas yang diperiksa: `src/chapters/chapter-1.tex` (62 baris), `src/chapters/chapter-2.tex` (183 baris), `src/chapters/abstract-id.tex`, `src/chapters/abstract-en.tex`, `src/config/informations.tex`, `src/references.bib`.

**Tidak ada satu pun berkas .tex yang saya ubah.** Dokumen ini murni analisis; semua rekomendasi menunggu persetujuanmu.

---

## 1. Ringkasan

Isi Bab I dan Bab II sudah **konsisten dengan judul**: weight-only PTQ 4-bit pada IndoBERT untuk extractive QA, dataset SQuAD-id, dua granularitas (per-tensor vs per-channel), metrik EM/F1 + ukuran model, dan uji signifikansi. Semua sitasi juga punya entri di `references.bib` (tidak ada key menggantung).

Yang belum beres ada dua jenis: **yang belum ada isinya** (metadata, ringkasan, dua subbab Bab I, beberapa baris tabel) dan **yang bukti sitasinya bermasalah** (2 sitasi tidak mendukung klaim, 3 klaim lebih luas dari kutipan, 14 klaim belum bisa dicek karena PDF-nya tidak ada).

Hasil verifikasi 62 klaim bersitasi (Bab I: 17, Bab II: 45) ke PDF aslinya:

| Status | Jumlah |
|---|---|
| Terverifikasi penuh | 39 |
| Terverifikasi lewat sumber sekunder | 2 |
| Sebagian | 2 |
| Klaim lebih luas dari kutipan | 3 |
| Sitasi tidak mendukung klaim | 2 |
| Belum bisa dicek (PDF tidak ada) | 14 |

Rincian per klaim ada di `bahan_justifikasi/justifikasi_bab1.md` dan `justifikasi_bab2.md`.

---

## 2. Yang belum ada

| # | Item | Lokasi | Dampak | Usul |
|---|---|---|---|---|
| 1 | Judul, penulis, NIM, pembimbing, kata kunci masih placeholder | `informations.tex` baris 7–25 | PDF skripsi tercetak dengan judul template — tidak bisa dipakai sebagai identitas | Isi manual; saya butuh nama, NIM, pembimbing I/II, bulan sidang dari kamu |
| 2 | Ringkasan (abstract-id) masih topik **lama**: PTQ INT4 untuk sentimen/topik finansial, 3 dataset (IndoFinSent dll), Macro F1 | `abstract-id.tex` | Bertentangan langsung dengan judul; kalau ikut dicetak, terbaca sebagai skripsi orang lain | Kamu isi sendiri (sudah kamu putuskan) |
| 3 | Summary (abstract-en) masih `\blindtext` + "English Translation of the Thesis Title" | `abstract-en.tex` | Sama seperti di atas | Menyusul setelah Ringkasan |
| 4 | **Subbab Metodologi dan Sistematika Pembahasan belum ada** | `chapter-1.tex` (hanya 4 section: Latar Belakang, Rumusan, Tujuan, Batasan) | Template ini sendiri menyebut Bab I memuat metodologi + sistematika pembahasan (`docs/TUTORIAL.md` baris 439). Tanpa itu, alur penelitian tidak terbaca dari Bab I, dan penguji biasanya menanyakan "langkah penelitiannya bagaimana?" | Usul: tambah 2 subbab (isi ringkas, tidak menduplikasi Bab III) — **menunggu persetujuanmu** |
| 5 | 5 TODO yang menunggu data eksperimen | `chapter-2.tex` baris 71, 73, 75, 115 | Wajar ditunda, tapi jangan sampai tertinggal saat Bab III jadi | Isi setelah dataset dimuat |
| 6 | 2 baris Tabel Penelitian Terdahulu tanpa PDF | Tabel 2.1 baris 1 (Hu dkk. 2022) dan 3 (Han 2026) | **Celah ke-2 dan ke-3 Bab II bertumpu pada Han 2026.** Tanpa PDF, dua dari tiga celah tidak bisa dipertahankan | Unduh `han2026breaking` dan `hu2022empirical` |
| 7 | Alasan memilih 4-bit belum dinyatakan | `chapter-1.tex` baris 26 ("perhatian difokuskan pada weight-only PTQ pada presisi 4-bit") | Penguji wajar bertanya "kenapa 4-bit, bukan 8-bit?" — saat ini jawabannya hanya tersirat di Bab II (ukuran teoretis 12,5%) | Usul: satu kalimat di Bab I yang menyebut 8-bit sudah banyak dievaluasi (Q8BERT, Abdurrahman) sementara 4-bit paling menantang |

---

## 3. Yang perlu diperbaiki (masalah bukti)

### 3.1 Sitasi tidak mendukung klaim — harus diganti

**`wu2023understanding` dipakai untuk klaim granularitas di dua tempat:**
- `chapter-1.tex` baris 28: "Perbedaan konfigurasi tersebut dapat menghasilkan pertukaran antara efisiensi penyimpanan dan kemampuan model dalam mempertahankan representasi bobot aslinya \parencite{wu2023understanding}"
- `chapter-2.tex` baris 117: kalimat pembuka paragraf yang sama

Paper Wu dkk. itu tentang kelayakan INT4 W4A4 — **kata "granular" tidak muncul satu kali pun di seluruh teksnya**. Jadi klaim granularitas tidak punya sandaran di situ. Pengganti yang benar dan sudah ada di korpus:
- `gholami2021survey` Bagian E "Quantization Granularity" — membahas layerwise vs channelwise vs groupwise, termasuk catatan bahwa channelwise menambah overhead penyimpanan skala. Ini paling pas untuk klaim trade-off-nya.
- `bondarenko2021understanding` — untuk per-embedding-group quantization.

### 3.2 Klaim lebih luas daripada kutipan — perlu dipersempit

| Klaim | Lokasi | Kutipan yang ada | Masalah |
|---|---|---|---|
| Transformer "mampu mempelajari representasi kontekstual dari teks" | `chapter-1.tex` baris 20 | "We propose a new simple network architecture, the Transformer, based solely on attention mechanisms…" | Kutipan membuktikan arsitekturnya, bukan klaim representasi kontekstual. Sumber yang tepat: Devlin (p14) atau Rogers dkk. (BERTology — ada di korpus tapi belum masuk `bahan/`) |
| "model bahasa tidak hanya dikembangkan untuk bahasa Inggris, tetapi juga … bahasa Indonesia" | `chapter-1.tex` baris 20 | "we introduce the first-ever vast resource … Indonesian natural language understanding (IndoNLU) tasks" | Kutipan soal resource/benchmark, bukan pernyataan umum tentang pengembangan multibahasa |
| IndoBERT "dapat dimanfaatkan untuk memahami pertanyaan dan konteks berbahasa Indonesia" | `chapter-2.tex` baris 56 | kutipan IndoBERT di IndoNLU | Ini inferensi, bukan kalimat penulis. Bisa disandarkan ke hasil FacQA (span extraction) di Tabel 22 IndoNLU |

### 3.3 14 klaim belum bisa dicek (PDF tidak ada di lokal)

`jurafsky2025speech` (buku), `rahali2023end`, `muis2020sequence`, `rajpurkar2016squad`, `dror2018hitchhiker`, `bergkirkpatrick2012`, `efron1993`, `holm1979`, `hu2022empirical`, `han2026breaking`.

Yang paling mendesak: **`han2026breaking`** (sandaran dua celah penelitian) dan **`muis2020sequence` + SEACrowd** (dataset utama).

### 3.4 Provenance dataset belum lengkap

Bab II baris 71 menyebut "versi SQuAD-id yang telah ditata ulang dan dikoreksi … penanda pertanyaan tanpa jawaban, penanda jawaban yang tidak ditemukan pada konteks, penanda data tidak valid, penanda saran pengecualian". Penanda seperti itu adalah ciri **kartu dataset SQuAD-id dari SEACrowd**, bukan paper Muis dkk. (2020) yang saat ini satu-satunya sitasi. Bukti pendukung ada di korpus: Ramaputra dkk. menulis "we use the SQuAD-id [12] dataset from SEACrowd [22]". Jadi sitasinya perlu ditambah SEACrowd.

Catatan tambahan: judul entri bib `muis2020sequence` adalah "Sequence-to-Sequence Learning for Indonesian Automatic Question Generator" — judul itu tidak menyiratkan SQuAD-id. Perlu dipastikan memang paper itu yang memperkenalkan SQuAD-id, atau ganti ke sumber yang benar.

### 3.5 Detail kecil di bib — sudah dicek, TIDAK ada masalah

Catatan awal saya keliru: judul `wu2023understanding` di `references.bib` ("…for **Transformer** Models") **memang judul versi arXiv v1** (arXiv:2301.12017). Versi terbitnya memakai "…for **Language** Models". Jadi entri bib tidak salah — cukup pastikan saja mana yang kamu kutip (v1 arXiv atau versi terbit) dan samakan dengan PDF yang kamu pakai.

---

## 4. Yang sudah kuat — jangan diutak-atik

- **Angka Tabel 2.1 baris 2, 4, 5 cocok semua** dengan tabel di PDF aslinya (Abdurrahman: F1 72,78 / 77,35 / 74,94, ukuran 59,75 vs 474,72 MB; Sanjaya: 92,9/93,1%, 92,7/93,0, 230/475 MB, 32,7/25,1 ms; Ramaputra: EM 48,61→44,73/43,80 dan 42,05→42,15/42,34). Tanda † di tiga baris itu **sudah bisa dihapus**. Rincian di `bahan_justifikasi/verifikasi_tabel_terdahulu.md`.
- **Angka Bondarenko di `chapter-2.tex` baris 99** (83,06 / 71,03 / 70,25 / 83,23) cocok persis dengan Tabel 1 papernya, dan tabel itu memang hasil PTQ — jadi klaim "kuantisasi bobot saja hampir sama dengan FP32" punya dasar kuat.
- **Rumus skala dan granularitas** (Persamaan 2.1–2.4) konsisten dengan literatur; rumus yang sama dipakai Sanjaya dkk. (`s = max(|w|)/(2^{b-1} − 1)`), jadi implementasimu bisa dipertanggungjawabkan.
- **Batasan masalah** sudah tajam: 8 butir, termasuk "tidak menerapkan QAT" dan "tidak mengembangkan kernel presisi rendah". Ini yang biasanya menyelamatkan dari pertanyaan "kenapa tidak sekalian QAT?".
- **Struktur analisis celah** (3 celah, masing-masing menunjuk paper tertentu) sudah bagus dan jarang ada di skripsi S1.

---

## 5. Risiko saat sidang (pertanyaan yang mungkin muncul)

1. **"Kenapa 4-bit, bukan 8-bit?"** — belum dijawab eksplisit di Bab I (lihat item 2.7).
2. **"Kalau weight-only, kenapa ukuran model tidak 12,5%?"** — sudah kamu jawab di Bab II baris 117 & 137 (faktor skala + parameter yang tidak dikuantisasi). Ini justru kekuatan; pastikan angka aktualnya nanti dilaporkan berdampingan dengan 12,5% teoretis.
3. **"Apa bedanya dengan Sanjaya dkk. yang juga INT4 di IndoBERT?"** — jawaban siap: beda tugas (sentimen vs extractive QA), beda granularitas (mereka hanya per-tensor; kamu membandingkan per-tensor vs per-channel), dan mereka tidak menguji signifikansi.
4. **"Dasar klaim 'belum ditemukan' itu apa?"** — dua dari tiga celah bertumpu pada Han (2026) yang PDF-nya belum kamu pegang. Siapkan bukti penelusuran (tanggal pencarian, basis data, kata kunci) supaya klaim "dalam penelusuran penulis" bisa dipertanggungjawabkan.
5. **"Per-channel itu default di pustaka, jadi apa yang kamu sebut coarse?"** — `chapter-2.tex` baris 115 sudah punya TODO untuk menyamakan dengan opsi pustaka. Ini harus benar-benar dicek: di `torch.ao.quantization`, bobot default-nya per-channel. Kalau kamu memakai default, "coarse" harus dipaksa eksplisit per-tensor.
6. **"Kenapa sampel tanpa jawaban dibuang?"** — sudah dibatasi di Bab I dan dijelaskan di Bab II baris 27. Aman.

---

## 6. Rekomendasi, urut prioritas

**P1 — perlu keputusanmu dulu (saya tidak mengerjakan tanpa izin):**
1. Isi `informations.tex` (judul sudah ada; saya butuh nama/NIM/pembimbing/bulan).
2. Tambah subbab Metodologi + Sistematika Pembahasan di Bab I.
3. Perbaiki 2 sitasi `wu2023understanding` → `gholami2021survey` (atau `bondarenko2021understanding`).
4. Persempit 3 klaim di 3.2, atau tambah sumbernya.

**P2 — perlu bahan yang belum ada:**
5. Unduh: `han2026breaking`, `hu2022empirical`, `rajpurkar2016squad`, `muis2020sequence` (+ SEACrowd), `dror2018hitchhiker`, `holm1979`. Setelah masuk, saya bisa verifikasi 14 klaim yang masih menggantung.
6. Tambah sitasi SEACrowd untuk dataset.

**P3 — penguatan (opsional):**
7. Satu kalimat di Bab I yang menjelaskan alasan pemilihan 4-bit.

Untuk penyusunan ulang Tabel Penelitian Terdahulu, lihat dokumen terpisah: `PROPOSAL_PENELITIAN_TERDAHULU.md`.

---

## 7. Lampiran

- Peta 62 klaim: `bahan_justifikasi/justifikasi_bab1.md`, `bahan_justifikasi/justifikasi_bab2.md`
- Verifikasi angka Tabel 2.1: `bahan_justifikasi/verifikasi_tabel_terdahulu.md`
- Salinan beku catatan korpus: `bahan_justifikasi/sumber/`
- Tabel review 32 dokumen (versi hidup): `D:\KEJARCEPATTTT\quantization\paper\sudah dipilih\Tabel_Review_Bahan.md`
```

<a id="f-analisis-bab3-md"></a>

## `ANALISIS_BAB3.md`

Ukuran 19,296 byte &middot; 233 baris &middot; sha256 `7f8276134803` &middot; encoding `utf-8-sig`

```markdown
# Analisis Bab III — Pembanding Proposal Tafftadia dan Panduan AC-RIG UM

Tanggal: 24 Oktober 2026
Acuan yang dibaca: `Proposal Skripsi - Weight-Only Post-Training Quantization ResNet (Tafftadia).pdf` (Bab III, hlm. 29–39) dan `judge/Panduan Penulisan Laporan Skripsi AC-RIG UM 2021.pdf` (bagian BAB 3, hlm. 14–16).
Berkas sasaran: `src/chapters/chapter-3.tex` (masih placeholder, 66 baris).

---

## 1. Peta Bab III Tafftadia

| Subbab | Isi | Mutu |
|---|---|---|
| 3.1.1 Jenis Penelitian | Penelitian eksperimental kuantitatif; alasan memilih eksperimen (ada perlakuan, kondisi dikendalikan, diukur kuantitatif) | Kuat |
| 3.1.2 Alur Penelitian | Tujuh tahap bernomor + Gambar 3.1 | Kuat |
| 3.2.1 Gambaran Umum | Alur desain + Gambar 3.2, dua skenario sejak tahap baseline | Kuat |
| 3.2.2 Lingkungan Eksperimen | Tabel 3.1 (GPU+CUDA, PyTorch/TorchVision, Python) + alasan mengapa lingkungan harus dilaporkan | Kuat, tapi tipis |
| 3.2.3 Data dan EDA | Asal data, jalur akses, lisensi, ukuran, format, instrumen, lima pemeriksaan EDA | Sangat kuat |
| 3.2.4 Preprocessing | Dipisah per dataset (resize, augmentasi, normalisasi mean/std ImageNet) | Kuat |
| 3.2.5 Model dan Arsitektur | ResNet-50 pralatih + Tabel 3.2 (strategi baseline per skenario) + hyperparameter fine-tuning | Kuat |
| 3.2.6 Implementasi Kuantisasi | Langkah operasional: deep copy → traversal lapisan → skala per-channel → clamp [−8, 7] → bit-packing → ganti lapisan; lalu jalur inferensi (unpack + dequant) | Sangat kuat |
| 3.2.7 Skenario Pengujian | Tabel 3.3 (skenario, dataset, model, jumlah kelas/data, metrik) + protokol tiap metrik | Kuat |
| 3.3.1 Analisis Deskriptif | Selisih performa, persentase perubahan efisiensi, analisis trade-off, perbandingan lintas dataset | Cukup |
| 3.3.2 Uji Signifikansi | Tabel 3.4 (pemilihan uji per metrik) + Tabel 3.5 (kontingensi 2×2) + rumus χ² + H0/H1 eksplisit | Sangat kuat |
| 3.4 Jadwal Penelitian | Tabel 3.6 | Cukup |

---

## 2. Pemetaan terhadap 11 poin panduan AC-RIG

Panduan Bab 3 menetapkan susunan umum: (1) diagram alir, (2) tipe penelitian, (3) lokasi penelitian, (4) peralatan pendukung, (5) studi literatur, (6) subjek penelitian, (7) pengumpulan data, (8) metode praproses, (9) implementasi metode, (10) pengujian dan analisis, (11) kesimpulan dan saran.

| Poin panduan | Tafftadia | Catatan untuk skripsi Anda |
|---|---|---|
| 1 Diagram alir | 3.1.2 + 3.2.1 | Tiru, satu gambar alur penelitian dan satu gambar desain eksperimen |
| 2 Tipe penelitian | 3.1.1 | Tiru |
| 3 Lokasi penelitian | **Tidak ada** | Tambahkan; untuk penelitian ini berupa laboratorium komputasi pribadi atau lab kampus, sebutkan institusinya |
| 4 Peralatan pendukung | 3.2.2 | Tiru, tetapi lengkapi CPU, RAM, GPU, VRAM, versi pustaka |
| 5 Studi literatur | **Tidak ada** | Tambahkan satu paragraf: teori yang dipakai menyusun metode sudah dibahas di Bab II, sebutkan subbabnya |
| 6 Subjek penelitian | Tidak relevan | Tidak perlu, karena tidak ada partisipan manusia |
| 7 Pengumpulan data | 3.2.3 | Tiru, termasuk lisensi TBD dan versi sumber 1.0.0 |
| 8 Metode praproses | 3.2.4 | Tiru, tetapi isinya tokenisasi, bukan augmentasi citra |
| 9 Implementasi metode | 3.2.6 | Tiru pola langkahnya |
| 10 Pengujian dan analisis | 3.2.7 + 3.3 | Tiru, sesuaikan metrik dan uji |
| 11 Kesimpulan dan saran | **Tidak ada** | Tambahkan satu paragraf penutup: hasil dan pembahasan ada di Bab IV, kesimpulan di Bab V |

Tiga poin yang Tafftadia lewatkan (3, 5, 11) adalah tiga poin yang paling mudah diperiksa penguji karena sifatnya administratif.

---

## 3. Tujuh hal yang layak ditiru

1. **Alur penelitian bernomor.** Tujuh tahap eksplisit, bukan hanya gambar. Pembaca bisa mengikuti tanpa membuka gambar.
2. **Lingkungan eksperimen disertai alasan.** Tafftadia menulis bahwa pengukuran efisiensi bersifat spesifik perangkat keras, sehingga hasil yang sama bisa berbeda pada GPU atau versi framework lain. Ini kalimat yang membentengi Bab IV dari pertanyaan "kenapa latensi saya beda".
3. **Data ditulis lengkap sampai tingkat instrumen.** Asal, jalur unduh, lisensi, ukuran berkas, format, dan pernyataan bahwa instrumen pengumpulan data adalah dataset itu sendiri.
4. **EDA sebagai daftar periksa.** Lima pemeriksaan disebut satu per satu, bukan "telah dilakukan EDA".
5. **Praproses dipisah per kasus** dengan alasan yang melekat pada karakteristik data.
6. **Implementasi kuantisasi ditulis sebagai urutan operasi.** Deep copy, traversal lapisan, hitung skala, clamp, packing, ganti lapisan. Pola inilah yang membuat Bab III bisa direproduksi.
7. **Tabel pemilihan uji signifikansi per metrik**, lengkap dengan alasan "mengandung noise pengukuran atau tidak", tabel kontingensi, dan H0/H1.

---

## 4. Enam hal yang jangan ditiru

| Hal di Tafftadia | Mengapa jangan ditiru | Yang dipakai skripsi Anda |
|---|---|---|
| Baseline **FP16** | Mencampur dua perubahan sekaligus: presisi baseline dan kuantisasi. Pembaca tidak bisa memisahkan berapa penurunan akibat masing-masing | Baseline **FP32**, sesuai keputusan yang sudah dipakai di Bab II |
| Hanya granularitas **per-channel** | Tidak ada pembanding, sehingga klaim "per-channel lebih baik" tidak bisa diuji | **Tiga konfigurasi**: FP32, per-tensor, per-channel |
| **Bit-packing** diterapkan | Ukuran 12,5% hanya tercapai bila dipadatkan, sementara inferensi tetap unpack dulu sehingga tidak ada percepatan native | **Tanpa bit-packing**, sehingga rasio yang diklaim 25% (semua parameter) atau 48% (hanya lapisan linear) |
| Latensi diuji **paired t-test / Wilcoxon** | Yang diuji adalah latensi hasil kuantisasi tersimulasi, bukan representasi INT4 native, sehingga variasi antar iterasi bukan berasal dari perlakuan | Latensi **deskriptif saja**, tidak diuji |
| Dua skenario dataset (CIFAR-10 dan ImageNet) | Skripsi Anda hanya memakai satu dataset, jadi analisis "konsistensi lintas skala data" tidak berlaku | Penggantinya: perbandingan **antar granularitas**, bukan antar dataset |
| Bootstrap **B = 1.000** tanpa koreksi perbandingan berganda | Dengan tiga konfigurasi dan dua metrik, peluang kesalahan tipe I membengkak | Bootstrap **10.000** + koreksi **Holm** per metrik, seperti sudah ditulis di Bab II |

Satu hal yang Tafftadia kerjakan dengan jujur dan perlu Anda tiru nada bicaranya: mereka menyatakan terbuka bahwa percepatan komputasi murni dari INT4 tidak sepenuhnya terealisasi karena bobot didekuantisasi lebih dulu.

---

## 5. Usulan struktur Bab III

Target ±4.000–4.500 kata, 5 tabel, 3 gambar.

| Subbab | Isi | Kata |
|---|---|---|
| 3.1 Jenis dan Alur Penelitian | | 500 |
| 3.1.1 Jenis Penelitian | Eksperimental kuantitatif; perlakuan berupa kuantisasi, kondisi uji dikendalikan, hasil diukur kuantitatif | 200 |
| 3.1.2 Alur Penelitian | Tujuh tahap bernomor + Gambar 3.1 | 300 |
| 3.2 Desain Eksperimen | | 2.800 |
| 3.2.1 Gambaran Umum Desain | Tiga konfigurasi, satu dataset, alur Gambar 3.2 | 300 |
| 3.2.2 Lingkungan Eksperimen | Tabel 3.1 + alasan mengapa lingkungan harus dilaporkan | 250 |
| 3.2.3 Data Penelitian dan EDA | Rujuk Tabel 2.1, tambahkan keputusan pembagian validasi dan jumlah baris efektif | 500 |
| 3.2.4 Praproses Data | Tokenisasi, panjang maksimum, stride, fitur masukan, penyaringan baris | 500 |
| 3.2.5 Model dan Arsitektur | indobert-base-p2 + kepala QA, hyperparameter, Tabel 3.2 | 400 |
| 3.2.6 Implementasi Kuantisasi | Langkah operasional + Tabel 3.3 daftar modul yang dikuantisasi | 550 |
| 3.2.7 Skenario Pengujian | Tabel 3.4 (konfigurasi × metrik) + protokol tiap metrik | 300 |
| 3.3 Teknik Analisis Hasil Penelitian | | 700 |
| 3.3.1 Analisis Deskriptif | Selisih EM/F1, rasio ukuran, latensi median dan p95 | 250 |
| 3.3.2 Uji Signifikansi | Tabel 3.5 (pemilihan uji per metrik) + McNemar + bootstrap + Holm + H0/H1 | 450 |
| 3.4 Jadwal Penelitian | Tabel jadwal | 150 |
| Penutup bab | Satu paragraf: hasil di Bab IV, kesimpulan di Bab V | 100 |

---

## 6. Isi minimum tiap subbab dan kesiapan bahan

| Subbab | Bahan yang sudah ada | Bahan yang belum ada |
|---|---|---|
| 3.1.1 | Rumusan masalah Bab I, keputusan desain di Bab II | — |
| 3.1.2 | Alur di kerangka berpikir (Gambar 2.7) | Gambar alur penelitian tersendiri |
| 3.2.2 | — | **Spesifikasi perangkat keras dan versi pustaka** |
| 3.2.3 | Tabel 2.1, EDA di `eda_output_jsonl/`, lisensi TBD | **Keputusan pembagian validasi** |
| 3.2.4 | Panjang konteks (median 98 kata, p95 192, maks 636) | **max_length dan stride**, daftar fitur tokenisasi |
| 3.2.5 | Konfigurasi model, hyperparameter Suhendra dkk. (epoch 4, LR 2e-5, batch 16/32, AdamW, dropout 0,1) | Konfirmasi jumlah epoch dan seed |
| 3.2.6 | Prosedur kuantisasi di Bab II (Persamaan 2.6–2.8, sumbu channel) | **Pilihan pustaka implementasi**, **keputusan apakah embedding ikut dikuantisasi** |
| 3.2.7 | EM, F1, ukuran model, latensi (Bab II 2.6) | — |
| 3.3.1 | — | — |
| 3.3.2 | McNemar, bootstrap 10.000, Holm m=3 (Bab II 2.6.3) | — |

---

## 7. Tujuh keputusan yang harus diambil sebelum menulis

| # | Keputusan | Usulan | Alasan |
|---|---|---|---|
| 1 | Apakah **embedding** ikut dikuantisasi | ✅ **Diputuskan 24 Okt 2026: A** — seluruh parameter bobot dikuantisasi, termasuk embedding | Rasio 25% yang ditulis di Bab II 2.5.4 menjadi klaim resmi Bab IV; angka 48% tetap disebut sebagai pembanding bila embedding dilewatkan. Ablasi linear-saja tidak dijadikan konfigurasi keempat agar koreksi Holm tetap m = 3 |
| 2 | Pustaka implementasi | ✅ **Diputuskan 24 Okt 2026: a** — PyTorch + `transformers`, kuantisasi ditulis manual | Perbandingan granularitas harus bersih: hanya cara menghitung skala yang boleh berbeda. torchao memaksa per-group, GPTQ/AWQ mencampur algoritma dengan granularitas, torch.ao tidak mendukung 4-bit |
| 3 | Pembagian validasi | ✅ **Diputuskan: 10% artikel (44 judul), seed 42** — sudah dijalankan pada praproses | Pemisahan per artikel mencegah konteks yang sama muncul di latih dan validasi; irisan judul latih–uji = 0, jadi kondisinya meniru data uji |
| 4 | `max_length` dan `stride` | ✅ **Diputuskan: 384 dan 128**, `max_answer_length` 30 | Statistik token IndoBERT: konteks p99 = 349 token, maks 874; hanya 0,70% konteks terpotong dan 100% jawaban berada di dalam minimal satu jendela |
| 5 | Seed dan pengulangan | ✅ **Diputuskan: 3 seed (42, 1337, 2024)**, rata-rata ± simpangan baku, uji signifikansi per seed | Mengikuti praktik dua paper terdekat: Abdurrahman dkk. (2023) 3 seed, Sanjaya dkk. (2026) 3 seed; Bondarenko dkk. (2021) median 5 run |
| 6 | Jumlah epoch dan pemilihan checkpoint | ✅ **Diputuskan: maksimum 6 epoch, early stopping patience 2, min_delta 0,001 pada F1 validasi, bobot terbaik dipulihkan** | Ruang 2–4 epoch dari Suhendra dkk. (2026) tetap tercakup, tetapi early stopping punya ruang untuk bekerja. Praktik pemilihan model di dev/validasi mengikuti Devlin dkk. (2019) dan Wilie dkk. (2020) |
| 7 | Lokasi penelitian dan lingkungan | ✅ **Diputuskan: Kaggle Notebooks, satu GPU Tesla T4 16 GB** (opsi T4×2 tersedia, hanya satu dipakai) | Kuota 30 jam per minggu cukup untuk 3 seed, sesi 9 jam lebih aman daripada Colab gratis, dataset dapat diunggah permanen, dan T4 paling umum dipakai di literatur kuantisasi |

---

## 8. Estimasi waktu

| Pekerjaan | Estimasi |
|---|---|
| Menulis 3.1 + 3.2 (tanpa gambar) | 4 jam |
| Membuat Gambar 3.1 dan 3.2 (TikZ) | 2 jam |
| Menulis 3.3 + 3.4 | 2 jam |
| Menyusun Tabel 3.1–3.5 | 1,5 jam |
| Pemeriksaan rujukan silang dan compile | 0,5 jam |
| **Total** | **±10 jam** |

---

## 9. Catatan penutup

Bab III Tafftadia adalah contoh yang baik untuk **cara menyusun**, bukan untuk **pilihan desainnya**. Yang perlu Anda tiru adalah disiplin mendaftar: setiap langkah punya nomor, setiap tabel punya alasan keberadaan, setiap uji punya H0 dan H1. Yang perlu Anda ubah adalah substansinya, karena pertanyaan penelitian Anda berbeda: mereka membandingkan presisi (FP16 vs INT4) pada dua skala dataset, sedangkan Anda membandingkan granularitas (per-tensor vs per-channel) pada satu tugas dan satu dataset.

---

## 10. Catatan keputusan

**Keputusan 1 — cakupan parameter (diputuskan 24 Oktober 2026): A.**
Seluruh parameter bobot dikuantisasi, termasuk matriks *embedding* kata, *embedding* posisi, dan *embedding* tipe token. Rasio ukuran yang diklaim pada Bab IV adalah 25% dari FP32 (124,3 MB dari 497,3 MB). Angka 48% tetap dilaporkan sebagai pembanding untuk kasus embedding dilewatkan, tetapi tidak dijadikan konfigurasi uji keempat, sehingga jumlah perbandingan berpasangan tetap tiga dan koreksi Holm tetap m = 3.

Konsekuensi untuk Bab III: Tabel daftar modul pada 3.2.6 harus memuat `nn.Linear` (proyeksi atensi, feed-forward, pooler, kepala QA) **dan** `nn.Embedding` (kata, posisi, tipe token). Sumbu per-*channel* untuk seluruh modul adalah baris keluaran, sesuai Subbab 2.5.6.

**Keputusan 2 — pustaka implementasi (diputuskan 24 Oktober 2026): a.**
Kuantisasi ditulis manual dengan PyTorch dan `transformers`. Bobot diganti tensor bilangan bulat dengan skala per-tensor atau per-channel, lalu didekuantisasi di dalam `forward`. Tidak ada kernel khusus, karena komputasi tetap berjalan dalam *floating point* setelah dekuantisasi. Konsekuensinya, tidak ada percepatan nyata dan latensi tetap dilaporkan sebagai metrik deskriptif.

Konsekuensi untuk Bab III: Subbab 3.2.6 memuat tiga fungsi inti (hitung skala, kuantisasi, dekuantisasi) dan daftar modul sasaran (`nn.Linear` dan `nn.Embedding`). Tabel 3.1 mencantumkan versi PyTorch, `transformers`, dan `datasets`.

---

## 11. Data final setelah praproses (sumber: `D:\KEJARCEPATTTT\Dataset_SQuAD_ID\laporandata.md`, diverifikasi ulang)

Angka di bawah sudah saya periksa langsung ke berkas `data_clean/*.jsonl`, bukan hanya dibaca dari laporan.

| Split | Baris | Artikel | Konteks | Jawaban |
|---|---:|---:|---:|---:|
| train | 64.054 | 395 | 17.136 | 64.054 |
| validation | 5.997 | 44 | 1.574 | 5.997 |
| test | 5.244 | 35 | 1.200 | 16.428 |

Rantai penyaringan yang harus dipakai konsisten di Bab II, Bab III, dan Bab IV:

| Tahap | Train | Dev |
|---|---:|---:|
| Baris masuk | 130.319 | 11.873 |
| Dibuang `is_impossible` | −43.498 | −5.945 |
| Baris terjawab | 86.821 | 5.928 |
| Gagal diperbaiki | −16.705 | −676 |
| Duplikat (konteks, pertanyaan) | −65 | −8 |
| **Dipakai** | **70.051** | **5.244** |

Dari 70.051 baris itu, 5.997 (10%) menjadi validasi, sehingga berkas latih berisi 64.054 baris. Rincian perbaikan pada data latih: 61.359 sudah valid sejak awal, 3.168 diperbaiki dengan normalisasi, 5.589 dengan pencocokan *fuzzy* (ambang 85), lalu 65 duplikat dibuang.

**Konsekuensi yang sudah dikerjakan:** Tabel 2.1 pada Bab II diperbarui. Barisnya sekarang memisahkan tiga kelompok, yaitu ukuran data, kondisi mentah (baris terjawab 86.821 dan 5.928, dengan 25.462 dan 1.071 bertanda tidak valid), dan hasil penyaringan (gagal 16.705 dan 676, duplikat 65 dan 8, dipakai 70.051 dan 5.244). Aritmetika kedua kolom kini menutup.

**Konsekuensi untuk Bab IV:** EM dan F1 dihitung pada 5.244 baris uji dengan 16.428 jawaban acuan, memakai jawaban terbaik per pertanyaan (standar SQuAD). Klaim ukuran model tetap 25% dari FP32 karena keputusan 1 memakai cakupan seluruh parameter bobot.

**Keputusan 5 — seed dan pengulangan (diputuskan): 3 seed.**

Dasar empiris dari korpus (14 dari 65 paper menyebut seed):

| Paper | Konteks | Praktik |
|---|---|---|
| Abdurrahman dkk. (2023) | IndoBERT + PTQ/QAT, 7 tugas IndoNLU | "average F1 metric from three different seed values" |
| Sanjaya dkk. (2026) | Kuantisasi transformer Indonesia, sentimen | "average over three seeds"; LR 2e-5, batch 16, panjang 128, 3 epoch |
| Bondarenko dkk. (2021) | Kuantisasi Transformer, GLUE | "median over 5 runs with different random seeds" |
| Sherry (2025) | Ternary quantization | "averaged over three independent runs" |
| Stabilized activation scale (2025) | PTQ | "5 runs using randomly different seeds" |
| Flat Minima INT4 (2026) | INT4 collapse | "N = 3 independent random seeds" |
| Understanding INT4 (2024) | INT4 latency | "a fixed random seed 42" |
| Calibration Data (2024) | Peringatan | "using a seed … does not guarantee consistency across software or platform versions" |

Rancangan: fine-tuning tiga kali (seed 42, 1337, 2024), tiap run memilih checkpoint terbaik menurut F1 validasi. Setiap checkpoint dikuantisasi dua kali (per-tensor dan per-channel). Kuantisasi deterministik, sehingga tidak diulang per seed.

Waktu: beban utama hanya fine-tuning, sekitar 1,5–2 jam per run pada GPU kelas T4 dan 0,8–1,2 jam pada RTX 3060, sehingga tiga seed menambah 3–4 jam pada RTX 3060. Kuantisasi, evaluasi uji, dan uji signifikansi tidak berlipat secara berarti.

Metrik yang terpengaruh seed hanya EM dan F1 (serta nilai p), sedangkan ukuran model, jumlah parameter, dan daftar modul tidak berubah. Latensi tidak boleh diulang per seed karena variasi latensi adalah noise alat ukur, bukan efek perlakuan.

Uji signifikansi dijalankan **per seed**, bukan pada prediksi gabungan, karena menggabungkan prediksi tiga seed melanggar asumsi kebebasan sampel pada McNemar dan membuat nilai p terlalu kecil.

**Keputusan 6 — epoch dan early stopping (diputuskan).**
Batas maksimum 6 epoch, early stopping dengan patience 2 dan min_delta 0,001 pada F1 validasi, lalu bobot terbaik dipulihkan sebelum kuantisasi. Alasan batas 6 dan bukan 4: dengan batas 4, early stopping hampir tidak pernah aktif sehingga tidak berfungsi. Jumlah epoch tempat tiap seed berhenti wajib dilaporkan, karena bila ketiganya berhenti di 4 atau 5, itu mendukung rentang 2–4 epoch dari Suhendra dkk. (2026).

Perbandingan praktik empat dokumen:

| Dokumen | Epoch | Justifikasi | Early stopping | Pemilihan model |
|---|---|---|---|---|
| Suhendra dkk. (2026) | 4 | Ada, menyebut rentang 2–4 epoch | Tidak disebut | Evaluasi pada validasi |
| Devlin dkk. (2019) | 3 (SQuAD v1.1), 2 (v2.0) | Tidak, hanya dilaporkan | Tidak | Model terbaik di dev set |
| Wilie dkk. (2020) IndoNLU | grid 2/4/6 | Tidak | **Ya**, pada skor validasi | Model terbaik |
| Tafftadia (2025) | 5 | **Tidak ada** | Tidak | Tidak dijelaskan |
| Anissa (skripsi BERT) | 3 | Ada, satu kalimat, untuk menghindari overfitting | Tidak | Validasi tiap epoch, tanpa aturan pemilihan |
| Qinthara (skripsi klasik) | tidak berlaku | GridSearchCV + validasi silang 10-fold | tidak berlaku | Terbaik menurut CV |

**Keputusan 7 — lingkungan eksperimen (diputuskan): Kaggle Notebooks, satu Tesla T4 16 GB.**
Spesifikasi yang masuk Tabel 3.1: platform Kaggle Notebooks, GPU Tesla T4 16 GB VRAM (satu GPU dari dua yang tersedia), 4 vCPU, RAM 29 GB, penyimpanan 20 GB, batas sesi 9 jam dan kuota 30 jam per minggu, Python dan PyTorch sesuai image Kaggle saat eksekusi, transformers dan datasets dengan versi yang dicatat pada lampiran.

Catatan teknis: bila kelak memakai A100, TF32 harus dimatikan (`torch.backends.cuda.matmul.allow_tf32 = False`) agar hasil sebanding dengan T4. Seluruh run harus berada pada satu jenis GPU, karena lingkungan pengukuran adalah bagian dari perlakuan.
```

<a id="f-audit-paragraf-bab2-md"></a>

## `AUDIT_PARAGRAF_BAB2.md`

Ukuran 17,215 byte &middot; 162 baris &middot; sha256 `bd24be036ea6` &middot; encoding `utf-8-sig`

```markdown
# Audit Paragraf Bab II

Dibuat otomatis dari `src/chapters/chapter-2.tex`. Prosa saja: judul, tabel, gambar, dan rumus tidak dihitung.

**Cara membaca.** Kolom *Ide pokok*: `D` = klaim di kalimat pertama (deduktif), `Tertunda` = kalimat pertama dibuka frasa keterangan atau rujukan mundur sehingga ide pokok muncul belakangan, `—` = lanjutan penjelasan simbol setelah rumus, `?` = perlu dibaca manual.

**Temuan penting:** tidak ada satu pun paragraf yang benar-benar induktif (ide pokok baru muncul di kalimat terakhir). Tiga paragraf ditutup konektor simpulan (No. 18, 44, 57), tetapi klaimnya sudah ada di kalimat pertama.

**Kaidah acuan:** paragraf isi 3–5 kalimat; ide pokok di awal (baku) atau di akhir (boleh, bila ditandai konektor simpulan); paragraf 1–2 kalimat hanya sah untuk pengantar tabel/gambar/rumus, catatan tabel, dan penjelasan simbol.

| No | Subbab | Kal. | Ide pokok | Kalimat pertama (dipotong) | Tindakan |
|---:|---|---:|:---:|---|---|
| 1 | Extractive Question Answering | 3 | D | Question answering adalah tugas pengolahan bahasa alami yang meminta sistem me | Pertahankan |
| 2 | Extractive Question Answering | 4 | Tertunda | Dengan formulasi tersebut, extractive question answering dapat dipandang sebag | Perbaiki pembuka (ide pokok tertunda) |
| 3 | Extractive Question Answering | 3 | D | Sebagian sampel pada dataset yang berasal dari SQuAD v2.0 tidak memiliki jawab | Pertahankan |
| 4 | Extractive Question Answering | 1 | D | Pemanfaatan tugas ini untuk bahasa Indonesia telah dilakukan pada dataset terj | Gabung dengan paragraf tetangga |
| 5 | BERT | 2 | D | Transformer adalah arsitektur yang memproses urutan token menggunakan mekanism | Gabung dengan paragraf tetangga |
| 6 | BERT | 5 | — | dengan X adalah dimensi key. | Pertahankan |
| 7 | BERT | 3 | — | dengan X, dengan X, X, X adalah matriks proyeksi head ke-X dan X adalah matrik | Pertahankan |
| 8 | BERT | 3 | D | BERT adalah model bahasa pralatih yang menggunakan encoder Transformer secara  | Pertahankan |
| 9 | BERT | 4 | — | dengan X adalah himpunan indeks token yang disembunyikan, X adalah token targe | Pertahankan |
| 10 | BERT | 2 | D | Penyesuaian model pralatih terhadap tugas extractive question answering dilaku | Gabung dengan paragraf tetangga |
| 11 | BERT | 5 | D | Persamaan menghubungkan keluaran model dengan metrik evaluasi, karena posisi a | Pertahankan |
| 12 | IndoBERT | 5 | D | IndoBERT adalah model bahasa pralatih berbahasa Indonesia berarsitektur BERT y | Pertahankan |
| 13 | IndoBERT | 4 | D | Varian yang digunakan pada penelitian ini adalah indobert-base-p2. | Pertahankan |
| 14 | Dataset SQuAD-id | 4 | D | SQuAD-id adalah dataset extractive question answering berbahasa Indonesia yang | Pertahankan |
| 15 | Dataset SQuAD-id | 6 | D | Penelitian ini menggunakan versi SQuAD-id yang telah ditata ulang dan dikoreks | Pecah |
| 16 | Dataset SQuAD-id | 3 | D | Dataset yang dipakai hanya menyediakan dua pembagian data, yaitu data latih da | Pertahankan |
| 17 | Dataset SQuAD-id | 2 | D | Sumber: hasil pemeriksaan ulang berkas dataset pada penelitian ini. | Pertahankan (pengantar/catatan float) |
| 18 | Dataset SQuAD-id | 5 | D | Dua batasan dataset perlu dicatat. | Pertahankan |
| 19 | Kompresi Model | 1 | D | Kompresi model mencakup beberapa kelompok teknik yang banyak digunakan untuk m | Gabung dengan paragraf tetangga |
| 20 | Kompresi Model | 3 | D | Pruning menghapus bobot atau koneksi yang kontribusinya kecil terhadap keluara | Pertahankan |
| 21 | Kompresi Model | 2 | D | Knowledge distillation melatih model berukuran lebih kecil (student) agar meni | Gabung dengan paragraf tetangga |
| 22 | Kompresi Model | 2 | D | Kuantisasi menurunkan presisi representasi numerik bobot atau aktivasi . | Gabung dengan paragraf tetangga |
| 23 | Kompresi Model | 4 | D | Dibandingkan dua teknik sebelumnya, kuantisasi memiliki tiga sifat yang membed | Pertahankan |
| 24 | Kompresi Model | 4 | Tertunda | Besarnya pengurangan tersebut dapat dihitung langsung dari jumlah parameter. | Perbaiki pembuka (ide pokok tertunda) |
| 25 | Kompresi Model | 4 | D | Alasan berikutnya adalah adanya bukti bahwa kuantisasi pada model encoder dapa | Pertahankan |
| 26 | Kuantisasi pada Jaringan Saraf | 4 | Tertunda | Dalam jaringan saraf, kuantisasi diterapkan pada tensor bobot dan aktivasi yan | Perbaiki pembuka (ide pokok tertunda) |
| 27 | Representasi Numerik: FP16, IN | 2 | D | Presisi numerik menunjukkan jumlah bit yang digunakan untuk merepresentasikan  | Gabung dengan paragraf tetangga |
| 28 | Representasi Numerik: FP16, IN | 2 | D | INT8 menyediakan 256 tingkat representasi, sedangkan INT4 hanya 16 tingkat seh | Gabung dengan paragraf tetangga |
| 29 | Representasi Numerik: FP16, IN | 2 | D | Susunan bit dan rentang nilai keempat format dirangkum pada Tabel, sedangkan G | Pertahankan (pengantar/catatan float) |
| 30 | Representasi Numerik: FP16, IN | 1 | Tertunda | Pada praktik kuantisasi, bilangan bulat bertanda disimpan dalam bentuk komplem | Gabung dengan paragraf tetangga |
| 31 | Representasi Numerik: FP16, IN | 2 | D | Model dengan representasi numerik berpresisi tinggi membutuhkan ruang penyimpa | Gabung dengan paragraf tetangga |
| 32 | Konsep Dasar Kuantisasi | 2 | D | Kuantisasi pada jaringan saraf diperkenalkan sebagai cara menggantikan komputa | Gabung dengan paragraf tetangga |
| 33 | Konsep Dasar Kuantisasi | 1 | D | Bentuk umum pemetaan tersebut, yang dipakai sepanjang bab ini, adalah | Pertahankan (pengantar rumus) |
| 34 | Konsep Dasar Kuantisasi | 3 | — | dengan X adalah faktor skala, X adalah zero point, serta X dan X adalah batas  | Pertahankan |
| 35 | Konsep Dasar Kuantisasi | 7 | D | Penerapan kuantisasi pada model terlatih berjalan melalui lima tahap. | Pecah |
| 36 | Skema Kuantisasi Simetris dan  | 1 | D | Kuantisasi simetris untuk bilangan bulat X-bit didefinisikan sebagai berikut : | Pertahankan (pengantar rumus) |
| 37 | Skema Kuantisasi Simetris dan  | 5 | D | Pada Persamaan dan, X adalah nilai riil masukan, X adalah nilai terkuantisasi, | Pertahankan |
| 38 | Skema Kuantisasi Simetris dan  | 5 | Tertunda | Sebagai ilustrasi, misalkan satu tensor bobot memiliki nilai terkecil X dan te | Perbaiki pembuka (ide pokok tertunda) |
| 39 | Skema Kuantisasi Simetris dan  | 2 | D | Skema simetris dipilih karena distribusi bobot model terlatih umumnya memusat  | Gabung dengan paragraf tetangga |
| 40 | Cakupan: Weight-Only dan Joint | 4 | D | Kuantisasi dapat diterapkan pada bobot saja atau pada bobot dan aktivasi sekal | Pertahankan |
| 41 | Cakupan: Weight-Only dan Joint | 2 | D | Cakupan bobot yang dikuantisasi juga menentukan hasil akhir, karena tidak semu | Gabung dengan paragraf tetangga |
| 42 | Waktu: Post-Training Quantizat | 3 | D | Post-Training Quantization (PTQ) adalah pendekatan kuantisasi yang diterapkan  | Pertahankan |
| 43 | Waktu: Post-Training Quantizat | 2 | D | Tabel merangkum perbedaan keduanya. | Pertahankan (pengantar/catatan float) |
| 44 | Granularitas Kuantisasi | 3 | D | Granularitas kuantisasi menentukan cakupan bobot yang menggunakan parameter ku | Pertahankan |
| 45 | Granularitas Kuantisasi | 1 | Tertunda | Pada granularitas fine-grained, faktor skala ditentukan untuk cakupan bobot ya | Pertahankan (pengantar rumus) |
| 46 | Granularitas Kuantisasi | 5 | D | Bobot hasil rekonstruksi untuk kedua granularitas diperoleh dengan X pada coar | Pertahankan |
| 47 | Granularitas Kuantisasi | 4 | D | Perbedaan granularitas menghasilkan pertukaran antara efisiensi penyimpanan da | Pertahankan |
| 48 | Granularitas Kuantisasi | 2 | D | Perbandingan ketiga tingkat granularitas dirangkum pada Tabel. | Pertahankan (pengantar/catatan float) |
| 49 | Teknik Bit-Packing pada Repres | 4 | D | Representasi memori pada perangkat komputasi umumnya dialamatkan per byte (8 b | Pertahankan |
| 50 | Teknik Bit-Packing pada Repres | 1 | Tertunda | Tanpa bit-packing, satu nilai INT4 menempati satu byte sehingga ukuran berkas  | Gabung dengan paragraf tetangga |
| 51 | Teknik Bit-Packing pada Repres | 2 | Tertunda | Pada kuantisasi tersimulasi, bobot didekuantisasi sebelum komputasi sehingga p | Gabung dengan paragraf tetangga |
| 52 | Exact Match dan F1 | 3 | D | Kinerja extractive question answering diukur dengan Exact Match (EM) dan F1, y | Pertahankan |
| 53 | Exact Match dan F1 | 1 | — | dengan X adalah jawaban prediksi sampel ke-X, X adalah himpunan jawaban acuan  | Pertahankan (penjelasan simbol) |
| 54 | Exact Match dan F1 | 2 | D | F1 mengukur tumpang tindih token antara jawaban prediksi dan jawaban acuan. | Gabung dengan paragraf tetangga |
| 55 | Ukuran Model dan Latensi Infer | 2 | D | Latensi inferensi adalah waktu yang diperlukan model untuk menghasilkan predik | Gabung dengan paragraf tetangga |
| 56 | Ukuran Model dan Latensi Infer | 2 | D | Latensi bergantung pada perangkat, implementasi kernel, dan cara penyimpanan b | Gabung dengan paragraf tetangga |
| 57 | Ukuran Model dan Latensi Infer | 3 | D | Efisiensi penyimpanan diukur melalui ukuran model dalam megabyte (MB), yaitu u | Pertahankan |
| 58 | Uji Signifikansi: McNemar dan  | 3 | D | Perbedaan nilai EM atau F1 antarkonfigurasi belum tentu berarti perbedaan kine | Pertahankan |
| 59 | Uji Signifikansi: McNemar dan  | 2 | Tertunda | Untuk Exact Match yang bernilai biner pada setiap sampel, perbedaan dua model  | Gabung dengan paragraf tetangga |
| 60 | Uji Signifikansi: McNemar dan  | 3 | D | dengan koreksi kontinuitas untuk sampel berukuran besar. | Pertahankan |
| 61 | Uji Signifikansi: McNemar dan  | 3 | — | dengan X dan X adalah skor sampel ke-X pada model X dan model X (EM atau F1 pe | Pertahankan |
| 62 | Uji Signifikansi: McNemar dan  | 4 | Tertunda | Apabila beberapa konfigurasi dibandingkan pada dataset yang sama, jumlah perba | Perbaiki pembuka (ide pokok tertunda) |
| 63 | Ringkasan Penelitian Terdahulu | 6 | D | Penelitian terdahulu yang relevan dirangkum pada Tabel berdasarkan kesamaan me | Pecah |
| 64 | Ringkasan Penelitian Terdahulu | 2 | D | Keterangan: X menandai penelitian yang terbit pada 2023--2026 sehingga belum m | Pertahankan (pengantar/catatan float) |
| 65 | Ringkasan Penelitian Terdahulu | 2 | D | Angka antarbaris pada Tabel tidak dapat dibandingkan secara langsung, karena m | Pertahankan (pengantar/catatan float) |
| 66 | Celah Penelitian dan Kerangka  | 5 | Tertunda | Berdasarkan Tabel, dapat diidentifikasi tiga celah. | Perbaiki pembuka (ide pokok tertunda) |
| 67 | Celah Penelitian dan Kerangka  | 3 | D | Penelitian ini mengisi celah tersebut dengan mengevaluasi weight-only PTQ pada | Pertahankan |
| 68 | Celah Penelitian dan Kerangka  | 1 | D | Alur penalaran penelitian ini dirangkum pada Gambar. | Pertahankan (pengantar/catatan float) |

## Ringkasan

- Paragraf isi: **68**
- Pola ide pokok: `D` 51, `Tertunda` 11, `—` 6
- Jumlah kalimat: 1 kal. 9, 2 kal. 21, 3 kal. 15, 4 kal. 12, 5 kal. 8, 6 kal. 2, 7 kal. 1
- Sudah 3–5 kalimat: **35** (51%)
- Di bawah 3 kalimat: **30**
- Di atas 5 kalimat: **3**

| Tindakan | Jumlah |
|---|---:|
| Pertahankan | 29 |
| Gabung dengan paragraf tetangga | 19 |
| Pertahankan (pengantar/catatan float) | 7 |
| Perbaiki pembuka (ide pokok tertunda) | 6 |
| Pecah | 3 |
| Pertahankan (pengantar rumus) | 3 |
| Pertahankan (penjelasan simbol) | 1 |

## Perlu dipecah (lebih dari 5 kalimat)

- No. 15 — 6 kalimat, Dataset SQuAD-id: Penelitian ini menggunakan versi SQuAD-id yang telah ditata ulang dan dikoreksi 
- No. 35 — 7 kalimat, Konsep Dasar Kuantisasi: Penerapan kuantisasi pada model terlatih berjalan melalui lima tahap.
- No. 63 — 6 kalimat, Ringkasan Penelitian Terdahulu: Penelitian terdahulu yang relevan dirangkum pada Tabel berdasarkan kesamaan meto

## Ide pokok tertunda (3–5 kalimat)

- No. 2 — 4 kalimat, Extractive Question Answering: Dengan formulasi tersebut, extractive question answering dapat dipandang sebagai
- No. 24 — 4 kalimat, Kompresi Model: Besarnya pengurangan tersebut dapat dihitung langsung dari jumlah parameter.
- No. 26 — 4 kalimat, Kuantisasi pada Jaringan Saraf Tiruan: Dalam jaringan saraf, kuantisasi diterapkan pada tensor bobot dan aktivasi yang 
- No. 38 — 5 kalimat, Skema Kuantisasi Simetris dan Asimetris: Sebagai ilustrasi, misalkan satu tensor bobot memiliki nilai terkecil X dan terb
- No. 62 — 4 kalimat, Uji Signifikansi: McNemar dan Bootstrap Berpasangan: Apabila beberapa konfigurasi dibandingkan pada dataset yang sama, jumlah perband
- No. 66 — 5 kalimat, Celah Penelitian dan Kerangka Berpikir: Berdasarkan Tabel, dapat diidentifikasi tiga celah.

## Paragraf 1–2 kalimat yang perlu digabung

- No. 4 — 1 kalimat, Extractive Question Answering: Pemanfaatan tugas ini untuk bahasa Indonesia telah dilakukan pada dataset terjem
- No. 5 — 2 kalimat, BERT: Transformer adalah arsitektur yang memproses urutan token menggunakan mekanisme 
- No. 10 — 2 kalimat, BERT: Penyesuaian model pralatih terhadap tugas extractive question answering dilakuka
- No. 19 — 1 kalimat, Kompresi Model: Kompresi model mencakup beberapa kelompok teknik yang banyak digunakan untuk men
- No. 21 — 2 kalimat, Kompresi Model: Knowledge distillation melatih model berukuran lebih kecil (student) agar meniru
- No. 22 — 2 kalimat, Kompresi Model: Kuantisasi menurunkan presisi representasi numerik bobot atau aktivasi .
- No. 27 — 2 kalimat, Representasi Numerik: FP16, INT8, dan INT4: Presisi numerik menunjukkan jumlah bit yang digunakan untuk merepresentasikan se
- No. 28 — 2 kalimat, Representasi Numerik: FP16, INT8, dan INT4: INT8 menyediakan 256 tingkat representasi, sedangkan INT4 hanya 16 tingkat sehin
- No. 30 — 1 kalimat, Representasi Numerik: FP16, INT8, dan INT4: Pada praktik kuantisasi, bilangan bulat bertanda disimpan dalam bentuk komplemen
- No. 31 — 2 kalimat, Representasi Numerik: FP16, INT8, dan INT4: Model dengan representasi numerik berpresisi tinggi membutuhkan ruang penyimpana
- No. 32 — 2 kalimat, Konsep Dasar Kuantisasi: Kuantisasi pada jaringan saraf diperkenalkan sebagai cara menggantikan komputasi
- No. 39 — 2 kalimat, Skema Kuantisasi Simetris dan Asimetris: Skema simetris dipilih karena distribusi bobot model terlatih umumnya memusat di
- No. 41 — 2 kalimat, Cakupan: Weight-Only dan Joint Weight-Activation: Cakupan bobot yang dikuantisasi juga menentukan hasil akhir, karena tidak semua 
- No. 50 — 1 kalimat, Teknik Bit-Packing pada Representasi Lebar Bit Rendah: Tanpa bit-packing, satu nilai INT4 menempati satu byte sehingga ukuran berkas me
- No. 51 — 2 kalimat, Teknik Bit-Packing pada Representasi Lebar Bit Rendah: Pada kuantisasi tersimulasi, bobot didekuantisasi sebelum komputasi sehingga pen
- No. 54 — 2 kalimat, Exact Match dan F1: F1 mengukur tumpang tindih token antara jawaban prediksi dan jawaban acuan.
- No. 55 — 2 kalimat, Ukuran Model dan Latensi Inferensi: Latensi inferensi adalah waktu yang diperlukan model untuk menghasilkan prediksi
- No. 56 — 2 kalimat, Ukuran Model dan Latensi Inferensi: Latensi bergantung pada perangkat, implementasi kernel, dan cara penyimpanan bob
- No. 59 — 2 kalimat, Uji Signifikansi: McNemar dan Bootstrap Berpasangan: Untuk Exact Match yang bernilai biner pada setiap sampel, perbedaan dua model di

## Status setelah perbaikan (24 Oktober 2026)

Tabel di atas adalah kondisi **sebelum** perbaikan. Berikut yang sudah dikerjakan dan hasilnya.

| Kelompok | Tindakan | Jumlah | Rincian |
|---|---|---|---|
| Ide pokok tertunda | Pembuka ditulis ulang | 6 | No. 2, 24, 26, 38, 62, 66 — subjek dipindah ke depan, frasa keterangan dan rujukan mundur dibuang |
| Paragraf panjang | Dipecah | 3 | No. 15 (setelah riwayat versi), No. 35 (setelah tahap ketiga), No. 63 (setelah tiga syarat) |
| Paragraf pendek tanpa sitasi | Diperkuat rujukan terverifikasi | 3 | No. 22 (+Jacob 2018, aritmetika bilangan bulat), No. 41 (+Bondarenko 2021, pengelompokan embedding), No. 56 (+Gholami 2021, penghematan 4–8 kali) |
| Paragraf pendek bertopik sama | Digabung | 5 | 19+20 (kompresi + pruning), 27+28 (presisi numerik + INT8/INT4), 32+33 (konsep dasar + pengantar rumus), 50+51 (bit-packing + kuantisasi tersimulasi), 55+56 (latensi + faktor perangkat) |
| Catatan tabel | Sitasi diganti | 1 | No. 30 — klaim komplemen dua tidak ada di Jacob dkk., diganti rentang nilai dari Gholami dkk. |
| Paragraf pendek yang dibiarkan | Tidak diubah | 12 | Pembuka anak subbab, jembatan sebelum rumus, dan paragraf teknik yang paralel (pruning/distilasi/kuantisasi). Digabung akan melanggar aturan satu paragraf satu topik atau melewati lima kalimat. |

**Angka sebelum dan sesudah**

| Ukuran | Sebelum | Sesudah |
|---|---:|---:|
| Paragraf isi | 68 | 66 |
| Paragraf 3–5 kalimat | 35 (51%) | **45 (68%)** |
| Paragraf di bawah 3 kalimat | 30 | 21 |
| Paragraf di atas 5 kalimat | 3 | **0** |
| Ide pokok tertunda (3–5 kalimat) | 6 | **0** |
| Paragraf induktif | 0 | 0 |

Sisa 21 paragraf pendek terdiri atas 9 pengantar/catatan float dan 12 paragraf yang sengaja dipertahankan (lihat baris terakhir tabel di atas).
```

<a id="f-kajian-proposal-tafftadia-md"></a>

## `KAJIAN_PROPOSAL_TAFFTADIA.md`

Ukuran 13,079 byte &middot; 154 baris &middot; sha256 `b1e33af4b389` &middot; encoding `utf-8-sig`

```markdown
# Kajian Proposal Skripsi Tafftadia Imada — dan apa yang bisa dipakai untuk skripsimu

Dokumen yang dikaji: `D:\KEJARCEPATTTT\quantization\paper\sudah dipilih\bahan\Proposal Skripsi - Weight-Only Post-Training Quantization ResNet (Tafftadia).pdf` (39 halaman, proposal Bab I–III, belum ada hasil).

Skripsimu: **Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia** — objek IndoBERT + SQuAD-id, membandingkan granularitas per-tensor (coarse) vs per-channel (fine), metrik EM/F1 + ukuran model, uji signifikansi.

Catatan atas poin 1: **Bab I dan Bab II-mu tidak memuat isi finansial sama sekali.** Yang masih bertopik finansial hanya `src/chapters/abstract-id.tex` (Ringkasan lama: IndoFinSent, Financial PhraseBank, Macro F1) — dan itu sudah kamu putuskan diisi sendiri. Kata "sentimen" yang muncul di `chapter-1.tex:24`, `chapter-2.tex:171`, dan `chapter-2.tex:181` adalah penyebutan paper orang lain sebagai penelitian terdahulu, bukan topik skripsimu. Jadi tidak ada yang perlu dibongkar di dua bab itu.

---

## 1. Isi proposal temanmu (peta cepat)

| Bagian | Isi |
|---|---|
| Bab I | 1.1 Latar Belakang · 1.2 Rumusan (4 butir) · 1.3 Tujuan (4 butir) · **1.4 Manfaat (teoritis & praktis)** · 1.5 Batasan (9 butir) |
| Bab II | 2.1 Klasifikasi citra · 2.2 ResNet (residual, ResNet50, transfer learning) · 2.3 Dataset (CIFAR-10, ImageNet) · 2.4 Kompresi model · 2.5 Quantization (2.5.2 konsep dasar, 2.5.3 simetris/asimetris, 2.5.4 cakupan, 2.5.5 waktu, **2.5.6 granularitas**, 2.5.7 **bit-packing**) · 2.6 Metrik (performa, efisiensi, uji signifikansi) · 2.7 Penelitian Terdahulu (5 baris) · 2.8 Research Gap (4 poin) · **2.9 Kerangka Berpikir** |
| Bab III | 3.1 Jenis & alur penelitian · 3.2 Desain eksperimen (lingkungan, data & EDA, preprocessing, model, **implementasi kuantisasi**, skenario pengujian) · 3.3 Teknik analisis (deskriptif, **uji signifikansi per metrik**) · 3.4 Jadwal 7 bulan |

Inti skemanya: **Weight-Only INT4 PTQ, uniform simetris, granularitas per-channel + bit-packing, pada ResNet-50, baseline FP16, dua dataset (CIFAR-10 & ImageNet), empat metrik performa + tiga metrik efisiensi, diuji signifikansi.**

---

## 2. Beda mendasar dengan skripsimu

| Aspek | Tafftadia | Kamu | Konsekuensi |
|---|---|---|---|
| Tugas | Klasifikasi citra | Extractive QA (span) | Metrik dan uji statistik tidak bisa disalin mentah |
| Model | ResNet-50 (CNN) | IndoBERT-base p2 (Transformer encoder) | Bit-packing relevan di konvolusi; di Transformer, lapisan linear yang dikuantisasi |
| Dataset | CIFAR-10, ImageNet | SQuAD-id | — |
| Baseline | FP16 | FP32 | Rasio kompresi berbeda: 4-bit vs FP32 = 8x teoretis, vs FP16 = 4x |
| Granularitas | **hanya per-channel** | **per-tensor vs per-channel** | Ini keunggulanmu — dia tidak membandingkan |
| Bit-packing | Ya (INT4 dipadatkan 2 nilai/byte) | (perlu kamu pastikan) | Sangat mempengaruhi klaim ukuran model — lihat §4.1 |
| Uji signifikansi | McNemar (akurasi), bootstrap (P/R/F1), paired t/Wilcoxon (latensi, memori) | Paired bootstrap + koreksi Holm (EM & F1) | Kamu bisa menambah McNemar untuk EM |
| Status | Proposal (belum ada hasil) | Bab I–II | Bisa dipakai sebagai cetakan struktur, bukan sumber bukti |

---

## 3. Yang layak kamu adopsi

### 3.1 Framing "tiga keputusan independen" — paling berguna untuk Bab II

Dia menulis: *"Quantization bukan satu keputusan tunggal, melainkan tiga keputusan yang independen, yaitu cakupan (apa yang dikuantisasi), waktu (kapan kuantisasi diterapkan), dan granularitas (seberapa halus parameter kuantisasi dihitung)."*

Ini persis kerangka yang Bab II-mu butuhkan. Sekarang Bab II-mu membahas cakupan (Subbab 2.4) dan granularitas (akhir 2.4) secara mengalir, tanpa menyatakan bahwa ketiganya sumbu terpisah. Kalau framing ini dipakai di pembuka Subbab 2.4, posisi penelitianmu jadi jelas dalam satu kalimat: **cakupan dipatok weight-only, waktu dipatok PTQ, yang divariasikan hanya granularitas.**

### 3.2 Tabel spektrum granularitas (per-tensor → per-channel → per-group)

Dia punya Tabel 2.5 dengan baris: jumlah parameter scale, kepekaan terhadap variasi antar-channel, kepekaan terhadap variasi di dalam satu channel, overhead metadata, potensi akurasi pada bit-width rendah.

Bab II-mu hanya membahas dua tingkat (per-tensor dan per-channel). Menambahkan per-group ke tabel itu — walau tidak diuji — membuat dua hal sekaligus: (a) menunjukkan kamu tahu peta lengkapnya, (b) memberi tempat alami untuk "saran penelitian lanjutan" di Bab V. Pengisi tabelnya sudah ada di korpusmu: `A Survey of Quantization Methods…` (Bagian E, layerwise/channelwise/groupwise) dan `Understanding and Overcoming the Challenges…` (per-embedding-group).

### 3.3 Alasan memakai skema simetris

Dia menjelaskan: bobot model terlatih umumnya **zero-centered**, jadi skema simetris (tanpa zero-point) memadai dan lebih murah; sedangkan aktivasi tidak simetris (ReLU) sehingga butuh asimetris.

Bab II-mu sudah memakai simetris (Persamaan 2.1–2.2) tapi belum pernah menjelaskan **kenapa**. Satu paragraf ini menutup celah itu, dan sekaligus menjelaskan kenapa weight-only cocok dipasangkan dengan simetris — persis kombinasi yang kamu pakai.

### 3.4 Tabel perbandingan QAT vs PTQ

Dia menyajikan tabel 5 aspek (waktu penerapan, kebutuhan retraining, biaya komputasi, potensi akurasi pada bit rendah, contoh). Bab II-mu membahas PTQ vs QAT secara naratif (baris 97). Tabel akan lebih mudah dinilai penguji, dan baris "potensi akurasi" bisa kamu isi dengan bukti dari korpus: Abdurrahman (PTQ 4-bit F1 72,78 vs QAT 74,94).

### 3.5 Tabel pemilihan uji signifikansi per metrik — yang paling berharga

Dia memilih uji **berdasarkan sifat metriknya**: akurasi per sampel (biner) → **McNemar**; precision/recall/F1 (agregat) → **bootstrap berpasangan**; latensi (variansi antar iterasi) → **paired t-test / Wilcoxon**; ukuran model → tidak diuji.

Ini bisa langsung memperkuat Bab II-mu: **EM itu biner per sampel**, jadi McNemar's test adalah uji berpasangan yang paling lazim untuk itu, sementara F1 (kontinu) lebih pas dengan bootstrap. Bab II-mu sekarang hanya memakai bootstrap + Holm untuk keduanya. Menambah McNemar khusus untuk EM memberi dua manfaat: metodologis lebih tepat, dan pembeda dari penelitian terdahulu (celah ke-3 di Bab II-mu justru "tidak ada uji signifikansi").

### 3.6 Subbab yang belum ada di skripsimu tapi ada di dia

| Subbab | Ada di dia | Ada di kamu | Nilai tambah |
|---|---|---|---|
| 1.4 Manfaat Penelitian (teoritis + praktis) | ✔ | ✘ | Bab I-mu langsung melompat dari Tujuan ke Batasan. Banyak pedoman mewajibkan Manfaat. |
| 2.9 Kerangka Berpikir | ✔ (4 tahap) | ✘ | Penutup Bab II yang merangkum alur logika; murah dibuat, sering diminta |
| 3.1 Jenis & Alur Penelitian | ✔ | ✘ (Bab III masih placeholder) | Cetakan siap pakai untuk Bab III-mu |
| 3.2.2 Lingkungan Eksperimen (tabel) | ✔ | ✘ | Wajib untuk reproduksibilitas |
| 3.2.7 Tabel Skenario Pengujian | ✔ | ✘ | Untukmu: 3 model (FP32, coarse, fine) × metrik |
| 3.4 Jadwal Penelitian | ✔ (7 bulan, Gantt) | ✘ | Biasanya dilampirkan |

### 3.7 Kejujuran metodologis yang patut ditiru

Batasan #8 dia: latensi diukur setelah **unpacking INT4 ke floating point** karena tidak ada kernel INT4 native, sehingga angka latensi "tidak sepenuhnya merepresentasikan potensi percepatan". Kamu melakukan hal serupa (kuantisasi tersimulasi, dekuantisasi sebelum komputasi). Bab I-mu sudah menulis "tidak mengembangkan kernel khusus untuk presisi rendah" — tinggal ditambah satu kalimat di Bab IV bahwa latensi bukan klaim percepatan.

### 3.8 Cara dia menulis research gap

Empat poin, tiap poin: paper yang ada → apa yang belum. Contoh: *"Luqman dkk. (2025) telah menerapkan PTQ weight-only pada ResNet50, tetapi dengan skema non-uniform…"*. Pola ini sudah kamu pakai (3 poin), tapi poin ke-2 dan ke-3-mu bergantung pada Han (2026) yang PDF-nya belum kamu pegang — lihat `ANALISIS_BAB1_BAB2.md` §3.3.

---

## 4. Yang jangan ditiru (karena konteksnya beda)

### 4.1 Klaim ukuran model: jangan pakai angka teoretis tanpa menjelaskan penyimpanan

Dia menulis terang: representasi memori dialamatkan per byte, sedangkan INT4 hanya 4 bit, sehingga **tanpa bit-packing setiap nilai INT4 tetap menempati satu byte penuh dan setengah kapasitas terbuang**. Karena itu dia mengimplementasikan packing (dua nilai INT4 per byte).

Ini penting untukmu: Bab II-mu menulis "ukuran teoretis model 4-bit adalah 12,5%". Itu benar **secara teoretis**, tetapi kalau bobot INT4 disimpan dalam tipe int8 (perilaku umum pustaka kuantisasi PyTorch), ukuran berkas aktualnya hanya turun ke ~25%, bukan 12,5%. Bab II-mu sudah menyinggung hal ini di baris 117 dan 137 (faktor skala + parameter tak terkuantisasi), tapi belum menyebut soal penyimpanan int8. Tambahkan satu kalimat, atau klaim ukuranmu akan mudah dipatahkan di sidang.

### 4.2 Baseline FP16

Dia memakai FP16 sebagai baseline. Kamu memakai FP32. Jangan ikut pindah ke FP16 tanpa alasan: baseline FP32 membuat rasio kompresi lebih dramatis (8x teoretis) dan lebih lazim di literatur kuantisasi. Tapi konsekuensinya kamu harus konsisten: kalau baseline FP32, jangan mengutip angka "kompresi 4x" dari paper yang baseline-nya FP16.

### 4.3 Hanya per-channel

Dia tidak membandingkan granularitas — itu justru celah yang kamu isi. Jangan tergoda mempersempit lingkup dengan alasan "biar seperti proposal teman"; perbandingan per-tensor vs per-channel adalah kontribusi utamamu.

### 4.4 McNemar untuk "akurasi" — tidak bisa disalin apa adanya

Dia punya satu nilai akurasi per sampel (benar/salah). Kamu punya EM (biner, bisa McNemar) **dan** F1 (kontinu, tidak bisa). Jangan memakai McNemar untuk F1.

### 4.5 Dua cacat kecil di proposalnya

- Latar belakang menulis "granularitas **3** per-channel" — sisa edit yang belum dibersihkan.
- Tabel 2.6 punya kolom "Sumbu Kuantisasi" tapi isinya tidak konsisten terisi.

Kalau kamu mengadopsi struktur tabelnya, rapikan kolomnya: **Cakupan | Waktu | Granularitas** sebagai tiga kolom terpisah, atau satu kolom "Sumbu" yang isinya eksplisit (mis. "weight-only · PTQ · per-channel").

---

## 5. Peluang kontribusi yang terbuka dari keterbatasannya

1. **Perbandingan granularitas.** Dia hanya per-channel; kamu per-tensor vs per-channel. Di korpusmu, yang menyentuh granularitas pada encoder pun hanya di domain lain (retrieval embedding, neural receiver) — bukan extractive QA.
2. **Uji signifikansi pada metrik QA.** Dia menguji akurasi klasifikasi; kamu menguji EM/F1 dengan bootstrap + Holm, dan bisa menambah McNemar untuk EM. Di Tabel 2.1-mu, tidak ada satu pun penelitian yang melaporkan uji signifikansi pada metrik QA.
3. **Domain bahasa Indonesia + tugas span extraction.** Tidak ada di proposalnya, dan menurut penelusuran di korpus (`Deep Research…` p24) belum ada weight-only PTQ pada dataset QA Indonesia.
4. **Model Transformer, bukan CNN.** Distribusi bobot dan titik rawan kuantisasi berbeda (outlier pada residual/attention). Kalau nanti hasilmu berbeda dari pola CNN, itu temuan, bukan kesalahan.

---

## 6. Pertanyaan yang layak kamu tanyakan ke dia

1. Waktu implementasi per-channel di ResNet, kamu hitung scale per **output channel** — untuk lapisan linear di Transformer, sumbu mana yang kamu pakai? (Ini persis TODO di `chapter-2.tex:115`.)
2. Bit-packing-nya ditulis sendiri atau pakai pustaka? Kalau ditulis sendiri, berapa overhead waktu packing/unpacking-nya, dan apakah masuk hitungan latensi?
3. Kenapa baseline FP16, bukan FP32? Apakah karena keterbatasan memori GPU?
4. Uji signifikansi dijalankan pada level apa — per sampel atau per run? Berapa kali pengulangan seed?
5. Untuk McNemar: kamu pakai tabel kontingensi 2×2 antar dua model, kan? Bagaimana kamu menangani sampel yang sama-sama salah?
6. Apakah pembimbingmu menyarankan struktur Bab I dengan Manfaat? (Kalau iya, skripsimu juga perlu.)

---

## 7. Rekomendasi aksi untuk skripsimu (belum saya kerjakan)

Prioritas 1 — murah, berdampak besar:
1. Tambah **1.4 Manfaat Penelitian** di Bab I (teoritis + praktis, 3 butir masing-masing).
2. Tambah **Kerangka Berpikir** di akhir Bab II (4 tahap, satu gambar + satu paragraf).
3. Tambah paragraf **framing tiga sumbu** di pembuka Subbab 2.4.
4. Tambah **alasan skema simetris** (bobot zero-centered) di 2.4.
5. Tambah satu kalimat soal **penyimpanan int8 / bit-packing** di dekat klaim 12,5%.

Prioritas 2 — metodologis:
6. Pertimbangkan **McNemar untuk EM** di samping bootstrap; kalau diadopsi, Bab II §2.5 perlu satu paragraf dan Bab I rumusan masalah ke-3 tidak perlu diubah (tetap "uji signifikansi statistik").
7. Tabel perbandingan **QAT vs PTQ** di 2.4.

Prioritas 3 — struktural (setelah Bab III dikerjakan):
8. Pakai kerangka Bab III dia (3.1 jenis & alur, 3.2 desain eksperimen dengan subbab lingkungan/data/preprocessing/model/implementasi/skenario, 3.3 analisis, 3.4 jadwal) — Bab III-mu sekarang masih placeholder.

Semua ini butuh persetujuanmu dulu; belum ada satu pun berkas `.tex` yang saya ubah.
```

<a id="f-penilaian-bab2-md"></a>

## `PENILAIAN_BAB2.md`

Ukuran 19,139 byte &middot; 197 baris &middot; sha256 `9f4c15d28f4c` &middot; encoding `utf-8-sig`

```markdown
# Penilaian Bab II terhadap Panduan AC-RIG UM 2021

Tanggal: 24 Oktober 2026
Berkas: `src/chapters/chapter-2.tex` (431 baris, 4.167 kata prosa di luar tabel, 5 tabel, 7 gambar, 13 persamaan)
Kompilasi: bersih (`pdflatex` 3× + biber, 0 error), Bab II menempati halaman 7–25.
Acuan: `judge/Panduan Penulisan Laporan Skripsi AC-RIG UM 2021.pdf` §BAB 2 + `judge/Daftar Pengecekan Penulisan Skripsi v2.0.pdf`

**Skor Bab II: 82 / 100.** Substansinya sudah di atas rata-rata skripsi S1 — teori tuntas, tiap rumus diberi alasan keberadaan, angka tabel bisa direproduksi. Yang menahan nilainya bukan isi, melainkan (a) keputusan penelitian yang ditulis di tempat yang salah, (b) tiga angka efisiensi yang saling bertabrakan, dan (c) satu definisi penyaringan data yang tidak cocok dengan angkanya sendiri.

| Kriteria panduan | Skor | Catatan singkat |
|---|---|---|
| Tinjauan penelitian sebelumnya (≥5 kajian, memuat tujuan/metode/hasil) | 8/10 | 8 studi, angka terverifikasi, tanda † jujur; urutan terbalik, tidak ada kolom tujuan/masalah |
| Landasan teori lengkap & tuntas | 9/10 | 7 subbab, 14 anak subbab, definisi + formula lengkap |
| Urutan umum → khusus | 7/10 | Alur metodologis rapi, tetapi tinjauan diletakkan paling akhir (panduan: paling awal) |
| Definisi + tahapan + formula per algoritme | 8/10 | Formula lengkap; "tahapan" kuantisasi end-to-end tidak pernah dirangkai sebagai satu prosedur |
| Setiap pernyataan bersitasi | 9/10 | 76 sitasi, 0 kunci menggantung; 2 klaim tanpa sitasi (pruning & distillation) |
| **Bab II hanya berisi teori, usulan peneliti di Bab III** | **4/10** | **7 tempat memuat keputusan penelitian** — pelanggaran aturan eksplisit panduan |
| Bab II ditutup dengan perbedaan & novelty | 10/10 | 2.7.2 tajam, celah dipersempit dengan benar |
| Konsistensi istilah & judul subbab | 6/10 | Judul subbab campur Inggris–Indonesia; `pra-latih` vs `pralatih` |

---

## 1. Struktur: cocok atau tidak dengan "Susunan Umum" panduan

Panduan §BAB 2 menetapkan susunan umum: (1) kajian penelitian sebelumnya, (2) objek studi kasus, (3) dasar teori umum → khusus, termasuk metode evaluasi. Naskah Anda:

| Panduan | Naskah | Selisih |
|---|---|---|
| 1. Kajian penelitian sebelumnya | **2.7** (paling akhir) | Urutan terbalik |
| 2. Objek studi kasus | — | Tidak relevan (bukan RPL/MDI) |
| 3a. Teori objek | 2.1 Extractive QA, 2.2 BERT & IndoBERT, 2.3 Dataset SQuAD-id | Sesuai |
| 3b. Teori metode | 2.4 Kompresi Model, 2.5 Kuantisasi (7 anak subbab) | Sesuai, sangat lengkap |
| 3c. Metode evaluasi | 2.6 Metrik & Uji Signifikansi (3 anak subbab) | Sesuai |

Penilaian saya: **jangan pindahkan 2.7 ke depan sekarang.** Panduan itu sendiri kontradiktif — "Susunan Umum" menaruh tinjauan di awal, tetapi butir 9 mensyaratkan "akhiri subbab tinjauan studi dengan menjelaskan perbedaan dan kelebihan penelitian kita", yang mengandaikan tinjauan adalah subbab tersendiri. Memindahkan 2.7 → 2.1 memaksa penomoran ulang 2.1–2.6 beserta seluruh `\ref` silang di dalam teks (2.5.3, 2.5.4, 2.5.6, 2.6.2, 2.5.1 dirujuk dari banyak tempat) dengan risiko salah tunjuk yang tidak diperingatkan compiler. Risiko akademiknya kecil, biaya teknisnya besar. Simpan sebagai keputusan P2 dan siapkan satu kalimat alasan bila ditanya.

Yang **wajib** diubah dari struktur: tidak ada subbab yang merangkai **tahapan kuantisasi dari awal sampai akhir** (kalibrasi → hitung skala → kuantisasi → simpan → dekuantisasi → inferensi). Panduan butir 2 landasan teori: "Algoritma pada dasar teori harus berisi definisi, **tahapan**, dan formula." Definisi dan formula ada; tahapan tersebar di 2.5.2–2.5.7 tanpa pernah diurutkan. Ini juga yang membuat Gambar 2.1 (yang mengklaim "tujuh tahapan") tidak pernah benar-benar dijelaskan sebagai urutan kerja.

---

## 2. Pelanggaran aturan "Bab II hanya teori" (paling menentukan)

Panduan, butir 7 landasan teori: *"Segala informasi yang ada di Bab 2 hanya berupa dasar teori saja. Hal-hal yang menjadi usulan peneliti (metode) tidak disampaikan di Bab 2, tetapi di sampaikan di Bab 3."*

| Baris | Kalimat yang melanggar | Seharusnya pindah ke |
|---|---|---|
| 77 | "penelitian ini membentuk data validasi dengan memisahkan sebagian data latih … Pembagian tersebut merupakan keputusan penelitian ini" | Bab III, subjek/pengumpulan data |
| 126 | "Berdasarkan pertimbangan tersebut, penelitian ini memilih kuantisasi" | Bab III, solusi umum |
| 192 | "Penelitian ini membatasi presisi pada 4-bit, sehingga kedua granularitas yang diuji …" | Bab III, rancangan |
| 240 | "Karena penelitian ini tidak mengkuantisasi aktivasi, skema simetris dinilai memadai untuk bobot" | Bab III (kesimpulan pemilihan) |
| 287 | "Penelitian ini menetapkan coarse-grained sebagai per-tensor dan fine-grained sebagai per-channel" | Bab III, definisi konfigurasi uji |
| 316 | "Penelitian ini tidak menerapkan bit-packing … mengikuti pendekatan yang lazim" | Bab III + konsekuensi di 2.6.2 |
| 364, 366 | "Penelitian ini menggunakan B = 10.000", "koreksi Holm … dengan m = 3 perbandingan" | Bab III, pengujian & analisis |

Cara memperbaikinya **tanpa membuang isinya**: di Bab II sisakan satu kalimat bermodus teori, misalnya "Pada presisi rendah, bit-packing diperlukan agar dua nilai INT4 menempati satu byte; tanpa bit-packing ukuran berkas menjadi dua kali lipat ukuran teoretis." Lalu keputusan "penelitian ini tidak memakainya" dipindahkan ke Bab III. Keuntungan sampingan: **4 dari 6 kalimat yang diawali "Karena" hilang dengan sendirinya**, karena keempatnya (baris 75, 240, 289, 342) adalah kalimat keputusan metode.

---

## 3. Tiga temuan teknis yang harus Anda ketahui sebelum ditanya penguji

### T1. Definisi penyaringan data di 2.1 tidak cocok dengan angka Tabel 2.1 (selisih 632 baris)

`chapter-2.tex:23` menyatakan sampel yang dipakai adalah yang "penanda pertanyaan tanpa jawaban dan penanda data tidak valid bernilai salah" (yaitu `is_impossible = False` **dan** `is_data_invalid = False`). Tabel 2.1 memuat angka-angka ini:

| | Data latih | Data uji |
|---|---|---|
| Jumlah baris | 130.319 | 11.873 |
| is_impossible | 43.498 | 5.945 |
| is_data_invalid | 25.462 | 1.071 |
| Jawaban tidak ditemukan pada konteks | 25.462 | 1.703 |
| **Baris yang dipakai** | **61.359** | **4.225** |

Hitungan dengan aturan yang Anda tulis:
- latih: 130.319 − 43.498 − 25.462 = **61.359** ✅ cocok
- uji: 11.873 − 5.945 − 1.071 = **4.857** ❌ tabel menulis 4.225 (selisih 632)

Hitungan yang benar-benar menghasilkan angka tabel: memakai kolom "jawaban tidak ditemukan" sebagai saringan kedua, bukan `is_data_invalid`.
- uji: 11.873 − 5.945 − 1.703 = **4.225** ✅

Artinya aturan yang sesungguhnya dipakai adalah **`is_impossible = False` dan jawaban dapat dilacak pada konteks**, bukan `is_data_invalid = False`. Untuk data latih kedua kolom kebetulan bernilai sama (25.462) sehingga selisihnya tidak terlihat — inilah sebabnya cacat ini lolos. Penguji yang menjumlahkan sendiri kolom Tabel 2.1 akan menemukannya dalam dua menit.

Perbaikan: ubah kalimat di baris 23 menjadi "…sampel dengan penanda pertanyaan tanpa jawaban bernilai salah **dan jawaban yang dapat dilacak pada konteks**", atau tambahkan satu baris di tabel: "Baris bertanda data tidak valid **dan** jawaban tidak ditemukan".

### T2. Tiga angka efisiensi saling bertabrakan (12,5% / 25% / ±48%)

| Lokasi | Klaim |
|---|---|
| `:192` (2.5.1) | "ukuran teoretis model 4-bit adalah **12,5%**" |
| `:316` (2.5.7) | "ukuran berkas aktual mendekati **25%** dari FP32, bukan 12,5% … selisih tersebut dibahas pada Subbab 2.6.2" |
| `:344` (2.6.2) | "ukuran berkas aktual dapat berbeda … karena faktor skala disimpan … dan tidak seluruh parameter ikut dikuantisasi" |

Dua masalah:

**(a) Rujukan silang 2.5.7 → 2.6.2 tidak ditepati.** 2.5.7 menjanjikan bahwa selisih 12,5% vs 25% dibahas di 2.6.2, tetapi 2.6.2 hanya menyebut faktor skala dan "tidak seluruh parameter ikut dikuantisasi" — **tidak menyebut bit-packing sama sekali**. Pembaca yang mengikuti rujukan itu tidak menemukan penjelasannya.

**(b) Angka 25% hanya sah bila seluruh parameter dikuantisasi.** Model 124,5 juta parameter terdiri atas ±38,8 juta parameter embedding (50.000 × 768 + posisi + tipe token) dan ±84,9 juta parameter lapisan linear (12 × (4 × 768² + 2 × 768 × 3072)). Bila yang dikuantisasi hanya lapisan linear — praktik lazim pada weight-only PTQ — maka:

- embedding tetap FP32: 38,8 jt × 4 B = 155 MB
- linear INT4 dalam wadah 1 byte (tanpa bit-packing): 84,9 jt × 1 B = 85 MB
- total ≈ **240 MB = 48% dari 498 MB**, bukan 25%
- dengan bit-packing: 85 MB → 42 MB, total ≈ **198 MB = 40%**

Berkas rencana Anda sendiri (`bab2/03_sub6-8.md:17`) sudah menyebut "sebagian parameter tidak dikuantisasi (embedding/klasifier)" — tetapi kalimat itu tidak pernah masuk ke `chapter-2.tex`. Akibatnya Bab II sekarang menjanjikan efisiensi yang mungkin tidak akan terbukti di Bab IV, dan itu pertanyaan penguji yang paling mudah diprediksi: *"Anda mengecilkan model jadi 62 MB. Embedding-nya ikut dikuantisasi?"*

Perbaikan: di 2.5.4 (cakupan) atau 2.5.1, nyatakan **lapisan mana** yang dikuantisasi dan lapisan mana yang tetap FP32, lalu tulis ketiga angka dengan label eksplisit: 12,5% = batas teoretis bila semua parameter 4-bit **dan** dipadatkan; 25% = semua parameter 4-bit dalam wadah 1 byte; ±48% = hanya lapisan linear yang dikuantisasi tanpa bit-packing. Pilih satu sebagai angka yang akan Anda klaim di Bab IV dan sebut yang lain sebagai pembanding.

### T3. Sumbu "channel" tidak didefinisikan

`chapter-2.tex:280–285` mendefinisikan $s_j = \max(|W_j|)/(2^{b-1}-1)$ dengan "satu faktor skala untuk setiap channel $j$ dari tensor bobot", tanpa menyebut **sumbu mana** yang menjadi $j$. Ini bukan detail sepele: pada `nn.Linear` sumbu itu adalah baris (output channel), sedangkan proyeksi atensi BERT di HuggingFace memakai `Conv1D` dengan bobot berbentuk (in, out) sehingga sumbunya adalah kolom. Salah sumbu = per-channel berubah menjadi per-input-channel, hasilnya berbeda, dan penguji yang pernah mengimplementasikan kuantisasi akan menanyakannya. Tambahkan satu klausa: "yaitu sumbu keluaran lapisan (baris pada `nn.Linear`)".

### T4. Klaim "124,5 juta parameter" disitasi ke Wilie dkk. (2020)

`chapter-2.tex:67` mencantumkan 12 lapisan, hidden 768, 12 head, FFN 3072, kosakata 50.000, dan 124,5 juta parameter dengan satu sitasi `\parencite{wilie2020indonlu}`. Konfigurasi arsitektur memang dari paper itu, tetapi **angka 124,5 juta adalah hasil hitung dari checkpoint**, bukan angka yang dinyatakan Wilie dkk. Perbaiki dengan "…sehingga jumlah parameternya sekitar 124,5 juta berdasarkan penghitungan pada *checkpoint* model". Ini jenis kesalahan sitasi yang paling mudah ditembak karena bisa diperiksa langsung di model card.

### T5. Dua klaim tanpa sitasi di 2.4

`chapter-2.tex:120` ("model hasil pemangkasan umumnya perlu dilatih ulang untuk memulihkan akurasi") dan `:122` ("memerlukan proses pelatihan penuh") tidak diakhiri sitasi, padahal keduanya pernyataan empiris yang jadi dasar argumen memilih kuantisasi di `:126`. Tempelkan `\parencite{han2016deep}` dan `\parencite{hinton2015distilling}` di ujung kalimatnya.

### T6. Konsep "kuantisasi tersimulasi" hanya muncul di subbab metrik

Dekuantisasi-sebelum-komputasi (simulated quantization) adalah alasan mengapa latensi Anda tidak boleh diklaim membaik (`:342`). Konsep ini mestinya ada di 2.5 sebagai teori, bukan pertama kali muncul di 2.6.2 sebagai catatan kaki metodologis. Pindahkan/ perluas satu paragraf di 2.5.7: bit-packing → penyimpanan, dekuantisasi → komputasi, dan konsekuensinya pada latensi.

---

## 4. Tinjauan penelitian terdahulu (2.7.1) — yang kuat dan yang perlu dibenahi

Kuat: 8 studi, semua angka hasil verifikasi (Crossref/OpenAlex, tercatat di `bahan_justifikasi/verifikasi_penelitian_terdahulu.md`), tanda † dipakai jujur untuk 2 studi yang belum mencapai 5 sitasi, dan ada peringatan eksplisit bahwa angka antarbaris tidak dapat dibandingkan langsung (`:407`). Ini kualitas di atas rata-rata.

Yang perlu dibenahi:

1. **Urutan terbalik dari panduan** (`:393–400`). Panduan butir 7: "Urutan penulisan tinjauan penelitian dimulai dari yang paling relevan sampai ke penelitian yang kurang relevan." Baris 1–6 adalah studi GLUE/SQuAD berbahasa Inggris; dua studi paling relevan bagi Anda (IndoBERT, SQuAD-id) justru di baris 7–8. Balik urutannya: Ramaputra (SQuAD-id) → Abdurrahman (IndoBERT) → Zadeh (weight-only pada SQuAD) → Bai → Guo → Wei → Bondarenko → Kim.
2. **Tidak ada kolom tujuan/masalah.** Panduan menyarankan kolom nama–tahun–masalah–metode–hasil. Tabel Anda punya model, dataset, teknik, metrik, hasil — tetapi tidak apa masalah yang dipecahkan tiap studi, sehingga pembaca tidak bisa menilai apakah kekurangannya relevan.
3. **Baris 4 ambigu.** "pada SQuAD v1.1 unggul 4,73% (BERT) dan 15,55% (RoBERTa)" — unggul terhadap apa? Sebutkan pembandingnya (PTQ sebelumnya? baseline 8-bit?).
4. **Syarat (iii) dilanggar oleh dua baris yang tetap dipakai.** Anda menulis syarat "telah disitasi minimal lima penelitian lain", lalu mempertahankan Abdurrahman (1 sitasi) dan Ramaputra (0 sitasi) dengan tanda †. Secara jujur sudah dijelaskan di catatan tabel, tetapi syaratnya sendiri jadi tidak konsisten. Perbaiki redaksinya: "…telah disitasi minimal lima penelitian lain, **kecuali studi berbahasa Indonesia yang belum memiliki padanan dan ditandai †**". Angka "paling sedikit sembilan kali" yang Anda pakai sudah benar (batas bawah aktual keenam baris yang lolos adalah 9, yaitu Bai dkk. 2022) — jangan diubah.
5. **Celah ketiga bergantung pada satu studi.** "Uji signifikansi … belum dilaporkan" disandarkan pada Suhendra dkk. (2026) yang memakai bootstrap untuk dua model pralatih. Rumusannya sudah dipersempit dengan benar (kuantisasi vs baseline + koreksi perbandingan berganda), tetapi kalimatnya panjang dan mudah dipotong penguji. Pecah jadi dua kalimat pendek.

---

## 5. Kebahasaan khusus Bab II

Koreksi terhadap laporan umum sebelumnya: dua hal yang saya tandai di sana ternyata **tidak** melanggar setelah diperiksa ulang.
- `sebagai berikut` di `:47` dan `:209` keduanya memperkenalkan **rumus**, bukan merujuk posisi tabel/gambar — tidak melanggar butir 6 Daftar Pengecekan. (Yang melanggar justru `chapter-1.tex:34` dan `:52`.)
- `Selain itu` di `:120` dan `:126` adalah konjungsi antarkalimat yang sah menurut PUEBI; tidak ada di daftar terlarang Daftar Pengecekan. Biarkan.

Yang benar-benar tersisa di Bab II:

| Temuan | Lokasi | Perbaikan |
|---|---|---|
| Kalimat diawali `Karena` | `:38, 75, 240, 289, 342, 348` | `:75, 240, 289, 342` hilang sendiri setelah keputusan metode dipindah ke Bab III (T1/§2). `:38` → "Attention tidak memiliki urutan bawaan, sehingga …". `:348` → "Kedua model dievaluasi pada sampel uji yang sama, sehingga digunakan pengujian berpasangan." |
| Istilah asing tegak | `dataset` 22×, `token` 17×, `tensor` 13×, `baseline` 1× | Pilih satu kebijakan. `encoder` (7×) dan `span` (9×) sudah miring, jadi ketidakmiringan empat kata ini terbaca sebagai kelalaian, bukan pilihan. `bit` tegak sudah benar (ada di KBBI). |
| Judul subbab campur bahasa | 2.5 "Kuantisasi pada Neural Network", 2.5.2 "Konsep Dasar Quantization", 2.5.6 "Granularitas Quantization", 2.5.7 "…Representasi Bit-Width Rendah" | "Kuantisasi pada Jaringan Saraf Tiruan", "Konsep Dasar Kuantisasi", "Granularitas Kuantisasi", "…pada Representasi Lebar Bit Rendah". Daftar Pengecekan butir 3: utamakan padanan Indonesia. |
| `pra-latih` vs `pralatih` | `abstract-id.tex:24` vs 9× di Bab I–II | Seragamkan ke `pralatih` (bentuk gabung, seperti prasejarah). |
| `antar-\textit{channel}` | `:304` | `antar-channel`. |
| `di mana` sebagai penghubung | `:45` | Satu-satunya di seluruh naskah. Ganti dengan titik: "…adalah matriks proyeksi keluaran. Di sini $W_i^Q$ …" atau pakai "dengan". |
| Tiga `% TODO` terbuka | `:75` (fitur dataset), `:114` (lisensi), `:287` (opsi pustaka kuantisasi) | Selesaikan sebelum bab diserahkan; `:287` bergantung pada T3. |

---

## 6. Yang jangan diubah

- **Tiga belas persamaan, dan hampir semuanya diikuti kalimat yang menjelaskan untuk apa persamaan itu dipakai** (`:38, 45, 54, 63, 205, 223, 287`). Ini praktik yang justru diminta panduan dan sering tidak dilakukan mahasiswa lain. Pertahankan polanya saat menambah rumus baru.
- **Tabel 2.1** (karakteristik dataset) — satu-satunya tabel di Bab II yang datanya milik Anda sendiri dan diberi keterangan sumber; setelah T1 diperbaiki, tabel ini menjadi bukti kerja yang kuat.
- **2.7.2** — celah penelitian dipersempit dengan tepat (bukan "belum ada yang meneliti", tetapi "belum ada yang menguji signifikansi kuantisasi vs baseline dengan koreksi berganda"). Ini kalimat novelty terbaik di seluruh naskah.
- **Pemetaan istilah** coarse-grained = per-tensor, fine-grained = per-channel di `:287` — eksplisit, jadi tidak ada ambiguitas istilah antara Bab I dan Bab II.
- **Tabel 2.5 dengan `longtable` + header berulang** — kerjanya benar (halaman 23–24).

---

## 7. Prioritas perbaikan Bab II

| Prioritas | Pekerjaan | Estimasi |
|---|---|---|
| **P0** | T1: perbaiki definisi penyaringan data di `:23` agar cocok dengan Tabel 2.1 (atau tambah baris tabel) | 20 menit |
| **P0** | T2: nyatakan cakupan bobot yang dikuantisasi + rekonsiliasi 12,5% / 25% / ±48% di 2.5.1, 2.5.7, 2.6.2 | 1,5 jam |
| **P1** | §2: pindahkan 7 kalimat keputusan metode ke kerangka Bab III, sisakan kalimat bermodus teori | 1 jam |
| **P1** | T3: definisikan sumbu channel; T4: perbaiki sitasi 124,5 juta; T5: tempel 2 sitasi | 30 menit |
| **P1** | Tambah 1 paragraf tahapan kuantisasi end-to-end (kalibrasi → skala → kuantisasi → simpan → dekuantisasi) | 45 menit |
| **P2** | Urutkan ulang Tabel 2.5 (paling relevan di atas) + kolom tujuan/masalah | 45 menit |
| **P2** | Kebahasaan: `Karena` sisa, huruf miring, judul subbab, `antar-channel`, `di mana`, 3 TODO | 45 menit |
| **P2** | T6: pindahkan konsep kuantisasi tersimulasi ke 2.5.7 | 30 menit |

Total ± 6 jam. Setelah P0+P1 selesai, panjang Bab II naik dari 4.167 ke ± 4.600–4.800 kata prosa — tepat di dalam rentang target 4.500–5.000 yang Anda tetapkan sendiri, tanpa menambah subbab baru.

---

## 8. Enam pertanyaan yang paling mungkin muncul khusus Bab II

1. **"Embedding-nya ikut dikuantisasi?"** → T2. Jawabannya harus ada di 2.5.4, bukan di kepala Anda saat sidang.
2. **"Kenapa Tabel 2.1 data uji 4.225, bukan 4.857?"** → T1. Ini pertanyaan yang lahir dari tabel Anda sendiri.
3. **"Per-channel itu sepanjang sumbu apa?"** → T3.
4. **"Kalau bit-packing tidak dipakai, kenapa menyebut 12,5%?"** → T2; 12,5% adalah batas teoretis, bukan klaim hasil.
5. **"Kenapa tinjauan penelitian terdahulu diletakkan di akhir, bukan di awal seperti panduan?"** → §1; siapkan satu kalimat, atau pindahkan.
6. **"Bab II Anda berisi keputusan penelitian — bukankah itu tempatnya di metodologi?"** → §2; setelah dipindah, pertanyaan ini hilang.

---

Tidak ada berkas `.tex` yang saya ubah dalam penilaian ini.
```

<a id="f-penilaian-skripsi-md"></a>

## `PENILAIAN_SKRIPSI.md`

Ukuran 18,979 byte &middot; 148 baris &middot; sha256 `7bef0000f99f` &middot; encoding `utf-8-sig`

```markdown
# Penilaian Naskah Skripsi terhadap Dua Dokumen Acuan

Tanggal penilaian: 24 Oktober 2026
Naskah yang dinilai: `D:\KEJARCEPATTTT\if-itb-latex\src` (kompilasi bersih: 51 halaman, 0 error)
Dokumen acuan:

1. `judge/Panduan Penulisan Laporan Skripsi AC-RIG UM 2021.pdf` — acuan **isi dan struktur bab** (Bab I–VII, komponen latar belakang, syarat tinjauan, dsb.)
2. `judge/Daftar Pengecekan Penulisan Skripsi v2.0.pdf` — acuan **kebahasaan dan tata tulis** (13 butir)

Catatan: Daftar Pengecekan disusun oleh Putra Pandu Adikara (UB) dan Panduan oleh Fitra A. Bachtiar (AC-RIG UM). Keduanya dipakai sebagai rubrik. Satu konflik antar keduanya dicatat di §4 butir 11.

---

## 1. Hasil penilaian

| Cakupan | Skor | Status |
|---|---|---|
| **Naskah utuh (Bab I–V + bagian awal)** | **61 / 100** | Belum layak diserahkan sebagai skripsi |
| **Bab I–II saja (bahan bimbingan substantif)** | **82 / 100** | Sudah layak dibahas dengan pembimbing |
| Kebahasaan (Daftar Pengecekan 13 butir) | 11 lulus · 2 sebagian | 85 / 100 |

Kesimpulan satu kalimat: **isi Bab I–II sudah kuat dan berbasis sitasi yang rapi, tetapi naskah belum bisa disebut skripsi karena 3 dari 5 bab masih templat, Ringkasan berisi penelitian orang lain (domain finansial), dan 5 halaman bagian awal masih teks contoh.**

Rincian per dimensi:

| Dimensi | Bobot | Skor | Alasan utama |
|---|---|---|---|
| Kesesuaian struktur bab dengan Panduan | 25% | 40 | 5 bab vs 7 bab panduan; Metodologi & Implementasi tidak ada sebagai bab |
| Kelengkapan Bab I | 15% | 75 | Tidak ada paragraf kajian & kekurangan penelitian; Sistematika Penulisan tidak ada |
| Kelengkapan Bab II | 20% | 82 | Teori tuntas & bersitasi; tetapi memuat keputusan metode (dilarang panduan), tinjauan terbalik urutannya |
| Kesiapan naskah (bagian awal, ringkasan, lampiran) | 15% | 20 | Ringkasan salah topik, Summary/Kata Pengantar/Lampiran/Riwayat Hidup masih lorem ipsum |
| Kebahasaan & PUEBI | 15% | 85 | Bersih dari kata tidak baku; tersisa kata hubung di awal kalimat & inkonsistensi huruf miring |
| Penyajian tabel/gambar/rumus & sitasi | 10% | 80 | Tabel rapi & semua dirujuk; nomor halaman DAFTAR ISI salah, nama penulis terpenggal |

---

## 2. Daftar Pengecekan v2.0 — 13 butir

| No | Butir | Status | Bukti / temuan |
|---|---|---|---|
| 1 | Spasi tanda baca | ✅ | 0 temuan spasi sebelum `, ; : .` pada Bab I, Bab II, Ringkasan. Tanda hubung & garis miring juga bersih. |
| 2 | Imbuhan *di-* vs kata depan *di* | ✅ | 0 temuan `dimana`, `di gunakan`, `di lakukan`. Bentuk berimbuhan + istilah asing sudah benar: `di-\textit{fine-tune}` (`chapter-2.tex:248`). |
| 3 | Istilah asing dicetak miring | ⚠️ **Sebagian** | `encoder` (7×) dan `span` (9×) sudah miring, tetapi `dataset` **22×**, `token` **17×**, `tensor` **13×**, `baseline` **1×** ditulis tegak di Bab II. Tidak konsisten. Juga `pra-latih` (`abstract-id.tex:24`) vs `pralatih` (9× di Bab I–II). |
| 4 | Kata baku / typo | ⚠️ **Sebagian** | Bersih dari `analisa`, `mempengaruhi`, `hipotesa`, `inputan`, `silahkan`, `syaraf`, `ranking`, `perangkingan`. Sisa: `performa` (`abstract-id.tex:24`, pada ringkasan yang isinya salah topik) dan `antar-\textit{channel}` (`chapter-2.tex:304`) yang sebaiknya `antar-channel` tanpa spasi/hyphen ganda. |
| 5 | Diksi "di mana / yang mana / di antaranya" | ⚠️ **Sebagian** | `chapter-2.tex:45` memakai `di mana` sebagai penghubung ("…, di mana $W_i^{Q}$ …"). Hanya 1 kemunculan, mudah diperbaiki. `yang mana` dan `di antaranya` tidak ditemukan. `antara lain` di `chapter-1.tex:20` sebaiknya `antara lain:`. |
| 6 | Kata hubung di awal kalimat | ❌ **Gagal** | `Karena` mengawali kalimat di `chapter-2.tex:38, 75, 240, 289, 342, 348`. Frasa rujukan posisional `sebagai berikut` di `chapter-1.tex:34, 52`. (Dua `sebagai berikut` di `chapter-2.tex:47, 209` memperkenalkan rumus, bukan merujuk posisi tabel/gambar, jadi tidak melanggar; `Selain itu` adalah konjungsi antarkalimat yang sah.) |
| 7 | Tabel, caption, rujukan silang | ✅ | 5 tabel & 7 gambar Bab II semuanya ber-`\caption` dan dirujuk lewat `\ref`; tidak ada "Tabel 2.1 berikut". Header Tabel 2.5 berulang di halaman lanjutan (hal. 24). Sumber tabel dicantumkan. |
| 8 | Angka desimal & ribuan | ✅ | Koma untuk desimal (`93,15`, `124,5`), titik untuk ribuan (`130.319`, `61.359`) konsisten. |
| 9 | Singkatan & kepanjangan | ✅ | EM, F1, PTQ, QAT, MLM, NSP, MB dikembangkan pada kemunculan pertama dengan pola "kepanjangan (singkatan)". Sisa kecil: FP32/INT8/INT4 tidak pernah dieja (masih dapat diterima karena nama format), `GPU T4` di Tabel 2.5 tanpa keterangan. |
| 10 | Ruang kosong & widow/orphan | ⚠️ **Sebagian** | Tidak ada halaman setengah kosong di Bab I–II (halaman terakhir Bab II, hal. 25, terisi Gambar 2.7). Yang ada: (a) halaman **DAFTAR GAMBAR bernomor "1"** lalu Bab I mulai di halaman 2 — cacat penomoran, lihat §5 P0-6; (b) `chapter-5.tex` melimpah 1 baris ke halaman berikutnya (akan hilang saat bab ditulis). |
| 11 | Sitasi & daftar rujukan | ✅ dengan 3 catatan | biblatex + biber gaya APA, 27 kunci disitasi, **0 kunci menggantung**, 18 entri `.bib` tidak tersitasi (tidak ikut tercetak, jadi bukan cacat PDF, tapi rapikan). Nomor halaman entri "Daftar Rujukan" di DAFTAR ISI tertulis 36 padahal sebenarnya 34 (§5 P0-7). Konflik gaya: Daftar Pengecekan meminta Harvard-Anglia Ruskin, sedangkan templat & Pedoman UM memakai APA — **konfirmasikan ke pembimbing**, jangan diubah tanpa arahan. |
| 12 | Rumusan masalah ↔ kesimpulan | ❌ **Belum dapat dinilai** | RQ berbentuk pertanyaan (benar, 3 butir), tetapi Bab V masih templat sehingga tidak ada kesimpulan yang menjawabnya. Tambahan: **RQ-1 dan RQ-2 tumpang tindih** (keduanya membandingkan tiga konfigurasi dengan EM/F1), lihat §5 P1-1. |

---

## 3. Kesesuaian isi dengan Panduan AC-RIG per bab

| Bab panduan | Isi yang disyaratkan | Kondisi naskah |
|---|---|---|
| Judul | 8–12 kata, tanpa singkatan, tanpa "berbasis", memuat metode + tujuan + objek, kata hubung huruf kecil | ⚠️ 11 kata (lolos), tetapi **"Bahas Indonesia"** seharusnya "Bahasa Indonesia" (`informations.tex:9`), `Untuk` ditulis kapital, dan unsur **tujuan/evaluasi** tidak muncul |
| Abstrak/Ringkasan | 250–400 kata; masalah + metode + hasil; 3–5 kata kunci | ❌ Isi Ringkasan adalah **penelitian lain**: analisis sentimen finansial, IndoFinSent, Twitter, FP16/INT8/INT4, Macro F1 — tidak berhubungan dengan Bab I (`abstract-id.tex:24`). Masih ada penanda `[hasil eksperimen]`. Kata kunci masih `kata kunci satu, kata kunci dua, kata kunci tiga` (`informations.tex:29`). Panjang 205 kata (< 250). |
| Bab I — Latar Belakang | 6 komponen: Ko, Ma, Ka (4–6 kajian), Ku, So, Ra | ⚠️ Ko/Ma/So/Ra ada dan runtut (7 paragraf). **Ka dan Ku tidak ada sebagai paragraf**: kajian sebelumnya hanya tersebar sebagai sitasi satu kalimat, tidak ada paragraf yang menjabarkan tujuan–metode–hasil 4–6 penelitian lalu kekurangannya. Urgensi juga belum dikuantifikasi (tidak ada angka ukuran model di Bab I, padahal tersedia di `chapter-2.tex:128`). |
| Bab I — Rumusan Masalah | Kalimat tanya, hindari "bagaimana cara", satu RQ satu eksperimen | ⚠️ Bentuk sudah benar. RQ-1 dan RQ-2 hampir sama (lihat §5 P1-1). |
| Bab I — Tujuan | Sinkron 1:1 dengan RQ | ✅ Sinkron, 3 butir berurutan sama. |
| Bab I — Manfaat | Bukan ulangan tujuan, sebut pihak penerima | ✅ Menyebut pengembang, praktisi, penelitian lanjutan. Butir 1 manfaat teoretis masih mengulang celah, bukan manfaat. |
| Bab I — Sistematika Penulisan | Wajib, spesifik per bab | ❌ **Tidak ada.** Bab I berakhir di Batasan Masalah (`chapter-1.tex:68–80`). |
| Bab II — Tinjauan penelitian sebelumnya | ≥5 kajian, memuat tujuan/metode/hasil, urut dari paling relevan, ditutup perbedaan & novelty | ⚠️ 8 baris di Tabel 2.5 + narasi celah di 2.7.2 (kuat, angka terverifikasi). Dua cacat: (a) **urutan terbalik** — studi paling relevan (IndoBERT, SQuAD-id) justru di baris 7–8, sedangkan panduan minta paling relevan di awal; (b) tabel tidak punya kolom **tujuan/masalah** penelitian, hanya model–dataset–teknik–metrik–hasil. |
| Bab II — Landasan teori | Lengkap, umum → khusus, definisi + tahapan + formula, bersitasi, **hanya teori (usulan peneliti di Bab III)** | ⚠️ Mutu teori tinggi: 7 subbab, 14 anak subbab, 8 rumus, tiap rumus diberi kalimat "untuk apa". **Pelanggaran aturan "hanya teori"**: banyak keputusan penelitian ditulis di Bab II — `chapter-2.tex:77` (pembentukan data validasi), `:126` (memilih kuantisasi), `:192` (batas 4-bit), `:240` (skema simetris dipilih), `:316` (tidak memakai bit-packing), `:364` (B=10.000, α=0,05), `:366` (Holm, m=3). |
| Bab III — Metodologi | Diagram alir, tipe penelitian, lokasi, peralatan, studi literatur, subjek, pengumpulan data, preprocessing, implementasi metode, pengujian & analisis | ❌ Bab III berjudul "Analisis dan Perancangan" dan **seluruhnya templat** (`chapter-3.tex:27,35,60,64,66` = `\blindtext`), 0 sitasi, 2 tabel contoh dari CSV (`Tabel 3.1`, `Tabel 3.2`). |
| Bab IV — Perancangan | Identifikasi masalah, flowchart algoritme, **manualisasi**, perancangan pengujian | ❌ Tidak ada. Perancangan melebur dalam judul Bab III, isinya templat. |
| Bab V — Implementasi | Cuplikan kode/pseudocode, Courier New 9 pt, dijelaskan per baris | ❌ Tidak ada sama sekali (tidak ada babnya). |
| Bab VI — Hasil dan Pembahasan | Hasil per RQ + analisis "kenapa", dikaitkan teori & penelitian sebelumnya | ❌ Bab IV "Evaluasi dan Pembahasan" masih templat (`chapter-4.tex:27,35,45,49,51,60`). |
| Bab VII — Penutup | Kesimpulan menjawab tiap RQ, saran | ❌ Bab V templat (`chapter-5.tex:26,34`). |
| Lampiran | Data/prosedur/kode, dirujuk dari teks | ❌ Lampiran 1 & 2 dan Riwayat Hidup masih lorem ipsum (`appendix-1.tex:16`, `appendix-2.tex:16`, `biography.tex`). |

**Ketidaksesuaian struktur yang paling menentukan:** panduan memisahkan **Metodologi (Bab III)**, **Perancangan (Bab IV)**, **Implementasi (Bab V)**, sedangkan templat yang dipakai hanya 5 bab (Analisis & Perancangan / Evaluasi & Pembahasan / Penutup). Untuk skripsi non-implementatif (evaluasi kuantisasi), yang paling perlu diputuskan bersama pembimbing: apakah Metodologi dijadikan bab tersendiri (panduan) dan Implementasi dilipat ke dalamnya, atau struktur 5 bab dipertahankan dengan penjelasan eksplisit.

---

## 4. Temuan berprioritas

### P0 — menghalangi penyerahan (harus beres sebelum bimbingan berikutnya)

| # | Temuan | Lokasi | Perbaikan |
|---|---|---|---|
| P0-1 | **Ringkasan berisi penelitian orang lain** (analisis sentimen finansial, 3 dataset finansial, FP16/INT8/INT4, Macro F1). Tidak satu pun istilah inti Bab I muncul. | `chapters/abstract-id.tex:24` | Tulis ulang 250–400 kata: masalah (ukuran IndoBERT 124,5 jt parameter) → metode (weight-only PTQ 4-bit per-tensor vs per-channel, SQuAD-id, EM/F1, McNemar + paired bootstrap + Holm) → hasil. |
| P0-2 | **Summary (Inggris) masih `\blindtext`** dan judulnya "English Translation of the Thesis Title". | `chapters/abstract-en.tex:17,23` | Terjemahan Ringkasan yang baru + judul Inggris yang benar. |
| P0-3 | **Judul salah ketik**: "…BAHAS INDONESIA". Juga `Untuk` kapital. | `config/informations.tex:9` | "Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia" (atau varian dengan kata "Evaluasi" agar unsur tujuan muncul). |
| P0-4 | **Kata kunci masih placeholder** di Ringkasan dan Summary. | `config/informations.tex:29–30` | 3–5 kata: kuantisasi pasca-pelatihan, granularitas, IndoBERT, extractive question answering, SQuAD-id. |
| P0-5 | **Bab III, IV, V seluruhnya templat** (`\blindtext`), termasuk 2 tabel contoh CSV yang ikut muncul di DAFTAR TABEL. | `chapter-3.tex`, `chapter-4.tex`, `chapter-5.tex` | Susun kerangka isi sesuai §3; hapus `Tabel 3.1`/`Tabel 3.2` contoh. |
| P0-6 | **Penomoran halaman romawi rusak**: halaman DAFTAR GAMBAR tercetak "1" (seharusnya xiii) sehingga Bab I mulai di halaman 2. | `thesis.tex:44–50` | Sisipkan `\clearpage` sebelum `\pagenumbering{arabic}`. |
| P0-7 | **Nomor halaman DAFTAR ISI salah**: "Daftar Rujukan … 36" padahal halaman 34; muncul entri "Lampiran … 36" tanpa isi. | `thesis.tex:60–61, 73` | Pindahkan `\addcontentsline{toc}{chapter}{Daftar Rujukan}` ke **sebelum** `\printbibliography`; hapus/benahi entri "Lampiran". |
| P0-8 | **Kata Pengantar, Lampiran 1–2, Riwayat Hidup masih teks instruksi/lorem ipsum.** | `forewords.tex:18`, `appendix-1.tex:16`, `appendix-2.tex:16`, `biography.tex` | Tulis isi sebenarnya atau keluarkan dari `thesis.tex` sampai siap. |

### P1 — cacat substantif yang akan ditanyakan penguji

| # | Temuan | Lokasi | Perbaikan |
|---|---|---|---|
| P1-1 | **RQ-1 dan RQ-2 tumpang tindih.** RQ-1 meminta perbandingan tiga konfigurasi pada EM/F1; RQ-2 meminta "perbedaan kinerja model terkuantisasi terhadap FP32 untuk setiap granularitas" — itu perbandingan yang sama. | `chapter-1.tex:36–37` | Tegaskan pembeda: RQ-1 = deskripsi tingkat kinerja (absolut), RQ-2 = selisih/penurunan relatif terhadap FP32 per granularitas. Kalau tidak bisa dibedakan, gabungkan jadi 2 RQ (kinerja + signifikansi). |
| P1-2 | **Bab I tidak punya paragraf kajian (Ka) dan paragraf kekurangan (Ku)** sesuai panduan AC-RIG. | `chapter-1.tex:18–30` | Tambah 1 paragraf 4–6 kajian (tujuan–metode–hasil) dan 1 paragraf kekurangannya, atau eksplisit menyatakan bahwa kajian dirangkum di 2.7 lalu beri satu paragraf jembatan. |
| P1-3 | **Sistematika Penulisan tidak ada.** | `chapter-1.tex` (akhir) | Tambah subbab 1.6 Sistematika Penulisan yang menyebut isi spesifik tiap bab, bukan deskripsi generik. |
| P1-4 | **Bab II memuat keputusan metode** (data validasi, pilihan skema, B=10.000, Holm m=3, "penelitian ini tidak memakai bit-packing"). Panduan: Bab II hanya teori. | `chapter-2.tex:77, 126, 192, 240, 316, 364, 366` | Pindahkan keputusan ke Bab III (Metodologi). Di Bab II sisakan satu kalimat konsekuensi, mis. "bit-packing tidak diterapkan pada penelitian ini sehingga ukuran berkas ≈25% FP32" (§P2). |
| P1-5 | **Urgensi Bab I tidak berangka.** Tidak ada satu pun angka ukuran model/kompresi di latar belakang. | `chapter-1.tex:24–26` | Sisipkan 498 MB (FP32) → 62 MB (INT4) dan konsekuensinya bila tidak diselesaikan. Angka sudah ada di `chapter-2.tex:128`. |
| P1-6 | **Kata hubung di awal kalimat** (`Karena` 6×) dan **`sebagai berikut`** (2×, di Bab I saja). | lihat §2 butir 6 | Ganti "Karena X, Y" → "X menyebabkan Y" / "Oleh karena itu"; buang "sebagai berikut" dan rujuk langsung `Tabel~\ref{}`. |
| P1-7 | **Inkonsistensi huruf miring istilah asing**: `dataset` 22×, `token` 17×, `tensor` 13× tegak; sementara `encoder`, `span`, `weight-only` miring. | `chapter-2.tex` (menyeluruh) | Pilih satu kebijakan: miringkan semua istilah asing non-KBBI, atau pakai padanan (`himpunan data`, `tanda`/`token` miring). Lakukan sekali lewat `replace all` dengan format. |
| P1-8 | **Nama penulis terpenggal hyphenation**: "Jura-fsky", "Gho-lami". | teks Bab I–II | Tambah `\hyphenation{Jurafsky Gholami Rajpurkar Vaswani}` di preamble. |

### P2 — perbaikan mutu

| # | Temuan | Lokasi |
|---|---|---|
| P2-1 | Urutan Tabel 2.5 terbalik: studi paling relevan (IndoBERT, SQuAD-id) di baris 7–8, panduan minta paling relevan di awal. | `chapter-2.tex:393–400` |
| P2-2 | Tabel 2.5 tidak punya kolom tujuan/masalah penelitian; panduan menyarankan nama–tahun–masalah–metode–hasil. | `chapter-2.tex:378–382` |
| P2-3 | 4 penanda `% TODO` masih terbuka (fitur dataset, lisensi, opsi pustaka kuantisasi). | `chapter-2.tex:75, 114, 287` |
| P2-4 | 18 entri `references.bib` tidak pernah disitasi (sisa proyek lain: `feng2020codebert`, `lu2021codexglue`, `zhou2019devign`, `waseem2025vibecodingpracticeflow`, dll.). | `references.bib` |
| P2-5 | 3 `Overfull \hbox` kecil (2,5 pt; 5,9 pt; 12 pt) + peringatan `fancyhdr` headheight. | `thesis.log` |
| P2-6 | `pra-latih` (ringkasan) vs `pralatih` (bab) — samakan. | `abstract-id.tex:24` vs `chapter-1.tex`, `chapter-2.tex` |
| P2-7 | "antara lain IndoBERT" sebaiknya "antara lain: IndoBERT". | `chapter-1.tex:20` |
| P2-8 | `antar-\textit{channel}` → `antar-channel`. | `chapter-2.tex:304` |
| P2-9 | Butir 1 Manfaat Teoritis mengulang celah penelitian, bukan manfaat. | `chapter-1.tex:56` |

---

## 5. Pertanyaan yang kemungkinan besar ditembakkan penguji

1. "RQ-1 dan RQ-2 bedanya apa?" → harus dijawab oleh rumusan masalah yang dibedakan tegas (P1-1).
2. "Kenapa 4-bit, bukan 8-bit atau 3-bit?" → Bab II sudah punya alasannya (`chapter-2.tex:146`), tetapi belum ada justifikasi eksplisit "karena 8-bit sudah banyak dilaporkan, 4-bit adalah batas praktis"; siapkan 2 kalimat.
3. "Kalau bit-packing tidak dipakai, apa artinya klaim efisiensi ukuran model?" → sudah dijawab di `chapter-2.tex:316`, tapi jawaban itu ada di Bab II (tempat yang salah menurut panduan). Pindahkan ke Metodologi.
4. "Kenapa uji signifikansi perlu, bukannya cukup melihat selisih F1?" → `chapter-2.tex:348–366` sudah siap.
5. "Kenapa McNemar untuk EM dan bootstrap untuk F1?" → sudah ada (`:350–357`), pastikan juga muncul di Metodologi.
6. "Kenapa data tanpa jawaban dibuang?" → `chapter-1.tex:77` dan `chapter-2.tex:23` sudah menjawab; pastikan konsisten dengan angka 61.359/4.225 di Tabel 2.1.
7. "Apa bedanya penelitian Anda dengan Abdurrahman (2023) yang juga PTQ IndoBERT 4-bit?" → dijawab di 2.7.2 (tugas span extraction vs 7 tugas IndoNLU, plus granularitas + signifikansi). Ini pertanyaan paling berbahaya; pertajam kalimatnya.
8. "Mengapa memilih per-tensor dan per-channel, bukan per-group?" → Tabel 2.4 menyiapkan jawabannya, tetapi belum ada kalimat pemilihan di tempat yang benar.
9. "Manualisasi perhitungannya mana?" → panduan Bab IV mewajibkan; belum ada sama sekali.
10. "Kesimpulan Anda apa?" → belum ada (Bab V templat).

---

## 6. Urutan kerja yang disarankan

1. **Hari ini (1–2 jam, tanpa mikir isi):** P0-3 judul, P0-4 kata kunci, P0-6 penomoran halaman, P0-7 DAFTAR ISI, hapus `Tabel 3.1/3.2` contoh.
2. **Setengah hari:** P0-1 Ringkasan ditulis ulang (250–400 kata) → P0-2 Summary terjemahannya.
3. **Satu hari:** P1-2, P1-3, P1-5 (Bab I: paragraf kajian + kekurangan, Sistematika, angka urgensi) dan P1-1 (bedakan RQ).
4. **Satu hari:** P1-4 pindahkan keputusan metode Bab II → kerangka Bab III, sekalian menyusun kerangka Bab III sesuai daftar 11 komponen panduan.
5. **Berikutnya:** Bab III Metodologi (diagram alir + peralatan + preprocessing + pengujian), baru setelah eksperimen berjalan Bab IV dan V.
6. **Terakhir, sekali jalan:** P1-6, P1-7, P1-8 dan P2 (kebahasaan & kerapian), lalu kompilasi ulang dan periksa 3 halaman bergambar tabel dengan mata.

Yang **tidak** saya ubah: tidak ada satu pun berkas `.tex` yang saya sunting. Semua temuan di atas berbasis pembacaan dan kompilasi ulang (`pdflatex` 3×, `biber`, 51 halaman, 0 error), bukan perkiraan.
```

<a id="f-proposal-penelitian-terdahulu-md"></a>

## `PROPOSAL_PENELITIAN_TERDAHULU.md`

Ukuran 13,127 byte &middot; 134 baris &middot; sha256 `0e8385233a73` &middot; encoding `utf-8-sig`

```markdown
# Proposal Penelitian Terdahulu

Untuk Bab II §2.6 (Penelitian Terdahulu dan Celah Penelitian) — skripsi **Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia**.

Syarat yang kamu tetapkan: **dataset/metode/konteks tugas sama**, **disitasi minimal 5 paper lain**, **terbit maksimal 5 tahun terakhir** (jendela 2021–2026).

---

## 1. Ringkasan: aturan itu menggugurkan 4 dari 5 baris tabelmu sekarang

| Baris di `chapter-2.tex` sekarang | Tahun | Sitasi (OpenAlex) | Lolos? | Sebab |
|---|---|---|---|---|
| Hu dkk. (2022) | 2022 | **0** | ✘ | Hanya arXiv 2210.16621, nyaris tidak disitasi |
| Abdurrahman dkk. (2023) | 2023 | **1** | ✘ | Terlalu baru untuk terkumpul sitasinya |
| Han (2026) | 2026 | tidak terverifikasi | ✘ | PDF tidak ada, sitasi tidak bisa dicek |
| Sanjaya dkk. (2026) | 2026 | **0** | ✘ | Terbit 2026 |
| Ramaputra & Joddy (2026) | 2026 | **0** | ✘ | Terbit 2026 |

Kalau aturan pembimbing dijalankan apa adanya, tabel harus dibangun ulang dari paper 2021–2024 yang sudah mapan. Tapi ada konsekuensi yang perlu kamu sadari dan sampaikan ke pembimbing: **paper yang paling mirip konteksmu (kuantisasi × QA Indonesia) justru semuanya terbit 2023–2026 dan belum punya sitasi.** Kalau keempatnya dibuang, tabel kehilangan konteks Indonesia sama sekali dan klaim celah penelitian jadi tanpa dasar.

Solusi yang saya usulkan: **dua blok**. Blok A = pembanding utama yang lolos semua syarat (internasional, 2021–2024, ≥5 sitasi). Blok B = penelitian konteks Indonesia/terbaru, diberi keterangan eksplisit bahwa syarat sitasi belum terpenuhi karena kebaruan — bukan karena kualitas.

---

## 2. Blok A — lolos semua syarat (usulan 7 baris)

| No | Referensi | Tahun | Sitasi | Model | Dataset & tugas | Teknik | Kenapa masuk |
|---|---|---|---|---|---|---|---|
| 1 | Zadeh dkk., *Mokey: Enabling Narrow Fixed-Point Inference for Out-of-the-Box Floating-Point Transformer Models*, ISCA | 2022 | **36** | BERT-Base/Large, RoBERTa-Large, DeBERTa-XL | MNLI, STS-B, **SQuAD v1.1** (extractive QA) | **PTQ weight-only 4-bit** (indeks 4-bit ke dictionary centroid 16-bit), **tanpa fine-tuning** | **Paling dekat dengan skripsimu**: weight-only, 4-bit, BERT, SQuAD, tanpa retraining. Beda hanya bahasa & granularitas |
| 2 | *Towards Efficient Post-Training Quantization of Pre-Trained Language Models* (MREM), NeurIPS | 2022 | **28** | PLM (BERT-family) | GLUE, **SQuAD** | PTQ per-modul (module-wise reconstruction error minimization) | PTQ pada PLM dengan evaluasi SQuAD; pembanding "PTQ mendekati QAT" |
| 3 | Guo dkk., *OliVe: Accelerating Large Language Models via Hardware-friendly Outlier-Victim Pair Quantization*, ISCA | 2023 | **158** | BERT-Base/Large, BART-Base | GLUE (8 task), **SQuAD v1.1 & v2.0** | PTQ 4-bit **bobot + aktivasi** (W4A4), outlier-victim pair | PTQ 4-bit pada BERT dengan SQuAD; menunjukkan aktivasi adalah sumber utama penurunan → mendukung pilihanmu weight-only |
| 4 | Wei dkk., *Outlier Suppression: Pushing the Limit of Low-bit Transformer Language Models*, NeurIPS | 2022 | **46** | BERT, RoBERTa, BART | GLUE, **SQuAD v1.1 & v2.0**, summarization | PTQ 6-bit (Gamma Migration + Token-Wise Clipping) | Pertama yang mendorong PTQ BERT 6-bit ke level full-precision; baseline "seberapa jauh PTQ bisa tanpa QAT" |
| 5 | Kim dkk., *I-BERT: Integer-only BERT Quantization*, ICML | 2021 | **186** | BERT, RoBERTa | GLUE | Kuantisasi integer-only INT8 (W8A8) + aproksimasi GELU/Softmax/LayerNorm | Acuan kuantisasi BERT end-to-end; batas atas presisi 8-bit — kontras dengan 4-bit yang kamu uji |
| 6 | Bondarenko dkk., *Understanding and Overcoming the Challenges of Efficient Transformer Quantization*, EMNLP | 2021 | **85** | BERT-Base | GLUE | PTQ + QAT; **memperkenalkan per-embedding-group quantization** | **Satu-satunya di daftar ini yang menyentuh granularitas** pada encoder; dasar argumen coarse vs fine |
| 7 | Wu dkk., *Understanding INT4 Quantization for Transformer Models: Latency Speedup, Composability, and Failure Cases* | 2023 | **6** | BERT (encoder), encoder-decoder, decoder-only | GLUE-type task per arsitektur | INT4 W4A4 + pipeline inferensi | Bukti bahwa **encoder jauh lebih toleran INT4 daripada decoder** — justifikasi kenapa penelitianmu pada encoder masuk akal |

Catatan 2021: I-BERT dan Bondarenko terbit 2021, jadi **pas di batas** 5 tahun. Kalau pembimbing menghitung mundur dari 2026 secara ketat (2022–2026), keduanya gugur dan tersisa 5 baris (No. 1, 2, 3, 4, 7) — masih cukup untuk tabel.

Kandidat cadangan kalau butuh baris tambahan:
- **BinaryBERT** (ACL 2021, 106 sitasi) — binarisasi bobot BERT + aktivasi 8-bit, GLUE. Di luar jendela kalau batasnya 2022.
- **VS-Quant** (2021, 32 sitasi) — per-vector scale (granularitas), tapi domain visi.
- **4.6-Bit Quantization for Fast and Accurate Neural Network Inference on CPUs** (Trusov dkk., 2024, 6 sitasi) — per-channel & per-group, tapi CNN/CPU, bukan NLP.

---

## 3. Blok B — konteks Indonesia & terbaru (belum memenuhi syarat sitasi)

| No | Referensi | Tahun | Sitasi | Model | Dataset & tugas | Teknik | Kenapa tetap dipakai |
|---|---|---|---|---|---|---|---|
| 8 | Abdurrahman dkk., *Implementing Quantization to Indonesian BERT Language Model*, ICAICTA | 2023 | 1 | IndoBERT | 7 tugas IndoNLU, **termasuk FacQA (span extraction)** | PTQ & QAT; bobot 16/8/6/4-bit, aktivasi FP32 | Satu-satunya kuantisasi encoder **Indonesia** yang menyertakan tugas QA; PTQ 4-bit F1 72,78 vs 77,35 |
| 9 | Sanjaya dkk., *Quantization Effects on Explainability in Indonesian Transformer-Based Sentiment Analysis*, Procedia CS | 2026 | 0 | IndoBERT-base-p2 | SmSA (sentimen 3 kelas) | PTQ INT4 weight-only, **simetris, per-tensor** | Preseden langsung konfigurasi yang kamu pakai (per-tensor INT4 pada IndoBERT) |
| 10 | Ramaputra & Joddy, *Evaluating the Impact of Quantization on Indonesian Question Answering Performance in LLMs*, Procedia CS | 2026 | 0 | Qwen2.5, Gemma-3 | **SQuAD-id** (validasi, tanpa sampel tak terjawab) | W4A16 / W8A16 (AWQ, GPTQ) | **Satu-satunya kuantisasi × QA Indonesia**; temuannya (generative lebih robust dari extractive) adalah celah yang kamu isi |
| 11 | Han, *Where Post-Training Quantization Breaks Text Embedders* | 2026 | tidak terverifikasi | 5 checkpoint embedder | SciFact, NFCorpus, SkillRet (retrieval) | PTQ weight-only group-wise, variasi bit-width & group size | Satu-satunya yang membandingkan **granularitas** pada encoder — tapi PDF tidak ada, jadi belum bisa dipakai |

Kalau baris 11 tetap dipertahankan, dua dari tiga celah di §2.6-mu bergantung pada paper yang belum kamu pegang. Saran: unduh dulu, atau ganti sandaran celah ke-2 ke Bondarenko (No. 6) + Han hanya sebagai pelengkap.

---

## 4. Usulan susunan tabel final (8 baris)

Komposisi yang saya sarankan: **6 baris Blok A + 2 baris Blok B**, dengan catatan kaki untuk Blok B.

1. Mokey (2022) — weight-only 4-bit, BERT, SQuAD ← **pembanding utama**
2. PTQ4PLM/MREM (2022) — PTQ PLM, SQuAD
3. OliVe (2023) — PTQ 4-bit W+A, BERT, SQuAD
4. Outlier Suppression (2022) — PTQ 6-bit, BERT/RoBERTa, SQuAD
5. I-BERT (2021) — INT8 integer-only, GLUE
6. Bondarenko (2021) — PTQ + granularitas per-embedding-group, GLUE
7. Abdurrahman (2023) — IndoBERT, 7 tugas IndoNLU (FacQA) ← **konteks Indonesia**
8. Ramaputra & Joddy (2026) — SQuAD-id, W4A16 AWQ/GPTQ ← **konteks Indonesia + QA**

Wu dkk. (2023) dan Sanjaya (2026) saya sarankan **tidak masuk tabel** tetapi dipakai di narasi: Wu untuk kalimat "encoder lebih toleran INT4", Sanjaya untuk kalimat "PTQ INT4 per-tensor pada IndoBERT sudah ada di tugas sentimen".

Kalimat pengantar tabel yang bisa dipakai:
> Penelitian terdahulu dipilih dengan tiga syarat: (i) menerapkan post-training quantization tanpa pelatihan ulang, (ii) dievaluasi pada model encoder Transformer atau tugas question answering, dan (iii) terbit dalam lima tahun terakhir serta telah disitasi minimal lima penelitian lain. Penelitian bertanda † terbit pada 2023–2026 sehingga belum mengumpulkan sitasi; penelitian tersebut dipertahankan karena merupakan satu-satunya studi pada konteks bahasa Indonesia.

---

## 5. Yang ada di folder `bahan/` — dan kenapa tidak masuk tabel

Folder `bahan/` berisi 32 dokumen. Setelah disaring dengan ketiga syarat, hasilnya:

**Masuk (3 dokumen):** `I BERT Integer only BERT Quantization.pdf` (No. 5), `Understanding and Overcoming the Challenges of Efficient Transformer Quantization.pdf` (No. 6), `Understanding INT4 Quantization for Language Models…pdf` (No. 7 di blok A). Untuk Blok B: `Implementing_Quantization_to_Indonesian_BERT…pdf`, `quantization effectson explainability…pdf`, `Evaluating the Impact of Quantization on Indonesian Question Answering.pdf`.

**Gugur karena di luar jendela 5 tahun (6 dokumen)** — semua ini tetap dipakai sebagai sitasi teori, hanya tidak bisa jadi baris tabel:
BERT (2019), Q8BERT (2019), TernaryBERT (2020), IndoNLU (2020), Jacob dkk. integer-arithmetic-only (2018), FinBERT-QA (2020).

**Gugur karena bukan studi pembanding (18 dokumen):**
- Survei: `A Survey of Quantization Methods…` (Gholami) — dipakai sebagai teori, bukan pembanding eksperimen.
- LLM decoder / bukan encoder: CAT-Q, FPTQ, Sherry, Tequila, BitNet b.158, Binary and Ternary NLG, How Quantization Shapes Bias.
- Domain lain: CLIP, DAQuant (ViT), neural receiver (komunikasi).
- Fokus kalibrasi/analisis internal, bukan pembanding QA: AdaRound/small calibration sets, calibration data (Williams), outliers (Paglieri), CL-Calib (Shang), StablePTQ, flat minima, QAT-tradeoff (biomedis).
- Bukan artikel penelitian: `Deep Research…` (catatan riset), `Proposal Skripsi…Tafftadia` (proposal).

**Gugur karena sitasi belum cukup (3 dokumen):** Abdurrahman (1), Sanjaya (0), Ramaputra (0) — dipakai di Blok B dengan tanda †.

**Kesimpulan praktis:** folder `bahan/` hanya menyumbang **3 baris tabel** yang lolos syarat. Delapan baris sisanya harus diunduh dari luar.

---

## 6. Yang perlu diunduh (prioritas)

| Prioritas | Paper | Akses |
|---|---|---|
| 1 | Mokey (ISCA 2022) | PDF terbuka: `https://people.ece.ubc.ca/ameer/publications/Mokey-ISCA22-Paper.pdf` — **sudah saya baca, angka SQuAD-nya terverifikasi** |
| 2 | PTQ4PLM / MREM (NeurIPS 2022) | `https://doi.org/10.52202/068431-0103` (NeurIPS proceedings terbuka) |
| 3 | OliVe (ISCA 2023) | `https://arxiv.org/abs/2304.07493` |
| 4 | Outlier Suppression (NeurIPS 2022) | `https://arxiv.org/pdf/2209.13325` |
| 5 | Bondarenko (EMNLP 2021) | sudah ada di `bahan/` |
| 6 | I-BERT (ICML 2021) | sudah ada di `bahan/` |
| 7 | Wu dkk. INT4 (2023) | sudah ada di `bahan/` |
| 8 | Han (2026) | belum ditemukan aksesnya — perlu dari jurnal/kampus |

---

## 7. Angka yang sudah terverifikasi vs yang masih perlu diisi

**Terverifikasi langsung dari PDF:**
- Mokey, Tabel I: BERT-Large SQuAD **F1 93,15 (FP) → 93,17 (weight-only 4-bit) → 92,22 (weight+activation)**; RoBERTa-Large SQuAD **93,56 → 93,25 → 92,58**; BERT-Base MNLI **84,44 → 84,80 → 84,22**.
- OliVe: 4-bit PTQ **bobot + aktivasi** untuk BERT dan BART dengan penurunan akurasi **<1%**, mengungguli hasil 6-bit Outlier Suppression.
- Outlier Suppression: mendorong **PTQ 6-bit BERT ke level full-precision**; pada SQuAD v1.1 mengungguli metode lain **4,73% (BERT) dan 15,55% (RoBERTa)** pada 6-bit.
- Bondarenko, Tabel 1 (BERT-base GLUE): **83,06 (FP32) · 71,03 (W8A8) · 70,25 (W32A8) · 83,23 (W8A32)**.
- I-BERT: akurasi **setara atau sedikit lebih tinggi** dari full-precision pada GLUE; **speedup 2,4–4,0×** untuk INT8 di GPU T4.
- Wu dkk.: W4A4 **nyaris tanpa degradasi pada encoder**, turun signifikan pada decoder-only; pipeline **8,5× lebih cepat** (latency).

**Belum bisa diisi (PDF belum dipegang):** angka GLUE/SQuAD per task untuk PTQ4PLM, dan angka tabel Han (2026). Kalau baris itu dipakai, kolom "Hasil Utama" harus diisi setelah PDF-nya diunduh — jangan dikira-kira.

---

## 8. Catatan metode

- **Sumber angka sitasi:** OpenAlex API, dicek 23 Oktober 2026. OpenAlex **menghitung lebih rendah** daripada Google Scholar (mis. I-BERT 186 di OpenAlex vs ratusan di Scholar; GPTQ 196 vs ribuan). Kalau pembimbing mengecek di Google Scholar, angka di tabel akan terlihat lebih besar — sebutkan sumbernya di catatan kaki.
- **Syarat "dataset/metode/konteks sama"** saya terjemahkan jadi tiga tingkat: (i) weight-only PTQ pada encoder + tugas QA (paling dekat), (ii) PTQ pada encoder + tugas QA dengan cakupan bobot+aktivasi, (iii) PTQ pada encoder tanpa tugas QA. Baris 1–4 berada di tingkat (i)/(ii), baris 5–6 di tingkat (iii) dengan alasan masing-masing.
- **Dalam pencarian ini (korpus `bahan/` + indeks sitasi OpenAlex) tidak ditemukan paper 2021–2024 yang membandingkan per-tensor vs per-channel pada tugas QA.** Ini justru menguatkan celah ke-2 di §2.6-mu — dan sekarang bisa dinyatakan dengan aman karena pencariannya sudah dilakukan pada korpus + indeks sitasi, bukan hanya pada folder `bahan/`.
```

<a id="f-rencana-bab2-md"></a>

## `RENCANA_BAB2.md`

Ukuran 14,964 byte &middot; 236 baris &middot; sha256 `51b86033ba7f` &middot; encoding `utf-8-sig`

````markdown
# Rencana Penyelesaian Bab II

> **Catatan:** struktur di §2 dokumen ini (8 subbab, 31 anak subbab) sudah **dipangkas** menjadi **6 subbab, 12 anak subbab, ±4.600 kata** setelah dibandingkan dengan dua skripsi lain. Versi yang dipakai: `bab2/04_STRUKTUR_RINGKAS.md`. Daftar urgensi (§1) dan urutan eksekusi (§4) tetap berlaku.

Untuk: skripsi *Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia*
Status awal: `src/chapters/chapter-2.tex` = 183 baris, **6 subbab, 0 anak subbab**.
Belum ada satu pun berkas `.tex` yang saya ubah.

---

## 1. Daftar urgensi (urut prioritas)

Legenda: **B** = memblokir subbab lain · **E** = estimasi jam kerja · **D** = bergantung pada

### P0 — harus selesai lebih dulu (total ±10 jam)

| # | Pekerjaan | Kenapa urgent | E | D |
|---|---|---|---:|---|
| U1 | **Bangun ulang tabel penelitian terdahulu.** 4 dari 5 baris sekarang gugur syarat pembimbing (≥5 sitasi, ≤5 tahun): Hu 2022 = 0 sitasi, Abdurrahman = 1, Sanjaya = 0, Ramaputra = 0 | Tabel ini jadi dasar seluruh §2.8 Celah Penelitian. Kalau tabelnya salah, celahnya ikut salah | 4 | 4 PDF baru |
| U2 | **Perbaiki 2 sitasi `wu2023understanding`** untuk klaim granularitas (`ch1:28`, `ch2:117`) → ganti `gholami2021survey` (Bagian E) atau `bondarenko2021understanding` | Paper itu tidak membahas granularitas sama sekali (0 kemunculan "granular"). Ini kesalahan yang paling mudah ditemukan penguji | 1 | — |
| U3 | **Persempit 3 klaim yang lebih luas dari kutipannya** (`ch1:20` ×2: Transformer "representasi kontekstual", "model bahasa multibahasa"; `ch2:56`: IndoBERT "memahami pertanyaan dan konteks") | Klaim tanpa sandaran = temuan pertama saat sidang | 1 | — |
| U4 | **Jalankan EDA sekali dan simpan outputnya.** Sekarang 0 sel punya output, jadi angka dataset belum bisa ditulis | §2.4 (dataset) tidak bisa final tanpa: jumlah baris efektif, `span_valid_%`, proporsi konteks >512 token | 2 | — |
| U5 | **Tulis ulang §2.4.2 & §2.4.3 dataset** dengan temuan: datasetmu = SQuAD v2.0 terjemahan **penuh** (130.319/11.873 = angka resmi), "test" = split **dev**, sudah ada perbaikan span (`answer_start_recomputed`), sitasi Muis **+ SEACrowd** | Bab II sekarang menyebut "versi yang ditata ulang" tanpa sumber, dan menyiratkan test set padahal itu dev | 2 | U4 |

### P1 — isi baru, menentukan kualitas bab (total ±14 jam)

| # | Pekerjaan | E | D |
|---|---|---:|---|
| U6 | Tambah **8 anak subbab baru**: 2.1.4, 2.2.3, 2.3.4, 2.4.2, 2.5.6, 2.7.1, 2.7.3, 2.8.2 (daftar di §2) | 7 | U1, U5 |
| U7 | **Tabel spektrum granularitas** (per-tensor / per-channel / per-group) + alasan memakai skema **simetris** (bobot terlatih zero-centered) | 2 | — |
| U8 | **Kerangka berpikir** (§2.8.2): gambar 4 tahap + satu paragraf penjelas | 2 | U6 |
| U9 | **Unduh & verifikasi 6 PDF prioritas**: Han 2026, hu2022 (arXiv 2210.16621), Rajpurkar 2016, Muis 2020, Dror 2018, Holm 1979 | 3 | — |

### P2 — penyempurnaan (total ±6 jam)

| # | Pekerjaan | E |
|---|---|---:|
| U10 | Tabel perbandingan **QAT vs PTQ** (waktu, retraining, biaya, potensi akurasi, contoh) | 1 |
| U11 | §2.5.6 Dampak kuantisasi pada Transformer: outlier pada residual/attention, encoder lebih toleran INT4 daripada decoder, fenomena collapse setelah konvergensi | 2 |
| U12 | Sitasi **Matrik (2026)** di §2.3.4 dan §2.6.1 sebagai pembanding baseline + preseden bootstrap | 1 |
| U13 | Penomoran ulang + cek silang semua `\ref` (tabel, persamaan) setelah struktur baru | 2 |

### Di luar Bab II, tapi memblokir kalau ditinggal

| # | Pekerjaan | Kenapa |
|---|---|---|
| X1 | `informations.tex`: judul, penulis, NIM, pembimbing, kata kunci | PDF tercetak dengan judul template |
| X2 | `abstract-id.tex` masih topik **finansial** (IndoFinSent, Financial PhraseBank, Macro F1) | Bertentangan langsung dengan judul |
| X3 | `abstract-en.tex` masih `\blindtext` | Sama |

**Total realistis: ±30 jam kerja** (≈ 5 hari @6 jam, atau 1 minggu santai).

---

## 2. Struktur usulan Bab II: 8 subbab, 31 anak subbab

Kolom **Status**: `PINDAH` = isi sudah ada, tinggal direstrukturisasi · `BARU` = perlu ditulis · `TULIS ULANG` = ada tapi isinya harus diganti.

### 2.1 Extractive Question Answering
| Anak subbab | Status | Sumber isi sekarang |
|---|---|---|
| 2.1.1 Definisi dan Ruang Lingkup Question Answering | PINDAH | `ch2:23` paragraf 1 |
| 2.1.2 Formulasi Span Extraction | PINDAH | `ch2:23–25` + Persamaan span |
| 2.1.3 Pertanyaan Tanpa Jawaban pada SQuAD v2.0 | TULIS ULANG | `ch2:27` — perlu ditambah: apa itu `is_impossible`, mengapa dibuang di penelitianmu |
| 2.1.4 Extractive QA untuk Bahasa Indonesia | **BARU** | 1 paragraf + sitasi: IndoNLU FacQA (p43), Ramaputra (p30). Isi: peta dataset QA Indonesia yang ada, dan posisi tugasmu |

### 2.2 Arsitektur Transformer
| Anak subbab | Status | Sumber |
|---|---|---|
| 2.2.1 Mekanisme Self-Attention | PINDAH | `ch2:31–36` + Persamaan attention |
| 2.2.2 Multi-Head Attention dan Positional Encoding | PINDAH | `ch2:38–45` + Persamaan multi-head |
| 2.2.3 Encoder, Decoder, dan Encoder-Decoder | **BARU** | 1–2 paragraf. **Penting**: jadi dasar argumen di §2.5.6 bahwa model encoder jauh lebih toleran INT4 daripada decoder (sitasi p64) |

### 2.3 BERT dan IndoBERT
| Anak subbab | Status | Sumber |
|---|---|---|
| 2.3.1 Pre-training BERT: MLM dan NSP | PINDAH | `ch2:47–54` + Persamaan MLM |
| 2.3.2 Fine-tuning BERT untuk Extractive QA | PINDAH | `ch2:58–65` + Persamaan span S/E |
| 2.3.3 IndoBERT: Korpus Indo4B dan Konfigurasi Model | PINDAH | `ch2:56` |
| 2.3.4 Varian IndoBERT dan Model yang Digunakan | **BARU** | Wajib: Bab II sekarang menyebut "IndoBERT-base **fase 2**" tanpa menjelaskan apa itu fase 1/2. Tambahkan perbandingan `indobert-base-p1` (Indo4B) vs `indolem/indobert-base-uncased` vs `base-p2`, dengan sitasi IndoNLU + Matrik (2026) |

### 2.4 Dataset SQuAD-id
| Anak subbab | Status | Sumber |
|---|---|---|
| 2.4.1 SQuAD dan SQuAD v2.0 | PINDAH | `ch2:69` |
| 2.4.2 Konstruksi SQuAD-id: Terjemahan Mesin dan Perbaikan Span | **BARU** | Hasil kajianmu: Google Translate API v2, 536 artikel, 161.550 pasangan, konteks & jawaban diterjemahkan terpisah → lokasi jawaban tidak cocok + bentuk kata berbeda → fuzzy string matching **Levenshtein** ambang ~80% → `indonesian_answer_start` (−1 bila gagal) → baris gagal dibuang. Sitasi: Muis dkk. (2020) |
| 2.4.3 Versi Dataset yang Digunakan dan Penandaan Kualitas | TULIS ULANG | `ch2:71` — sebutkan sumber versi (SEACrowd) + field `answer_start_original`/`answer_start_recomputed`/`is_answer_missing`/`is_data_invalid` |
| 2.4.4 Pembagian Data | TULIS ULANG | `ch2:73` — **koreksi**: split "uji" berasal dari **dev** SQuAD v2.0 (11.873), bukan test held-out. Tulis jumlah baris efektif (setelah filter) |
| 2.4.5 Karakteristik dan Keterbatasan Dataset Terjemahan | PINDAH | `ch2:75` — tambahkan bukti kuantitatif dari EDA (span valid %, panjang konteks) |

### 2.5 Kuantisasi Model
| Anak subbab | Status | Sumber |
|---|---|---|
| 2.5.1 Konsep dan Tujuan Kuantisasi | PINDAH + tambah | `ch2:79` — tambahkan framing **tiga sumbu**: cakupan, waktu, granularitas |
| 2.5.2 Kuantisasi Simetris dan Asimetris | PINDAH + alasan | `ch2:81–95` + Persamaan. **Tambahan**: mengapa simetris (bobot terlatih zero-centered; aktivasi tidak) |
| 2.5.3 Cakupan: Weight-Only vs Weight-Activation | PINDAH | `ch2:99` + notasi W$x$A$y$ + angka Bondarenko |
| 2.5.4 Waktu: Post-Training Quantization vs QAT | PINDAH + tabel | `ch2:97` — tambahkan tabel 5 aspek |
| 2.5.5 Granularitas: Per-Tensor, Per-Channel, Per-Group | PINDAH + tabel | `ch2:101–117` + Persamaan. **Tambahan**: tabel spektrum 3 tingkat (jumlah skala, kepekaan antar-channel, kepekaan dalam channel, overhead metadata, potensi akurasi) |
| 2.5.6 Dampak Kuantisasi pada Model Transformer | **BARU** | Outlier terstruktur pada residual/attention, encoder vs decoder (p64), penurunan setelah konvergensi pada 4-bit (p65), kuantisasi weight-only pada BERT (p41, p50, p58) |

### 2.6 Metrik Evaluasi dan Pengujian Signifikansi
| Anak subbab | Status | Sumber |
|---|---|---|
| 2.6.1 Exact Match dan F1 | PINDAH | `ch2:121–135` + Persamaan EM & F1 |
| 2.6.2 Ukuran Model: Teoretis dan Aktual | PINDAH + tambah | `ch2:137` — **tambahan penting**: 12,5% itu teoretis; bobot INT4 umumnya disimpan dalam wadah int8 (≈25%) + metadata faktor skala |
| 2.6.3 Uji Signifikansi Statistik | PINDAH + opsi | `ch2:139–148` + Persamaan bootstrap. Opsional: McNemar untuk EM (EM biner per sampel) |

### 2.7 Penelitian Terdahulu
| Anak subbab | Status | Sumber |
|---|---|---|
| 2.7.1 Kriteria Pemilihan Penelitian | **BARU** | Tiga syarat: (i) PTQ tanpa pelatihan ulang, (ii) encoder Transformer atau tugas QA, (iii) ≤5 tahun & ≥5 sitasi |
| 2.7.2 Ringkasan Penelitian Terdahulu | TULIS ULANG | Tabel sekarang + `PROPOSAL_PENELITIAN_TERDAHULU.md` (6 baris Blok A + 2 baris Blok B bertanda †) |
| 2.7.3 Pembahasan per Sumbu Kuantisasi | **BARU** | 3 paragraf: cakupan (weight-only vs joint), waktu (PTQ vs QAT), granularitas (per-tensor vs per-channel vs per-group) — menunjukkan di sumbu mana penelitianmu berada |

### 2.8 Celah Penelitian dan Kerangka Berpikir
| Anak subbab | Status | Sumber |
|---|---|---|
| 2.8.1 Celah Penelitian | PINDAH + perbaiki sandaran | `ch2:181` — 3 celah; **sandaran celah 2 & 3 harus diganti** karena Han (2026) PDF-nya belum ada |
| 2.8.2 Kerangka Berpikir | **BARU** | Gambar 4 tahap: (1) masalah (IndoBERT besar, QA Indonesia butuh efisiensi) → (2) solusi (weight-only PTQ 4-bit, dua granularitas) → (3) eksperimen (SQuAD-id, FP32 vs coarse vs fine) → (4) hasil (EM/F1, ukuran, signifikansi) |
| 2.8.3 Posisi Penelitian Ini | PINDAH | `ch2:183` paragraf terakhir |

---

## 3. Ringkasan perubahan struktur

| Sekarang | Menjadi |
|---|---|
| 2.1 Extractive QA | 2.1 (4 anak subbab) |
| 2.2 Transformer, BERT, dan IndoBERT | **dipecah dua**: 2.2 Transformer (3 anak) + 2.3 BERT & IndoBERT (4 anak) |
| 2.3 Dataset SQuAD-id | 2.4 (5 anak subbab) |
| 2.4 Kuantisasi, Weight-Only PTQ, Granularitas | 2.5 (6 anak subbab) |
| 2.5 Metrik & Signifikansi | 2.6 (3 anak subbab) |
| 2.6 Penelitian Terdahulu dan Celah | **dipecah dua**: 2.7 Penelitian Terdahulu (3 anak) + 2.8 Celah & Kerangka Berpikir (3 anak) |

Alasan pemecahan:
- **2.2/2.3 dipisah**: Transformer (mekanisme) dan BERT/IndoBERT (model yang dipakai) sekarang tercampur dalam satu subbab 37 baris — terlalu padat untuk dinilai.
- **2.6 dipecah**: "penelitian terdahulu" dan "celah penelitian" adalah dua pekerjaan berbeda; penguji membacanya terpisah. Kerangka berpikir juga butuh tempat sendiri.
- **Anak subbab 2.4.2 (konstruksi dataset)** adalah tempat alami untuk memasukkan kajian Muis dkk. yang baru kamu pelajari — sekarang tidak ada tempatnya.

---

## 4. Urutan eksekusi yang paling efisien

**Hari 1 — bereskan yang salah dulu (±4 jam)**
U2 (2 sitasi) → U3 (3 klaim) → X1 (metadata informations.tex) → commit.

**Hari 2 — data (±5 jam)**
U4 (jalankan & simpan EDA) → U5 (tulis ulang 2.4.2/2.4.3/2.4.4 dengan angka nyata) → X2/X3 (Ringkasan & Summary).

**Hari 3 — tabel & celah (±6 jam)**
Unduh 4 PDF (Mokey sudah ada aksesnya) → U1 (tabel baru 8 baris) → U6 bagian 2.7 → 2.8.1 celah dengan sandaran baru.

**Hari 4 — isi baru (±7 jam)**
U6 sisanya (2.1.4, 2.2.3, 2.3.4, 2.5.6) + U7 (tabel granularitas & alasan simetris).

**Hari 5 — penutup (±5 jam)**
U8 (kerangka berpikir + gambar) → U10–U12 → U13 (penomoran & `\ref`) → build & baca ulang.

---

## 5. Yang TIDAK perlu dikerjakan (cegah melebar)

- Jangan menambah teori CNN/ResNet — itu domain proposal temanmu, bukan skripsimu.
- Jangan membahas keluarga LLM decoder panjang-panjang; cukup 1 paragraf di 2.5.6 untuk kontras encoder vs decoder.
- Jangan membuat tabel penelitian terdahulu 15 baris. 8 baris sudah cukup dan lebih mudah dipertahankan.
- Jangan menambah subbab "Kuantisasi pada Vision Transformer" — tidak dipakai di eksperimenmu.
- Jangan menulis ulang Persamaan 2.1–2.5; rumusnya sudah benar dan sudah dicek konsisten dengan literatur.

---

## 6. Lampiran — kerangka LaTeX (belum diterapkan)

```latex
\chapter{Kajian Pustaka}

\section{Extractive Question Answering}
\subsection{Definisi dan Ruang Lingkup Question Answering}
\subsection{Formulasi Span Extraction}
\subsection{Pertanyaan Tanpa Jawaban pada SQuAD v2.0}
\subsection{Extractive Question Answering untuk Bahasa Indonesia}

\section{Arsitektur Transformer}
\subsection{Mekanisme Self-Attention}
\subsection{Multi-Head Attention dan Positional Encoding}
\subsection{Encoder, Decoder, dan Encoder-Decoder}

\section{BERT dan IndoBERT}
\subsection{Pre-training BERT: MLM dan NSP}
\subsection{Fine-tuning BERT untuk Extractive Question Answering}
\subsection{IndoBERT: Korpus Indo4B dan Konfigurasi Model}
\subsection{Varian IndoBERT dan Model yang Digunakan}

\section{Dataset SQuAD-id}
\subsection{SQuAD dan SQuAD v2.0}
\subsection{Konstruksi SQuAD-id: Terjemahan Mesin dan Perbaikan Span}
\subsection{Versi Dataset yang Digunakan dan Penandaan Kualitas}
\subsection{Pembagian Data}
\subsection{Karakteristik dan Keterbatasan Dataset Terjemahan}

\section{Kuantisasi Model}
\subsection{Konsep dan Tujuan Kuantisasi}
\subsection{Kuantisasi Simetris dan Asimetris}
\subsection{Cakupan: Weight-Only dan Weight-Activation}
\subsection{Waktu: Post-Training Quantization dan QAT}
\subsection{Granularitas: Per-Tensor, Per-Channel, dan Per-Group}
\subsection{Dampak Kuantisasi pada Model Transformer}

\section{Metrik Evaluasi dan Pengujian Signifikansi}
\subsection{Exact Match dan F1}
\subsection{Ukuran Model: Teoretis dan Aktual}
\subsection{Uji Signifikansi Statistik}

\section{Penelitian Terdahulu}
\subsection{Kriteria Pemilihan Penelitian}
\subsection{Ringkasan Penelitian Terdahulu}
\subsection{Pembahasan per Sumbu Kuantisasi}

\section{Celah Penelitian dan Kerangka Berpikir}
\subsection{Celah Penelitian}
\subsection{Kerangka Berpikir}
\subsection{Posisi Penelitian Ini}
```

Catatan teknis: `\section` = subbab (2.1), `\subsection` = anak subbab (2.1.1). Kedalaman ini sudah didukung kelas dokumen yang dipakai template, tidak perlu ubah preamble. Kalau nanti butuh tingkat ketiga (2.1.1.1), pakai `\subsubsection` — tapi untuk skripsi S1 sebaiknya berhenti di `\subsection`.

---

## 7. Rujukan berkas

| Berkas | Isi |
|---|---|
| `report.md` | Daftar verifikasi & perhatian khusus (P0/P1/P2) |
| `reports.md` | Laporan lengkap: EDA, dataset, Muis dkk., Matrik, resep teknis |
| `PROPOSAL_PENELITIAN_TERDAHULU.md` | Isi tabel penelitian terdahulu yang baru |
| `ANALISIS_BAB1_BAB2.md` | Analisis Bab I–II |
| `bahan_justifikasi/` | Peta 62 klaim → kutipan + lokasi |
````

<a id="f-tugas-bab2-md"></a>

## `TUGAS_BAB2.md`

Ukuran 16,210 byte &middot; 234 baris &middot; sha256 `e55e3ffef3fa` &middot; encoding `utf-8-sig`

```markdown
# Daftar Tugas Perbaikan Bab II

Berkas sasaran: `src/chapters/chapter-2.tex`
Dasar: `PENILAIAN_BAB2.md` (skor 82/100) · Panduan AC-RIG UM 2021 §BAB 2 · Daftar Pengecekan v2.0
Dibuat: 24 Oktober 2026 · Status: semua ⬜ belum dikerjakan

| ID | Prioritas | Tugas | Estimasi | Status |
|---|---|---|---|---|
| B2-01 | P0 | Samakan aturan penyaringan data dengan angka Tabel 2.1 | 20 mnt | ⬜ |
| B2-02 | P0 | Rekonsiliasi 12,5% / 25% / ±48% + nyatakan cakupan bobot | 1,5 jam | ⬜ |
| B2-03 | P0 | Definisikan sumbu *channel* pada per-channel | 15 mnt | ⬜ |
| B2-04 | P1 | Pindahkan 7 kalimat keputusan metode ke kerangka Bab III | 1 jam | ⬜ |
| B2-05 | P1 | Tambah paragraf tahapan kuantisasi end-to-end | 45 mnt | ⬜ |
| B2-06 | P1 | Perbaiki sitasi angka 124,5 juta | 5 mnt | ⬜ |
| B2-07 | P1 | Tempel 2 sitasi yang hilang di 2.4 | 10 mnt | ⬜ |
| B2-08 | P1 | Pindahkan konsep kuantisasi tersimulasi ke 2.5.7 | 30 mnt | ⬜ |
| B2-09 | P2 | Urutkan ulang Tabel 2.5 + kolom tujuan/masalah | 45 mnt | ⬜ |
| B2-10 | P2 | Perjelas pembanding baris 4 & redaksi syarat † | 15 mnt | ⬜ |
| B2-11 | P2 | Kebahasaan: `Karena`, huruf miring, judul subbab, dll. | 45 mnt | ⬜ |
| B2-12 | P2 | Tutup 3 penanda `% TODO` | 30 mnt + riset | ⬜ |

Total ± 7 jam. P0 saja ± 2 jam 5 menit.

---

## P0 — naskah salah secara faktual

### B2-01 · Aturan penyaringan data tidak cocok dengan Tabel 2.1

**Apa.** Baris 23 menyatakan sampel yang dipakai adalah yang "penanda pertanyaan tanpa jawaban **dan** penanda data tidak valid bernilai salah". Tabel 2.1 tidak konsisten dengan aturan itu untuk data uji: 11.873 − 5.945 − 1.071 = **4.857**, sedangkan tabel menulis **4.225**. Angka 4.225 hanya keluar bila saringan keduanya adalah kolom "jawaban tidak ditemukan pada konteks" (1.703), bukan `is_data_invalid` (1.071).

**Kenapa.** Ini satu-satunya tempat di Bab II yang bisa dibantah dengan aritmetika dasar dari tabel Anda sendiri. Data latih tidak menunjukkan selisih karena kedua kolomnya kebetulan bernilai sama (25.462) — cacat ini lolos justru karena kebetulan itu.

**Di mana.** `chapter-2.tex:23` (kalimat aturan) dan `:96–104` (Tabel 2.1).

**Cara.** Ubah kalimat aturan menjadi "…sampel dengan penanda pertanyaan tanpa jawaban bernilai salah **dan jawaban yang dapat dilacak pada konteks**", **atau** tambahkan satu baris tabel "Baris bertanda data tidak valid **dan** jawaban tidak ditemukan". Jangan dua-duanya.

**Butuh keputusan Anda.** Konfirmasi: apakah 4.225 memang dihitung dengan saringan "jawaban tidak ditemukan"? Kalau ya, teksnya yang salah. Kalau tidak, angka tabelnya yang salah dan harus dihitung ulang.

**Kalau tidak dikerjakan.** Pertanyaan pertama saat sidang: "kenapa data uji Anda 4.225, bukan 4.857?"

---

### B2-02 · Tiga angka ukuran model bertabrakan; cakupan bobot tidak dinyatakan

**Apa.** 2.5.1 menulis "ukuran teoretis 4-bit = 12,5%" (baris 192), 2.5.7 menulis "ukuran berkas aktual mendekati 25%" (baris 316), dan 2.6.2 (baris 344) menyebut "tidak seluruh parameter ikut dikuantisasi" tanpa menyebut parameter mana. Ketiganya benar dalam asumsi masing-masing, tetapi tidak ada satu kalimat pun yang menyatakan **lapisan apa yang dikuantisasi**.

Hitungannya: 124,5 juta parameter = ±38,8 jt embedding (50.000 × 768 + posisi + tipe token) + ±84,9 jt lapisan linear (12 × (4 × 768² + 2 × 768 × 3072)). Bila hanya linear yang dikuantisasi dan embedding tetap FP32: 155 MB + 85 MB = **±240 MB = 48% dari 498 MB**. Dengan bit-packing: ±198 MB = **40%**. Angka 25% hanya berlaku bila **semua** parameter dikuantisasi dan masing-masing menempati 1 byte.

**Kenapa.** Ini klaim utama skripsi Anda (efisiensi penyimpanan). Kalau angka 12,5%/25% di Bab II tidak akan tercapai di Bab IV, seluruh argumen trade-off runtuh. Berkas rencana Anda sendiri (`bab2/03_sub6-8.md:17`) sudah menyebut embedding/klasifier tidak dikuantisasi — kalimat itu belum pernah masuk ke `chapter-2.tex`.

**Di mana.** `:192` (2.5.1), `:316` (2.5.7), `:344` (2.6.2), dan tambahan di `:242–244` (2.5.4 cakupan).

**Cara.**
1. Di 2.5.4, tambahkan 2–3 kalimat: lapisan mana yang dikuantisasi, lapisan mana yang tetap FP32, dan berapa proporsi parameter masing-masing.
2. Di 2.5.1, beri label pada angka 12,5%: "batas teoretis bila seluruh parameter 4-bit dan dipadatkan dua nilai per byte".
3. Di 2.5.7, tulis rantainya utuh: 12,5% (teoretis, semua parameter, bit-packed) → 25% (semua parameter, wadah 1 byte) → ±48% (hanya linear, wadah 1 byte).
4. Di 2.6.2, tepati janji 2.5.7: sebut bit-packing, bukan hanya faktor skala.

**Butuh keputusan Anda.** Apakah embedding dan klasifier ikut dikuantisasi? Ini keputusan rancangan, bukan pilihan kata. Jawabannya menentukan angka mana yang Anda klaim di Bab IV.

**Kalau tidak dikerjakan.** "Anda mengecilkan model jadi 62 MB — embedding-nya ikut dikuantisasi?" Tidak ada satu kalimat pun di Bab II yang bisa Anda tunjuk.

---

### B2-03 · Sumbu *channel* tidak didefinisikan

**Apa.** Baris 280–285 mendefinisikan $s_j = \max(|W_j|)/(2^{b-1}-1)$ sebagai "satu faktor skala untuk setiap *channel* $j$", tanpa menyebut sumbu mana yang menjadi $j$.

**Kenapa.** Pada `nn.Linear` sumbu keluaran adalah baris; pada `Conv1D` HuggingFace (yang dipakai proyeksi Q/K/V BERT) bobot berbentuk (in, out) sehingga sumbunya kolom. Salah sumbu berarti "per-channel" berubah arti menjadi per-input-channel — hasil kuantisasinya berbeda, dan ini tidak akan terlihat dari teks.

**Di mana.** `:280–285`, sebaiknya juga Tabel 2.4 `:303`.

**Cara.** Tambah satu klausa: "yaitu sumbu keluaran lapisan (baris pada `nn.Linear`, kolom pada `Conv1D`)".

**Butuh keputusan Anda.** Tidak ada — ini fakta teknis, cukup ditulis.

---

## P1 — pelanggaran panduan & risiko sidang

### B2-04 · Tujuh kalimat keputusan metode ada di Bab II

**Apa.** Panduan §BAB 2 butir 7: *"Segala informasi pada Bab 2 hanya dasar teori. Hal-hal yang menjadi usulan peneliti tidak disampaikan di Bab 2, tetapi di Bab 3."* Naskah melanggar di 7 tempat: `:77` (pembentukan data validasi), `:126` (memilih kuantisasi), `:192` (batas 4-bit), `:240` (skema simetris dipilih), `:287` (pemetaan per-tensor/per-channel), `:316` (tidak memakai bit-packing), `:364–366` (B=10.000, Holm m=3).

**Kenapa.** Dua alasan sekaligus. Pertama, panduan pembimbing melarangnya secara eksplisit — ini butir yang paling mudah dicoret beliau. Kedua, memindahkannya **menghapus 4 dari 6 kalimat yang diawali "Karena"** (`:75, 240, 289, 342`), jadi satu pekerjaan menyelesaikan dua temuan.

**Di mana.** Tujuh baris di atas; tujuannya berkas kerangka Bab III.

**Cara.** Di Bab II, ubah setiap kalimat menjadi bermodus teori tanpa membuang informasinya. Contoh pola: "Pada presisi rendah, bit-packing diperlukan agar dua nilai INT4 menempati satu byte; tanpa bit-packing ukuran berkas menjadi dua kali ukuran teoretis." Kalimat keputusan ("penelitian ini tidak memakainya") dipindahkan ke berkas penampung `bab3/00_KEPUTUSAN_DARI_BAB2.md` supaya tidak hilang dan siap dipakai saat Bab III ditulis.

**Butuh keputusan Anda.** Setuju keputusan-keputusan itu ditampung di berkas `bab3/00_KEPUTUSAN_DARI_BAB2.md` (belum menyentuh Bab III), atau Anda ingin langsung menulis kerangka Bab III?

**Kalau tidak dikerjakan.** "Bab II Anda berisi keputusan penelitian — bukankah itu tempatnya di metodologi?"

---

### B2-05 · Tidak ada paragraf tahapan kuantisasi dari awal sampai akhir

**Apa.** Panduan §BAB 2 butir 2: "Algoritma pada dasar teori harus berisi definisi, **tahapan**, dan formula." Definisi dan formula lengkap (13 persamaan), tetapi tahapan kuantisasi — kalibrasi → hitung skala → kuantisasi → simpan → dekuantisasi → inferensi — tidak pernah dirangkai sebagai satu urutan. Gambar 2.1 mengklaim "tujuh tahapan", tetapi teks tidak pernah menjelaskannya sebagai urutan kerja.

**Kenapa.** Tanpa paragraf ini, Gambar 2.1 hanya ilustrasi, dan pembaca harus menyusun sendiri urutan kerja dari tujuh subbab terpisah. Ini juga jembatan alami ke Bab III.

**Di mana.** Awal 2.5 (`:133`, setelah Gambar 2.1) atau akhir 2.5.2 (`:205`).

**Cara.** Satu paragraf 120–150 kata, 6 langkah bernomor dalam satu kalimat panjang atau daftar pendek, tanpa formula baru (formulanya sudah ada di subbab berikutnya). Setiap langkah menunjuk subbab tempat detailnya dibahas.

**Butuh keputusan Anda.** Tidak ada.

---

### B2-06 · Angka 124,5 juta parameter disitasi ke sumber yang salah

**Apa.** Baris 67 mencantumkan konfigurasi arsitektur **dan** "sekitar 124,5 juta parameter" dengan satu sitasi `\parencite{wilie2020indonlu}`. Konfigurasi memang dari paper itu; angka 124,5 juta adalah hasil hitung dari *checkpoint*, bukan angka yang dinyatakan Wilie dkk.

**Kenapa.** Kesalahan sitasi paling mudah ditembak karena bisa diperiksa langsung di model card. Jenis kesalahan yang sama sudah pernah Anda perbaiki di tempat lain (B5/B6 di `TUGAS_STATUS.md`), jadi konsisten.

**Di mana.** `:67`.

**Cara.** Ubah ekor kalimat: "…sehingga jumlah parameternya sekitar 124,5 juta **berdasarkan penghitungan pada checkpoint model**".

**Butuh keputusan Anda.** Tidak ada.

---

### B2-07 · Dua klaim empiris tanpa sitasi di 2.4

**Apa.** `:120` ("model hasil pemangkasan umumnya perlu dilatih ulang untuk memulihkan akurasi") dan `:122` ("memerlukan proses pelatihan penuh") tidak diakhiri sitasi, padahal keduanya dasar argumen memilih kuantisasi di `:126`.

**Kenapa.** Panduan: "Sitasi-sitasi perlu disertakan pada dasar teori di mana pernyataan tersebut diambil." Dua klaim ini justru yang menopang seluruh pilihan metode Anda.

**Di mana.** `:120`, `:122`.

**Cara.** Tempelkan `\parencite{han2016deep}` dan `\parencite{hinton2015distilling}` — keduanya sudah ada di `references.bib` dan sudah disitasi di paragraf pembuka 2.4, jadi tidak ada entri baru.

**Butuh keputusan Anda.** Tidak ada.

---

### B2-08 · Konsep kuantisasi tersimulasi muncul pertama kali di subbab metrik

**Apa.** "Kuantisasi diterapkan secara tersimulasi, yaitu bobot didekuantisasi sebelum komputasi" hanya muncul di 2.6.2 (`:342`). Padahal konsep ini yang menjelaskan mengapa latensi tidak boleh diklaim membaik.

**Kenapa.** Konsep teori yang menentukan interpretasi hasil tidak boleh lahir di subbab metrik. Penguji yang membaca 2.5 sampai habis akan mengira Anda mengklaim inferensi INT4 sungguhan.

**Di mana.** Pindah/ perluas ke 2.5.7 (`:312–316`), sisakan satu rujukan singkat di 2.6.2.

**Cara.** Di 2.5.7, setelah paragraf bit-packing, tambah 3–4 kalimat: bobot INT4 disimpan → didekuantisasi ke FP32 → komputasi tetap FP32 → tidak ada percepatan latensi, hanya penghematan penyimpanan. Ini juga yang membuat klaim Bab IV aman.

**Butuh keputusan Anda.** Tidak ada.

---

## P2 — mutu & konsistensi

### B2-09 · Tabel 2.5: urutan terbalik dan kolom tujuan hilang

**Apa.** (a) Panduan butir 7: tinjauan diurutkan "dari yang paling relevan sampai ke penelitian yang kurang relevan". Baris 1–6 adalah studi GLUE/SQuAD berbahasa Inggris, sedangkan dua studi paling relevan (IndoBERT, SQuAD-id) justru di baris 7–8. (b) Tabel tidak punya kolom masalah/tujuan penelitian.

**Kenapa.** Urutan terbalik membuat pembaca menilai relevansi dari studi yang paling jauh. Kolom tujuan yang hilang membuat tabel jadi daftar hasil, bukan tinjauan — padahal panduan minta tujuan–metode–hasil.

**Di mana.** `:393–400` (baris tabel), `:378–382` (definisi kolom).

**Cara.** Balik urutan menjadi: Ramaputra → Abdurrahman → Zadeh → Bai → Guo → Wei → Bondarenko → Kim. Tambah kolom "Tujuan/Masalah" (p{2.2cm}) dan kurangi lebar kolom "Model" untuk menjaga `\textwidth`.

**Butuh keputusan Anda.** Tetap 8 baris, atau pangkas ke 6 (buang dua baris GLUE yang konteksnya paling jauh)? Saya sarankan tetap 8 — dua baris itu yang menopang argumen granularitas.

---

### B2-10 · Baris 4 ambigu & redaksi syarat † tidak konsisten

**Apa.** (a) Baris 4: "pada SQuAD v1.1 unggul 4,73% (BERT) dan 15,55% (RoBERTa)" — unggul terhadap apa tidak disebut. (b) Syarat pemilihan tertulis "disitasi minimal lima penelitian lain", tetapi Abdurrahman (1 sitasi) dan Ramaputra (0 sitasi) tetap dipakai dengan tanda †.

**Kenapa.** (a) Angka tanpa pembanding tidak bermakna. (b) Syarat yang dilanggar oleh tabelnya sendiri melemahkan seluruh kriteria pemilihan — padahal pengecualiannya sudah jujur ditulis di catatan, tinggal dipindahkan ke redaksi syarat.

**Di mana.** `:372` (syarat), `:396` (baris 4), `:405` (catatan).

**Cara.** (a) Sebutkan pembandingnya. (b) Ubah syarat: "…telah disitasi minimal lima penelitian lain, **kecuali studi berbahasa Indonesia yang belum memiliki padanan dan ditandai †**". Angka "paling sedikit sembilan kali" **jangan diubah** — itu batas bawah aktual keenam baris yang lolos (Bai dkk. 2022 = 9).

**Butuh keputusan Anda.** Tidak ada, kecuali Anda ingin memastikan angka pembanding baris 4 dari PDF Wei dkk.

---

### B2-11 · Kebahasaan sisa

**Apa.**
- Kalimat diawali `Karena`: `:38` dan `:348` (empat lainnya hilang sendiri setelah B2-04).
- Istilah asing tegak: `dataset` 22×, `token` 17×, `tensor` 13×, `baseline` 1× — sementara `encoder` dan `span` sudah miring.
- Judul subbab campur bahasa: 2.5 "Kuantisasi pada Neural Network", 2.5.2 "Konsep Dasar Quantization", 2.5.6 "Granularitas Quantization", 2.5.7 "…Representasi Bit-Width Rendah".
- `di mana` sebagai penghubung: `:45` (satu-satunya di naskah).
- `antar-\textit{channel}`: `:304`.
- `pra-latih` (ringkasan) vs `pralatih` (9× di bab).

**Kenapa.** Butir 3, 4, 5, dan 6 Daftar Pengecekan. Semuanya akan dicoret beliau di kertas, dan itu memindahkan fokus bimbingan dari substansi ke bahasa — hal yang justru ingin dihindari lembar pengecekan itu sendiri.

**Di mana.** Lihat daftar di atas.

**Cara.** Satu kali kerja dengan `replace all` berformat untuk huruf miring; sisanya sunting manual. `bit` biarkan tegak (ada di KBBI).

**Butuh keputusan Anda.** Kebijakan huruf miring: miringkan semua istilah asing non-KBBI, atau ganti dengan padanan (`himpunan data` untuk dataset)? Saya sarankan miringkan — lebih cepat dan tidak mengubah istilah yang sudah dipahami penguji.

---

### B2-12 · Tiga penanda `% TODO` masih terbuka

**Apa.** `:75` (pastikan daftar fitur dataset yang benar-benar dimuat), `:114` (verifikasi lisensi & redistribusi), `:287` (samakan dengan opsi pustaka kuantisasi di Bab III, termasuk perilaku bawaannya).

**Kenapa.** TODO yang lolos ke PDF terbaca sebagai pekerjaan yang belum selesai. `:287` khususnya bergantung pada B2-03 dan pada keputusan pustaka kuantisasi.

**Di mana.** Tiga baris di atas.

**Cara.** `:75` — cek `load_dataset` sekali, tulis daftar fiturnya. `:114` — cek kartu dataset SEACrowd; kalau tidak ada lisensi, tulis "tidak mencantumkan lisensi" sebagai pernyataan, bukan TODO. `:287` — tunggu keputusan pustaka (setelah B2-02).

**Butuh keputusan Anda.** Pustaka kuantisasi mana yang akan dipakai (PyTorch murni, `torch.ao.quantization`, `optimum-quanto`, atau `bitsandbytes`)? Ini menentukan perilaku bawaan per-channel yang harus Anda tulis.

---

## Yang sengaja TIDAK masuk daftar

| Hal | Alasan |
|---|---|
| Memindahkan 2.7 (tinjauan) ke depan sebagai 2.1 | Panduan sendiri kontradiktif; biayanya menomori ulang 2.1–2.6 plus seluruh `\ref` silang. Risiko akademik kecil, risiko salah tunjuk besar. Simpan sebagai jawaban lisan bila ditanya. |
| Memangkas jumlah subbab 2.5 | 7 anak subbab semuanya dipakai dan tidak ada yang menganggur. Panduan tidak membatasi jumlah. |
| Menambah subbab "kuantisasi pada BERT" | Sudah tercakup di 2.4 dan 2.5.4. Subbab baru akan menduplikasi. |
| Mengubah gaya sitasi APA → Harvard | Konflik antar dua dokumen acuan; harus diputuskan pembimbing, bukan saya. |

---

## Empat keputusan yang saya butuhkan sebelum menyentuh `.tex`

1. **Embedding/klasifier ikut dikuantisasi?** (menentukan B2-02, B2-12, dan angka yang diklaim di Bab IV)
2. **Angka 4.225 dihitung dengan saringan apa?** (menentukan apakah yang salah teksnya atau tabelnya — B2-01)
3. **Keputusan metode ditampung di `bab3/00_KEPUTUSAN_DARI_BAB2.md`, atau langsung menulis kerangka Bab III?** (B2-04)
4. **Pustaka kuantisasi mana?** (B2-12, dan sumbu channel di B2-03)
```

<a id="f-tugas-status-md"></a>

## `TUGAS_STATUS.md`

Ukuran 49,060 byte &middot; 427 baris &middot; sha256 `520d09760a3b` &middot; encoding `utf-8-sig`

```markdown
# Daftar Tugas & Status — Skripsi WO-PTQ untuk Extractive QA

Diperbarui 25 Oktober 2026. Semua path relatif terhadap `D:\KEJARCEPATTTT\`.
Legenda: **✅ selesai** · **🟡 sebagian** · **⬜ belum**

---

## A. Korpus & bukti (folder `quantization/paper/sudah dipilih/`)

| ID | Tugas | Status | Lokasi hasil |
|---|---|---|---|
| A1 | Pilah 65 PDF → 32 masuk konteks | ✅ | `sudah dipilih/bahan/` (32 PDF) + `Pemilahan_Dokumen.md` |
| A2 | Tabel review 32 dokumen (tujuan/metode/hasil + kutipan + lokasi) | ✅ | `sudah dipilih/Tabel_Review_Bahan.md` (99 kutipan, semua terverifikasi) |
| A3 | Deteksi duplikat & file rusak | ✅ | `Pemilahan_Dokumen.md` §Temuan (axioms = Forecasting; 3× Understanding; `abstrak_telyu.pdf` 0 byte) |
| A4 | Salinan beku catatan korpus | ✅ | `if-itb-latex/bahan_justifikasi/sumber/` |

## B. Bukti sitasi

| ID | Tugas | Status | Lokasi hasil / sisa pekerjaan |
|---|---|---|---|
| B1 | Peta 62 klaim Bab I–II → kutipan verbatim + lokasi | ✅ | `if-itb-latex/bahan_justifikasi/justifikasi_bab1.md`, `justifikasi_bab2.md` |
| B2 | Verifikasi angka Tabel Penelitian Terdahulu (baris 2, 4, 5) | ✅ | `bahan_justifikasi/verifikasi_tabel_terdahulu.md` |
| B8 | Verifikasi syarat sitasi (≥5) dan konteks (metode/dataset/metrik) untuk 8 baris penelitian terdahulu | ✅ | `bahan_justifikasi/verifikasi_penelitian_terdahulu.md`; angka sitasi: Crossref + OpenAlex; kalimat batas bawah sitasi ditambahkan di 2.7.1 |
| B3 | 15 klaim uji & metrik diverifikasi | ✅ | `bahan_justifikasi/verifikasi_sumber_uji.md`: tabel klaim → halaman → kutipan verbatim → putusan |
| B4 | Unduh PDF prioritas | ✅ | 4 PDF terbuka masuk `bahan_justifikasi/sumber/` (Rajpurkar 2016, Rajpurkar 2018, Dror 2018, Berg-Kirkpatrick 2012). Muis 2020 dan Holm 1979 berbayar, diverifikasi lewat kartu dataset SEACrowd dan catatan Crossref. Han 2026 dan hu2022 sudah tidak disitasi |
| B5 | Ganti sitasi `wu2023understanding` untuk granularitas | ✅ | Bab 2 dan Bab 1 kini memakai `gholami2021survey` + `bondarenko2021understanding`; `wu2023` hanya tersisa di `chapter-1.tex:26` untuk klaim akurasi (memang didukung) |
| B6 | Persempit 3 klaim yang lebih luas dari kutipan | ✅ | 3 kalimat ditulis ulang: 2 di `chapter-1.tex` (representasi kontekstual, multibahasa) dan 1 di `chapter-2.tex` (IndoBERT) |
| B7 | Tambah sitasi SEACrowd di subbab dataset | ✅ | 2.3 menyitasi `lovenia2024seacrowd`; entri bib ditambahkan |

## C. Dokumen perencanaan & analisis (`if-itb-latex/`)

| ID | Tugas | Status | Lokasi |
|---|---|---|---|
| C1 | Analisis Bab I–II (yang kurang, sitasi salah, risiko sidang) | ✅ | `ANALISIS_BAB1_BAB2.md` |
| C2 | Usulan tabel penelitian terdahulu (syarat ≥5 sitasi, ≤5 tahun) | ✅ | `PROPOSAL_PENELITIAN_TERDAHULU.md` |
| C3 | Kajian proposal teman (Tafftadia) | ✅ | `KAJIAN_PROPOSAL_TAFFTADIA.md` |
| C4 | Daftar verifikasi & perhatian khusus (P0/P1/P2) | ✅ | `report.md` |
| C5 | Laporan EDA + Muis dkk. + Matrik + resep teknis | ✅ | `reports.md` |
| C6 | Rencana penyelesaian Bab II + urgensi | ✅ | `RENCANA_BAB2.md` (struktur di dalamnya sudah digantikan `bab2/05`) |
| C7 | Rincian per anak subbab (4 berkas) + 2 versi struktur | ✅ | `bab2/00_PANDUAN.md`, `01_sub1-3.md`, `02_sub4-5.md`, `03_sub6-8.md`, `04_STRUKTUR_RINGKAS.md`, `05_STRUKTUR_v3.md` |

## D. Bab II — `src/chapters/chapter-2.tex`

| ID | Tugas | Status | Lokasi / catatan |
|---|---|---|---|
| D1 | Restrukturisasi jadi 7 subbab + 14 anak subbab | ✅ | `chapter-2.tex` (303 baris) |
| D2 | Isi 2.4 Kompresi Model (pruning, KD, kuantisasi + keputusan) | ✅ | 2.4 |
| D3 | Isi 2.5.1 Representasi Numerik FP16/INT8/INT4 | ✅ | 2.5.1 |
| D4 | Isi 2.5.3 alasan skema simetris | ✅ | 2.5.3 |
| D5 | Tabel 2.1 QAT vs PTQ | ✅ | 2.5.5, `tab:qat-ptq` |
| D6 | Tabel 2.2 spektrum granularitas | ✅ | 2.5.6, `tab:granularitas` |
| D7 | Isi 2.5.7 bit-packing + pernyataan tidak diterapkan | ✅ | 2.5.7 |
| D8 | Isi 2.6.2 ukuran model + latensi + protokol | ✅ | 2.6.2 |
| D9 | Isi 2.6.3 McNemar + persamaan + Holm | ✅ | 2.6.3, `eq:mcnemar` |
| D10 | Gambar 2.1 kerangka berpikir 4 tahap | ✅ | 2.7.2, `fig:kerangka-berpikir` |
| D11 | Isi 2.2.2 checkpoint + alasan pemilihan varian | ✅ | 2.2.2 |
| D12 | Kalimat peta QA bahasa Indonesia | ✅ | akhir 2.1 |
| D13 | Ganti Tabel 2.3 (penelitian terdahulu) 5 → 8 baris | ✅ | 8 baris (Mokey, PTQ4PLM, OliVe, Outlier Suppression, I-BERT, Bondarenko, Abdurrahman, Ramaputra) + catatan † diperbarui + paragraf celah ditulis ulang |
| D14 | Perbaiki rujukan silang "Subbab 2.x" yang basi | ✅ | 2.5→2.6, 2.4→2.5.1, 2.4→2.5 |
| D15 | Tambah 5 entri bib baru | ✅ | `references.bib` (han2016deep, hinton2015distilling, zadeh2022mokey, suhendra2026matrik, mcnemar1947) |
| D16 | Bab II panjang ±4.850 kata | ✅ | **5.373 kata** setelah penambahan tabel, alasan rumus, dan penjelasan gambar |
| D17 | Bab II compile bersih | ✅ | 0 error, 0 sitasi/rujukan undefined |

## E. Bab I — `src/chapters/chapter-1.tex`

| ID | Tugas | Status | Catatan |
|---|---|---|---|
| E1 | Subbab **Manfaat Penelitian** | ✅ | `chapter-1.tex` 1.4 + 1.4.1 Manfaat Teoritis + 1.4.2 Manfaat Praktis (Batasan bergeser ke 1.5) |
| E2 | Subbab **Metodologi** | ↩️ dibatalkan | Sempat ditulis sebagai 1.6, lalu dihapus atas permintaan 25 Okt 2026 |
| E3 | Subbab **Sistematika Pembahasan** | ↩️ dibatalkan | Sempat ditulis sebagai 1.7, lalu dihapus atas permintaan 25 Okt 2026 |
| E4 | Alasan memilih presisi 4-bit | ✅ | Paragraf baru di Latar Belakang: 8-bit sudah hampir setara FP32, 4-bit masih bertahan pada BERT tetapi turun pada IndoBERT (77,35 → 72,78), dan penghematan hingga seperdelapan |
| E6 | Rumusan masalah dan tujuan disusun ulang mengikuti pola **menerapkan, performa, pengaruh** | ✅ | 1.2 dan 1.3 tiga butir sejajar: (1) cara menerapkan kuantisasi per-tensor dan per-channel, (2) performa EM, F1, ukuran model, latensi, (3) pengaruh granularitas + signifikansi |
| E7 | 1.2 dan 1.3 memakai istilah Inggris apa adanya + seluruh istilah asing dimiringkan | ✅ | "kuantisasi weight-only pasca-pelatihan" → "weight-only post-training quantization" (miring), "extractive question answering" miring, per-tensor/per-channel/coarse-grained/fine-grained/Exact Match/dataset miring. 20 perintah `\textit` di 1.2–1.3 |
| E5 | Batasan butir 7: tambahkan latensi sebagai metrik deskriptif | ✅ | butir 7 kini menyebut ukuran model **dan latensi**, dengan catatan latensi tidak diuji |

## F. Front matter & metadata

| ID | Tugas | Status | Catatan |
|---|---|---|---|
| F1 | `informations.tex`: judul, penulis, NIM, pembimbing, kata kunci | ✅ | Judul dikoreksi ("Bahas" → "Bahasa", tanda hubung weight-only/post-training), 5 kata kunci Indonesia dan 5 kata kunci Inggris diisi |
| F2 | Ringkasan (`abstract-id.tex`) | ✅ | Ditulis ulang: 253 kata, tiga paragraf (masalah, metode, hasil + kontribusi). Hasil eksperimen ditandai `[EM dan F1 rata-rata …]` untuk diisi setelah Bab IV |
| F3 | Summary (`abstract-en.tex`) | ✅ | 286 kata, terjemahan setara F2, judul Inggris dan kata kunci Inggris diisi, `\blindtext` dihapus |

## G. Data & eksperimen

| ID | Tugas | Status | Catatan |
|---|---|---|---|
| G1 | Jalankan EDA, simpan output | ✅ | `Skripsi\eda_output_jsonl\` (7 CSV) + `Dataset_SQuAD_ID\*.csv`; versi gabungan EDA + fuzzy matching: `Dataset_SQuAD_ID\eda_dan_fuzzy_squad_id.ipynb` (47 sel, modular, sudah dieksekusi, tabel ke `notebook_output\`) |
| G2 | Konfirmasi jumlah baris efektif + `span_valid_%` | ✅ | train efektif **61.359**, dev efektif **4.225**, span valid **100%**; angka mentah: 130.319/11.873 dengan 43.498/5.945 impossible dan 25.462/1.071 invalid |
| G3 | Putuskan split: dev sebagai uji, validasi dari train | ✅ | dev (11.873) → **test 5.244** baris; validasi = 44 artikel dari train → **5.997** baris; train **64.054**; tidak ada konteks bocor antar split. Tidak perlu stratifikasi: sebaran tipe pertanyaan beda ≤6,1 poin |
| G4 | Protokol tokenisasi (`max_length` 384, `stride` 128) | ✅ | IndoBERT-base-p2: konteks median 135 token, p99 349 → 384 menutupi p99; 0,70% konteks terpotong; 100% jawaban ada di dalam jendela; jawaban >30 token 0,25% → `max_answer_length=30` sah. Rincian `data_clean\token_stats.json` |
| G5 | Fuzzy repair 25.462 baris tanpa posisi span | ✅ | Levenshtein `partial_ratio` + normalisasi + snap batas kata, ambang **85** → 5.589 baris train + 3.168 baris normalisasi = **70.051** baris latih (setara Muis 71.106, selisih 1,4%); audit manual 30 baris: presisi 96,7%. Laporan: `Dataset_SQuAD_ID\data_clean\LAPORAN_PREPROCESSING.md` |
| G6 | Fine-tuning baseline FP32 (target F1 ≈63,6 untuk p2/p1) | ⬜ | data siap: `data_clean\train.jsonl` / `validation.jsonl` / `test.jsonl` |
| G7 | Kuantisasi weight-only coarse vs fine | ⬜ | — |
| G8 | Uji signifikansi (McNemar + bootstrap + Holm) | ⬜ | prosedur sudah ditulis di 2.6.3 |
| G9 | Bab III (metode penelitian) | ✅ | `chapter-3.tex` 2.989 kata, 4 subbab + 11 anak subbab, 7 tabel, 2 gambar, 0 TODO, compile bersih |

---

## Ringkasan angka

| Kategori | ✅ | 🟡 | ⬜ |
|---|---:|---:|---:|
| A. Korpus | 4 | 0 | 0 |
| B. Bukti sitasi | 8 | 0 | 0 |
| C. Perencanaan | 7 | 0 | 0 |
| D. Bab II | 17 | 0 | 0 |
| E. Bab I | 5 | 0 | 0 |
| F. Front matter | 3 | 0 | 0 |
| G. Data & eksperimen | 6 | 0 | 3 |
| H. Revisi Bab II | 20 | 0 | 0 |
| I. Bab III | 6 | 0 | 0 |
| J. Gaya sitasi | 10 | 0 | 0 |
| K. Koreksi teknis | 5 | 0 | 0 |
| L. Kebahasaan Bab I | 12 | 0 | 0 |
| M. Batasan & Bab III | 10 | 0 | 0 |
| N. Gaya akhir | 4 | 0 | 0 |
| O. Restrukturisasi 1.1 | 9 | 0 | 0 |
| P. Bab I versi penulis | 8 | 0 | 0 |
| Q. Rujukan persamaan | 2 | 0 | 0 |
| R. Tindak lanjut Bab I | 6 | 0 | 0 |
| S. Bab II versi penulis | 6 | 0 | 0 |
| T. Tambahan numerik Bab II | 8 | 0 | 0 |
| U. Gambar kerangka berpikir | 2 | 0 | 0 |
| V. Bab III versi penulis | 8 | 0 | 0 |
| **Total** | **166** | **0** | **3** |

## Sisa pekerjaan: tiga eksperimen yang menuntut GPU

Ketiganya tidak dapat dikerjakan dari sesi ini karena memerlukan pelatihan dan pengukuran pada GPU.

| ID | Tugas | Prasyarat |
|---|---|---|
| G6 | *Fine-tuning* baseline FP32 untuk tiga seed (target F1 ≈63,6 untuk p2/p1) | `Dataset_SQuAD_ID/data_clean/train.jsonl` (64.054) + `validation.jsonl` (5.997) sudah siap, Kaggle T4 |
| G7 | Kuantisasi *weight-only* 4-bit per-tensor dan per-*channel* + pengukuran ukuran berkas | *checkpoint* G6 |
| G8 | Uji McNemar, *paired bootstrap* 10.000, koreksi Holm per seed | keluaran G7 |

Setelah ketiganya selesai, tiga hal berikut dapat ditutup: kalimat hasil pada Ringkasan dan Summary, Bab IV, dan Bab V.

## H. Revisi Bab II (permintaan 24 Okt 2026)

| # | Permintaan | Status | Hasil |
|---|---|---|---|
| H1 | 2.1: ganti "dibahas pada Subbab 2.6" dengan menyebut metriknya langsung | ✅ | EM dan F1 disebut langsung beserta definisi satu kalimat |
| H2 | Paragraf sampel tanpa jawaban belum bersitasi | ✅ | `rajpurkar2018squad` + `lovenia2024seacrowd`; sitasi SQuAD v2.0 di 2.3 juga dikoreksi dari 2016 ke 2018 |
| H3 | Semua rumus di 2.2 harus punya alasan + kaitan riset | ✅ | 4 persamaan diberi kalimat alasan (attention, multi-head, MLM, span) |
| H4 | Tidak boleh ada ";" di dalam paragraf | ✅ | 19 kemunculan dihapus (Bab I, II, IV, abstrak ID/EN); sisa hanya di kode TikZ dan komentar |
| H5 | 2.3 harus punya tabel karakteristik dataset | ✅ | Tabel 2.1, 14 baris, angka dari `Dataset_SQuAD_ID\*.csv` |
| H6 | 2.4: perjelas alasan memilih kuantisasi + sitasi kontekstual | ✅ | Hitungan ukuran 498/249/125/62 MB + bukti Mokey dan Bondarenko, pola argumen Tafftadia |
| H7 | 2.5 menjadi "Kuantisasi pada Neural Network" + gambar penjelas | ✅ | Judul diubah dan paragraf pembuka ditulis (gambar kemudian dihapus atas permintaan H13) |
| H8 | 2.5.1: tabel + gambar representasi FP16/INT8/INT4 + sitasi | ✅ | Tabel 2.2 (format, bit, rentang, presisi); gambar dihapus, caption dipertahankan |
| H9 | 2.5.2: sitasi konsep dasar dari sumber asli | ✅ | `jacob2018quantization` + `gholami2021survey`, ditambah Persamaan (2.5) bentuk umum |
| H10 | 2.5.3: gambar simetris vs asimetris + argumen mudah dipahami | ✅ | Contoh angka α=0,8 → s=0,114 dan s=0,093 z=1; gambar dihapus, caption dipertahankan |
| H11 | Semua argumen/gambar/tabel/rumus di bagian kuantisasi harus jelas tujuannya | ✅ | Setiap tabel, persamaan, dan caption diberi kalimat tujuan |
| H12 | Semua tabel dirapikan | ✅ | 5 tabel: tanpa garis vertikal, angka rata kanan, sub-judul kelompok, kolom teks rata kiri; diverifikasi lewat render halaman |
| H13 | Semua gambar dihapus, caption dipertahankan | ✅ | Sempat dihapus, lalu 4 gambar dimasukkan kembali (lihat H14). Dua gambar masih berupa caption saja: Gambar 2.5 (simetris vs asimetris) dan Gambar 2.6 (kerangka berpikir) |
| H14 | Masukkan 4 gambar ke Bab II | ✅ | `resources/`: alur kuantisasi (Gambar 2.1), IEEE FP16 (2.2), INT8 (2.3), INT4 (2.4); caption dan rujukan di 2.5.1 diperbarui, ukuran 0.86–0.88 lebar teks |
| H15 | Gambar pemetaan simetris/asimetris dan kerangka berpikir versi awal | ✅ | Gambar 2.5 (simetris), 2.6 (asimetris) dari `resources/`; kerangka berpikir dibuat ulang versi kotak `\fbox` sebagai Gambar 2.7 |
| H16 | Perbaikan P0+P1 menurut `PENILAIAN_BAB2.md` (T1–T6, tahapan end-to-end, penghapusan kalimat keputusan) | ✅ | Lihat rincian di bawah |
| H17 | Perbaikan P2 menurut `PENILAIAN_BAB2.md` (urutan Tabel 2.5 + kolom tujuan, kebahasaan, judul subbab, TODO fitur dataset) | ✅ | Lihat rincian di bawah |
| H18 | Audit paragraf Bab II (kaidah 3–5 kalimat + ide pokok di awal/akhir) | ✅ | `AUDIT_PARAGRAF_BAB2.md`: 68 paragraf, 35 sudah 3–5 kalimat, 21 perlu digabung, 3 perlu dipecah, 6 pembuka tertunda; belum ada paragraf induktif |
| H19 | Eksekusi audit paragraf: 6 pembuka ditulis ulang, 3 paragraf dipecah, 3 diperkuat rujukan, 5 digabung | ✅ | Paragraf 3–5 kalimat naik 51% → 68%; paragraf >5 kalimat 3 → 0; ide pokok tertunda 6 → 0. Rincian di `AUDIT_PARAGRAF_BAB2.md` |
| H20 | Rekonsiliasi Tabel 2.1 dan teks 2.3 dengan hasil praproses final | ✅ | Tabel kini memisahkan kondisi mentah (86.821/5.928 terjawab) dan hasil penyaringan (70.051/5.244 dipakai); aritmetika kedua kolom menutup |


### Rincian H16 (penilaian Bab II, skor 82/100)

| Temuan | Status | Tindakan |
|---|---|---|
| T1 definisi penyaringan data tidak cocok dengan Tabel 2.1 (4.857 vs 4.225) | ✅ | Kalimat di 2.1 diubah menjadi "tidak bertanda pertanyaan tanpa jawaban dan jawaban acuannya dapat dilacak pada konteks"; baris tabel `is_data_invalid` dijadikan sub-baris "di antaranya", sehingga aritmetika menutup: 11.873 − 5.945 − 1.703 = 4.225 |
| T2 tiga angka efisiensi bertabrakan (12,5% / 25% / 48%) | ✅ | 2.5.1: 12,5% dilabeli batas teoretis; 2.5.4: paragraf baru dengan pembagian parameter (embedding 38,8 jt = 31,2%, linear 85,5 jt = 68,8%) dan tiga rasio; 2.5.7: 25% dan 48% (40% dengan packing); rujukan silang ke 2.6.2 ditepati dengan menyebut bit-packing di sana |
| T3 sumbu channel tidak didefinisikan | ✅ | Ditambah klausa: sumbu keluaran lapisan, baris pada `nn.Linear`, kolom pada `Conv1D` HuggingFace, beserta akibat bila sumbu salah |
| T4 124,5 juta disitasi ke Wilie dkk. | ✅ | Ditambah "berdasarkan penghitungan pada checkpoint model" |
| T5 dua klaim tanpa sitasi di 2.4 | ✅ | `han2016deep` dan `hinton2015distilling` ditempelkan di ujung kalimatnya |
| T6 kuantisasi tersimulasi baru muncul di 2.6.2 | ✅ | Dipindah sebagai teori di 2.5.7; kalimat 2.6.2 dinetralkan |
| Tahapan kuantisasi end-to-end | ✅ | Paragraf lima tahap (kalibrasi → skala → kuantisasi → simpan → dekuantisasi) di akhir 2.5.2 |
| 7 kalimat keputusan penelitian di Bab II | ✅ | Dihapus/dinetralkan di 2.1, 2.4, 2.5.1, 2.5.3, 2.5.4, 2.5.6, 2.5.7, 2.6.3 sesuai permintaan (tidak disimpan) |
| Sisa kalimat diawali "Karena" | ✅ | Dua yang tersisa (attention, uji berpasangan) diubah menjadi pola "…, sehingga …" |


### Rincian H17 (P2)

| Temuan | Status | Tindakan |
|---|---|---|
| Urutan Tabel 2.5 terbalik | ✅ | Diurutkan dari yang paling relevan: Ramaputra (SQuAD-id) → Abdurrahman (IndoBERT) → Zadeh → Bai → Guo → Wei → Bondarenko → Kim; ditambah kalimat bahwa urutan mengikuti relevansi |
| Tidak ada kolom tujuan/masalah | ✅ | Kolom baru "Tujuan atau Masalah"; kolom Model dan Dataset digabung agar 7 kolom tetap muat; baris 4 kini menyebut pembandingnya ("dibanding metode PTQ 6-bit terbaik sebelumnya") |
| Istilah asing tegak | ✅ | 55 kata dimiringkan: dataset, token, tensor, baseline, embedding. Dikecualikan dari `\label`, `\ref`, dan `\caption` karena `\textit` di dalam ketiganya merusak caption/label |
| Judul subbab campur bahasa | ✅ | 2.5 "Kuantisasi pada Jaringan Saraf Tiruan", 2.5.2 "Konsep Dasar Kuantisasi", 2.5.6 "Granularitas Kuantisasi", 2.5.7 "…Representasi Lebar Bit Rendah", 2.6.3 "…McNemar dan Bootstrap Berpasangan". 2.5.4 dan 2.5.5 sengaja dibiarkan karena memuat istilah inti judul skripsi |
| `di mana` sebagai penghubung | ✅ | Diganti "dengan" di 2.2 |
| TODO fitur dataset | ✅ | Diuraikan dari berkas JSONL: tujuh medan per baris dan enam medan per jawaban, plus hitungan posisi dihitung ulang |
| TODO lisensi dataset | ✅ | Ditutup: kartu dataset mencantumkan versi sumber 1.0.0 (SEACrowd 20 Juni 2024) dan lisensi bertanda TBD; kalimat di 2.3 ditulis sesuai itu |
| TODO opsi pustaka kuantisasi | ✅ | Dihapus atas keputusan pengguna; bagian ini tidak menyebut pustaka, mengikuti pola proposal Tafftadia |
| Memindahkan 2.7 ke depan | ⬜ | Tidak dikerjakan: laporan sendiri menyarankan jangan (P2), dan penomoran ulang memaksa mengubah rujukan teks "Subbab 2.5.3" dan sejenisnya |

### Perbaikan build di luar daftar

| Hal | Status | Keterangan |
|---|---|---|
| `\pembimbingDua` dan `\nipDua` dikomentari, sehingga `approval.tex` dan kedua abstrak gagal compile | ✅ | Didefinisikan kosong; blok Pembimbing II hanya muncul bila diisi |
| `hyperref` menampilkan kotak hijau pada setiap sitasi | ✅ | Diubah menjadi `\usepackage[hidelinks]{hyperref}` |
| `\usepackage{tikz}` ditambahkan ke `if-itb-thesis.sty` | ℹ️ | Tidak dipakai setelah gambar dihapus; dibiarkan agar siap bila gambar dikembalikan |

### Keputusan yang sudah diambil

1. "punya Mada" = proposal Tafftadia (`Proposal Skripsi - Weight-Only Post-Training Quantization ResNet`).
2. Gambar semula akan memakai TikZ (tersedia di mesin ini), lalu dihapus seluruhnya atas permintaan terakhir.
3. Aturan tanpa ";" berlaku untuk semua bab termasuk abstrak.
4. Sitasi paragraf sampel tanpa jawaban: Rajpurkar dkk. (2018) + SEACrowd.

## I. Bab III — `src/chapters/chapter-3.tex`

Analisis pembanding sudah dibuat: `ANALISIS_BAB3.md` (peta Bab III Tafftadia, pemetaan ke 11 poin panduan AC-RIG, 7 yang ditiru, 6 yang tidak, usulan struktur, 7 keputusan).

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| I1 | Putuskan 7 hal: cakupan embedding, pustaka, pembagian validasi, max_length/stride, seed, jumlah epoch, lokasi penelitian | ✅ | Semua diputuskan: A (semua bobot), kuantisasi manual, 10% artikel seed 42, 384/128/30, 3 seed, maks 6 epoch + early stopping patience 2, Kaggle T4 |
| I2 | Tulis 3.1 (jenis + alur penelitian) | ✅ | 3.1.1 jenis, 3.1.2 alur 7 tahap + Gambar 3.1 |
| I3 | Tulis 3.2.1–3.2.3 (desain umum, lingkungan, data dan EDA) | ✅ | Gambar 3.2, Tabel 3.1 lingkungan, Tabel 3.2 pembagian data |
| I4 | Tulis 3.2.4–3.2.6 (praproses, model, implementasi kuantisasi) | ✅ | Tabel 3.3 hyperparameter, Tabel 3.4 modul kuantisasi |
| I5 | Tulis 3.2.7 + 3.3 (skenario, deskriptif, uji signifikansi) | ✅ | Tabel 3.5 skenario, Tabel 3.6 uji per metrik, uji per seed |
| I6 | Tulis 3.4 jadwal + gambar alur | ✅ | Tabel 3.7 jadwal 16 minggu, Gambar 3.1 dan 3.2 versi kotak `\fbox` |

## J. Penyelarasan gaya sitasi (25 Okt 2026)

Pembanding: `Skripsi - Klasifikasi Emosi Multi-Class MNB SVM Random Forest (Qinthara).pdf` — 72 sitasi, 58% terbuka, memakai `et al.`, `&`, dan `dkk.` sekaligus.

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| J1 | Analisis gaya sitasi pembanding (kutipan terbuka/tertutup, posisi titik) | ✅ | 42 terbuka : 30 tertutup; nama asing → `et al.`, nama Indonesia → `dkk.`, dua penulis → `&`; titik selalu setelah kurung penutup |
| J2 | Tambah 4 entri bib yang hilang dari Tabel 2.5 | ✅ | `bai2022towards` (NeurIPS 35, 1405–1418), `guo2023olive` (ISCA, 1–15), `wei2022outlier` (NeurIPS 35, 17402–17414), `kim2021ibert` (ICML/PMLR 139, 5493–5504); DOI dari Crossref, penulis I-BERT dicek ke arXiv |
| J3 | Tabel 2.5: nama penelitian mengikuti gaya Qinthara | ✅ | Baris 3–8 menjadi `et al.`, baris 2 tetap `Abdurrahman dkk.`, baris 1 tetap `Ramaputra & Joddy` |
| J4 | Empat sumber baru ditautkan ke daftar pustaka | ✅ | Kalimat baru di 2.7.2: optimasi per modul (Bai), penanganan outlier (Guo, Wei), integer-only (Kim), "tetapi seluruhnya pada tugas berbahasa Inggris" — sekaligus memperkuat celah |
| J5 | Enam tempat diubah menjadi kutipan terbuka | ✅ | 2.4 (Han, Hinton), 2.5.4 (Zadeh + Bondarenko), 2.6.1 (Rajpurkar), 2.6.3 (Dror), 3.2.5 (Abdurrahman dkk. + Bondarenko) |
| J6 | Sitasi ganda Bondarenko di paragraf 2.5.5 | ✅ | Tiga sitasi dalam satu paragraf menjadi dua: klaim umum tertutup + hasil spesifik terbuka |
| J7 | Repetisi "Kedua hasil tersebut" berturut-turut di 2.5.4 | ✅ | Dua kalimat digabung menjadi satu |
| J8 | Pemeriksaan penempatan titik pada seluruh sitasi | ✅ | 106 sitasi diperiksa, tidak ada titik sebelum kurung penutup, tidak ada sitasi menggantung |
| J10 | Sapuan kemiringan istilah asing di luar 1.2–1.3 | ✅ | Bab I 7 perbaikan (dataset, token, 3× Transformer, 2× per-tensor), Bab II 4 (3× Dataset, batch), Bab III 22 (5× per-tensor, per tensor, setiap tensor, 6× baseline, 9× seed). Sel di tabel, caption, label, dan gambar sengaja dilewati karena `\textit` di dalamnya merusak caption/label |
| J9 | Tiga tanda petik istilah di Bab II | ✅ | "terjawab", "posisi awal jawaban dihitung ulang", "jawaban tidak ditemukan pada konteks" adalah penanda istilah dan nilai dataset, bukan kutipan langsung, sehingga tidak diberi halaman |

Hasil: sitasi terbuka naik dari 5 (4,5%) menjadi 13 (11,4%). Sumber unik yang disitasi 31. Compile `pdflatex` + `biber` bersih: 0 error, 0 sitasi/rujukan undefined.

## K. Koreksi baseline FP16, jumlah parameter, pooler, dan sumbu per-channel (25 Okt 2026)

| # | Temuan | Keputusan dan tindakan |
|---|---|---|
| K1 | Baseline penelitian memakai **FP16**, bukan FP32 | Diganti di Bab I (latar belakang, rumusan, tujuan, batasan baru), Bab II (2.4, 2.5.4, 2.5.7, 2.7.2, kerangka berpikir), Bab III (3.2.1, Gambar 3.2, 3.2.6, Tabel 3.5, 3.3.1), Ringkasan, dan Summary. FP32 hanya disebut sebagai presisi pelatihan |
| K2 | Jumlah parameter: Bab II menulis 124,5 juta, Bab III 124,3 juta | Keduanya salah. Dihitung ulang dari bentuk tensor: **123.852.290 (123,9 juta)** untuk `BertForQuestionAnswering`. Rincian: embedding 38.796.288, atensi+bias 28.348.416, feed-forward+bias 56.669.184, LayerNorm 36.864, kepala QA 1.538 |
| K3 | Tabel 3.4 melabeli "Total" tetapi tidak memuat bias dan LayerNorm, dan masih memuat *pooler* | Diperbaiki: baris *pooler* dihapus, baris *LayerNorm* ditambah, baris atensi dan feed-forward kini menyebut "beserta bias", Total 123.852.290. Catatan di bawah tabel menjelaskan bahwa `AutoModelForQuestionAnswering` membangun *encoder* tanpa *pooling* (590.592 parameter *pooler* tidak ikut), dan model lengkap dengan *pooler* berjumlah 124.442.882 |
| K4 | Sumbu per-*channel* pada *embedding* tidak dinyatakan | Ditambahkan di 3.2.6: pada lapisan linear baris keluaran adalah dimensi keluaran, pada *embedding* baris keluaran adalah vektor satu *token*, sehingga per-*channel* berarti satu skala per *token*. Jumlah skala: 72 lapisan linear + 50.514 *embedding* = 50.586 untuk per-*channel*, dan 75 untuk per-*tensor* |
| K5 | Rasio ukuran masih memakai FP32 | Dihitung ulang: FP16 247,7 MB; INT4 teoretis 61,9 MB (25% FP16); INT4 di wadah INT8 123,9 MB (**50% FP16**); hanya linear 66% tanpa *packing* dan 49% dengan *packing* |

Angka acuan setelah koreksi: FP32 495,4 MB · FP16 247,7 MB · INT8 123,9 MB · INT4 teoretis 61,9 MB.

## L. Revisi kebahasaan Bab I (25 Okt 2026)

| # | Temuan peninjau | Tindakan |
|---|---|---|
| L1 | Judul 1.4.1 "Manfaat Teoritis" tidak baku | Menjadi **Manfaat Teoretis**; daftar isi ikut diperbarui setelah `thesis.toc` basi dihapus |
| L2 | Bentuk terikat "antar-" ditulis terpisah | Bab I: **antarkonfigurasi** (2×) dan **antargranularitas** (2×). Bab III ikut: antargranularitas (3×), antarjendela (2×), dan "sebaran antar seed" diganti "sebaran nilai *seed*" agar tidak lahir gabungan janggal |
| L3 | "pasca-pelatihan" | Menjadi **pascapelatihan** di Bab I, Ringkasan, dan kata kunci |
| L4 | Istilah asing tidak miring di 1.2–1.3 | **Tidak terbukti.** Kedelapan istilah sudah `\textit` di berkas dan sudah miring di PDF (diperiksa dengan render halaman 4). Peninjau kemungkinan membaca hasil ekstraksi teks yang membuang format. Tetap ada perbaikan: "per-*tensor*" kini "*(per-tensor)*" utuh miring, berlaku juga di Bab II–III |
| L5 | Nama dataset berubah-ubah | **Tidak terbukti.** Naskah konsisten: **SQuAD** untuk dataset asli berbahasa Inggris (19×) dan **SQuAD-id** untuk terjemahan Indonesia (21×). Huruf kecil "squad" hanya muncul di dalam kunci sitasi (`rajpurkar2016squad`) yang tidak tampil di PDF |
| L6 | Pengantar rumusan masalah memakai kata benda, butirnya kalimat tanya | Pengantar diubah menjadi "**tiga pertanyaan utama**, yaitu cara menerapkan…" |
| L7 | Kata gantung "berikut." di 1.4 | Kalimat diganti "Manfaat penelitian ini dibagi menjadi manfaat teoretis dan manfaat praktis." |
| L8 | Butir 1 tujuan mengulang butir 1 rumusan persis | Tujuan butir 1 diringkas: "Menerapkan *weight-only post-training quantization* 4-bit dengan dua tingkat granularitas pada model IndoBERT…" |
| L12 | Rumusan masalah dan tujuan versi final penulis | ✅ | Tiga butir RM: (1) bagaimana menerapkan, (2) seberapa besar perubahan EM/F1/ukuran/latensi vs FP16, (3) apakah perbedaan EM dan F1 signifikan. Tiga butir tujuan sejajar dengan kata kerja Menerapkan–Mengukur–Menguji. Pengantar 1.2 disesuaikan: "tiga pertanyaan utama, yaitu cara menerapkan, besarnya perubahan, serta signifikansi statistik" |
| L11 | Titik dua sebelum daftar diganti titik | ✅ | Tiga pengantar daftar di Bab I: 1.2 "…permasalahan sebagai berikut.", 1.3 "…adalah sebagai berikut.", 1.5 "…adalah sebagai berikut." Tidak ada lagi `berikut:` atau `adalah:` di naskah. Tata letak daftar diperiksa lewat render halaman, tetap rapi |
| L10 | Frasa "presisi 4-bit" diganti nama format **INT4** | ✅ | 14 penggantian: Bab I 8 (termasuk butir batasan, kini "Format numerik yang diuji dibatasi pada INT4"), Bab II 5, Bab III 1. Sekalian: "presisi 8-bit" → INT8 di Bab I, dan Tabel 3.5 baris 2–3 kini "Kuantisasi INT4". Sisa "presisi 4-bit" di PDF: 0 |
| L9 | Paragraf 5 dan 6 Latar Belakang terlalu panjang | Paragraf 5 dipecah dari 4 menjadi 6 kalimat, paragraf 6 dari 6 menjadi 7 kalimat, seluruh kalimat ≤25 kata |

## M. Batasan Masalah versi baru dan pemindahan angka ke Bab III (25 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| M1 | Ganti 1.5 dengan sepuluh butir versi penulis | ✅ | Sitasi `wilie2020indonlu` (butir 1) dan `muis2020sequence` (butir 2), istilah asing miring, "evaluasi manusia (*human evaluation*)" dan "penutur jati" pada tempat masing-masing |
| M2 | Nama *checkpoint* tidak lagi di Bab I | ✅ | 0 kemunculan `indobert-base-p2` di Bab I; nama itu hanya di 3.2.5 |
| M3 | Angka dipindah dari Batasan ke Bab III | ✅ | Butir 3 dan 8 hanya menyebut kriteria dan merujuk ke 3.2.4 serta 3.2.6 |
| M4 | Paragraf jumlah *tensor* dan skala di 3.2.6 | ✅ | 75 tensor (72 linear + 3 *embedding*), 82.944 skala linear, 50.514 skala *embedding*, 133.458 total, 0,53 MB (0,2% ukuran berkas) |
| M5 | Aturan pengecualian modul di 3.2.6 | ✅ | `qa_outputs`, seluruh *bias*, dan *LayerNorm* dikecualikan, karena penelusuran rekursif `nn.Linear` akan ikut menangkap kepala jawaban |
| M6 | Tabel 3.4 dipisah menurut cakupan kuantisasi | ✅ | Blok "Dikuantisasi (75 tensor bobot)" 123.729.408 dan blok "Tetap pada presisi asal" 122.882, total tetap 123.852.290. Caption menjadi "Pembagian parameter model menurut cakupan kuantisasi" |
| M7 | "Medan" menjadi "kolom" | ✅ | 2 tempat di 2.3 |
| M8 | Basis persentase posisi jawaban asli | ✅ | 3.2.3 kini menyebut "2.927 dari 61.359 baris berjawaban", sehingga 4,77% tidak terbaca 3,4% |
| M9 | Verifikasi ulang angka dataset dari berkas mentah | ✅ | `squad_id_train.jsonl` 130.319 dan `squad_id_testt.jsonl` 11.873; is_impossible 43.498/5.945; is_data_invalid 25.462/1.071; berjawaban 86.821/5.928; artikel 441/35; konteks 19.029/1.204; `answer_start_recomputed` 58.432/4.005. Semua cocok dengan Tabel 2.1 dan 3.2.4 |
| M10 | Kolom "judul artikel" pada berkas Muis | ✅ | Berkas memuat `origin_id, title, context, question, answers, is_impossible, is_data_invalid`, sehingga pembagian tingkat artikel di 3.2.3 sah |

Sisa keputusan yang masih menunggu jawaban dosen: kemiringan nama metode (*Exact Match*, *post-training quantization*) dan pilihan sebutan "4-bit" versus INT4.

## N. Keputusan gaya akhir: miring nama metode, INT4, dan Manfaat versi baru (25 Okt 2026)

| # | Keputusan | Tindakan |
|---|---|---|
| N1 | Nama metode tetap **dimiringkan** | Enam judul di Bab II dan satu di Bab III kini memuat `\textit`: 2.1 *Extractive Question Answering*, 2.5.4 *Weight-Only* dan *Joint Weight-Activation*, 2.5.5 *Post-Training Quantization* dan *Quantization-Aware Training*, 2.5.7 *Bit-Packing*, 2.6.1 *Exact Match* dan F1, 2.6.3 McNemar dan *Bootstrap*, 3.2.6 *Weight-Only* INT4. Kepala kolom "Model dan *Dataset*" dan caption Tabel 2.1 ikut dimiringkan. Diverifikasi lewat render halaman: judul 2.1 tercetak miring penuh |
| N2 | Sebutan format diseragamkan menjadi **INT4** | RM, Tujuan, Batasan butir 7, Manfaat, Bab II (2.5.1, 2.5.3, 2.5.7, 2.7.2), Bab III (3.1.1, Gambar 3.1 dan 3.2, 3.2.1, judul 3.2.6, langkah keempat), Ringkasan, dan Summary. Kalimat 2.5.1 yang tadinya hanya menyebut 12,5% terhadap FP32 kini menyebut 12,5% terhadap FP32 dan 25% terhadap FP16 |
| N3 | Sisa "4-bit" yang dipertahankan | 15 kemunculan, semuanya bukan nama format: keterangan lebar bit ("bilangan bulat 8-bit dan 4-bit", "wadah 8-bit", "menempati 4 bit"), caption gambar susunan bit, nama berkas gambar, dan sel Tabel 2.5 yang mengutip setelan penelitian lain ("PTQ 4-bit", "Qwen2.5-14B 4-bit", "bobot 16/8/6/4-bit") |
| N4 | 1.4 Manfaat versi baru | Empat butir teoretis dan tiga butir praktis, dengan sitasi `abdurrahman2023implementing` dan `ramaputra2026evaluating` pada butir pertama. Kalimat pengantar memakai rujukan silang ke 1.4.1 dan 1.4.2 |

## O. Restrukturisasi 1.1 mengikuti pola AC-RIG (25 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| O1 | 1.1 diringkas dari 8 paragraf menjadi 7 paragraf | ✅ | Konteks (P1–P2), masalah (P3), kajian (P4), kekurangan kajian (P5), solusi (P6), rangkuman (P7). Tiap paragraf 4–6 kalimat |
| O2 | Kalimat yang dibuang | ✅ | Rahali (hanya dipakai di 1.1 sehingga hilang dari Daftar Rujukan), Zafrir (QAT, tetap dipakai di Bab II), Armstrong (tidak nyambung ke granularitas, tetap dipakai di Bab II), "secara lebih terarah", "Meskipun demikian … tidak hanya menjadi pertimbangan", penjelasan *self-attention* |
| O3 | Paragraf masalah dengan angka | ✅ | 123.852.290 parameter, 495,4 MB FP32, 247,7 MB FP16, pihak terdampak (pengembang, institusi, perangkat), bersitasi Gholami |
| O4 | Paragraf kajian dengan hasil berangka | ✅ | Ramaputra & Joddy (EM 48,61 → 44,73 AWQ, 43,80 GPTQ), Abdurrahman (F1 77,35 → 72,78), Zadeh (F1 93,15 → 93,17), Bondarenko (GLUE 83,06 → 83,23) |
| O5 | Paragraf kekurangan kajian | ✅ | Lima butir celah, termasuk Suhendra dkk. (2026) sebagai studi terdekat tanpa kuantisasi, ditutup "dalam penelusuran penulis" |
| O6 | Alasan INT4 ditulis ulang | ✅ | Dua rasio disebut (50% dari FP16 tanpa *bit-packing*, 25% bila dipadatkan). Alasan memilih INT4 bersitasi Wu dkk. (2023); pernyataan bahwa INT8 terlalu kecil untuk membedakan granularitas ditulis sebagai pendapat penulis, bukan hasil Bondarenko |
| O7 | Aturan dosen: minimal 5 artikel 2021–2026 untuk *dataset* | ✅ | Paragraf konteks menyitasi enam karya 2021–2026 untuk SQuAD dan SQuAD-id: Zadeh 2022, Bai 2022, Guo 2023, Wei 2022, Ramaputra 2026, Suhendra 2026, ditambah Lovenia 2024 untuk versi SEACrowd |
| O8 | Kebahasaan | ✅ | Kepanjangan BERT, FP32, SQuAD pada kemunculan pertama; "berbagai tugas" diganti sebutan tugas; "hampir sama" diganti angka; "Ramaputra dan Joddy" (bukan "and") pada sitasi naratif dua penulis |
| O9 | Judul penelitian di akhir 1.1 | ✅ | "Penelitian ini berjudul *Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia*" |

## P. Bab I versi penulis dan penyelarasan baseline (25 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| P1 | 1.1 diganti versi penulis (sembilan paragraf) | ✅ | Konteks 2 paragraf, masalah dengan angka dan contoh 2,5 GB, kajian dipecah dua paragraf (IndoBERT dan QA), kekurangan kajian, solusi PTQ/INT4, granularitas, rangkuman berjudul |
| P2 | Pembuka 1.2 | ✅ | "…yaitu prosedur penerapan *weight-only post-training quantization*… Pertanyaan pertama dijawab melalui prosedur yang dirinci pada Bab III, sedangkan pertanyaan kedua dan ketiga dijawab melalui eksperimen…" |
| P3 | Pembuka 1.3 dan 1.5 | ✅ | "penelitian ini memiliki tiga tujuan" dan "terdiri atas sepuluh butir" |
| P4 | Kemiringan istilah diperiksa pada hasil render | ✅ | Halaman 1 diperiksa langsung: *Natural Language Processing*, *question answering*, *extractive question answering*, *span*, *Transformer*, *fine-tuning*, *benchmark*, *dataset*, *encoder*, *post-training quantization*, *quantization-aware training* semuanya miring |
| P5 | 2.4: klaim "seperdelapan" dihapus | ✅ | Menjadi "seperempat dibanding FP16, yaitu dari 248 MB menjadi 62 MB secara teoretis" |
| P6 | 2.5.4: batas teoretis | ✅ | "12,5% pada Subbab 2.5.1" menjadi "25% terhadap FP16 pada Subbab 2.5.1" |
| P7 | Tabel 2.5: sebutan presisi diselaraskan | ✅ | Tujuh sel menjadi INT4: Qwen2.5-14B/7B, PTQ dan QAT Abdurrahman, PTQ Zadeh, Guo, Wei |
| P8 | Sisa "4-bit" yang dipertahankan | ✅ | Bab II lima tempat dan Bab III satu tempat, semuanya keterangan lebar bit ("8-bit dan 4-bit", "bobot 16/8/6/4-bit", "indeks 4-bit", "wadah 8-bit"), bukan nama format |

Catatan untuk Bab V (dari peninjau): jawaban RM1 sebaiknya berupa bukti terukur, yaitu 75 *tensor* dikuantisasi, 75 skala *per-tensor* berbanding 133.458 skala *per-channel*, dan rentang bilangan bulat $-8$ sampai 7.

## Q. Rujukan persamaan tanpa tanda kurung (25 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| Q1 | Seluruh rujukan persamaan dalam paragraf memakai nomor langsung | ✅ | 18 perintah `\eqref` diganti `\ref`: 13 di Bab II dan 5 di Bab III. Hasilnya "Persamaan 2.5", bukan "Persamaan (2.5)". Nomor pada persamaan itu sendiri tetap ditampilkan dalam kurung |
| Q2 | Pemeriksaan hasil | ✅ | 14 rujukan "Persamaan N" di PDF, nol kemunculan "Persamaan (". Tautan silang tetap berfungsi, 0 rujukan undefined |

## R. Tindak lanjut peninjauan Bab I (25 Okt 2026)

| # | Temuan peninjau | Putusan | Tindakan |
|---|---|---|---|
| R1 | Istilah asing tidak miring | **Tidak terbukti** | 16 istilah diaudit pada seluruh kemunculan di Bab I: nol yang tegak. Peninjau membaca hasil ekstraksi teks. Tidak ada perubahan |
| R2 | Nama dataset ditulis SQUAD kapital | **Tidak terbukti** | Bab I memuat 0 "SQUAD" dan 14 "SQuAD". Tidak ada perubahan |
| R3 | Rujukan dataset Muis & Purwarianti (2020) tidak cocok | **Benar sebagian** | Artikel itu memang tentang *automatic question generator*, tetapi kartu *dataset* SEACrowd menunjuknya sebagai sumber `squad_id`. Ditambahkan klausa versi SEACrowd: "…dalam versi yang didistribusikan SEACrowd (Lovenia et al., 2024)" pada 1.5 butir 2 |
| R4 | Sitasi Jurafsky tiga kali di paragraf 1 | **Benar** | Kalimat 1 dan 2 digabung sehingga definisi umum dan definisi *question answering* berbagi satu sitasi. Sitasi tinggal dua, satu untuk definisi dan satu untuk *extractive* |
| R5 | Dua tanda kurung berdempet | **Benar** | "(Gholami et al., 2021) (Subbab 3.2.6)" menjadi "(Gholami et al., 2021), sebagaimana dirinci pada Subbab 3.2.6". Nol kemunculan kurung berdempet di seluruh naskah |
| R6 | Pengantar 1.2 dinilai sudah logis | Diterima | Tidak ada perubahan |

## S. Bab II versi penulis (25 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| S1 | Seluruh `chapter-2.tex` diganti versi penulis | ✅ | 7 subbab, 13 anak subbab, 9 persamaan, 5 tabel, 7 gambar |
| S2 | Empat entri bib baru dengan metadata terverifikasi | ✅ | `wang2022extractive` (HDIS 2022, 147–153), `raikwar2024five` (ASIANCON 2024, 1–6), `edwards1948continuity` (Psychometrika 13(3), 185–187), `fagerland2013mcnemar` (BMC Med Res Methodol 13:91). Semua DOI dicek ke Crossref |
| S3 | Persamaan dinomori ulang 2.1–2.9 | ✅ | Rujukan dalam paragraf memakai `\ref` sehingga berbunyi "Persamaan 2.3" tanpa kurung |
| S4 | Rujukan `eq:span` di Bab III | ✅ | Persamaan span tidak ada lagi di Bab II versi baru, sehingga rujukan diubah menjadi "sesuai formulasi pada Subbab 2.2.1" |
| S5 | Tabel 2.5 dipangkas dari 8 menjadi 6 baris | ✅ | Hanya studi yang lolos empat syarat; penelitian berbahasa Indonesia dibahas di paragraf, bukan di tabel |
| S6 | Verifikasi hasil render | ✅ | Tabel 2.1 (10 baris) dan Tabel 2.5 muat dalam margin, tidak ada kolom meluber, sembilan nomor persamaan tampil, sitasi baru muncul di Daftar Pustaka |

## T. Tambahan penjelasan numerik Bab II (25 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| T1 | Tiga paragraf baru di 2.5.1 | ✅ | Fungsi bit tanda, eksponen, mantisa. Rumus FP16 $(-1)^s \times 2^{e-15} \times (1+m/1024)$. Contoh 0,30 menjadi `0 01101 0011001101` dan terbaca 0,30005. Paragraf bahwa INT tidak punya eksponen dan mantisa |
| T2 | Contoh 2.5.3 diganti perbandingan tiga format | ✅ | Bobot 0,30 dengan α = 0,8 pada FP16, INT8, dan INT4. Langkah INT4 18,1 kali lebih lebar (127/7). *Error* maksimum setengah *s*: 0,0031 dan 0,0571 |
| T3 | Tabel 2.3 baru: contoh penyimpanan bobot 0,30 | ✅ | Lima kolom, tiga baris. Susunan bit ditulis monospace satu baris |
| T4 | Contoh 2.5.6 diganti matriks 2 × 4 | ✅ | Baris A (0,80; −0,30; 0,10; 0,55), baris B (0,20; 0,09; −0,15; 0,04). Rata-rata *error* baris B turun 0,0321 → 0,0057 (5,6 kali) |
| T5 | Tabel 2.5 baru: penghitungan per bobot | ✅ | Delapan kolom, delapan baris. Diperiksa pada hasil render: muat margin, kepala kolom dua baris tidak bertumpuk |
| T6 | Penomoran tabel bergeser otomatis | ✅ | 2.1 dataset, 2.2 format numerik, 2.3 contoh format, 2.4 QAT/PTQ, 2.5 contoh granularitas, 2.6 perbandingan granularitas, 2.7 penelitian terdahulu. Semua rujukan memakai `\ref` sehingga ikut bergeser |
| T7 | Verifikasi aritmetika | ✅ | Semua angka dihitung ulang: 0,30 → 1,2 × 2⁻², eksponen 13 = 01101, mantisa 205 = 0011001101, INT8 48 → 0,3024, INT4 3 → 0,3429, rata-rata *error* 0,0321 dan 0,0057. Cocok dengan naskah |
| T8 | Perbaikan tata letak | ✅ | `\allowbreak` pada nama model panjang, `\emergencystretch` 3em, lebar kolom Tabel 2.3. Hasil: 0 error, 0 overfull, 0 rujukan kosong, 64 halaman |

## U. Gambar kerangka berpikir (26 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| U1 | Gambar 2.7 diganti berkas penulis | ✅ | `resources/Kerangka berpikir penelitian.png` (2048 × 768 px, rasio 2,67). Kotak fbox lama dihapus |
| U2 | Ukuran disetel agar pas sisa halaman | ✅ | `width=0.88\textwidth`, batas `height=0.34\textheight`, keepaspectratio. Gambar turun ke halaman yang sama dengan paragraf rujukannya, sisa ruang bawah 2–3 cm, naskah kembali 63 halaman |
| U3 | Angka pada gambar perlu diekspor ulang | ⚠️ | Gambar menulis "sekitar 124,5 juta parameter", sedangkan naskah memakai 123.852.290 (123,9 juta). Perlu ekspor ulang dari berkas sumber |

## V. Bab III versi penulis dan gambar baru (26 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| V1 | Seluruh `chapter-3.tex` diganti versi penulis | ✅ | 4 subbab, 11 anak subbab, 8 tabel, 2 gambar, 2.722 kata. 0 titik koma di prosa |
| V2 | Gambar 2.7 memakai berkas baru | ✅ | Versi 07.34 (2172 × 724). Angka di kotak Masalah sudah 123,9 juta, cocok dengan naskah |
| V3 | Gambar 3.1 dan 3.2 dari berkas penulis | ✅ | `Alur penelitian.png` dan `desain eksperimen.png`. Versi 07.41 pada Gambar 3.2 sudah menulis FP16, bukan FP32 |
| V4 | Ukuran gambar disetel | ✅ | Gambar 2.7 `width=\textwidth` karena rasio berkas baru lebih lebar (3,0). Gambar 3.1 dan 3.2 `width=0.90\textwidth` dengan batas tinggi. Ketiganya turun di halaman yang memuat paragraf rujukannya |
| V5 | Tabel 3.4 tidak lagi di halaman tersendiri | ✅ | `[!ht]` pada tabel Bab III. Sebelumnya Tabel 3.4 memenuhi satu halaman kosong |
| V6 | Verifikasi angka | ✅ | 38.794.752 + 28.311.552 + 56.623.104 = 123.729.408. Ditambah 121.346 + 1.536 = 123.852.290. Ukuran 124,0 dan 124,5 MB (50,1% dan 50,3% dari 247,7). 25.462/86.821 = 29,3%. 3.168 + 5.589 = 8.757 |
| V7 | Selisih jumlah artikel pada Tabel 3.2 | ✅ | Ditutup dengan dua kalimat pada 3.2.3: 441 artikel mentah, dua artikel tidak menyisakan baris setelah penyaringan, 439 artikel dibagi menjadi 44 validasi dan 395 latih |
| V8 | Istilah pada Gambar 3.1 dan 3.2 | ✅ | Diputuskan dibiarkan sesuai keputusan penulis. Gambar memakai "4-bit", teks memakai INT4 |

## Berkas cadangan (jika perlu kembali ke versi sebelumnya)

`C:\Users\nanya\AppData\Local\hermes\cache\scratch\` :
`chapter-2.before-restructure.tex` → `chapter-2.before-2.2-edit.tex` → `chapter-2.before-latency.tex` (versi terakhir sebelum pengisian TODO).

## S. Bagian awal lengkap sesuai contoh skripsi UM (25 Okt 2026)

Acuan tata letak: `C:\Users\nanya\Downloads\05_REFERENSI\NLP\Skripsi - Klasifikasi Emosi Multi-Class MNB SVM Random Forest (Qinthara).pdf` (halaman i–xiii).

| # | Halaman | Status | Berkas / catatan |
|---|---|---|---|
| S1 | Lembar Persetujuan Pembimbing Skripsi (**i**) | ✅ | `chapters/approval.tex`: judul "LEMBAR PERSETUJUAN PEMBIMBING SKRIPSI" di tengah, kalimat menyebut judul skripsi, blok tanda tangan rata kiri dengan ruang tanda tangan 2 cm. Otomatis menjadi dua kolom bila `\pembimbingDua` diisi |
| S2 | Lembar Persetujuan dan Pengesahan Skripsi (**ii**) | ✅ | `chapters/endorsement.tex`: judul, tanggal sidang, **tiga blok penguji berupa garis kosong** (nama 6,5 cm + "NIP" 4,5 cm) karena dewan penguji belum ditetapkan, lalu blok "Mengesahkan, Dekan" (kiri) dan "Mengetahui, Ketua Departemen" (kanan). Isi `\pengujiSatu`–`\pengujiTiga` di `informations.tex` dan garis kosong otomatis berganti menjadi nama dan NIP |
| S3 | Pernyataan Keaslian Tulisan (**iii**) | ✅ | `chapters/statement.tex`: identitas Nama/NIM/Departemen-Program Studi/Fakultas, kalimat pernyataan memuat judul skripsi, blok tanda tangan kanan |
| S4 | Kata Pengantar (**vi**) | ✅ | `chapters/forewords.tex`: 2 paragraf + 5 butir ucapan terima kasih + penutup + tanda tangan, muat satu halaman. Butir 4 memuat nama Ketua Program Studi (Dr. Eng. Ir. Didik Dwi Prasetya, S.T., M.T.), butir 5 memakai `\pembimbingSatu` sebagai Dosen Pembimbing Akademik. Butir orang tua, saudara, sahabat, dosen/staf, dan pemberi beasiswa dihapus atas permintaan penulis |
| S5 | Daftar Tabel (**xi**) | ✅ | Baris kepala "Tabel … Halaman", entri berawalan "Tabel 2.1 …", tercatat di Daftar Isi |
| S6 | Daftar Gambar (**xii**) | ✅ | Baris kepala "Gambar … Halaman", entri berawalan "Gambar 2.1 …", tercatat di Daftar Isi |
| S7 | Daftar Rumus (**xiii**) | ✅ | `\listofrumus` di `config/if-itb-thesis.sty`: 13 entri "Rumus (2.1)"–"(2.13)" terisi otomatis dari lingkungan `equation` melalui berkas `thesis.rum` |
| S8 | Nomor halaman romawi i–xiii | ✅ | Sampul, halaman lambang, dan halaman judul tidak dihitung (`\setcounter{page}{1}` sesudah `title-page.tex`), sehingga Lembar Persetujuan = i. `\clearpage` sebelum `\pagenumbering{arabic}` mencegah halaman terakhir bagian awal berubah menjadi "1" |
| S9 | Entri bagian awal pada Daftar Isi | ✅ | Enam entri ditambahkan: tiga lembar, Daftar Tabel, Daftar Gambar, Daftar Rumus |
| S10 | Ekspor cover → Daftar Rujukan (tanpa Bab IV–V, lampiran, riwayat hidup) | ✅ | `excerpt.ps1` ditambah kode `daftarisi`, `daftartabel`, `daftargambar`, `daftarrumus`, dan `pustaka`; nomor halaman otomatis romawi untuk halaman awal dan arabic mulai bab. Hasil: `dist/excerpt-awal-sampai-bab3.pdf` (58 halaman: sampul p1–p3 tanpa nomor, i–xii, Bab I mulai 1, Daftar Rujukan 40–43). Perintah: `powershell -File excerpt.ps1 -Pilih "cover,logo,title,approval,endorsement,statement,ringkasan,summary,forewords,daftarisi,daftartabel,daftargambar,daftarrumus,bab1,bab2,bab3,pustaka" -Nama "awal-sampai-bab3"` |
| S11 | Halaman Daftar Rujukan pada Daftar Isi | ✅ | `\printbibliography[heading=bibintoc, title={Daftar Rujukan}]` menggantikan `\addcontentsline` setelah `\printbibliography`. Sebelumnya entri menunjuk halaman terakhir daftar rujukan (48), sekarang halaman pertama (45 di `thesis.pdf`, 40 di ekspor) |

| S12 | Daftar Isi disamakan dengan contoh Qinthara | ✅ | `\l@chapter` ditulis ulang di `config/if-itb-thesis.sty`: seluruh entri memakai titik-titik penuh sampai nomor halaman, entri bab dua baris ("BAB I" lalu judul kapital, masing-masing dengan titik dan halaman), entri halaman awal kapital satu baris. `\@chapter` ditambal sebelum `hyperref` dimuat agar menulis `\numberline{BAB I}\MakeUppercase{Judul}`; label lampiran memakai `\tocchapapp`/`\tocchapnum` |
| S13 | Entri Daftar Isi untuk halaman awal | ✅ | Ditulis kapital pada sumbernya: LEMBAR PERSETUJUAN…, PERNYATAAN…, RINGKASAN, SUMMARY, KATA PENGANTAR, DAFTAR TABEL/GAMBAR/RUMUS, LAMPIRAN |
| S14 | Kata Pengantar versi final | ✅ | Lima butir, satu halaman (vi). Nomor halaman bagian awal ikut bergeser: Daftar Isi vii–ix, Daftar Tabel x, Daftar Gambar xi, Daftar Rumus xii |

| S15 | Entri "LAMPIRAN" pada Daftar Isi | ✅ | Dihapus: entri itu menunjuk halaman terakhir Daftar Rujukan (48), sedangkan Lampiran 1 dan 2 sudah punya entri sendiri. Daftar Isi kini berakhir: DAFTAR RUJUKAN 45, Lampiran 1 49, Lampiran 2 50, RIWAYAT HIDUP 51 |

| S16 | Jarak antarbaris Daftar Isi | ✅ | `\vskip` sebelum entri bab dihapus dan seluruh daftar (Daftar Isi, Tabel, Gambar, Rumus) dibungkus `singlespace` pada `\@starttoc`. Daftar Isi jadi rapat tanpa baris kosong, dan menyusut dari 3 halaman menjadi 2 (vii-viii). Nomor halaman ikut bergeser: Daftar Tabel ix, Gambar x, Rumus xi |

| S17 | Kerapian Bab I (dan seluruh naskah) | ✅ | `enumitem` dengan `\setlist{itemsep=0pt, parsep=0pt, partopsep=0pt}` membuat butir daftar rapat tanpa jarak antarbutir, dan `\emergencystretch` 1,5em menghapus baris yang melewati margin kanan. Overfull di Bab I turun dari 4 menjadi 0. Efek samping: naskah menyusut 65 → 61 halaman, ekspor 57 → 53 halaman. Sisa overfull: `forewords.tex` 2 dan `chapter-2.tex` 2 |

| S18 | Kerapian menyeluruh Bab I-III dan naskah | ✅ | `microtype` (perataan mikro) ditambahkan setelah `mathptmx`, `\headheight` dinaikkan ke 14,5 pt agar kepala halaman tidak bergeser, dan `\emergencystretch` 3em dipakai di seluruh naskah serta di dalam daftar. Hasil: **0 overfull** di `thesis.pdf` dan **0 overfull** di ekspor (sebelumnya 5). Diperiksa lewat render: Tabel 2.2, 2.4, 3.4, 3.5 dan Gambar 2.1 tetap di dalam margin, caption tabel di atas, caption gambar di bawah, tidak ada kolom terpotong. Naskah 63 halaman, ekspor 55 halaman |

**Sisa pekerjaan bagian awal:** (1) dewan penguji belum ditetapkan, sehingga halaman ii mencetak tiga blok garis kosong; isi `\pengujiSatu`–`\pengujiTiga` dan `\tanggalSidang` di `config/informations.tex` bila sudah ada, (2) nama pada Kata Pengantar diisi penulis sendiri, (3) kalimat hasil pada Ringkasan/Summary dibiarkan kosong sampai eksperimen selesai.

**Catatan teknis:** baris kepala kolom daftar dipasang dengan menimpa `\@starttoc`; Daftar Tabel/Gambar/Rumus ditambahkan ke Daftar Isi dengan menimpa `\listoftables`, `\listoffigures`, dan `\listofrumus` (kelas `report` tidak menambahkan keduanya secara bawaan). Jarak tanda tangan di dalam `tabular` kolom `l`/`c` harus memakai satuan mutlak (`\\[2cm]`), karena `\\[3\baselineskip]` tidak berefek di kolom tersebut.

```

<a id="f-bab2-00-panduan-md"></a>

## `bab2/00_PANDUAN.md`

Ukuran 2,900 byte &middot; 46 baris &middot; sha256 `bfe7ec548bfc` &middot; encoding `utf-8-sig`

```markdown
# Panduan Penulisan Bab II — Rinci per Anak Subbab

Pelengkap `RENCANA_BAB2.md`. Isinya: untuk **setiap** anak subbab, apa yang harus ditulis, sepanjang apa, sitasi apa, dan tabel/gambar/persamaan apa yang wajib ada.

> **Versi ini sudah dipangkas.** Struktur yang dipakai sekarang: **6 subbab, 12 anak subbab, ±4.600 kata** — lihat `04_STRUKTUR_RINGKAS.md` (kalibrasi dari dua skripsi pembanding). Dokumen `00`–`03` tetap berguna sebagai **kumpulan bahan per topik**: saat menulis versi ringkas, ambil poin-poinnya dari sini lalu gabungkan sesuai peta di §3 `04_STRUKTUR_RINGKAS.md`.
>
> Target kata di tabel bawah (7.100) **tidak berlaku lagi**; pakai alokasi di `04_STRUKTUR_RINGKAS.md`.

## Cara pakai

1. Tulis berurutan 2.1 → 2.8. Tiap anak subbab punya target panjang; kalau lewat, potong — bukan tambah subbab baru.
2. Tanda `PINDAH` = teksnya sudah ada di `chapter-2.tex`, tinggal dipindah/dirapikan. `BARU` = tulis dari nol. `TULIS ULANG` = ada tapi isinya harus diganti.
3. Setelah semua selesai, cek daftar "jangan berlebihan" di bawah.

## Batas kewajaran (supaya tidak berlebihan)

- **Target total Bab II: 6.500–7.500 kata** (tanpa tabel). Skripsi S1 dengan 31 anak subbab akan terlihat gemuk kalau lewat 8.000.
- **Maksimum 3 paragraf per anak subbab.** Pengecualian hanya 2.4.2 dan 2.5.5 (4 paragraf).
- **Maksimum 1 tabel per subbab.** Total tabel Bab II: 5 (spektrum granularitas, QAT vs PTQ, penelitian terdahulu, metrik, split data).
- **Maksimum 1 gambar per subbab.** Total: 3 (arsitektur attention, kerangka berpikir, alur dataset).
- **Tidak ada `\subsubsection`.** Berhenti di `\subsection`.
- **Jangan menurunkan detail yang tidak dipakai di Bab III.** Contoh yang harus dihindari: sejarah pengembangan BERT, perbandingan optimizer, dataset QA lain (TyDiQA, CoQA) lebih dari satu kalimat, arsitektur LLM decoder.
- **Jangan mengulang definisi.** Kalau EM/F1 sudah dijelaskan di 2.6.1, jangan diulang di 2.1.2 — cukup rujuk silang (`\ref`).
- **Setiap angka wajib punya sumber** yang bisa dibuka (paper/PDF). Angka tanpa sumber → hapus atau ganti jadi pernyataan kualitatif.

## Alokasi panjang

| Subbab | Anak subbab | Target kata |
|---|---:|---:|
| 2.1 Extractive Question Answering | 4 | 700 |
| 2.2 Arsitektur Transformer | 3 | 600 |
| 2.3 BERT dan IndoBERT | 4 | 1.000 |
| 2.4 Dataset SQuAD-id | 5 | 1.000 |
| 2.5 Kuantisasi Model | 6 | 1.400 |
| 2.6 Metrik Evaluasi dan Uji Signifikansi | 3 | 800 |
| 2.7 Penelitian Terdahulu | 3 | 900 |
| 2.8 Celah Penelitian dan Kerangka Berpikir | 3 | 700 |
| **Total** | **31** | **±7.100** (usang — lihat versi ringkas) |

## Rincian per bagian

| Berkas | Cakupan |
|---|---|
| `bab2/01_sub1-3.md` | 2.1, 2.2, 2.3 (11 anak subbab) |
| `bab2/02_sub4-5.md` | 2.4, 2.5 (11 anak subbab) |
| `bab2/03_sub6-8.md` | 2.6, 2.7, 2.8 (9 anak subbab) + checklist akhir |
```

<a id="f-bab2-01-sub1-3-md"></a>

## `bab2/01_sub1-3.md`

Ukuran 6,691 byte &middot; 92 baris &middot; sha256 `3ceab5ddf594` &middot; encoding `utf-8-sig`

```markdown
# Rincian 2.1 – 2.3

## 2.1 Extractive Question Answering — 700 kata

**Kalimat pembuka subbab** (2–3 kalimat): apa itu QA, dua ragam utama (extractive vs generative), dan mengapa penelitian ini memilih extractive.

### 2.1.1 Definisi dan Ruang Lingkup Question Answering · PINDAH · 150 kata
- Definisi QA sebagai tugas NLP: sistem menjawab pertanyaan berdasarkan informasi tersedia.
- Beda satu kalimat: open-domain vs reading comprehension (konteks diberikan).
- **Sitasi:** `jurafsky2025speech` (buku — belum ada PDF, lihat `report.md` A/C7).
- Jangan: sejarah QA, dataset QA selain SQuAD.

### 2.1.2 Formulasi Span Extraction · PINDAH · 200 kata
- Masukan: pasangan (pertanyaan $q$, konteks $c$); keluaran: rentang $[i, j]$ pada token konteks.
- Sifat tugas: dua klasifikasi posisi (awal & akhir) di atas urutan token — inilah yang membuatnya cocok untuk encoder.
- Satu kalimat tentang konsekuensi: kualitas jawaban bisa diukur sebagai kecocokan teks (EM) dan tumpang tindih token (F1) → rujuk `\ref` ke 2.6.1, jangan jelaskan rumusnya di sini.
- **Sitasi:** `devlin2019bert`.
- **Elemen:** 1 persamaan ringkas (pasangan input → span), atau cukup naratif.

### 2.1.3 Pertanyaan Tanpa Jawaban pada SQuAD v2.0 · TULIS ULANG · 150 kata
- SQuAD v2.0 menambahkan pertanyaan yang tidak dapat dijawab dari konteks.
- Konsekuensi untuk model: perlu memutuskan "tidak ada jawaban" (biasanya lewat skor `[CLS]`).
- **Keputusan penelitian ini:** sampel tanpa jawaban tidak diikutkan; yang diuji hanya kemampuan menemukan span. Nyatakan alasannya (fokus penelitian pada kualitas span, bukan pada deteksi ketidaktersediaan jawaban).
- **Sitasi:** `rajpurkar2016squad` (belum ada PDF).
- Ini tempat yang tepat untuk mengaitkan dengan batasan masalah di Bab I.

### 2.1.4 Extractive Question Answering untuk Bahasa Indonesia · BARU · 200 kata
- Peta singkat resource QA Indonesia: SQuAD-id (terjemahan), FacQA di IndoNLU (span extraction dari berita), dataset lain satu kalimat saja.
- Posisi tugasmu: extractive QA berbahasa Indonesia pada dataset terjemahan, dengan fokus pada **efisiensi model**, bukan pada kualitas dataset.
- **Sitasi:** `wilie2020indonlu` (FacQA), `ramaputra2026evaluating` (SQuAD-id), `muis2020sequence`.
- **Jangan:** membahas TyDiQA/IndoQA/AC-IQuAD lebih dari satu kalimat.

---

## 2.2 Arsitektur Transformer — 600 kata

**Kalimat pembuka** (2 kalimat): Transformer memproses token secara paralel dengan attention; BERT dan IndoBERT yang dipakai di penelitian ini berakar pada arsitektur ini.

### 2.2.1 Mekanisme Self-Attention · PINDAH · 200 kata
- Attention sebagai pembobotan kontekstual: setiap token "melihat" token lain.
- **Elemen wajib:** Persamaan scaled dot-product attention (sudah ada di `ch2:33–36`, pertahankan `\label{eq:attention}`).
- Satu kalimat: tanpa rekurensi → bisa diparalelkan.
- **Sitasi:** `vaswani2017attention`.
- Jangan: penurunan rumus, kompleksitas $O(n^2)$ kecuali satu kalimat.

### 2.2.2 Multi-Head Attention dan Positional Encoding · PINDAH · 200 kata
- Multi-head: $h$ attention paralel menangkap pola berbeda; hasil digabung lalu diproyeksikan.
- **Elemen wajib:** Persamaan multi-head (sudah ada, `\label{eq:multihead}`).
- Positional encoding: karena attention tidak punya urutan bawaan.
- **Kalimat penghubung penting:** "Matriks proyeksi $W_i^{Q}, W_i^{K}, W_i^{V}, W^{O}$ beserta lapisan feed-forward adalah bobot yang menjadi objek kuantisasi pada penelitian ini." (sudah ada di `ch2:45` — pertahankan, ini jembatan ke 2.5).
- **Sitasi:** `vaswani2017attention`.

### 2.2.3 Encoder, Decoder, dan Encoder-Decoder · BARU · 200 kata
- Tiga susunan: encoder-only (pemahaman teks), decoder-only (generasi), encoder-decoder (seq2seq).
- BERT/IndoBERT = encoder-only → cocok untuk span extraction (tidak menghasilkan teks baru, hanya menunjuk rentang).
- **Kalimat yang harus ada:** model encoder jauh lebih toleran terhadap kuantisasi 4-bit dibanding decoder — jembatan ke 2.5.6.
- **Sitasi:** `vaswani2017attention`, `wu2023understanding`.
- **Jangan:** membahas GPT/LLM lebih dari satu kalimat.

---

## 2.3 BERT dan IndoBERT — 1.000 kata

**Kalimat pembuka** (2 kalimat): BERT adalah encoder Transformer dua arah yang dipralatih; IndoBERT adalah versi bahasa Indonesianya, dan varian itulah yang dikuantisasi dalam penelitian ini.

### 2.3.1 Pre-training BERT: MLM dan NSP · PINDAH · 250 kata
- Dua objektif: Masked Language Modeling (prediksi token tersembunyi) dan Next Sentence Prediction.
- **Elemen wajib:** Persamaan MLM (sudah ada, `\label{eq:mlm}`).
- Ukuran model: BERT-base ±110 juta parameter, BERT-large ±340 juta (angka ini terverifikasi dari paper).
- **Sitasi:** `devlin2019bert`.
- Jangan: detail WordPiece, learning rate pre-training, korpus BERT.

### 2.3.2 Fine-tuning BERT untuk Extractive Question Answering · PINDAH · 300 kata
- Pertanyaan + konteks digabung jadi satu urutan; dua vektor yang dipelajari ($S$ dan $E$).
- **Elemen wajib:** Persamaan probabilitas posisi awal/akhir (sudah ada, `\label{eq:span}`) + skor kandidat span.
- Objektif: jumlah log-likelihood posisi awal dan akhir yang benar.
- **Kalimat penghubung:** setelah fine-tuning, bobot model inilah yang disimpan dan menjadi objek kuantisasi (jembatan ke Bab III).
- **Sitasi:** `devlin2019bert`.
- Jangan: menyebut hyperparameter fine-tuning di sini — itu milik Bab III.

### 2.3.3 IndoBERT: Korpus Indo4B dan Konfigurasi Model · PINDAH · 250 kata
- IndoBERT disediakan sebagai bagian benchmark IndoNLU; dipralatih pada Indo4B.
- Konfigurasi `indobert-base`: 12 lapisan, hidden 768, 12 head, FFN 3072, kosakata 50.000, panjang maksimum 512 token, ±124,5 juta parameter (angka terverifikasi dari paper IndoNLU).
- **Sitasi:** `wilie2020indonlu`.
- Jangan: menjelaskan cara membangun Indo4B (crawl, dedup) — satu kalimat cukup.

### 2.3.4 Varian IndoBERT dan Model yang Digunakan · BARU · 200 kata
- **Ini menutup celah terbesar di Bab II sekarang:** kalimat "IndoBERT-base **fase 2**" tidak dijelaskan sama sekali.
- Isi: (a) IndoBERT dirilis dalam beberapa fase/varian; (b) bedakan `indobert-base-p1` (Indo4B) dan `indolem/indobert-base-uncased` (korpus lebih kecil tapi lebih bersih); (c) sebutkan bahwa pada dataset ini p1 mencapai F1 63,59 sedangkan IndoLEM 71,58 → kualitas korpus berpengaruh, jadi pilihan varian harus dinyatakan eksplisit.
- **Keputusan yang harus kamu tulis:** model mana yang dipakai dan mengapa (Bab I menyebut `IndoBERT-base fase 2`; pastikan nama checkpoint-nya persis, mis. `indobenchmark/indobert-base-p2`).
- **Sitasi:** `wilie2020indonlu`, `suhendra2026matrik` (perlu ditambah ke `references.bib`).
- **Jangan:** membandingkan lebih dari dua varian.
```

<a id="f-bab2-02-sub4-5-md"></a>

## `bab2/02_sub4-5.md`

Ukuran 9,478 byte &middot; 87 baris &middot; sha256 `aed1c5fb9f7e` &middot; encoding `utf-8-sig`

```markdown
# Rincian 2.4 – 2.5

## 2.4 Dataset SQuAD-id — 1.000 kata

**Kalimat pembuka subbab** (2 kalimat): dataset yang dipakai adalah SQuAD versi Indonesia; bagian ini menjelaskan asal-usulnya, bagaimana posisi jawaban diperbaiki, dan pembagian data yang dipakai.

### 2.4.1 SQuAD dan SQuAD v2.0 · PINDAH · 150 kata
- SQuAD: benchmark reading comprehension; jawaban berupa rentang teks pada paragraf Wikipedia; 100.000+ pertanyaan.
- SQuAD v2.0 menambahkan pertanyaan tanpa jawaban.
- **Angka yang aman (terverifikasi dari dataset card):** train 130.319, dev 11.873.
- **Sitasi:** `rajpurkar2016squad`.
- Jangan: menjelaskan proses crowd-sourcing anotasi.

### 2.4.2 Konstruksi SQuAD-id: Terjemahan Mesin dan Perbaikan Span · BARU · 350 kata · 4 paragraf
Ini anak subbab yang menampung kajian Muis dkk. (2020) — sekarang belum ada tempatnya di Bab II.

- **Paragraf 1 — terjemahan.** SQuAD v2.0 diterjemahkan ke bahasa Indonesia dengan Google Translate API v2: 536 artikel, 161.550 pasangan pertanyaan–jawaban. Tidak ada koreksi terjemahan; hasil dipakai apa adanya.
- **Paragraf 2 — dua cacat yang muncul.** (a) posisi jawaban (`answer_start`) masih merujuk teks Inggris; (b) konteks dan jawaban diterjemahkan **terpisah**, sehingga bentuk kata bisa berbeda — contoh di paper: "Dangerously in Love" menjadi "Berbahaya dalam Cinta" pada teks jawaban. Akibatnya exact match gagal menemukan jawaban di konteks.
- **Paragraf 3 — perbaikannya.** Fuzzy string matching dengan **Levenshtein edit distance**, ambang kemiripan ±80%. Keluaran: `indonesian_answer_start` (posisi baru, atau −1 bila gagal) dan `indonesian_answer` (teks baru, atau kosong). Pasangan dengan −1 dibuang.
- **Paragraf 4 — hasil akhir + konsekuensi untuk QA.** Setelah 10 langkah praproses (pembuangan outlier, pemotongan kalimat, dll.) tersisa 114.604 pasangan: 102.657 train / 11.407 validation / 10.536 test. **Catatan penting:** pipeline itu dioptimalkan untuk *question generation* (satu kalimat per pertanyaan), bukan untuk extractive QA (paragraf utuh), sehingga pembersihan untuk tugas QA perlu diulang — inilah yang dilakukan penelitian berikutnya pada dataset yang sama (85.812 → 85.776 train, 8.170 → 7.587 validation).
- **Sitasi:** `muis2020sequence`, `suhendra2026matrik`.
- **Jangan:** menuliskan kesepuluh langkah Muis satu per satu — cukup 4 paragraf di atas; rincian teknis masuk Bab III kalau dipakai.

### 2.4.3 Versi Dataset yang Digunakan dan Penandaan Kualitas · TULIS ULANG · 250 kata
- Versi yang dipakai adalah rilis yang sudah ditata ulang dan diberi **penanda kualitas**: pertanyaan tanpa jawaban, jawaban yang tidak ditemukan pada konteks, data tidak valid, dan saran pengecualian.
- **Tambahan yang wajib:** jelaskan empat field yang benar-benar ada di berkas: `answer_start_original`, `answer_start_recomputed`, `answer_start_recompute_note`, `is_answer_missing`, `is_data_invalid`. Artinya dataset **sudah pernah diperbaiki posisinya** — sebutkan bahwa penelitian ini memverifikasi ulang, bukan memperbaiki dari nol.
- **Sitasi:** tambahkan **SEACrowd** (`lovenia2024seacrowd`) — versi dengan penanda seperti ini berasal dari sana, bukan dari paper Muis.
- Jangan: mengklaim "kartu dataset tidak mencantumkan lisensi" tanpa mengecek ulang.

### 2.4.4 Pembagian Data · TULIS ULANG · 200 kata
- Fakta yang harus ditulis apa adanya: dataset menyediakan **train dan dev** (bukan train/test resmi). Split yang disebut "uji" pada penelitian ini **berasal dari split dev SQuAD v2.0** (11.873 baris).
- Penelitian ini membentuk data validasi dari sebagian data latih (bukan pembagian resmi dataset) → nyatakan sebagai keputusan penelitian.
- **Tabel split (wajib):** jumlah baris sebelum filter, jumlah setelah filter (hanya berjawaban + data valid), dan jumlah yang dibuang beserta alasannya. Angkanya dari EDA — jangan dikira-kira.
- Jangan: menyebut "test set" tanpa keterangan asalnya.

### 2.4.5 Karakteristik dan Keterbatasan Dataset Terjemahan · PINDAH + tambah · 250 kata
- Keterbatasan 1: hasil terjemahan mesin → kelancaran kalimat dan ketepatan istilah bisa menyimpang; kualitas jawaban acuan bergantung pada proses terjemahan.
- Keterbatasan 2: hasil pada satu dataset terjemahan tidak langsung bisa digeneralisasi ke domain/sumber teks lain.
- **Tambahan berbasis data:** sebutkan hasil EDA — persentase span valid setelah verifikasi, median panjang konteks dalam token, dan berapa persen konteks melebihi 512 token (angka dari notebook).
- **Sitasi:** `muis2020sequence`, `suhendra2026matrik`.

---

## 2.5 Kuantisasi Model — 1.400 kata

**Kalimat pembuka subbab** (3 kalimat): kuantisasi menurunkan presisi numerik bobot/aktivasi; **kuantisasi bukan satu keputusan tunggal, melainkan tiga sumbu independen** — cakupan (apa yang dikuantisasi), waktu (kapan diterapkan), dan granularitas (seberapa halus parameter kuantisasi dihitung). Penelitian ini mematok cakupan = weight-only dan waktu = post-training, lalu memvariasikan granularitas.

### 2.5.1 Konsep dan Tujuan Kuantisasi · PINDAH + tambah · 200 kata
- Definisi: pemetaan nilai riil kontinu ke himpunan nilai diskret berhingga; nilai di luar rentang dipotong (clipping).
- Tujuan: mengurangi ukuran penyimpanan dan biaya komputasi.
- **Kalimat tiga sumbu** (lihat pembuka) — ini yang membuat posisi penelitianmu jelas dalam satu paragraf.
- **Sitasi:** `gholami2021survey`, `abdurrahman2023implementing`.

### 2.5.2 Kuantisasi Simetris dan Asimetris · PINDAH + alasan · 250 kata
- Asimetris: rentang riil dipetakan ke seluruh rentang integer, memakai scale + zero-point.
- Simetris: rentang dibuat simetris terhadap nol, zero-point = 0, hanya perlu scale.
- **Elemen wajib:** Persamaan kuantisasi & skala (sudah ada, `\label{eq:kuantisasi}`, `\label{eq:skala}`) + dekuantisasi $\hat{x} = x_q \cdot s$.
- **Alasan memilih simetris (tambahan baru):** distribusi bobot model terlatih umumnya memusat di sekitar nol, sehingga skema simetris memadai dan lebih murah; sedangkan aktivasi tidak simetris (mis. setelah ReLU). Karena itu simetris wajar dipasangkan dengan weight-only.
- **Sitasi:** `gholami2021survey`.

### 2.5.3 Cakupan: Weight-Only dan Weight-Activation · PINDAH · 250 kata
- Notasi W$x$A$y$: bobot $x$-bit, aktivasi $y$-bit.
- Bukti pembeda paling kuat: pada BERT-base, GLUE rata-rata **83,06 (FP32) · 71,03 (W8A8) · 70,25 (W32A8) · 83,23 (W8A32)** — penurunan besar muncul saat **aktivasi** dikuantisasi, sedangkan kuantisasi bobot saja hampir setara FP32 (angka terverifikasi dari Tabel 1 paper).
- Kesimpulan untuk penelitian ini: weight-only dipilih karena galat kuantisasi hanya berasal dari pembulatan bobot.
- **Sitasi:** `bondarenko2021understanding`.

### 2.5.4 Waktu: Post-Training Quantization dan QAT · PINDAH + tabel · 250 kata
- PTQ: diterapkan setelah model dilatih; tanpa pelatihan ulang; hanya butuh data kalibrasi.
- QAT: simulasi kuantisasi saat pelatihan; butuh retraining; umumnya lebih akurat pada bit rendah.
- **Tabel wajib (1):** QAT vs PTQ — aspek: waktu penerapan, kebutuhan retraining, biaya komputasi, potensi akurasi pada bit rendah, contoh penelitian. Baris "contoh" diisi: QAT = Q8BERT/TernaryBERT; PTQ = Mokey/Abdurrahman.
- **Sitasi:** `gholami2021survey`, `zafrir2019q8bert`, `abdurrahman2023implementing`.

### 2.5.5 Granularitas: Per-Tensor, Per-Channel, dan Per-Group · PINDAH + tabel · 350 kata
- Definisi: cakupan bobot yang berbagi satu parameter kuantisasi.
- **Elemen wajib:** Persamaan skala per-tensor (`eq:skala-coarse`) dan per-channel (`eq:skala-fine`) — sudah ada; pertahankan.
- **Tabel wajib (2): spektrum granularitas** — baris: per-tensor, per-channel, per-group; kolom: jumlah parameter scale, kepekaan terhadap variasi antar-channel, kepekaan variasi dalam satu channel, overhead metadata, potensi akurasi pada bit rendah. Isi per-tensor/per-channel dari literatur; per-group tetap di tabel sebagai pembanding meski tidak diuji.
- **Definisi operasional penelitian ini (wajib eksplisit):** *coarse-grained* = per-tensor; *fine-grained* = per-channel (satu skala per output channel).
- Satu paragraf trade-off: cakupan lebih kecil → representasi lebih akurat, tetapi jumlah faktor skala bertambah dan ikut tersimpan (mempengaruhi ukuran berkas).
- **Sitasi:** `gholami2021survey`, `bondarenko2021understanding`, `wu2023understanding` — **catatan: jangan pakai `wu2023understanding` untuk klaim granularitas** (paper itu tidak membahasnya); pakai `gholami2021survey`.

### 2.5.6 Dampak Kuantisasi pada Model Transformer · BARU · 300 kata
- Outlier terstruktur: aktivasi Transformer punya nilai ekstrem pada beberapa dimensi (terutama di jalur residual dan token khusus), sehingga rentang kuantisasi mudah melar.
- Perbedaan arsitektur: kuantisasi INT4 pada **encoder** nyaris tanpa degradasi, sedangkan pada **decoder** turun signifikan — karena itu penelitian pada encoder (seperti ini) punya ruang lebih aman.
- Presisi 4-bit bukan tanpa risiko: penurunan bisa muncul justru setelah model konvergen, dan tidak selalu terlihat dari perplexity.
- Bukti pada BERT: kuantisasi bobot saja (W8A32) hampir setara FP32, sedangkan joint quantization turun; kuantisasi ultra-rendah pada BERT (8-bit, ternary) memerlukan teknik tambahan (QAT/distilasi).
- **Sitasi:** `bondarenko2021understanding`, `wu2023understanding`, `armstrong2026flat`, `zafrir2019q8bert`, `zhang2020ternarybert`.
- Jangan: membahas LLM decoder/ternary secara panjang — cukup satu-dua kalimat per poin.
```

<a id="f-bab2-03-sub6-8-md"></a>

## `bab2/03_sub6-8.md`

Ukuran 8,108 byte &middot; 103 baris &middot; sha256 `4959d048300c` &middot; encoding `utf-8-sig`

```markdown
# Rincian 2.6 – 2.8 + Checklist

## 2.6 Metrik Evaluasi dan Pengujian Signifikansi — 800 kata

**Kalimat pembuka** (2 kalimat): evaluasi mencakup kualitas prediksi (EM, F1) dan efisiensi penyimpanan (ukuran model); selisih yang teramati diuji signifikansinya.

### 2.6.1 Exact Match dan F1 · PINDAH · 300 kata
- Definisi EM: proporsi prediksi yang identik dengan jawaban acuan setelah normalisasi (huruf kecil, hapus tanda baca).
- Definisi F1: rata-rata harmonik precision/recall pada tingkat token, diambil nilai terbaik terhadap jawaban acuan.
- **Elemen wajib:** Persamaan EM (`eq:em`) dan F1 (`eq:f1`) — sudah ada, pertahankan.
- Satu paragraf interpretasi: EM ketat terhadap batas span (satu kata lebih/salah → 0), F1 lebih longgar → perbedaan pola EM vs F1 bermakna (mengarah ke *boundary mismatch*, lihat analisis error penelitian terdahulu).
- **Sitasi:** `rajpurkar2016squad`.
- Jangan: menjelaskan metrik klasifikasi (accuracy/precision/recall per kelas) — tidak dipakai.

### 2.6.2 Ukuran Model: Teoretis dan Aktual · PINDAH + tambah · 200 kata
- Ukuran teoretis sebanding jumlah bit per parameter: 4-bit vs FP32 = 12,5%; vs FP16 = 25%.
- **Tambahan wajib:** ukuran berkas aktual bisa berbeda karena (a) faktor skala ikut tersimpan, (b) sebagian parameter tidak dikuantisasi (embedding/klasifier), dan (c) bobot INT4 umumnya disimpan dalam wadah int8 → praktis ±25%, bukan 12,5%.
- Keputusan pelaporan: **dua angka berdampingan** (teoretis dan aktual).
- Jangan: mengklaim penghematan 4x tanpa menyebut baseline-nya FP32 atau FP16.

### 2.6.3 Uji Signifikansi Statistik · PINDAH + opsi · 300 kata
- Alasan: EM/F1 dihitung pada sampel uji terbatas → selisih bisa berasal dari variasi acak.
- **Paired bootstrap:** resampling dengan pengembalian pada sampel yang sama, B = 10.000; selisih rata-rata per sampel; interval kepercayaan persentil 95%.
- **Elemen wajib:** Persamaan bootstrap (`eq:bootstrap`) — sudah ada.
- **Koreksi Holm** untuk tiga perbandingan berpasangan per metrik (m = 3): urutkan nilai p, tolak hipotesis ke-$k$ bila $p_{(k)} \le \alpha/(m-k+1)$.
- **Opsi tambahan (sebutkan, tidak harus dipakai):** McNemar untuk EM karena EM biner per sampel.
- **Preseden yang bisa dikutip:** penelitian pada dataset yang sama memakai paired bootstrap 10.000 iterasi dengan CI 95% (F1 selisih 7,10 poin, CI [6,32; 7,89]).
- **Sitasi:** `dror2018hitchhiker`, `bergkirkpatrick2012`, `efron1993`, `holm1979`, `suhendra2026matrik`.

---

## 2.7 Penelitian Terdahulu — 900 kata

### 2.7.1 Kriteria Pemilihan Penelitian · BARU · 150 kata
- Tiga syarat: (i) menerapkan post-training quantization tanpa pelatihan ulang; (ii) dievaluasi pada encoder Transformer atau tugas question answering; (iii) terbit dalam lima tahun terakhir dan telah disitasi minimal lima penelitian lain.
- Satu kalimat: penelitian bertanda † terbit 2023–2026 sehingga belum mengumpulkan sitasi, dipertahankan karena satu-satunya studi pada konteks bahasa Indonesia.
- Jangan: menjelaskan proses pencarian basis data secara panjang — itu Bab III kalau perlu.

### 2.7.2 Ringkasan Penelitian Terdahulu · TULIS ULANG · 450 kata (tabel)
- **Tabel wajib (3):** kolom `No · Referensi · Model · Dataset dan Tugas · Teknik · Metrik · Hasil Utama`.
- Isi 8 baris (rincian angka di `PROPOSAL_PENELITIAN_TERDAHULU.md`):
  1. Mokey (2022) — weight-only 4-bit, BERT-Large, SQuAD; F1 93,15 → 93,17 (weight-only) / 92,22 (weight+activation).
  2. PTQ4PLM/MREM (2022) — PTQ PLM, GLUE + SQuAD.
  3. OliVe (2023) — W4A4, BERT, SQuAD v1.1/v2.0; penurunan <1%.
  4. Outlier Suppression (2022) — PTQ 6-bit, BERT/RoBERTa, SQuAD.
  5. I-BERT (2021) — integer-only INT8, BERT, GLUE.
  6. Bondarenko (2021) — PTQ + per-embedding-group, BERT, GLUE; 83,06 / 71,03 / 70,25 / 83,23.
  7. Abdurrahman (2023) † — IndoBERT, 7 tugas IndoNLU (termasuk FacQA); PTQ 4-bit F1 72,78 vs 77,35.
  8. Ramaputra & Joddy (2026) † — SQuAD-id, LLM decoder, W4A16 AWQ/GPTQ; EM 48,61 → 44,73.
- **Aturan isi tabel:** angka yang belum diverifikasi ke PDF diberi tanda † atau dikosongkan — jangan diisi perkiraan.
- Jangan: tabel lebih dari 8 baris; menggabungkan kolom Teknik dan Metrik.

### 2.7.3 Pembahasan per Sumbu Kuantisasi · BARU · 300 kata
- Tiga paragraf pendek, satu per sumbu:
  - **Cakupan:** sebagian besar studi memilih weight-only karena aktivasi adalah sumber utama penurunan (bukti: W8A32 ≈ FP32 vs W8A8 turun 12 poin).
  - **Waktu:** PTQ mendominasi pada encoder karena tanpa retraining; QAT dipakai ketika bit sangat rendah.
  - **Granularitas:** per-channel umum dianggap standar; perbandingan per-tensor vs per-channel pada tugas QA belum dilaporkan.
- Kalimat penutup: di sinilah posisi penelitian ini (weight-only + PTQ + variasi granularitas pada extractive QA Indonesia).
- Jangan: mengulang isi tabel kalimat per kalimat.

---

## 2.8 Celah Penelitian dan Kerangka Berpikir — 700 kata

### 2.8.1 Celah Penelitian · PINDAH + perbaiki sandaran · 300 kata
- **Celah 1 — konteks:** weight-only PTQ 4-bit pada IndoBERT sudah dilaporkan untuk tujuh tugas IndoNLU dan analisis sentimen, sedangkan pada extractive QA Indonesia baru dilaporkan untuk LLM decoder-only. Belum ditemukan evaluasi pada IndoBERT untuk SQuAD-id.
- **Celah 2 — granularitas:** perbandingan granularitas pada weight-only PTQ encoder dilaporkan pada tugas retrieval embedding, belum pada extractive QA. **Perbaiki sandarannya:** jangan bertumpu pada Han (2026) yang PDF-nya belum kamu pegang; pakai Bondarenko (2021) sebagai bukti bahwa granularitas mempengaruhi hasil pada encoder, lalu Han hanya sebagai pelengkap.
- **Celah 3 — uji signifikansi:** di antara penelitian yang melaporkan EM/F1, tidak dilaporkan uji signifikansi terhadap perbedaan kinerja; yang melaporkan uji (bootstrap + koreksi) melakukannya pada metrik retrieval, bukan QA.
- Kalimat kunci yang harus ada: **"Dalam penelusuran penulis, belum ditemukan …"** — dan siapkan bukti penelusuran (basis data, kata kunci, tanggal) untuk dijawab saat sidang.
- Jangan: menyebut "belum ada penelitian" tanpa kata "dalam penelusuran penulis".

### 2.8.2 Kerangka Berpikir · BARU · 250 kata + 1 gambar
- **Gambar wajib (1):** 4 kotak berurutan — (1) Masalah: IndoBERT ±124,5 juta parameter, kebutuhan penyimpanan besar pada perangkat terbatas; (2) Solusi: weight-only PTQ 4-bit dengan dua konfigurasi granularitas (per-tensor/coarse, per-channel/fine); (3) Eksperimen: fine-tuning FP32 → kuantisasi → evaluasi pada SQuAD-id dengan EM/F1 + ukuran model; (4) Hasil: perbandingan tiga model + uji signifikansi + karakterisasi trade-off.
- Satu paragraf penjelas yang menelusuri panah antar kotak (bukan mengulang isi kotak).
- Jangan: menambah kotak ke-5 berisi "kesimpulan" — cukup 4 tahap.

### 2.8.3 Posisi Penelitian Ini · PINDAH · 150 kata
- Satu paragraf: penelitian ini mengisi ketiga celah dengan menguji weight-only PTQ 4-bit pada IndoBERT untuk SQuAD-id, membandingkan coarse vs fine, dan menguji signifikansi perbedaan.
- Kalimat penutup subbab yang mengantar ke Bab III.

---

## Checklist akhir Bab II

**Struktur**
- [ ] 8 subbab, 31 anak subbab, tanpa `\subsubsection`
- [ ] Semua `\label`/`\ref` tabel & persamaan masih valid setelah penomoran berubah
- [ ] Tabel berjumlah ≤5, gambar ≤3

**Isi**
- [ ] Tidak ada klaim tanpa sitasi atau tanpa angka yang bisa dibuka
- [ ] `wu2023understanding` tidak dipakai untuk granularitas
- [ ] 3 klaim yang tadinya lebih luas sudah dipersempit
- [ ] "IndoBERT-base fase 2" sudah dijelaskan di 2.3.4
- [ ] "Test set" sudah disebut sebagai turunan split dev
- [ ] Angka 12,5% disertai penjelasan ukuran aktual
- [ ] Setiap baris tabel penelitian terdahulu punya tahun + angka yang jelas sumbernya

**Bahasa**
- [ ] Satu istilah untuk satu konsep (pilih "granularitas", jangan berganti dengan "granularity" di tengah teks Indonesia)
- [ ] Nama model dan checkpoint ditulis persis (`indobenchmark/indobert-base-p2`)
- [ ] Tidak ada paragraf lebih dari 150 kata
- [ ] Tidak ada subbab yang isinya tumpang tindih dengan subbab lain (cek 2.1.2 vs 2.6.1, 2.5.1 vs 2.5.3)
```

<a id="f-bab2-04-struktur-ringkas-md"></a>

## `bab2/04_STRUKTUR_RINGKAS.md`

Ukuran 7,825 byte &middot; 125 baris &middot; sha256 `3f9bbb4ed502` &middot; encoding `utf-8-sig`

````markdown
# Struktur Bab II — Versi Ringkas (menggantikan versi 31 anak subbab)

## 1. Kalibrasi dari dua skripsi pembanding

Saya hitung isi Bab II kedua skripsi yang kamu tunjuk:

| Skripsi | Subbab | Anak subbab | Panjang Bab II |
|---|---:|---:|---:|
| Anissa — Klasifikasi BERT Multi-Label (SDGs) | 8 | 3 | **±3.700 kata** |
| Qinthara — Klasifikasi Emosi (MNB/SVM/RF) | 6 | 10 | **±4.760 kata** |

Rencana saya sebelumnya: 8 subbab, **31 anak subbab, ±7.100 kata** — dua kali lipat pembanding. Kamu benar, itu berlebihan.

**Target baru: 6 subbab, 12 anak subbab, ±4.600 kata.** Masih sedikit di atas Anissa/Qinthara karena skripsimu punya tiga komponen yang tidak mereka punya: konstruksi dataset terjemahan, granularitas kuantisasi, dan uji signifikansi.

## 2. Struktur baru

### 2.1 Extractive Question Answering — 500 kata
| Anak subbab | Target | Isi |
|---|---:|---|
| 2.1.1 Definisi dan Formulasi Span Extraction | 250 | Definisi QA; beda extractive vs generative (1 kalimat); masukan (pertanyaan, konteks) → keluaran rentang token; rujuk metrik ke 2.5.1 |
| 2.1.2 Pertanyaan Tanpa Jawaban dan QA Bahasa Indonesia | 250 | SQuAD v2.0 punya pertanyaan tak terjawab → penelitian ini membuangnya dan alasannya; peta singkat QA Indonesia (SQuAD-id, FacQA) |

### 2.2 Transformer, BERT, dan IndoBERT — 900 kata
| Anak subbab | Target | Isi |
|---|---:|---|
| 2.2.1 Self-Attention dan Multi-Head Attention | 300 | Persamaan attention + multi-head (yang sudah ada); positional encoding 1 kalimat; **tutup dengan**: model encoder lebih toleran kuantisasi daripada decoder (jembatan ke 2.4.3) |
| 2.2.2 Pre-training dan Fine-tuning BERT untuk QA | 350 | MLM + NSP (persamaan MLM); ukuran BERT-base 110 juta; fine-tuning dengan vektor S/E (persamaan span); **kalimat jembatan**: bobot hasil fine-tuning inilah yang dikuantisasi |
| 2.2.3 IndoBERT dan Varian yang Digunakan | 250 | Indo4B; konfigurasi base (12 lapisan, 768, 12 head, ±124,5 juta); **sebut checkpoint persis** dan alasan memilihnya; satu kalimat perbandingan p1 vs IndoLEM (F1 63,59 vs 71,58) |

### 2.3 Dataset SQuAD-id — 700 kata, **tanpa anak subbab** (3–4 paragraf)
- **Paragraf 1:** SQuAD & v2.0 (100.000+ pertanyaan; train 130.319, dev 11.873) → diterjemahkan dengan Google Translate API v2: 536 artikel, 161.550 pasangan.
- **Paragraf 2:** dua cacat terjemahan (posisi jawaban masih teks Inggris; konteks & jawaban diterjemahkan terpisah sehingga bentuk kata beda) → diperbaiki dengan fuzzy matching **Levenshtein** ±80% → `indonesian_answer_start` (−1 bila gagal) → yang gagal dibuang; sisa 114.604.
- **Paragraf 3:** versi yang dipakai + penanda kualitas (`answer_start_recomputed`, `is_answer_missing`, `is_data_invalid`) — jadi dataset sudah diperbaiki, penelitian ini memverifikasi ulang; split yang dipakai: **dev sebagai data uji** (11.873), validasi dibentuk dari sebagian train.
- **Paragraf 4:** keterbatasan (terjemahan mesin, tidak bisa digeneralisasi) + 1 kalimat hasil EDA (span valid %, panjang konteks).
- **Tabel:** jumlah baris per split sebelum/sesudah filter.

### 2.4 Kuantisasi Weight-Only Post-Training — 1.000 kata
| Anak subbab | Target | Isi |
|---|---:|---|
| 2.4.1 Konsep, Skema Simetris, dan Cakupan Weight-Only | 400 | Definisi kuantisasi + clipping; persamaan kuantisasi/skala/dekuantisasi (yang sudah ada); alasan simetris (bobot zero-centered); notasi W$x$A$y$ + bukti angka Bondarenko (83,06 / 71,03 / 70,25 / 83,23) → kenapa weight-only |
| 2.4.2 Post-Training Quantization dan QAT | 250 | Definisi keduanya; biaya retraining; **tabel QAT vs PTQ** (5 aspek) |
| 2.4.3 Granularitas dan Dampaknya pada Transformer | 350 | Persamaan skala per-tensor & per-channel (yang sudah ada); definisi operasional coarse=per-tensor, fine=per-channel; **tabel spektrum** per-tensor/per-channel/per-group; dampak: outlier pada residual, encoder vs decoder, penurunan bisa muncul setelah konvergen |

### 2.5 Metrik Evaluasi dan Uji Signifikansi — 600 kata
| Anak subbab | Target | Isi |
|---|---:|---|
| 2.5.1 Exact Match, F1, dan Ukuran Model | 300 | Persamaan EM & F1 (yang sudah ada); interpretasi EM ketat vs F1 longgar; ukuran model teoretis (12,5%) vs aktual (≈25% karena wadah int8 + faktor skala) |
| 2.5.2 Paired Bootstrap dan Koreksi Holm | 300 | Alasan uji signifikansi; persamaan bootstrap (yang sudah ada), B = 10.000, CI persentil 95%; Holm m = 3 per metrik; satu kalimat: McNemar sebagai alternatif untuk EM |

### 2.6 Penelitian Terdahulu dan Celah Penelitian — 900 kata
| Anak subbab | Target | Isi |
|---|---:|---|
| 2.6.1 Ringkasan Penelitian Terdahulu | 450 | 2 kalimat kriteria pemilihan (3 syarat) + **tabel 8 baris** + 1 paragraf penutup: di sumbu mana penelitianmu berada (cakupan/waktu/granularitas) |
| 2.6.2 Celah Penelitian dan Kerangka Berpikir | 450 | 3 celah (konteks, granularitas, signifikansi) dengan sandaran yang sudah diperbaiki + **gambar kerangka berpikir 4 tahap** + 1 paragraf penjelas |

## 3. Peta penggabungan (dari 31 → 12)

| Anak subbab lama | Menjadi |
|---|---|
| 2.1.1 + 2.1.2 | 2.1.1 |
| 2.1.3 + 2.1.4 | 2.1.2 |
| 2.2.1 + 2.2.2 + 2.2.3 | 2.2.1 (encoder/decoder jadi 1 kalimat penutup) |
| 2.3.1 + 2.3.2 | 2.2.2 |
| 2.3.3 + 2.3.4 | 2.2.3 |
| 2.4.1 – 2.4.5 | **2.3 tanpa anak subbab** (4 paragraf) |
| 2.5.1 + 2.5.2 + 2.5.3 | 2.4.1 |
| 2.5.4 | 2.4.2 |
| 2.5.5 + 2.5.6 | 2.4.3 |
| 2.6.1 + 2.6.2 | 2.5.1 |
| 2.6.3 | 2.5.2 |
| 2.7.1 | dilebur: 2 kalimat di pembuka 2.6.1 |
| 2.7.2 | 2.6.1 (tabel) |
| 2.7.3 | dilebur: 1 paragraf penutup 2.6.1 |
| 2.8.1 + 2.8.2 + 2.8.3 | 2.6.2 |

**Yang hilang dan kenapa tidak masalah:**
- Subbab terpisah "Encoder, Decoder, Encoder-Decoder" → cukup 1 kalimat di 2.2.1; yang dibutuhkan hanya argumen bahwa encoder lebih toleran kuantisasi.
- Subbab "Kriteria Pemilihan Penelitian" → 2 kalimat di pembuka 2.6.1 sudah cukup; kriteria rinci lebih tepat di Bab III.
- Subbab "Pembahasan per Sumbu" → jadi paragraf penutup tabel, bukan subbab.
- Semua detail teknis (langkah praproses Muis, hyperparameter fine-tuning, offset mapping) → pindah ke Bab III, bukan Bab II.

## 4. Kerangka LaTeX

```latex
\chapter{Kajian Pustaka}

\section{Extractive Question Answering}
\subsection{Definisi dan Formulasi Span Extraction}
\subsection{Pertanyaan Tanpa Jawaban dan QA Bahasa Indonesia}

\section{Transformer, BERT, dan IndoBERT}
\subsection{Self-Attention dan Multi-Head Attention}
\subsection{Pre-training dan Fine-tuning BERT untuk QA}
\subsection{IndoBERT dan Varian yang Digunakan}

\section{Dataset SQuAD-id}

\section{Kuantisasi Weight-Only Post-Training}
\subsection{Konsep, Skema Simetris, dan Cakupan Weight-Only}
\subsection{Post-Training Quantization dan QAT}
\subsection{Granularitas dan Dampaknya pada Transformer}

\section{Metrik Evaluasi dan Uji Signifikansi}
\subsection{Exact Match, F1, dan Ukuran Model}
\subsection{Paired Bootstrap dan Koreksi Holm}

\section{Penelitian Terdahulu dan Celah Penelitian}
\subsection{Ringkasan Penelitian Terdahulu}
\subsection{Celah Penelitian dan Kerangka Berpikir}
```

Catatan: 2.3 sengaja tanpa `\subsection` — struktur tidak harus seragam, dan dataset cukup dinarasikan. Ini juga yang dilakukan Anissa (Bab II-nya mayoritas subbab datar).

## 5. Anggaran elemen

| Elemen | Jumlah | Di mana |
|---|---:|---|
| Tabel | 4 | split data (2.3), QAT vs PTQ (2.4.2), spektrum granularitas (2.4.3), penelitian terdahulu (2.6.1) |
| Gambar | 1 | kerangka berpikir (2.6.2) |
| Persamaan | 6 | attention, multi-head, MLM, span S/E, kuantisasi+skala, bootstrap (semua sudah ada) |

## 6. Dampak ke daftar urgensi

Tidak berubah, tapi lebih ringan: U6 (delapan anak subbab baru) sekarang jadi **tiga tulisan baru** — 2.1.2 (bagian Indonesia), 2.3 (paragraf konstruksi dataset), dan 2.6.2 (kerangka berpikir). Perkiraan total turun dari ±30 jam ke **±22 jam**.
````

<a id="f-bab2-05-struktur-v3-md"></a>

## `bab2/05_STRUKTUR_v3.md`

Ukuran 8,516 byte &middot; 109 baris &middot; sha256 `3bdd3622ada5` &middot; encoding `utf-8-sig`

````markdown
# Struktur Bab II — v3 (versi kamu, dirapikan)

Menggantikan `04_STRUKTUR_RINGKAS.md`. Dasarmu benar: menambah **2.4 Kompresi Model** justru memperkuat bab, karena pembaca jadi tahu kenapa kuantisasi yang dipilih, bukan pruning atau distilasi.

Tiga hal yang saya rapikan: penomoran, tempat mekanisme attention, dan status bit-packing.

## 1. Struktur final — 7 subbab, 13 anak subbab, ±4.850 kata

### 2.1 Extractive Question Answering — 500 kata, tanpa anak subbab
Satu narasi 3 paragraf: definisi QA → formulasi span extraction (masukan pertanyaan+konteks, keluaran rentang token) → pertanyaan tanpa jawaban di SQuAD v2.0 dan keputusan penelitian ini membuangnya, ditutup satu kalimat peta QA bahasa Indonesia (SQuAD-id, FacQA).

### 2.2 BERT dan IndoBERT — 900 kata
| Anak subbab | Kata | Isi |
|---|---:|---|
| 2.2.1 BERT | 400 | Persamaan scaled dot-product attention + multi-head (sudah ada); positional encoding 1 kalimat; tutup dengan: model encoder lebih toleran kuantisasi daripada decoder |
| 2.2.2 IndoBERT | 500 | MLM + NSP (persamaan MLM); BERT-base 110 juta; fine-tuning dengan vektor S/E (persamaan span); Indo4B dan konfigurasi IndoBERT-base (±124,5 juta); **sebut checkpoint persis** dan alasan memilihnya + 1 kalimat p1 vs IndoLEM (F1 63,59 vs 71,58) |

### 2.3 Dataset SQuAD-id — 700 kata, tanpa anak subbab (4 paragraf)
1. SQuAD & v2.0 (train 130.319, dev 11.873) → terjemahan Google Translate API v2: 536 artikel, 161.550 pasangan.
2. Dua cacat terjemahan (posisi jawaban; konteks & jawaban diterjemahkan terpisah) → perbaikan fuzzy matching **Levenshtein** ±80% → `indonesian_answer_start` (−1 dibuang) → sisa 114.604.
3. Versi yang dipakai + penanda kualitas (`answer_start_recomputed`, `is_answer_missing`, `is_data_invalid`); split: dev sebagai data uji, validasi dibentuk dari train.
4. Keterbatasan + 1 kalimat hasil EDA (span valid %, panjang konteks). **Tabel:** jumlah baris per split sebelum/sesudah filter.

### 2.4 Kompresi Model — 300 kata, tanpa anak subbab
- Tiga keluarga: **pruning** (menghapus bobot/koneksi), **knowledge distillation** (model kecil dibimbing model besar), **quantization** (menurunkan presisi numerik).
- Satu paragraf per keluarga, masing-masing 2–3 kalimat: cara kerja + satu keterbatasan.
- **Paragraf keputusan (wajib, ini inti subbab):** kenapa kuantisasi — tidak mengubah arsitektur maupun jumlah parameter, bisa diterapkan **setelah** pelatihan (tanpa retraining), dan galat yang muncul bisa dikendalikan lewat pilihan cakupan dan granularitas. Ini juga jawaban untuk pertanyaan penguji "kenapa bukan pruning/distilasi?".
- **Opsional:** 1 tabel kecil 3 baris (keluarga · cara kerja · biaya).
- Jangan: angka bit, rumus kuantisasi, atau granularitas — semua itu milik 2.5.

### 2.5 Kuantisasi — 1.350 kata (7 anak subbab, ±190 kata masing-masing)
| Anak subbab | Kata | Isi wajib |
|---|---:|---|
| 2.5.1 Representasi Numerik: FP16, INT8, dan INT4 | 180 | Apa yang dimaksud presisi; rentang & ukuran tiap format; **nyatakan baseline penelitian ini = FP32** dan konsekuensi rasio kompresi (4-bit vs FP32 = 8x teoretis, vs FP16 = 4x) |
| 2.5.2 Konsep Dasar Quantization | 220 | Pemetaan nilai riil → integer; clipping; persamaan kuantisasi & dekuantisasi; galat kuantisasi = selisih nilai asli dan hasil dekuantisasi |
| 2.5.3 Skema Kuantisasi Simetris dan Asimetris | 220 | Asimetris (scale + zero-point) vs simetris (zero-point = 0); persamaan skala; **alasan memilih simetris**: bobot terlatih memusat di nol, aktivasi tidak |
| 2.5.4 Cakupan: Weight-Only vs Joint Weight-Activation | 200 | Notasi W$x$A$y$; bukti Bondarenko 83,06 / 71,03 / 70,25 / 83,23 → penurunan besar muncul saat aktivasi dikuantisasi; karena itu weight-only |
| 2.5.5 Waktu: PTQ vs QAT | 220 | Definisi keduanya; biaya retraining; **tabel QAT vs PTQ** (5 aspek). Tutup dengan 2–3 kalimat: temuan PTQ pada encoder (toleran INT4; penurunan bisa muncul setelah konvergen) |
| 2.5.6 Granularitas Quantization | 220 | Persamaan skala per-tensor & per-channel; definisi operasional **coarse = per-tensor, fine = per-channel**; **tabel spektrum** per-tensor/per-channel/per-group; trade-off akurasi vs overhead metadata |
| 2.5.7 Teknik Bit-Packing pada Representasi Bit-Width Rendah | 150 | Alasan: memori dialamatkan per byte, INT4 hanya 4 bit → tanpa packing setengah kapasitas terbuang; ilustrasi 2 nilai INT4 dalam 1 byte (shift + OR). **Wajib ditutup satu kalimat: penelitian ini tidak menerapkan bit-packing**, sehingga ukuran berkas aktual ±25% dari FP32, bukan 12,5% |

### 2.6 Metrik Evaluasi dan Uji Signifikansi — 750 kata
| Anak subbab | Kata | Isi |
|---|---:|---|
| 2.6.1 Exact Match dan F1 | 250 | Persamaan EM & F1 (sudah ada); interpretasi EM ketat vs F1 longgar; normalisasi jawaban |
| 2.6.2 Ukuran Model dan Latensi Inferensi | 200 | Ukuran teoretis vs ukuran berkas aktual; definisi latensi + protokol pengukuran (warm-up, N iterasi, median & p95); pernyataan bahwa latensi bersifat deskriptif karena kuantisasi tersimulasi |
| 2.6.3 Uji Signifikansi: McNemar dan Paired Bootstrap | 300 | McNemar untuk EM (biner per sampel); paired bootstrap untuk F1 (B = 10.000, CI persentil 95%); Holm m = 3 per metrik; ukuran model tidak diuji; latensi tidak diuji |

### 2.7 Penelitian Terdahulu dan Celah Penelitian — 900 kata
| Anak subbab | Kata | Isi |
|---|---:|---|
| 2.7.1 Ringkasan Penelitian Terdahulu | 450 | 2 kalimat kriteria pemilihan + **tabel 8 baris** + 1 paragraf: di sumbu mana penelitianmu berada |
| 2.7.2 Celah Penelitian dan Kerangka Berpikir | 450 | 3 celah (konteks, granularitas, signifikansi) + **gambar kerangka berpikir 4 tahap** + 1 paragraf penjelas |

## 2. Tiga hal yang saya koreksi dari usulanmu

**a. Penomoran.** Kamu menulis "2.4" dua kali dan menaruh 2.5.1–2.5.3 di dalam subbab 2.4. Urutan yang bersih: 2.4 Kompresi Model → 2.5 Kuantisasi (2.5.1–2.5.7) → 2.6 Metrik → 2.7 Penelitian Terdahulu. Kalau Kompresi dan Kuantisasi digabung jadi satu subbab, tujuh anak subbab kuantisasi akan bercampur dengan pruning/distilasi dan bab jadi tidak rata.

**b. Mekanisme attention butuh tempat.** Kamu menulis "2.2 BERT, dan IndoBERT (2 anak)" — kalau Transformer dihapus, Persamaan attention dan multi-head tidak punya rumah, padahal itu dasar argumen "bobot mana yang dikuantisasi". Solusi: 2.2.1 Transformer dan Mekanisme Attention, 2.2.2 BERT dan IndoBERT. Tetap 2 anak subbab, tidak menambah.

**c. Bit-packing harus dinyatakan tidak diterapkan.** Kalau 2.5.7 ada di Bab II tapi Bab III tidak melakukannya, penguji akan menanyakannya. Satu kalimat penutup ("tidak diterapkan; karena itu ukuran aktual ±25%, bukan 12,5%") mengubah kelemahan menjadi justifikasi — sekaligus menjelaskan kenapa angka ukuran modelmu tidak sama dengan hitungan teoretis.

## 3. Anggaran

| Item | Jumlah |
|---|---:|
| Subbab | 7 |
| Anak subbab | 13 |
| Kata | ±4.850 (Anissa 3.700; Qinthara 4.760) |
| Tabel | 4–5: split data, QAT vs PTQ, spektrum granularitas, penelitian terdahulu, (opsional) keluarga kompresi |
| Gambar | 1: kerangka berpikir |
| Persamaan | 6: attention, multi-head, MLM, span S/E, kuantisasi+skala, bootstrap |

## 4. Kerangka LaTeX

```latex
\chapter{Kajian Pustaka}

\section{Extractive Question Answering}

\section{BERT dan IndoBERT}
\subsection{BERT}
\subsection{IndoBERT}

\section{Dataset SQuAD-id}

\section{Kompresi Model}

\section{Kuantisasi}
\subsection{Representasi Numerik: FP32, FP16, dan INT4}
\subsection{Konsep Dasar Quantization}
\subsection{Skema Kuantisasi Simetris dan Asimetris}
\subsection{Cakupan: Weight-Only dan Joint Weight-Activation}
\subsection{Waktu: Post-Training Quantization dan Quantization-Aware Training}
\subsection{Granularitas Quantization}
\subsection{Teknik Bit-Packing pada Representasi Bit-Width Rendah}

\section{Metrik Evaluasi dan Uji Signifikansi}
\subsection{Exact Match, F1, dan Ukuran Model}
\subsection{Paired Bootstrap dan Koreksi Holm}

\section{Penelitian Terdahulu dan Celah Penelitian}
\subsection{Ringkasan Penelitian Terdahulu}
\subsection{Celah Penelitian dan Kerangka Berpikir}
```

## 5. Dampak ke estimasi kerja

Naik sedikit dari versi ringkas: +1 subbab (Kompresi) dan +5 anak subbab (representasi numerik, bit-packing, dan pemecahan kuantisasi). Estimasi total **±25 jam** (dari 22). Yang bertambah hanya penulisan 2.4 dan 2.5.1/2.5.7; sisanya sudah ada bahannya di `bab2/02_sub4-5.md`.
````

<a id="f-bahan-justifikasi-readme-md"></a>

## `bahan_justifikasi/README.md`

Ukuran 3,619 byte &middot; 55 baris &middot; sha256 `9ec5b98ea2b9` &middot; encoding `utf-8-sig`

```markdown
# bahan_justifikasi

Folder ini menjawab satu pertanyaan: **setiap kalimat bersitasi di Bab I dan Bab II itu didukung oleh apa?**

Dibuat dari korpus `D:\KEJARCEPATTTT\quantization\paper\sudah dipilih\bahan\` (32 dokumen) dan dari PDF yang tersedia di lokal. Setiap kutipan di folder ini sudah diuji ulang secara mekanis terhadap teks hasil ekstraksi PDF (pencocokan substring, spasi dinormalisasi, case-insensitive) — bukan diketik dari ingatan.

## Isi

| File | Isi |
|---|---|
| `justifikasi_bab1.md` | 17 klaim bersitasi di `src/chapters/chapter-1.tex` |
| `justifikasi_bab2.md` | 45 klaim bersitasi di `src/chapters/chapter-2.tex` |
| `verifikasi_tabel_terdahulu.md` | Cek angka 5 baris Tabel Penelitian Terdahulu ke PDF aslinya |
| `sumber/Pemilahan_Dokumen.md` | Salinan beku hasil pemilahan korpus (dari folder paper) |
| `sumber/Tabel_Review_Bahan.md` | Salinan beku tabel review 32 dokumen (dari folder paper) |

## Legenda status

- **[OK] TERVERIFIKASI** — kutipan ada di sumber dan mendukung klaim apa adanya.
- **[OK*] TERVERIFIKASI (sumber sekunder)** — kutipan ada, tetapi dari paper lain yang menyitasi sumber primer; sumber primer belum dipegang.
- **[~] SEBAGIAN TERVERIFIKASI** — sebagian klaim didukung, sebagian belum.
- **[_] PERLU DICEK** — kutipan ada, tetapi klaim di skripsi lebih luas daripada isi kutipan.
- **[X] TIDAK COCOK** — sitasi tidak mendukung klaim; harus diganti.
- **[--] BELUM TERVERIFIKASI** — PDF sumber tidak ada di lokal, jadi belum bisa dicek.

## Rekap 62 klaim

| Status | Jumlah |
|---|---|
| [OK] terverifikasi | 39 |
| [OK*] terverifikasi via sumber sekunder | 2 |
| [~] sebagian | 2 |
| [_] perlu dicek (klaim lebih luas) | 3 |
| [X] tidak cocok | 2 |
| [--] belum terverifikasi | 14 |

## Dua hal yang harus diperbaiki di teks (bukan di folder ini)

1. **`wu2023understanding` dipakai dua kali untuk granularitas** — `chapter-1.tex` baris 28 dan `chapter-2.tex` baris 117. Paper itu (Wu dkk., INT4) **tidak membahas granularitas sama sekali**: kata "granular" tidak muncul satu kali pun di seluruh teks. Ganti ke `gholami2021survey` (Bagian E, layerwise vs channelwise vs groupwise) atau `bondarenko2021understanding` (per-embedding-group).
2. **Tiga klaim lebih luas daripada kutipannya** — B1-03 (Transformer "mampu mempelajari representasi kontekstual"), B1-06 ("model bahasa juga dikembangkan untuk bahasa lain"), B2-12 (IndoBERT "memahami pertanyaan dan konteks"). Kutipannya mendukung hal lain; kalimatnya perlu dipersempit atau sumbernya ditambah.

## Enam PDF yang paling perlu diunduh (urutan prioritas)

1. `han2026breaking` — **klaim celah penelitian bertumpu pada paper ini** (celah ke-2 dan ke-3 di Bab II). Tanpa PDF-nya, dua dari tiga celah tidak bisa dipertahankan saat ditanya.
2. `hu2022empirical` — baris 1 Tabel Penelitian Terdahulu.
3. `muis2020sequence` + **SEACrowd** — dataset utama skripsi; versi yang dipakai Bab II (ditata ulang + penanda kualitas) adalah versi SEACrowd, jadi sitasinya belum lengkap.
4. `rajpurkar2016squad` — definisi SQuAD, EM/F1, normalisasi jawaban (dipakai di 6 klaim).
5. `dror2018hitchhiker` — dasar argumen uji signifikansi.
6. `holm1979`, `bergkirkpatrick2012`, `efron1993` — prosedur uji yang kamu pakai.

## Catatan teknis

- Nomor halaman = halaman PDF, bukan halaman jurnal.
- Kutipan ditampilkan persis seperti yang muncul di teks hasil ekstraksi, termasuk salah kaprah penulisan aslinya (mis. `quantizationaware` tanpa tanda hubung pada Q8BERT).
- Salinan di `sumber/` bersifat beku (snapshot). Kalau tabel review di folder paper diperbarui, salinan ini tidak ikut berubah.
```

<a id="f-bahan-justifikasi-justifikasi-bab1-md"></a>

## `bahan_justifikasi/justifikasi_bab1.md`

Ukuran 9,615 byte &middot; 131 baris &middot; sha256 `e7a48bf3cf69` &middot; encoding `utf-8-sig`

```markdown
# Justifikasi Klaim — Bab I (Pendahuluan)

Setiap klaim bersitasi di Bab I dipetakan ke sumbernya, dengan kutipan verbatim dan lokasi bagian. Status: **[OK]** kutipan ada dan mendukung klaim · **[_]** kutipan ada tetapi klaim lebih luas dari kutipan · **[X]** sitasi tidak mendukung klaim · **[~]** sebagian terverifikasi · **[--]** sumber belum tersedia di lokal.

File bab: `src/chapters/chapter-1.tex`

### B1-01 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** QA = sistem menjawab pertanyaan berdasarkan informasi yang tersedia  
**Sitasi:** `jurafsky2025speech`  ·  **PDF lokal:** tidak ada

**Catatan:** Buku Jurafsky & Martin tidak ada di lokal (tidak ada PDF di D:\KEJARCEPATTTT). Perlu PDF/buku atau ganti ke sumber yang bisa dicek.

### B1-02 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Extractive QA memilih bagian teks paling relevan dari konteks sebagai jawaban  
**Sitasi:** `jurafsky2025speech`  ·  **PDF lokal:** tidak ada

**Catatan:** Sama seperti B1-01. Alternatif yang bisa dicek: p14 (Devlin) atau p30 (Ramaputra) yang mendefinisikan extractive QA.

### B1-03 — [!] PERLU DICEK
**Klaim di skripsi:** Transformer dipakai karena mampu mempelajari representasi kontekstual dari teks  
**Sitasi:** `vaswani2017attention`  ·  **PDF lokal:** `Attention is All you Need.pdf`

**Kutipan verbatim dari sumber:**
- “We propose a new simple network architecture, the Transformer, based solely on attention mechanisms, dispensing with recurrence and convolutions entirely” — *Abstrak (hal. 1)*

**Catatan:** Kutipan mendukung keberadaan arsitektur berbasis attention, tetapi tidak menyatakan klaim 'representasi kontekstual'. Klaim kontekstual lebih tepat disandarkan ke Devlin (p14) atau Rogers (p02, BERTology) — p02 ada di korpus tapi belum masuk bahan.

### B1-04 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Model Transformer telah ditinjau pada berbagai tugas NLP berbasis teks  
**Sitasi:** `rahali2023end`  ·  **PDF lokal:** tidak ada

**Catatan:** PDF Rahali & Akhloufi (2023) tidak ada di lokal.

### B1-05 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Model pralatih dapat disesuaikan ke tugas tertentu melalui fine-tuning  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “the pre-trained BERT model can be finetuned with just one additional output layer” — *Abstrak (hal. 1)*

### B1-06 — [!] PERLU DICEK
**Klaim di skripsi:** Model bahasa juga dikembangkan untuk bahasa lain, termasuk bahasa Indonesia  
**Sitasi:** `wilie2020indonlu`  ·  **PDF lokal:** `IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “we introduce the first-ever vast resource for training, evaluation, and benchmarking on Indonesian natural language understanding (IndoNLU) tasks” — *Abstrak (hal. 1)*

**Catatan:** Kutipan membuktikan adanya resource/benchmark Indonesia, bukan pernyataan umum 'model bahasa juga dikembangkan untuk bahasa lain'. Kalau klaim dipertahankan, kata-katanya perlu dipersempit ke 'resource dan model pralatih berbahasa Indonesia'.

### B1-07 — [~] SEBAGIAN TERVERIFIKASI
**Klaim di skripsi:** IndoBERT dapat dipakai memahami pertanyaan dan konteks; SQuAD-id dipakai untuk melatih/mengevaluasi penemuan jawaban  
**Sitasi:** `wilie2020indonlu; muis2020sequence`  ·  **PDF lokal:** `IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “We also provide a set of Indonesian pre-trained models (IndoBERT) trained from a large and clean Indonesian dataset (Indo4B)” — *Abstrak (hal. 1)*

**Catatan:** Bagian IndoBERT terverifikasi; klaim 'memahami pertanyaan dan konteks' adalah inferensi penulis, bukan kalimat IndoNLU. Bagian SQuAD-id (muis2020sequence) BELUM TERVERIFIKASI — PDF tidak ada di lokal, padahal ini dataset utama skripsi, jadi prioritas untuk diunduh.

### B1-08 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Model berpresisi tinggi butuh ruang penyimpanan lebih besar daripada presisi rendah  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “Moving from floating-point representations to low-precision fixed integer values represented in four bits or less holds the potential to reduce the memory footprint and latency by a factor of 16x” — *Abstrak (hal. 1)*

### B1-09 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Kuantisasi = merepresentasikan nilai numerik model dengan presisi lebih rendah  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “quantization: in what manner should a set of continuous real-valued numbers be distributed over a fixed discrete set of numbers to minimize the number of bits required” — *Abstrak (hal. 1)*

### B1-10 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Kuantisasi BERT telah diterapkan dengan representasi 8-bit  
**Sitasi:** `zafrir2019q8bert`  ·  **PDF lokal:** `Q8BERT_ Quantized 8Bit BERT.pdf`

**Kutipan verbatim dari sumber:**
- “the produced quantized model can accelerate inference speed if it is optimized for 8bit Integer supporting hardware” — *Abstrak (hal. 1)*
- “we show how to perform quantizationaware training during the fine-tuning phase of BERT in order to compress BERT by 4x with minimal accuracy loss” — *Abstrak (hal. 1)*

**Catatan:** Perlu dicatat: Q8BERT adalah QAT, bukan PTQ — penting supaya tidak dibaca sebagai preseden PTQ.

### B1-11 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Kuantisasi telah diterapkan pada BERT berbahasa Indonesia  
**Sitasi:** `abdurrahman2023implementing`  ·  **PDF lokal:** `Implementing_Quantization_to_Indonesian_BERT_Language_Model.pdf`

**Kutipan verbatim dari sumber:**
- “this paper evaluates compression techniques through quantization for an Indonesian version of the BERT model, namely IndoBERT” — *Abstrak (hal. 1)*

### B1-12 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Pengaruh kuantisasi pada Transformer Indonesia telah dikaji pada tugas analisis sentimen  
**Sitasi:** `sanjaya2026quantization`  ·  **PDF lokal:** `quantization effectson explainability in indonesian transformer based sentiment analysis.pdf`

**Kutipan verbatim dari sumber:**
- “We study this on IndoBERT fine-tuned for three-class Indonesian sentiment classification, comparing post-training quantization (PTQ) and quantization-aware training (QAT) at FP16, INT8, and INT4” — *Abstrak (hal. 1)*

### B1-13 — [OK] TERVERIFIKASI
**Klaim di skripsi:** PTQ = kuantisasi yang diterapkan setelah model selesai dilatih  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “This can either be performed by retraining the model, a process that is called QuantizationAware Training (QAT), or done without re-training, a process that is often referred to as Post-Training Quantization (PTQ)” — *Bagian Post-Training Quantization (hal. 3)*

### B1-14 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Perubahan representasi bobot dapat memengaruhi hasil prediksi model  
**Sitasi:** `wu2023understanding`  ·  **PDF lokal:** `Understanding INT4 Quantization for Language Models_ Latency Speedup, Composability, and Failure Cases.pdf`

**Kutipan verbatim dari sumber:**
- “W4A4 quantization introduces no to negligible accuracy degradation for encoder-only and encoder-decoder models, but causes a significant accuracy drop for decoder-only models” — *Abstrak (hal. 1)*

**Catatan:** Kutipan menunjukkan dampak akurasi berbeda antar-arsitektur; kata 'dapat memengaruhi' aman.

### B1-15 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Granularitas menentukan cakupan bobot yang memakai parameter kuantisasi bersama  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “One differentiator for quantization methods is the granularity of how the clipping range” — *Bagian E. Quantization Granularity (hal. 7)*

### B1-16 — [X] TIDAK COCOK
**Klaim di skripsi:** Perbedaan granularitas menghasilkan pertukaran antara efisiensi penyimpanan dan kemampuan mempertahankan representasi bobot  
**Sitasi:** `wu2023understanding`  ·  **PDF lokal:** `Understanding INT4 Quantization for Language Models_ Latency Speedup, Composability, and Failure Cases.pdf`

**Catatan:** Paper Wu dkk. (p64) TIDAK membahas granularitas sama sekali (0 kemunculan kata 'granular' di seluruh teks). Ganti sitasi ke gholami2021survey (bagian E, yang memang membahas layerwise vs channelwise vs groupwise) atau ke bondarenko2021understanding (per-embedding-group).

### B1-17 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Pada presisi 4-bit, penurunan kinerja dapat terjadi setelah model konvergen  
**Sitasi:** `armstrong2026flat`  ·  **PDF lokal:** `When Flat Minima Fail_ Characterizing INT4 Quantization Collapse After FP32 Convergence.pdf`

**Kutipan verbatim dari sumber:**
- “Post-training quantization (PTQ) assumes that a well-converged model is a quantization-ready model. We show this assumption fails” — *Abstrak (hal. 1)*
```

<a id="f-bahan-justifikasi-justifikasi-bab2-md"></a>

## `bahan_justifikasi/justifikasi_bab2.md`

Ukuran 21,340 byte &middot; 333 baris &middot; sha256 `cf7659004124` &middot; encoding `utf-8-sig`

```markdown
# Justifikasi Klaim — Bab II (Kajian Pustaka)

Sama seperti Bab I, untuk seluruh klaim bersitasi di Bab II. Legenda status sama: **[OK]** terverifikasi · **[OK*]** terverifikasi lewat sumber sekunder · **[~]** sebagian · **[_]** klaim lebih luas dari kutipan · **[X]** sitasi tidak mendukung · **[--]** belum bisa dicek.

File bab: `src/chapters/chapter-2.tex`

### B2-01 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** QA adalah tugas NLP: sistem menjawab pertanyaan berdasarkan informasi yang tersedia  
**Sitasi:** `jurafsky2025speech`  ·  **PDF lokal:** tidak ada

**Catatan:** Buku Jurafsky & Martin tidak ada di lokal.

### B2-02 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Pada pendekatan extractive, jawaban dipilih sebagai span di dalam konteks  
**Sitasi:** `jurafsky2025speech`  ·  **PDF lokal:** tidak ada

**Catatan:** Bisa dialihkan ke p14 (Devlin) yang mendefinisikan span S/E, atau p30.

### B2-03 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Masukan = pasangan pertanyaan+konteks; keluaran = posisi token awal dan akhir span jawaban  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “we only introduce a start vector” — *Bagian 3.2 (Fine-tuning BERT), hal. 4*
- “The probability of word i being the start of the answer span is computed as a dot prod” — *Bagian 3.2 (Fine-tuning BERT), hal. 4*

### B2-04 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Transformer memproses urutan token dengan attention tanpa rekurensi  
**Sitasi:** `vaswani2017attention`  ·  **PDF lokal:** `Attention is All you Need.pdf`

**Kutipan verbatim dari sumber:**
- “We propose a new simple network architecture, the Transformer, based solely on attention mechanisms, dispensing with recurrence and convolutions entirely” — *Abstrak (hal. 1)*

### B2-05 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Mekanisme inti adalah scaled dot-product attention (Q, K, V)  
**Sitasi:** `vaswani2017attention`  ·  **PDF lokal:** `Attention is All you Need.pdf`

**Kutipan verbatim dari sumber:**
- “scaled dot-product attention” — *Bagian 3.2.1 Scaled Dot-Product Attention*

**Catatan:** Kutipan pendek; kalau butuh kalimat penuh, ambil definisi rumus attention di bagian yang sama.

### B2-06 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Multi-head attention menjalankan h attention secara paralel  
**Sitasi:** `vaswani2017attention`  ·  **PDF lokal:** `Attention is All you Need.pdf`

**Kutipan verbatim dari sumber:**
- “Multi-head attention allows the model to jointly attend to information from different representation subspaces at different positions” — *Bagian 3.2.2 Multi-Head Attention*

### B2-07 — [OK] TERVERIFIKASI
**Klaim di skripsi:** BERT memakai encoder Transformer dua arah (bidirectional)  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “BERT is designed to pretrain deep bidirectional representations” — *Abstrak (hal. 1)*

### B2-08 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Pada MLM sebagian token disembunyikan lalu diprediksi dari konteks kiri-kanan  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “we simply mask some percentage of the input tokens at random, and then predict those masked tokens” — *Bagian 3.1 (Pre-training BERT), hal. 4*

### B2-09 — [OK] TERVERIFIKASI
**Klaim di skripsi:** BERT-base 110 juta parameter; BERT-large 340 juta parameter  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “Total Parameters=110M” — *Bagian 3 (Model Architecture), hal. 3*

**Catatan:** Angka 340M ada di kalimat yang sama (BERTLARGE ... Total Parameters=340M).

### B2-10 — [OK] TERVERIFIKASI
**Klaim di skripsi:** IndoBERT adalah model pralatih Indonesia berarsitektur BERT dari benchmark IndoNLU  
**Sitasi:** `wilie2020indonlu`  ·  **PDF lokal:** `IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “We also provide a set of Indonesian pre-trained models (IndoBERT) trained from a large and clean Indonesian dataset (Indo4B)” — *Abstrak (hal. 1)*

### B2-11 — [OK] TERVERIFIKASI
**Klaim di skripsi:** IndoBERT dipralatih pada korpus Indo4B  
**Sitasi:** `wilie2020indonlu`  ·  **PDF lokal:** `IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “We also provide a set of Indonesian pre-trained models (IndoBERT) trained from a large and clean Indonesian dataset (Indo4B)” — *Abstrak (hal. 1)*

### B2-12 — [!] PERLU DICEK
**Klaim di skripsi:** IndoBERT dapat dimanfaatkan untuk memahami pertanyaan dan konteks berbahasa Indonesia  
**Sitasi:** `wilie2020indonlu`  ·  **PDF lokal:** `IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “IndoNLU includes twelve tasks, ranging from single sentence classification to pair-sentences sequence labeling” — *Abstrak (hal. 1)*

**Catatan:** IndoNLU tidak menyatakan klaim 'memahami pertanyaan dan konteks'. Yang bisa dipakai: hasil FacQA (span extraction) pada Tabel 22 — 'multilingual models tend to perform better ... on the NERGrit and FacQA tasks'. Kalau klaim dipertahankan, sebut sebagai inferensi, bukan fakta bersitasi.

### B2-13 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Penyesuaian model pralatih ke extractive QA dilakukan lewat fine-tuning  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “the pre-trained BERT model can be finetuned with just one additional output layer” — *Abstrak (hal. 1)*

### B2-14 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Pertanyaan+konteks digabung jadi satu urutan; vektor S dan E dikalikan representasi token  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “we only introduce a start vector” — *Bagian 3.2 (Fine-tuning BERT), hal. 4*

### B2-15 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Skor kandidat span = S·Ti + E·Tj; span skor tertinggi dipilih  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “The score of a candidate span from position i to position j is defined as” — *Bagian 3.2 (Fine-tuning BERT), hal. 4*

**Catatan:** Rumus S·Ti + E·Tj ada tepat setelah kutipan ini.

### B2-16 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Objektif fine-tuning = jumlah log-likelihood posisi awal dan akhir yang benar  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “The training objective is the sum of the log-likelihoods of the correct start and end positions” — *Bagian 3.2 (Fine-tuning BERT), hal. 4*

### B2-17 — [OK*] TERVERIFIKASI (sumber sekunder)
**Klaim di skripsi:** SQuAD-id = terjemahan mesin SQuAD v2.0 ke bahasa Indonesia  
**Sitasi:** `muis2020sequence`  ·  **PDF lokal:** `Evaluating the Impact of Quantization on Indonesian Question Answering.pdf`

**Kutipan verbatim dari sumber:**
- “dataset that is translated to Indonesian using Google Translate” — *p30, Bagian 3.3 Dataset (hal. 4)*

**Catatan:** Diverifikasi lewat p30 (Ramaputra), yang menyitasi SQuAD-id [12]. PDF sumber primer (Muis dkk. 2020) tidak ada di lokal, dan judulnya di bib ('...Indonesian Automatic Question Generator') tidak menyiratkan SQuAD-id — perlu dipastikan. Catatan penting: versi yang dipakai p30 adalah SQuAD-id dari SEACrowd, sedangkan Bab II menyebut versi 'yang telah ditata ulang dan dikoreksi' dengan penanda kualitas — itu ciri kartu dataset SEACrowd, jadi sitasinya semestinya SEACrowd (Lovenia dkk.), bukan hanya Muis.

### B2-18 — [~] SEBAGIAN TERVERIFIKASI
**Klaim di skripsi:** SQuAD = benchmark QA dengan jawaban span dari paragraf Wikipedia  
**Sitasi:** `rajpurkar2016squad`  ·  **PDF lokal:** `Evaluating the Impact of Quantization on Indonesian Question Answering.pdf`

**Kutipan verbatim dari sumber:**
- “where the answer to each question is a contiguous span of text from the corresponding passage” — *p30, Bagian 3.3 Dataset (hal. 4)*

**Catatan:** Bagian 'jawaban berupa span' terverifikasi lewat p30; bagian 'berasal dari paragraf Wikipedia' belum (paper Rajpurkar tidak ada di lokal).

### B2-19 — [OK*] TERVERIFIKASI (sumber sekunder)
**Klaim di skripsi:** SQuAD v2.0 menambahkan pertanyaan tanpa jawaban pada konteks  
**Sitasi:** `rajpurkar2016squad`  ·  **PDF lokal:** `Evaluating the Impact of Quantization on Indonesian Question Answering.pdf`

**Kutipan verbatim dari sumber:**
- “SQuAD v2.0 later extended this by adding unanswerable questions” — *p30, Bagian 3.3 Dataset (hal. 4)*

**Catatan:** Terverifikasi lewat ringkasan p30; sitasi primer (Rajpurkar dkk. 2016, arXiv:1606.05250) belum diunduh.

### B2-20 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Kuantisasi = komputasi & penyimpanan tensor pada presisi bit lebih rendah  
**Sitasi:** `abdurrahman2023implementing`  ·  **PDF lokal:** `Implementing_Quantization_to_Indonesian_BERT_Language_Model.pdf`

**Kutipan verbatim dari sumber:**
- “Quantization is a technique for performing computations and storing tensors at a lower bit precision” — *Bagian II.B Quantization (hal. 2)*

### B2-21 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Kuantisasi = pemetaan nilai riil kontinu ke himpunan diskret; nilai di luar rentang dipotong (clipping)  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “quantization: in what manner should a set of continuous real-valued numbers be distributed over a fixed discrete set of numbers” — *Abstrak (hal. 1)*
- “the clipping range [α, β] should first be determined. The process of choosing the clipping range is often referred to as calibration” — *Bagian II.B Uniform Quantization (hal. 3)*

### B2-22 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Model berpresisi tinggi butuh penyimpanan lebih besar daripada presisi rendah  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “Moving from floating-point representations to low-precision fixed integer values represented in four bits or less holds the potential to reduce the memory footprint and latency by a factor of 16x” — *Abstrak (hal. 1)*

### B2-23 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Kuantisasi simetris b-bit (Pers. 2.1 dan 2.2 di Bab II)  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “Using symmetric quantization, however, simplifies the quantization function in Eq. 2 by replacing the zero point with Z = 0” — *Bagian II.C Symmetric and Asymmetric Quantization (hal. 4)*

### B2-24 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Dekuantisasi: x̂ = x_q · s  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “It is possible to recover real values r from the quantized values Q(r) through an operation that is often referred to as dequantization” — *Bagian II.B Uniform Quantization (hal. 3)*

### B2-25 — [OK] TERVERIFIKASI
**Klaim di skripsi:** PTQ = kuantisasi setelah model dilatih, skala/zero point ditentukan dari model yang ada  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “done without re-training, a process that is often referred to as Post-Training Quantization (PTQ)” — *Bagian II.E Post-Training Quantization (hal. 5)*

### B2-26 — [OK] TERVERIFIKASI
**Klaim di skripsi:** PTQ tidak butuh retraining sehingga bisa diterapkan pada model yang sudah di-fine-tune  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “done without re-training, a process that is often referred to as Post-Training Quantization (PTQ)” — *Bagian II.E Post-Training Quantization (hal. 5)*

### B2-27 — [OK] TERVERIFIKASI
**Klaim di skripsi:** QAT memasukkan operasi kuantisasi ke proses pelatihan, dengan biaya komputasi tambahan  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “This can either be performed by retraining the model, a process that is called QuantizationAware Training (QAT)” — *Bagian II.E Post-Training Quantization (hal. 5)*

### B2-28 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Kuantisasi bisa diterapkan pada bobot saja atau bobot+aktivasi  
**Sitasi:** `bondarenko2021understanding`  ·  **PDF lokal:** `Understanding and Overcoming the Challenges of Efficient Transformer Quantization.pdf`

**Kutipan verbatim dari sumber:**
- “W8A8 W32A8 W8A32” — *Tabel 1 (kolom Configuration), hal. 5*

**Catatan:** Tabel 1 memuat tiga konfigurasi: W8A8 (bobot+aktivasi), W32A8 (aktivasi saja), W8A32 (bobot saja) — persis membedakan kedua kemungkinan.

### B2-29 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Notasi WxAy = bobot x-bit, aktivasi y-bit (mis. W8A8)  
**Sitasi:** `bondarenko2021understanding`  ·  **PDF lokal:** `Understanding and Overcoming the Challenges of Efficient Transformer Quantization.pdf`

**Kutipan verbatim dari sumber:**
- “W8A8 W32A8 W8A32” — *Tabel 1 (kolom Configuration), hal. 5*

### B2-30 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Pada BERT-base: GLUE 83,06 (FP32), 71,03 (W8A8), 70,25 (W32A8), 83,23 (W8A32)  
**Sitasi:** `bondarenko2021understanding`  ·  **PDF lokal:** `Understanding and Overcoming the Challenges of Efficient Transformer Quantization.pdf`

**Kutipan verbatim dari sumber:**
- “FP32 57.27 93.12 88.36 89.09 89.72 84.91 91.58 70.40 83.06” — *Tabel 1, baris FP32 (kolom GLUE = 83.06), hal. 5*
- “W8A8 W32A8 W8A32 54.74 92.55 56.70 92.43” — *Tabel 1, baris W8A8/W32A8/W8A32, hal. 5*

**Catatan:** Empat angka di Bab II cocok dengan Tabel 1 (83.06 / 71.03 / 70.25 / 83.23). Tabel ini adalah hasil PTQ, jadi memang layak jadi acuan 'weight-only menghasilkan skor hampir sama dengan FP32'.

### B2-31 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Granularitas menentukan cakupan bobot yang memakai parameter kuantisasi bersama  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “One differentiator for quantization methods is the granularity of how the clipping range” — *Bagian E. Quantization Granularity (hal. 7)*

### B2-32 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Fine-grained = satu faktor skala untuk setiap channel j dari tensor bobot  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “One can achieve better quantization resolution using channelwise quantization” — *Gambar 3 / Bagian E. Quantization Granularity (hal. 7)*

### B2-33 — [X] TIDAK COCOK
**Klaim di skripsi:** Perbedaan granularitas = trade-off efisiensi penyimpanan vs representasi bobot  
**Sitasi:** `wu2023understanding`  ·  **PDF lokal:** `Understanding INT4 Quantization for Language Models_ Latency Speedup, Composability, and Failure Cases.pdf`

**Catatan:** Wu dkk. (p64) tidak membahas granularitas (0 kemunculan 'granular'). Ganti ke gholami2021survey (bagian E: layerwise vs channelwise vs groupwise) atau bondarenko2021understanding (per-embedding-group).

### B2-34 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Pada 4-bit, penurunan kinerja dapat terjadi setelah konvergensi  
**Sitasi:** `armstrong2026flat`  ·  **PDF lokal:** `When Flat Minima Fail_ Characterizing INT4 Quantization Collapse After FP32 Convergence.pdf`

**Kutipan verbatim dari sumber:**
- “Post-training quantization (PTQ) assumes that a well-converged model is a quantization-ready model. We show this assumption fails” — *Abstrak (hal. 1)*

### B2-35 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** EM dan F1 adalah metrik standar evaluasi SQuAD  
**Sitasi:** `rajpurkar2016squad`  ·  **PDF lokal:** tidak ada

**Catatan:** PDF Rajpurkar tidak ada di lokal.

### B2-36 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Normalisasi jawaban: huruf kecil, hapus tanda baca  
**Sitasi:** `rajpurkar2016squad`  ·  **PDF lokal:** tidak ada

**Catatan:** Sama; ini detail yang penting untuk reproduksi, jadi sebaiknya diverifikasi.

### B2-37 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Rumus F1 = harmonic mean precision/recall, diambil maksimum terhadap jawaban acuan  
**Sitasi:** `rajpurkar2016squad`  ·  **PDF lokal:** tidak ada

**Catatan:** Sama.

### B2-38 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Selisih EM/F1 belum tentu signifikan karena sampel uji terbatas  
**Sitasi:** `dror2018hitchhiker`  ·  **PDF lokal:** tidak ada

**Catatan:** PDF Dror dkk. (2018) tidak ada di lokal.

### B2-39 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Uji signifikansi statistik diperlukan untuk membedakan perbedaan nyata dari variasi acak  
**Sitasi:** `dror2018hitchhiker`  ·  **PDF lokal:** tidak ada

**Catatan:** Sama.

### B2-40 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Paired bootstrap: resampling dengan pengembalian B kali, hitung selisih rata-rata skor  
**Sitasi:** `bergkirkpatrick2012; efron1993`  ·  **PDF lokal:** tidak ada

**Catatan:** Dua sumber (Berg-Kirkpatrick 2012; Efron & Tibshirani 1993) tidak ada di lokal.

### B2-41 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Koreksi Holm untuk pengujian berganda (m=3 per metrik)  
**Sitasi:** `holm1979`  ·  **PDF lokal:** tidak ada

**Catatan:** Paper Holm (1979) tidak ada di lokal; prosedurnya sudah ditulis eksplisit di Bab II sehingga yang perlu dicek hanya rujukannya.

### B2-42 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Gholami dkk. menyusun survei metode kuantisasi (seragam, granularitas, PTQ)  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “we survey approaches to the problem of quantizing the numerical values in deep Neural Network computations, covering the advantages/disadvantages of current methods” — *Abstrak (hal. 1)*

### B2-43 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Celah 1: weight-only PTQ 4-bit pada IndoBERT baru dilaporkan untuk 7 tugas IndoNLU dan sentimen; pada extractive QA SQuAD-id baru pada LLM decoder-only  
**Sitasi:** `abdurrahman2023implementing; sanjaya2026quantization; ramaputra2026evaluating`  ·  **PDF lokal:** `Implementing_Quantization_to_Indonesian_BERT_Language_Model.pdf`

**Kutipan verbatim dari sumber:**
- “Experiments on 7 downstream tasks” — *Abstrak (hal. 1)*
- “PTQ-INT4 uses symmetric, per-tensor, weight-only quantization” — *Bagian 3.1 (hal. 3)*
- “quantization impacts extractive and generative QA differently, with generative tasks showing greater robustness” — *Abstrak (hal. 1)*

**Catatan:** Ketiga sumber ada di korpus. p42 memang 7 task termasuk FACQA; p52 weight-only per-tensor pada sentimen; p30 QA Indonesia tetapi pada LLM (Qwen/Gemma), bukan encoder.

### B2-44 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Celah 2: perbandingan granularitas weight-only PTQ encoder baru ada pada retrieval embedding, belum pada extractive QA  
**Sitasi:** `han2026breaking`  ·  **PDF lokal:** tidak ada

**Catatan:** Paper Han (2026) TIDAK ada di lokal — padahal klaim celah penelitian bertumpu pada paper ini. Wajib diunduh sebelum sidang.

### B2-45 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Han (2026) melaporkan paired bootstrap + koreksi Benjamini-Hochberg pada NDCG@10, bukan metrik QA  
**Sitasi:** `han2026breaking`  ·  **PDF lokal:** tidak ada

**Catatan:** Sama; ini klaim yang sangat spesifik (metode uji + metrik), jadi paling rawan salah kalau tidak dicek.
```

<a id="f-bahan-justifikasi-sumber-pemilahan-dokumen-md"></a>

## `bahan_justifikasi/sumber/Pemilahan_Dokumen.md`

Ukuran 12,153 byte &middot; 105 baris &middot; sha256 `64b1cd405454` &middot; encoding `utf-8-sig`

```markdown
# Pemilahan Dokumen — folder `sudah dipilih`

Kriteria masuk (sesuai permintaan): **post-training quantization, extractive question answering, weight-only quantization, fine-grained, coarse-grained (granularitas)**.

Hasil: **32 dokumen masuk `bahan/`**, **33 PDF tidak masuk**, **4 berkas non-PDF tidak masuk**. Total 69 berkas diperiksa (65 PDF + 2 notebook + 1 htm + 1 md).

Dasar keputusan: judul + abstrak + pencarian kata kunci pada teks lengkap setiap PDF (PTQ, weight-only, fine-grained, coarse-grained, per-channel/per-tensor/per-group, SQuAD/FacQA/question answering).


## Masuk `bahan/` (32)

| No | File | Kategori |
|---|---|---|
| 1 | A Survey of Quantization Methods for Efficient Neural Network Inference.pdf | PTQ + granularitas (layerwise/coarse vs channelwise/fine) |
| 2 | Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference.pdf | Dasar skema kuantisasi integer-only (rumus scale/zero-point) yang dipakai hampir semua PTQ |
| 3 | Q8BERT_ Quantized 8Bit BERT.pdf | Kuantisasi BERT (QAT saat fine-tuning) — pembanding PTQ |
| 4 | I BERT Integer only BERT Quantization.pdf | Kuantisasi BERT end-to-end (INT8, integer-only) — baseline penting untuk skema kuantisasi BERT |
| 5 | Understanding and Overcoming the Challenges of Efficient Transformer Quantization.pdf | INTI: tantangan kuantisasi Transformer + per-embedding-group (fine-grained) quantization |
| 6 | Accurate Post Training Quantization With Small Calibration Sets.pdf | PTQ (kalibrasi, optimasi per-layer) |
| 7 | On the Impact of Calibration Data in Post-training Quantization and Pruning.pdf | INTI: pengaruh data kalibrasi pada PTQ |
| 8 | Outliers and Calibration Sets have Diminishing Effect on Quantization of Modern LLMs.pdf | INTI: peran calibration set & outlier pada PTQ |
| 9 | Shang_Enhancing_Post-training_Quantization_Calibration_through_Contrastive_Learning_CVPR_2024_paper.pdf | INTI: metode kalibrasi PTQ (CL-Calib), granularitas W2A2 ekstrem |
| 10 | Stabilized activation scale estimation for precise PostTraining Quantization.pdf | PTQ: estimasi activation scale, target W2A4 |
| 11 | FPTQ - Fine-Grained Post-Training Quantization for Large Language Models.pdf | PTQ W4A8 + fine-grained weight quantization |
| 12 | Understanding INT4 Quantization for Language Models_ Latency Speedup, Composability, and Failure Cases.pdf | INTI: kelayakan INT4 W4A4 untuk model encoder (BERT) — dasar argumen kenapa encoder lebih toleran |
| 13 | When Flat Minima Fail_ Characterizing INT4 Quantization Collapse After FP32 Convergence.pdf | INTI: PTQ INT4 per-group gagal setelah model konvergen (fenomena collapse) |
| 14 | Can Less Precise Be More Reliable_ A Systematic Evaluation of Quantization's Impact on CLIP Beyond Accuracy.pdf | Evaluasi dampak PTQ/QAT di luar akurasi |
| 15 | Domain aware post training quantization for vision transformers in deployment.pdf | PTQ pada ViT, kondisi low-bit ekstrem + domain shift |
| 16 | Efficient Deep Neural Receiver with Post-Training Quantizatio.pdf | PTQ weight-only + perbandingan granularitas per-tensor (coarse) vs per-channel (fine) |
| 17 | How Quantization Shapes Bias in Large Language Models.pdf | Dampak kuantisasi bobot & aktivasi terhadap bias/fairness (evaluasi non-akurasi) |
| 18 | Quantization-aware training a tradeoff between training and.pdf | QAT vs fine-tuning domain-specific (biomedis) — pembanding biaya pelatihan |
| 19 | Binary and Ternary Natural Language Generation.pdf | Kuantisasi ternary/binary weight (ultra-low bit) pada Transformer |
| 20 | CAT-Q Cost-Efficient and Accurate Ternary Quantization for LLMs.pdf | PTQ ternary (weight-only ultra-low bit) + kalibrasi kecil |
| 21 | Sherry Hardware-Efficient 1.25-Bit Ternary Quantization via.pdf | Kuantisasi ternary weight + fine-grained sparsity (1.25-bit) |
| 22 | Tequila_ Trapping-free Ternary Quantization for Large Language Models.pdf | Kuantisasi ternary weight untuk LLM (menggantikan perkalian dengan penjumlahan) |
| 23 | TernaryBERT - Distillation-aware Ultra-low Bit BERT.pdf | INTI: kuantisasi ternary weight-only pada BERT + eksplorasi granularitas ternarisasi |
| 24 | The Era of 1-bit LLMs - All Large Language Models are in 1.58 Bits.pdf | Kuantisasi ternary (1.58-bit) weight-only, dilatih dari awal |
| 25 | Proposal Skripsi - Weight-Only Post-Training Quantization ResNet (Tafftadia).pdf | INTI: weight-only PTQ + granularitas per-channel + bit-packing (rancangan, hasil belum ada) |
| 26 | Implementing_Quantization_to_Indonesian_BERT_Language_Model.pdf | INTI: PTQ vs QAT pada IndoBERT, termasuk kasus ekstrem 4-bit |
| 27 | quantization effectson explainability in indonesian transformer based sentiment analysis.pdf | PTQ vs QAT pada IndoBERT (dampak ke stabilitas atribusi) |
| 28 | BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf | Model dasar (BERT) + task extractive QA (SQuAD) |
| 29 | Evaluating the Impact of Quantization on Indonesian Question Answering.pdf | INTI: PTQ pada QA berbahasa Indonesia + perbandingan extractive vs generative QA |
| 30 | FinBERT QA Financial Question Answering with pretrained  BERT Language Models.pdf | QA domain keuangan (answer selection/non-factoid, bukan span extraction) |
| 31 | IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf | Dataset/benchmark IndoNLU — memuat task FacQA (span extraction / extractive QA) |
| 32 | Deep Research Kuantisasi Weight-Only PTQ pada BERT.pdf | Weight-only PTQ + BERT + SQuAD (sumber sekunder, wajib diverifikasi ulang ke paper aslinya) |

## Tidak masuk (33 PDF)

| No | File | Alasan |
|---|---|---|
| 1 | A deep learning based sentiment flow analysis model for predicting financial  risk of listed companies.pdf | Sentimen keuangan + prediksi risiko perusahaan; tidak ada kuantisasi maupun QA. |
| 2 | A Primer in BERTology What We Know About How BERTWorks.pdf | Analisis perilaku BERT (BERTology); tidak membahas kuantisasi/QA ekstraktif. |
| 3 | abstrak_telyu.pdf | PDF tanpa lapisan teks (ekstraksi 0 karakter, kemungkinan hasil pindai) → isi tidak dapat diverifikasi; juga abstrak skripsi sentimen. |
| 4 | Abstrak_UGM_Arah Pergerakan Saham.pdf | Abstrak skripsi UGM: sentimen untuk prediksi arah pergerakan saham. |
| 5 | Abstrak_UGM_Weight Average Transformer Indo.pdf | Abstrak skripsi UGM: weight averaging model Transformer (bukan kuantisasi). |
| 6 | Attention is All you Need.pdf | Arsitektur Transformer (Attention Is All You Need); tidak membahas kuantisasi/QA. |
| 7 | axioms-12-00835.pdf | FinBERT+LSTM prediksi S&P 500 (sentimen keuangan). |
| 8 | bab1_telyu_finbert.pdf | Bab 1 skripsi FinBERT (pendahuluan) — sentimen keuangan. |
| 9 | bab2_telyu_finber.pdf | Bab 2 skripsi FinBERT (tinjauan pustaka) — sentimen keuangan. |
| 10 | bab3_telyu_finbert.pdf | Bab 3 skripsi FinBERT (perancangan) — sentimen keuangan. |
| 11 | Benchmarking Large Language Models for Target Based Financial Sentiment Analysis.pdf | Benchmark LLM untuk sentimen keuangan target-based. |
| 12 | Bimasena Benchmarking IndoBERT and Multilingual BERT for Indonesian Financial News Sentiment Classification.pdf | Benchmark IndoBERT vs mBERT untuk sentimen berita keuangan. |
| 13 | BondBERT_ What we learn when assigning sentiment in the bond market.pdf | BondBERT — sentimen pasar obligasi. |
| 14 | Catatan_Penulisan_Skripsi.pdf | Catatan penulisan skripsi (panduan menulis, bukan artikel penelitian). |
| 15 | Dafisi_UGM_Arah Pergerakan Saham.pdf | Daftar isi skripsi UGM. |
| 16 | dafpus_telyuu.pdf | Daftar pustaka skripsi. |
| 17 | Dafpus_UGM_Arah Pergerakan Saham.pdf | Daftar pustaka skripsi UGM. |
| 18 | Do Words Matter Evidence from Bank Indonesia Communication, Interest Rates, Inflation, and Stock  Market Volatility.pdf | Sentimen komunikasi Bank Indonesia vs volatilitas pasar. |
| 19 | Domain-Specific Language Model Post-Training for Indonesian Financial NLP.pdf | 'Post-training' di sini berarti continued pretraining domain keuangan, bukan post-training quantization. |
| 20 | Enhancing Financial Sentiment Analysis Integrating the LoughranMcDonald Dictionary with BERT for Advanced Market Predictive Insights.pdf | Sentimen keuangan dengan kamus Loughran-McDonald + BERT. |
| 21 | Evaluation of Sentiment Analysis in Finance_ From Lexicons to Transformers.pdf | Evaluasi sentimen keuangan (leksikon vs Transformer) — duplikat dengan file 'Evaluation_of_Sentiment_Analysis...'. |
| 22 | Evaluation_of_Sentiment_Analysis_in_Finance_From_Lexicons_to_Transformers.pdf | Duplikat dari file 'Evaluation of Sentiment Analysis in Finance_ From Lexicons to Transformers.pdf'. |
| 23 | Financial Sentiment Analysis with Pretrained Language Models.pdf | FinBERT (Araci) — sentimen keuangan. |
| 24 | FinBERT A Pretrained Language Model for Financial Communications.pdf | FinBERT (Yang et al.) — sentimen komunikasi keuangan. |
| 25 | Fine-tuned IndoBERT for stock market sentiment analysis evidence from CNBC Indonesia news.pdf | IndoBERT fine-tuned untuk sentimen berita CNBC Indonesia. |
| 26 | FinLlama Financial Sentiment Classification for Algorithmic Trading Applications.pdf | FinLlama — klasifikasi sentimen untuk trading algoritmik. |
| 27 | Forecasting the S&P 500 Index Using Mathematical-Based Sentiment Analysis and Deep Learning Models A FinBERT Transformer Model and LSTM.pdf | Duplikat byte-identik dengan 'axioms-12-00835.pdf' (nama file menyesatkan: isinya paper S&P 500 yang sama). |
| 28 | Optimizing Transformer-Based Models for Financial Sentiment in Indonesian Stock Tweets.pdf | Sentimen tweet saham Indonesia berbasis Transformer. |
| 29 | Performance Metrics for Multilabel Emotion Classification Comparing Micro, Macro, and Weighted F1-Scores.pdf | Perbandingan F1 micro/macro/weighted untuk emosi multilabel — metodologi metrik, bukan kuantisasi/QA. |
| 30 | Predicting Stock Prices with FinBERT LSTM Integrating News Sentiment Analysis.pdf | FinBERT-LSTM prediksi harga saham. |
| 31 | Transformer-based sentiment modeling for identifying cross country fintech perception gaps.pdf | Sentimen fintech lintas negara. |
| 32 | Understanding and Overcoming the Challenges of Efficient Transformer Quantization v2.pdf | Duplikat byte-identik dengan file 'Understanding and Overcoming ... Quantization.pdf' (versi v2). |
| 33 | Understanding and Overcoming the Challenges of.pdf | Duplikat byte-identik (nama file terpotong: 'Understanding and Overcoming the Challenges of.pdf'). |

## Tidak masuk (berkas non-PDF)

| File | Alasan |
|---|---|
| Dynamic Quantization on BERT - Notebook Tutorial PyTorch.ipynb | Notebook tutorial praktik; tidak punya struktur tujuan–metode–hasil penelitian. Berguna untuk eksperimen, bukan untuk tabel review. |
| Introduction to Ternary Neural Networks - Notebook.ipynb | Notebook tutorial; idem. |
| Evaluating the Impact of Quantization on Indonesian Question Answering Performance.htm | Versi web dari paper yang sama dengan PDF yang sudah masuk `bahan/` (duplikat). |
| Daftar_Pustaka_Link.md | Daftar tautan pustaka, bukan dokumen penelitian. |

## Temuan duplikat & file bermasalah (perlu dibersihkan)

- `axioms-12-00835.pdf` **=** `Forecasting the S&P 500 ... LSTM.pdf` (byte-identik) — nama file kedua menyesatkan.
- `Evaluation of Sentiment Analysis in Finance_ ...` **=** `Evaluation_of_Sentiment_Analysis_in_Finance_...` (byte-identik).
- `Understanding and Overcoming ... Quantization.pdf` **=** `... v2.pdf` **=** `Understanding and Overcoming the Challenges of.pdf` (tiga file, byte-identik). Di `bahan/` hanya disimpan satu.
- `abstrak_telyu.pdf` tidak punya lapisan teks (0 karakter) — kalau memang perlu, harus di-OCR.
- Beberapa file punya ukuran ekstraksi identik tapi isi berbeda (kebetulan), sudah dicek satu per satu lewat hash teks.

## Catatan

- Nama file di `bahan/` tidak diubah agar mudah dilacak kembali ke folder asal.
- Tabel review lengkap: `Tabel_Review_Bahan.md` (satu tabel per dokumen, berisi tujuan–metode–hasil + kutipan verbatim + lokasi bagian + status verifikasi).
```

<a id="f-bahan-justifikasi-sumber-tabel-review-bahan-md"></a>

## `bahan_justifikasi/sumber/Tabel_Review_Bahan.md`

Ukuran 59,165 byte &middot; 561 baris &middot; sha256 `208fdda9461e` &middot; encoding `utf-8-sig`

```markdown
# Tabel Review Bahan — Tujuan, Metode, Hasil + Kutipan Terverifikasi

Sumber: folder `bahan/` (32 dokumen). Setiap isi tabel disertai kutipan pendek verbatim dan lokasi bagiannya.

Aturan yang dipakai: bila informasi tidak ada di artikel, ditulis **tidak disebutkan** (tidak diisi dengan tebakan).
Setiap kutipan sudah diuji ulang secara mekanis terhadap teks hasil ekstraksi PDF (pencocokan string, case-insensitive); hasil uji ada di kolom *Verifikasi* tiap entri dan di rekap Lampiran 1.

Catatan lokasi: nomor halaman mengikuti halaman PDF (bukan nomor halaman jurnal). Kutipan sebagian besar diambil dari Abstrak karena di situlah penulis merumuskan tujuan–metode–hasil secara eksplisit; kutipan di luar abstrak diberi lokasi bagiannya.


## Ringkasan 32 dokumen

| No | File | Kelompok | Relevansi |
|---|---|---|---|
| 1 | A Survey of Quantization Methods for Efficient Neural Network Inference.pdf | A | PTQ + granularitas (layerwise/coarse vs channelwise/fine) |
| 2 | Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference.pdf | A | Dasar skema kuantisasi integer-only (rumus scale/zero-point) yang dipakai hampir semua PTQ |
| 3 | Q8BERT_ Quantized 8Bit BERT.pdf | A | Kuantisasi BERT (QAT saat fine-tuning) — pembanding PTQ |
| 4 | I BERT Integer only BERT Quantization.pdf | A | Kuantisasi BERT end-to-end (INT8, integer-only) — baseline penting untuk skema kuantisasi BERT |
| 5 | Understanding and Overcoming the Challenges of Efficient Transformer Quantization.pdf | A | INTI: tantangan kuantisasi Transformer + per-embedding-group (fine-grained) quantization |
| 6 | Accurate Post Training Quantization With Small Calibration Sets.pdf | B | PTQ (kalibrasi, optimasi per-layer) |
| 7 | On the Impact of Calibration Data in Post-training Quantization and Pruning.pdf | B | INTI: pengaruh data kalibrasi pada PTQ |
| 8 | Outliers and Calibration Sets have Diminishing Effect on Quantization of Modern LLMs.pdf | B | INTI: peran calibration set & outlier pada PTQ |
| 9 | Shang_Enhancing_Post-training_Quantization_Calibration_through_Contrastive_Learning_CVPR_2024_paper.pdf | B | INTI: metode kalibrasi PTQ (CL-Calib), granularitas W2A2 ekstrem |
| 10 | Stabilized activation scale estimation for precise PostTraining Quantization.pdf | B | PTQ: estimasi activation scale, target W2A4 |
| 11 | FPTQ - Fine-Grained Post-Training Quantization for Large Language Models.pdf | B | PTQ W4A8 + fine-grained weight quantization |
| 12 | Understanding INT4 Quantization for Language Models_ Latency Speedup, Composability, and Failure Cases.pdf | B | INTI: kelayakan INT4 W4A4 untuk model encoder (BERT) — dasar argumen kenapa encoder lebih toleran |
| 13 | When Flat Minima Fail_ Characterizing INT4 Quantization Collapse After FP32 Convergence.pdf | B | INTI: PTQ INT4 per-group gagal setelah model konvergen (fenomena collapse) |
| 14 | Can Less Precise Be More Reliable_ A Systematic Evaluation of Quantization's Impact on CLIP Beyond Accuracy.pdf | B | Evaluasi dampak PTQ/QAT di luar akurasi |
| 15 | Domain aware post training quantization for vision transformers in deployment.pdf | B | PTQ pada ViT, kondisi low-bit ekstrem + domain shift |
| 16 | Efficient Deep Neural Receiver with Post-Training Quantizatio.pdf | B | PTQ weight-only + perbandingan granularitas per-tensor (coarse) vs per-channel (fine) |
| 17 | How Quantization Shapes Bias in Large Language Models.pdf | B | Dampak kuantisasi bobot & aktivasi terhadap bias/fairness (evaluasi non-akurasi) |
| 18 | Quantization-aware training a tradeoff between training and.pdf | B | QAT vs fine-tuning domain-specific (biomedis) — pembanding biaya pelatihan |
| 19 | Binary and Ternary Natural Language Generation.pdf | C | Kuantisasi ternary/binary weight (ultra-low bit) pada Transformer |
| 20 | CAT-Q Cost-Efficient and Accurate Ternary Quantization for LLMs.pdf | C | PTQ ternary (weight-only ultra-low bit) + kalibrasi kecil |
| 21 | Sherry Hardware-Efficient 1.25-Bit Ternary Quantization via.pdf | C | Kuantisasi ternary weight + fine-grained sparsity (1.25-bit) |
| 22 | Tequila_ Trapping-free Ternary Quantization for Large Language Models.pdf | C | Kuantisasi ternary weight untuk LLM (menggantikan perkalian dengan penjumlahan) |
| 23 | TernaryBERT - Distillation-aware Ultra-low Bit BERT.pdf | C | INTI: kuantisasi ternary weight-only pada BERT + eksplorasi granularitas ternarisasi |
| 24 | The Era of 1-bit LLMs - All Large Language Models are in 1.58 Bits.pdf | C | Kuantisasi ternary (1.58-bit) weight-only, dilatih dari awal |
| 25 | Proposal Skripsi - Weight-Only Post-Training Quantization ResNet (Tafftadia).pdf | C | INTI: weight-only PTQ + granularitas per-channel + bit-packing (rancangan, hasil belum ada) |
| 26 | Implementing_Quantization_to_Indonesian_BERT_Language_Model.pdf | D | INTI: PTQ vs QAT pada IndoBERT, termasuk kasus ekstrem 4-bit |
| 27 | quantization effectson explainability in indonesian transformer based sentiment analysis.pdf | D | PTQ vs QAT pada IndoBERT (dampak ke stabilitas atribusi) |
| 28 | BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf | E | Model dasar (BERT) + task extractive QA (SQuAD) |
| 29 | Evaluating the Impact of Quantization on Indonesian Question Answering.pdf | E | INTI: PTQ pada QA berbahasa Indonesia + perbandingan extractive vs generative QA |
| 30 | FinBERT QA Financial Question Answering with pretrained  BERT Language Models.pdf | E | QA domain keuangan (answer selection/non-factoid, bukan span extraction) |
| 31 | IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf | E | Dataset/benchmark IndoNLU — memuat task FacQA (span extraction / extractive QA) |
| 32 | Deep Research Kuantisasi Weight-Only PTQ pada BERT.pdf | F | Weight-only PTQ + BERT + SQuAD (sumber sekunder, wajib diverifikasi ulang ke paper aslinya) |

---


## A. Survei & dasar kuantisasi (rumus, integer-only, QAT baseline)


### 1. A Survey of Quantization Methods for Efficient Neural Network Inference (Gholami et al., 2021)

**File:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`  
**Relevansi:** PTQ + granularitas (layerwise/coarse vs channelwise/fine)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menyurvei pendekatan kuantisasi nilai numerik pada komputasi neural network, termasuk kelebihan/kekurangannya. | “In this article, we survey approaches to the problem of quantizing the numerical values in deep Neural Network computations” | Abstrak/Abstract (hal. 1) |
| **Metode** | Tinjauan literatur dengan taksonomi; salah satu pembedanya adalah granularitas penentuan clipping range bobot (layerwise/coarse vs channelwise/fine). | “one differentiator for quantization methods is the granularity of how the clipping range” | Bagian E. Quantization Granularity (hal. 7) |
| **Hasil** | Representasi 4-bit atau kurang berpotensi memangkas memori dan latensi hingga 16x, dan reduksi 4x-8x umumnya tercapai dalam praktik; channelwise quantization disebut sebagai standar saat ini. | “reductions of 4x to 8x are often realized in practice in these applications” / “Channelwise quantization is currently the standard method used for quantizing convolutional kernels” | Abstrak/Abstract (hal. 1); Bagian E. Quantization Granularity (hal. 7) |

*Verifikasi:* kutipan 4/4 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 2. Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference (Jacob et al., 2018)

**File:** `Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference.pdf`  
**Relevansi:** Dasar skema kuantisasi integer-only (rumus scale/zero-point) yang dipakai hampir semua PTQ

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengusulkan skema kuantisasi yang memungkinkan inferensi hanya dengan aritmetika integer. | “We propose a quantization scheme that allows inference to be carried out using integer-only arithmetic” | Abstrak/Abstract (hal. 1) |
| **Metode** | Mendesain bersama prosedur pelatihan (QAT) agar akurasi end-to-end terjaga setelah kuantisasi. | “We also co-design a training procedure to preserve end-to-end model accuracy post quantization” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Skema yang diusulkan memperbaiki trade-off akurasi vs latensi on-device, terbukti pada MobileNets di ImageNet dan COCO. | “the proposed quantization scheme improves the tradeoff between accuracy and on-device latency” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 3. Q8BERT: Quantized 8Bit BERT (Zafrir et al., 2019)

**File:** `Q8BERT_ Quantized 8Bit BERT.pdf`  
**Relevansi:** Kuantisasi BERT (QAT saat fine-tuning) — pembanding PTQ

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Melakukan quantization-aware training saat fase fine-tuning BERT untuk mengompresi BERT 4x dengan kehilangan akurasi minimal. | “we show how to perform quantizationaware training during the fine-tuning phase of BERT in order to compress BERT by 4x with minimal accuracy loss” | Abstrak/Abstract (hal. 1) |
| **Metode** | QAT (fake quantization) disisipkan pada fase fine-tuning, sehingga model langsung siap untuk inferensi 8-bit integer. | “quantizationaware training during the fine-tuning phase of BERT” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Model terkuantisasi dapat mempercepat inferensi bila dioptimalkan untuk perangkat keras 8-bit integer; klaim kompresi 4x dengan kehilangan akurasi minimal. | “the produced quantized model can accelerate inference speed if it is optimized for 8bit Integer supporting hardware” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 4. I-BERT: Integer-only BERT Quantization (Kim et al., 2021)

**File:** `I BERT Integer only BERT Quantization.pdf`  
**Relevansi:** Kuantisasi BERT end-to-end (INT8, integer-only) — baseline penting untuk skema kuantisasi BERT

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengusulkan skema kuantisasi yang menjalankan seluruh inferensi Transformer dengan aritmetika integer saja. | “we propose I-BERT, a novel quantization scheme for Transformer based models that quantizes the entire inference with integer-only arithmetic” | Abstrak/Abstract (hal. 1) |
| **Metode** | Aproksimasi integer-only untuk operasi nonlinear (GELU, Softmax, LayerNorm) sehingga inferensi BERT bebas floating point. | “Based on lightweight integer-only approximation methods for nonlinear operations” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Akurasi setara atau sedikit lebih tinggi dibanding baseline full-precision pada GLUE, dengan speedup 2.4-4.0x untuk INT8 di GPU T4. | “achieves similar (and slightly higher) accuracy as compared to the full-precision baseline” / “shows a speedup of 2.4 − 4.0× for INT8 inference” | Abstrak/Abstract (hal. 1); Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 4/4 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 5. Understanding and Overcoming the Challenges of Efficient Transformer Quantization (Bondarenko et al., 2021)

**File:** `Understanding and Overcoming the Challenges of Efficient Transformer Quantization.pdf`  
**Relevansi:** INTI: tantangan kuantisasi Transformer + per-embedding-group (fine-grained) quantization

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengeksplorasi kuantisasi untuk Transformer dan mengidentifikasi tantangan khasnya. | “In this work, we explore quantization for transformers” | Abstrak/Abstract (hal. 1) |
| **Metode** | Mengusulkan skema per-embedding-group quantization, dengan tiga solusi berbasis PTQ dan QAT. | “per-embedding-group quantization” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Metode yang diusulkan efektif pada GLUE dengan BERT dan menetapkan hasil state-of-the-art untuk post-training quantization. | “We demonstrate the effectiveness of our methods on the GLUE benchmark using BERT, establishing state-of-the-art results for post-training quantization” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

## B. Post-training quantization: kalibrasi, granularitas, kasus gagal


### 6. Accurate Post Training Quantization With Small Calibration Sets (Hubara et al., 2021)

**File:** `Accurate Post Training Quantization With Small Calibration Sets.pdf`  
**Relevansi:** PTQ (kalibrasi, optimasi per-layer)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menembus batas 8-bit pada PTQ tanpa fine-tuning penuh, hanya dengan calibration set kecil. | “Here we aim to break the 8-bit barrier.” | Abstrak/Abstract (hal. 1) |
| **Metode** | Meminimalkan error kuantisasi tiap layer/blok secara terpisah dengan mengoptimasi parameternya pada calibration set (varian parallel & sequential + integer programming untuk alokasi bitwidth). | “we minimize the quantization errors of each layer or block separately by optimizing its parameters over the calibration set” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Pada ResNet50 degradasi akurasi <1% dengan bobot dan aktivasi 4-bit di semua layer kecuali layer pertama dan terakhir, dan dua orde lebih cepat daripada QAT. | “we obtain less than 1% accuracy degradation” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 7. On the Impact of Calibration Data in Post-training Quantization and Pruning (Williams & Aletras, 2024)

**File:** `On the Impact of Calibration Data in Post-training Quantization and Pruning.pdf`  
**Relevansi:** INTI: pengaruh data kalibrasi pada PTQ

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Studi empiris pertama yang sistematis tentang pengaruh data kalibrasi terhadap efektivitas kompresi model (kuantisasi dan pruning). | “we present the first extensive empirical study on the effect of calibration data upon LLM performance” | Abstrak/Abstract (hal. 1) |
| **Metode** | Menguji beragam metode kuantisasi dan pruning, dataset, task, serta model pada setting post-training. | “We trial a variety of quantization and pruning methods, datasets, tasks, and models” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Ditemukan variasi besar pada performa task downstream, berbeda dari klaim literatur sebelumnya bahwa metode tersebut cukup robust terhadap data kalibrasi. | “we find substantial variations in downstream task performance, contrasting existing work that suggests a greater level of robustness to the calibration data” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 8. Outliers and Calibration Sets have Diminishing Effect on Quantization of Modern LLMs (Paglieri et al., 2024)

**File:** `Outliers and Calibration Sets have Diminishing Effect on Quantization of Modern LLMs.pdf`  
**Relevansi:** INTI: peran calibration set & outlier pada PTQ

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Meneliti peran calibration set dalam PTQ. | “We explore the role of calibration sets in PTQ” | Abstrak/Abstract (hal. 1) |
| **Metode** | Menganalisis pengaruh calibration set terhadap hidden activation pada berbagai LLM open-source. | “their effect on hidden activations in various notable open-source LLMs” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Model lama (OPT) sangat rentan outlier dan kalibrasi; model baru seperti Llama-2 7B, Llama-3 8B, Command-R 35B, dan Mistral 7B jauh lebih robust, dengan Mistral 7B nyaris imun. | “newer models like Llama-2 7B, Llama-3 8B, Command-R 35B, and Mistral 7B demonstrate strong robustness” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 9. Enhancing Post-training Quantization Calibration through Contrastive Learning (Shang et al., CVPR 2024)

**File:** `Shang_Enhancing_Post-training_Quantization_Calibration_through_Contrastive_Learning_CVPR_2024_paper.pdf`  
**Relevansi:** INTI: metode kalibrasi PTQ (CL-Calib), granularitas W2A2 ekstrem

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Memasukkan metrik information-theoretic (mutual information) ke dalam kalibrasi PTQ untuk mengurangi degradasi informasi antara aktivasi FP dan terkuantisasi. | “we introduce a well-defined distributional metric from information theory, mutual information, into PTQ calibration” | Abstrak/Abstract (hal. 1) |
| **Metode** | Membangun framework contrastive learning untuk kalibrasi, di mana parameter kuantisasi dioptimasi lewat proxy task self-supervised. | “we establish a contrastive learning (CL) framework for the calibration, where the quantization parameters are optimized through a self-supervised proxy task” | Abstrak/Abstract (hal. 1) |
| **Hasil** | CL-Calib dapat dipasang sebagai modul tambahan dan meningkatkan performa semua metode PTQ yang diuji, termasuk setting ekstrem W2A2. | “CL-Calib can improve the performances of all the methods” | Bagian eksperimen (Add-on Module, Tabel 2) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 10. Stabilized activation scale estimation for precise Post-Training Quantization (Hao et al., 2024)

**File:** `Stabilized activation scale estimation for precise PostTraining Quantization.pdf`  
**Relevansi:** PTQ: estimasi activation scale, target W2A4

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengoreksi cara memperoleh activation scale pada PTQ yang dinilai kurang tepat sehingga bobot tidak cocok dengan aktivasi terkuantisasi. | “we find that the current way of obtaining the activation scale is not completely reasonable in PTQ” | Abstrak/Abstract (hal. 1) |
| **Metode** | Mengusulkan StablePTQ yang memperoleh activation scale stabil dan mencampur input kaya ke dalam block reconstruction; dapat dipakai sebagai plug-and-play. | “It obtains a stable activation scale and mixes rich input into the block reconstruction” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Peningkatan signifikan pada beberapa konfigurasi bit, terutama W2A4. | “StablePTQ achieves remarkable improvements in several different bit quantization especially W2A4” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 11. FPTQ: Fine-Grained Post-Training Quantization for Large Language Models (Li et al., 2023)

**File:** `FPTQ - Fine-Grained Post-Training Quantization for Large Language Models.pdf`  
**Relevansi:** PTQ W4A8 + fine-grained weight quantization

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengusulkan metode PTQ W4A8 yang menggabungkan keunggulan W8A8 dan W4A16 untuk LLM open-source. | “we propose a novel W4A8 post-training quantization method for the available open-sourced LLMs, which combines the advantages of both two recipes” | Abstrak/Abstract (hal. 1) |
| **Metode** | Kuantisasi aktivasi per-layer dengan logarithmic equalization untuk layer yang sulit, dikombinasikan dengan kuantisasi bobot fine-grained. | “we combine them with fine-grained weight quantization” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Tanpa fine-tuning tambahan, FPTQ mencapai performa W4A8 state-of-the-art pada BLOOM, LLaMA, dan LLaMA-2 di benchmark standar. | “we eliminate the necessity for further fine-tuning and obtain the state-of-the-art W4A8 quantized performance on BLOOM, LLaMA, and LLaMA-2” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 12. Understanding INT4 Quantization for Language Models: Latency Speedup, Composability, and Failure Cases (Wu et al., 2023)

**File:** `Understanding INT4 Quantization for Language Models_ Latency Speedup, Composability, and Failure Cases.pdf`  
**Relevansi:** INTI: kelayakan INT4 W4A4 untuk model encoder (BERT) — dasar argumen kenapa encoder lebih toleran

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menguji kelayakan kuantisasi INT4 untuk bobot dan aktivasi (W4A4) pada model bahasa. | “we explore the feasibility of employing INT4 weight and activation (W4A4) quantization for language models” | Abstrak/Abstract (hal. 1) |
| **Metode** | Membangun pipeline inferensi W4A4 end-to-end yang dioptimasi untuk encoder, mendukung beberapa strategi kuantisasi. | “we develop a highly-optimized end-to-end W4A4 encoder inference pipeline supporting different quantization strategies” | Abstrak/Abstract (hal. 1) |
| **Hasil** | W4A4 nyaris tanpa degradasi untuk model encoder-only dan encoder-decoder tetapi turun drastis pada decoder-only; pipeline INT4 8.5x lebih cepat (latency) dan hingga 3x (throughput) dibanding FP16. | “Our INT4 pipeline is 8.5× faster for latency-oriented scenarios and up to 3× for throughput-oriented scenarios compared to the inference of FP16” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 13. When Flat Minima Fail: Characterizing INT4 Quantization Collapse After FP32 Convergence (Armstrong, 2026)

**File:** `When Flat Minima Fail_ Characterizing INT4 Quantization Collapse After FP32 Convergence.pdf`  
**Relevansi:** INTI: PTQ INT4 per-group gagal setelah model konvergen (fenomena collapse)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menguji asumsi PTQ bahwa model yang sudah konvergen siap dikuantisasi, dan menunjukkan asumsi itu gagal. | “Post-training quantization (PTQ) assumes that a well-converged model is a quantization-ready model” | Abstrak/Abstract (hal. 1) |
| **Metode** | Probe INT4 per-group tanpa kalibrasi dijalankan pada seluruh 154 checkpoint pelatihan Pythia-160m yang tersedia publik. | “Using a calibration-free per-group INT4 probe applied to all 154 publicly available Pythia-160m training checkpoints” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Ditemukan tiga fase divergensi; pada fase ketiga gap INT4 membengkak dari 11% ke 517% sementara perplexity FP32 nyaris tidak berubah, dan INT8 sama sekali imun. | “the INT4 gap compounds from 11% to 517% while FP32 perplexity barely moves” / “INT8 quantization is entirely immune throughout all three phases” | Abstrak/Abstract (hal. 1); Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 4/4 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 14. Can Less Precise Be More Reliable? A Systematic Evaluation of Quantization's Impact on CLIP Beyond Accuracy (Bouguerra et al., 2025)

**File:** `Can Less Precise Be More Reliable_ A Systematic Evaluation of Quantization's Impact on CLIP Beyond Accuracy.pdf`  
**Relevansi:** Evaluasi dampak PTQ/QAT di luar akurasi

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengevaluasi dampak kuantisasi pada model CLIP tidak hanya dari akurasi in-distribution tetapi juga dari metrik reliabilitas. | “This work presents a large-scale evaluation of quantization on CLIP models” | Abstrak/Abstract (hal. 1) |
| **Metode** | Evaluasi skala besar atas beberapa metode kuantisasi dengan rangkaian metrik reliabilitas (kalibrasi, deteksi OOD) selain akurasi zero-shot. | “assessing not only in-distribution accuracy but a comprehensive suite of reliability metrics” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Kuantisasi konsisten memperbaiki kalibrasi pada model yang underconfident tetapi sering merusaknya pada model yang overconfident; sebagian metode QAT meningkatkan akurasi, kalibrasi, dan robustness OOD sekaligus. | “quantization consistently improves calibration for typically underconfident pre-trained models, while often degrading it for overconfident variants” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 15. Domain aware post training quantization for vision transformers in deployment (Wang et al., 2026)

**File:** `Domain aware post training quantization for vision transformers in deployment.pdf`  
**Relevansi:** PTQ pada ViT, kondisi low-bit ekstrem + domain shift

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengatasi dua masalah sekaligus: kompresi ekstrem dan domain shift pada ViT saat deployment melalui metode PTQ yang sadar domain. | “this paper introduces a novel Domain Aware Post-training Quantization (DAQuant) approach that simultaneously tackles extreme model compression and domain adaptation for ViTs in deployment” | Abstrak/Abstract (hal. 1) |
| **Metode** | Distribution-aware smoothing dengan Learnable Activation Clipping (LAC) untuk meredam outlier, ditambah strategi domain alignment. | “a distribution-aware smoothing method with Learnable Activation Clipping (LAC) to mitigate the effects of outliers” | Abstrak/Abstract (hal. 1) |
| **Hasil** | DAQuant mengungguli metode kuantisasi yang ada secara signifikan, baik pada error kuantisasi maupun kapasitas generalisasi, termasuk pada skenario deployment perangkat nyata. | “DAQuant demonstrates superior performance in both quantization error and generalization capacity” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 16. Efficient Deep Neural Receiver with Post-Training Quantization (Yellapragada et al., 2025)

**File:** `Efficient Deep Neural Receiver with Post-Training Quantizatio.pdf`  
**Relevansi:** PTQ weight-only + perbandingan granularitas per-tensor (coarse) vs per-channel (fine)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengurangi kompleksitas model neural receiver dengan menurunkan bit-width bobot memakai PTQ. | “we focus on PTQ to reduce model complexity by lowering the bit-width of weights” | Abstrak/Abstract (hal. 1) |
| **Metode** | Kuantisasi uniform simetris, membandingkan PTQ per-tensor dan per-channel. | “Our analysis employs symmetric uniform quantization, applying both per-tensor and per-channel PTQ to a neural receiver” | Abstrak/Abstract (hal. 1) |
| **Hasil** | PTQ 8-bit per-channel mempertahankan kinerja BLER dengan degradasi minimal, sedangkan 4-bit menjanjikan tetapi masih butuh optimasi lanjutan. | “8-bit per-channel quantization maintains BLER performance with minimal degradation, while 4-bit quantization shows great promise but requires further optimization” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 17. How Quantization Shapes Bias in Large Language Models (Marcuzzi et al., 2025)

**File:** `How Quantization Shapes Bias in Large Language Models.pdf`  
**Relevansi:** Dampak kuantisasi bobot & aktivasi terhadap bias/fairness (evaluasi non-akurasi)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengevaluasi secara komprehensif bagaimana kuantisasi memengaruhi bias model, termasuk pada subkelompok demografis. | “This work presents a comprehensive evaluation of how quantization affects model bias” | Abstrak/Abstract (hal. 1) |
| **Metode** | Membandingkan strategi kuantisasi bobot dan aktivasi pada 13 benchmark, memakai metrik berbasis probabilitas maupun teks yang dihasilkan. | “across 13 benchmarks and evaluate models that differ in architecture family and reasoning ability” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Kuantisasi dapat menurunkan toksisitas dan tidak berdampak signifikan pada sentimen, tetapi cenderung sedikit meningkatkan stereotip dan unfairness pada task generatif, terutama pada kompresi agresif. | “while it can reduce model toxicity and does not significantly impact sentiment, it tends to slightly increase stereotypes and unfairness in generative tasks” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 18. Quantization-aware training: a tradeoff between training and fine-tuning for domain-specific language models (Pillet et al., 2025)

**File:** `Quantization-aware training a tradeoff between training and.pdf`  
**Relevansi:** QAT vs fine-tuning domain-specific (biomedis) — pembanding biaya pelatihan

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Meneliti biaya pelatihan pada model bahasa yang di-fine-tune dan dikuantisasi. | “we investigate the training cost of finetuned and quantized language models” | Abstrak/Abstract (hal. 2) |
| **Metode** | Memformalkan trade-off komputasi antara domain adaptation dan fine-tuning, lalu membandingkan robustness checkpoint hasil fine-tuning domain terhadap noise kuantisasi. | “By formalizing the computational trade-off between domain adaptation and fine-tuning” | Abstrak/Abstract (hal. 2) |
| **Hasil** | Checkpoint yang terspesialisasi pada domain lebih robust terhadap noise kuantisasi. | “domainspecialized checkpoints exhibit greater robustness to quantization noise” | Abstrak/Abstract (hal. 2) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

## C. Weight-only / ternary / ultra-low bit


### 19. Binary and Ternary Natural Language Generation (Liu et al., 2022)

**File:** `Binary and Ternary Natural Language Generation.pdf`  
**Relevansi:** Kuantisasi ternary/binary weight (ultra-low bit) pada Transformer

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mendemonstrasikan model Transformer ternary dan binary pertama pada task summarization dan machine translation. | “demonstrate the first ternary and binary transformer models on the downstream tasks of summarization and machine translation” | Abstrak/Abstract (hal. 1) |
| **Metode** | Kombinasi kuantisasi bobot berbasis statistik dan kuantisasi aktivasi yang elastis. | “a mix of statistics-based quantization for the weights and elastic quantization of the activations” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Ternary BART base mencapai R1 41 pada CNN/DailyMail (hanya 3.9 poin di bawah model penuh) dengan efisiensi 16x; model binary mencapai 35.6. | “Our ternary BART base achieves an R1 score of 41 on the CNN/DailyMail benchmark, which is merely 3.9 points behind the full model while being 16x more efficient” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 20. CAT-Q: Cost-efficient and Accurate Ternary Quantization for LLMs (Wang et al., 2026)

**File:** `CAT-Q Cost-Efficient and Accurate Ternary Quantization for LLMs.pdf`  
**Relevansi:** PTQ ternary (weight-only ultra-low bit) + kalibrasi kecil

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengusulkan skema PTQ ternary yang murah dan akurat untuk LLM, sebagai alternatif QAT yang mahal. | “CAT-Q is a simple yet effective post-training quantization scheme that is readily applicable to LLMs with diverse architectures and model sizes” | Abstrak/Abstract (hal. 1) |
| **Metode** | Dua komponen: learnable modulation (LM) dan softened ternarization (ST) yang digabung dari sisi optimasi, dengan 512 sampel kalibrasi. | “It has two key components, learnable modulation (LM) and softened ternarization (ST), which are coupled from an optimization perspective” | Abstrak/Abstract (hal. 1) |
| **Hasil** | LLM 1.7B-8B dapat dikuantisasi ternary hanya dengan 512 sampel kalibrasi dan mengungguli BitNet 1.58-bit v1/v2 yang dilatih 100B token; model 14B-235B selesai dalam 8-60 jam di 8xA100. | “CAT-Q can efficiently quantize them into ternary models using only 512 calibration samples” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 21. Sherry: Hardware-Efficient 1.25-Bit Ternary Quantization via Fine-grained Sparsification (Huang et al., 2026)

**File:** `Sherry Hardware-Efficient 1.25-Bit Ternary Quantization via.pdf`  
**Relevansi:** Kuantisasi ternary weight + fine-grained sparsity (1.25-bit)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengusulkan framework kuantisasi ternary yang efisien di perangkat keras, menjembatani packing 2-bit dan 1.67-bit. | “we propose Sherry, a hardware-efficient ternary quantization framework” | Abstrak/Abstract (hal. 1) |
| **Metode** | Fine-grained sparsity 3:4 yang menghasilkan lebar 1.25-bit dengan memadatkan blok empat bobot ke lima bit, plus mekanisme Arenas untuk mencegah weight trapping. | “Sherry introduces a 3:4 fine-grained sparsity that achieves a regularized 1.25-bit width by packing blocks of four weights into five bits” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Pada LLaMA-3.2 di lima benchmark, Sherry menyamai performa ternary SOTA; model 1B-nya tanpa kehilangan akurasi dibanding baseline SOTA sekaligus hemat 25% bit dan 10% lebih cepat. | “our 1B model achieves zero accuracy loss compared to SOTA baselines while providing 25% bit savings and 10% speed up” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 22. Tequila: Trapping-free Ternary Quantization for Large Language Models (Huang et al., 2025)

**File:** `Tequila_ Trapping-free Ternary Quantization for Large Language Models.pdf`  
**Relevansi:** Kuantisasi ternary weight untuk LLM (menggantikan perkalian dengan penjumlahan)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengusulkan metode optimasi kuantisasi ternary yang membebaskan bobot dari deadzone trapping. | “we propose Tequila, a trapping-free quantization optimization method that reactivates deadzone-trapped weights by repurposing them as dynamic biases” | Abstrak/Abstract (hal. 1) |
| **Metode** | Mengidentifikasi deadzone trapping sebagai akar masalah degradasi, lalu memfungsikan ulang bobot yang terjebak sebagai dynamic bias agar menerima gradien langsung. | “We identify the core issue as deadzone trapping” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Tequila mengungguli metode ternary SOTA di lima benchmark; pada ARC naik >4% dari baseline SOTA, mendekati full-precision (selisih <1%) dengan speedup 3.0x. | “it achieves > 4% accuracy gain over the SOTA baseline, nearly matching full-precision performance” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 23. TernaryBERT: Distillation-aware Ultra-low Bit BERT (Zhang et al., 2020)

**File:** `TernaryBERT - Distillation-aware Ultra-low Bit BERT.pdf`  
**Relevansi:** INTI: kuantisasi ternary weight-only pada BERT + eksplorasi granularitas ternarisasi

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menghadirkan TernaryBERT yang menternarisasi bobot model BERT yang sudah di-fine-tune. | “we propose TernaryBERT, which ternarizes the weights in a fine-tuned BERT model” | Abstrak/Abstract (hal. 1) |
| **Metode** | Kombinasi metode ternarisasi berbasis aproksimasi dan loss-aware, ditambah investigasi empiris granularitas ternarisasi untuk bagian-bagian BERT, serta knowledge distillation. | “we use both approximation-based and loss-aware ternarization methods and empirically investigate the ternarization granularity of different parts of BERT” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Mengungguli metode kuantisasi BERT lain pada GLUE dan SQuAD, bahkan setara model full-precision dengan ukuran 14.9x lebih kecil. | “our proposed TernaryBERT outperforms the other BERT quantization methods, and even achieves comparable performance as the fullprecision model while being 14.9x smaller” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 24. The Era of 1-bit LLMs: All Large Language Models are in 1.58 Bits (Ma et al., 2024)

**File:** `The Era of 1-bit LLMs - All Large Language Models are in 1.58 Bits.pdf`  
**Relevansi:** Kuantisasi ternary (1.58-bit) weight-only, dilatih dari awal

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Memperkenalkan varian LLM 1-bit, BitNet b1.58, yang seluruh parameternya ternary {-1, 0, 1}. | “we introduce a 1-bit LLM variant, namely BitNet b1.58, in which every single parameter (or weight) of the LLM is ternary {-1, 0, 1}” | Abstrak/Abstract (hal. 1) |
| **Metode** | Model dilatih dari awal dengan bobot 1.58-bit dan aktivasi 8-bit di atas arsitektur BitNet (BitLinear), memakai fungsi kuantisasi absmean. | “It is trained from scratch, with 1.58-bit weights and 8-bit activations” | Bagian 2 BitNet b1.58 (hal. 2) |
| **Hasil** | Menyamai LLM Transformer full-precision berukuran dan berjumlah token latih sama pada perplexity dan performa task, dengan latensi, memori, throughput, dan energi yang jauh lebih efisien. | “It matches the full-precision (i.e., FP16 or BF16) Transformer LLM with the same model size and training tokens in terms of both perplexity and end-task performance” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 25. Proposal Skripsi: Weight-Only Post-Training Quantization untuk Image Classification Berbasis ResNet (Imada, 2026)

**File:** `Proposal Skripsi - Weight-Only Post-Training Quantization ResNet (Tafftadia).pdf`  
**Relevansi:** INTI: weight-only PTQ + granularitas per-channel + bit-packing (rancangan, hasil belum ada)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menerapkan skema Weight-Only INT4 PTQ uniform dengan granularitas per-channel dan bit-packing pada ResNet-50. | “Penelitian ini menerapkan skema Weight-Only INT4 PTQ uniform dengan granularitas per-channel dan bit-packing pada ResNet-50” | Abstrak/Abstract (hal. 7) |
| **Metode** | Transfer learning dari bobot pralatih ImageNet-1K, dibandingkan terhadap baseline FP16 pada empat metrik performa dan tiga metrik efisiensi, dengan uji signifikansi (McNemar, bootstrap, paired t-test, Wilcoxon). | “melalui transfer learning dari bobot pralatih ImageNet1K dibandingkan terhadap baseline FP16 pada empat metrik performa” | Abstrak/Abstract (hal. 7) |
| **Hasil** | tidak disebutkan — dokumen ini proposal (Bab I-III), belum memuat hasil penelitian; yang ada hanya luaran yang diharapkan. | “Hasilnya berupa karakterisasi trade-off akurasi-efisiensi yang teruji signifikansinya” | Abstrak/Abstract (hal. 7) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

> Dokumen ini **proposal skripsi** (Bab I–III), belum ada hasil penelitian. Baris *Hasil* sengaja ditulis **tidak disebutkan**; kutipan yang disertakan hanya menyatakan luaran yang diharapkan.

## D. Kuantisasi pada model bahasa Indonesia (IndoBERT)


### 26. Implementing Quantization to Indonesian BERT Language Model (Abdurrahman et al., 2023)

**File:** `Implementing_Quantization_to_Indonesian_BERT_Language_Model.pdf`  
**Relevansi:** INTI: PTQ vs QAT pada IndoBERT, termasuk kasus ekstrem 4-bit

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengevaluasi teknik kompresi kuantisasi pada IndoBERT, karena evaluasi semacam ini masih minim untuk bahasa Indonesia. | “this paper evaluates compression techniques through quantization for an Indonesian version of the BERT model, namely IndoBERT” | Abstrak/Abstract (hal. 1) |
| **Metode** | Eksperimen pada 7 task downstream IndoBERT, membandingkan model terkuantisasi dengan model full precision. | “Experiments on 7 downstream tasks” | Abstrak/Abstract (hal. 1) |
| **Hasil** | PTQ mengalami degradasi besar pada kasus ekstrem (4-bit dan sequence labeling), sedangkan QAT efektif dan efisien di berbagai kedalaman bit. | “we observe a huge degradation in extreme cases such as 4-bit quantization and sequence labeling tasks when using post-training quantization” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 27. Quantization Effects on Explainability in Indonesian Transformer-Based Sentiment Analysis (Sajaya et al., 2026)

**File:** `quantization effectson explainability in indonesian transformer based sentiment analysis.pdf`  
**Relevansi:** PTQ vs QAT pada IndoBERT (dampak ke stabilitas atribusi)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mempelajari bagaimana kompresi (PTQ dan QAT pada FP16, INT8, INT4) memengaruhi penjelasan post-hoc model IndoBERT untuk klasifikasi sentimen tiga kelas. | “We study this on IndoBERT fine-tuned for three-class Indonesian sentiment classification, comparing post-training quantization (PTQ) and quantization-aware training (QAT) at FP16, INT8, and INT4” | Abstrak/Abstract (hal. 1) |
| **Metode** | Penjelasan dievaluasi dengan lima metode atribusi berbasis gradien dan perturbasi, masing-masing pada tiga random seed. | “Explanations are evaluated with five gradient-based and perturbation-based attribution methods over three random seeds” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Akurasi nyaris tidak berubah (dalam 0.4 poin persentase), tetapi stabilitas atribusi lebih ditentukan jalur kompresi (PTQ vs QAT) daripada bit-width. | “Accuracy barely moves, staying within 0.4 percentage points across all variants, but attribution stability turns out to depend on the compression pathway rather than the bit-width” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

## E. Extractive QA & dataset


### 28. BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding (Devlin et al., 2019)

**File:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`  
**Relevansi:** Model dasar (BERT) + task extractive QA (SQuAD)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Memperkenalkan model representasi bahasa BERT yang dipralatih secara bidirectional dari teks tanpa label. | “We introduce a new language representation model called BERT” | Abstrak/Abstract (hal. 1) |
| **Metode** | Pre-training bidirectional (masked LM) lalu fine-tuning dengan satu layer output tambahan untuk berbagai task, termasuk question answering. | “the pre-trained BERT model can be finetuned with just one additional output layer” | Abstrak/Abstract (hal. 1) |
| **Hasil** | State-of-the-art pada 11 task NLP, antara lain F1 SQuAD v1.1 naik ke 93.2 dan SQuAD v2.0 ke 83.1. | “SQuAD v1.1 question answering Test F1 to 93.2” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 29. Evaluating the Impact of Quantization on Indonesian Question Answering Performance in Large Language Models (Ramaputra & Joddy, 2026)

**File:** `Evaluating the Impact of Quantization on Indonesian Question Answering.pdf`  
**Relevansi:** INTI: PTQ pada QA berbahasa Indonesia + perbandingan extractive vs generative QA

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menyelidiki dampak post-training quantization terhadap performa question answering berbahasa Indonesia pada LLM. | “This study investigates how post-training quantization affects Indonesian question answering performance in LLMs” | Abstrak/Abstract (hal. 1) |
| **Metode** | Evaluasi beberapa ukuran model dari dua keluarga LLM dengan presisi 8-bit dan 4-bit memakai metode AWQ dan GPTQ, mengukur kualitas jawaban dan efisiensi inferensi. | “specifically 8-bit and 4-bit precision using AWQ and GPTQ methods” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Kuantisasi memengaruhi QA extractive dan generative secara berbeda, dengan task generative lebih robust; 8-bit relatif setara model asli, 4-bit lebih cepat tetapi penurunan performa lebih terasa. | “quantization impacts extractive and generative QA differently, with generative tasks showing greater robustness” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

> Paling dekat dengan topik skripsi: PTQ pada QA berbahasa Indonesia, dan secara eksplisit membedakan QA *extractive* vs *generative*.

### 30. FinBERT-QA: Financial Question Answering with pre-trained BERT Language Models (Yuan, 2020)

**File:** `FinBERT QA Financial Question Answering with pretrained  BERT Language Models.pdf`  
**Relevansi:** QA domain keuangan (answer selection/non-factoid, bukan span extraction)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Membangun sistem QA finansial berbasis BERT untuk mengatasi keterbatasan data dan kekhasan bahasa domain keuangan. | “we propose a novel financial QA system using the Transformer-based pre-trained BERT language model to solve the limitations of data scarcity and language specificity in the financial domain” | Abstrak/Abstract (hal. 4) |
| **Metode** | Merumuskan answer selection sebagai masalah re-ranking: retriever BM25 mengambil kandidat, lalu re-ranker berbasis varian BERT memilih jawaban paling relevan. | “we formulate the answer selection task as a re-ranking problem” | Abstrak/Abstract (hal. 4) |
| **Hasil** | FinBERT-QA meningkatkan state-of-the-art pada task 2 dataset FiQA sebesar 16% MRR, 17% NDCG, dan 21% Precision@1. | “it improves the state-of-the-art results of task 2 of the FiQA dataset by 16% on MRR, 17% on NDCG, and 21% on Precision@1” | Abstrak/Abstract (hal. 4) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 31. IndoNLU: Benchmark and Resources for Evaluating Indonesian Natural Language Understanding (Wilie et al., 2020)

**File:** `IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf`  
**Relevansi:** Dataset/benchmark IndoNLU — memuat task FacQA (span extraction / extractive QA)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menyediakan resource besar pertama untuk pelatihan, evaluasi, dan benchmarking task NLU berbahasa Indonesia. | “we introduce the first-ever vast resource for training, evaluation, and benchmarking on Indonesian natural language understanding (IndoNLU) tasks” | Abstrak/Abstract (hal. 1) |
| **Metode** | 12 task (dari klasifikasi satu kalimat sampai sequence labeling pasangan kalimat) plus model pralatih IndoBERT dari korpus Indo4B, lengkap dengan baseline dan framework evaluasi. | “IndoNLU includes twelve tasks, ranging from single sentence classification to pair-sentences sequence labeling” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Pada task sequence labeling, model multilingual (XLM-R) cenderung lebih baik daripada model monolingual, dan jauh lebih baik pada NERGrit dan FacQA. | “multilingual models tend to perform better compared to monolingual models and even perform much better on the NERGrit and FacQA tasks” | Bagian Hasil (pembahasan Tabel 22 / Results on IndoNLU Benchmark) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

> Task FacQA di IndoNLU adalah *span extraction* (jawaban berupa frasa di dalam passage) — ini yang relevan sebagai extractive QA berbahasa Indonesia.

## F. Catatan riset sekunder (bukan paper peer-review)


### 32. Deep Research: Kuantisasi Weight-Only PTQ pada BERT (catatan riset, bukan paper peer-review)

**File:** `Deep Research Kuantisasi Weight-Only PTQ pada BERT.pdf`  
**Relevansi:** Weight-only PTQ + BERT + SQuAD (sumber sekunder, wajib diverifikasi ulang ke paper aslinya)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengidentifikasi paper yang memenuhi kriteria ketat weight-only PTQ pada BERT dengan evaluasi SQuAD (tujuan tidak ditulis sebagai kalimat tujuan, melainkan dinyatakan lewat TL;DR hasil pencarian). | “We found only one strong paper (Mokey 2022) that meets strict weight-only PTQ on BERT with SQuAD evaluation” | Halaman 1 (bagian TL;DR catatan) |
| **Metode** | Penelusuran pustaka dan penyusunan tabel perbandingan berisi judul, penulis, tautan, metode, bit-width, serta model/dataset yang dipakai. | “We summarize each below with full details (titles, authors, links, methods, bit-widths, model/dataset usage)” | Halaman 1 (ringkasan isi catatan) |
| **Hasil** | Hanya Mokey (ISCA 2022) yang dinilai memenuhi kriteria ketat; tidak ditemukan paper weight-only PTQ khusus pada dataset FaCQA berbahasa Indonesia. | “no papers were found that do weight-only PTQ specifically on the Indonesian FaCQA dataset” | Halaman 1 (bagian Executive Summary) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

> **Bukan paper peer-review.** Ini catatan riset sekunder (jawaban model bahasa atas penelusuran pustaka). Klaimnya (mis. Mokey ISCA 2022 satu-satunya yang memenuhi kriteria) harus diverifikasi ke paper aslinya sebelum dikutip di skripsi.

---

---

## Lampiran 1 — Rekap uji kutipan (step 3)

Uji dilakukan ulang secara mekanis: setiap kutipan dicari sebagai substring pada teks hasil ekstraksi PDF (spasi dinormalisasi, case-insensitive). Kolom *Konsistensi* = hasil pembacaan ulang kalimat penulis di sekitar kutipan (apakah isi tabel benar-benar sesuai dengan maksud penulis, bukan sekadar kutipan yang ada).

| No | Dokumen (singkat) | Kutipan | Ditemukan verbatim | Konsistensi isi tabel |
|---|---|---|---|---|
| 1 | A Survey of Quantization Methods for Efficient Neura | 4 | 4/4 | sesuai |
| 2 | Quantization and Training of Neural Networks for Eff | 3 | 3/3 | sesuai |
| 3 | Q8BERT: Quantized 8Bit BERT | 3 | 3/3 | sesuai |
| 4 | I-BERT: Integer-only BERT Quantization | 4 | 4/4 | sesuai |
| 5 | Understanding and Overcoming the Challenges of Effic | 3 | 3/3 | sesuai |
| 6 | Accurate Post Training Quantization With Small Calib | 3 | 3/3 | sesuai |
| 7 | On the Impact of Calibration Data in Post-training Q | 3 | 3/3 | sesuai |
| 8 | Outliers and Calibration Sets have Diminishing Effec | 3 | 3/3 | sesuai |
| 9 | Enhancing Post-training Quantization Calibration thr | 3 | 3/3 | sesuai |
| 10 | Stabilized activation scale estimation for precise P | 3 | 3/3 | sesuai |
| 11 | FPTQ: Fine-Grained Post-Training Quantization for La | 3 | 3/3 | sesuai |
| 12 | Understanding INT4 Quantization for Language Models: | 3 | 3/3 | sesuai |
| 13 | When Flat Minima Fail: Characterizing INT4 Quantizat | 4 | 4/4 | sesuai |
| 14 | Can Less Precise Be More Reliable? A Systematic Eval | 3 | 3/3 | sesuai |
| 15 | Domain aware post training quantization for vision t | 3 | 3/3 | sesuai |
| 16 | Efficient Deep Neural Receiver with Post-Training Qu | 3 | 3/3 | sesuai |
| 17 | How Quantization Shapes Bias in Large Language Model | 3 | 3/3 | sesuai |
| 18 | Quantization-aware training: a tradeoff between trai | 3 | 3/3 | sesuai |
| 19 | Binary and Ternary Natural Language Generation | 3 | 3/3 | sesuai |
| 20 | CAT-Q: Cost-efficient and Accurate Ternary Quantizat | 3 | 3/3 | sesuai |
| 21 | Sherry: Hardware-Efficient 1.25-Bit Ternary Quantiza | 3 | 3/3 | sesuai |
| 22 | Tequila: Trapping-free Ternary Quantization for Larg | 3 | 3/3 | sesuai |
| 23 | TernaryBERT: Distillation-aware Ultra-low Bit BERT | 3 | 3/3 | sesuai |
| 24 | The Era of 1-bit LLMs: All Large Language Models are | 3 | 3/3 | sesuai |
| 25 | Proposal Skripsi: Weight-Only Post-Training Quantiza | 3 | 3/3 | sesuai |
| 26 | Implementing Quantization to Indonesian BERT Languag | 3 | 3/3 | sesuai |
| 27 | Quantization Effects on Explainability in Indonesian | 3 | 3/3 | sesuai |
| 28 | BERT: Pre-training of Deep Bidirectional Transformer | 3 | 3/3 | sesuai |
| 29 | Evaluating the Impact of Quantization on Indonesian  | 3 | 3/3 | sesuai |
| 30 | FinBERT-QA: Financial Question Answering with pre-tr | 3 | 3/3 | sesuai |
| 31 | IndoNLU: Benchmark and Resources for Evaluating Indo | 3 | 3/3 | sesuai |
| 32 | Deep Research: Kuantisasi Weight-Only PTQ pada BERT | 3 | 3/3 | sesuai |

**Total: 99 kutipan pada 32 dokumen — semuanya ditemukan verbatim.**


## Lampiran 2 — Perbaikan yang dilakukan sebelum tabel dipakai (step 3)

Ini daftar hal yang **salah/tidak didukung** pada draf pertama dan sudah diperbaiki. Tanpa perbaikan ini, tabel tidak layak dipakai.

| Lokasi | Masalah yang ditemukan | Perbaikan |
|---|---|---|
| p03 — Hasil | Klaim “channelwise quantization adalah standar saat ini” tidak didukung kutipan yang dipakai (kutipan itu hanya bicara reduksi 4x–8x). | Ditambah kutipan kedua “Channelwise quantization is currently the standard method used for quantizing convolutional kernels” + lokasi Bagian E. Quantization Granularity. |
| p03 — Metode, p59 — Metode, p24 — semua baris | Deteksi otomatis judul bagian gagal pada PDF dua kolom (muncul label sampah seperti “127 −128”, “New Hardware”). | Lokasi bagian ditetapkan manual: “Bagian E. Quantization Granularity (hal. 7)”, “Bagian 2 BitNet b1.58 (hal. 2)”, “Halaman 1 (TL;DR / Executive Summary)”. |
| p16 — Tujuan | Kutipan awal “we demonstrate the first ternary and binary transformer models…” tidak ada di teks (penulis menulis “…and demonstrate the first…”). | Kutipan diganti bentuk verbatim yang benar. |
| p42 — Metode | Kutipan yang dipakai berbunyi “Experiments on 7 downstream tasks show a similar trend…” — itu pernyataan hasil, bukan metode, sehingga tidak sah jadi bukti metode. | Kutipan dipersempit jadi “Experiments on 7 downstream tasks”; isi metode dipersempit agar tidak mengklaim hal di luar kutipan (perbandingan PTQ vs QAT dipindah ke baris Hasil). |
| p50 — Hasil | Isi memuat klaim “penurunan akurasi <1% pada GLUE” yang tidak ada di abstrak/kutipan. | Klaim dihapus; isi dibatasi pada apa yang benar-benar ditulis penulis (kompresi 4x, kehilangan akurasi minimal, percepatan inferensi pada perangkat 8-bit). |
| p41 — Hasil | Kutipan speedup terpotong di tengah angka (“shows a speedup of 2.4”). | Dilengkapi: “shows a speedup of 2.4 − 4.0× for INT8 inference”. |
| p65 — Hasil | Isi menyebut “INT8 sama sekali imun” tanpa kutipan pendukung. | Ditambah kutipan “INT8 quantization is entirely immune throughout all three phases”. |
| p49 — Hasil | Draf awal mengisi hasil dengan angka, padahal dokumen ini proposal (Bab I–III) tanpa hasil. | Diubah menjadi **tidak disebutkan** + penjelasan, dan kutipan yang disertakan hanya menyatakan luaran yang diharapkan. |
| p24 — Tujuan | Tujuan ditulis seolah diklaim eksplisit oleh penulis, padahal catatan ini tidak punya kalimat tujuan; isinya TL;DR hasil pencarian. | Isi disesuaikan dan diberi keterangan bahwa tujuan hanya tersirat dari TL;DR; dokumen juga ditandai bukan paper peer-review. |
| p14 — Tujuan | Kutipan tidak cocok karena beda kapitalisasi awal kalimat. | Kutipan disamakan dengan bentuk asli di teks. |

## Lampiran 3 — Keterbatasan yang perlu kamu tahu

- **Sebagian besar kutipan berasal dari Abstrak.** Itu pilihan sadar: abstrak adalah tempat penulis merumuskan tujuan–metode–hasil paling padat, sehingga risiko salah tafsir paling kecil. Kalau butuh kutipan dari bagian Metode/Hasil (mis. angka per-tabel), bilang saja — saya tarik dari bagian spesifiknya.
- **Lokasi halaman = halaman PDF**, bukan halaman jurnal. Kalau dipakai di skripsi, cocokkan dulu dengan penomoran terbitan.
- **Dua dokumen bukan artikel penelitian:** p24 (catatan riset sekunder, bukan peer-review) dan p49 (proposal skripsi orang lain, belum ada hasil). Keduanya diberi tanda.
- **Tabel belum disusun sebagai sintesis.** Ini tabel per-dokumen (ekstraksi). Tabel sintesis “penelitian terdahulu” (dikelompokkan per tema: PTQ vs QAT, weight-only, granularitas) bisa saya susun terpisah dari data yang sama.
```

<a id="f-bahan-justifikasi-verifikasi-penelitian-terdahulu-md"></a>

## `bahan_justifikasi/verifikasi_penelitian_terdahulu.md`

Ukuran 7,264 byte &middot; 82 baris &middot; sha256 `9b44091ddc8a` &middot; encoding `utf-8-sig`

```markdown
# Verifikasi Penelitian Terdahulu (Tabel 2.3)

Dicek 24 Oktober 2026. Dua syarat yang diuji: **(a) disitasi minimal 5 penelitian lain**, dan **(b) konteks metode/dataset/metrik sesuai** dengan skripsi (weight-only PTQ pada encoder/QA, metrik EM–F1).

Sumber angka sitasi: **Crossref** (`is-referenced-by-count`, diakses per DOI) dan **OpenAlex** (`cited_by_count`) sebagai pembanding. Google Scholar tidak dapat diakses otomatis dari lingkungan ini; angkanya biasanya lebih tinggi daripada kedua sumber tersebut, jadi angka di bawah adalah batas bawah.

## 1. Ringkasan

| No | Referensi | Tahun | Sitasi | Lolos (a) ≥5 | Konteks (b) | Lolos (b) |
|---|---|---:|---|---|---|---|
| 1 | Zadeh dkk. (Mokey) | 2022 | **36** (Crossref) | ✅ | BERT + SQuAD v1.1, weight-only 4-bit, F1 | ✅ |
| 2 | Bai dkk. (MREM) | 2022 | **9** (Crossref) | ✅ | PLM (BERT) + GLUE & SQuAD, PTQ, EM/F1 | ✅ |
| 3 | Guo dkk. (OliVe) | 2023 | **154** (Crossref) | ✅ | BERT/BART + GLUE & SQuAD v1.1/v2.0, PTQ 4-bit | ✅ (cakupan bobot+aktivasi) |
| 4 | Wei dkk. (Outlier Suppression) | 2022 | **14** (Crossref) | ✅ | BERT/RoBERTa/BART + GLUE & SQuAD, PTQ 6-bit | ✅ (cakupan bobot+aktivasi) |
| 5 | Kim dkk. (I-BERT) | 2021 | **186** (OpenAlex) | ✅ | BERT + GLUE, INT8 integer-only | ⚠️ encoder, tanpa QA |
| 6 | Bondarenko dkk. | 2021 | **72** (Crossref) | ✅ | BERT + GLUE, PTQ/QAT, per-embedding-group | ⚠️ encoder, tanpa QA |
| 7 | Abdurrahman dkk. | 2023 | **1** (Crossref) | ❌ | IndoBERT + 7 tugas IndoNLU (FacQA = span extraction), F1 | ✅ |
| 8 | Ramaputra & Joddy | 2026 | **0** (Crossref, DOI 10.1016/j.procs.2026.08.289) | ❌ | SQuAD-id, W4A16 AWQ/GPTQ, EM/F1 | ✅ (model decoder-only) |

**Kesimpulan:** 6 dari 8 baris lolos syarat sitasi; 2 baris (Abdurrahman, Ramaputra) tidak, dan keduanya sudah diberi tanda †. Empat baris lolos kedua syarat sekaligus (No. 1–4). Dua baris lolos sitasi tetapi konteks tugasnya hanya GLUE (No. 5–6); keduanya dipertahankan karena menjadi dasar teori encoder dan granularitas, dan kolom "Dataset dan Tugas" sudah menyebut GLUE secara eksplisit sehingga tidak menyesatkan pembaca.

## 2. Bukti konteks per baris

### No. 1 — Zadeh dkk. (2022), Mokey — ISCA
- **Sitasi:** 36 (Crossref, DOI 10.1145/3470496.3527438).
- **Teknik:** kuantisasi bobot dan embedding menjadi indeks 4-bit ke *dictionary* `centroid` 16-bit, **tanpa fine-tuning** — persis kategori *weight-only PTQ*.
- **Dataset:** MNLI, STS-B, SQuAD v1.1.
- **Hasil terverifikasi dari PDF (Tabel I):** BERT-Large SQuAD F1 **93,15 (FP) → 93,17 (weight-only) → 92,22 (weight + activation)**; RoBERTa-Large SQuAD 93,56 → 93,25 → 92,58.
- **Catatan:** ini baris paling dekat dengan skripsi — weight-only, 4-bit, BERT, SQuAD.

### No. 2 — Bai dkk. (2022), MREM — NeurIPS
- **Sitasi:** 9 (Crossref, DOI 10.52202/068431-0103).
- **Teknik:** PTQ per modul (meminimalkan galat rekonstruksi tiap modul), tanpa pelatihan ulang penuh.
- **Dataset & metrik (kutipan dari paper):** *"we report accuracies on both the matched section and mis-matched sections of MNLI, and EM (exact match) and F1 score for SQuAD"* → metrik EM/F1 untuk SQuAD, akurasi untuk GLUE. Kolom "Metrik" pada tabel sudah benar.
- **Hasil:** penulis menyatakan hasilnya mendekati QAT dengan biaya pelatihan jauh lebih rendah.

### No. 3 — Guo dkk. (2023), OliVe — ISCA
- **Sitasi:** 154 (Crossref, DOI 10.1145/3579371.3589038).
- **Teknik:** PTQ 4-bit untuk **bobot dan aktivasi** (W4A4) dengan *outlier-victim pair*. Bukan weight-only — kolom Teknik sudah menyebut "bobot dan aktivasi".
- **Dataset (kutipan):** *"We evaluate BERT-base, BERT-large, and BART-base … on eight datasets of the GLUE benchmark. In addition, we evaluate BERT-base and BART-base on the summarization tasks SQuAD v1.1 and SQuAD v2.0"*.
- **Hasil:** penurunan akurasi <1% pada 4-bit; mengungguli PTQ 6-bit Outlier Suppression (dari abstrak).

### No. 4 — Wei dkk. (2022), Outlier Suppression — NeurIPS
- **Sitasi:** 14 (Crossref, DOI 10.52202/068431-1265).
- **Teknik:** PTQ 6-bit dengan *gamma migration* dan *token-wise clipping*; mengkuantisasi bobot, embedding, dan aktivasi (notasi 4-4-8 dan sejenisnya).
- **Dataset & metrik:** GLUE, SQuAD v1.1/v2.0, XSum/CNN-DailyMail. Tabel hasil SQuAD mencantumkan pasangan angka (mis. `88.28/80.82`) yang merupakan pasangan EM/F1.
- **Hasil:** PTQ BERT 6-bit mencapai level *full-precision*; pada SQuAD v1.1 unggul 4,73% (BERT) dan 15,55% (RoBERTa) dibanding metode lain.

### No. 5 — Kim dkk. (2021), I-BERT — ICML
- **Sitasi:** 186 (OpenAlex; paper PMLR tidak punya DOI Crossref).
- **Teknik:** kuantisasi *integer-only* INT8 (W8A8) + aproksimasi GELU/Softmax/LayerNorm.
- **Dataset:** GLUE saja. **Tidak ada tugas QA** → konteks tugas tidak sama; kolom tabel sudah menulis "GLUE" apa adanya.
- **Hasil:** akurasi setara atau sedikit lebih tinggi dari FP32; *speedup* 2,4–4,0× pada T4.

### No. 6 — Bondarenko dkk. (2021) — EMNLP
- **Sitasi:** 72 (Crossref, DOI 10.18653/v1/2021.emnlp-main.627).
- **Teknik:** PTQ dan QAT, memperkenalkan ***per-embedding-group quantization*** — inilah sumber argumen granularitas pada Bab II.
- **Dataset:** GLUE (BERT-base). Tidak ada QA.
- **Hasil (Tabel 1):** GLUE 83,06 (FP32), 71,03 (W8A8), 70,25 (W32A8), 83,23 (W8A32).

### No. 7 — Abdurrahman dkk. (2023) — ICAICTA
- **Sitasi:** 1 (Crossref, DOI 10.1109/ICAICTA59291.2023.10390159) → **tidak lolos syarat**, tetap dipakai dengan tanda †.
- **Konteks:** IndoBERT pada 7 tugas IndoNLU termasuk **FacQA** (span extraction) — satu-satunya studi kuantisasi encoder Indonesia yang menyertakan tugas QA.
- **Hasil:** PTQ 4-bit F1 72,78 vs 77,35 (FP32); QAT 4-bit 74,94; ukuran 59,75 MB vs 474,72 MB.

### No. 8 — Ramaputra & Joddy (2026) — Procedia Computer Science
- **Sitasi:** 0 (Crossref, DOI 10.1016/j.procs.2026.08.289) → **tidak lolos syarat**, tetap dipakai dengan tanda †.
- **Konteks:** SQuAD-id, PTQ weight-only W4A16/W8A16 (AWQ, GPTQ), metrik EM/F1 — konteks paling dekat, tetapi modelnya LLM *decoder-only*.
- **Hasil:** Qwen2.5-14B EM 48,61 → 44,73 (AWQ) / 43,80 (GPTQ); Qwen2.5-7B 42,05 → 42,15 / 42,34.

## 3. Dua baris yang dikeluarkan dari tabel

| Referensi | Alasan keluar |
|---|---|
| Hu dkk. (2022), *Empirical Evaluation of PTQ Methods for Language Tasks* | Konteks cocok (PTQ, BERT, SQuAD), tetapi hanya arXiv (2210.16621) dengan **0 sitasi** di Crossref maupun OpenAlex. Digantikan Mokey yang lebih kuat (weight-only murni, 36 sitasi). |
| Han (2026), *Where PTQ Breaks Text Embedders* | **PDF tidak dapat diakses**; sitasi tidak dapat diverifikasi; konteks tugasnya *retrieval embedding*, bukan QA. Klaim celah yang tadinya bertumpu pada paper ini sudah dipindahkan ke Bondarenko (2021) dan Suhendra dkk. (2026). |

## 4. Konsekuensi untuk teks Bab II

- Kalimat pada 2.7.1 sudah menyatakan tiga syarat pemilihan; tambahan kalimat batas bawah sitasi ("paling sedikit sembilan kali") membuat syarat itu dapat diperiksa pembaca.
- Kolom "Dataset dan Tugas" untuk No. 5 dan 6 harus tetap menyebut **GLUE** (bukan QA) agar tidak menyesatkan.
- Kalau nanti PDF Han (2026) diperoleh dan sitasinya ≥5, baris itu bisa dimasukkan kembali — tetapi klaim celah tidak boleh bergantung padanya.
```

<a id="f-bahan-justifikasi-verifikasi-sumber-uji-md"></a>

## `bahan_justifikasi/verifikasi_sumber_uji.md`

Ukuran 10,399 byte &middot; 127 baris &middot; sha256 `6adefe9363af` &middot; encoding `utf-8-sig`

```markdown
# Verifikasi Enam Sumber Uji dan Metrik (Tugas B3 + B4)

Diperbarui 25 Oktober 2026. Berkas ini menutup dua tugas yang sebelumnya tertunda: **B3** (14 klaim yang belum bisa dicek karena PDF-nya tidak ada di lokal) dan **B4** (mengunduh enam PDF prioritas).

Nomor halaman di bawah adalah **halaman PDF**, bukan halaman jurnal. Kutipan ditulis persis seperti hasil ekstraksi teks, termasuk ligatur `ﬁ` dan `ﬂ` yang muncul pada beberapa PDF.

---

## 1. Berkas yang berhasil diunduh

| Sumber | Berkas | Halaman | Status akses |
|---|---|---|---|
| Rajpurkar dkk. 2016 (SQuAD) | `sumber/rajpurkar2016.pdf` | 10 | arXiv 1606.05250, terbuka |
| Rajpurkar dkk. 2018 (SQuAD 2.0) | `sumber/rajpurkar2018.pdf` | 9 | arXiv 1806.03822, terbuka |
| Dror dkk. 2018 | `sumber/dror2018.pdf` | 10 | ACL Anthology P18-1128, terbuka |
| Berg-Kirkpatrick dkk. 2012 | `sumber/bergkirkpatrick2012.pdf` | 11 | ACL Anthology D12-1091, terbuka |
| Muis & Purwarianti 2020 | tidak diunduh | 6 | IEEE Xplore berbayar |
| Holm 1979 | tidak diunduh | 6 | JSTOR berbayar |

Dua sumber terakhir tidak dapat diunduh. Untuk keduanya, verifikasi dilakukan pada sumber sekunder yang otoritatif, dan hasilnya dicatat pada bagian 3.

---

## 2. Verifikasi klaim per klaim

### 2.1 Rajpurkar dkk. 2016 — definisi SQuAD, EM, F1, dan normalisasi

| # | Klaim di naskah | Halaman | Kutipan verbatim | Putusan |
|---|---|---|---|---|
| 1 | SQuAD adalah *benchmark* QA dengan jawaban berupa *span* teks dari paragraf Wikipedia | 1 (abstrak) | "a new reading comprehension dataset consisting of 100,000+ questions posed by crowdworkers on a set of Wikipedia articles, where the answer to each question is a segment of text from the corresponding reading passage" | Sesuai |
| 2 | EM adalah proporsi jawaban yang persis sama dengan jawaban acuan | 7 | "Exact match. This metric measures the percentage of predictions that match any one of the ground truth answers exactly." | Sesuai |
| 3 | F1 adalah tumpang tindih *token* antara prediksi dan jawaban acuan | 7 | "F1 score. This metric measures the average overlap between the prediction and ground truth answer. We treat the prediction and ground truth as bags of tokens, and compute their F1." | Sesuai |
| 4 | EM dan F1 adalah metrik standar evaluasi SQuAD | 7 | "We use two different metrics to evaluate model accuracy." | Sesuai |
| 5 | Normalisasi membuang tanda baca | 7 | "Both metrics ignore punctuations and articles (a, an, the)." | Sesuai |
| 6 | Normalisasi mengubah huruf menjadi huruf kecil | 7 | tidak ada pernyataan tentang kapitalisasi di seluruh artikel | **Tidak sesuai, kalimat dikoreksi** |
| 7 | Skor diambil dari jawaban acuan terbaik | 7 | "We take the maximum F1 over all of the ground truth answers for a given question, and then average over all of the questions." | Sesuai |

Catatan butir 6: artikel hanya menyebut tanda baca dan kata sandang. Pengubahan huruf menjadi huruf kecil memang dilakukan skrip evaluasi resmi SQuAD, tetapi bukan pernyataan artikel. Kalimat di `chapter-2.tex` (2.6.1) diubah menjadi:

> Sebelum dibandingkan, jawaban prediksi dan jawaban acuan dinormalisasi dengan menghapus tanda baca dan kata sandang (Rajpurkar dkk., 2016). Skrip evaluasi resmi SQuAD menambahkan pengubahan huruf menjadi huruf kecil dan penyeragaman spasi, dan prosedur itulah yang dipakai penelitian ini.

Kalimat padanannya di `chapter-3.tex` (3.2.7) diselaraskan dengan redaksi yang sama.

### 2.2 Rajpurkar dkk. 2018 — pertanyaan tanpa jawaban

| # | Klaim di naskah | Halaman | Kutipan verbatim | Putusan |
|---|---|---|---|---|
| 8 | SQuAD v2.0 menambahkan pertanyaan yang tidak memiliki jawaban pada konteks | 1 (abstrak) | "systems must not only answer questions when possible, but also determine when no answer is supported by the paragraph and abstain from answering" | Sesuai |
| 9 | Sebagian sampel SQuAD v2.0 tidak memiliki jawaban pada konteks | 1 | "forces models to understand when a question cannot be answered given the context" | Sesuai |

### 2.3 Dror dkk. 2018 — perlunya uji signifikansi dan uji McNemar

| # | Klaim di naskah | Halaman | Kutipan verbatim | Putusan |
|---|---|---|---|---|
| 10 | Perbedaan teramati belum tentu perbedaan yang sesungguhnya | 1 | "Yet, the experimental differences might be coincidental. Here comes statistical signiﬁcance testing into the picture: we have to make sure that the probability of falsely concluding that one algorithm is better than the other is very small." | Sesuai |
| 11 | Uji signifikansi diperlukan agar perbedaan teramati dapat dibedakan dari variasi acak | 1 | sama dengan butir 10 | Sesuai |
| 12 | McNemar dipakai untuk nilai biner berpasangan | 5 | "McNemar's test (McNemar, 1947) This test is designed for paired nominal observations (binary labels). The test is applied to a 2 × 2 contingency table, which tabulates the outcomes of two algorithms on a sample of n examples." | Sesuai |

### 2.4 Berg-Kirkpatrick dkk. 2012 — *paired bootstrap*

| # | Klaim di naskah | Halaman | Kutipan verbatim | Putusan |
|---|---|---|---|---|
| 13 | *Paired bootstrap* mengambil sampel ulang berpasangan untuk menguji selisih skor | 2 | "We use the paired bootstrap1 (Efron and Tibshirani, 1993) because it is one …" | Sesuai |
| 14 | Prosedur *bootstrap* bersumber pada Efron & Tibshirani 1993 | 2 | sama dengan butir 13, catatan kaki 1 merujuk "Efron and Tibshirani, 1993" | Sesuai |

Kutipan butir 13 juga menjelaskan alasan pemilihan uji, yaitu bahwa penulis memilih *paired bootstrap* alih-alih *approximate randomization* karena metode terakhir tidak cocok untuk hipotesis yang diuji.

### 2.5 McNemar 1947 — rujukan prosedur

| # | Klaim | Verifikasi | Putusan |
|---|---|---|---|
| 15 | McNemar, Q. (1947). *Note on the Sampling Error of the Difference Between Correlated Proportions or Percentages*. Psychometrika 12(2), 153–157 | Crossref: DOI `10.1007/BF02295996`, volume 12, nomor 2, halaman 153–157, tahun 1947 | Sesuai, DOI ditambahkan ke `references.bib` |

---

## 3. Dua sumber yang diverifikasi lewat sumber sekunder

### 3.1 Muis & Purwarianti 2020 — asal *dataset* SQuAD-id

PDF IEEE tidak dapat diakses, sehingga verifikasi memakai kartu *dataset* SEACrowd untuk `squad_id`, yaitu sumber yang mendistribusikan data yang dipakai penelitian ini.

Kutipan dari kartu *dataset* (`huggingface.co/datasets/SEACrowd/squad_id`):

> "This dataset contains Indonesian SQuAD v2.0 dataset (Google-translated). The dataset can be used for automatic question generation (AQG), or machine reading comphrehension(MRC) task."

> "If you are using the **Squad Id** dataloader in your work, please cite the following: @inproceedings{muis2020sequence, title={Sequence-to-sequence learning for indonesian automatic question generator}, author={Muis, Ferdiant Joshua and Purwarianti, Ayu}, booktitle={2020 7th International Conference on Advance Informatics: Concepts, Theory and Applications (ICAICTA)}, pages={1--6}, year={2020}, organization={IEEE}}"

Putusan: klaim "SQuAD-id dibentuk dari terjemahan mesin SQuAD v2.0" **sesuai**, dan sitasi ke `muis2020sequence` **sah** karena kartu *dataset* resmi menunjuk artikel itu sebagai sumber. Perlu dicatat bahwa artikel tersebut berjudul tentang *automatic question generator*, bukan tentang pembuatan *dataset*. Bila penguji menanyakan hal ini, jawabannya: data yang sama dipakai penulis untuk tugas *question generation* dan *machine reading comprehension*, dan artikel itulah yang ditunjuk sebagai sumber resmi data.

### 3.2 Holm 1979 — koreksi perbandingan berganda

Teks penuh berbayar dan tidak ditemukan salinan terbuka. Yang dapat diverifikasi:

- Catatan bibliografi: *Scandinavian Journal of Statistics* 6(2), 65–70, 1979. Rujukan ini tidak memiliki DOI karena terbit sebelum penomoran DOI berlaku untuk jurnal tersebut.
- Prosedur yang dipakai naskah, yaitu pengurutan nilai $p$ lalu pembandingan berurutan dengan ambang $\alpha/(m-i+1)$, adalah prosedur Holm yang baku dan juga dijelaskan pada literatur uji signifikansi NLP yang terbuka.

Putusan: **sitasi dipertahankan**, tetapi statusnya "terverifikasi bibliografis, teks penuh belum dibaca". Bila penguji meminta, siapkan salinan dari perpustakaan.

---

## 4. Tiga kesalahan yang ditemukan dan diperbaiki

| # | Kesalahan | Akibat bila dibiarkan | Perbaikan |
|---|---|---|---|
| 1 | Entri `bergkirkpatrick2012` memuat catatan `% TODO: verifikasi nomor halaman di ACL Anthology (D12-1082)`, dan ID itu ternyata milik artikel lain ("No Noun Phrase Left Behind", Lin dkk.) | PDF yang diunduh dari ID tersebut bukan artikel yang disitasi, sehingga kutipan tidak akan ditemukan | ID dikoreksi menjadi **D12-1091**, ditambah alamat terbit dan URL Anthology. Halaman 995–1005 sudah benar sejak awal |
| 2 | Klaim normalisasi menyebut "mengubah huruf menjadi huruf kecil" dengan sitasi Rajpurkar dkk. 2016 | Artikel tidak memuat pernyataan itu, sehingga kutipan tidak akan ditemukan penguji | Kalimat dipecah: tanda baca dan kata sandang disitasi ke artikel, pengubahan huruf kecil dinyatakan sebagai prosedur skrip evaluasi resmi |
| 3 | Entri `rajpurkar2018squad` mencantumkan `booktitle` prosiding ACL utama | SQuAD 2.0 terbit pada volume *System Demonstrations*, bukan *long papers* | `booktitle` dikoreksi dan DOI `10.18653/v1/P18-2124` ditambahkan |

Perbaikan tambahan: DOI ditambahkan pada `mcnemar1947`, `dror2018hitchhiker`, dan `lovenia2024seacrowd`, serta URL pada `rajpurkar2016squad`. Satu koma yang hilang sebelum medan `url` pada entri `rajpurkar2016squad` juga diperbaiki karena membuat biber berhenti dengan kesalahan sintaksis.

---

## 5. Hasil compile setelah perbaikan

- `pdflatex` + `biber`: **0 error**, **0 sitasi undefined**, **0 rujukan undefined**.
- Daftar pustaka menampilkan Berg-Kirkpatrick dkk. (2012) dengan halaman 995–1005 dan URL Anthology yang benar.

---

## 6. Sisa pekerjaan

| Hal | Status |
|---|---|
| 15 klaim di atas | Terverifikasi dengan kutipan dan halaman |
| Holm 1979 teks penuh | Belum, berbayar. Sitasi dipertahankan dengan status "terverifikasi bibliografis" |
| Muis 2020 teks penuh | Belum, berbayar. Klaim *dataset* terverifikasi lewat kartu SEACrowd |
| `han2026breaking` dan `hu2022empirical` | Tidak lagi disitasi di Bab I–III, sehingga klaim yang bergantung padanya sudah tidak ada. Kedua entri masih ada di `references.bib` dan tidak akan muncul di daftar pustaka selama tidak disitasi |
```

<a id="f-bahan-justifikasi-verifikasi-tabel-terdahulu-md"></a>

## `bahan_justifikasi/verifikasi_tabel_terdahulu.md`

Ukuran 3,386 byte &middot; 51 baris &middot; sha256 `a690d117964a` &middot; encoding `utf-8-sig`

```markdown
# Verifikasi Tabel Penelitian Terdahulu (Tabel 2.1 di Bab II)

Lima baris tabel di Bab II dicek ulang ke PDF sumber yang tersedia di lokal. Tiga baris bisa diverifikasi penuh; dua baris tidak bisa karena PDF-nya tidak ada.

## Ringkasan

| No | Referensi | Status | Angka cocok? |
|---|---|---|---|
| 1 | Hu dkk. (2022) | BELUM TERVERIFIKASI — PDF tidak ada di lokal | tidak bisa dicek |
| 2 | Abdurrahman dkk. (2023) | TERVERIFIKASI penuh | ya, 5/5 |
| 3 | Han (2026) | BELUM TERVERIFIKASI — PDF tidak ada di lokal | tidak bisa dicek |
| 4 | Sanjaya dkk. (2026) | TERVERIFIKASI penuh | ya, 4/4 + teknik |
| 5 | Ramaputra & Joddy (2026) | TERVERIFIKASI penuh | ya, 5/5 |

## Rincian bukti

### Baris 2 — Abdurrahman dkk. (2023) — `Implementing_Quantization_to_Indonesian_BERT_Language_Model.pdf`

| Klaim di tabel | Kutipan/angka di PDF | Status |
|---|---|---|
| 7 tugas IndoNLU: SmSA, WReTE, FacQA, BaPOS, CASA, KEPS, NERGrit | “SMSA WRETE FACQA BAPOS CASA KEPS NERGRIT” (Tabel VI/VII) | cocok |
| PTQ 4-bit F1 72,78 | baris “W4A32 … 72.78” (kolom Average) | cocok |
| FP32 F1 77,35 | baris “W32A32 … 77.35” | cocok |
| QAT 4-bit 74,94 | baris “W4A32 … 74.94” (tabel QAT) | cocok |
| ukuran 59,75 MB vs 474,72 MB | “Size (MB) 474.72 237.59 119 89.39 59.75” (Tabel VII) | cocok |
| granularitas tidak disebutkan | kata “granular” tidak muncul sama sekali di teks | cocok |

### Baris 4 — Sanjaya dkk. (2026) — `quantization effectson explainability in indonesian transformer based sentiment analysis.pdf`

| Klaim di tabel | Kutipan/angka di PDF | Status |
|---|---|---|
| Akurasi 92,9% vs 93,1% | Tabel 1: “PTQ-INT4 92.9±0.3 … FP32 93.1±0.4” | cocok |
| F1 92,7% vs 93,0% | Tabel 1: “PTQ-INT4 … 92.7±0.4” vs “FP32 … 93.0±0.4” | cocok |
| berkas 230 MB vs 475 MB | Tabel 1: “230” vs “475” | cocok |
| latensi 32,7 ms vs 25,1 ms | Tabel 1: “32.7” vs “25.1” | cocok |
| teknik: PTQ INT4 weight-only, simetris, per-tensor | “PTQ-INT4 uses symmetric, per-tensor, weight-only quantization” (Bagian 3.1) | cocok |

### Baris 5 — Ramaputra & Joddy (2026) — `Evaluating the Impact of Quantization on Indonesian Question Answering.pdf`

| Klaim di tabel | Kutipan/angka di PDF | Status |
|---|---|---|
| Qwen2.5-14B EM 48,61 → 44,73 (AWQ), 43,80 (GPTQ) | baris tabel: “48.61 44.73 48.97 43.80 48.61” | cocok |
| Qwen2.5-7B EM 42,05 → 42,15 (AWQ), 42,34 (GPTQ) | baris tabel: “42.05 42.15 40.87 42.34 41.68” | cocok |
| SQuAD-id, subset validasi, tanpa sampel tak terjawab | “we only use the validation subset of the dataset and we filtered all unanswerable questions” | cocok |

## Konsekuensi

- Tanda † pada baris **2, 4, dan 5** sudah bisa dihapus — angkanya cocok semua dengan tabel di PDF.
- Tanda † pada baris **1 dan 3** harus tetap ada sampai PDF-nya diunduh.
- Baris 4 bisa diperkaya: paper itu juga melaporkan PTQ-INT8 (230 MB, 9,4 ms) yang lebih cepat dari FP32 (25,1 ms) tetapi PTQ-INT4 justru lebih lambat (32,7 ms) — ini contoh bagus bahwa kompresi belum tentu mempercepat, dan relevan untuk pembahasan Bab IV.
- Tabel 1 Sanjaya memakai rumus skala yang sama dengan Persamaan 2.2 di Bab II: “s = max(|w|)/(2b−1 − 1)” — bisa dipakai sebagai justifikasi bahwa implementasi rencanamu konsisten dengan literatur.
```

<a id="f-claude-catatan-md"></a>

## `claude_catatan.md`

Ukuran 40,542 byte &middot; 439 baris &middot; sha256 `5f4d96f7faa7` &middot; encoding `utf-8-sig`

````markdown
/panduan-penulisan-skripsi saya ingin kamu bantu dalam merumuskan pipeline penelitian saya, dimana saya ingin menyesuaikan ini agar sesuai dengan tiap bagian bab skripsi saya 
Berikut pipeline coding riset Anda, urut dari hulu ke hilir. Setiap tahap saya kaitkan dengan bagian Bab 2 yang dijanjikan ke Bab 3.

## 0. Setup dan reproducibility
- Struktur proyek, `config.yaml` (seed, path, hyperparameter, daftar konfigurasi presisi).
- Seed tetap, versi library dikunci (`requirements.txt`), log environment (GPU/CPU, versi PyTorch dan Transformers).
- Rencana beberapa seed (misalnya 3–5) agar uji statistik bermakna.

## 1. Data
- Muat IndoFinSent dan Indonesian Financial PhraseBank dengan split resmi (1.591/227/456 dan 1.629/182/453).
- Verifikasi jumlah baris dan distribusi label terhadap angka di Bab 2.
- Tokenisasi dengan tokenizer IndoBERT, max length ditetapkan dan disimpan, sama untuk semua kondisi.
- EDA ringkas: distribusi kelas dan panjang token (mendukung argumen dominasi kelas netral).

## 2. Fine-tuning baseline FP32
- Model `indobenchmark/indobert-base-p1` dengan head klasifikasi tiga kelas.
- Latih per dataset, pilih checkpoint terbaik di validation (Macro F1).
- Simpan checkpoint, kurva latih, dan prediksi (logit dan probabilitas softmax) pada validation dan test.
- Ini baseline untuk semua perhitungan drift.

## 3. Modul indikator sentimen kontinu
- Fungsi `S = P(pos) − P(neg)` dari softmax.
- Fungsi NDI hanya untuk ilustrasi kritik (contoh numerik di Bab 2).
- Unit test: nilai S ∈ [−1, 1], kasus netral murni dan kasus ambigu P+ = P− = 0,5 bernilai 0.

## 4. Modul kuantisasi (inti Bab 3)
- Quantizer simetris `b`-bit: round, clip, dan skala (Persamaan 2.4–2.5).
- Kuantisasi bobot per-channel berbasis absmax (2.6–2.7), diterapkan ke lapisan linear (Q/K/V, output attention, feed-forward).
- Kuantisasi aktivasi: pilih statis atau dinamis, per-tensor atau per-channel, lalu pasang sebagai modul pembungkus (wrapper) pada input lapisan.
- Kalibrasi: ambil sampel dari split train (jumlah dan seed dicatat), kumpulkan statistik aktivasi per lapisan.
- Simulated (fake) quantization: kuantisasi lalu dekuantisasi, komputasi tetap di float.
- Daftar lapisan yang dikecualikan (embedding, LayerNorm, softmax, GELU) ditulis eksplisit.
- Lima kondisi lewat satu konfigurasi: FP32, W8A8, W4A16 (atau W4A32), W4A8, W4A4.
- Unit test: bobot terkuantisasi hanya punya paling banyak 2^b nilai unik per channel, dan error rekonstruksi lebih kecil untuk bit lebih tinggi.

## 5. Inferensi dan penyimpanan hasil
- Jalankan tiap kondisi pada test set yang sama dengan tokenisasi yang sama.
- Simpan per sampel: logit, probabilitas, prediksi, dan S, dalam satu file per dataset dan per kondisi.
- Semua metrik berikutnya dihitung dari file ini, jadi tidak perlu inferensi ulang.

## 6. Metrik klasifikasi
- Macro F1 dan akurasi, plus precision, recall, dan F1 per kelas.
- Matriks konfusi per kondisi.

## 7. Metrik score drift (inti kebaruan)
- `d_i = S_q,i − S_FP32,i` per sampel.
- MAE, korelasi Pearson, dan korelasi Spearman antara S FP32 dan S terkuantisasi.
- Label flip rate.
- KL divergence tiga kelas (dengan smoothing ε = 10⁻⁸).
- Semua dilaporkan secara keseluruhan dan **per kelas prediksi FP32** (menjawab risiko MAE tampak kecil karena dominasi netral).

## 8. Analisis lanjutan
- Hubungan drift dengan margin keputusan: margin = selisih dua probabilitas teratas pada FP32, dikelompokkan (bin) lalu bandingkan rata-rata |drift| dan flip rate per bin.
- Uji statistik: bootstrap confidence interval untuk MAE dan Macro F1, serta uji berpasangan (misalnya Wilcoxon) antar kondisi, dan uji McNemar untuk perubahan prediksi.
- Variasi antar seed (rata-rata dan simpangan baku).

## 9. Metrik efisiensi
- Ukuran teoretis: jumlah parameter × bit ÷ 8, dan ukuran berkas aktual (dua bentuk, sesuai 2.7.3).
- BOPs: hitung per lapisan dari jumlah operasi multiply-accumulate × bit bobot × bit aktivasi, lalu jumlahkan. Definisi dan rumusnya harus ada di Bab 2 sebelum implementasi ini.
- Latensi (ms per sampel) dan throughput, dicatat dengan hardware dan jumlah pengulangan, dilabeli sebagai metrik pelengkap karena fake quantization.

## 10. Agregasi dan visualisasi
- Tabel utama: lima kondisi × dua dataset × tiga kelompok metrik (klasifikasi, stabilitas, efisiensi).
- Grafik: histogram dan boxplot drift per kondisi, scatter S FP32 vs S terkuantisasi, drift vs margin, serta trade-off efisiensi vs stabilitas.
- Ekspor otomatis ke tabel LaTeX atau CSV agar angka Bab 4 tidak diketik manual.

## 11. Pengujian dan validasi pipeline
- Sanity check: kondisi "FP32 terkuantisasi 32-bit" harus identik dengan baseline (drift = 0).
- Pengecekan bahwa W8A8 mendekati FP32 (sesuai temuan Abdurrahman), dan W4A4 diperkirakan paling buruk (ekspektasi di Bab 2).
- Satu skrip `run_all` yang mengulang seluruh eksperimen dari config.

## Struktur folder yang disarankan

```
project/
  config.yaml
  data/            # loader, split, tokenisasi
  models/          # fine-tuning, checkpoint
  quant/           # quantizer, wrapper aktivasi, kalibrasi
  metrics/         # klasifikasi, drift, efisiensi (BOPs)
  analysis/        # margin, uji statistik, plot
  outputs/         # prediksi per sampel, tabel, gambar
  tests/           # unit test
  run_all.py
```

## Keterkaitan dengan Bab 3

Tahap 4 sampai 9 bisa langsung menjadi subbab Bab 3: skenario eksperimen (lima kondisi), implementasi kuantisasi, prosedur pengukuran drift, dan metrik efisiensi. Diagram alur utamanya cukup: data → fine-tuning FP32 → kuantisasi lima kondisi → inferensi → metrik klasifikasi, drift, dan efisiensi → evaluasi. Sesuai panduan, diagram memuat alur utama dan berakhir di evaluasi, detail kecil tidak perlu masuk.




Saya baca dulu panduan skripsi dan notebook Anda.Pipeline Anda sudah runtut. Saya sejajarkan dengan Bab 2 dan saya periksa terhadap notebook. Notebook belum sepenuhnya sesuai dengan Bab 2, dan itu perlu diputuskan sebelum eksperimen sungguhan dijalankan.

## Pemetaan pipeline ke bab

Agar subbab tidak bercabang (maksimal heading 3), 12 tahap Anda saya gabung menjadi enam subbab Bab 3. Urutan 3.5.x mengikuti Subbab 2.7 supaya mudah dirujuk silang.

| Subbab Bab 3 | Tahap pipeline | Dasar teori di Bab 2 | Keluaran di Bab 4 |
|---|---|---|---|
| 3.1 Alur penelitian | Seluruh tahap (diagram) | 2.8 (celah) | - |
| 3.2 Data | 0, 1 | 2.6.1, 2.6.2 | Statistik dataset, distribusi kelas |
| 3.3 Fine-tuning baseline FP32 | 2, 3 | 2.2, 2.3 | Macro F1 dan akurasi FP32 |
| 3.4 Implementasi PTQ (5 kondisi) | 4, 5 | 2.4, 2.5 | - (konfigurasi) |
| 3.5 Evaluasi: 3.5.1 klasifikasi, 3.5.2 score drift, 3.5.3 efisiensi, 3.5.4 uji statistik | 6 sampai 9 | 2.7.1, 2.7.2, 2.7.3 | Tabel klasifikasi, drift, drift vs margin, efisiensi |
| 3.6 Lingkungan dan reproducibility | 0, 10, 11 | - | - |

Bab 4 sebaiknya per dataset (IndoFinSent, lalu Financial PhraseBank), dengan urutan klasifikasi, drift, drift vs margin, efisiensi, lalu pembahasan lintas dataset. Bab 5 berisi kesimpulan per rumusan masalah. Rumusan masalah Bab 1 bisa dikelompokkan menjadi tiga: kinerja klasifikasi, stabilitas skor, dan efisiensi. Jika Anda kirim Bab 1, saya cocokkan nomor dan kalimatnya.

Diagram alur utama (Bab 3.1): Dataset (IndoFinSent, PhraseBank ID) → tokenisasi → fine-tuning FP32 → PTQ lima kondisi → inferensi (logit, probabilitas, S per sampel) → metrik klasifikasi, score drift, efisiensi → evaluasi dan uji statistik.

## Notebook vs Bab 2

| Aspek | Bab 2 | Notebook | Tindakan |
|---|---|---|---|
| Dataset | 2 dataset | 3, termasuk `topic_finance_21k` (20 kelas topik) | Hapus dari `TASKS_LIST`; tugasnya bukan sentimen |
| Kondisi | 5 (FP32, W8A8, W4A16, W4A8, W4A4) | `QUANT_VARIANTS` hanya W8A8, W4A8, W4A4 | Tambah varian aktivasi tidak terkuantisasi |
| Penamaan W4A16 | Aktivasi 16-bit tidak dikuantisasi | Baseline berjalan di FP32, jadi aktivasi tak terkuantisasi bernilai 32-bit | Ganti nama menjadi W4A32 (sejalan dengan Abdurrahman et al.), atau cast ke FP16 dan laporkan itu |
| Skala bobot | Absmax per-channel (Pers. 2.6–2.7) | `W_QUANT_METHOD='MSE'` dengan golden section | Ganti ke min-max/absmax, atau ubah Subbab 2.5 menjadi MSE |
| Per-channel bobot | Ya | Belum terlihat jelas di sel yang saya baca | Pastikan opsi per-channel aktif |
| Skema aktivasi | Hanya simetris (Pers. 2.4–2.5) | `asymmetric_uniform` | Tambah persamaan zero point di Bab 2, atau ganti ke simetris |
| Kalibrasi | Statistik per lapisan dari data train | `NUM_EST_BATCHES=1` × 16 sampel, estimator `current_minmax` | Tetapkan jumlah sampel dari split train, catat seed, pastikan rentang dibekukan sebelum evaluasi |
| Cakupan lapisan | Pengecualian ditulis eksplisit | `QUANT_SETUP='all'` | Dokumentasikan lapisan yang ikut terkuantisasi (residual, attention score, dsb.) |
| Seed | Rencana 3–5 seed | `SEED=1000` tunggal | Loop seed, dengan baseline FP32 dilatih ulang per seed |
| Mode | Eksperimen penuh | `SMOKE_TEST=True` | Ubah ke `False` |
| Keluaran per sampel | Logit, probabilitas, S | Hanya metrik agregat dari Trainer | Tambah penyimpanan per sampel |
| Drift, margin, uji statistik | MAE, Pearson, Spearman, flip rate, KL, bin margin, bootstrap, Wilcoxon, McNemar | Belum ada | Modul analisis terpisah yang membaca file prediksi |
| Efisiensi | Ukuran teoretis dan berkas aktual, BOPs, latensi | Hanya estimasi ukuran dari bit-width, latensi dan throughput | Tambah ukuran berkas aktual dan BOPs |

Dua keputusan paling menentukan adalah skala bobot (MSE atau absmax) dan skema aktivasi (simetris atau asimetris). Keduanya mengubah isi Bab 2.5, jadi putuskan dulu sebelum menjalankan eksperimen.

## Perubahan pada pipeline Anda

1. **Sanity check tahap 11.** Jadikan "FP32 terkuantisasi 32-bit identik dengan baseline" dan "error rekonstruksi turun saat bit naik" sebagai uji bug. Pengecekan "W8A8 mendekati FP32" dan "W4A4 paling buruk" sebaiknya diperlakukan sebagai hipotesis dari Abdurrahman et al., bukan syarat lolos. Jika hasil Anda berbeda, itu temuan yang dilaporkan apa adanya, bukan kesalahan pipeline.
2. **Kalibrasi aktivasi.** Pilih statis (rentang dari data train), karena itu yang dijanjikan di 2.5. Mode dinamis akan membuat Bab 2.5 perlu ditulis ulang.
3. **Multi-seed pada tahap 8.** Drift tiap seed dihitung terhadap FP32 seed yang sama, lalu dirata-rata. Jangan membandingkan lintas seed.

## Bab 2 yang masih perlu ditambah agar Bab 3 punya dasar teori

- Definisi dan rumus BOPs (belum ada di Bab 2).
- Bootstrap confidence interval, uji Wilcoxon, dan uji McNemar, masing-masing beserta rujukannya.
- Definisi margin keputusan (selisih dua probabilitas teratas) dan alasan dipakai.
- Persamaan kuantisasi asimetris, jika aktivasi tetap asimetris.
- Cara pengukuran latensi (jumlah warm-up dan pengulangan).

## Placeholder di kutipan Bab 2

- Parameter IndoBERT: isi dengan 124,5 juta, sesuai Subbab 2.3.2 dan Tabel 2.1. Angka 110 juta pada contoh itu milik BERT-base, bukan `indobert-base-p1`.
- Akurasi Sanjaya et al. (2026): rentang di Subbab 2.8 adalah 92,9–93,2%. Pastikan angka itu memang untuk varian QAT sebelum dipakai di 2.2.
- Bukti overfitting Tanjaya et al. (2025): angka selisih latih–uji harus diambil dari makalahnya. Saya tidak punya angkanya di berkas ini.
- Kalimat "setidaknya empat penelitian terdahulu" hanya diikuti dua rujukan (Jiwandono et al., 2026; Maharani et al., 2023). Tambahkan dua rujukan lain atau turunkan jumlahnya menjadi dua.

Bagian mana yang ingin dikerjakan dulu: menyesuaikan notebook (varian W4A32, absmax per-channel, penyimpanan per sampel) atau menulis draf Bab 3?


saya belum yakin terkait semua konfigruasi ini, list konfigurasi yang perlu saya cari untuk memastikan pipeline saya

Daftar di bawah dikelompokkan menurut jenis keputusannya. Kolom "Cek di" menunjukkan tempat mencari jawabannya, dan kolom "Dampak" menunjukkan bab yang berubah jika jawabannya berubah.

## A. Kuantisasi bobot

| Yang dicari | Opsi | Cek di | Dampak |
|---|---|---|---|
| Skema | Simetris atau asimetris | Notebook: `QMETHOD`; Gholami et al. (2021) | 2.4, 2.5 |
| Granularitas | Per-tensor atau per-channel (sumbu mana) | `quant_click_options.py` (opsi per-channel), `QuantizedModule` (`per_channel_weights`) | 2.5, 3.4 |
| Penentuan rentang | Absmax, MSE, atau percentile | Notebook: `W_QUANT_METHOD`, `W_OPT_METHOD`; `range_estimators.py` | Pers. 2.6 |
| Lapisan yang dikuantisasi | Linear saja, atau juga embedding, pooler, classifier head | `quantized_bert.py` (cari `DEFAULT_QUANT_DICT` dan `_quantize_model`) | 3.4 |
| Bias | Dikuantisasi atau dibiarkan FP32 | `QuantLinear` di `autoquant_utils.py` | 3.4 |

## B. Kuantisasi aktivasi

| Yang dicari | Opsi | Cek di | Dampak |
|---|---|---|---|
| Statis atau dinamis | Rentang dibekukan setelah kalibrasi, atau dihitung ulang per input | `ACT_QUANT_METHOD`, `fix_act_ranges` pada `base_quantized_model.py`, dan apakah dipanggil sebelum evaluasi | 2.5, 3.4 |
| Granularitas | Per-tensor atau per-embedding | `per_embd_quant_utils.py` | 3.4 |
| Skema | Simetris atau asimetris | `QMETHOD_ACT` | 2.4 (perlu persamaan zero point jika asimetris) |
| Estimator rentang | Min-max, running min-max, percentile, MSE | `RangeEstimators` | 2.5 |
| Titik kuantisasi | Input lapisan linear saja, atau juga attention score, softmax, residual, output GELU | `QUANT_SETUP='all'` dan `DEFAULT_QUANT_DICT` | 3.4 (daftar pengecualian) |
| Penanganan outlier | Dibiarkan atau ditangani (per-embedding, mixed precision) | Bondarenko et al. (2021), asal kode Qualcomm yang Anda pakai; Abdurrahman et al. (2023) | Penjelasan hasil W4A4 di Bab 4 |

## C. Kalibrasi

| Yang dicari | Opsi | Cek di | Dampak |
|---|---|---|---|
| Jumlah sampel | Notebook saat ini: 1 batch × 16 = 16 sampel | `NUM_EST_BATCHES`, `EST_RANGES_BATCH_SIZE`; Hubara et al. (2021), Williams & Aletras (2024) | 3.4 |
| Sumber data | Split train, bukan test | `pass_data_for_range_estimation` | 3.4 |
| Pengaruh padding | `PAD_TO_MAX_LEN=True` membuat token padding ikut masuk statistik rentang | Cek apakah attention mask diterapkan sebelum penghitungan rentang | 3.4 |
| Seed kalibrasi | Dicatat atau tidak | Config | 3.6 |

## D. Definisi kondisi presisi

| Yang dicari | Opsi | Dampak |
|---|---|---|
| A16 atau A32 | Aktivasi tak terkuantisasi di model FP32 bernilai 32-bit | Nama kondisi di 2.4, Tabel 2.1, dan judul tabel Bab 4 |
| Bobot INT4 | Fake quantization (kuantisasi lalu dekuantisasi di float) | Catatan keterbatasan di 3.4 dan 3.5.3 |
| FP32 | Model fine-tuning yang sama, tanpa operasi kuantisasi | 2.7.2 sudah menyebut ini |

## E. Fine-tuning baseline

| Yang dicari | Cek di | Dampak |
|---|---|---|
| Hyperparameter (epoch, learning rate, batch size, weight decay, warmup) | Notebook: `BL_*`; bandingkan dengan Maharani et al. (2023) dan Wilie et al. (2020) | 3.3 |
| `MAX_SEQ_LEN=128` | Distribusi panjang token hasil EDA; hitung persentase teks yang terpotong | 3.2 |
| Kriteria checkpoint terbaik | Apakah Macro F1 di validation atau metrik lain; cek `TrainingArguments` di `main.py` | 3.3 |
| Pembobotan kelas | Perlu atau tidak, mengingat negatif 20,98% dan 13,38% | 3.3 |
| Jumlah seed | 3–5 seed | 3.6 |

## F. Evaluasi dan statistik

| Yang dicari | Cek di | Dampak |
|---|---|---|
| **Urutan label (indeks ke negatif/netral/positif)** | Pemetaan label di dataset Hugging Face `intanm/...` dan `financial_task.py`. Jika terbalik, S = P(Positif) − P(Negatif) salah tanda | 3.5.2, ini yang paling kritis |
| Jumlah bin dan cara binning margin | Kuantil (jumlah data per bin sama) atau lebar tetap | 3.5.4 |
| Resample bootstrap dan tingkat kepercayaan | Umumnya 1.000–10.000 resample dan 95%; cari rujukan | 2.x (tambahan), 3.5.4 |
| Koreksi perbandingan berganda | Banyak pasangan kondisi: Holm atau Bonferroni | 3.5.4 |
| Presisi numerik KL | float64 untuk softmax dan KL | 3.5.2 |

## G. Efisiensi

| Yang dicari | Cek di | Dampak |
|---|---|---|
| Rumus BOPs | Abdurrahman et al. (2023) memakai FLOPs; cari rujukan yang mendefinisikan BOPs (MAC × bit bobot × bit aktivasi) | 2.7.3 (tambahan), 3.5.3 |
| Lapisan yang dihitung BOPs | Linear saja, atau juga perkalian matriks attention (QKᵀ dan ·V); panjang urutan yang dipakai | 3.5.3 |
| Ukuran teoretis | Embedding tidak dikuantisasi, jadi dihitung 32-bit; cek `_effective_size_mb` | 3.5.3 |
| Ukuran berkas aktual | Perlu implementasi penyimpanan; Sanjaya et al. (2026) menunjukkan INT4 bisa tersimpan sebagai INT8 | 3.5.3 |
| Protokol latensi | Perangkat (CPU/GPU), batch size 1, warm-up, jumlah iterasi. Notebook saat ini memakai 5 warm-up dan 30 iterasi, dan jumlah itu perlu Anda justifikasi | 3.5.3 |

## H. Data

| Yang dicari | Cek di | Dampak |
|---|---|---|
| Jumlah baris per split | Output EDA (sel 48), bandingkan dengan 1.591/227/456 dan 1.629/182/453 | 3.2 |
| Duplikat atau kebocoran antar split | Cek manual teks identik antar train dan test | 3.2 |
| Tokenizer | `use_fast`, huruf kecil/besar, token khusus | 3.2 |

## Urutan pengecekan

1. **Label mapping (F).** Satu kesalahan di sini membuat seluruh Bab 4 salah, dan pengecekannya paling cepat.
2. **Skala bobot, skema aktivasi, dan kalibrasi (A–C).** Ketiganya mengubah isi Bab 2.4–2.5. Putuskan sebelum eksperimen penuh.
3. **Cakupan lapisan dan definisi kondisi (B, D).** Ini menentukan apakah lima kondisi benar-benar sebanding.
4. **Hyperparameter dan seed (E).** Ini tidak mengubah Bab 2, tetapi memengaruhi seluruh angka.
5. **BOPs dan protokol latensi (G).** Bisa dikerjakan paling akhir, tetapi rumus BOPs harus masuk Bab 2 sebelum implementasi.

Untuk satu pengecekan cepat tanpa membaca semua kode, jalankan satu kali kuantisasi W8A8 dengan `SMOKE_TEST=True`, lalu cetak struktur model (`print(model)`) dan konfigurasi tiap quantizer (`n_bits`, `per_channel`, `symmetric`). Dari situ skema, granularitas, dan lapisan yang ikut terkuantisasi bisa dibaca langsung, tanpa menebak dari nama opsi.


Daftar di bawah dikelompokkan menurut jenis keputusannya. Kolom "Cek di" menunjukkan tempat mencari jawabannya, dan kolom "Dampak" menunjukkan bab yang berubah jika jawabannya berubah.

## A. Kuantisasi bobot

| Yang dicari | Opsi | Cek di | Dampak |
|---|---|---|---|
| Skema | Simetris atau asimetris | Notebook: `QMETHOD`; Gholami et al. (2021) | 2.4, 2.5 |
| Granularitas | Per-tensor atau per-channel (sumbu mana) | `quant_click_options.py` (opsi per-channel), `QuantizedModule` (`per_channel_weights`) | 2.5, 3.4 |
| Penentuan rentang | Absmax, MSE, atau percentile | Notebook: `W_QUANT_METHOD`, `W_OPT_METHOD`; `range_estimators.py` | Pers. 2.6 |
| Lapisan yang dikuantisasi | Linear saja, atau juga embedding, pooler, classifier head | `quantized_bert.py` (cari `DEFAULT_QUANT_DICT` dan `_quantize_model`) | 3.4 |
| Bias | Dikuantisasi atau dibiarkan FP32 | `QuantLinear` di `autoquant_utils.py` | 3.4 |

## B. Kuantisasi aktivasi

| Yang dicari | Opsi | Cek di | Dampak |
|---|---|---|---|
| Statis atau dinamis | Rentang dibekukan setelah kalibrasi, atau dihitung ulang per input | `ACT_QUANT_METHOD`, `fix_act_ranges` pada `base_quantized_model.py`, dan apakah dipanggil sebelum evaluasi | 2.5, 3.4 |
| Granularitas | Per-tensor atau per-embedding | `per_embd_quant_utils.py` | 3.4 |
| Skema | Simetris atau asimetris | `QMETHOD_ACT` | 2.4 (perlu persamaan zero point jika asimetris) |
| Estimator rentang | Min-max, running min-max, percentile, MSE | `RangeEstimators` | 2.5 |
| Titik kuantisasi | Input lapisan linear saja, atau juga attention score, softmax, residual, output GELU | `QUANT_SETUP='all'` dan `DEFAULT_QUANT_DICT` | 3.4 (daftar pengecualian) |
| Penanganan outlier | Dibiarkan atau ditangani (per-embedding, mixed precision) | Bondarenko et al. (2021), asal kode Qualcomm yang Anda pakai; Abdurrahman et al. (2023) | Penjelasan hasil W4A4 di Bab 4 |

## C. Kalibrasi

| Yang dicari | Opsi | Cek di | Dampak |
|---|---|---|---|
| Jumlah sampel | Notebook saat ini: 1 batch × 16 = 16 sampel | `NUM_EST_BATCHES`, `EST_RANGES_BATCH_SIZE`; Hubara et al. (2021), Williams & Aletras (2024) | 3.4 |
| Sumber data | Split train, bukan test | `pass_data_for_range_estimation` | 3.4 |
| Pengaruh padding | `PAD_TO_MAX_LEN=True` membuat token padding ikut masuk statistik rentang | Cek apakah attention mask diterapkan sebelum penghitungan rentang | 3.4 |
| Seed kalibrasi | Dicatat atau tidak | Config | 3.6 |

## D. Definisi kondisi presisi

| Yang dicari | Opsi | Dampak |
|---|---|---|
| A16 atau A32 | Aktivasi tak terkuantisasi di model FP32 bernilai 32-bit | Nama kondisi di 2.4, Tabel 2.1, dan judul tabel Bab 4 |
| Bobot INT4 | Fake quantization (kuantisasi lalu dekuantisasi di float) | Catatan keterbatasan di 3.4 dan 3.5.3 |
| FP32 | Model fine-tuning yang sama, tanpa operasi kuantisasi | 2.7.2 sudah menyebut ini |

## E. Fine-tuning baseline

| Yang dicari | Cek di | Dampak |
|---|---|---|
| Hyperparameter (epoch, learning rate, batch size, weight decay, warmup) | Notebook: `BL_*`; bandingkan dengan Maharani et al. (2023) dan Wilie et al. (2020) | 3.3 |
| `MAX_SEQ_LEN=128` | Distribusi panjang token hasil EDA; hitung persentase teks yang terpotong | 3.2 |
| Kriteria checkpoint terbaik | Apakah Macro F1 di validation atau metrik lain; cek `TrainingArguments` di `main.py` | 3.3 |
| Pembobotan kelas | Perlu atau tidak, mengingat negatif 20,98% dan 13,38% | 3.3 |
| Jumlah seed | 3–5 seed | 3.6 |

## F. Evaluasi dan statistik

| Yang dicari | Cek di | Dampak |
|---|---|---|
| **Urutan label (indeks ke negatif/netral/positif)** | Pemetaan label di dataset Hugging Face `intanm/...` dan `financial_task.py`. Jika terbalik, S = P(Positif) − P(Negatif) salah tanda | 3.5.2, ini yang paling kritis |
| Jumlah bin dan cara binning margin | Kuantil (jumlah data per bin sama) atau lebar tetap | 3.5.4 |
| Resample bootstrap dan tingkat kepercayaan | Umumnya 1.000–10.000 resample dan 95%; cari rujukan | 2.x (tambahan), 3.5.4 |
| Koreksi perbandingan berganda | Banyak pasangan kondisi: Holm atau Bonferroni | 3.5.4 |
| Presisi numerik KL | float64 untuk softmax dan KL | 3.5.2 |

## G. Efisiensi

| Yang dicari | Cek di | Dampak |
|---|---|---|
| Rumus BOPs | Abdurrahman et al. (2023) memakai FLOPs; cari rujukan yang mendefinisikan BOPs (MAC × bit bobot × bit aktivasi) | 2.7.3 (tambahan), 3.5.3 |
| Lapisan yang dihitung BOPs | Linear saja, atau juga perkalian matriks attention (QKᵀ dan ·V); panjang urutan yang dipakai | 3.5.3 |
| Ukuran teoretis | Embedding tidak dikuantisasi, jadi dihitung 32-bit; cek `_effective_size_mb` | 3.5.3 |
| Ukuran berkas aktual | Perlu implementasi penyimpanan; Sanjaya et al. (2026) menunjukkan INT4 bisa tersimpan sebagai INT8 | 3.5.3 |
| Protokol latensi | Perangkat (CPU/GPU), batch size 1, warm-up, jumlah iterasi. Notebook saat ini memakai 5 warm-up dan 30 iterasi, dan jumlah itu perlu Anda justifikasi | 3.5.3 |

## H. Data

| Yang dicari | Cek di | Dampak |
|---|---|---|
| Jumlah baris per split | Output EDA (sel 48), bandingkan dengan 1.591/227/456 dan 1.629/182/453 | 3.2 |
| Duplikat atau kebocoran antar split | Cek manual teks identik antar train dan test | 3.2 |
| Tokenizer | `use_fast`, huruf kecil/besar, token khusus | 3.2 |

## Urutan pengecekan

1. **Label mapping (F).** Satu kesalahan di sini membuat seluruh Bab 4 salah, dan pengecekannya paling cepat.
2. **Skala bobot, skema aktivasi, dan kalibrasi (A–C).** Ketiganya mengubah isi Bab 2.4–2.5. Putuskan sebelum eksperimen penuh.
3. **Cakupan lapisan dan definisi kondisi (B, D).** Ini menentukan apakah lima kondisi benar-benar sebanding.
4. **Hyperparameter dan seed (E).** Ini tidak mengubah Bab 2, tetapi memengaruhi seluruh angka.
5. **BOPs dan protokol latensi (G).** Bisa dikerjakan paling akhir, tetapi rumus BOPs harus masuk Bab 2 sebelum implementasi.

Untuk satu pengecekan cepat tanpa membaca semua kode, jalankan satu kali kuantisasi W8A8 dengan `SMOKE_TEST=True`, lalu cetak struktur model (`print(model)`) dan konfigurasi tiap quantizer (`n_bits`, `per_channel`, `symmetric`). Dari situ skema, granularitas, dan lapisan yang ikut terkuantisasi bisa dibaca langsung, tanpa menebak dari nama opsi.

Saya cari dan verifikasi tiap bagian satu per satu, dengan prioritas pada sumber primer (makalah asli, prosiding, atau halaman dataset).Saya cari dan verifikasi rujukan untuk tiap butir A sampai H. Semuanya saya cek lewat halaman resmi penerbit atau arXiv, kecuali yang saya tandai. Yang saya baca adalah **metadata dan abstrak**, bukan teks lengkap, jadi bagian "yang didukung" di bawah hanya mencakup apa yang terlihat di sana. Buka tiap makalah sebelum Anda mengutip isi spesifiknya.

## Rujukan per butir

| Butir | Rujukan terverifikasi | Yang didukung | Catatan |
|---|---|---|---|
| **A** Skema simetris/asimetris | Bondarenko et al. (2021); Nagel et al. (2021) | Bondarenko menyebut skema affine/asimetris umum dipakai karena efisien di aritmetika fixed-point. Nagel adalah white paper kuantisasi yang membahas PTQ dan QAT. | Bab 2.4 saat ini hanya memuat persamaan simetris. |
| A Per-channel bobot | Krishnamoorthi (2018) | Merekomendasikan bobot per-channel dan aktivasi per-layer. PTQ 8-bit pada CNN mencapai akurasi dalam 2% dari floating point. | Eksperimennya pada CNN, bukan transformer. |
| A Penentuan rentang (absmax/MSE) | Nagel et al. (2021); Bondarenko et al. (2021) | Keduanya membahas PTQ. Bondarenko memakai estimator current min-max pada analisisnya. | Pembahasan MSE vs min-max tidak terlihat di abstrak. Baca bagian range setting di white paper. |
| A Embedding dan lapisan lain | Bondarenko et al. (2021) | Abstrak menyatakan bobot dan embedding transformer bisa dikuantisasi ke bit sangat rendah. | Cakupan lapisan lain ada di bagian metodologi. |
| A Bias | Jacob et al. (2018) | Gambar 1.1 menunjukkan bias disimpan 32-bit pada inferensi integer. | Konteksnya CNN. |
| **B** Statis vs dinamis, estimator | Bondarenko et al. (2021) | Memakai estimator current min-max dengan batch size 1 pada eksperimen PTQ. | Cek apakah rentang dibekukan sebelum evaluasi. Ini menentukan statis atau dinamis. |
| B Outlier dan per-embedding | Bondarenko et al. (2021) | Aktivasi transformer punya rentang dinamis tinggi yang sulit direpresentasikan di fixed-point bit rendah. Makalah ini memperkenalkan per-embedding-group quantization. | Rujukan utama untuk menjelaskan hasil W4A4 di Bab 4. |
| B Ekspektasi W4A4 | Wu et al. (2023); Abdurrahman et al. (2023) | Sudah di Bab 2. Wu memakai QAT, Abdurrahman PTQ. | Kedua temuan bertentangan, laporkan keduanya. |
| **C** Jumlah sampel kalibrasi | Hubara et al. (2021); Williams & Aletras (2024); Shihab et al. (arXiv:2604.24008) | Dua pertama sudah di Bab 2. Shihab menunjukkan pemilihan sampel memengaruhi INT4 dengan 64–128 sampel. | Shihab berupa preprint dan evaluasinya pada LLM (MMLU, perplexity). |
| **D** Fake quantization | Jacob et al. (2018); Nagel et al. (2021); Wu et al. (2023) | Jacob menjelaskan "simulated quantization" saat pelatihan, dan Nagel memuat bagian simulasi. Wu (sudah di Bab 2) menyebut percepatan INT4 butuh kernel khusus. | - |
| D Notasi WxAy | Wu et al. (2023); Abdurrahman et al. (2023) | Notasi sudah di Bab 2. Abdurrahman memakai W4A32 untuk aktivasi tak terkuantisasi. | Ini konvensi, tidak perlu rujukan baru. |
| **E** Hyperparameter dan seed | Mosbach et al. (2021) | Fine-tuning BERT bervariasi antar seed. Jumlah iterasi berpengaruh pada stabilitas. | `BL_NUM_EPOCHS=3` perlu Anda justifikasi dengan makalah ini. Dodge et al. (2020) dikutip di sana, tetapi saya belum membuka makalahnya sendiri. |
| **F** Urutan label | Maharani et al. (2023), arXiv:2310.09736 | PhraseBank: negatif (0), netral (1), positif (2). | Pemetaan IndoFinSent tidak saya temukan (lihat catatan bawah). |
| F Analisis per sampel dan flip | Hooker et al. (2019/2021) | Akurasi agregat menyembunyikan perbedaan dampak kompresi antar contoh dan kelas. Mereka mengukur ketidaksepakatan prediksi model terkompresi dan tak terkompresi. | Eksperimennya pada citra. |
| F Probabilitas softmax | Guo et al. (2017) | Jaringan modern tidak terkalibrasi dengan baik. | Peringatan penting untuk S = P(+) − P(−): S adalah skor keyakinan model, bukan probabilitas sentimen yang benar. |
| F Bootstrap | Berg-Kirkpatrick et al. (2012); Efron & Tibshirani (1993) | Berg-Kirkpatrick memakai bootstrap berpasangan untuk metrik NLP dan b = 10⁶ resample. | Lihat koreksi di bawah. |
| F Uji berpasangan | Dror et al. (2018) | Protokol memilih uji signifikansi di NLP. | - |
| F McNemar | Dietterich (1998) | McNemar punya type I error rendah dan cocok bila model hanya dijalankan sekali. | Lihat catatan di bawah. |
| F Koreksi berganda | Holm (1979) | Prosedur sequentially rejective Bonferroni, valid pada dependensi sembarang dan lebih kuat daripada Bonferroni biasa. | - |
| **G** BOPs | Baskin et al. (2021), UNIQ; van Baalen et al. (2020), Bayesian Bits | Baskin mengusulkan BOPs sebagai metrik kompleksitas. Bayesian Bits memakai BOPs sebagai metrik efisiensi. | Rumus lengkap tidak terlihat di abstrak. Ambil dari bagian metrik di kedua makalah. |
| G Latensi | Reddi et al. (2020), MLPerf Inference | Mendefinisikan skenario single-stream, multistream, server, dan offline. | Jumlah warm-up dan iterasi tidak saya temukan di sumber. |
| G Ukuran model | Krishnamoorthi (2018); Sanjaya et al. (2026) | Bobot 8-bit mengurangi ukuran sekitar 4× pada jalur PTQ sederhana. Sanjaya (sudah di Bab 2) menunjukkan INT4 bisa tersimpan sebagai INT8. | - |
| **H** Kebocoran data | Elangovan et al. (2021) | Tumpang tindih train-test mengembangkan hasil dan mengukur memorisasi, bukan generalisasi. | Studi pada NER dan relation extraction. |
| H Statistik dataset | Maharani et al. (2023) | 2.274 entri IndoFinSent, 2.264 PhraseBank, dan proporsi kelas sesuai Bab 2. | - |

## Butir yang tidak punya rujukan ilmiah

- **Token padding di statistik kalibrasi (C).** Tidak ada makalah yang saya temukan. Cara menanganinya cukup Anda dokumentasikan di Bab 3.4 setelah memeriksa kode.
- **`MAX_SEQ_LEN=128` (E).** Justifikasinya dari distribusi panjang token hasil EDA Anda sendiri.
- **Tokenizer (H).** Tidak perlu rujukan baru. Rujuk Wilie et al. (2020) untuk `indobert-base-p1`.
- **KL dalam float64 (F).** Ini keputusan implementasi. Cukup tulis di Bab 3.
- **Perkalian matriks attention di BOPs (G).** Tidak ada sumber yang saya temukan. Putuskan sendiri dan nyatakan di Bab 3.5.3.
- **Cara binning margin (F).** Tidak ada rujukan yang mengatur ini untuk kasus Anda. Tetapkan sendiri dan laporkan.

## Temuan dari pencarian yang memengaruhi pipeline

1. **Dataset IndoFinSent di Hugging Face.** README-nya hanya berisi metadata lisensi, tidak mendokumentasikan label. Dari daftar dataset penulisnya, entri IndoFinSent berjumlah 2.274 baris, dan hasil konversi parquet menampilkan satu partisi `train`. Ini mengindikasikan split resmi (1.591/227/456) **tidak ikut disediakan** dan harus dibentuk sendiri. Saya belum membuka isi datasetnya. Jalankan di notebook: cetak `dataset.keys()`, nama fitur label, dan jumlah baris per split. Ada pula dataset terpisah `intanm/indonesian-financial-sentiment-analysis` (1,97 ribu baris, train dan test), jadi pastikan `hf_path` mengarah ke dataset yang dimaksud Bab 2.
2. **Jumlah resample bootstrap yang saya sebut sebelumnya ("1.000–10.000") tidak punya sumber.** Berg-Kirkpatrick et al. (2012) memakai b = 10⁶ untuk p-value. Pilih jumlah dan justifikasi sendiri, atau ikuti rujukan itu.
3. **McNemar menguji perbedaan *kebenaran* prediksi** antara dua model (diskordan benar-salah), bukan flip rate. Flip rate tetap metrik deskriptif. Rancang uji McNemar pada selisih akurasi, dan laporkan flip rate secara terpisah.
4. **Estimator `current_minmax` pada Bondarenko et al.** Jika tidak dibekukan setelah kalibrasi, rentang aktivasi dihitung ulang per input (dinamis), dan itu bertentangan dengan janji Bab 2.5. Ini tetap harus Anda cek di kode, bukan di makalah.

## Daftar rujukan (siap salin)

Semua entri sudah terverifikasi metadatanya, tetapi nomor volume dan halaman yang tidak terlihat di sumber saya tinggalkan kosong. Lengkapi dari halaman penerbit.

- Baskin, C., Liss, N., Schwartz, E., Zheltonozhskii, E., Giryes, R., Bronstein, A. M., & Mendelson, A. (2021). UNIQ: Uniform noise injection for non-uniform quantization of neural networks. *ACM Transactions on Computer Systems*. https://doi.org/10.1145/3444943
- Berg-Kirkpatrick, T., Burkett, D., & Klein, D. (2012). An empirical investigation of statistical significance in NLP. *EMNLP-CoNLL*, 995–1005. https://aclanthology.org/D12-1091/
- Bondarenko, Y., Nagel, M., & Blankevoort, T. (2021). Understanding and overcoming the challenges of efficient transformer quantization. *EMNLP 2021*. https://doi.org/10.18653/v1/2021.emnlp-main.627
- Dietterich, T. G. (1998). Approximate statistical tests for comparing supervised classification learning algorithms. *Neural Computation, 10*(7), 1895–1924. https://doi.org/10.1162/089976698300017197
- Dror, R., Baumer, G., Shlomov, S., & Reichart, R. (2018). The hitchhiker's guide to testing statistical significance in natural language processing. *ACL 2018*. https://aclanthology.org/P18-1128/
- Efron, B., & Tibshirani, R. J. (1993). *An introduction to the bootstrap*. Chapman & Hall.
- Elangovan, A., He, J., & Verspoor, K. (2021). Memorization vs. generalization: Quantifying data leakage in NLP performance evaluation. *EACL 2021*. https://doi.org/10.18653/v1/2021.eacl-main.113
- Guo, C., Pleiss, G., Sun, Y., & Weinberger, K. Q. (2017). On calibration of modern neural networks. *ICML*, PMLR 70, 1321–1330. https://proceedings.mlr.press/v70/guo17a.html
- Holm, S. (1979). A simple sequentially rejective multiple test procedure. *Scandinavian Journal of Statistics, 6*(2), 65–70.
- Hooker, S., Courville, A., Clark, G., Dauphin, Y., & Frome, A. (2019). What do compressed deep neural networks forget? *arXiv:1911.05248*.
- Jacob, B., Kligys, S., Chen, B., Zhu, M., Tang, M., Howard, A., Adam, H., & Kalenichenko, D. (2018). Quantization and training of neural networks for efficient integer-arithmetic-only inference. *CVPR*, 2704–2713. https://doi.org/10.1109/CVPR.2018.00286
- Krishnamoorthi, R. (2018). Quantizing deep convolutional networks for efficient inference: A whitepaper. *arXiv:1806.08342*.
- Mosbach, M., Andriushchenko, M., & Klakow, D. (2021). On the stability of fine-tuning BERT: Misconceptions, explanations, and strong baselines. *ICLR 2021*. arXiv:2006.04884.
- Nagel, M., Fournarakis, M., Amjad, R. A., Bondarenko, Y., van Baalen, M., & Blankevoort, T. (2021). A white paper on neural network quantization. *arXiv:2106.08295*.
- Reddi, V. J., et al. (2020). MLPerf inference benchmark. *ISCA 2020*. https://doi.org/10.1109/ISCA45697.2020.00045
- van Baalen, M., Louizos, C., Nagel, M., Amjad, R. A., Wang, Y., Blankevoort, T., & Welling, M. (2020). Bayesian Bits: Unifying quantization and pruning. *NeurIPS 33*.
- Shihab, I. F., Akter, S., & Sharma, A. (preprint). Coverage-based calibration for post-training quantization via weighted set cover over outlier channels. *arXiv:2604.24008*.

Dari semua ini, tiga hal paling berdampak: label mapping dan split IndoFinSent (butir 1), definisi statis/dinamis aktivasi (butir 4), dan pembetulan uji McNemar (butir 3). Ketiganya perlu diputuskan sebelum eksperimen penuh.

Saya cek dulu apakah Dror et al. (2018) memang membahas uji Wilcoxon, supaya justifikasinya tidak saya tebak.Dari komponen pengujian dan metrik di pipeline Anda tanpa McNemar, **delapan sudah punya justifikasi, tiga sebagian, dan tiga belum**. Saya baca teks lengkap Dror et al. (2018) untuk memastikan bagian uji statistik, bukan hanya abstraknya.

| Komponen | Status | Rujukan | Yang masih kurang |
|---|---|---|---|
| Macro F1 dan akurasi | Sudah | Hinojosa Lee et al. (2024); Sokolova & Lapalme (2009), keduanya sudah di Bab 2 | - |
| Precision/recall/F1 per kelas | Sudah | Bab 2.6.1 dan 2.7.1; Hooker et al. (2019) menunjukkan akurasi agregat menyembunyikan dampak kompresi antar kelas | - |
| Flip rate (deskriptif) | Sudah | Hooker et al. (2019), ketidaksepakatan prediksi model terkompresi vs tidak; Sanjaya et al. (2026), metrik agreement | Tanpa uji inferensial (lihat catatan 3) |
| Bootstrap CI untuk MAE dan Macro F1 | Sudah | Berg-Kirkpatrick et al. (2012): bootstrap berpasangan bisa dipakai untuk metrik apa pun; Dror et al. (2018) §3.2.2; Efron & Tibshirani | Jumlah resample belum punya acuan (lihat catatan 1) |
| Wilcoxon berpasangan pada drift per sampel antar kondisi | Sudah | Dror et al. (2018) §3.2.2: untuk sampel berpasangan bernilai nyata, H0 selisih simetris di sekitar nol, lebih kuat daripada uji tanda | Asumsi independensi (catatan 2) |
| Perbedaan Macro F1 antar kondisi | Sudah | Bootstrap berpasangan pada selisih Macro F1 (Berg-Kirkpatrick et al., 2012) menggantikan McNemar | - |
| Koreksi perbandingan berganda | Sudah | Holm (1979): lebih kuat daripada Bonferroni biasa dan valid pada dependensi sembarang | Putuskan Holm atau Bonferroni |
| Rata-rata dan simpangan baku antar seed | Sudah | Mosbach et al. (2021): hasil fine-tuning BERT bervariasi antar seed | - |
| Spearman sebagai metrik stabilitas | Sebagian | Sanjaya et al. (2026) memakai korelasi Spearman | Tidak ada rujukan untuk definisinya |
| Rumus S = P(+) − P(−) | Sebagian | Bab 2.2 berargumen terhadap NDI; Guo et al. (2017) menunjukkan softmax tidak terkalibrasi | Tidak ada rujukan yang memvalidasi S sebagai indikator |
| Analisis per kelas prediksi FP32 | Sebagian | Hooker et al. (2019) untuk pendekatan per kelas | Dasar memakai kelas prediksi FP32, bukan label asli, belum ada |
| MAE dan Pearson | Belum | Rumus di Bab 2.7.2 tanpa sitasi | Perlu rujukan buku teks atau makalah |
| KL divergence | Belum | Rumus di 2.7.2 tanpa sitasi | Sama |
| Hubungan drift dengan margin keputusan | Belum | Hooker dan Guo hanya mendukung secara tidak langsung | Tidak ada makalah yang saya temukan tentang margin dan drift kuantisasi |

## Catatan

1. **Jumlah resample bootstrap.** Berg-Kirkpatrick et al. (2012) memakai 10⁶ untuk p-value, dan tidak ada acuan untuk batas bawah. Tetapkan sendiri dan tulis alasannya di Bab 3.5.4.
2. **Dua keterbatasan dari Dror et al. (2018) yang perlu Anda sebut.** Pertama, semua uji ini mengasumsikan sampel independen, padahal IndoFinSent berisi judul berita yang merujuk satu institusi (sudah Anda catat di Bab 2.6.1). Dror menyebut asumsi ini jarang terpenuhi di NLP. Kedua, uji bootstrap "kurang efektif untuk test set kecil", dan pemakaian bootstrap pada test set kecil mereka hitung sebagai pemakaian yang keliru. Test set Anda berukuran 456 dan 453, dan Dror tidak memberi ambang pasti. Cantumkan sebagai keterbatasan, dan jangan menyebut hasil bootstrap sebagai kesimpulan pasti.
3. **Dengan McNemar dihapus, flip rate tidak punya uji inferensial.** Itu tidak bermasalah, karena flip rate adalah ukuran deskriptif. Jika ingin interval kepercayaan, bootstrap bisa dipakai pada flip rate (menurut Berg-Kirkpatrick, metrik apa pun bisa dipakai).
4. **Hapus Dietterich (1998) dari daftar rujukan** yang saya berikan sebelumnya, karena hanya relevan untuk McNemar.
5. **Tahun Efron & Tibshirani.** Dror et al. mencantumkan 1994 (CRC Press), sedangkan makalah lain mencantumkan 1993. Pakai tahun edisi yang benar-benar Anda akses.
6. **Penulisan hasil.** Dror et al. mengingatkan bahwa kata "signifikan" sebaiknya dipakai hanya dalam arti statistik. Ini juga sejalan dengan panduan pembimbing agar tidak memakai kata yang tidak terukur.

## Sinkronisasi Bab 2

Semua uji di atas dijanjikan "dijelaskan pada Bab III" (Bab 2.7.2), tetapi dasar teorinya belum ada di Bab 2. Tambahkan satu subbab 2.7.4 (Pengujian Statistik) dengan dua paragraf: bootstrap berpasangan (Berg-Kirkpatrick et al., 2012; Dror et al., 2018), Wilcoxon (Dror et al., 2018), koreksi Holm (Holm, 1979), dan variasi antar seed (Mosbach et al., 2021). Setelah itu Bab 3.5.4 tinggal merujuk ke sana.

Tiga komponen yang belum punya rujukan (MAE/Pearson, KL, dan margin vs drift) bisa saya cari lebih lanjut jika Anda mau, dengan catatan bahwa untuk margin vs drift kemungkinan memang tidak ada makalah yang langsung mendukung.
````

<a id="f-report-md"></a>

## `report.md`

Ukuran 9,165 byte &middot; 90 baris &middot; sha256 `c8621c4948ec` &middot; encoding `utf-8-sig`

```markdown
# Report — Yang Butuh Verifikasi & Perhatian Khusus

Dibuat 23 Oktober 2026. Cakupan: skripsi *Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia* (IndoBERT + SQuAD-id).

Legenda: **P0** = harus beres sebelum eksperimen dilanjutkan · **P1** = sebelum Bab II/III difinalkan · **P2** = sebelum sidang.

---

## A. Data & dataset — paling kritis

| # | Yang perlu diverifikasi | Kenapa penting | Bukti / kondisi sekarang | Aksi | Prioritas |
|---|---|---|---|---|---|
| A1 | **Asal-usul `squad_id_train.jsonl` (130.319) dan `squad_id_testt.jsonl` (11.873)** | Angka itu **persis** jumlah SQuAD v2.0 resmi (train 130.319, validation 11.873 menurut dataset card Hugging Face). Artinya file ini terjemahan **penuh** SQuAD v2.0, termasuk pertanyaan tanpa jawaban | Dua angka cocok persis dengan SQuAD v2.0; belum jelas ini rilis Muis dkk. (2020), versi SEACrowd, atau versi lain yang sudah diperbaiki | Cek `origin_id` satu baris terhadap `train-v2.0.json` resmi; catat sumber + tanggal unduh + lisensi di Bab III | **P0** |
| A2 | **Status "test"** | `squad_id_testt.jsonl` = split **dev** SQuAD v2.0, bukan test held-out | Nama file "testt", jumlah 11.873 = dev resmi | Sebut sebagai *split uji turunan dev SQuAD v2.0* di Bab II/III, atau pakai sebagai validation dan bentuk test lain — pilih satu, jangan campur | **P0** |
| A3 | **Jumlah baris yang benar-benar dipakai** | Bab I membatasi evaluasi pada sampel berjawaban; 130.319 ≠ data efektif | Butuh hitungan `is_impossible == False` dan `is_data_invalid == False` dari EDA-mu | Ambil angkanya, laporkan di Bab III (tabel split), dan bandingkan dengan 85.776 (Matrik) / 102.657 (Muis) | **P0** |
| A4 | **Validitas span jawaban** | Kalau `context[start:start+len(answer)] != answer`, model dilatih dengan label yang salah → F1 turun bukan karena kuantisasi | Datasetmu punya field `answer_start_original`, `answer_start_recomputed`, `answer_start_recompute_note` → **sudah pernah diperbaiki oleh pembuatnya**, tapi belum kamu verifikasi | Hitung persentase span valid (`span_valid_%` di notebook). Target: >99%. Kalau di bawah, jalankan perbaikan Levenshtein (resep di `reports.md` §6) | **P0** |
| A5 | **Arti `is_answer_missing` dan `is_data_invalid`** | Dua flag ini menentukan filter; kalau salah tafsir, jumlah data di Bab III salah | Notebook hanya mendefinisikan secara umum ("ditandai tidak valid oleh proses pembersihan") | Buka dokumentasi pembuat dataset; tulis definisi operasionalnya di Bab III | **P1** |
| A6 | **Duplikat & kebocoran antar split** | Konteks yang sama muncul di train dan test akan menggelembungkan skor | Notebook sudah menyiapkan pemeriksaannya, hasil belum ada | Laporkan `%` konteks/pertanyaan test yang ada di train | **P1** |
| A7 | **Proporsi konteks > 512 token** | Menentukan kebutuhan sliding window dan berapa jawaban yang terpotong | Belum diukur | Ukur dengan tokenizer IndoBERT; laporkan p95 panjang konteks dalam token | **P1** |
| A8 | **Lisensi dataset** | Bab II sendiri mencatat lisensi belum jelas | Belum ada | Tentukan dari sumber (SEACrowd punya lisensi per-dataset) | **P2** |

---

## B. Angka yang harus masuk akal (sanity check)

| # | Patokan | Nilai pembanding | Kalau hasilmu jauh di bawah | Prioritas |
|---|---|---|---|---|
| B1 | **Baseline FP32 fine-tuning** | Matrik (2026) pada dataset yang sama: `indobert-base-p1` **F1 63,59 / EM 51,02**; `indolem/indobert-base-uncased` **F1 71,58 / EM 60,58** | Berarti ada bug di pipeline (span mapping, tokenizer, atau label), **bukan** efek kuantisasi. Jangan lanjut ke kuantisasi sebelum baseline wajar | **P0** |
| B2 | Jumlah data vs literatur | Muis: 114.604 pasangan → 102.657 train / 11.407 val / 10.536 test. Matrik: 85.812→85.776 train, 8.170→7.587 val | Selisih harus bisa dijelaskan (unanswerable dibuang? alignment dibersihkan?) | **P1** |
| B3 | **Klaim ukuran model 12,5%** | Teoretis 4-bit vs FP32 = 12,5%, tapi bobot INT4 umumnya disimpan sebagai int8 → nyatanya ~25%, ditambah faktor skala | Kalau klaim 12,5% dipakai tanpa penjelasan, mudah dipatahkan | **P1** |
| B4 | Klaim latensi | Kuantisasi tersimulasi (dequant → FP32 → hitung) tidak mempercepat inferensi | Jangan klaim speedup; tulis sebagai batasan (sudah ada di Batasan Masalah) | **P1** |

---

## C. Sitasi & klaim di Bab I–II

| # | Masalah | Lokasi | Status | Prioritas |
|---|---|---|---|---|
| C1 | `wu2023understanding` dipakai untuk klaim **granularitas** | `chapter-1.tex:28`, `chapter-2.tex:117` | Paper itu tidak membahas granularitas (0 kemunculan "granular") → **ganti** ke `gholami2021survey` (Bagian E) atau `bondarenko2021understanding` | **P1** |
| C2 | Tiga klaim lebih luas daripada kutipannya | `chapter-1.tex:20` (Transformer "representasi kontekstual"), `chapter-1.tex:20` (model bahasa multibahasa), `chapter-2.tex:56` (IndoBERT "memahami pertanyaan dan konteks") | Persempit kalimat atau tambah sumber | **P1** |
| C3 | **Tabel penelitian terdahulu: 4 dari 5 baris gugur syarat** (≥5 sitasi, ≤5 tahun) | Tabel 2.1 | Hu 2022 = 0 sitasi; Abdurrahman = 1; Sanjaya = 0; Ramaputra = 0. Hanya Han 2026 yang tidak bisa dicek (PDF tidak ada) | Susun ulang per `PROPOSAL_PENELITIAN_TERDAHULU.md` | **P1** |
| C4 | Angka tabel baris 1 & 3 belum terverifikasi | Tabel 2.1 | Baris 2, 4, 5 sudah cocok semua dengan PDF; baris 1 (Hu) & 3 (Han) belum | Unduh `hu2022` (arXiv 2210.16621) dan `han2026breaking` | **P1** |
| C5 | Sitasí dataset kurang satu | `chapter-2.tex:69` | Versi yang dipakai (ditata ulang + penanda kualitas) berciri **SEACrowd**, bukan hanya Muis dkk. | Tambah sitasi SEACrowd (EMNLP 2024) | **P1** |
| C6 | Judul bib `wu2023understanding` | `references.bib` | **Bukan kesalahan**: itu judul versi arXiv v1 (2301.12017). Versi terbit memakai "…for Language Models" | Samakan dengan PDF yang kamu pegang | **P2** |
| C7 | 14 klaim bertumpu pada PDF yang tidak ada di lokal | — | Daftar lengkap di `bahan_justifikasi/README.md` | Unduh 6 prioritas (Han, hu2022, Rajpurkar, Muis, Dror, Holm) | **P2** |

---

## D. Struktur & administrasi dokumen

| # | Yang kurang | Lokasi | Dampak | Prioritas |
|---|---|---|---|---|
| D1 | Judul, penulis, NIM, pembimbing, kata kunci masih placeholder | `src/config/informations.tex:7-25` | PDF skripsi tercetak dengan judul template | **P0** |
| D2 | **Ringkasan (abstract-id) masih topik lama**: PTQ INT4 untuk sentimen/topik finansial, IndoFinSent, Macro F1 | `src/chapters/abstract-id.tex` | Bertentangan langsung dengan judul; kalau ikut dicetak, terbaca sebagai skripsi lain | **P0** |
| D3 | Summary (abstract-en) masih `\blindtext` | `src/chapters/abstract-en.tex` | Sama | **P1** |
| D4 | Bab I belum punya **Manfaat Penelitian** | `chapter-1.tex` | Banyak pedoman mewajibkan; proposal temanmu punya | **P1** |
| D5 | Bab I belum punya **Metodologi** & **Sistematika Pembahasan** | `chapter-1.tex` | Alur penelitian tidak terbaca dari Bab I | **P1** |
| D6 | Bab II belum punya **Kerangka Berpikir** | akhir `chapter-2.tex` | Penutup bab yang lazim diminta | **P2** |
| D7 | 5 TODO menunggu data | `chapter-2.tex:71,73,75,115` | Wajar; jangan tertinggal | **P1** |
| D8 | Bab III masih placeholder penuh | `chapter-3.tex` | Belum ada metodologi eksperimen yang bisa dinilai | **P1** |

---

## E. Keputusan metodologis yang harus kamu ambil (dan tulis di Bab III)

| # | Keputusan | Kenapa perlu diputuskan sekarang | Rekomendasi |
|---|---|---|---|
| E1 | `max_length` dan `stride` untuk tokenisasi QA | Tanpa ini, hasil tidak bisa direproduksi dan jawaban panjang bisa terpotong | 384 / 128 (umum untuk SQuAD); laporkan p95 panjang konteks untuk mendukung pilihan |
| E2 | Perlakuan pertanyaan tanpa jawaban | Bab I sudah membatasi (dibuang), tapi angkanya belum ada | Buang, laporkan jumlahnya, dan sebutkan bahwa kemampuan "tidak bisa dijawab" tidak diuji |
| E3 | Uji signifikansi | Bab II sudah menulis paired bootstrap + Holm (m=3) | Pertahankan; opsi tambahan: **McNemar untuk EM** (EM biner per sampel) — preseden: proposal Tafftadia |
| E4 | Definisi operasional coarse vs fine | Pustaka seperti `torch.ao.quantization` memakai **per-channel untuk bobot sebagai bawaan** | Pastikan "coarse" benar-benar dipaksa per-tensor (bukan sekadar tidak mengubah default) |
| E5 | Jumlah run / seed | Matrik memakai 1 run + bootstrap; Tafftadia memakai 3 seed | Pilih satu dan nyatakan; kalau 1 run, jangan klaim variabilitas antar-run |

---

## F. Sudah beres — jangan dikerjakan ulang

- 62 klaim bersitasi Bab I–II dipetakan + kutipan verbatim + lokasi → `bahan_justifikasi/`
- Angka Tabel 2.1 baris 2, 4, 5 terverifikasi ke PDF (Abdurrahman, Sanjaya, Ramaputra)
- Angka Bondarenko (83,06 / 71,03 / 70,25 / 83,23) terverifikasi ke Tabel 1 papernya
- Angka Mokey terverifikasi ke PDF aslinya (SQuAD F1 93,15 → 93,17 weight-only → 92,22 weight+activation)
- Pemilahan 32 dokumen `bahan/` + alasan tiap keputusan → `Pemilahan_Dokumen.md`

---

## G. Ringkasan prioritas

**P0 (sebelum lanjut eksperimen):** A1, A2, A3, A4, B1, D1, D2
**P1 (sebelum Bab II/III final):** A5–A7, B2–B4, C1–C5, D3–D5, D7, D8, E1–E5
**P2 (sebelum sidang):** A8, C6, C7, D6
```

<a id="f-reports-md"></a>

## `reports.md`

Ukuran 20,124 byte &middot; 364 baris &middot; sha256 `bdd3a78bc4be` &middot; encoding `utf-8-sig`

````markdown
# Reports — Dataset, EDA, dan Metode Pengolahan Data

Dibuat 23 Oktober 2026 · untuk skripsi *Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia*

Isi: (1) hasil pembacaan EDA-mu, (2) rekonsiliasi angka dataset, (3) cara Muis dkk. (2020) mengolah data — termasuk fuzzy string matching Levenshtein, (4) cara Matrik (2026) mengolah data dan fine-tuning, (5) resep teknis untuk mengerjakannya, (6) implikasi untuk Bab II–III. Daftar hal yang butuh verifikasi ada di `report.md`.

---

## 1. Ringkasan

Ada tiga temuan yang mengubah gambaran:

1. **Datasetmu adalah SQuAD v2.0 terjemahan penuh, bukan versi yang sudah difilter.** `squad_id_train.jsonl` = 130.319 baris dan `squad_id_testt.jsonl` = 11.873 baris — dua angka itu **persis** jumlah train dan validation SQuAD v2.0 resmi. Artinya file ini memuat pertanyaan yang tidak bisa dijawab (`is_impossible`) juga.
2. **Pembanding paling dekat untuk baseline-mu sudah ada**: Matrik (2026) fine-tune `indobert-base-p1` dan `indolem/indobert-base-uncased` pada dataset Indonesia yang sama, dengan EM/F1 dan **bootstrap 10.000 iterasi** — persis uji yang kamu rencanakan. Angkanya: F1 **63,59** (IndoNLU/p1) dan **71,58** (IndoLEM).
3. **Perbaikan span dengan fuzzy matching Levenshtein bukan pekerjaan tambahan yang kamu rancang sendiri** — itu bagian dari pipeline pembuatan SQuAD-id (Muis dkk., 2020) dan diulang lagi oleh Matrik (2026). Datasetmu tampaknya sudah melewati proses itu (ada field `answer_start_recomputed`), tapi **belum kamu verifikasi**.

---

## 2. Yang saya baca dari EDA-mu

Dua notebook di `D:\KEJARCEPATTTT\Skripsi\`:

| Berkas | Isi | Status output |
|---|---|---|
| `eda_squad_id_jsonl.ipynb` | EDA dataset QA (`squad_id_train.jsonl`, `squad_id_testt.jsonl`), 14 bagian | **0 sel menyimpan output** (belum dieksekusi / output tidak tersimpan) |
| `eda_squad_id_nli.ipynb` | EDA dataset turunan NLI (`squad-id_nli_*.csv`, ~236,9k/23,7k/23,7k baris) | **0 sel menyimpan output** |

Karena tidak ada output tersimpan, saya **tidak menjalankan** notebook (sesuai instruksimu) dan **tidak mengarang hasil**. Yang bisa saya baca dan pakai adalah struktur data, asumsi, dan daftar pemeriksaan yang sudah kamu tulis.

### 2.1 Struktur satu baris `squad_id_train.jsonl`

```json
{
  "origin_id": "56be85543aeaaa14008c9063",
  "title": "Beyonce",
  "context": "Beyoncé Giselle Knowles-Carter ...",
  "question": "Kapan Beyonce mulai menjadi populer?",
  "answers": [{
    "text": "pada akhir 1990-an",
    "answer_start": 291,
    "answer_start_original": 269,
    "answer_start_recomputed": 291,
    "answer_start_recompute_note": "answer start is recomputed",
    "is_answer_missing": false
  }],
  "is_impossible": false,
  "is_data_invalid": false
}
```

Empat field yang penting untuk skripsimu:

- **`answer_start_original` vs `answer_start_recomputed`** → dataset ini **sudah pernah diperbaiki**: posisi awal jawaban dihitung ulang. Contoh di atas bergeser 22 karakter (269 → 291). Ini tanda khas hasil perbaikan alignment — pekerjaan yang di Muis dkk. dilakukan dengan Levenshtein.
- **`answer_start_recompute_note`** → jejak audit: baris mana yang posisinya diubah.
- **`is_answer_missing`** → jawaban tidak ditemukan di konteks (setara `indonesian_answer_start = -1` di Muis).
- **`is_data_invalid`** → baris ditolak saat validasi.

### 2.2 Angka yang kamu tulis di markdown notebook

| Split | Baris | Catatan |
|---|---:|---|
| train | 130.319 | = jumlah train SQuAD v2.0 resmi |
| test | 11.873 | = jumlah validation SQuAD v2.0 resmi; nama file `squad_id_testt.jsonl` (dua huruf t) |

### 2.3 Pemeriksaan yang sudah kamu siapkan (dan artinya)

Notebook-mu sudah mendefinisikan pemeriksaan yang tepat. Ini yang perlu dibaca hasilnya nanti:

| Sel | Yang diukur | Ambang yang wajar | Kenapa penting |
|---|---|---|---|
| §4 | `is_impossible`, `is_data_invalid` | answerable ≈ 86–87 ribu dari 130.319 | menentukan jumlah data efektif di Bab III |
| §5 `span_valid_%` | `context[start:start+len(answer)] == answer` | >99% | label salah → F1 turun bukan karena kuantisasi |
| §5 | `answer_start_original_valid_%` & selisih recomputed−original | — | membuktikan dataset sudah diperbaiki |
| §5 `recompute_note` | distribusi catatan | — | dokumentasi audit |
| §6 | panjang konteks (kata/karakter) | p95 < ~400 kata | menentukan `max_length` 384/512 |
| §7 | pertanyaan per konteks | — | SQuAD: banyak pertanyaan per paragraf (normal) |
| §11 | kebocoran test→train | 0% ideal | kalau ada, skor menggelembung |
| §12 | irisan dengan dataset NLI | — | memastikan dua dataset tidak bercampur |

---

## 3. Rekonsiliasi angka dataset

Tiga versi angka beredar. Ini penjelasannya:

| Sumber | Train | Val/Dev | Test | Isi |
|---|---:|---:|---:|---|
| **SQuAD v2.0 asli** (Rajpurkar dkk.) | 130.319 | 11.873 | — | termasuk pertanyaan tanpa jawaban |
| **Muis dkk. (2020)** — terjemahan | 102.657 | 11.407 | 10.536 | dari 161.550 pasangan; setelah 10 langkah praproses (outlier dibuang, hanya kalimat berjawaban, dll.) |
| **Matrik (2026)** — hanya yang berjawaban | 85.776 | 7.587 | — | dari 85.812/8.170; dibuang baris yang span-nya tidak sejajar |
| **Punyamu** (`squad_id_*.jsonl`) | 130.319 | — | 11.873 | terjemahan penuh SQuAD v2.0 + field perbaikan span |

Kesimpulan praktis:

- Angka 130.319/11.873 di datasetmu = **seluruh** SQuAD v2.0 terjemahan, bukan subset berjawaban. Jadi data latih efektifmu **lebih kecil** dari 130 ribu — perkiraan 86–87 ribu setelah `is_impossible` dibuang, sangat dekat dengan 85.776 milik Matrik.
- Perbedaan Muis (102.657) vs Matrik (85.776) bukan kontradiksi: Muis membentuk pasangan **kalimat–pertanyaan** untuk question generation (satu kalimat per pertanyaan, outlier >60 kata pertanyaan/20 kata jawaban dibuang), sedangkan Matrik memakai **paragraf** untuk QA dan membuang baris yang span-nya tidak sejajar.
- Untuk skripsimu, acuan yang paling relevan adalah **Matrik**, karena tugas dan format datanya sama (paragraf + span + EM/F1).

---

## 4. Muis dkk. (2020) — bagaimana data diolah

Paper: *Sequence-to-Sequence Learning for Indonesian Automatic Question Generator* (ICAICTA 2020). Ini **bukan** paper QA — tugasnya membangkitkan pertanyaan (seq2seq). Tapi bagian pengolahan datanya yang dipakai semua orang (termasuk Matrik) untuk SQuAD-id.

### 4.1 Terjemahan

- Google Translate API v2, dari SQuAD v2.0: **536 artikel, 161.550 pasangan pertanyaan–jawaban**.
- **Tidak ada koreksi terjemahan.** Hasil terjemahan dipakai apa adanya; post-processing difokuskan pada **memperbarui teks jawaban dan lokasinya**.

### 4.2 Dua masalah yang muncul

1. **Lokasi jawaban tidak cocok** — `answer_start` masih posisi di teks Inggris.
2. **Terjemahan tidak konsisten** — konteks dan jawaban diterjemahkan **terpisah**, jadi entitas bisa berbeda bentuk. Contoh di paper: "Dangerously in Love" di konteks menjadi "Berbahaya dalam Cinta" di teks jawaban. Exact match gagal.

### 4.3 Solusinya: fuzzy string matching dengan Levenshtein

Kutipan intinya:

> "This prevented us to find the location of the answer in the context paragraph text using exact matching. Thus, we conducted fuzzy string matching to repair the answer. … We used fuzzy string-matching search to enable the system to match inconsistent translation results, which usually still roughly match more than 80% using Levenshtein edit distance method."

Poin teknisnya:

- **Ukuran kemiripan**: Levenshtein edit distance (jumlah sisip/hapus/ganti karakter minimum). Dua string dianggap cocok bila kemiripannya **di atas ~80%**.
- **Keluaran per baris**: dua field baru — `indonesian_answer_start` (posisi baru, atau **−1** bila gagal) dan `indonesian_answer` (teks baru, atau string kosong).
- Baris dengan `−1` **dibuang** di langkah berikutnya (langkah 1 dari 10).

### 4.4 Sepuluh langkah praproses (yang perlu kamu tiru/modifikasi)

| # | Langkah | Relevansi untuk QA-mu |
|---|---|---|
| 1 | Buang pasangan yang jawabannya tidak ditemukan (−1) | **Wajib** — padanan `is_answer_missing` |
| 2 | Fitur POS & Named Entity (Prosa.ai) | Tidak perlu untuk BERT QA |
| 3 | Buang outlier: 1% pertanyaan/jawaban terpanjang (maks 60 kata pertanyaan, 20 kata jawaban) | Opsional; untuk QA, jawaban panjang wajar — jangan ikut membuang 20 kata |
| 4 | Normalisasi unicode→ASCII, tokenisasi per spasi & tanda baca (kecuali `.` `,` `:` yang menempel, mis. "23:00", "20,000", "Ph.D") | Berguna, tapi hati-hati: normalisasi menggeser offset |
| 5 | Konversi posisi jawaban dari karakter ke kata | Tidak perlu untuk BERT (pakai offset karakter) |
| 6 | Bentuk pasangan kalimat–pertanyaan (satu kalimat berisi kata pertama jawaban) | **Jangan ditiru** — untuk QA kamu butuh paragraf utuh sebagai konteks |
| 7–9 | Fitur linguistik (ans, case, POS, NE), penyelarasan fitur, varian cased/uncased | Tidak perlu untuk BERT QA |
| 10 | Representasi integer + embedding FastText | Tidak perlu (pakai tokenizer IndoBERT) |

Hasil akhir Muis: **114.604** pasangan (dari 161.550), dibagi 9:1 → 102.657 train / 11.407 validation, dan 10.536 test dari dev SQuAD.

**Yang perlu kamu catat di Bab II/III:** pipeline Muis dioptimalkan untuk *question generation* (kalimat tunggal, jawaban pendek), bukan untuk *extractive QA* (paragraf, span bebas). Karena itu Matrik mengulang pembersihan dengan kriteria QA — dan kamu juga perlu.

---

## 5. Matrik (2026) — bagaimana data diolah dan fine-tuning

Paper: *Comparative Analysis of Indonesian Pre-trained BERT Models for the Extractive Question Answering Task on an Indonesian-Translated SQuAD Dataset* (Suhendra dkk., Matrik Vol. 25 No. 2, Maret 2026). **Ini paper paling dekat dengan skripsimu.**

### 5.1 Data

- Dataset: SQuAD 2.0 terjemahan dari **Muis dkk. [12]**, termasuk penjelasan bahwa Muis memakai Google Translate API v2 + fuzzy matching Levenshtein untuk memperbaiki posisi jawaban.
- Dataset asli: **85.812 train / 8.170 validation**, semuanya berjawaban (unanswerable sudah tidak ada).
- **Pembersihan tambahan (penting)**: memastikan indeks awal jawaban sejajar dengan karakter pertama teks jawaban; baris yang tidak sejajar **dibuang** → **85.776 train / 7.587 validation**.
- Tokenisasi dengan BERT tokenizer, dibungkus `datasets` Hugging Face.

### 5.2 Model

- `indobenchmark/indobert-base-p1` (Indo4B, ±124,5 juta parameter) — model yang kamu pakai.
- `indolem/indobert-base-uncased` (±110 juta parameter, korpus 220 juta kata yang lebih bersih).
- Kepala QA: dua vektor (start & end) di atas BERT.

### 5.3 Fine-tuning (angka yang bisa kamu tiru)

| Hyperparameter | Nilai |
|---|---|
| Batch size | 16 dan 32 (dibandingkan) |
| Epoch | 4 |
| Learning rate | 2×10⁻⁵ |
| Optimizer | AdamW (default `Trainer`) |
| Dropout | 0,1 |
| Weight decay | 0,01 |
| Perangkat | NVIDIA A100; Docker; Python 3.12.7, transformers 4.45.0, PyTorch 2.4.0, CUDA 12.6.0, RAM 40 GB |
| Waktu | 40–45 menit per model |

### 5.4 Hasil

| Model | Batch | EM | F1 | Train loss akhir | Val loss akhir |
|---|---|---:|---:|---:|---:|
| IndoLEM (`indolem/indobert-base-uncased`) | 16 | **60,58** | **71,58** | 0,5183 | 2,7150 |
| IndoLEM | 32 | 60,11 | 71,48 | 0,6686 | 2,3911 |
| IndoNLU (`indobert-base-p1`) | 16 | 51,02 | 63,59 | 0,6036 | 2,8193 |
| IndoNLU | 32 | — | — | 0,7456 | 2,7096 |

Batch size tidak memberi perbedaan berarti.

### 5.5 Uji signifikansi — sama dengan rencanamu

> "bootstrap resampling was performed on the validation set with 10,000 iterations … resampling questions with replacement and recomputing metrics on each bootstrap sample."

Hasil: selisih F1 **7,10** poin, 95% CI **[6,32; 7,89]**, p < 0,001; selisih EM **8,46** poin, CI **[7,53; 9,40]**, p < 0,001.

Ini **persis** metode yang sudah kamu tulis di Bab II (paired bootstrap, B = 10.000, CI persentil 95%). Bedanya: kamu menambah koreksi Holm untuk tiga perbandingan. Dengan kata lain, metodologimu bukan hanya valid — ada preseden terbit di jurnal terakreditasi untuk dataset dan tugas yang sama.

### 5.6 Analisis error yang bisa kamu tiru

Mereka mengambil 15 pertanyaan dari satu passage ("Danau Toba"), menemukan 4 kasus di mana model yang lebih lemah salah, dan mengklasifikasikan polanya: **boundary mismatch** — jawaban terpotong (kehilangan kata depan), terpotong di belakang, atau kelebihan kata. Kesimpulan mereka: kualitas korpus pralatih memengaruhi ketepatan tokenisasi, yang menentukan ketepatan batas span.

Untuk skripsimu, pola ini sangat berguna: kalau kuantisasi menurunkan F1 tanpa menurunkan EM, kemungkinan besar efeknya juga **boundary mismatch**, bukan salah total. Analisis error per-kasus seperti ini akan memperkuat Bab IV.

---

## 6. Cara mengerjakannya — resep teknis

Semua di bawah ini **belum saya jalankan**; ini rancangan langkah yang bisa langsung kamu pakai di Bab III.

### 6.1 Verifikasi span (langkah pertama, sebelum apa pun)

```python
def span_ok(context, answer, start):
    return start >= 0 and context[start:start+len(answer)] == answer
```

Hitung persentase baris valid per split. Target >99%. Kalau di bawah, lanjut ke 6.2.

### 6.2 Perbaikan span dengan fuzzy matching Levenshtein

Alur yang dipakai Muis, diterjemahkan ke praktik modern:

```python
from rapidfuzz import fuzz

def repair_span(context, answer, original_start=None, threshold=80):
    # 1) exact match
    idx = context.find(answer)
    if idx >= 0:
        return idx, answer, "exact"

    # 2) fuzzy substring: cari bagian konteks yang paling mirip jawaban
    al = fuzz.partial_ratio_alignment(answer, context, score_cutoff=threshold)
    if al is None:
        return -1, "", "not_found"

    # 3) kalau ada beberapa kandidat, pilih yang paling dekat dengan posisi lama
    return al.dest_start, context[al.dest_start:al.dest_end], f"fuzzy:{al.score:.1f}"
```

Catatan penting:

- `partial_ratio_alignment` mengembalikan **posisi** (bukan hanya skor) — inilah yang dibutuhkan untuk memperbaiki `answer_start`. Fungsi ini ada di `rapidfuzz` ≥ 2.x.
- **Threshold 80** mengikuti Muis. Jangan naikkan ke 90+ tanpa alasan: terjemahan sering mengubah bentuk kata.
- **Kalau `rapidfuzz` tidak tersedia**, versi manual (lebih lambat, O(n·L)):

```python
from rapidfuzz.distance import Levenshtein
def best_window(context, answer, radius=400, original_start=None):
    L = len(answer)
    lo = max(0, (original_start or 0) - radius)
    hi = min(len(context), (original_start or 0) + L + radius)
    best = (10**9, -1)
    for i in range(lo, max(lo+1, hi - L + 1)):
        d = Levenshtein.distance(answer, context[i:i+L])
        if d < best[0]:
            best = (d, i)
    return best  # (jarak, posisi)
```

  Batasi pencarian pada jendela di sekitar `answer_start_original` (mis. ±400 karakter) — pencarian penuh pada paragraf panjang sangat lambat.

- **Normalisasi aman**: kalau perlu casefold/spasi, jangan ubah string aslinya. Buat versi ternormalisasi **beserta peta indeks** ke string asli, supaya offset yang ditemukan bisa dikembalikan.
- **Banyak kemunculan**: pilih yang paling dekat dengan `answer_start_original`, atau yang panjangnya paling mendekati panjang jawaban.
- **Kegagalan harus eksplisit**: baris dengan `-1` dibuang (dan jumlahnya dilaporkan), bukan dibiarkan berlabel salah. Datasetmu sudah punya `is_answer_missing` untuk ini.

### 6.3 Menyiapkan fitur QA (offset mapping + sliding window)

```python
enc = tokenizer(
    questions, contexts,
    max_length=384, stride=128,
    truncation="only_second",          # hanya konteks yang dipotong
    return_overflowing_tokens=True,
    return_offsets_mapping=True,
    padding="max_length",
)
```

Lalu untuk setiap window:

1. Ambil `offset_mapping` dan `sequence_ids` → tandai token yang berasal dari konteks (`sequence_ids == 1`).
2. Cari token pertama/terakhir yang offset-nya menutupi `[char_start, char_end)`.
3. Kalau jawaban **tidak sepenuhnya** di dalam window → label `(0, 0)` (posisi `[CLS]`), jangan dipaksa.
4. Token di luar konteks (pertanyaan, `[CLS]`, `[SEP]`) di-mask saat menghitung loss/argmax.

Saat inferensi:

- Ambil `start_logits`/`end_logits` per window, cari pasangan `start ≤ end` dengan `end - start + 1 ≤ 30` (panjang jawaban maksimum), skor tertinggi.
- Petakan kembali ke offset karakter, lalu `context[char_start:char_end]`.
- Gabungkan window lewat `overflow_to_sample_mapping` supaya satu pertanyaan tidak dihitung berkali-kali.

### 6.4 Fine-tuning

Ikuti Matrik supaya hasilmu bisa dibandingkan langsung:

| Parameter | Nilai |
|---|---|
| Model | `indobenchmark/indobert-base-p1` |
| Epoch | 4 |
| LR | 2e-5 |
| Batch | 16 |
| Weight decay | 0,01 |
| Dropout | 0,1 (bawaan) |
| `max_length` / `stride` | 384 / 128 |
| Metrik evaluasi | EM & F1 gaya SQuAD (`evaluate.load("squad")`) |

Simpan checkpoint FP32 sebagai baseline — inilah objek kuantisasimu.

### 6.5 Evaluasi + uji signifikansi

```python
import numpy as np
rng = np.random.default_rng(42)
N = len(f1_a)                        # skor F1 per sampel, model A dan B
diffs = np.empty(10_000)
for b in range(10_000):
    idx = rng.integers(0, N, N)
    diffs[b] = f1_a[idx].mean() - f1_b[idx].mean()
ci = np.percentile(diffs, [2.5, 97.5])
p  = 2 * min((diffs <= 0).mean(), (diffs >= 0).mean())
```

- Tiga perbandingan (FP32 vs coarse, FP32 vs fine, coarse vs fine) × dua metrik (EM, F1) → koreksi **Holm** dengan m = 3 per metrik (sesuai Bab II-mu).
- Opsional: **McNemar** untuk EM (EM biner per sampel) — preseden: proposal Tafftadia memakai McNemar untuk akurasi.

### 6.6 Kuantisasi weight-only + pengukuran

- Kuantisasi bobot `nn.Linear` (dan embedding jika ikut) ke INT4 simetris:
  - **coarse / per-tensor**: satu `s = max(|W|) / (2^{b-1} − 1)` untuk seluruh tensor.
  - **fine / per-channel**: satu `s_j` per output channel.
- **Paksa coarse secara eksplisit.** Bawaan pustaka (mis. `torch.ao.quantization`) untuk bobot adalah per-channel; kalau tidak dipaksa, "coarse" dan "fine" bisa jadi konfigurasi yang sama.
- Ukuran model: laporkan **dua angka** — teoretis (4/32 = 12,5%) dan ukuran berkas aktual. Bobot INT4 umumnya disimpan dalam wadah int8 → ~25%, ditambah metadata faktor skala.
- Latensi: karena dequantisasi dilakukan sebelum komputasi, **jangan klaim speedup**; tulis sebagai batasan.

---

## 7. Implikasi untuk skripsi

**Bab II (tambahan yang jadi kuat):**
- Sitasi Matrik (2026) sebagai penelitian terdahulu **paling dekat**: dataset sama, tugas sama, model sama, uji signifikansi sama.
- Sitasi Muis (2020) bukan hanya sebagai "sumber dataset", tapi sebagai **prosedur perbaikan span** (fuzzy matching Levenshtein >80%) — ini memperkuat bagian dataset di §2.3.
- Framing "kuantisasi adalah tiga keputusan: cakupan, waktu, granularitas" (dari proposal Tafftadia) cocok untuk membuka Subbab 2.4.

**Bab III (yang harus dilaporkan):**
- Sumber & versi dataset + tanggal unduh; jumlah baris per split **sebelum dan sesudah** filter.
- Persentase span valid sebelum perbaikan; metode perbaikan (jika dipakai) + threshold.
- `max_length`, `stride`, panjang jawaban maksimum, dan cara menangani window tanpa jawaban.
- Hyperparameter fine-tuning (tabel seperti Matrik) dan lingkungan komputasi.
- Definisi operasional coarse/fine + pustaka/versi yang dipakai.
- Prosedur uji signifikansi (B = 10.000, CI persentil, Holm m = 3).

**Bab IV (yang akan ditanya):**
- Kenapa baseline FP32-mu berbeda dari 63,59 milik Matrik? (Jawaban yang sah: pembersihan data berbeda, jumlah data berbeda, seed, `max_length`.)
- Apakah penurunan F1 akibat kuantisasi berpola *boundary mismatch* seperti temuan Matrik? Analisis 10–15 kasus akan menjawab ini.

---

## 8. Berkas terkait

| Berkas | Isi |
|---|---|
| `report.md` | Daftar hal yang butuh verifikasi & perhatian khusus (P0/P1/P2) |
| `ANALISIS_BAB1_BAB2.md` | Analisis Bab I–II: yang kurang, yang salah sitasi, rekomendasi |
| `PROPOSAL_PENELITIAN_TERDAHULU.md` | Usulan tabel penelitian terdahulu + syarat sitasi/tahun |
| `KAJIAN_PROPOSAL_TAFFTADIA.md` | Kajian proposal temanmu + apa yang layak ditiru |
| `bahan_justifikasi/` | Peta 62 klaim Bab I–II → kutipan verbatim + lokasi |
````

