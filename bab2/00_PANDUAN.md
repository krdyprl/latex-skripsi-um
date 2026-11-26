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
