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
