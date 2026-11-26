/panduan-penulisan-skripsi saya ingin kamu bantu dalam merumuskan pipeline penelitian saya, dimana saya ingin menyesuaikan ini agar sesuai dengan tiap bagian bab skripsi saya 
Berikut pipeline coding riset Anda, urut dari hulu ke hilir. Setiap tahap saya kaitkan dengan bagian Bab 2 yang dijanjikan ke Bab 3.

## 0. Setup dan reproducibility
- Struktur proyek, `config.yaml` (seed, path, hyperparameter, daftar konfigurasi presisi).
- Seed tetap, versi library dikunci (`requirements.txt`), log environment (GPU/CPU, versi PyTorch dan Transformers).
- Rencana beberapa seed (misalnya 3–5) agar uji statistik bermakna.

## 1. Data
- Muat IndoFinSent dan Indonesian Financial PhraseBank dengan split resmi (1.591/227/456 dan 1.629/182/453).
- Verifikasi jumlah baris dan distribusi label terhadap angka di Bab 2.
- Tokenisasi dengan tokenizer IndoBERT, max length ditetapkan dan disimpan, sama untuk semua kondisi.
- EDA ringkas: distribusi kelas dan panjang token (mendukung argumen dominasi kelas netral).

## 2. Fine-tuning baseline FP32
- Model `indobenchmark/indobert-base-p1` dengan head klasifikasi tiga kelas.
- Latih per dataset, pilih checkpoint terbaik di validation (Macro F1).
- Simpan checkpoint, kurva latih, dan prediksi (logit dan probabilitas softmax) pada validation dan test.
- Ini baseline untuk semua perhitungan drift.

## 3. Modul indikator sentimen kontinu
- Fungsi `S = P(pos) − P(neg)` dari softmax.
- Fungsi NDI hanya untuk ilustrasi kritik (contoh numerik di Bab 2).
- Unit test: nilai S ∈ [−1, 1], kasus netral murni dan kasus ambigu P+ = P− = 0,5 bernilai 0.

## 4. Modul kuantisasi (inti Bab 3)
- Quantizer simetris `b`-bit: round, clip, dan skala (Persamaan 2.4–2.5).
- Kuantisasi bobot per-channel berbasis absmax (2.6–2.7), diterapkan ke lapisan linear (Q/K/V, output attention, feed-forward).
- Kuantisasi aktivasi: pilih statis atau dinamis, per-tensor atau per-channel, lalu pasang sebagai modul pembungkus (wrapper) pada input lapisan.
- Kalibrasi: ambil sampel dari split train (jumlah dan seed dicatat), kumpulkan statistik aktivasi per lapisan.
- Simulated (fake) quantization: kuantisasi lalu dekuantisasi, komputasi tetap di float.
- Daftar lapisan yang dikecualikan (embedding, LayerNorm, softmax, GELU) ditulis eksplisit.
- Lima kondisi lewat satu konfigurasi: FP32, W8A8, W4A16 (atau W4A32), W4A8, W4A4.
- Unit test: bobot terkuantisasi hanya punya paling banyak 2^b nilai unik per channel, dan error rekonstruksi lebih kecil untuk bit lebih tinggi.

## 5. Inferensi dan penyimpanan hasil
- Jalankan tiap kondisi pada test set yang sama dengan tokenisasi yang sama.
- Simpan per sampel: logit, probabilitas, prediksi, dan S, dalam satu file per dataset dan per kondisi.
- Semua metrik berikutnya dihitung dari file ini, jadi tidak perlu inferensi ulang.

## 6. Metrik klasifikasi
- Macro F1 dan akurasi, plus precision, recall, dan F1 per kelas.
- Matriks konfusi per kondisi.

## 7. Metrik score drift (inti kebaruan)
- `d_i = S_q,i − S_FP32,i` per sampel.
- MAE, korelasi Pearson, dan korelasi Spearman antara S FP32 dan S terkuantisasi.
- Label flip rate.
- KL divergence tiga kelas (dengan smoothing ε = 10⁻⁸).
- Semua dilaporkan secara keseluruhan dan **per kelas prediksi FP32** (menjawab risiko MAE tampak kecil karena dominasi netral).

## 8. Analisis lanjutan
- Hubungan drift dengan margin keputusan: margin = selisih dua probabilitas teratas pada FP32, dikelompokkan (bin) lalu bandingkan rata-rata |drift| dan flip rate per bin.
- Uji statistik: bootstrap confidence interval untuk MAE dan Macro F1, serta uji berpasangan (misalnya Wilcoxon) antar kondisi, dan uji McNemar untuk perubahan prediksi.
- Variasi antar seed (rata-rata dan simpangan baku).

## 9. Metrik efisiensi
- Ukuran teoretis: jumlah parameter × bit ÷ 8, dan ukuran berkas aktual (dua bentuk, sesuai 2.7.3).
- BOPs: hitung per lapisan dari jumlah operasi multiply-accumulate × bit bobot × bit aktivasi, lalu jumlahkan. Definisi dan rumusnya harus ada di Bab 2 sebelum implementasi ini.
- Latensi (ms per sampel) dan throughput, dicatat dengan hardware dan jumlah pengulangan, dilabeli sebagai metrik pelengkap karena fake quantization.

## 10. Agregasi dan visualisasi
- Tabel utama: lima kondisi × dua dataset × tiga kelompok metrik (klasifikasi, stabilitas, efisiensi).
- Grafik: histogram dan boxplot drift per kondisi, scatter S FP32 vs S terkuantisasi, drift vs margin, serta trade-off efisiensi vs stabilitas.
- Ekspor otomatis ke tabel LaTeX atau CSV agar angka Bab 4 tidak diketik manual.

## 11. Pengujian dan validasi pipeline
- Sanity check: kondisi "FP32 terkuantisasi 32-bit" harus identik dengan baseline (drift = 0).
- Pengecekan bahwa W8A8 mendekati FP32 (sesuai temuan Abdurrahman), dan W4A4 diperkirakan paling buruk (ekspektasi di Bab 2).
- Satu skrip `run_all` yang mengulang seluruh eksperimen dari config.

## Struktur folder yang disarankan

```
project/
  config.yaml
  data/            # loader, split, tokenisasi
  models/          # fine-tuning, checkpoint
  quant/           # quantizer, wrapper aktivasi, kalibrasi
  metrics/         # klasifikasi, drift, efisiensi (BOPs)
  analysis/        # margin, uji statistik, plot
  outputs/         # prediksi per sampel, tabel, gambar
  tests/           # unit test
  run_all.py
```

## Keterkaitan dengan Bab 3

Tahap 4 sampai 9 bisa langsung menjadi subbab Bab 3: skenario eksperimen (lima kondisi), implementasi kuantisasi, prosedur pengukuran drift, dan metrik efisiensi. Diagram alur utamanya cukup: data → fine-tuning FP32 → kuantisasi lima kondisi → inferensi → metrik klasifikasi, drift, dan efisiensi → evaluasi. Sesuai panduan, diagram memuat alur utama dan berakhir di evaluasi, detail kecil tidak perlu masuk.




Saya baca dulu panduan skripsi dan notebook Anda.Pipeline Anda sudah runtut. Saya sejajarkan dengan Bab 2 dan saya periksa terhadap notebook. Notebook belum sepenuhnya sesuai dengan Bab 2, dan itu perlu diputuskan sebelum eksperimen sungguhan dijalankan.

## Pemetaan pipeline ke bab

Agar subbab tidak bercabang (maksimal heading 3), 12 tahap Anda saya gabung menjadi enam subbab Bab 3. Urutan 3.5.x mengikuti Subbab 2.7 supaya mudah dirujuk silang.

| Subbab Bab 3 | Tahap pipeline | Dasar teori di Bab 2 | Keluaran di Bab 4 |
|---|---|---|---|
| 3.1 Alur penelitian | Seluruh tahap (diagram) | 2.8 (celah) | - |
| 3.2 Data | 0, 1 | 2.6.1, 2.6.2 | Statistik dataset, distribusi kelas |
| 3.3 Fine-tuning baseline FP32 | 2, 3 | 2.2, 2.3 | Macro F1 dan akurasi FP32 |
| 3.4 Implementasi PTQ (5 kondisi) | 4, 5 | 2.4, 2.5 | - (konfigurasi) |
| 3.5 Evaluasi: 3.5.1 klasifikasi, 3.5.2 score drift, 3.5.3 efisiensi, 3.5.4 uji statistik | 6 sampai 9 | 2.7.1, 2.7.2, 2.7.3 | Tabel klasifikasi, drift, drift vs margin, efisiensi |
| 3.6 Lingkungan dan reproducibility | 0, 10, 11 | - | - |

Bab 4 sebaiknya per dataset (IndoFinSent, lalu Financial PhraseBank), dengan urutan klasifikasi, drift, drift vs margin, efisiensi, lalu pembahasan lintas dataset. Bab 5 berisi kesimpulan per rumusan masalah. Rumusan masalah Bab 1 bisa dikelompokkan menjadi tiga: kinerja klasifikasi, stabilitas skor, dan efisiensi. Jika Anda kirim Bab 1, saya cocokkan nomor dan kalimatnya.

Diagram alur utama (Bab 3.1): Dataset (IndoFinSent, PhraseBank ID) → tokenisasi → fine-tuning FP32 → PTQ lima kondisi → inferensi (logit, probabilitas, S per sampel) → metrik klasifikasi, score drift, efisiensi → evaluasi dan uji statistik.

## Notebook vs Bab 2

| Aspek | Bab 2 | Notebook | Tindakan |
|---|---|---|---|
| Dataset | 2 dataset | 3, termasuk `topic_finance_21k` (20 kelas topik) | Hapus dari `TASKS_LIST`; tugasnya bukan sentimen |
| Kondisi | 5 (FP32, W8A8, W4A16, W4A8, W4A4) | `QUANT_VARIANTS` hanya W8A8, W4A8, W4A4 | Tambah varian aktivasi tidak terkuantisasi |
| Penamaan W4A16 | Aktivasi 16-bit tidak dikuantisasi | Baseline berjalan di FP32, jadi aktivasi tak terkuantisasi bernilai 32-bit | Ganti nama menjadi W4A32 (sejalan dengan Abdurrahman et al.), atau cast ke FP16 dan laporkan itu |
| Skala bobot | Absmax per-channel (Pers. 2.6–2.7) | `W_QUANT_METHOD='MSE'` dengan golden section | Ganti ke min-max/absmax, atau ubah Subbab 2.5 menjadi MSE |
| Per-channel bobot | Ya | Belum terlihat jelas di sel yang saya baca | Pastikan opsi per-channel aktif |
| Skema aktivasi | Hanya simetris (Pers. 2.4–2.5) | `asymmetric_uniform` | Tambah persamaan zero point di Bab 2, atau ganti ke simetris |
| Kalibrasi | Statistik per lapisan dari data train | `NUM_EST_BATCHES=1` × 16 sampel, estimator `current_minmax` | Tetapkan jumlah sampel dari split train, catat seed, pastikan rentang dibekukan sebelum evaluasi |
| Cakupan lapisan | Pengecualian ditulis eksplisit | `QUANT_SETUP='all'` | Dokumentasikan lapisan yang ikut terkuantisasi (residual, attention score, dsb.) |
| Seed | Rencana 3–5 seed | `SEED=1000` tunggal | Loop seed, dengan baseline FP32 dilatih ulang per seed |
| Mode | Eksperimen penuh | `SMOKE_TEST=True` | Ubah ke `False` |
| Keluaran per sampel | Logit, probabilitas, S | Hanya metrik agregat dari Trainer | Tambah penyimpanan per sampel |
| Drift, margin, uji statistik | MAE, Pearson, Spearman, flip rate, KL, bin margin, bootstrap, Wilcoxon, McNemar | Belum ada | Modul analisis terpisah yang membaca file prediksi |
| Efisiensi | Ukuran teoretis dan berkas aktual, BOPs, latensi | Hanya estimasi ukuran dari bit-width, latensi dan throughput | Tambah ukuran berkas aktual dan BOPs |

Dua keputusan paling menentukan adalah skala bobot (MSE atau absmax) dan skema aktivasi (simetris atau asimetris). Keduanya mengubah isi Bab 2.5, jadi putuskan dulu sebelum menjalankan eksperimen.

## Perubahan pada pipeline Anda

1. **Sanity check tahap 11.** Jadikan "FP32 terkuantisasi 32-bit identik dengan baseline" dan "error rekonstruksi turun saat bit naik" sebagai uji bug. Pengecekan "W8A8 mendekati FP32" dan "W4A4 paling buruk" sebaiknya diperlakukan sebagai hipotesis dari Abdurrahman et al., bukan syarat lolos. Jika hasil Anda berbeda, itu temuan yang dilaporkan apa adanya, bukan kesalahan pipeline.
2. **Kalibrasi aktivasi.** Pilih statis (rentang dari data train), karena itu yang dijanjikan di 2.5. Mode dinamis akan membuat Bab 2.5 perlu ditulis ulang.
3. **Multi-seed pada tahap 8.** Drift tiap seed dihitung terhadap FP32 seed yang sama, lalu dirata-rata. Jangan membandingkan lintas seed.

## Bab 2 yang masih perlu ditambah agar Bab 3 punya dasar teori

- Definisi dan rumus BOPs (belum ada di Bab 2).
- Bootstrap confidence interval, uji Wilcoxon, dan uji McNemar, masing-masing beserta rujukannya.
- Definisi margin keputusan (selisih dua probabilitas teratas) dan alasan dipakai.
- Persamaan kuantisasi asimetris, jika aktivasi tetap asimetris.
- Cara pengukuran latensi (jumlah warm-up dan pengulangan).

## Placeholder di kutipan Bab 2

- Parameter IndoBERT: isi dengan 124,5 juta, sesuai Subbab 2.3.2 dan Tabel 2.1. Angka 110 juta pada contoh itu milik BERT-base, bukan `indobert-base-p1`.
- Akurasi Sanjaya et al. (2026): rentang di Subbab 2.8 adalah 92,9–93,2%. Pastikan angka itu memang untuk varian QAT sebelum dipakai di 2.2.
- Bukti overfitting Tanjaya et al. (2025): angka selisih latih–uji harus diambil dari makalahnya. Saya tidak punya angkanya di berkas ini.
- Kalimat "setidaknya empat penelitian terdahulu" hanya diikuti dua rujukan (Jiwandono et al., 2026; Maharani et al., 2023). Tambahkan dua rujukan lain atau turunkan jumlahnya menjadi dua.

Bagian mana yang ingin dikerjakan dulu: menyesuaikan notebook (varian W4A32, absmax per-channel, penyimpanan per sampel) atau menulis draf Bab 3?


saya belum yakin terkait semua konfigruasi ini, list konfigurasi yang perlu saya cari untuk memastikan pipeline saya

Daftar di bawah dikelompokkan menurut jenis keputusannya. Kolom "Cek di" menunjukkan tempat mencari jawabannya, dan kolom "Dampak" menunjukkan bab yang berubah jika jawabannya berubah.

## A. Kuantisasi bobot

| Yang dicari | Opsi | Cek di | Dampak |
|---|---|---|---|
| Skema | Simetris atau asimetris | Notebook: `QMETHOD`; Gholami et al. (2021) | 2.4, 2.5 |
| Granularitas | Per-tensor atau per-channel (sumbu mana) | `quant_click_options.py` (opsi per-channel), `QuantizedModule` (`per_channel_weights`) | 2.5, 3.4 |
| Penentuan rentang | Absmax, MSE, atau percentile | Notebook: `W_QUANT_METHOD`, `W_OPT_METHOD`; `range_estimators.py` | Pers. 2.6 |
| Lapisan yang dikuantisasi | Linear saja, atau juga embedding, pooler, classifier head | `quantized_bert.py` (cari `DEFAULT_QUANT_DICT` dan `_quantize_model`) | 3.4 |
| Bias | Dikuantisasi atau dibiarkan FP32 | `QuantLinear` di `autoquant_utils.py` | 3.4 |

## B. Kuantisasi aktivasi

| Yang dicari | Opsi | Cek di | Dampak |
|---|---|---|---|
| Statis atau dinamis | Rentang dibekukan setelah kalibrasi, atau dihitung ulang per input | `ACT_QUANT_METHOD`, `fix_act_ranges` pada `base_quantized_model.py`, dan apakah dipanggil sebelum evaluasi | 2.5, 3.4 |
| Granularitas | Per-tensor atau per-embedding | `per_embd_quant_utils.py` | 3.4 |
| Skema | Simetris atau asimetris | `QMETHOD_ACT` | 2.4 (perlu persamaan zero point jika asimetris) |
| Estimator rentang | Min-max, running min-max, percentile, MSE | `RangeEstimators` | 2.5 |
| Titik kuantisasi | Input lapisan linear saja, atau juga attention score, softmax, residual, output GELU | `QUANT_SETUP='all'` dan `DEFAULT_QUANT_DICT` | 3.4 (daftar pengecualian) |
| Penanganan outlier | Dibiarkan atau ditangani (per-embedding, mixed precision) | Bondarenko et al. (2021), asal kode Qualcomm yang Anda pakai; Abdurrahman et al. (2023) | Penjelasan hasil W4A4 di Bab 4 |

## C. Kalibrasi

| Yang dicari | Opsi | Cek di | Dampak |
|---|---|---|---|
| Jumlah sampel | Notebook saat ini: 1 batch × 16 = 16 sampel | `NUM_EST_BATCHES`, `EST_RANGES_BATCH_SIZE`; Hubara et al. (2021), Williams & Aletras (2024) | 3.4 |
| Sumber data | Split train, bukan test | `pass_data_for_range_estimation` | 3.4 |
| Pengaruh padding | `PAD_TO_MAX_LEN=True` membuat token padding ikut masuk statistik rentang | Cek apakah attention mask diterapkan sebelum penghitungan rentang | 3.4 |
| Seed kalibrasi | Dicatat atau tidak | Config | 3.6 |

## D. Definisi kondisi presisi

| Yang dicari | Opsi | Dampak |
|---|---|---|
| A16 atau A32 | Aktivasi tak terkuantisasi di model FP32 bernilai 32-bit | Nama kondisi di 2.4, Tabel 2.1, dan judul tabel Bab 4 |
| Bobot INT4 | Fake quantization (kuantisasi lalu dekuantisasi di float) | Catatan keterbatasan di 3.4 dan 3.5.3 |
| FP32 | Model fine-tuning yang sama, tanpa operasi kuantisasi | 2.7.2 sudah menyebut ini |

## E. Fine-tuning baseline

| Yang dicari | Cek di | Dampak |
|---|---|---|
| Hyperparameter (epoch, learning rate, batch size, weight decay, warmup) | Notebook: `BL_*`; bandingkan dengan Maharani et al. (2023) dan Wilie et al. (2020) | 3.3 |
| `MAX_SEQ_LEN=128` | Distribusi panjang token hasil EDA; hitung persentase teks yang terpotong | 3.2 |
| Kriteria checkpoint terbaik | Apakah Macro F1 di validation atau metrik lain; cek `TrainingArguments` di `main.py` | 3.3 |
| Pembobotan kelas | Perlu atau tidak, mengingat negatif 20,98% dan 13,38% | 3.3 |
| Jumlah seed | 3–5 seed | 3.6 |

## F. Evaluasi dan statistik

| Yang dicari | Cek di | Dampak |
|---|---|---|
| **Urutan label (indeks ke negatif/netral/positif)** | Pemetaan label di dataset Hugging Face `intanm/...` dan `financial_task.py`. Jika terbalik, S = P(Positif) − P(Negatif) salah tanda | 3.5.2, ini yang paling kritis |
| Jumlah bin dan cara binning margin | Kuantil (jumlah data per bin sama) atau lebar tetap | 3.5.4 |
| Resample bootstrap dan tingkat kepercayaan | Umumnya 1.000–10.000 resample dan 95%; cari rujukan | 2.x (tambahan), 3.5.4 |
| Koreksi perbandingan berganda | Banyak pasangan kondisi: Holm atau Bonferroni | 3.5.4 |
| Presisi numerik KL | float64 untuk softmax dan KL | 3.5.2 |

## G. Efisiensi

| Yang dicari | Cek di | Dampak |
|---|---|---|
| Rumus BOPs | Abdurrahman et al. (2023) memakai FLOPs; cari rujukan yang mendefinisikan BOPs (MAC × bit bobot × bit aktivasi) | 2.7.3 (tambahan), 3.5.3 |
| Lapisan yang dihitung BOPs | Linear saja, atau juga perkalian matriks attention (QKᵀ dan ·V); panjang urutan yang dipakai | 3.5.3 |
| Ukuran teoretis | Embedding tidak dikuantisasi, jadi dihitung 32-bit; cek `_effective_size_mb` | 3.5.3 |
| Ukuran berkas aktual | Perlu implementasi penyimpanan; Sanjaya et al. (2026) menunjukkan INT4 bisa tersimpan sebagai INT8 | 3.5.3 |
| Protokol latensi | Perangkat (CPU/GPU), batch size 1, warm-up, jumlah iterasi. Notebook saat ini memakai 5 warm-up dan 30 iterasi, dan jumlah itu perlu Anda justifikasi | 3.5.3 |

## H. Data

| Yang dicari | Cek di | Dampak |
|---|---|---|
| Jumlah baris per split | Output EDA (sel 48), bandingkan dengan 1.591/227/456 dan 1.629/182/453 | 3.2 |
| Duplikat atau kebocoran antar split | Cek manual teks identik antar train dan test | 3.2 |
| Tokenizer | `use_fast`, huruf kecil/besar, token khusus | 3.2 |

## Urutan pengecekan

1. **Label mapping (F).** Satu kesalahan di sini membuat seluruh Bab 4 salah, dan pengecekannya paling cepat.
2. **Skala bobot, skema aktivasi, dan kalibrasi (A–C).** Ketiganya mengubah isi Bab 2.4–2.5. Putuskan sebelum eksperimen penuh.
3. **Cakupan lapisan dan definisi kondisi (B, D).** Ini menentukan apakah lima kondisi benar-benar sebanding.
4. **Hyperparameter dan seed (E).** Ini tidak mengubah Bab 2, tetapi memengaruhi seluruh angka.
5. **BOPs dan protokol latensi (G).** Bisa dikerjakan paling akhir, tetapi rumus BOPs harus masuk Bab 2 sebelum implementasi.

Untuk satu pengecekan cepat tanpa membaca semua kode, jalankan satu kali kuantisasi W8A8 dengan `SMOKE_TEST=True`, lalu cetak struktur model (`print(model)`) dan konfigurasi tiap quantizer (`n_bits`, `per_channel`, `symmetric`). Dari situ skema, granularitas, dan lapisan yang ikut terkuantisasi bisa dibaca langsung, tanpa menebak dari nama opsi.


Daftar di bawah dikelompokkan menurut jenis keputusannya. Kolom "Cek di" menunjukkan tempat mencari jawabannya, dan kolom "Dampak" menunjukkan bab yang berubah jika jawabannya berubah.

## A. Kuantisasi bobot

| Yang dicari | Opsi | Cek di | Dampak |
|---|---|---|---|
| Skema | Simetris atau asimetris | Notebook: `QMETHOD`; Gholami et al. (2021) | 2.4, 2.5 |
| Granularitas | Per-tensor atau per-channel (sumbu mana) | `quant_click_options.py` (opsi per-channel), `QuantizedModule` (`per_channel_weights`) | 2.5, 3.4 |
| Penentuan rentang | Absmax, MSE, atau percentile | Notebook: `W_QUANT_METHOD`, `W_OPT_METHOD`; `range_estimators.py` | Pers. 2.6 |
| Lapisan yang dikuantisasi | Linear saja, atau juga embedding, pooler, classifier head | `quantized_bert.py` (cari `DEFAULT_QUANT_DICT` dan `_quantize_model`) | 3.4 |
| Bias | Dikuantisasi atau dibiarkan FP32 | `QuantLinear` di `autoquant_utils.py` | 3.4 |

## B. Kuantisasi aktivasi

| Yang dicari | Opsi | Cek di | Dampak |
|---|---|---|---|
| Statis atau dinamis | Rentang dibekukan setelah kalibrasi, atau dihitung ulang per input | `ACT_QUANT_METHOD`, `fix_act_ranges` pada `base_quantized_model.py`, dan apakah dipanggil sebelum evaluasi | 2.5, 3.4 |
| Granularitas | Per-tensor atau per-embedding | `per_embd_quant_utils.py` | 3.4 |
| Skema | Simetris atau asimetris | `QMETHOD_ACT` | 2.4 (perlu persamaan zero point jika asimetris) |
| Estimator rentang | Min-max, running min-max, percentile, MSE | `RangeEstimators` | 2.5 |
| Titik kuantisasi | Input lapisan linear saja, atau juga attention score, softmax, residual, output GELU | `QUANT_SETUP='all'` dan `DEFAULT_QUANT_DICT` | 3.4 (daftar pengecualian) |
| Penanganan outlier | Dibiarkan atau ditangani (per-embedding, mixed precision) | Bondarenko et al. (2021), asal kode Qualcomm yang Anda pakai; Abdurrahman et al. (2023) | Penjelasan hasil W4A4 di Bab 4 |

## C. Kalibrasi

| Yang dicari | Opsi | Cek di | Dampak |
|---|---|---|---|
| Jumlah sampel | Notebook saat ini: 1 batch × 16 = 16 sampel | `NUM_EST_BATCHES`, `EST_RANGES_BATCH_SIZE`; Hubara et al. (2021), Williams & Aletras (2024) | 3.4 |
| Sumber data | Split train, bukan test | `pass_data_for_range_estimation` | 3.4 |
| Pengaruh padding | `PAD_TO_MAX_LEN=True` membuat token padding ikut masuk statistik rentang | Cek apakah attention mask diterapkan sebelum penghitungan rentang | 3.4 |
| Seed kalibrasi | Dicatat atau tidak | Config | 3.6 |

## D. Definisi kondisi presisi

| Yang dicari | Opsi | Dampak |
|---|---|---|
| A16 atau A32 | Aktivasi tak terkuantisasi di model FP32 bernilai 32-bit | Nama kondisi di 2.4, Tabel 2.1, dan judul tabel Bab 4 |
| Bobot INT4 | Fake quantization (kuantisasi lalu dekuantisasi di float) | Catatan keterbatasan di 3.4 dan 3.5.3 |
| FP32 | Model fine-tuning yang sama, tanpa operasi kuantisasi | 2.7.2 sudah menyebut ini |

## E. Fine-tuning baseline

| Yang dicari | Cek di | Dampak |
|---|---|---|
| Hyperparameter (epoch, learning rate, batch size, weight decay, warmup) | Notebook: `BL_*`; bandingkan dengan Maharani et al. (2023) dan Wilie et al. (2020) | 3.3 |
| `MAX_SEQ_LEN=128` | Distribusi panjang token hasil EDA; hitung persentase teks yang terpotong | 3.2 |
| Kriteria checkpoint terbaik | Apakah Macro F1 di validation atau metrik lain; cek `TrainingArguments` di `main.py` | 3.3 |
| Pembobotan kelas | Perlu atau tidak, mengingat negatif 20,98% dan 13,38% | 3.3 |
| Jumlah seed | 3–5 seed | 3.6 |

## F. Evaluasi dan statistik

| Yang dicari | Cek di | Dampak |
|---|---|---|
| **Urutan label (indeks ke negatif/netral/positif)** | Pemetaan label di dataset Hugging Face `intanm/...` dan `financial_task.py`. Jika terbalik, S = P(Positif) − P(Negatif) salah tanda | 3.5.2, ini yang paling kritis |
| Jumlah bin dan cara binning margin | Kuantil (jumlah data per bin sama) atau lebar tetap | 3.5.4 |
| Resample bootstrap dan tingkat kepercayaan | Umumnya 1.000–10.000 resample dan 95%; cari rujukan | 2.x (tambahan), 3.5.4 |
| Koreksi perbandingan berganda | Banyak pasangan kondisi: Holm atau Bonferroni | 3.5.4 |
| Presisi numerik KL | float64 untuk softmax dan KL | 3.5.2 |

## G. Efisiensi

| Yang dicari | Cek di | Dampak |
|---|---|---|
| Rumus BOPs | Abdurrahman et al. (2023) memakai FLOPs; cari rujukan yang mendefinisikan BOPs (MAC × bit bobot × bit aktivasi) | 2.7.3 (tambahan), 3.5.3 |
| Lapisan yang dihitung BOPs | Linear saja, atau juga perkalian matriks attention (QKᵀ dan ·V); panjang urutan yang dipakai | 3.5.3 |
| Ukuran teoretis | Embedding tidak dikuantisasi, jadi dihitung 32-bit; cek `_effective_size_mb` | 3.5.3 |
| Ukuran berkas aktual | Perlu implementasi penyimpanan; Sanjaya et al. (2026) menunjukkan INT4 bisa tersimpan sebagai INT8 | 3.5.3 |
| Protokol latensi | Perangkat (CPU/GPU), batch size 1, warm-up, jumlah iterasi. Notebook saat ini memakai 5 warm-up dan 30 iterasi, dan jumlah itu perlu Anda justifikasi | 3.5.3 |

## H. Data

| Yang dicari | Cek di | Dampak |
|---|---|---|
| Jumlah baris per split | Output EDA (sel 48), bandingkan dengan 1.591/227/456 dan 1.629/182/453 | 3.2 |
| Duplikat atau kebocoran antar split | Cek manual teks identik antar train dan test | 3.2 |
| Tokenizer | `use_fast`, huruf kecil/besar, token khusus | 3.2 |

## Urutan pengecekan

1. **Label mapping (F).** Satu kesalahan di sini membuat seluruh Bab 4 salah, dan pengecekannya paling cepat.
2. **Skala bobot, skema aktivasi, dan kalibrasi (A–C).** Ketiganya mengubah isi Bab 2.4–2.5. Putuskan sebelum eksperimen penuh.
3. **Cakupan lapisan dan definisi kondisi (B, D).** Ini menentukan apakah lima kondisi benar-benar sebanding.
4. **Hyperparameter dan seed (E).** Ini tidak mengubah Bab 2, tetapi memengaruhi seluruh angka.
5. **BOPs dan protokol latensi (G).** Bisa dikerjakan paling akhir, tetapi rumus BOPs harus masuk Bab 2 sebelum implementasi.

Untuk satu pengecekan cepat tanpa membaca semua kode, jalankan satu kali kuantisasi W8A8 dengan `SMOKE_TEST=True`, lalu cetak struktur model (`print(model)`) dan konfigurasi tiap quantizer (`n_bits`, `per_channel`, `symmetric`). Dari situ skema, granularitas, dan lapisan yang ikut terkuantisasi bisa dibaca langsung, tanpa menebak dari nama opsi.

Saya cari dan verifikasi tiap bagian satu per satu, dengan prioritas pada sumber primer (makalah asli, prosiding, atau halaman dataset).Saya cari dan verifikasi rujukan untuk tiap butir A sampai H. Semuanya saya cek lewat halaman resmi penerbit atau arXiv, kecuali yang saya tandai. Yang saya baca adalah **metadata dan abstrak**, bukan teks lengkap, jadi bagian "yang didukung" di bawah hanya mencakup apa yang terlihat di sana. Buka tiap makalah sebelum Anda mengutip isi spesifiknya.

## Rujukan per butir

| Butir | Rujukan terverifikasi | Yang didukung | Catatan |
|---|---|---|---|
| **A** Skema simetris/asimetris | Bondarenko et al. (2021); Nagel et al. (2021) | Bondarenko menyebut skema affine/asimetris umum dipakai karena efisien di aritmetika fixed-point. Nagel adalah white paper kuantisasi yang membahas PTQ dan QAT. | Bab 2.4 saat ini hanya memuat persamaan simetris. |
| A Per-channel bobot | Krishnamoorthi (2018) | Merekomendasikan bobot per-channel dan aktivasi per-layer. PTQ 8-bit pada CNN mencapai akurasi dalam 2% dari floating point. | Eksperimennya pada CNN, bukan transformer. |
| A Penentuan rentang (absmax/MSE) | Nagel et al. (2021); Bondarenko et al. (2021) | Keduanya membahas PTQ. Bondarenko memakai estimator current min-max pada analisisnya. | Pembahasan MSE vs min-max tidak terlihat di abstrak. Baca bagian range setting di white paper. |
| A Embedding dan lapisan lain | Bondarenko et al. (2021) | Abstrak menyatakan bobot dan embedding transformer bisa dikuantisasi ke bit sangat rendah. | Cakupan lapisan lain ada di bagian metodologi. |
| A Bias | Jacob et al. (2018) | Gambar 1.1 menunjukkan bias disimpan 32-bit pada inferensi integer. | Konteksnya CNN. |
| **B** Statis vs dinamis, estimator | Bondarenko et al. (2021) | Memakai estimator current min-max dengan batch size 1 pada eksperimen PTQ. | Cek apakah rentang dibekukan sebelum evaluasi. Ini menentukan statis atau dinamis. |
| B Outlier dan per-embedding | Bondarenko et al. (2021) | Aktivasi transformer punya rentang dinamis tinggi yang sulit direpresentasikan di fixed-point bit rendah. Makalah ini memperkenalkan per-embedding-group quantization. | Rujukan utama untuk menjelaskan hasil W4A4 di Bab 4. |
| B Ekspektasi W4A4 | Wu et al. (2023); Abdurrahman et al. (2023) | Sudah di Bab 2. Wu memakai QAT, Abdurrahman PTQ. | Kedua temuan bertentangan, laporkan keduanya. |
| **C** Jumlah sampel kalibrasi | Hubara et al. (2021); Williams & Aletras (2024); Shihab et al. (arXiv:2604.24008) | Dua pertama sudah di Bab 2. Shihab menunjukkan pemilihan sampel memengaruhi INT4 dengan 64–128 sampel. | Shihab berupa preprint dan evaluasinya pada LLM (MMLU, perplexity). |
| **D** Fake quantization | Jacob et al. (2018); Nagel et al. (2021); Wu et al. (2023) | Jacob menjelaskan "simulated quantization" saat pelatihan, dan Nagel memuat bagian simulasi. Wu (sudah di Bab 2) menyebut percepatan INT4 butuh kernel khusus. | - |
| D Notasi WxAy | Wu et al. (2023); Abdurrahman et al. (2023) | Notasi sudah di Bab 2. Abdurrahman memakai W4A32 untuk aktivasi tak terkuantisasi. | Ini konvensi, tidak perlu rujukan baru. |
| **E** Hyperparameter dan seed | Mosbach et al. (2021) | Fine-tuning BERT bervariasi antar seed. Jumlah iterasi berpengaruh pada stabilitas. | `BL_NUM_EPOCHS=3` perlu Anda justifikasi dengan makalah ini. Dodge et al. (2020) dikutip di sana, tetapi saya belum membuka makalahnya sendiri. |
| **F** Urutan label | Maharani et al. (2023), arXiv:2310.09736 | PhraseBank: negatif (0), netral (1), positif (2). | Pemetaan IndoFinSent tidak saya temukan (lihat catatan bawah). |
| F Analisis per sampel dan flip | Hooker et al. (2019/2021) | Akurasi agregat menyembunyikan perbedaan dampak kompresi antar contoh dan kelas. Mereka mengukur ketidaksepakatan prediksi model terkompresi dan tak terkompresi. | Eksperimennya pada citra. |
| F Probabilitas softmax | Guo et al. (2017) | Jaringan modern tidak terkalibrasi dengan baik. | Peringatan penting untuk S = P(+) − P(−): S adalah skor keyakinan model, bukan probabilitas sentimen yang benar. |
| F Bootstrap | Berg-Kirkpatrick et al. (2012); Efron & Tibshirani (1993) | Berg-Kirkpatrick memakai bootstrap berpasangan untuk metrik NLP dan b = 10⁶ resample. | Lihat koreksi di bawah. |
| F Uji berpasangan | Dror et al. (2018) | Protokol memilih uji signifikansi di NLP. | - |
| F McNemar | Dietterich (1998) | McNemar punya type I error rendah dan cocok bila model hanya dijalankan sekali. | Lihat catatan di bawah. |
| F Koreksi berganda | Holm (1979) | Prosedur sequentially rejective Bonferroni, valid pada dependensi sembarang dan lebih kuat daripada Bonferroni biasa. | - |
| **G** BOPs | Baskin et al. (2021), UNIQ; van Baalen et al. (2020), Bayesian Bits | Baskin mengusulkan BOPs sebagai metrik kompleksitas. Bayesian Bits memakai BOPs sebagai metrik efisiensi. | Rumus lengkap tidak terlihat di abstrak. Ambil dari bagian metrik di kedua makalah. |
| G Latensi | Reddi et al. (2020), MLPerf Inference | Mendefinisikan skenario single-stream, multistream, server, dan offline. | Jumlah warm-up dan iterasi tidak saya temukan di sumber. |
| G Ukuran model | Krishnamoorthi (2018); Sanjaya et al. (2026) | Bobot 8-bit mengurangi ukuran sekitar 4× pada jalur PTQ sederhana. Sanjaya (sudah di Bab 2) menunjukkan INT4 bisa tersimpan sebagai INT8. | - |
| **H** Kebocoran data | Elangovan et al. (2021) | Tumpang tindih train-test mengembangkan hasil dan mengukur memorisasi, bukan generalisasi. | Studi pada NER dan relation extraction. |
| H Statistik dataset | Maharani et al. (2023) | 2.274 entri IndoFinSent, 2.264 PhraseBank, dan proporsi kelas sesuai Bab 2. | - |

## Butir yang tidak punya rujukan ilmiah

- **Token padding di statistik kalibrasi (C).** Tidak ada makalah yang saya temukan. Cara menanganinya cukup Anda dokumentasikan di Bab 3.4 setelah memeriksa kode.
- **`MAX_SEQ_LEN=128` (E).** Justifikasinya dari distribusi panjang token hasil EDA Anda sendiri.
- **Tokenizer (H).** Tidak perlu rujukan baru. Rujuk Wilie et al. (2020) untuk `indobert-base-p1`.
- **KL dalam float64 (F).** Ini keputusan implementasi. Cukup tulis di Bab 3.
- **Perkalian matriks attention di BOPs (G).** Tidak ada sumber yang saya temukan. Putuskan sendiri dan nyatakan di Bab 3.5.3.
- **Cara binning margin (F).** Tidak ada rujukan yang mengatur ini untuk kasus Anda. Tetapkan sendiri dan laporkan.

## Temuan dari pencarian yang memengaruhi pipeline

1. **Dataset IndoFinSent di Hugging Face.** README-nya hanya berisi metadata lisensi, tidak mendokumentasikan label. Dari daftar dataset penulisnya, entri IndoFinSent berjumlah 2.274 baris, dan hasil konversi parquet menampilkan satu partisi `train`. Ini mengindikasikan split resmi (1.591/227/456) **tidak ikut disediakan** dan harus dibentuk sendiri. Saya belum membuka isi datasetnya. Jalankan di notebook: cetak `dataset.keys()`, nama fitur label, dan jumlah baris per split. Ada pula dataset terpisah `intanm/indonesian-financial-sentiment-analysis` (1,97 ribu baris, train dan test), jadi pastikan `hf_path` mengarah ke dataset yang dimaksud Bab 2.
2. **Jumlah resample bootstrap yang saya sebut sebelumnya ("1.000–10.000") tidak punya sumber.** Berg-Kirkpatrick et al. (2012) memakai b = 10⁶ untuk p-value. Pilih jumlah dan justifikasi sendiri, atau ikuti rujukan itu.
3. **McNemar menguji perbedaan *kebenaran* prediksi** antara dua model (diskordan benar-salah), bukan flip rate. Flip rate tetap metrik deskriptif. Rancang uji McNemar pada selisih akurasi, dan laporkan flip rate secara terpisah.
4. **Estimator `current_minmax` pada Bondarenko et al.** Jika tidak dibekukan setelah kalibrasi, rentang aktivasi dihitung ulang per input (dinamis), dan itu bertentangan dengan janji Bab 2.5. Ini tetap harus Anda cek di kode, bukan di makalah.

## Daftar rujukan (siap salin)

Semua entri sudah terverifikasi metadatanya, tetapi nomor volume dan halaman yang tidak terlihat di sumber saya tinggalkan kosong. Lengkapi dari halaman penerbit.

- Baskin, C., Liss, N., Schwartz, E., Zheltonozhskii, E., Giryes, R., Bronstein, A. M., & Mendelson, A. (2021). UNIQ: Uniform noise injection for non-uniform quantization of neural networks. *ACM Transactions on Computer Systems*. https://doi.org/10.1145/3444943
- Berg-Kirkpatrick, T., Burkett, D., & Klein, D. (2012). An empirical investigation of statistical significance in NLP. *EMNLP-CoNLL*, 995–1005. https://aclanthology.org/D12-1091/
- Bondarenko, Y., Nagel, M., & Blankevoort, T. (2021). Understanding and overcoming the challenges of efficient transformer quantization. *EMNLP 2021*. https://doi.org/10.18653/v1/2021.emnlp-main.627
- Dietterich, T. G. (1998). Approximate statistical tests for comparing supervised classification learning algorithms. *Neural Computation, 10*(7), 1895–1924. https://doi.org/10.1162/089976698300017197
- Dror, R., Baumer, G., Shlomov, S., & Reichart, R. (2018). The hitchhiker's guide to testing statistical significance in natural language processing. *ACL 2018*. https://aclanthology.org/P18-1128/
- Efron, B., & Tibshirani, R. J. (1993). *An introduction to the bootstrap*. Chapman & Hall.
- Elangovan, A., He, J., & Verspoor, K. (2021). Memorization vs. generalization: Quantifying data leakage in NLP performance evaluation. *EACL 2021*. https://doi.org/10.18653/v1/2021.eacl-main.113
- Guo, C., Pleiss, G., Sun, Y., & Weinberger, K. Q. (2017). On calibration of modern neural networks. *ICML*, PMLR 70, 1321–1330. https://proceedings.mlr.press/v70/guo17a.html
- Holm, S. (1979). A simple sequentially rejective multiple test procedure. *Scandinavian Journal of Statistics, 6*(2), 65–70.
- Hooker, S., Courville, A., Clark, G., Dauphin, Y., & Frome, A. (2019). What do compressed deep neural networks forget? *arXiv:1911.05248*.
- Jacob, B., Kligys, S., Chen, B., Zhu, M., Tang, M., Howard, A., Adam, H., & Kalenichenko, D. (2018). Quantization and training of neural networks for efficient integer-arithmetic-only inference. *CVPR*, 2704–2713. https://doi.org/10.1109/CVPR.2018.00286
- Krishnamoorthi, R. (2018). Quantizing deep convolutional networks for efficient inference: A whitepaper. *arXiv:1806.08342*.
- Mosbach, M., Andriushchenko, M., & Klakow, D. (2021). On the stability of fine-tuning BERT: Misconceptions, explanations, and strong baselines. *ICLR 2021*. arXiv:2006.04884.
- Nagel, M., Fournarakis, M., Amjad, R. A., Bondarenko, Y., van Baalen, M., & Blankevoort, T. (2021). A white paper on neural network quantization. *arXiv:2106.08295*.
- Reddi, V. J., et al. (2020). MLPerf inference benchmark. *ISCA 2020*. https://doi.org/10.1109/ISCA45697.2020.00045
- van Baalen, M., Louizos, C., Nagel, M., Amjad, R. A., Wang, Y., Blankevoort, T., & Welling, M. (2020). Bayesian Bits: Unifying quantization and pruning. *NeurIPS 33*.
- Shihab, I. F., Akter, S., & Sharma, A. (preprint). Coverage-based calibration for post-training quantization via weighted set cover over outlier channels. *arXiv:2604.24008*.

Dari semua ini, tiga hal paling berdampak: label mapping dan split IndoFinSent (butir 1), definisi statis/dinamis aktivasi (butir 4), dan pembetulan uji McNemar (butir 3). Ketiganya perlu diputuskan sebelum eksperimen penuh.

Saya cek dulu apakah Dror et al. (2018) memang membahas uji Wilcoxon, supaya justifikasinya tidak saya tebak.Dari komponen pengujian dan metrik di pipeline Anda tanpa McNemar, **delapan sudah punya justifikasi, tiga sebagian, dan tiga belum**. Saya baca teks lengkap Dror et al. (2018) untuk memastikan bagian uji statistik, bukan hanya abstraknya.

| Komponen | Status | Rujukan | Yang masih kurang |
|---|---|---|---|
| Macro F1 dan akurasi | Sudah | Hinojosa Lee et al. (2024); Sokolova & Lapalme (2009), keduanya sudah di Bab 2 | - |
| Precision/recall/F1 per kelas | Sudah | Bab 2.6.1 dan 2.7.1; Hooker et al. (2019) menunjukkan akurasi agregat menyembunyikan dampak kompresi antar kelas | - |
| Flip rate (deskriptif) | Sudah | Hooker et al. (2019), ketidaksepakatan prediksi model terkompresi vs tidak; Sanjaya et al. (2026), metrik agreement | Tanpa uji inferensial (lihat catatan 3) |
| Bootstrap CI untuk MAE dan Macro F1 | Sudah | Berg-Kirkpatrick et al. (2012): bootstrap berpasangan bisa dipakai untuk metrik apa pun; Dror et al. (2018) §3.2.2; Efron & Tibshirani | Jumlah resample belum punya acuan (lihat catatan 1) |
| Wilcoxon berpasangan pada drift per sampel antar kondisi | Sudah | Dror et al. (2018) §3.2.2: untuk sampel berpasangan bernilai nyata, H0 selisih simetris di sekitar nol, lebih kuat daripada uji tanda | Asumsi independensi (catatan 2) |
| Perbedaan Macro F1 antar kondisi | Sudah | Bootstrap berpasangan pada selisih Macro F1 (Berg-Kirkpatrick et al., 2012) menggantikan McNemar | - |
| Koreksi perbandingan berganda | Sudah | Holm (1979): lebih kuat daripada Bonferroni biasa dan valid pada dependensi sembarang | Putuskan Holm atau Bonferroni |
| Rata-rata dan simpangan baku antar seed | Sudah | Mosbach et al. (2021): hasil fine-tuning BERT bervariasi antar seed | - |
| Spearman sebagai metrik stabilitas | Sebagian | Sanjaya et al. (2026) memakai korelasi Spearman | Tidak ada rujukan untuk definisinya |
| Rumus S = P(+) − P(−) | Sebagian | Bab 2.2 berargumen terhadap NDI; Guo et al. (2017) menunjukkan softmax tidak terkalibrasi | Tidak ada rujukan yang memvalidasi S sebagai indikator |
| Analisis per kelas prediksi FP32 | Sebagian | Hooker et al. (2019) untuk pendekatan per kelas | Dasar memakai kelas prediksi FP32, bukan label asli, belum ada |
| MAE dan Pearson | Belum | Rumus di Bab 2.7.2 tanpa sitasi | Perlu rujukan buku teks atau makalah |
| KL divergence | Belum | Rumus di 2.7.2 tanpa sitasi | Sama |
| Hubungan drift dengan margin keputusan | Belum | Hooker dan Guo hanya mendukung secara tidak langsung | Tidak ada makalah yang saya temukan tentang margin dan drift kuantisasi |

## Catatan

1. **Jumlah resample bootstrap.** Berg-Kirkpatrick et al. (2012) memakai 10⁶ untuk p-value, dan tidak ada acuan untuk batas bawah. Tetapkan sendiri dan tulis alasannya di Bab 3.5.4.
2. **Dua keterbatasan dari Dror et al. (2018) yang perlu Anda sebut.** Pertama, semua uji ini mengasumsikan sampel independen, padahal IndoFinSent berisi judul berita yang merujuk satu institusi (sudah Anda catat di Bab 2.6.1). Dror menyebut asumsi ini jarang terpenuhi di NLP. Kedua, uji bootstrap "kurang efektif untuk test set kecil", dan pemakaian bootstrap pada test set kecil mereka hitung sebagai pemakaian yang keliru. Test set Anda berukuran 456 dan 453, dan Dror tidak memberi ambang pasti. Cantumkan sebagai keterbatasan, dan jangan menyebut hasil bootstrap sebagai kesimpulan pasti.
3. **Dengan McNemar dihapus, flip rate tidak punya uji inferensial.** Itu tidak bermasalah, karena flip rate adalah ukuran deskriptif. Jika ingin interval kepercayaan, bootstrap bisa dipakai pada flip rate (menurut Berg-Kirkpatrick, metrik apa pun bisa dipakai).
4. **Hapus Dietterich (1998) dari daftar rujukan** yang saya berikan sebelumnya, karena hanya relevan untuk McNemar.
5. **Tahun Efron & Tibshirani.** Dror et al. mencantumkan 1994 (CRC Press), sedangkan makalah lain mencantumkan 1993. Pakai tahun edisi yang benar-benar Anda akses.
6. **Penulisan hasil.** Dror et al. mengingatkan bahwa kata "signifikan" sebaiknya dipakai hanya dalam arti statistik. Ini juga sejalan dengan panduan pembimbing agar tidak memakai kata yang tidak terukur.

## Sinkronisasi Bab 2

Semua uji di atas dijanjikan "dijelaskan pada Bab III" (Bab 2.7.2), tetapi dasar teorinya belum ada di Bab 2. Tambahkan satu subbab 2.7.4 (Pengujian Statistik) dengan dua paragraf: bootstrap berpasangan (Berg-Kirkpatrick et al., 2012; Dror et al., 2018), Wilcoxon (Dror et al., 2018), koreksi Holm (Holm, 1979), dan variasi antar seed (Mosbach et al., 2021). Setelah itu Bab 3.5.4 tinggal merujuk ke sana.

Tiga komponen yang belum punya rujukan (MAE/Pearson, KL, dan margin vs drift) bisa saya cari lebih lanjut jika Anda mau, dengan catatan bahwa untuk margin vs drift kemungkinan memang tidak ada makalah yang langsung mendukung.
