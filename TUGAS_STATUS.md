# Daftar Tugas & Status — Skripsi WO-PTQ untuk Extractive QA

Diperbarui 25 Oktober 2026. Semua path relatif terhadap `D:\KEJARCEPATTTT\`.
Legenda: **✅ selesai** · **🟡 sebagian** · **⬜ belum**

---

## A. Korpus & bukti (folder `quantization/paper/sudah dipilih/`)

| ID | Tugas | Status | Lokasi hasil |
|---|---|---|---|
| A1 | Pilah 65 PDF → 32 masuk konteks | ✅ | `sudah dipilih/bahan/` (32 PDF) + `Pemilahan_Dokumen.md` |
| A2 | Tabel review 32 dokumen (tujuan/metode/hasil + kutipan + lokasi) | ✅ | `sudah dipilih/Tabel_Review_Bahan.md` (99 kutipan, semua terverifikasi) |
| A3 | Deteksi duplikat & file rusak | ✅ | `Pemilahan_Dokumen.md` §Temuan (axioms = Forecasting; 3× Understanding; `abstrak_telyu.pdf` 0 byte) |
| A4 | Salinan beku catatan korpus | ✅ | `if-itb-latex/bahan_justifikasi/sumber/` |

## B. Bukti sitasi

| ID | Tugas | Status | Lokasi hasil / sisa pekerjaan |
|---|---|---|---|
| B1 | Peta 62 klaim Bab I–II → kutipan verbatim + lokasi | ✅ | `if-itb-latex/bahan_justifikasi/justifikasi_bab1.md`, `justifikasi_bab2.md` |
| B2 | Verifikasi angka Tabel Penelitian Terdahulu (baris 2, 4, 5) | ✅ | `bahan_justifikasi/verifikasi_tabel_terdahulu.md` |
| B8 | Verifikasi syarat sitasi (≥5) dan konteks (metode/dataset/metrik) untuk 8 baris penelitian terdahulu | ✅ | `bahan_justifikasi/verifikasi_penelitian_terdahulu.md`; angka sitasi: Crossref + OpenAlex; kalimat batas bawah sitasi ditambahkan di 2.7.1 |
| B3 | 15 klaim uji & metrik diverifikasi | ✅ | `bahan_justifikasi/verifikasi_sumber_uji.md`: tabel klaim → halaman → kutipan verbatim → putusan |
| B4 | Unduh PDF prioritas | ✅ | 4 PDF terbuka masuk `bahan_justifikasi/sumber/` (Rajpurkar 2016, Rajpurkar 2018, Dror 2018, Berg-Kirkpatrick 2012). Muis 2020 dan Holm 1979 berbayar, diverifikasi lewat kartu dataset SEACrowd dan catatan Crossref. Han 2026 dan hu2022 sudah tidak disitasi |
| B5 | Ganti sitasi `wu2023understanding` untuk granularitas | ✅ | Bab 2 dan Bab 1 kini memakai `gholami2021survey` + `bondarenko2021understanding`; `wu2023` hanya tersisa di `chapter-1.tex:26` untuk klaim akurasi (memang didukung) |
| B6 | Persempit 3 klaim yang lebih luas dari kutipan | ✅ | 3 kalimat ditulis ulang: 2 di `chapter-1.tex` (representasi kontekstual, multibahasa) dan 1 di `chapter-2.tex` (IndoBERT) |
| B7 | Tambah sitasi SEACrowd di subbab dataset | ✅ | 2.3 menyitasi `lovenia2024seacrowd`; entri bib ditambahkan |

## C. Dokumen perencanaan & analisis (`if-itb-latex/`)

| ID | Tugas | Status | Lokasi |
|---|---|---|---|
| C1 | Analisis Bab I–II (yang kurang, sitasi salah, risiko sidang) | ✅ | `ANALISIS_BAB1_BAB2.md` |
| C2 | Usulan tabel penelitian terdahulu (syarat ≥5 sitasi, ≤5 tahun) | ✅ | `PROPOSAL_PENELITIAN_TERDAHULU.md` |
| C3 | Kajian proposal teman (Tafftadia) | ✅ | `KAJIAN_PROPOSAL_TAFFTADIA.md` |
| C4 | Daftar verifikasi & perhatian khusus (P0/P1/P2) | ✅ | `report.md` |
| C5 | Laporan EDA + Muis dkk. + Matrik + resep teknis | ✅ | `reports.md` |
| C6 | Rencana penyelesaian Bab II + urgensi | ✅ | `RENCANA_BAB2.md` (struktur di dalamnya sudah digantikan `bab2/05`) |
| C7 | Rincian per anak subbab (4 berkas) + 2 versi struktur | ✅ | `bab2/00_PANDUAN.md`, `01_sub1-3.md`, `02_sub4-5.md`, `03_sub6-8.md`, `04_STRUKTUR_RINGKAS.md`, `05_STRUKTUR_v3.md` |

## D. Bab II — `src/chapters/chapter-2.tex`

| ID | Tugas | Status | Lokasi / catatan |
|---|---|---|---|
| D1 | Restrukturisasi jadi 7 subbab + 14 anak subbab | ✅ | `chapter-2.tex` (303 baris) |
| D2 | Isi 2.4 Kompresi Model (pruning, KD, kuantisasi + keputusan) | ✅ | 2.4 |
| D3 | Isi 2.5.1 Representasi Numerik FP16/INT8/INT4 | ✅ | 2.5.1 |
| D4 | Isi 2.5.3 alasan skema simetris | ✅ | 2.5.3 |
| D5 | Tabel 2.1 QAT vs PTQ | ✅ | 2.5.5, `tab:qat-ptq` |
| D6 | Tabel 2.2 spektrum granularitas | ✅ | 2.5.6, `tab:granularitas` |
| D7 | Isi 2.5.7 bit-packing + pernyataan tidak diterapkan | ✅ | 2.5.7 |
| D8 | Isi 2.6.2 ukuran model + latensi + protokol | ✅ | 2.6.2 |
| D9 | Isi 2.6.3 McNemar + persamaan + Holm | ✅ | 2.6.3, `eq:mcnemar` |
| D10 | Gambar 2.1 kerangka berpikir 4 tahap | ✅ | 2.7.2, `fig:kerangka-berpikir` |
| D11 | Isi 2.2.2 checkpoint + alasan pemilihan varian | ✅ | 2.2.2 |
| D12 | Kalimat peta QA bahasa Indonesia | ✅ | akhir 2.1 |
| D13 | Ganti Tabel 2.3 (penelitian terdahulu) 5 → 8 baris | ✅ | 8 baris (Mokey, PTQ4PLM, OliVe, Outlier Suppression, I-BERT, Bondarenko, Abdurrahman, Ramaputra) + catatan † diperbarui + paragraf celah ditulis ulang |
| D14 | Perbaiki rujukan silang "Subbab 2.x" yang basi | ✅ | 2.5→2.6, 2.4→2.5.1, 2.4→2.5 |
| D15 | Tambah 5 entri bib baru | ✅ | `references.bib` (han2016deep, hinton2015distilling, zadeh2022mokey, suhendra2026matrik, mcnemar1947) |
| D16 | Bab II panjang ±4.850 kata | ✅ | **5.373 kata** setelah penambahan tabel, alasan rumus, dan penjelasan gambar |
| D17 | Bab II compile bersih | ✅ | 0 error, 0 sitasi/rujukan undefined |

## E. Bab I — `src/chapters/chapter-1.tex`

| ID | Tugas | Status | Catatan |
|---|---|---|---|
| E1 | Subbab **Manfaat Penelitian** | ✅ | `chapter-1.tex` 1.4 + 1.4.1 Manfaat Teoritis + 1.4.2 Manfaat Praktis (Batasan bergeser ke 1.5) |
| E2 | Subbab **Metodologi** | ↩️ dibatalkan | Sempat ditulis sebagai 1.6, lalu dihapus atas permintaan 25 Okt 2026 |
| E3 | Subbab **Sistematika Pembahasan** | ↩️ dibatalkan | Sempat ditulis sebagai 1.7, lalu dihapus atas permintaan 25 Okt 2026 |
| E4 | Alasan memilih presisi 4-bit | ✅ | Paragraf baru di Latar Belakang: 8-bit sudah hampir setara FP32, 4-bit masih bertahan pada BERT tetapi turun pada IndoBERT (77,35 → 72,78), dan penghematan hingga seperdelapan |
| E6 | Rumusan masalah dan tujuan disusun ulang mengikuti pola **menerapkan, performa, pengaruh** | ✅ | 1.2 dan 1.3 tiga butir sejajar: (1) cara menerapkan kuantisasi per-tensor dan per-channel, (2) performa EM, F1, ukuran model, latensi, (3) pengaruh granularitas + signifikansi |
| E7 | 1.2 dan 1.3 memakai istilah Inggris apa adanya + seluruh istilah asing dimiringkan | ✅ | "kuantisasi weight-only pasca-pelatihan" → "weight-only post-training quantization" (miring), "extractive question answering" miring, per-tensor/per-channel/coarse-grained/fine-grained/Exact Match/dataset miring. 20 perintah `\textit` di 1.2–1.3 |
| E5 | Batasan butir 7: tambahkan latensi sebagai metrik deskriptif | ✅ | butir 7 kini menyebut ukuran model **dan latensi**, dengan catatan latensi tidak diuji |

## F. Front matter & metadata

| ID | Tugas | Status | Catatan |
|---|---|---|---|
| F1 | `informations.tex`: judul, penulis, NIM, pembimbing, kata kunci | ✅ | Judul dikoreksi ("Bahas" → "Bahasa", tanda hubung weight-only/post-training), 5 kata kunci Indonesia dan 5 kata kunci Inggris diisi |
| F2 | Ringkasan (`abstract-id.tex`) | ✅ | Ditulis ulang: 253 kata, tiga paragraf (masalah, metode, hasil + kontribusi). Hasil eksperimen ditandai `[EM dan F1 rata-rata …]` untuk diisi setelah Bab IV |
| F3 | Summary (`abstract-en.tex`) | ✅ | 286 kata, terjemahan setara F2, judul Inggris dan kata kunci Inggris diisi, `\blindtext` dihapus |

## G. Data & eksperimen

| ID | Tugas | Status | Catatan |
|---|---|---|---|
| G1 | Jalankan EDA, simpan output | ✅ | `Skripsi\eda_output_jsonl\` (7 CSV) + `Dataset_SQuAD_ID\*.csv`; versi gabungan EDA + fuzzy matching: `Dataset_SQuAD_ID\eda_dan_fuzzy_squad_id.ipynb` (47 sel, modular, sudah dieksekusi, tabel ke `notebook_output\`) |
| G2 | Konfirmasi jumlah baris efektif + `span_valid_%` | ✅ | train efektif **61.359**, dev efektif **4.225**, span valid **100%**; angka mentah: 130.319/11.873 dengan 43.498/5.945 impossible dan 25.462/1.071 invalid |
| G3 | Putuskan split: dev sebagai uji, validasi dari train | ✅ | dev (11.873) → **test 5.244** baris; validasi = 44 artikel dari train → **5.997** baris; train **64.054**; tidak ada konteks bocor antar split. Tidak perlu stratifikasi: sebaran tipe pertanyaan beda ≤6,1 poin |
| G4 | Protokol tokenisasi (`max_length` 384, `stride` 128) | ✅ | IndoBERT-base-p2: konteks median 135 token, p99 349 → 384 menutupi p99; 0,70% konteks terpotong; 100% jawaban ada di dalam jendela; jawaban >30 token 0,25% → `max_answer_length=30` sah. Rincian `data_clean\token_stats.json` |
| G5 | Fuzzy repair 25.462 baris tanpa posisi span | ✅ | Levenshtein `partial_ratio` + normalisasi + snap batas kata, ambang **85** → 5.589 baris train + 3.168 baris normalisasi = **70.051** baris latih (setara Muis 71.106, selisih 1,4%); audit manual 30 baris: presisi 96,7%. Laporan: `Dataset_SQuAD_ID\data_clean\LAPORAN_PREPROCESSING.md` |
| G6 | Fine-tuning baseline FP32 (target F1 ≈63,6 untuk p2/p1) | ⬜ | data siap: `data_clean\train.jsonl` / `validation.jsonl` / `test.jsonl` |
| G7 | Kuantisasi weight-only coarse vs fine | ⬜ | — |
| G8 | Uji signifikansi (McNemar + bootstrap + Holm) | ⬜ | prosedur sudah ditulis di 2.6.3 |
| G9 | Bab III (metode penelitian) | ✅ | `chapter-3.tex` 2.989 kata, 4 subbab + 11 anak subbab, 7 tabel, 2 gambar, 0 TODO, compile bersih |

---

## Ringkasan angka

| Kategori | ✅ | 🟡 | ⬜ |
|---|---:|---:|---:|
| A. Korpus | 4 | 0 | 0 |
| B. Bukti sitasi | 8 | 0 | 0 |
| C. Perencanaan | 7 | 0 | 0 |
| D. Bab II | 17 | 0 | 0 |
| E. Bab I | 5 | 0 | 0 |
| F. Front matter | 3 | 0 | 0 |
| G. Data & eksperimen | 6 | 0 | 3 |
| H. Revisi Bab II | 20 | 0 | 0 |
| I. Bab III | 6 | 0 | 0 |
| J. Gaya sitasi | 10 | 0 | 0 |
| K. Koreksi teknis | 5 | 0 | 0 |
| L. Kebahasaan Bab I | 12 | 0 | 0 |
| M. Batasan & Bab III | 10 | 0 | 0 |
| N. Gaya akhir | 4 | 0 | 0 |
| O. Restrukturisasi 1.1 | 9 | 0 | 0 |
| P. Bab I versi penulis | 8 | 0 | 0 |
| Q. Rujukan persamaan | 2 | 0 | 0 |
| R. Tindak lanjut Bab I | 6 | 0 | 0 |
| S. Bab II versi penulis | 6 | 0 | 0 |
| T. Tambahan numerik Bab II | 8 | 0 | 0 |
| U. Gambar kerangka berpikir | 2 | 0 | 0 |
| V. Bab III versi penulis | 8 | 0 | 0 |
| **Total** | **166** | **0** | **3** |

## Sisa pekerjaan: tiga eksperimen yang menuntut GPU

Ketiganya tidak dapat dikerjakan dari sesi ini karena memerlukan pelatihan dan pengukuran pada GPU.

| ID | Tugas | Prasyarat |
|---|---|---|
| G6 | *Fine-tuning* baseline FP32 untuk tiga seed (target F1 ≈63,6 untuk p2/p1) | `Dataset_SQuAD_ID/data_clean/train.jsonl` (64.054) + `validation.jsonl` (5.997) sudah siap, Kaggle T4 |
| G7 | Kuantisasi *weight-only* 4-bit per-tensor dan per-*channel* + pengukuran ukuran berkas | *checkpoint* G6 |
| G8 | Uji McNemar, *paired bootstrap* 10.000, koreksi Holm per seed | keluaran G7 |

Setelah ketiganya selesai, tiga hal berikut dapat ditutup: kalimat hasil pada Ringkasan dan Summary, Bab IV, dan Bab V.

## H. Revisi Bab II (permintaan 24 Okt 2026)

| # | Permintaan | Status | Hasil |
|---|---|---|---|
| H1 | 2.1: ganti "dibahas pada Subbab 2.6" dengan menyebut metriknya langsung | ✅ | EM dan F1 disebut langsung beserta definisi satu kalimat |
| H2 | Paragraf sampel tanpa jawaban belum bersitasi | ✅ | `rajpurkar2018squad` + `lovenia2024seacrowd`; sitasi SQuAD v2.0 di 2.3 juga dikoreksi dari 2016 ke 2018 |
| H3 | Semua rumus di 2.2 harus punya alasan + kaitan riset | ✅ | 4 persamaan diberi kalimat alasan (attention, multi-head, MLM, span) |
| H4 | Tidak boleh ada ";" di dalam paragraf | ✅ | 19 kemunculan dihapus (Bab I, II, IV, abstrak ID/EN); sisa hanya di kode TikZ dan komentar |
| H5 | 2.3 harus punya tabel karakteristik dataset | ✅ | Tabel 2.1, 14 baris, angka dari `Dataset_SQuAD_ID\*.csv` |
| H6 | 2.4: perjelas alasan memilih kuantisasi + sitasi kontekstual | ✅ | Hitungan ukuran 498/249/125/62 MB + bukti Mokey dan Bondarenko, pola argumen Tafftadia |
| H7 | 2.5 menjadi "Kuantisasi pada Neural Network" + gambar penjelas | ✅ | Judul diubah dan paragraf pembuka ditulis (gambar kemudian dihapus atas permintaan H13) |
| H8 | 2.5.1: tabel + gambar representasi FP16/INT8/INT4 + sitasi | ✅ | Tabel 2.2 (format, bit, rentang, presisi); gambar dihapus, caption dipertahankan |
| H9 | 2.5.2: sitasi konsep dasar dari sumber asli | ✅ | `jacob2018quantization` + `gholami2021survey`, ditambah Persamaan (2.5) bentuk umum |
| H10 | 2.5.3: gambar simetris vs asimetris + argumen mudah dipahami | ✅ | Contoh angka α=0,8 → s=0,114 dan s=0,093 z=1; gambar dihapus, caption dipertahankan |
| H11 | Semua argumen/gambar/tabel/rumus di bagian kuantisasi harus jelas tujuannya | ✅ | Setiap tabel, persamaan, dan caption diberi kalimat tujuan |
| H12 | Semua tabel dirapikan | ✅ | 5 tabel: tanpa garis vertikal, angka rata kanan, sub-judul kelompok, kolom teks rata kiri; diverifikasi lewat render halaman |
| H13 | Semua gambar dihapus, caption dipertahankan | ✅ | Sempat dihapus, lalu 4 gambar dimasukkan kembali (lihat H14). Dua gambar masih berupa caption saja: Gambar 2.5 (simetris vs asimetris) dan Gambar 2.6 (kerangka berpikir) |
| H14 | Masukkan 4 gambar ke Bab II | ✅ | `resources/`: alur kuantisasi (Gambar 2.1), IEEE FP16 (2.2), INT8 (2.3), INT4 (2.4); caption dan rujukan di 2.5.1 diperbarui, ukuran 0.86–0.88 lebar teks |
| H15 | Gambar pemetaan simetris/asimetris dan kerangka berpikir versi awal | ✅ | Gambar 2.5 (simetris), 2.6 (asimetris) dari `resources/`; kerangka berpikir dibuat ulang versi kotak `\fbox` sebagai Gambar 2.7 |
| H16 | Perbaikan P0+P1 menurut `PENILAIAN_BAB2.md` (T1–T6, tahapan end-to-end, penghapusan kalimat keputusan) | ✅ | Lihat rincian di bawah |
| H17 | Perbaikan P2 menurut `PENILAIAN_BAB2.md` (urutan Tabel 2.5 + kolom tujuan, kebahasaan, judul subbab, TODO fitur dataset) | ✅ | Lihat rincian di bawah |
| H18 | Audit paragraf Bab II (kaidah 3–5 kalimat + ide pokok di awal/akhir) | ✅ | `AUDIT_PARAGRAF_BAB2.md`: 68 paragraf, 35 sudah 3–5 kalimat, 21 perlu digabung, 3 perlu dipecah, 6 pembuka tertunda; belum ada paragraf induktif |
| H19 | Eksekusi audit paragraf: 6 pembuka ditulis ulang, 3 paragraf dipecah, 3 diperkuat rujukan, 5 digabung | ✅ | Paragraf 3–5 kalimat naik 51% → 68%; paragraf >5 kalimat 3 → 0; ide pokok tertunda 6 → 0. Rincian di `AUDIT_PARAGRAF_BAB2.md` |
| H20 | Rekonsiliasi Tabel 2.1 dan teks 2.3 dengan hasil praproses final | ✅ | Tabel kini memisahkan kondisi mentah (86.821/5.928 terjawab) dan hasil penyaringan (70.051/5.244 dipakai); aritmetika kedua kolom menutup |


### Rincian H16 (penilaian Bab II, skor 82/100)

| Temuan | Status | Tindakan |
|---|---|---|
| T1 definisi penyaringan data tidak cocok dengan Tabel 2.1 (4.857 vs 4.225) | ✅ | Kalimat di 2.1 diubah menjadi "tidak bertanda pertanyaan tanpa jawaban dan jawaban acuannya dapat dilacak pada konteks"; baris tabel `is_data_invalid` dijadikan sub-baris "di antaranya", sehingga aritmetika menutup: 11.873 − 5.945 − 1.703 = 4.225 |
| T2 tiga angka efisiensi bertabrakan (12,5% / 25% / 48%) | ✅ | 2.5.1: 12,5% dilabeli batas teoretis; 2.5.4: paragraf baru dengan pembagian parameter (embedding 38,8 jt = 31,2%, linear 85,5 jt = 68,8%) dan tiga rasio; 2.5.7: 25% dan 48% (40% dengan packing); rujukan silang ke 2.6.2 ditepati dengan menyebut bit-packing di sana |
| T3 sumbu channel tidak didefinisikan | ✅ | Ditambah klausa: sumbu keluaran lapisan, baris pada `nn.Linear`, kolom pada `Conv1D` HuggingFace, beserta akibat bila sumbu salah |
| T4 124,5 juta disitasi ke Wilie dkk. | ✅ | Ditambah "berdasarkan penghitungan pada checkpoint model" |
| T5 dua klaim tanpa sitasi di 2.4 | ✅ | `han2016deep` dan `hinton2015distilling` ditempelkan di ujung kalimatnya |
| T6 kuantisasi tersimulasi baru muncul di 2.6.2 | ✅ | Dipindah sebagai teori di 2.5.7; kalimat 2.6.2 dinetralkan |
| Tahapan kuantisasi end-to-end | ✅ | Paragraf lima tahap (kalibrasi → skala → kuantisasi → simpan → dekuantisasi) di akhir 2.5.2 |
| 7 kalimat keputusan penelitian di Bab II | ✅ | Dihapus/dinetralkan di 2.1, 2.4, 2.5.1, 2.5.3, 2.5.4, 2.5.6, 2.5.7, 2.6.3 sesuai permintaan (tidak disimpan) |
| Sisa kalimat diawali "Karena" | ✅ | Dua yang tersisa (attention, uji berpasangan) diubah menjadi pola "…, sehingga …" |


### Rincian H17 (P2)

| Temuan | Status | Tindakan |
|---|---|---|
| Urutan Tabel 2.5 terbalik | ✅ | Diurutkan dari yang paling relevan: Ramaputra (SQuAD-id) → Abdurrahman (IndoBERT) → Zadeh → Bai → Guo → Wei → Bondarenko → Kim; ditambah kalimat bahwa urutan mengikuti relevansi |
| Tidak ada kolom tujuan/masalah | ✅ | Kolom baru "Tujuan atau Masalah"; kolom Model dan Dataset digabung agar 7 kolom tetap muat; baris 4 kini menyebut pembandingnya ("dibanding metode PTQ 6-bit terbaik sebelumnya") |
| Istilah asing tegak | ✅ | 55 kata dimiringkan: dataset, token, tensor, baseline, embedding. Dikecualikan dari `\label`, `\ref`, dan `\caption` karena `\textit` di dalam ketiganya merusak caption/label |
| Judul subbab campur bahasa | ✅ | 2.5 "Kuantisasi pada Jaringan Saraf Tiruan", 2.5.2 "Konsep Dasar Kuantisasi", 2.5.6 "Granularitas Kuantisasi", 2.5.7 "…Representasi Lebar Bit Rendah", 2.6.3 "…McNemar dan Bootstrap Berpasangan". 2.5.4 dan 2.5.5 sengaja dibiarkan karena memuat istilah inti judul skripsi |
| `di mana` sebagai penghubung | ✅ | Diganti "dengan" di 2.2 |
| TODO fitur dataset | ✅ | Diuraikan dari berkas JSONL: tujuh medan per baris dan enam medan per jawaban, plus hitungan posisi dihitung ulang |
| TODO lisensi dataset | ✅ | Ditutup: kartu dataset mencantumkan versi sumber 1.0.0 (SEACrowd 20 Juni 2024) dan lisensi bertanda TBD; kalimat di 2.3 ditulis sesuai itu |
| TODO opsi pustaka kuantisasi | ✅ | Dihapus atas keputusan pengguna; bagian ini tidak menyebut pustaka, mengikuti pola proposal Tafftadia |
| Memindahkan 2.7 ke depan | ⬜ | Tidak dikerjakan: laporan sendiri menyarankan jangan (P2), dan penomoran ulang memaksa mengubah rujukan teks "Subbab 2.5.3" dan sejenisnya |

### Perbaikan build di luar daftar

| Hal | Status | Keterangan |
|---|---|---|
| `\pembimbingDua` dan `\nipDua` dikomentari, sehingga `approval.tex` dan kedua abstrak gagal compile | ✅ | Didefinisikan kosong; blok Pembimbing II hanya muncul bila diisi |
| `hyperref` menampilkan kotak hijau pada setiap sitasi | ✅ | Diubah menjadi `\usepackage[hidelinks]{hyperref}` |
| `\usepackage{tikz}` ditambahkan ke `if-itb-thesis.sty` | ℹ️ | Tidak dipakai setelah gambar dihapus; dibiarkan agar siap bila gambar dikembalikan |

### Keputusan yang sudah diambil

1. "punya Mada" = proposal Tafftadia (`Proposal Skripsi - Weight-Only Post-Training Quantization ResNet`).
2. Gambar semula akan memakai TikZ (tersedia di mesin ini), lalu dihapus seluruhnya atas permintaan terakhir.
3. Aturan tanpa ";" berlaku untuk semua bab termasuk abstrak.
4. Sitasi paragraf sampel tanpa jawaban: Rajpurkar dkk. (2018) + SEACrowd.

## I. Bab III — `src/chapters/chapter-3.tex`

Analisis pembanding sudah dibuat: `ANALISIS_BAB3.md` (peta Bab III Tafftadia, pemetaan ke 11 poin panduan AC-RIG, 7 yang ditiru, 6 yang tidak, usulan struktur, 7 keputusan).

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| I1 | Putuskan 7 hal: cakupan embedding, pustaka, pembagian validasi, max_length/stride, seed, jumlah epoch, lokasi penelitian | ✅ | Semua diputuskan: A (semua bobot), kuantisasi manual, 10% artikel seed 42, 384/128/30, 3 seed, maks 6 epoch + early stopping patience 2, Kaggle T4 |
| I2 | Tulis 3.1 (jenis + alur penelitian) | ✅ | 3.1.1 jenis, 3.1.2 alur 7 tahap + Gambar 3.1 |
| I3 | Tulis 3.2.1–3.2.3 (desain umum, lingkungan, data dan EDA) | ✅ | Gambar 3.2, Tabel 3.1 lingkungan, Tabel 3.2 pembagian data |
| I4 | Tulis 3.2.4–3.2.6 (praproses, model, implementasi kuantisasi) | ✅ | Tabel 3.3 hyperparameter, Tabel 3.4 modul kuantisasi |
| I5 | Tulis 3.2.7 + 3.3 (skenario, deskriptif, uji signifikansi) | ✅ | Tabel 3.5 skenario, Tabel 3.6 uji per metrik, uji per seed |
| I6 | Tulis 3.4 jadwal + gambar alur | ✅ | Tabel 3.7 jadwal 16 minggu, Gambar 3.1 dan 3.2 versi kotak `\fbox` |

## J. Penyelarasan gaya sitasi (25 Okt 2026)

Pembanding: `Skripsi - Klasifikasi Emosi Multi-Class MNB SVM Random Forest (Qinthara).pdf` — 72 sitasi, 58% terbuka, memakai `et al.`, `&`, dan `dkk.` sekaligus.

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| J1 | Analisis gaya sitasi pembanding (kutipan terbuka/tertutup, posisi titik) | ✅ | 42 terbuka : 30 tertutup; nama asing → `et al.`, nama Indonesia → `dkk.`, dua penulis → `&`; titik selalu setelah kurung penutup |
| J2 | Tambah 4 entri bib yang hilang dari Tabel 2.5 | ✅ | `bai2022towards` (NeurIPS 35, 1405–1418), `guo2023olive` (ISCA, 1–15), `wei2022outlier` (NeurIPS 35, 17402–17414), `kim2021ibert` (ICML/PMLR 139, 5493–5504); DOI dari Crossref, penulis I-BERT dicek ke arXiv |
| J3 | Tabel 2.5: nama penelitian mengikuti gaya Qinthara | ✅ | Baris 3–8 menjadi `et al.`, baris 2 tetap `Abdurrahman dkk.`, baris 1 tetap `Ramaputra & Joddy` |
| J4 | Empat sumber baru ditautkan ke daftar pustaka | ✅ | Kalimat baru di 2.7.2: optimasi per modul (Bai), penanganan outlier (Guo, Wei), integer-only (Kim), "tetapi seluruhnya pada tugas berbahasa Inggris" — sekaligus memperkuat celah |
| J5 | Enam tempat diubah menjadi kutipan terbuka | ✅ | 2.4 (Han, Hinton), 2.5.4 (Zadeh + Bondarenko), 2.6.1 (Rajpurkar), 2.6.3 (Dror), 3.2.5 (Abdurrahman dkk. + Bondarenko) |
| J6 | Sitasi ganda Bondarenko di paragraf 2.5.5 | ✅ | Tiga sitasi dalam satu paragraf menjadi dua: klaim umum tertutup + hasil spesifik terbuka |
| J7 | Repetisi "Kedua hasil tersebut" berturut-turut di 2.5.4 | ✅ | Dua kalimat digabung menjadi satu |
| J8 | Pemeriksaan penempatan titik pada seluruh sitasi | ✅ | 106 sitasi diperiksa, tidak ada titik sebelum kurung penutup, tidak ada sitasi menggantung |
| J10 | Sapuan kemiringan istilah asing di luar 1.2–1.3 | ✅ | Bab I 7 perbaikan (dataset, token, 3× Transformer, 2× per-tensor), Bab II 4 (3× Dataset, batch), Bab III 22 (5× per-tensor, per tensor, setiap tensor, 6× baseline, 9× seed). Sel di tabel, caption, label, dan gambar sengaja dilewati karena `\textit` di dalamnya merusak caption/label |
| J9 | Tiga tanda petik istilah di Bab II | ✅ | "terjawab", "posisi awal jawaban dihitung ulang", "jawaban tidak ditemukan pada konteks" adalah penanda istilah dan nilai dataset, bukan kutipan langsung, sehingga tidak diberi halaman |

Hasil: sitasi terbuka naik dari 5 (4,5%) menjadi 13 (11,4%). Sumber unik yang disitasi 31. Compile `pdflatex` + `biber` bersih: 0 error, 0 sitasi/rujukan undefined.

## K. Koreksi baseline FP16, jumlah parameter, pooler, dan sumbu per-channel (25 Okt 2026)

| # | Temuan | Keputusan dan tindakan |
|---|---|---|
| K1 | Baseline penelitian memakai **FP16**, bukan FP32 | Diganti di Bab I (latar belakang, rumusan, tujuan, batasan baru), Bab II (2.4, 2.5.4, 2.5.7, 2.7.2, kerangka berpikir), Bab III (3.2.1, Gambar 3.2, 3.2.6, Tabel 3.5, 3.3.1), Ringkasan, dan Summary. FP32 hanya disebut sebagai presisi pelatihan |
| K2 | Jumlah parameter: Bab II menulis 124,5 juta, Bab III 124,3 juta | Keduanya salah. Dihitung ulang dari bentuk tensor: **123.852.290 (123,9 juta)** untuk `BertForQuestionAnswering`. Rincian: embedding 38.796.288, atensi+bias 28.348.416, feed-forward+bias 56.669.184, LayerNorm 36.864, kepala QA 1.538 |
| K3 | Tabel 3.4 melabeli "Total" tetapi tidak memuat bias dan LayerNorm, dan masih memuat *pooler* | Diperbaiki: baris *pooler* dihapus, baris *LayerNorm* ditambah, baris atensi dan feed-forward kini menyebut "beserta bias", Total 123.852.290. Catatan di bawah tabel menjelaskan bahwa `AutoModelForQuestionAnswering` membangun *encoder* tanpa *pooling* (590.592 parameter *pooler* tidak ikut), dan model lengkap dengan *pooler* berjumlah 124.442.882 |
| K4 | Sumbu per-*channel* pada *embedding* tidak dinyatakan | Ditambahkan di 3.2.6: pada lapisan linear baris keluaran adalah dimensi keluaran, pada *embedding* baris keluaran adalah vektor satu *token*, sehingga per-*channel* berarti satu skala per *token*. Jumlah skala: 72 lapisan linear + 50.514 *embedding* = 50.586 untuk per-*channel*, dan 75 untuk per-*tensor* |
| K5 | Rasio ukuran masih memakai FP32 | Dihitung ulang: FP16 247,7 MB; INT4 teoretis 61,9 MB (25% FP16); INT4 di wadah INT8 123,9 MB (**50% FP16**); hanya linear 66% tanpa *packing* dan 49% dengan *packing* |

Angka acuan setelah koreksi: FP32 495,4 MB · FP16 247,7 MB · INT8 123,9 MB · INT4 teoretis 61,9 MB.

## L. Revisi kebahasaan Bab I (25 Okt 2026)

| # | Temuan peninjau | Tindakan |
|---|---|---|
| L1 | Judul 1.4.1 "Manfaat Teoritis" tidak baku | Menjadi **Manfaat Teoretis**; daftar isi ikut diperbarui setelah `thesis.toc` basi dihapus |
| L2 | Bentuk terikat "antar-" ditulis terpisah | Bab I: **antarkonfigurasi** (2×) dan **antargranularitas** (2×). Bab III ikut: antargranularitas (3×), antarjendela (2×), dan "sebaran antar seed" diganti "sebaran nilai *seed*" agar tidak lahir gabungan janggal |
| L3 | "pasca-pelatihan" | Menjadi **pascapelatihan** di Bab I, Ringkasan, dan kata kunci |
| L4 | Istilah asing tidak miring di 1.2–1.3 | **Tidak terbukti.** Kedelapan istilah sudah `\textit` di berkas dan sudah miring di PDF (diperiksa dengan render halaman 4). Peninjau kemungkinan membaca hasil ekstraksi teks yang membuang format. Tetap ada perbaikan: "per-*tensor*" kini "*(per-tensor)*" utuh miring, berlaku juga di Bab II–III |
| L5 | Nama dataset berubah-ubah | **Tidak terbukti.** Naskah konsisten: **SQuAD** untuk dataset asli berbahasa Inggris (19×) dan **SQuAD-id** untuk terjemahan Indonesia (21×). Huruf kecil "squad" hanya muncul di dalam kunci sitasi (`rajpurkar2016squad`) yang tidak tampil di PDF |
| L6 | Pengantar rumusan masalah memakai kata benda, butirnya kalimat tanya | Pengantar diubah menjadi "**tiga pertanyaan utama**, yaitu cara menerapkan…" |
| L7 | Kata gantung "berikut." di 1.4 | Kalimat diganti "Manfaat penelitian ini dibagi menjadi manfaat teoretis dan manfaat praktis." |
| L8 | Butir 1 tujuan mengulang butir 1 rumusan persis | Tujuan butir 1 diringkas: "Menerapkan *weight-only post-training quantization* 4-bit dengan dua tingkat granularitas pada model IndoBERT…" |
| L12 | Rumusan masalah dan tujuan versi final penulis | ✅ | Tiga butir RM: (1) bagaimana menerapkan, (2) seberapa besar perubahan EM/F1/ukuran/latensi vs FP16, (3) apakah perbedaan EM dan F1 signifikan. Tiga butir tujuan sejajar dengan kata kerja Menerapkan–Mengukur–Menguji. Pengantar 1.2 disesuaikan: "tiga pertanyaan utama, yaitu cara menerapkan, besarnya perubahan, serta signifikansi statistik" |
| L11 | Titik dua sebelum daftar diganti titik | ✅ | Tiga pengantar daftar di Bab I: 1.2 "…permasalahan sebagai berikut.", 1.3 "…adalah sebagai berikut.", 1.5 "…adalah sebagai berikut." Tidak ada lagi `berikut:` atau `adalah:` di naskah. Tata letak daftar diperiksa lewat render halaman, tetap rapi |
| L10 | Frasa "presisi 4-bit" diganti nama format **INT4** | ✅ | 14 penggantian: Bab I 8 (termasuk butir batasan, kini "Format numerik yang diuji dibatasi pada INT4"), Bab II 5, Bab III 1. Sekalian: "presisi 8-bit" → INT8 di Bab I, dan Tabel 3.5 baris 2–3 kini "Kuantisasi INT4". Sisa "presisi 4-bit" di PDF: 0 |
| L9 | Paragraf 5 dan 6 Latar Belakang terlalu panjang | Paragraf 5 dipecah dari 4 menjadi 6 kalimat, paragraf 6 dari 6 menjadi 7 kalimat, seluruh kalimat ≤25 kata |

## M. Batasan Masalah versi baru dan pemindahan angka ke Bab III (25 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| M1 | Ganti 1.5 dengan sepuluh butir versi penulis | ✅ | Sitasi `wilie2020indonlu` (butir 1) dan `muis2020sequence` (butir 2), istilah asing miring, "evaluasi manusia (*human evaluation*)" dan "penutur jati" pada tempat masing-masing |
| M2 | Nama *checkpoint* tidak lagi di Bab I | ✅ | 0 kemunculan `indobert-base-p2` di Bab I; nama itu hanya di 3.2.5 |
| M3 | Angka dipindah dari Batasan ke Bab III | ✅ | Butir 3 dan 8 hanya menyebut kriteria dan merujuk ke 3.2.4 serta 3.2.6 |
| M4 | Paragraf jumlah *tensor* dan skala di 3.2.6 | ✅ | 75 tensor (72 linear + 3 *embedding*), 82.944 skala linear, 50.514 skala *embedding*, 133.458 total, 0,53 MB (0,2% ukuran berkas) |
| M5 | Aturan pengecualian modul di 3.2.6 | ✅ | `qa_outputs`, seluruh *bias*, dan *LayerNorm* dikecualikan, karena penelusuran rekursif `nn.Linear` akan ikut menangkap kepala jawaban |
| M6 | Tabel 3.4 dipisah menurut cakupan kuantisasi | ✅ | Blok "Dikuantisasi (75 tensor bobot)" 123.729.408 dan blok "Tetap pada presisi asal" 122.882, total tetap 123.852.290. Caption menjadi "Pembagian parameter model menurut cakupan kuantisasi" |
| M7 | "Medan" menjadi "kolom" | ✅ | 2 tempat di 2.3 |
| M8 | Basis persentase posisi jawaban asli | ✅ | 3.2.3 kini menyebut "2.927 dari 61.359 baris berjawaban", sehingga 4,77% tidak terbaca 3,4% |
| M9 | Verifikasi ulang angka dataset dari berkas mentah | ✅ | `squad_id_train.jsonl` 130.319 dan `squad_id_testt.jsonl` 11.873; is_impossible 43.498/5.945; is_data_invalid 25.462/1.071; berjawaban 86.821/5.928; artikel 441/35; konteks 19.029/1.204; `answer_start_recomputed` 58.432/4.005. Semua cocok dengan Tabel 2.1 dan 3.2.4 |
| M10 | Kolom "judul artikel" pada berkas Muis | ✅ | Berkas memuat `origin_id, title, context, question, answers, is_impossible, is_data_invalid`, sehingga pembagian tingkat artikel di 3.2.3 sah |

Sisa keputusan yang masih menunggu jawaban dosen: kemiringan nama metode (*Exact Match*, *post-training quantization*) dan pilihan sebutan "4-bit" versus INT4.

## N. Keputusan gaya akhir: miring nama metode, INT4, dan Manfaat versi baru (25 Okt 2026)

| # | Keputusan | Tindakan |
|---|---|---|
| N1 | Nama metode tetap **dimiringkan** | Enam judul di Bab II dan satu di Bab III kini memuat `\textit`: 2.1 *Extractive Question Answering*, 2.5.4 *Weight-Only* dan *Joint Weight-Activation*, 2.5.5 *Post-Training Quantization* dan *Quantization-Aware Training*, 2.5.7 *Bit-Packing*, 2.6.1 *Exact Match* dan F1, 2.6.3 McNemar dan *Bootstrap*, 3.2.6 *Weight-Only* INT4. Kepala kolom "Model dan *Dataset*" dan caption Tabel 2.1 ikut dimiringkan. Diverifikasi lewat render halaman: judul 2.1 tercetak miring penuh |
| N2 | Sebutan format diseragamkan menjadi **INT4** | RM, Tujuan, Batasan butir 7, Manfaat, Bab II (2.5.1, 2.5.3, 2.5.7, 2.7.2), Bab III (3.1.1, Gambar 3.1 dan 3.2, 3.2.1, judul 3.2.6, langkah keempat), Ringkasan, dan Summary. Kalimat 2.5.1 yang tadinya hanya menyebut 12,5% terhadap FP32 kini menyebut 12,5% terhadap FP32 dan 25% terhadap FP16 |
| N3 | Sisa "4-bit" yang dipertahankan | 15 kemunculan, semuanya bukan nama format: keterangan lebar bit ("bilangan bulat 8-bit dan 4-bit", "wadah 8-bit", "menempati 4 bit"), caption gambar susunan bit, nama berkas gambar, dan sel Tabel 2.5 yang mengutip setelan penelitian lain ("PTQ 4-bit", "Qwen2.5-14B 4-bit", "bobot 16/8/6/4-bit") |
| N4 | 1.4 Manfaat versi baru | Empat butir teoretis dan tiga butir praktis, dengan sitasi `abdurrahman2023implementing` dan `ramaputra2026evaluating` pada butir pertama. Kalimat pengantar memakai rujukan silang ke 1.4.1 dan 1.4.2 |

## O. Restrukturisasi 1.1 mengikuti pola AC-RIG (25 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| O1 | 1.1 diringkas dari 8 paragraf menjadi 7 paragraf | ✅ | Konteks (P1–P2), masalah (P3), kajian (P4), kekurangan kajian (P5), solusi (P6), rangkuman (P7). Tiap paragraf 4–6 kalimat |
| O2 | Kalimat yang dibuang | ✅ | Rahali (hanya dipakai di 1.1 sehingga hilang dari Daftar Rujukan), Zafrir (QAT, tetap dipakai di Bab II), Armstrong (tidak nyambung ke granularitas, tetap dipakai di Bab II), "secara lebih terarah", "Meskipun demikian … tidak hanya menjadi pertimbangan", penjelasan *self-attention* |
| O3 | Paragraf masalah dengan angka | ✅ | 123.852.290 parameter, 495,4 MB FP32, 247,7 MB FP16, pihak terdampak (pengembang, institusi, perangkat), bersitasi Gholami |
| O4 | Paragraf kajian dengan hasil berangka | ✅ | Ramaputra & Joddy (EM 48,61 → 44,73 AWQ, 43,80 GPTQ), Abdurrahman (F1 77,35 → 72,78), Zadeh (F1 93,15 → 93,17), Bondarenko (GLUE 83,06 → 83,23) |
| O5 | Paragraf kekurangan kajian | ✅ | Lima butir celah, termasuk Suhendra dkk. (2026) sebagai studi terdekat tanpa kuantisasi, ditutup "dalam penelusuran penulis" |
| O6 | Alasan INT4 ditulis ulang | ✅ | Dua rasio disebut (50% dari FP16 tanpa *bit-packing*, 25% bila dipadatkan). Alasan memilih INT4 bersitasi Wu dkk. (2023); pernyataan bahwa INT8 terlalu kecil untuk membedakan granularitas ditulis sebagai pendapat penulis, bukan hasil Bondarenko |
| O7 | Aturan dosen: minimal 5 artikel 2021–2026 untuk *dataset* | ✅ | Paragraf konteks menyitasi enam karya 2021–2026 untuk SQuAD dan SQuAD-id: Zadeh 2022, Bai 2022, Guo 2023, Wei 2022, Ramaputra 2026, Suhendra 2026, ditambah Lovenia 2024 untuk versi SEACrowd |
| O8 | Kebahasaan | ✅ | Kepanjangan BERT, FP32, SQuAD pada kemunculan pertama; "berbagai tugas" diganti sebutan tugas; "hampir sama" diganti angka; "Ramaputra dan Joddy" (bukan "and") pada sitasi naratif dua penulis |
| O9 | Judul penelitian di akhir 1.1 | ✅ | "Penelitian ini berjudul *Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia*" |

## P. Bab I versi penulis dan penyelarasan baseline (25 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| P1 | 1.1 diganti versi penulis (sembilan paragraf) | ✅ | Konteks 2 paragraf, masalah dengan angka dan contoh 2,5 GB, kajian dipecah dua paragraf (IndoBERT dan QA), kekurangan kajian, solusi PTQ/INT4, granularitas, rangkuman berjudul |
| P2 | Pembuka 1.2 | ✅ | "…yaitu prosedur penerapan *weight-only post-training quantization*… Pertanyaan pertama dijawab melalui prosedur yang dirinci pada Bab III, sedangkan pertanyaan kedua dan ketiga dijawab melalui eksperimen…" |
| P3 | Pembuka 1.3 dan 1.5 | ✅ | "penelitian ini memiliki tiga tujuan" dan "terdiri atas sepuluh butir" |
| P4 | Kemiringan istilah diperiksa pada hasil render | ✅ | Halaman 1 diperiksa langsung: *Natural Language Processing*, *question answering*, *extractive question answering*, *span*, *Transformer*, *fine-tuning*, *benchmark*, *dataset*, *encoder*, *post-training quantization*, *quantization-aware training* semuanya miring |
| P5 | 2.4: klaim "seperdelapan" dihapus | ✅ | Menjadi "seperempat dibanding FP16, yaitu dari 248 MB menjadi 62 MB secara teoretis" |
| P6 | 2.5.4: batas teoretis | ✅ | "12,5% pada Subbab 2.5.1" menjadi "25% terhadap FP16 pada Subbab 2.5.1" |
| P7 | Tabel 2.5: sebutan presisi diselaraskan | ✅ | Tujuh sel menjadi INT4: Qwen2.5-14B/7B, PTQ dan QAT Abdurrahman, PTQ Zadeh, Guo, Wei |
| P8 | Sisa "4-bit" yang dipertahankan | ✅ | Bab II lima tempat dan Bab III satu tempat, semuanya keterangan lebar bit ("8-bit dan 4-bit", "bobot 16/8/6/4-bit", "indeks 4-bit", "wadah 8-bit"), bukan nama format |

Catatan untuk Bab V (dari peninjau): jawaban RM1 sebaiknya berupa bukti terukur, yaitu 75 *tensor* dikuantisasi, 75 skala *per-tensor* berbanding 133.458 skala *per-channel*, dan rentang bilangan bulat $-8$ sampai 7.

## Q. Rujukan persamaan tanpa tanda kurung (25 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| Q1 | Seluruh rujukan persamaan dalam paragraf memakai nomor langsung | ✅ | 18 perintah `\eqref` diganti `\ref`: 13 di Bab II dan 5 di Bab III. Hasilnya "Persamaan 2.5", bukan "Persamaan (2.5)". Nomor pada persamaan itu sendiri tetap ditampilkan dalam kurung |
| Q2 | Pemeriksaan hasil | ✅ | 14 rujukan "Persamaan N" di PDF, nol kemunculan "Persamaan (". Tautan silang tetap berfungsi, 0 rujukan undefined |

## R. Tindak lanjut peninjauan Bab I (25 Okt 2026)

| # | Temuan peninjau | Putusan | Tindakan |
|---|---|---|---|
| R1 | Istilah asing tidak miring | **Tidak terbukti** | 16 istilah diaudit pada seluruh kemunculan di Bab I: nol yang tegak. Peninjau membaca hasil ekstraksi teks. Tidak ada perubahan |
| R2 | Nama dataset ditulis SQUAD kapital | **Tidak terbukti** | Bab I memuat 0 "SQUAD" dan 14 "SQuAD". Tidak ada perubahan |
| R3 | Rujukan dataset Muis & Purwarianti (2020) tidak cocok | **Benar sebagian** | Artikel itu memang tentang *automatic question generator*, tetapi kartu *dataset* SEACrowd menunjuknya sebagai sumber `squad_id`. Ditambahkan klausa versi SEACrowd: "…dalam versi yang didistribusikan SEACrowd (Lovenia et al., 2024)" pada 1.5 butir 2 |
| R4 | Sitasi Jurafsky tiga kali di paragraf 1 | **Benar** | Kalimat 1 dan 2 digabung sehingga definisi umum dan definisi *question answering* berbagi satu sitasi. Sitasi tinggal dua, satu untuk definisi dan satu untuk *extractive* |
| R5 | Dua tanda kurung berdempet | **Benar** | "(Gholami et al., 2021) (Subbab 3.2.6)" menjadi "(Gholami et al., 2021), sebagaimana dirinci pada Subbab 3.2.6". Nol kemunculan kurung berdempet di seluruh naskah |
| R6 | Pengantar 1.2 dinilai sudah logis | Diterima | Tidak ada perubahan |

## S. Bab II versi penulis (25 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| S1 | Seluruh `chapter-2.tex` diganti versi penulis | ✅ | 7 subbab, 13 anak subbab, 9 persamaan, 5 tabel, 7 gambar |
| S2 | Empat entri bib baru dengan metadata terverifikasi | ✅ | `wang2022extractive` (HDIS 2022, 147–153), `raikwar2024five` (ASIANCON 2024, 1–6), `edwards1948continuity` (Psychometrika 13(3), 185–187), `fagerland2013mcnemar` (BMC Med Res Methodol 13:91). Semua DOI dicek ke Crossref |
| S3 | Persamaan dinomori ulang 2.1–2.9 | ✅ | Rujukan dalam paragraf memakai `\ref` sehingga berbunyi "Persamaan 2.3" tanpa kurung |
| S4 | Rujukan `eq:span` di Bab III | ✅ | Persamaan span tidak ada lagi di Bab II versi baru, sehingga rujukan diubah menjadi "sesuai formulasi pada Subbab 2.2.1" |
| S5 | Tabel 2.5 dipangkas dari 8 menjadi 6 baris | ✅ | Hanya studi yang lolos empat syarat; penelitian berbahasa Indonesia dibahas di paragraf, bukan di tabel |
| S6 | Verifikasi hasil render | ✅ | Tabel 2.1 (10 baris) dan Tabel 2.5 muat dalam margin, tidak ada kolom meluber, sembilan nomor persamaan tampil, sitasi baru muncul di Daftar Pustaka |

## T. Tambahan penjelasan numerik Bab II (25 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| T1 | Tiga paragraf baru di 2.5.1 | ✅ | Fungsi bit tanda, eksponen, mantisa. Rumus FP16 $(-1)^s \times 2^{e-15} \times (1+m/1024)$. Contoh 0,30 menjadi `0 01101 0011001101` dan terbaca 0,30005. Paragraf bahwa INT tidak punya eksponen dan mantisa |
| T2 | Contoh 2.5.3 diganti perbandingan tiga format | ✅ | Bobot 0,30 dengan α = 0,8 pada FP16, INT8, dan INT4. Langkah INT4 18,1 kali lebih lebar (127/7). *Error* maksimum setengah *s*: 0,0031 dan 0,0571 |
| T3 | Tabel 2.3 baru: contoh penyimpanan bobot 0,30 | ✅ | Lima kolom, tiga baris. Susunan bit ditulis monospace satu baris |
| T4 | Contoh 2.5.6 diganti matriks 2 × 4 | ✅ | Baris A (0,80; −0,30; 0,10; 0,55), baris B (0,20; 0,09; −0,15; 0,04). Rata-rata *error* baris B turun 0,0321 → 0,0057 (5,6 kali) |
| T5 | Tabel 2.5 baru: penghitungan per bobot | ✅ | Delapan kolom, delapan baris. Diperiksa pada hasil render: muat margin, kepala kolom dua baris tidak bertumpuk |
| T6 | Penomoran tabel bergeser otomatis | ✅ | 2.1 dataset, 2.2 format numerik, 2.3 contoh format, 2.4 QAT/PTQ, 2.5 contoh granularitas, 2.6 perbandingan granularitas, 2.7 penelitian terdahulu. Semua rujukan memakai `\ref` sehingga ikut bergeser |
| T7 | Verifikasi aritmetika | ✅ | Semua angka dihitung ulang: 0,30 → 1,2 × 2⁻², eksponen 13 = 01101, mantisa 205 = 0011001101, INT8 48 → 0,3024, INT4 3 → 0,3429, rata-rata *error* 0,0321 dan 0,0057. Cocok dengan naskah |
| T8 | Perbaikan tata letak | ✅ | `\allowbreak` pada nama model panjang, `\emergencystretch` 3em, lebar kolom Tabel 2.3. Hasil: 0 error, 0 overfull, 0 rujukan kosong, 64 halaman |

## U. Gambar kerangka berpikir (26 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| U1 | Gambar 2.7 diganti berkas penulis | ✅ | `resources/Kerangka berpikir penelitian.png` (2048 × 768 px, rasio 2,67). Kotak fbox lama dihapus |
| U2 | Ukuran disetel agar pas sisa halaman | ✅ | `width=0.88\textwidth`, batas `height=0.34\textheight`, keepaspectratio. Gambar turun ke halaman yang sama dengan paragraf rujukannya, sisa ruang bawah 2–3 cm, naskah kembali 63 halaman |
| U3 | Angka pada gambar perlu diekspor ulang | ⚠️ | Gambar menulis "sekitar 124,5 juta parameter", sedangkan naskah memakai 123.852.290 (123,9 juta). Perlu ekspor ulang dari berkas sumber |

## V. Bab III versi penulis dan gambar baru (26 Okt 2026)

| # | Pekerjaan | Status | Catatan |
|---|---|---|---|
| V1 | Seluruh `chapter-3.tex` diganti versi penulis | ✅ | 4 subbab, 11 anak subbab, 8 tabel, 2 gambar, 2.722 kata. 0 titik koma di prosa |
| V2 | Gambar 2.7 memakai berkas baru | ✅ | Versi 07.34 (2172 × 724). Angka di kotak Masalah sudah 123,9 juta, cocok dengan naskah |
| V3 | Gambar 3.1 dan 3.2 dari berkas penulis | ✅ | `Alur penelitian.png` dan `desain eksperimen.png`. Versi 07.41 pada Gambar 3.2 sudah menulis FP16, bukan FP32 |
| V4 | Ukuran gambar disetel | ✅ | Gambar 2.7 `width=\textwidth` karena rasio berkas baru lebih lebar (3,0). Gambar 3.1 dan 3.2 `width=0.90\textwidth` dengan batas tinggi. Ketiganya turun di halaman yang memuat paragraf rujukannya |
| V5 | Tabel 3.4 tidak lagi di halaman tersendiri | ✅ | `[!ht]` pada tabel Bab III. Sebelumnya Tabel 3.4 memenuhi satu halaman kosong |
| V6 | Verifikasi angka | ✅ | 38.794.752 + 28.311.552 + 56.623.104 = 123.729.408. Ditambah 121.346 + 1.536 = 123.852.290. Ukuran 124,0 dan 124,5 MB (50,1% dan 50,3% dari 247,7). 25.462/86.821 = 29,3%. 3.168 + 5.589 = 8.757 |
| V7 | Selisih jumlah artikel pada Tabel 3.2 | ✅ | Ditutup dengan dua kalimat pada 3.2.3: 441 artikel mentah, dua artikel tidak menyisakan baris setelah penyaringan, 439 artikel dibagi menjadi 44 validasi dan 395 latih |
| V8 | Istilah pada Gambar 3.1 dan 3.2 | ✅ | Diputuskan dibiarkan sesuai keputusan penulis. Gambar memakai "4-bit", teks memakai INT4 |

## Berkas cadangan (jika perlu kembali ke versi sebelumnya)

`C:\Users\nanya\AppData\Local\hermes\cache\scratch\` :
`chapter-2.before-restructure.tex` → `chapter-2.before-2.2-edit.tex` → `chapter-2.before-latency.tex` (versi terakhir sebelum pengisian TODO).

## S. Bagian awal lengkap sesuai contoh skripsi UM (25 Okt 2026)

Acuan tata letak: `C:\Users\nanya\Downloads\05_REFERENSI\NLP\Skripsi - Klasifikasi Emosi Multi-Class MNB SVM Random Forest (Qinthara).pdf` (halaman i–xiii).

| # | Halaman | Status | Berkas / catatan |
|---|---|---|---|
| S1 | Lembar Persetujuan Pembimbing Skripsi (**i**) | ✅ | `chapters/approval.tex`: judul "LEMBAR PERSETUJUAN PEMBIMBING SKRIPSI" di tengah, kalimat menyebut judul skripsi, blok tanda tangan rata kiri dengan ruang tanda tangan 2 cm. Otomatis menjadi dua kolom bila `\pembimbingDua` diisi |
| S2 | Lembar Persetujuan dan Pengesahan Skripsi (**ii**) | ✅ | `chapters/endorsement.tex`: judul, tanggal sidang, **tiga blok penguji berupa garis kosong** (nama 6,5 cm + "NIP" 4,5 cm) karena dewan penguji belum ditetapkan, lalu blok "Mengesahkan, Dekan" (kiri) dan "Mengetahui, Ketua Departemen" (kanan). Isi `\pengujiSatu`–`\pengujiTiga` di `informations.tex` dan garis kosong otomatis berganti menjadi nama dan NIP |
| S3 | Pernyataan Keaslian Tulisan (**iii**) | ✅ | `chapters/statement.tex`: identitas Nama/NIM/Departemen-Program Studi/Fakultas, kalimat pernyataan memuat judul skripsi, blok tanda tangan kanan |
| S4 | Kata Pengantar (**vi**) | ✅ | `chapters/forewords.tex`: 2 paragraf + 5 butir ucapan terima kasih + penutup + tanda tangan, muat satu halaman. Butir 4 memuat nama Ketua Program Studi (Dr. Eng. Ir. Didik Dwi Prasetya, S.T., M.T.), butir 5 memakai `\pembimbingSatu` sebagai Dosen Pembimbing Akademik. Butir orang tua, saudara, sahabat, dosen/staf, dan pemberi beasiswa dihapus atas permintaan penulis |
| S5 | Daftar Tabel (**xi**) | ✅ | Baris kepala "Tabel … Halaman", entri berawalan "Tabel 2.1 …", tercatat di Daftar Isi |
| S6 | Daftar Gambar (**xii**) | ✅ | Baris kepala "Gambar … Halaman", entri berawalan "Gambar 2.1 …", tercatat di Daftar Isi |
| S7 | Daftar Rumus (**xiii**) | ✅ | `\listofrumus` di `config/if-itb-thesis.sty`: 13 entri "Rumus (2.1)"–"(2.13)" terisi otomatis dari lingkungan `equation` melalui berkas `thesis.rum` |
| S8 | Nomor halaman romawi i–xiii | ✅ | Sampul, halaman lambang, dan halaman judul tidak dihitung (`\setcounter{page}{1}` sesudah `title-page.tex`), sehingga Lembar Persetujuan = i. `\clearpage` sebelum `\pagenumbering{arabic}` mencegah halaman terakhir bagian awal berubah menjadi "1" |
| S9 | Entri bagian awal pada Daftar Isi | ✅ | Enam entri ditambahkan: tiga lembar, Daftar Tabel, Daftar Gambar, Daftar Rumus |
| S10 | Ekspor cover → Daftar Rujukan (tanpa Bab IV–V, lampiran, riwayat hidup) | ✅ | `excerpt.ps1` ditambah kode `daftarisi`, `daftartabel`, `daftargambar`, `daftarrumus`, dan `pustaka`; nomor halaman otomatis romawi untuk halaman awal dan arabic mulai bab. Hasil: `dist/excerpt-awal-sampai-bab3.pdf` (58 halaman: sampul p1–p3 tanpa nomor, i–xii, Bab I mulai 1, Daftar Rujukan 40–43). Perintah: `powershell -File excerpt.ps1 -Pilih "cover,logo,title,approval,endorsement,statement,ringkasan,summary,forewords,daftarisi,daftartabel,daftargambar,daftarrumus,bab1,bab2,bab3,pustaka" -Nama "awal-sampai-bab3"` |
| S11 | Halaman Daftar Rujukan pada Daftar Isi | ✅ | `\printbibliography[heading=bibintoc, title={Daftar Rujukan}]` menggantikan `\addcontentsline` setelah `\printbibliography`. Sebelumnya entri menunjuk halaman terakhir daftar rujukan (48), sekarang halaman pertama (45 di `thesis.pdf`, 40 di ekspor) |

| S12 | Daftar Isi disamakan dengan contoh Qinthara | ✅ | `\l@chapter` ditulis ulang di `config/if-itb-thesis.sty`: seluruh entri memakai titik-titik penuh sampai nomor halaman, entri bab dua baris ("BAB I" lalu judul kapital, masing-masing dengan titik dan halaman), entri halaman awal kapital satu baris. `\@chapter` ditambal sebelum `hyperref` dimuat agar menulis `\numberline{BAB I}\MakeUppercase{Judul}`; label lampiran memakai `\tocchapapp`/`\tocchapnum` |
| S13 | Entri Daftar Isi untuk halaman awal | ✅ | Ditulis kapital pada sumbernya: LEMBAR PERSETUJUAN…, PERNYATAAN…, RINGKASAN, SUMMARY, KATA PENGANTAR, DAFTAR TABEL/GAMBAR/RUMUS, LAMPIRAN |
| S14 | Kata Pengantar versi final | ✅ | Lima butir, satu halaman (vi). Nomor halaman bagian awal ikut bergeser: Daftar Isi vii–ix, Daftar Tabel x, Daftar Gambar xi, Daftar Rumus xii |

| S15 | Entri "LAMPIRAN" pada Daftar Isi | ✅ | Dihapus: entri itu menunjuk halaman terakhir Daftar Rujukan (48), sedangkan Lampiran 1 dan 2 sudah punya entri sendiri. Daftar Isi kini berakhir: DAFTAR RUJUKAN 45, Lampiran 1 49, Lampiran 2 50, RIWAYAT HIDUP 51 |

| S16 | Jarak antarbaris Daftar Isi | ✅ | `\vskip` sebelum entri bab dihapus dan seluruh daftar (Daftar Isi, Tabel, Gambar, Rumus) dibungkus `singlespace` pada `\@starttoc`. Daftar Isi jadi rapat tanpa baris kosong, dan menyusut dari 3 halaman menjadi 2 (vii-viii). Nomor halaman ikut bergeser: Daftar Tabel ix, Gambar x, Rumus xi |

| S17 | Kerapian Bab I (dan seluruh naskah) | ✅ | `enumitem` dengan `\setlist{itemsep=0pt, parsep=0pt, partopsep=0pt}` membuat butir daftar rapat tanpa jarak antarbutir, dan `\emergencystretch` 1,5em menghapus baris yang melewati margin kanan. Overfull di Bab I turun dari 4 menjadi 0. Efek samping: naskah menyusut 65 → 61 halaman, ekspor 57 → 53 halaman. Sisa overfull: `forewords.tex` 2 dan `chapter-2.tex` 2 |

| S18 | Kerapian menyeluruh Bab I-III dan naskah | ✅ | `microtype` (perataan mikro) ditambahkan setelah `mathptmx`, `\headheight` dinaikkan ke 14,5 pt agar kepala halaman tidak bergeser, dan `\emergencystretch` 3em dipakai di seluruh naskah serta di dalam daftar. Hasil: **0 overfull** di `thesis.pdf` dan **0 overfull** di ekspor (sebelumnya 5). Diperiksa lewat render: Tabel 2.2, 2.4, 3.4, 3.5 dan Gambar 2.1 tetap di dalam margin, caption tabel di atas, caption gambar di bawah, tidak ada kolom terpotong. Naskah 63 halaman, ekspor 55 halaman |

**Sisa pekerjaan bagian awal:** (1) dewan penguji belum ditetapkan, sehingga halaman ii mencetak tiga blok garis kosong; isi `\pengujiSatu`–`\pengujiTiga` dan `\tanggalSidang` di `config/informations.tex` bila sudah ada, (2) nama pada Kata Pengantar diisi penulis sendiri, (3) kalimat hasil pada Ringkasan/Summary dibiarkan kosong sampai eksperimen selesai.

**Catatan teknis:** baris kepala kolom daftar dipasang dengan menimpa `\@starttoc`; Daftar Tabel/Gambar/Rumus ditambahkan ke Daftar Isi dengan menimpa `\listoftables`, `\listoffigures`, dan `\listofrumus` (kelas `report` tidak menambahkan keduanya secara bawaan). Jarak tanda tangan di dalam `tabular` kolom `l`/`c` harus memakai satuan mutlak (`\\[2cm]`), karena `\\[3\baselineskip]` tidak berefek di kolom tersebut.

