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
