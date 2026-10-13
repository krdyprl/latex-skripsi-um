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
