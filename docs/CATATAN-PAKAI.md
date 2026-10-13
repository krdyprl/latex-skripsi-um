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
```

```bat
excerpt.bat bab2
excerpt.bat bab2 "" docx
```

Hasil: `dist/excerpt-<nama>.pdf` (atau `.docx` dengan `-Format docx`).
Di menu interaktif, format keluaran ditanyakan di akhir (1 = PDF, 2 = Word, 3 = keduanya).

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
