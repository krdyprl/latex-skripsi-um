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
   - Windows: `make.bat`
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
   - Windows: `make.bat`
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
make.bat
```

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

Cara memakai tanpa build lokal: *fork* repo ini, tulis skripsi, lalu *push* ke
`main`/`master`. Buka tab **Actions**, pilih workflow *Build*, lalu di bagian
**Artifacts** unduh **`thesis-pdf`**.

> Karena CI memvalidasi berkas `src/resources/cover-ganesha.jpg`, jika Anda memakai
> logo lain (Pilihan B di [Fase 2](#fase-2-ganti-logo)) pastikan file yang dirujuk
> tetap ada di `src/resources/` agar pemeriksaan tidak gagal.

---

## 9. FAQ pemecahan masalah

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
