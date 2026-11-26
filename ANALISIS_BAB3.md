# Analisis Bab III — Pembanding Proposal Tafftadia dan Panduan AC-RIG UM

Tanggal: 24 Oktober 2026
Acuan yang dibaca: `Proposal Skripsi - Weight-Only Post-Training Quantization ResNet (Tafftadia).pdf` (Bab III, hlm. 29–39) dan `judge/Panduan Penulisan Laporan Skripsi AC-RIG UM 2021.pdf` (bagian BAB 3, hlm. 14–16).
Berkas sasaran: `src/chapters/chapter-3.tex` (masih placeholder, 66 baris).

---

## 1. Peta Bab III Tafftadia

| Subbab | Isi | Mutu |
|---|---|---|
| 3.1.1 Jenis Penelitian | Penelitian eksperimental kuantitatif; alasan memilih eksperimen (ada perlakuan, kondisi dikendalikan, diukur kuantitatif) | Kuat |
| 3.1.2 Alur Penelitian | Tujuh tahap bernomor + Gambar 3.1 | Kuat |
| 3.2.1 Gambaran Umum | Alur desain + Gambar 3.2, dua skenario sejak tahap baseline | Kuat |
| 3.2.2 Lingkungan Eksperimen | Tabel 3.1 (GPU+CUDA, PyTorch/TorchVision, Python) + alasan mengapa lingkungan harus dilaporkan | Kuat, tapi tipis |
| 3.2.3 Data dan EDA | Asal data, jalur akses, lisensi, ukuran, format, instrumen, lima pemeriksaan EDA | Sangat kuat |
| 3.2.4 Preprocessing | Dipisah per dataset (resize, augmentasi, normalisasi mean/std ImageNet) | Kuat |
| 3.2.5 Model dan Arsitektur | ResNet-50 pralatih + Tabel 3.2 (strategi baseline per skenario) + hyperparameter fine-tuning | Kuat |
| 3.2.6 Implementasi Kuantisasi | Langkah operasional: deep copy → traversal lapisan → skala per-channel → clamp [−8, 7] → bit-packing → ganti lapisan; lalu jalur inferensi (unpack + dequant) | Sangat kuat |
| 3.2.7 Skenario Pengujian | Tabel 3.3 (skenario, dataset, model, jumlah kelas/data, metrik) + protokol tiap metrik | Kuat |
| 3.3.1 Analisis Deskriptif | Selisih performa, persentase perubahan efisiensi, analisis trade-off, perbandingan lintas dataset | Cukup |
| 3.3.2 Uji Signifikansi | Tabel 3.4 (pemilihan uji per metrik) + Tabel 3.5 (kontingensi 2×2) + rumus χ² + H0/H1 eksplisit | Sangat kuat |
| 3.4 Jadwal Penelitian | Tabel 3.6 | Cukup |

---

## 2. Pemetaan terhadap 11 poin panduan AC-RIG

Panduan Bab 3 menetapkan susunan umum: (1) diagram alir, (2) tipe penelitian, (3) lokasi penelitian, (4) peralatan pendukung, (5) studi literatur, (6) subjek penelitian, (7) pengumpulan data, (8) metode praproses, (9) implementasi metode, (10) pengujian dan analisis, (11) kesimpulan dan saran.

| Poin panduan | Tafftadia | Catatan untuk skripsi Anda |
|---|---|---|
| 1 Diagram alir | 3.1.2 + 3.2.1 | Tiru, satu gambar alur penelitian dan satu gambar desain eksperimen |
| 2 Tipe penelitian | 3.1.1 | Tiru |
| 3 Lokasi penelitian | **Tidak ada** | Tambahkan; untuk penelitian ini berupa laboratorium komputasi pribadi atau lab kampus, sebutkan institusinya |
| 4 Peralatan pendukung | 3.2.2 | Tiru, tetapi lengkapi CPU, RAM, GPU, VRAM, versi pustaka |
| 5 Studi literatur | **Tidak ada** | Tambahkan satu paragraf: teori yang dipakai menyusun metode sudah dibahas di Bab II, sebutkan subbabnya |
| 6 Subjek penelitian | Tidak relevan | Tidak perlu, karena tidak ada partisipan manusia |
| 7 Pengumpulan data | 3.2.3 | Tiru, termasuk lisensi TBD dan versi sumber 1.0.0 |
| 8 Metode praproses | 3.2.4 | Tiru, tetapi isinya tokenisasi, bukan augmentasi citra |
| 9 Implementasi metode | 3.2.6 | Tiru pola langkahnya |
| 10 Pengujian dan analisis | 3.2.7 + 3.3 | Tiru, sesuaikan metrik dan uji |
| 11 Kesimpulan dan saran | **Tidak ada** | Tambahkan satu paragraf penutup: hasil dan pembahasan ada di Bab IV, kesimpulan di Bab V |

Tiga poin yang Tafftadia lewatkan (3, 5, 11) adalah tiga poin yang paling mudah diperiksa penguji karena sifatnya administratif.

---

## 3. Tujuh hal yang layak ditiru

1. **Alur penelitian bernomor.** Tujuh tahap eksplisit, bukan hanya gambar. Pembaca bisa mengikuti tanpa membuka gambar.
2. **Lingkungan eksperimen disertai alasan.** Tafftadia menulis bahwa pengukuran efisiensi bersifat spesifik perangkat keras, sehingga hasil yang sama bisa berbeda pada GPU atau versi framework lain. Ini kalimat yang membentengi Bab IV dari pertanyaan "kenapa latensi saya beda".
3. **Data ditulis lengkap sampai tingkat instrumen.** Asal, jalur unduh, lisensi, ukuran berkas, format, dan pernyataan bahwa instrumen pengumpulan data adalah dataset itu sendiri.
4. **EDA sebagai daftar periksa.** Lima pemeriksaan disebut satu per satu, bukan "telah dilakukan EDA".
5. **Praproses dipisah per kasus** dengan alasan yang melekat pada karakteristik data.
6. **Implementasi kuantisasi ditulis sebagai urutan operasi.** Deep copy, traversal lapisan, hitung skala, clamp, packing, ganti lapisan. Pola inilah yang membuat Bab III bisa direproduksi.
7. **Tabel pemilihan uji signifikansi per metrik**, lengkap dengan alasan "mengandung noise pengukuran atau tidak", tabel kontingensi, dan H0/H1.

---

## 4. Enam hal yang jangan ditiru

| Hal di Tafftadia | Mengapa jangan ditiru | Yang dipakai skripsi Anda |
|---|---|---|
| Baseline **FP16** | Mencampur dua perubahan sekaligus: presisi baseline dan kuantisasi. Pembaca tidak bisa memisahkan berapa penurunan akibat masing-masing | Baseline **FP32**, sesuai keputusan yang sudah dipakai di Bab II |
| Hanya granularitas **per-channel** | Tidak ada pembanding, sehingga klaim "per-channel lebih baik" tidak bisa diuji | **Tiga konfigurasi**: FP32, per-tensor, per-channel |
| **Bit-packing** diterapkan | Ukuran 12,5% hanya tercapai bila dipadatkan, sementara inferensi tetap unpack dulu sehingga tidak ada percepatan native | **Tanpa bit-packing**, sehingga rasio yang diklaim 25% (semua parameter) atau 48% (hanya lapisan linear) |
| Latensi diuji **paired t-test / Wilcoxon** | Yang diuji adalah latensi hasil kuantisasi tersimulasi, bukan representasi INT4 native, sehingga variasi antar iterasi bukan berasal dari perlakuan | Latensi **deskriptif saja**, tidak diuji |
| Dua skenario dataset (CIFAR-10 dan ImageNet) | Skripsi Anda hanya memakai satu dataset, jadi analisis "konsistensi lintas skala data" tidak berlaku | Penggantinya: perbandingan **antar granularitas**, bukan antar dataset |
| Bootstrap **B = 1.000** tanpa koreksi perbandingan berganda | Dengan tiga konfigurasi dan dua metrik, peluang kesalahan tipe I membengkak | Bootstrap **10.000** + koreksi **Holm** per metrik, seperti sudah ditulis di Bab II |

Satu hal yang Tafftadia kerjakan dengan jujur dan perlu Anda tiru nada bicaranya: mereka menyatakan terbuka bahwa percepatan komputasi murni dari INT4 tidak sepenuhnya terealisasi karena bobot didekuantisasi lebih dulu.

---

## 5. Usulan struktur Bab III

Target ±4.000–4.500 kata, 5 tabel, 3 gambar.

| Subbab | Isi | Kata |
|---|---|---|
| 3.1 Jenis dan Alur Penelitian | | 500 |
| 3.1.1 Jenis Penelitian | Eksperimental kuantitatif; perlakuan berupa kuantisasi, kondisi uji dikendalikan, hasil diukur kuantitatif | 200 |
| 3.1.2 Alur Penelitian | Tujuh tahap bernomor + Gambar 3.1 | 300 |
| 3.2 Desain Eksperimen | | 2.800 |
| 3.2.1 Gambaran Umum Desain | Tiga konfigurasi, satu dataset, alur Gambar 3.2 | 300 |
| 3.2.2 Lingkungan Eksperimen | Tabel 3.1 + alasan mengapa lingkungan harus dilaporkan | 250 |
| 3.2.3 Data Penelitian dan EDA | Rujuk Tabel 2.1, tambahkan keputusan pembagian validasi dan jumlah baris efektif | 500 |
| 3.2.4 Praproses Data | Tokenisasi, panjang maksimum, stride, fitur masukan, penyaringan baris | 500 |
| 3.2.5 Model dan Arsitektur | indobert-base-p2 + kepala QA, hyperparameter, Tabel 3.2 | 400 |
| 3.2.6 Implementasi Kuantisasi | Langkah operasional + Tabel 3.3 daftar modul yang dikuantisasi | 550 |
| 3.2.7 Skenario Pengujian | Tabel 3.4 (konfigurasi × metrik) + protokol tiap metrik | 300 |
| 3.3 Teknik Analisis Hasil Penelitian | | 700 |
| 3.3.1 Analisis Deskriptif | Selisih EM/F1, rasio ukuran, latensi median dan p95 | 250 |
| 3.3.2 Uji Signifikansi | Tabel 3.5 (pemilihan uji per metrik) + McNemar + bootstrap + Holm + H0/H1 | 450 |
| 3.4 Jadwal Penelitian | Tabel jadwal | 150 |
| Penutup bab | Satu paragraf: hasil di Bab IV, kesimpulan di Bab V | 100 |

---

## 6. Isi minimum tiap subbab dan kesiapan bahan

| Subbab | Bahan yang sudah ada | Bahan yang belum ada |
|---|---|---|
| 3.1.1 | Rumusan masalah Bab I, keputusan desain di Bab II | — |
| 3.1.2 | Alur di kerangka berpikir (Gambar 2.7) | Gambar alur penelitian tersendiri |
| 3.2.2 | — | **Spesifikasi perangkat keras dan versi pustaka** |
| 3.2.3 | Tabel 2.1, EDA di `eda_output_jsonl/`, lisensi TBD | **Keputusan pembagian validasi** |
| 3.2.4 | Panjang konteks (median 98 kata, p95 192, maks 636) | **max_length dan stride**, daftar fitur tokenisasi |
| 3.2.5 | Konfigurasi model, hyperparameter Suhendra dkk. (epoch 4, LR 2e-5, batch 16/32, AdamW, dropout 0,1) | Konfirmasi jumlah epoch dan seed |
| 3.2.6 | Prosedur kuantisasi di Bab II (Persamaan 2.6–2.8, sumbu channel) | **Pilihan pustaka implementasi**, **keputusan apakah embedding ikut dikuantisasi** |
| 3.2.7 | EM, F1, ukuran model, latensi (Bab II 2.6) | — |
| 3.3.1 | — | — |
| 3.3.2 | McNemar, bootstrap 10.000, Holm m=3 (Bab II 2.6.3) | — |

---

## 7. Tujuh keputusan yang harus diambil sebelum menulis

| # | Keputusan | Usulan | Alasan |
|---|---|---|---|
| 1 | Apakah **embedding** ikut dikuantisasi | ✅ **Diputuskan 24 Okt 2026: A** — seluruh parameter bobot dikuantisasi, termasuk embedding | Rasio 25% yang ditulis di Bab II 2.5.4 menjadi klaim resmi Bab IV; angka 48% tetap disebut sebagai pembanding bila embedding dilewatkan. Ablasi linear-saja tidak dijadikan konfigurasi keempat agar koreksi Holm tetap m = 3 |
| 2 | Pustaka implementasi | ✅ **Diputuskan 24 Okt 2026: a** — PyTorch + `transformers`, kuantisasi ditulis manual | Perbandingan granularitas harus bersih: hanya cara menghitung skala yang boleh berbeda. torchao memaksa per-group, GPTQ/AWQ mencampur algoritma dengan granularitas, torch.ao tidak mendukung 4-bit |
| 3 | Pembagian validasi | ✅ **Diputuskan: 10% artikel (44 judul), seed 42** — sudah dijalankan pada praproses | Pemisahan per artikel mencegah konteks yang sama muncul di latih dan validasi; irisan judul latih–uji = 0, jadi kondisinya meniru data uji |
| 4 | `max_length` dan `stride` | ✅ **Diputuskan: 384 dan 128**, `max_answer_length` 30 | Statistik token IndoBERT: konteks p99 = 349 token, maks 874; hanya 0,70% konteks terpotong dan 100% jawaban berada di dalam minimal satu jendela |
| 5 | Seed dan pengulangan | ✅ **Diputuskan: 3 seed (42, 1337, 2024)**, rata-rata ± simpangan baku, uji signifikansi per seed | Mengikuti praktik dua paper terdekat: Abdurrahman dkk. (2023) 3 seed, Sanjaya dkk. (2026) 3 seed; Bondarenko dkk. (2021) median 5 run |
| 6 | Jumlah epoch dan pemilihan checkpoint | ✅ **Diputuskan: maksimum 6 epoch, early stopping patience 2, min_delta 0,001 pada F1 validasi, bobot terbaik dipulihkan** | Ruang 2–4 epoch dari Suhendra dkk. (2026) tetap tercakup, tetapi early stopping punya ruang untuk bekerja. Praktik pemilihan model di dev/validasi mengikuti Devlin dkk. (2019) dan Wilie dkk. (2020) |
| 7 | Lokasi penelitian dan lingkungan | ✅ **Diputuskan: Kaggle Notebooks, satu GPU Tesla T4 16 GB** (opsi T4×2 tersedia, hanya satu dipakai) | Kuota 30 jam per minggu cukup untuk 3 seed, sesi 9 jam lebih aman daripada Colab gratis, dataset dapat diunggah permanen, dan T4 paling umum dipakai di literatur kuantisasi |

---

## 8. Estimasi waktu

| Pekerjaan | Estimasi |
|---|---|
| Menulis 3.1 + 3.2 (tanpa gambar) | 4 jam |
| Membuat Gambar 3.1 dan 3.2 (TikZ) | 2 jam |
| Menulis 3.3 + 3.4 | 2 jam |
| Menyusun Tabel 3.1–3.5 | 1,5 jam |
| Pemeriksaan rujukan silang dan compile | 0,5 jam |
| **Total** | **±10 jam** |

---

## 9. Catatan penutup

Bab III Tafftadia adalah contoh yang baik untuk **cara menyusun**, bukan untuk **pilihan desainnya**. Yang perlu Anda tiru adalah disiplin mendaftar: setiap langkah punya nomor, setiap tabel punya alasan keberadaan, setiap uji punya H0 dan H1. Yang perlu Anda ubah adalah substansinya, karena pertanyaan penelitian Anda berbeda: mereka membandingkan presisi (FP16 vs INT4) pada dua skala dataset, sedangkan Anda membandingkan granularitas (per-tensor vs per-channel) pada satu tugas dan satu dataset.

---

## 10. Catatan keputusan

**Keputusan 1 — cakupan parameter (diputuskan 24 Oktober 2026): A.**
Seluruh parameter bobot dikuantisasi, termasuk matriks *embedding* kata, *embedding* posisi, dan *embedding* tipe token. Rasio ukuran yang diklaim pada Bab IV adalah 25% dari FP32 (124,3 MB dari 497,3 MB). Angka 48% tetap dilaporkan sebagai pembanding untuk kasus embedding dilewatkan, tetapi tidak dijadikan konfigurasi uji keempat, sehingga jumlah perbandingan berpasangan tetap tiga dan koreksi Holm tetap m = 3.

Konsekuensi untuk Bab III: Tabel daftar modul pada 3.2.6 harus memuat `nn.Linear` (proyeksi atensi, feed-forward, pooler, kepala QA) **dan** `nn.Embedding` (kata, posisi, tipe token). Sumbu per-*channel* untuk seluruh modul adalah baris keluaran, sesuai Subbab 2.5.6.

**Keputusan 2 — pustaka implementasi (diputuskan 24 Oktober 2026): a.**
Kuantisasi ditulis manual dengan PyTorch dan `transformers`. Bobot diganti tensor bilangan bulat dengan skala per-tensor atau per-channel, lalu didekuantisasi di dalam `forward`. Tidak ada kernel khusus, karena komputasi tetap berjalan dalam *floating point* setelah dekuantisasi. Konsekuensinya, tidak ada percepatan nyata dan latensi tetap dilaporkan sebagai metrik deskriptif.

Konsekuensi untuk Bab III: Subbab 3.2.6 memuat tiga fungsi inti (hitung skala, kuantisasi, dekuantisasi) dan daftar modul sasaran (`nn.Linear` dan `nn.Embedding`). Tabel 3.1 mencantumkan versi PyTorch, `transformers`, dan `datasets`.

---

## 11. Data final setelah praproses (sumber: `D:\KEJARCEPATTTT\Dataset_SQuAD_ID\laporandata.md`, diverifikasi ulang)

Angka di bawah sudah saya periksa langsung ke berkas `data_clean/*.jsonl`, bukan hanya dibaca dari laporan.

| Split | Baris | Artikel | Konteks | Jawaban |
|---|---:|---:|---:|---:|
| train | 64.054 | 395 | 17.136 | 64.054 |
| validation | 5.997 | 44 | 1.574 | 5.997 |
| test | 5.244 | 35 | 1.200 | 16.428 |

Rantai penyaringan yang harus dipakai konsisten di Bab II, Bab III, dan Bab IV:

| Tahap | Train | Dev |
|---|---:|---:|
| Baris masuk | 130.319 | 11.873 |
| Dibuang `is_impossible` | −43.498 | −5.945 |
| Baris terjawab | 86.821 | 5.928 |
| Gagal diperbaiki | −16.705 | −676 |
| Duplikat (konteks, pertanyaan) | −65 | −8 |
| **Dipakai** | **70.051** | **5.244** |

Dari 70.051 baris itu, 5.997 (10%) menjadi validasi, sehingga berkas latih berisi 64.054 baris. Rincian perbaikan pada data latih: 61.359 sudah valid sejak awal, 3.168 diperbaiki dengan normalisasi, 5.589 dengan pencocokan *fuzzy* (ambang 85), lalu 65 duplikat dibuang.

**Konsekuensi yang sudah dikerjakan:** Tabel 2.1 pada Bab II diperbarui. Barisnya sekarang memisahkan tiga kelompok, yaitu ukuran data, kondisi mentah (baris terjawab 86.821 dan 5.928, dengan 25.462 dan 1.071 bertanda tidak valid), dan hasil penyaringan (gagal 16.705 dan 676, duplikat 65 dan 8, dipakai 70.051 dan 5.244). Aritmetika kedua kolom kini menutup.

**Konsekuensi untuk Bab IV:** EM dan F1 dihitung pada 5.244 baris uji dengan 16.428 jawaban acuan, memakai jawaban terbaik per pertanyaan (standar SQuAD). Klaim ukuran model tetap 25% dari FP32 karena keputusan 1 memakai cakupan seluruh parameter bobot.

**Keputusan 5 — seed dan pengulangan (diputuskan): 3 seed.**

Dasar empiris dari korpus (14 dari 65 paper menyebut seed):

| Paper | Konteks | Praktik |
|---|---|---|
| Abdurrahman dkk. (2023) | IndoBERT + PTQ/QAT, 7 tugas IndoNLU | "average F1 metric from three different seed values" |
| Sanjaya dkk. (2026) | Kuantisasi transformer Indonesia, sentimen | "average over three seeds"; LR 2e-5, batch 16, panjang 128, 3 epoch |
| Bondarenko dkk. (2021) | Kuantisasi Transformer, GLUE | "median over 5 runs with different random seeds" |
| Sherry (2025) | Ternary quantization | "averaged over three independent runs" |
| Stabilized activation scale (2025) | PTQ | "5 runs using randomly different seeds" |
| Flat Minima INT4 (2026) | INT4 collapse | "N = 3 independent random seeds" |
| Understanding INT4 (2024) | INT4 latency | "a fixed random seed 42" |
| Calibration Data (2024) | Peringatan | "using a seed … does not guarantee consistency across software or platform versions" |

Rancangan: fine-tuning tiga kali (seed 42, 1337, 2024), tiap run memilih checkpoint terbaik menurut F1 validasi. Setiap checkpoint dikuantisasi dua kali (per-tensor dan per-channel). Kuantisasi deterministik, sehingga tidak diulang per seed.

Waktu: beban utama hanya fine-tuning, sekitar 1,5–2 jam per run pada GPU kelas T4 dan 0,8–1,2 jam pada RTX 3060, sehingga tiga seed menambah 3–4 jam pada RTX 3060. Kuantisasi, evaluasi uji, dan uji signifikansi tidak berlipat secara berarti.

Metrik yang terpengaruh seed hanya EM dan F1 (serta nilai p), sedangkan ukuran model, jumlah parameter, dan daftar modul tidak berubah. Latensi tidak boleh diulang per seed karena variasi latensi adalah noise alat ukur, bukan efek perlakuan.

Uji signifikansi dijalankan **per seed**, bukan pada prediksi gabungan, karena menggabungkan prediksi tiga seed melanggar asumsi kebebasan sampel pada McNemar dan membuat nilai p terlalu kecil.

**Keputusan 6 — epoch dan early stopping (diputuskan).**
Batas maksimum 6 epoch, early stopping dengan patience 2 dan min_delta 0,001 pada F1 validasi, lalu bobot terbaik dipulihkan sebelum kuantisasi. Alasan batas 6 dan bukan 4: dengan batas 4, early stopping hampir tidak pernah aktif sehingga tidak berfungsi. Jumlah epoch tempat tiap seed berhenti wajib dilaporkan, karena bila ketiganya berhenti di 4 atau 5, itu mendukung rentang 2–4 epoch dari Suhendra dkk. (2026).

Perbandingan praktik empat dokumen:

| Dokumen | Epoch | Justifikasi | Early stopping | Pemilihan model |
|---|---|---|---|---|
| Suhendra dkk. (2026) | 4 | Ada, menyebut rentang 2–4 epoch | Tidak disebut | Evaluasi pada validasi |
| Devlin dkk. (2019) | 3 (SQuAD v1.1), 2 (v2.0) | Tidak, hanya dilaporkan | Tidak | Model terbaik di dev set |
| Wilie dkk. (2020) IndoNLU | grid 2/4/6 | Tidak | **Ya**, pada skor validasi | Model terbaik |
| Tafftadia (2025) | 5 | **Tidak ada** | Tidak | Tidak dijelaskan |
| Anissa (skripsi BERT) | 3 | Ada, satu kalimat, untuk menghindari overfitting | Tidak | Validasi tiap epoch, tanpa aturan pemilihan |
| Qinthara (skripsi klasik) | tidak berlaku | GridSearchCV + validasi silang 10-fold | tidak berlaku | Terbaik menurut CV |

**Keputusan 7 — lingkungan eksperimen (diputuskan): Kaggle Notebooks, satu Tesla T4 16 GB.**
Spesifikasi yang masuk Tabel 3.1: platform Kaggle Notebooks, GPU Tesla T4 16 GB VRAM (satu GPU dari dua yang tersedia), 4 vCPU, RAM 29 GB, penyimpanan 20 GB, batas sesi 9 jam dan kuota 30 jam per minggu, Python dan PyTorch sesuai image Kaggle saat eksekusi, transformers dan datasets dengan versi yang dicatat pada lampiran.

Catatan teknis: bila kelak memakai A100, TF32 harus dimatikan (`torch.backends.cuda.matmul.allow_tf32 = False`) agar hasil sebanding dengan T4. Seluruh run harus berada pada satu jenis GPU, karena lingkungan pengukuran adalah bagian dari perlakuan.
