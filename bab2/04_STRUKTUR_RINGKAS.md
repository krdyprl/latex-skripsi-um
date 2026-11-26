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
