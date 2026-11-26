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
