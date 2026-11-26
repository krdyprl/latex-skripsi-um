# Kajian Proposal Skripsi Tafftadia Imada — dan apa yang bisa dipakai untuk skripsimu

Dokumen yang dikaji: `D:\KEJARCEPATTTT\quantization\paper\sudah dipilih\bahan\Proposal Skripsi - Weight-Only Post-Training Quantization ResNet (Tafftadia).pdf` (39 halaman, proposal Bab I–III, belum ada hasil).

Skripsimu: **Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia** — objek IndoBERT + SQuAD-id, membandingkan granularitas per-tensor (coarse) vs per-channel (fine), metrik EM/F1 + ukuran model, uji signifikansi.

Catatan atas poin 1: **Bab I dan Bab II-mu tidak memuat isi finansial sama sekali.** Yang masih bertopik finansial hanya `src/chapters/abstract-id.tex` (Ringkasan lama: IndoFinSent, Financial PhraseBank, Macro F1) — dan itu sudah kamu putuskan diisi sendiri. Kata "sentimen" yang muncul di `chapter-1.tex:24`, `chapter-2.tex:171`, dan `chapter-2.tex:181` adalah penyebutan paper orang lain sebagai penelitian terdahulu, bukan topik skripsimu. Jadi tidak ada yang perlu dibongkar di dua bab itu.

---

## 1. Isi proposal temanmu (peta cepat)

| Bagian | Isi |
|---|---|
| Bab I | 1.1 Latar Belakang · 1.2 Rumusan (4 butir) · 1.3 Tujuan (4 butir) · **1.4 Manfaat (teoritis & praktis)** · 1.5 Batasan (9 butir) |
| Bab II | 2.1 Klasifikasi citra · 2.2 ResNet (residual, ResNet50, transfer learning) · 2.3 Dataset (CIFAR-10, ImageNet) · 2.4 Kompresi model · 2.5 Quantization (2.5.2 konsep dasar, 2.5.3 simetris/asimetris, 2.5.4 cakupan, 2.5.5 waktu, **2.5.6 granularitas**, 2.5.7 **bit-packing**) · 2.6 Metrik (performa, efisiensi, uji signifikansi) · 2.7 Penelitian Terdahulu (5 baris) · 2.8 Research Gap (4 poin) · **2.9 Kerangka Berpikir** |
| Bab III | 3.1 Jenis & alur penelitian · 3.2 Desain eksperimen (lingkungan, data & EDA, preprocessing, model, **implementasi kuantisasi**, skenario pengujian) · 3.3 Teknik analisis (deskriptif, **uji signifikansi per metrik**) · 3.4 Jadwal 7 bulan |

Inti skemanya: **Weight-Only INT4 PTQ, uniform simetris, granularitas per-channel + bit-packing, pada ResNet-50, baseline FP16, dua dataset (CIFAR-10 & ImageNet), empat metrik performa + tiga metrik efisiensi, diuji signifikansi.**

---

## 2. Beda mendasar dengan skripsimu

| Aspek | Tafftadia | Kamu | Konsekuensi |
|---|---|---|---|
| Tugas | Klasifikasi citra | Extractive QA (span) | Metrik dan uji statistik tidak bisa disalin mentah |
| Model | ResNet-50 (CNN) | IndoBERT-base p2 (Transformer encoder) | Bit-packing relevan di konvolusi; di Transformer, lapisan linear yang dikuantisasi |
| Dataset | CIFAR-10, ImageNet | SQuAD-id | — |
| Baseline | FP16 | FP32 | Rasio kompresi berbeda: 4-bit vs FP32 = 8x teoretis, vs FP16 = 4x |
| Granularitas | **hanya per-channel** | **per-tensor vs per-channel** | Ini keunggulanmu — dia tidak membandingkan |
| Bit-packing | Ya (INT4 dipadatkan 2 nilai/byte) | (perlu kamu pastikan) | Sangat mempengaruhi klaim ukuran model — lihat §4.1 |
| Uji signifikansi | McNemar (akurasi), bootstrap (P/R/F1), paired t/Wilcoxon (latensi, memori) | Paired bootstrap + koreksi Holm (EM & F1) | Kamu bisa menambah McNemar untuk EM |
| Status | Proposal (belum ada hasil) | Bab I–II | Bisa dipakai sebagai cetakan struktur, bukan sumber bukti |

---

## 3. Yang layak kamu adopsi

### 3.1 Framing "tiga keputusan independen" — paling berguna untuk Bab II

Dia menulis: *"Quantization bukan satu keputusan tunggal, melainkan tiga keputusan yang independen, yaitu cakupan (apa yang dikuantisasi), waktu (kapan kuantisasi diterapkan), dan granularitas (seberapa halus parameter kuantisasi dihitung)."*

Ini persis kerangka yang Bab II-mu butuhkan. Sekarang Bab II-mu membahas cakupan (Subbab 2.4) dan granularitas (akhir 2.4) secara mengalir, tanpa menyatakan bahwa ketiganya sumbu terpisah. Kalau framing ini dipakai di pembuka Subbab 2.4, posisi penelitianmu jadi jelas dalam satu kalimat: **cakupan dipatok weight-only, waktu dipatok PTQ, yang divariasikan hanya granularitas.**

### 3.2 Tabel spektrum granularitas (per-tensor → per-channel → per-group)

Dia punya Tabel 2.5 dengan baris: jumlah parameter scale, kepekaan terhadap variasi antar-channel, kepekaan terhadap variasi di dalam satu channel, overhead metadata, potensi akurasi pada bit-width rendah.

Bab II-mu hanya membahas dua tingkat (per-tensor dan per-channel). Menambahkan per-group ke tabel itu — walau tidak diuji — membuat dua hal sekaligus: (a) menunjukkan kamu tahu peta lengkapnya, (b) memberi tempat alami untuk "saran penelitian lanjutan" di Bab V. Pengisi tabelnya sudah ada di korpusmu: `A Survey of Quantization Methods…` (Bagian E, layerwise/channelwise/groupwise) dan `Understanding and Overcoming the Challenges…` (per-embedding-group).

### 3.3 Alasan memakai skema simetris

Dia menjelaskan: bobot model terlatih umumnya **zero-centered**, jadi skema simetris (tanpa zero-point) memadai dan lebih murah; sedangkan aktivasi tidak simetris (ReLU) sehingga butuh asimetris.

Bab II-mu sudah memakai simetris (Persamaan 2.1–2.2) tapi belum pernah menjelaskan **kenapa**. Satu paragraf ini menutup celah itu, dan sekaligus menjelaskan kenapa weight-only cocok dipasangkan dengan simetris — persis kombinasi yang kamu pakai.

### 3.4 Tabel perbandingan QAT vs PTQ

Dia menyajikan tabel 5 aspek (waktu penerapan, kebutuhan retraining, biaya komputasi, potensi akurasi pada bit rendah, contoh). Bab II-mu membahas PTQ vs QAT secara naratif (baris 97). Tabel akan lebih mudah dinilai penguji, dan baris "potensi akurasi" bisa kamu isi dengan bukti dari korpus: Abdurrahman (PTQ 4-bit F1 72,78 vs QAT 74,94).

### 3.5 Tabel pemilihan uji signifikansi per metrik — yang paling berharga

Dia memilih uji **berdasarkan sifat metriknya**: akurasi per sampel (biner) → **McNemar**; precision/recall/F1 (agregat) → **bootstrap berpasangan**; latensi (variansi antar iterasi) → **paired t-test / Wilcoxon**; ukuran model → tidak diuji.

Ini bisa langsung memperkuat Bab II-mu: **EM itu biner per sampel**, jadi McNemar's test adalah uji berpasangan yang paling lazim untuk itu, sementara F1 (kontinu) lebih pas dengan bootstrap. Bab II-mu sekarang hanya memakai bootstrap + Holm untuk keduanya. Menambah McNemar khusus untuk EM memberi dua manfaat: metodologis lebih tepat, dan pembeda dari penelitian terdahulu (celah ke-3 di Bab II-mu justru "tidak ada uji signifikansi").

### 3.6 Subbab yang belum ada di skripsimu tapi ada di dia

| Subbab | Ada di dia | Ada di kamu | Nilai tambah |
|---|---|---|---|
| 1.4 Manfaat Penelitian (teoritis + praktis) | ✔ | ✘ | Bab I-mu langsung melompat dari Tujuan ke Batasan. Banyak pedoman mewajibkan Manfaat. |
| 2.9 Kerangka Berpikir | ✔ (4 tahap) | ✘ | Penutup Bab II yang merangkum alur logika; murah dibuat, sering diminta |
| 3.1 Jenis & Alur Penelitian | ✔ | ✘ (Bab III masih placeholder) | Cetakan siap pakai untuk Bab III-mu |
| 3.2.2 Lingkungan Eksperimen (tabel) | ✔ | ✘ | Wajib untuk reproduksibilitas |
| 3.2.7 Tabel Skenario Pengujian | ✔ | ✘ | Untukmu: 3 model (FP32, coarse, fine) × metrik |
| 3.4 Jadwal Penelitian | ✔ (7 bulan, Gantt) | ✘ | Biasanya dilampirkan |

### 3.7 Kejujuran metodologis yang patut ditiru

Batasan #8 dia: latensi diukur setelah **unpacking INT4 ke floating point** karena tidak ada kernel INT4 native, sehingga angka latensi "tidak sepenuhnya merepresentasikan potensi percepatan". Kamu melakukan hal serupa (kuantisasi tersimulasi, dekuantisasi sebelum komputasi). Bab I-mu sudah menulis "tidak mengembangkan kernel khusus untuk presisi rendah" — tinggal ditambah satu kalimat di Bab IV bahwa latensi bukan klaim percepatan.

### 3.8 Cara dia menulis research gap

Empat poin, tiap poin: paper yang ada → apa yang belum. Contoh: *"Luqman dkk. (2025) telah menerapkan PTQ weight-only pada ResNet50, tetapi dengan skema non-uniform…"*. Pola ini sudah kamu pakai (3 poin), tapi poin ke-2 dan ke-3-mu bergantung pada Han (2026) yang PDF-nya belum kamu pegang — lihat `ANALISIS_BAB1_BAB2.md` §3.3.

---

## 4. Yang jangan ditiru (karena konteksnya beda)

### 4.1 Klaim ukuran model: jangan pakai angka teoretis tanpa menjelaskan penyimpanan

Dia menulis terang: representasi memori dialamatkan per byte, sedangkan INT4 hanya 4 bit, sehingga **tanpa bit-packing setiap nilai INT4 tetap menempati satu byte penuh dan setengah kapasitas terbuang**. Karena itu dia mengimplementasikan packing (dua nilai INT4 per byte).

Ini penting untukmu: Bab II-mu menulis "ukuran teoretis model 4-bit adalah 12,5%". Itu benar **secara teoretis**, tetapi kalau bobot INT4 disimpan dalam tipe int8 (perilaku umum pustaka kuantisasi PyTorch), ukuran berkas aktualnya hanya turun ke ~25%, bukan 12,5%. Bab II-mu sudah menyinggung hal ini di baris 117 dan 137 (faktor skala + parameter tak terkuantisasi), tapi belum menyebut soal penyimpanan int8. Tambahkan satu kalimat, atau klaim ukuranmu akan mudah dipatahkan di sidang.

### 4.2 Baseline FP16

Dia memakai FP16 sebagai baseline. Kamu memakai FP32. Jangan ikut pindah ke FP16 tanpa alasan: baseline FP32 membuat rasio kompresi lebih dramatis (8x teoretis) dan lebih lazim di literatur kuantisasi. Tapi konsekuensinya kamu harus konsisten: kalau baseline FP32, jangan mengutip angka "kompresi 4x" dari paper yang baseline-nya FP16.

### 4.3 Hanya per-channel

Dia tidak membandingkan granularitas — itu justru celah yang kamu isi. Jangan tergoda mempersempit lingkup dengan alasan "biar seperti proposal teman"; perbandingan per-tensor vs per-channel adalah kontribusi utamamu.

### 4.4 McNemar untuk "akurasi" — tidak bisa disalin apa adanya

Dia punya satu nilai akurasi per sampel (benar/salah). Kamu punya EM (biner, bisa McNemar) **dan** F1 (kontinu, tidak bisa). Jangan memakai McNemar untuk F1.

### 4.5 Dua cacat kecil di proposalnya

- Latar belakang menulis "granularitas **3** per-channel" — sisa edit yang belum dibersihkan.
- Tabel 2.6 punya kolom "Sumbu Kuantisasi" tapi isinya tidak konsisten terisi.

Kalau kamu mengadopsi struktur tabelnya, rapikan kolomnya: **Cakupan | Waktu | Granularitas** sebagai tiga kolom terpisah, atau satu kolom "Sumbu" yang isinya eksplisit (mis. "weight-only · PTQ · per-channel").

---

## 5. Peluang kontribusi yang terbuka dari keterbatasannya

1. **Perbandingan granularitas.** Dia hanya per-channel; kamu per-tensor vs per-channel. Di korpusmu, yang menyentuh granularitas pada encoder pun hanya di domain lain (retrieval embedding, neural receiver) — bukan extractive QA.
2. **Uji signifikansi pada metrik QA.** Dia menguji akurasi klasifikasi; kamu menguji EM/F1 dengan bootstrap + Holm, dan bisa menambah McNemar untuk EM. Di Tabel 2.1-mu, tidak ada satu pun penelitian yang melaporkan uji signifikansi pada metrik QA.
3. **Domain bahasa Indonesia + tugas span extraction.** Tidak ada di proposalnya, dan menurut penelusuran di korpus (`Deep Research…` p24) belum ada weight-only PTQ pada dataset QA Indonesia.
4. **Model Transformer, bukan CNN.** Distribusi bobot dan titik rawan kuantisasi berbeda (outlier pada residual/attention). Kalau nanti hasilmu berbeda dari pola CNN, itu temuan, bukan kesalahan.

---

## 6. Pertanyaan yang layak kamu tanyakan ke dia

1. Waktu implementasi per-channel di ResNet, kamu hitung scale per **output channel** — untuk lapisan linear di Transformer, sumbu mana yang kamu pakai? (Ini persis TODO di `chapter-2.tex:115`.)
2. Bit-packing-nya ditulis sendiri atau pakai pustaka? Kalau ditulis sendiri, berapa overhead waktu packing/unpacking-nya, dan apakah masuk hitungan latensi?
3. Kenapa baseline FP16, bukan FP32? Apakah karena keterbatasan memori GPU?
4. Uji signifikansi dijalankan pada level apa — per sampel atau per run? Berapa kali pengulangan seed?
5. Untuk McNemar: kamu pakai tabel kontingensi 2×2 antar dua model, kan? Bagaimana kamu menangani sampel yang sama-sama salah?
6. Apakah pembimbingmu menyarankan struktur Bab I dengan Manfaat? (Kalau iya, skripsimu juga perlu.)

---

## 7. Rekomendasi aksi untuk skripsimu (belum saya kerjakan)

Prioritas 1 — murah, berdampak besar:
1. Tambah **1.4 Manfaat Penelitian** di Bab I (teoritis + praktis, 3 butir masing-masing).
2. Tambah **Kerangka Berpikir** di akhir Bab II (4 tahap, satu gambar + satu paragraf).
3. Tambah paragraf **framing tiga sumbu** di pembuka Subbab 2.4.
4. Tambah **alasan skema simetris** (bobot zero-centered) di 2.4.
5. Tambah satu kalimat soal **penyimpanan int8 / bit-packing** di dekat klaim 12,5%.

Prioritas 2 — metodologis:
6. Pertimbangkan **McNemar untuk EM** di samping bootstrap; kalau diadopsi, Bab II §2.5 perlu satu paragraf dan Bab I rumusan masalah ke-3 tidak perlu diubah (tetap "uji signifikansi statistik").
7. Tabel perbandingan **QAT vs PTQ** di 2.4.

Prioritas 3 — struktural (setelah Bab III dikerjakan):
8. Pakai kerangka Bab III dia (3.1 jenis & alur, 3.2 desain eksperimen dengan subbab lingkungan/data/preprocessing/model/implementasi/skenario, 3.3 analisis, 3.4 jadwal) — Bab III-mu sekarang masih placeholder.

Semua ini butuh persetujuanmu dulu; belum ada satu pun berkas `.tex` yang saya ubah.
