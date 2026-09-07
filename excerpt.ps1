# excerpt.ps1 - Ekspor selektif bagian skripsi ke PDF.
#
# Cara pakai:
#   .\excerpt.ps1                 -> mode interaktif (menu pilihan)
#   .\excerpt.ps1 -Pilih "bab2"   -> seluruh BAB II
#   .\excerpt.ps1 -Pilih "bab1,bab3"
#   .\excerpt.ps1 -Pilih "bab2[1]"            -> hanya section 1 (Dasar Teori) BAB II
#   .\excerpt.ps1 -Pilih "bab2[1,2]"          -> section 1 dan 2
#   .\excerpt.ps1 -Pilih "ringkasan,bab2[1]"  -> campur halaman awal + bagian bab
#   .\excerpt.ps1 -Pilih "lamp1"              -> Lampiran 1
#   .\excerpt.ps1 -Pilih "bab2" -Nama "bab2-untuk-review"  -> nama file bebas
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
    [string]$Nama = ""
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
    @{ key = 'bab1';        kind = 'bab';    num = 1;  file = 'chapters/chapter-1'; label = 'Bab I — Pendahuluan' }
    @{ key = 'bab2';        kind = 'bab';    num = 2;  file = 'chapters/chapter-2'; label = 'Bab II — Tinjauan Pustaka' }
    @{ key = 'bab3';        kind = 'bab';    num = 3;  file = 'chapters/chapter-3'; label = 'Bab III — Analisis dan Perancangan' }
    @{ key = 'bab4';        kind = 'bab';    num = 4;  file = 'chapters/chapter-4'; label = 'Bab IV — Evaluasi dan Pembahasan' }
    @{ key = 'bab5';        kind = 'bab';    num = 5;  file = 'chapters/chapter-5'; label = 'Bab V — Penutup' }
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
    $t = $Text -replace '[^A-Za-z0-9]', ''
    if ($t.Length -eq 0) { $t = 'bagian' }
    return $t
}

# ---------------------------------------------------------------------
# Tampilkan menu katalog
# ---------------------------------------------------------------------
function Show-Menu {
    Write-Host ""
    Write-Host "=== EKSPOR BAGIAN SKRIPSI (PDF) ===" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Ketik kode pilihan, pisahkan dengan koma. Contoh: bab2  atau  bab1,ringkasan  atau  bab2[1,2]"
    Write-Host ""
    Write-Host "--- Halaman awal ---"
    foreach ($u in $catalog) { if ($u.kind -eq 'front') { Write-Host ("  {0,-12} {1}" -f $u.key, $u.label) } }
    Write-Host "--- Bab (utuh atau pilih section: babN[a,b]) ---"
    foreach ($u in $catalog) { if ($u.kind -eq 'bab') { Write-Host ("  {0,-12} {1}" -f $u.key, $u.label) } }
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
    param($Units, [string]$PartPrefix)
    $sb = New-Object System.Text.StringBuilder
    [void]$sb.AppendLine('% Berkas sementara dibuat oleh excerpt.ps1')
    [void]$sb.AppendLine('\documentclass[12pt,a4paper,onecolumn,oneside,final]{report}')
    [void]$sb.AppendLine('\input{config/if-itb-thesis.sty}')
    [void]$sb.AppendLine('\input{config/informations}')
    [void]$sb.AppendLine('\bibliography{references}')
    [void]$sb.AppendLine('\begin{document}')
    [void]$sb.AppendLine('\pagenumbering{arabic}')
    [void]$sb.AppendLine('\setcounter{page}{1}')
    [void]$sb.AppendLine('\pagestyle{plain}')

    $hasBab = $false
    $hasLamp = $false
    foreach ($u in $Units) {
        if ($u.cat.kind -eq 'bab') { $hasBab = $true }
        if ($u.cat.kind -eq 'lamp') { $hasLamp = $true }
    }

    $appendixDone = $false
    $bibWritten = $false
    foreach ($u in $Units) {
        $cat = $u.cat
        switch ($cat.kind) {
            'front' {
                [void]$sb.AppendLine("\input{$($cat.file)}")
            }
            'bab' {
                if ($u.full) {
                    [void]$sb.AppendLine("\setcounter{chapter}{$($cat.num - 1)}")
                    [void]$sb.AppendLine("\input{$($cat.file)}")
                }
                else {
                    $part = Join-Path $root ("src\_excerpt-part{0}.tex" -f $cat.num)
                    if (-not (Test-Path $part)) {
                        $part = New-BabPartFile -Bab $cat -SecIdx $u.sections
                    }
                    [void]$sb.AppendLine("\setcounter{chapter}{$($cat.num - 1)}")
                    [void]$sb.AppendLine("\input{_excerpt-part$($cat.num)}")
                }
            }
            'lamp' {
                if (-not $appendixDone) {
                    [void]$sb.AppendLine('\appendix')
                    [void]$sb.AppendLine('\renewcommand{\thechapter}{\arabic{chapter}}')
                    [void]$sb.AppendLine('\titleformat{\chapter}[display]{\normalsize\bfseries\centering}{Lampiran\ \thechapter}{0pt}{\MakeUppercase}')
                    $appendixDone = $true
                }
                [void]$sb.AppendLine("\setcounter{chapter}{$($cat.num - 1)}")
                [void]$sb.AppendLine("\input{$($cat.file)}")
            }
            'bio' {
                [void]$sb.AppendLine("\input{$($cat.file)}")
            }
        }
        # Daftar Rujukan setelah bab terakhir (sebelum lampiran) jika ada bab
        if ($hasBab -and $cat.kind -eq 'lamp' -and -not $bibWritten) {
            [void]$sb.AppendLine('\printbibliography[title={DAFTAR RUJUKAN}]')
            [void]$sb.AppendLine('\addcontentsline{toc}{chapter}{Daftar Rujukan}')
            $bibWritten = $true
        }
    }

    # Daftar Rujukan di akhir bila hanya lampiran/isi tanpa bab yang urutannya belum menulis
    if (-not $bibWritten -and ($hasBab -or $hasLamp)) {
        [void]$sb.AppendLine('\printbibliography[title={DAFTAR RUJUKAN}]')
        [void]$sb.AppendLine('\addcontentsline{toc}{chapter}{Daftar Rujukan}')
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

    Push-Location (Join-Path $root 'src')
    try {
        $latexArgs = @('-pdf', '-interaction=nonstopmode', '-halt-on-error', "-outdir=$buildAbs", '_excerpt.tex')
        & latexmk @latexArgs | Out-Null
        if ($LASTEXITCODE -ne 0) {
            throw "latexmk gagal (kode $LASTEXITCODE). Lihat build\_excerpt.log"
        }
    }
    finally {
        Pop-Location
    }

    $pdf = Join-Path $root "build\_excerpt.pdf"
    if (-not (Test-Path $pdf)) { throw "PDF tidak ditemukan: $pdf" }
    $dest = Join-Path $root "dist\excerpt-$OutBase.pdf"
    Copy-Item -LiteralPath $pdf -Destination $dest -Force
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
    }

    $units = @(Resolve-Seleksi -Items $items)
    if ($units.Count -eq 0) { throw 'Tidak ada pilihan valid.' }

    $drv = New-Driver -Units $units
    $base = if ($Nama.Trim() -ne '') { (Get-Slug $Nama) } else { New-NamaOutput -Units $units }

    $ringkasan = ($units | ForEach-Object { if ($_.full) { $_.cat.key } else { "$($_.cat.key)[$($_.sections -join ',')]" } }) -join ', '
    Write-Host ""
    Write-Host ("Membangun: {0}  ->  dist/excerpt-{1}.pdf" -f $ringkasan, $base)
    $dest = Invoke-Build -DrvPath $drv -OutBase $base
    Write-Host ""
    Write-Host ("SELESAI: {0}" -f $dest) -ForegroundColor Green
}
catch {
    Write-Host ("GAGAL: {0}" -f $_.Exception.Message) -ForegroundColor Red
    exit 1
}
finally {
    Clear-Sementara
}
