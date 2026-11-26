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
