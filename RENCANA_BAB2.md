# Rencana Penyelesaian Bab II

> **Catatan:** struktur di §2 dokumen ini (8 subbab, 31 anak subbab) sudah **dipangkas** menjadi **6 subbab, 12 anak subbab, ±4.600 kata** setelah dibandingkan dengan dua skripsi lain. Versi yang dipakai: `bab2/04_STRUKTUR_RINGKAS.md`. Daftar urgensi (§1) dan urutan eksekusi (§4) tetap berlaku.

Untuk: skripsi *Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia*
Status awal: `src/chapters/chapter-2.tex` = 183 baris, **6 subbab, 0 anak subbab**.
Belum ada satu pun berkas `.tex` yang saya ubah.

---

## 1. Daftar urgensi (urut prioritas)

Legenda: **B** = memblokir subbab lain · **E** = estimasi jam kerja · **D** = bergantung pada

### P0 — harus selesai lebih dulu (total ±10 jam)

| # | Pekerjaan | Kenapa urgent | E | D |
|---|---|---|---:|---|
| U1 | **Bangun ulang tabel penelitian terdahulu.** 4 dari 5 baris sekarang gugur syarat pembimbing (≥5 sitasi, ≤5 tahun): Hu 2022 = 0 sitasi, Abdurrahman = 1, Sanjaya = 0, Ramaputra = 0 | Tabel ini jadi dasar seluruh §2.8 Celah Penelitian. Kalau tabelnya salah, celahnya ikut salah | 4 | 4 PDF baru |
| U2 | **Perbaiki 2 sitasi `wu2023understanding`** untuk klaim granularitas (`ch1:28`, `ch2:117`) → ganti `gholami2021survey` (Bagian E) atau `bondarenko2021understanding` | Paper itu tidak membahas granularitas sama sekali (0 kemunculan "granular"). Ini kesalahan yang paling mudah ditemukan penguji | 1 | — |
| U3 | **Persempit 3 klaim yang lebih luas dari kutipannya** (`ch1:20` ×2: Transformer "representasi kontekstual", "model bahasa multibahasa"; `ch2:56`: IndoBERT "memahami pertanyaan dan konteks") | Klaim tanpa sandaran = temuan pertama saat sidang | 1 | — |
| U4 | **Jalankan EDA sekali dan simpan outputnya.** Sekarang 0 sel punya output, jadi angka dataset belum bisa ditulis | §2.4 (dataset) tidak bisa final tanpa: jumlah baris efektif, `span_valid_%`, proporsi konteks >512 token | 2 | — |
| U5 | **Tulis ulang §2.4.2 & §2.4.3 dataset** dengan temuan: datasetmu = SQuAD v2.0 terjemahan **penuh** (130.319/11.873 = angka resmi), "test" = split **dev**, sudah ada perbaikan span (`answer_start_recomputed`), sitasi Muis **+ SEACrowd** | Bab II sekarang menyebut "versi yang ditata ulang" tanpa sumber, dan menyiratkan test set padahal itu dev | 2 | U4 |

### P1 — isi baru, menentukan kualitas bab (total ±14 jam)

| # | Pekerjaan | E | D |
|---|---|---:|---|
| U6 | Tambah **8 anak subbab baru**: 2.1.4, 2.2.3, 2.3.4, 2.4.2, 2.5.6, 2.7.1, 2.7.3, 2.8.2 (daftar di §2) | 7 | U1, U5 |
| U7 | **Tabel spektrum granularitas** (per-tensor / per-channel / per-group) + alasan memakai skema **simetris** (bobot terlatih zero-centered) | 2 | — |
| U8 | **Kerangka berpikir** (§2.8.2): gambar 4 tahap + satu paragraf penjelas | 2 | U6 |
| U9 | **Unduh & verifikasi 6 PDF prioritas**: Han 2026, hu2022 (arXiv 2210.16621), Rajpurkar 2016, Muis 2020, Dror 2018, Holm 1979 | 3 | — |

### P2 — penyempurnaan (total ±6 jam)

| # | Pekerjaan | E |
|---|---|---:|
| U10 | Tabel perbandingan **QAT vs PTQ** (waktu, retraining, biaya, potensi akurasi, contoh) | 1 |
| U11 | §2.5.6 Dampak kuantisasi pada Transformer: outlier pada residual/attention, encoder lebih toleran INT4 daripada decoder, fenomena collapse setelah konvergensi | 2 |
| U12 | Sitasi **Matrik (2026)** di §2.3.4 dan §2.6.1 sebagai pembanding baseline + preseden bootstrap | 1 |
| U13 | Penomoran ulang + cek silang semua `\ref` (tabel, persamaan) setelah struktur baru | 2 |

### Di luar Bab II, tapi memblokir kalau ditinggal

| # | Pekerjaan | Kenapa |
|---|---|---|
| X1 | `informations.tex`: judul, penulis, NIM, pembimbing, kata kunci | PDF tercetak dengan judul template |
| X2 | `abstract-id.tex` masih topik **finansial** (IndoFinSent, Financial PhraseBank, Macro F1) | Bertentangan langsung dengan judul |
| X3 | `abstract-en.tex` masih `\blindtext` | Sama |

**Total realistis: ±30 jam kerja** (≈ 5 hari @6 jam, atau 1 minggu santai).

---

## 2. Struktur usulan Bab II: 8 subbab, 31 anak subbab

Kolom **Status**: `PINDAH` = isi sudah ada, tinggal direstrukturisasi · `BARU` = perlu ditulis · `TULIS ULANG` = ada tapi isinya harus diganti.

### 2.1 Extractive Question Answering
| Anak subbab | Status | Sumber isi sekarang |
|---|---|---|
| 2.1.1 Definisi dan Ruang Lingkup Question Answering | PINDAH | `ch2:23` paragraf 1 |
| 2.1.2 Formulasi Span Extraction | PINDAH | `ch2:23–25` + Persamaan span |
| 2.1.3 Pertanyaan Tanpa Jawaban pada SQuAD v2.0 | TULIS ULANG | `ch2:27` — perlu ditambah: apa itu `is_impossible`, mengapa dibuang di penelitianmu |
| 2.1.4 Extractive QA untuk Bahasa Indonesia | **BARU** | 1 paragraf + sitasi: IndoNLU FacQA (p43), Ramaputra (p30). Isi: peta dataset QA Indonesia yang ada, dan posisi tugasmu |

### 2.2 Arsitektur Transformer
| Anak subbab | Status | Sumber |
|---|---|---|
| 2.2.1 Mekanisme Self-Attention | PINDAH | `ch2:31–36` + Persamaan attention |
| 2.2.2 Multi-Head Attention dan Positional Encoding | PINDAH | `ch2:38–45` + Persamaan multi-head |
| 2.2.3 Encoder, Decoder, dan Encoder-Decoder | **BARU** | 1–2 paragraf. **Penting**: jadi dasar argumen di §2.5.6 bahwa model encoder jauh lebih toleran INT4 daripada decoder (sitasi p64) |

### 2.3 BERT dan IndoBERT
| Anak subbab | Status | Sumber |
|---|---|---|
| 2.3.1 Pre-training BERT: MLM dan NSP | PINDAH | `ch2:47–54` + Persamaan MLM |
| 2.3.2 Fine-tuning BERT untuk Extractive QA | PINDAH | `ch2:58–65` + Persamaan span S/E |
| 2.3.3 IndoBERT: Korpus Indo4B dan Konfigurasi Model | PINDAH | `ch2:56` |
| 2.3.4 Varian IndoBERT dan Model yang Digunakan | **BARU** | Wajib: Bab II sekarang menyebut "IndoBERT-base **fase 2**" tanpa menjelaskan apa itu fase 1/2. Tambahkan perbandingan `indobert-base-p1` (Indo4B) vs `indolem/indobert-base-uncased` vs `base-p2`, dengan sitasi IndoNLU + Matrik (2026) |

### 2.4 Dataset SQuAD-id
| Anak subbab | Status | Sumber |
|---|---|---|
| 2.4.1 SQuAD dan SQuAD v2.0 | PINDAH | `ch2:69` |
| 2.4.2 Konstruksi SQuAD-id: Terjemahan Mesin dan Perbaikan Span | **BARU** | Hasil kajianmu: Google Translate API v2, 536 artikel, 161.550 pasangan, konteks & jawaban diterjemahkan terpisah → lokasi jawaban tidak cocok + bentuk kata berbeda → fuzzy string matching **Levenshtein** ambang ~80% → `indonesian_answer_start` (−1 bila gagal) → baris gagal dibuang. Sitasi: Muis dkk. (2020) |
| 2.4.3 Versi Dataset yang Digunakan dan Penandaan Kualitas | TULIS ULANG | `ch2:71` — sebutkan sumber versi (SEACrowd) + field `answer_start_original`/`answer_start_recomputed`/`is_answer_missing`/`is_data_invalid` |
| 2.4.4 Pembagian Data | TULIS ULANG | `ch2:73` — **koreksi**: split "uji" berasal dari **dev** SQuAD v2.0 (11.873), bukan test held-out. Tulis jumlah baris efektif (setelah filter) |
| 2.4.5 Karakteristik dan Keterbatasan Dataset Terjemahan | PINDAH | `ch2:75` — tambahkan bukti kuantitatif dari EDA (span valid %, panjang konteks) |

### 2.5 Kuantisasi Model
| Anak subbab | Status | Sumber |
|---|---|---|
| 2.5.1 Konsep dan Tujuan Kuantisasi | PINDAH + tambah | `ch2:79` — tambahkan framing **tiga sumbu**: cakupan, waktu, granularitas |
| 2.5.2 Kuantisasi Simetris dan Asimetris | PINDAH + alasan | `ch2:81–95` + Persamaan. **Tambahan**: mengapa simetris (bobot terlatih zero-centered; aktivasi tidak) |
| 2.5.3 Cakupan: Weight-Only vs Weight-Activation | PINDAH | `ch2:99` + notasi W$x$A$y$ + angka Bondarenko |
| 2.5.4 Waktu: Post-Training Quantization vs QAT | PINDAH + tabel | `ch2:97` — tambahkan tabel 5 aspek |
| 2.5.5 Granularitas: Per-Tensor, Per-Channel, Per-Group | PINDAH + tabel | `ch2:101–117` + Persamaan. **Tambahan**: tabel spektrum 3 tingkat (jumlah skala, kepekaan antar-channel, kepekaan dalam channel, overhead metadata, potensi akurasi) |
| 2.5.6 Dampak Kuantisasi pada Model Transformer | **BARU** | Outlier terstruktur pada residual/attention, encoder vs decoder (p64), penurunan setelah konvergensi pada 4-bit (p65), kuantisasi weight-only pada BERT (p41, p50, p58) |

### 2.6 Metrik Evaluasi dan Pengujian Signifikansi
| Anak subbab | Status | Sumber |
|---|---|---|
| 2.6.1 Exact Match dan F1 | PINDAH | `ch2:121–135` + Persamaan EM & F1 |
| 2.6.2 Ukuran Model: Teoretis dan Aktual | PINDAH + tambah | `ch2:137` — **tambahan penting**: 12,5% itu teoretis; bobot INT4 umumnya disimpan dalam wadah int8 (≈25%) + metadata faktor skala |
| 2.6.3 Uji Signifikansi Statistik | PINDAH + opsi | `ch2:139–148` + Persamaan bootstrap. Opsional: McNemar untuk EM (EM biner per sampel) |

### 2.7 Penelitian Terdahulu
| Anak subbab | Status | Sumber |
|---|---|---|
| 2.7.1 Kriteria Pemilihan Penelitian | **BARU** | Tiga syarat: (i) PTQ tanpa pelatihan ulang, (ii) encoder Transformer atau tugas QA, (iii) ≤5 tahun & ≥5 sitasi |
| 2.7.2 Ringkasan Penelitian Terdahulu | TULIS ULANG | Tabel sekarang + `PROPOSAL_PENELITIAN_TERDAHULU.md` (6 baris Blok A + 2 baris Blok B bertanda †) |
| 2.7.3 Pembahasan per Sumbu Kuantisasi | **BARU** | 3 paragraf: cakupan (weight-only vs joint), waktu (PTQ vs QAT), granularitas (per-tensor vs per-channel vs per-group) — menunjukkan di sumbu mana penelitianmu berada |

### 2.8 Celah Penelitian dan Kerangka Berpikir
| Anak subbab | Status | Sumber |
|---|---|---|
| 2.8.1 Celah Penelitian | PINDAH + perbaiki sandaran | `ch2:181` — 3 celah; **sandaran celah 2 & 3 harus diganti** karena Han (2026) PDF-nya belum ada |
| 2.8.2 Kerangka Berpikir | **BARU** | Gambar 4 tahap: (1) masalah (IndoBERT besar, QA Indonesia butuh efisiensi) → (2) solusi (weight-only PTQ 4-bit, dua granularitas) → (3) eksperimen (SQuAD-id, FP32 vs coarse vs fine) → (4) hasil (EM/F1, ukuran, signifikansi) |
| 2.8.3 Posisi Penelitian Ini | PINDAH | `ch2:183` paragraf terakhir |

---

## 3. Ringkasan perubahan struktur

| Sekarang | Menjadi |
|---|---|
| 2.1 Extractive QA | 2.1 (4 anak subbab) |
| 2.2 Transformer, BERT, dan IndoBERT | **dipecah dua**: 2.2 Transformer (3 anak) + 2.3 BERT & IndoBERT (4 anak) |
| 2.3 Dataset SQuAD-id | 2.4 (5 anak subbab) |
| 2.4 Kuantisasi, Weight-Only PTQ, Granularitas | 2.5 (6 anak subbab) |
| 2.5 Metrik & Signifikansi | 2.6 (3 anak subbab) |
| 2.6 Penelitian Terdahulu dan Celah | **dipecah dua**: 2.7 Penelitian Terdahulu (3 anak) + 2.8 Celah & Kerangka Berpikir (3 anak) |

Alasan pemecahan:
- **2.2/2.3 dipisah**: Transformer (mekanisme) dan BERT/IndoBERT (model yang dipakai) sekarang tercampur dalam satu subbab 37 baris — terlalu padat untuk dinilai.
- **2.6 dipecah**: "penelitian terdahulu" dan "celah penelitian" adalah dua pekerjaan berbeda; penguji membacanya terpisah. Kerangka berpikir juga butuh tempat sendiri.
- **Anak subbab 2.4.2 (konstruksi dataset)** adalah tempat alami untuk memasukkan kajian Muis dkk. yang baru kamu pelajari — sekarang tidak ada tempatnya.

---

## 4. Urutan eksekusi yang paling efisien

**Hari 1 — bereskan yang salah dulu (±4 jam)**
U2 (2 sitasi) → U3 (3 klaim) → X1 (metadata informations.tex) → commit.

**Hari 2 — data (±5 jam)**
U4 (jalankan & simpan EDA) → U5 (tulis ulang 2.4.2/2.4.3/2.4.4 dengan angka nyata) → X2/X3 (Ringkasan & Summary).

**Hari 3 — tabel & celah (±6 jam)**
Unduh 4 PDF (Mokey sudah ada aksesnya) → U1 (tabel baru 8 baris) → U6 bagian 2.7 → 2.8.1 celah dengan sandaran baru.

**Hari 4 — isi baru (±7 jam)**
U6 sisanya (2.1.4, 2.2.3, 2.3.4, 2.5.6) + U7 (tabel granularitas & alasan simetris).

**Hari 5 — penutup (±5 jam)**
U8 (kerangka berpikir + gambar) → U10–U12 → U13 (penomoran & `\ref`) → build & baca ulang.

---

## 5. Yang TIDAK perlu dikerjakan (cegah melebar)

- Jangan menambah teori CNN/ResNet — itu domain proposal temanmu, bukan skripsimu.
- Jangan membahas keluarga LLM decoder panjang-panjang; cukup 1 paragraf di 2.5.6 untuk kontras encoder vs decoder.
- Jangan membuat tabel penelitian terdahulu 15 baris. 8 baris sudah cukup dan lebih mudah dipertahankan.
- Jangan menambah subbab "Kuantisasi pada Vision Transformer" — tidak dipakai di eksperimenmu.
- Jangan menulis ulang Persamaan 2.1–2.5; rumusnya sudah benar dan sudah dicek konsisten dengan literatur.

---

## 6. Lampiran — kerangka LaTeX (belum diterapkan)

```latex
\chapter{Kajian Pustaka}

\section{Extractive Question Answering}
\subsection{Definisi dan Ruang Lingkup Question Answering}
\subsection{Formulasi Span Extraction}
\subsection{Pertanyaan Tanpa Jawaban pada SQuAD v2.0}
\subsection{Extractive Question Answering untuk Bahasa Indonesia}

\section{Arsitektur Transformer}
\subsection{Mekanisme Self-Attention}
\subsection{Multi-Head Attention dan Positional Encoding}
\subsection{Encoder, Decoder, dan Encoder-Decoder}

\section{BERT dan IndoBERT}
\subsection{Pre-training BERT: MLM dan NSP}
\subsection{Fine-tuning BERT untuk Extractive Question Answering}
\subsection{IndoBERT: Korpus Indo4B dan Konfigurasi Model}
\subsection{Varian IndoBERT dan Model yang Digunakan}

\section{Dataset SQuAD-id}
\subsection{SQuAD dan SQuAD v2.0}
\subsection{Konstruksi SQuAD-id: Terjemahan Mesin dan Perbaikan Span}
\subsection{Versi Dataset yang Digunakan dan Penandaan Kualitas}
\subsection{Pembagian Data}
\subsection{Karakteristik dan Keterbatasan Dataset Terjemahan}

\section{Kuantisasi Model}
\subsection{Konsep dan Tujuan Kuantisasi}
\subsection{Kuantisasi Simetris dan Asimetris}
\subsection{Cakupan: Weight-Only dan Weight-Activation}
\subsection{Waktu: Post-Training Quantization dan QAT}
\subsection{Granularitas: Per-Tensor, Per-Channel, dan Per-Group}
\subsection{Dampak Kuantisasi pada Model Transformer}

\section{Metrik Evaluasi dan Pengujian Signifikansi}
\subsection{Exact Match dan F1}
\subsection{Ukuran Model: Teoretis dan Aktual}
\subsection{Uji Signifikansi Statistik}

\section{Penelitian Terdahulu}
\subsection{Kriteria Pemilihan Penelitian}
\subsection{Ringkasan Penelitian Terdahulu}
\subsection{Pembahasan per Sumbu Kuantisasi}

\section{Celah Penelitian dan Kerangka Berpikir}
\subsection{Celah Penelitian}
\subsection{Kerangka Berpikir}
\subsection{Posisi Penelitian Ini}
```

Catatan teknis: `\section` = subbab (2.1), `\subsection` = anak subbab (2.1.1). Kedalaman ini sudah didukung kelas dokumen yang dipakai template, tidak perlu ubah preamble. Kalau nanti butuh tingkat ketiga (2.1.1.1), pakai `\subsubsection` — tapi untuk skripsi S1 sebaiknya berhenti di `\subsection`.

---

## 7. Rujukan berkas

| Berkas | Isi |
|---|---|
| `report.md` | Daftar verifikasi & perhatian khusus (P0/P1/P2) |
| `reports.md` | Laporan lengkap: EDA, dataset, Muis dkk., Matrik, resep teknis |
| `PROPOSAL_PENELITIAN_TERDAHULU.md` | Isi tabel penelitian terdahulu yang baru |
| `ANALISIS_BAB1_BAB2.md` | Analisis Bab I–II |
| `bahan_justifikasi/` | Peta 62 klaim → kutipan + lokasi |
