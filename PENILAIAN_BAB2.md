# Penilaian Bab II terhadap Panduan AC-RIG UM 2021

Tanggal: 24 Oktober 2026
Berkas: `src/chapters/chapter-2.tex` (431 baris, 4.167 kata prosa di luar tabel, 5 tabel, 7 gambar, 13 persamaan)
Kompilasi: bersih (`pdflatex` 3× + biber, 0 error), Bab II menempati halaman 7–25.
Acuan: `judge/Panduan Penulisan Laporan Skripsi AC-RIG UM 2021.pdf` §BAB 2 + `judge/Daftar Pengecekan Penulisan Skripsi v2.0.pdf`

**Skor Bab II: 82 / 100.** Substansinya sudah di atas rata-rata skripsi S1 — teori tuntas, tiap rumus diberi alasan keberadaan, angka tabel bisa direproduksi. Yang menahan nilainya bukan isi, melainkan (a) keputusan penelitian yang ditulis di tempat yang salah, (b) tiga angka efisiensi yang saling bertabrakan, dan (c) satu definisi penyaringan data yang tidak cocok dengan angkanya sendiri.

| Kriteria panduan | Skor | Catatan singkat |
|---|---|---|
| Tinjauan penelitian sebelumnya (≥5 kajian, memuat tujuan/metode/hasil) | 8/10 | 8 studi, angka terverifikasi, tanda † jujur; urutan terbalik, tidak ada kolom tujuan/masalah |
| Landasan teori lengkap & tuntas | 9/10 | 7 subbab, 14 anak subbab, definisi + formula lengkap |
| Urutan umum → khusus | 7/10 | Alur metodologis rapi, tetapi tinjauan diletakkan paling akhir (panduan: paling awal) |
| Definisi + tahapan + formula per algoritme | 8/10 | Formula lengkap; "tahapan" kuantisasi end-to-end tidak pernah dirangkai sebagai satu prosedur |
| Setiap pernyataan bersitasi | 9/10 | 76 sitasi, 0 kunci menggantung; 2 klaim tanpa sitasi (pruning & distillation) |
| **Bab II hanya berisi teori, usulan peneliti di Bab III** | **4/10** | **7 tempat memuat keputusan penelitian** — pelanggaran aturan eksplisit panduan |
| Bab II ditutup dengan perbedaan & novelty | 10/10 | 2.7.2 tajam, celah dipersempit dengan benar |
| Konsistensi istilah & judul subbab | 6/10 | Judul subbab campur Inggris–Indonesia; `pra-latih` vs `pralatih` |

---

## 1. Struktur: cocok atau tidak dengan "Susunan Umum" panduan

Panduan §BAB 2 menetapkan susunan umum: (1) kajian penelitian sebelumnya, (2) objek studi kasus, (3) dasar teori umum → khusus, termasuk metode evaluasi. Naskah Anda:

| Panduan | Naskah | Selisih |
|---|---|---|
| 1. Kajian penelitian sebelumnya | **2.7** (paling akhir) | Urutan terbalik |
| 2. Objek studi kasus | — | Tidak relevan (bukan RPL/MDI) |
| 3a. Teori objek | 2.1 Extractive QA, 2.2 BERT & IndoBERT, 2.3 Dataset SQuAD-id | Sesuai |
| 3b. Teori metode | 2.4 Kompresi Model, 2.5 Kuantisasi (7 anak subbab) | Sesuai, sangat lengkap |
| 3c. Metode evaluasi | 2.6 Metrik & Uji Signifikansi (3 anak subbab) | Sesuai |

Penilaian saya: **jangan pindahkan 2.7 ke depan sekarang.** Panduan itu sendiri kontradiktif — "Susunan Umum" menaruh tinjauan di awal, tetapi butir 9 mensyaratkan "akhiri subbab tinjauan studi dengan menjelaskan perbedaan dan kelebihan penelitian kita", yang mengandaikan tinjauan adalah subbab tersendiri. Memindahkan 2.7 → 2.1 memaksa penomoran ulang 2.1–2.6 beserta seluruh `\ref` silang di dalam teks (2.5.3, 2.5.4, 2.5.6, 2.6.2, 2.5.1 dirujuk dari banyak tempat) dengan risiko salah tunjuk yang tidak diperingatkan compiler. Risiko akademiknya kecil, biaya teknisnya besar. Simpan sebagai keputusan P2 dan siapkan satu kalimat alasan bila ditanya.

Yang **wajib** diubah dari struktur: tidak ada subbab yang merangkai **tahapan kuantisasi dari awal sampai akhir** (kalibrasi → hitung skala → kuantisasi → simpan → dekuantisasi → inferensi). Panduan butir 2 landasan teori: "Algoritma pada dasar teori harus berisi definisi, **tahapan**, dan formula." Definisi dan formula ada; tahapan tersebar di 2.5.2–2.5.7 tanpa pernah diurutkan. Ini juga yang membuat Gambar 2.1 (yang mengklaim "tujuh tahapan") tidak pernah benar-benar dijelaskan sebagai urutan kerja.

---

## 2. Pelanggaran aturan "Bab II hanya teori" (paling menentukan)

Panduan, butir 7 landasan teori: *"Segala informasi yang ada di Bab 2 hanya berupa dasar teori saja. Hal-hal yang menjadi usulan peneliti (metode) tidak disampaikan di Bab 2, tetapi di sampaikan di Bab 3."*

| Baris | Kalimat yang melanggar | Seharusnya pindah ke |
|---|---|---|
| 77 | "penelitian ini membentuk data validasi dengan memisahkan sebagian data latih … Pembagian tersebut merupakan keputusan penelitian ini" | Bab III, subjek/pengumpulan data |
| 126 | "Berdasarkan pertimbangan tersebut, penelitian ini memilih kuantisasi" | Bab III, solusi umum |
| 192 | "Penelitian ini membatasi presisi pada 4-bit, sehingga kedua granularitas yang diuji …" | Bab III, rancangan |
| 240 | "Karena penelitian ini tidak mengkuantisasi aktivasi, skema simetris dinilai memadai untuk bobot" | Bab III (kesimpulan pemilihan) |
| 287 | "Penelitian ini menetapkan coarse-grained sebagai per-tensor dan fine-grained sebagai per-channel" | Bab III, definisi konfigurasi uji |
| 316 | "Penelitian ini tidak menerapkan bit-packing … mengikuti pendekatan yang lazim" | Bab III + konsekuensi di 2.6.2 |
| 364, 366 | "Penelitian ini menggunakan B = 10.000", "koreksi Holm … dengan m = 3 perbandingan" | Bab III, pengujian & analisis |

Cara memperbaikinya **tanpa membuang isinya**: di Bab II sisakan satu kalimat bermodus teori, misalnya "Pada presisi rendah, bit-packing diperlukan agar dua nilai INT4 menempati satu byte; tanpa bit-packing ukuran berkas menjadi dua kali lipat ukuran teoretis." Lalu keputusan "penelitian ini tidak memakainya" dipindahkan ke Bab III. Keuntungan sampingan: **4 dari 6 kalimat yang diawali "Karena" hilang dengan sendirinya**, karena keempatnya (baris 75, 240, 289, 342) adalah kalimat keputusan metode.

---

## 3. Tiga temuan teknis yang harus Anda ketahui sebelum ditanya penguji

### T1. Definisi penyaringan data di 2.1 tidak cocok dengan angka Tabel 2.1 (selisih 632 baris)

`chapter-2.tex:23` menyatakan sampel yang dipakai adalah yang "penanda pertanyaan tanpa jawaban dan penanda data tidak valid bernilai salah" (yaitu `is_impossible = False` **dan** `is_data_invalid = False`). Tabel 2.1 memuat angka-angka ini:

| | Data latih | Data uji |
|---|---|---|
| Jumlah baris | 130.319 | 11.873 |
| is_impossible | 43.498 | 5.945 |
| is_data_invalid | 25.462 | 1.071 |
| Jawaban tidak ditemukan pada konteks | 25.462 | 1.703 |
| **Baris yang dipakai** | **61.359** | **4.225** |

Hitungan dengan aturan yang Anda tulis:
- latih: 130.319 − 43.498 − 25.462 = **61.359** ✅ cocok
- uji: 11.873 − 5.945 − 1.071 = **4.857** ❌ tabel menulis 4.225 (selisih 632)

Hitungan yang benar-benar menghasilkan angka tabel: memakai kolom "jawaban tidak ditemukan" sebagai saringan kedua, bukan `is_data_invalid`.
- uji: 11.873 − 5.945 − 1.703 = **4.225** ✅

Artinya aturan yang sesungguhnya dipakai adalah **`is_impossible = False` dan jawaban dapat dilacak pada konteks**, bukan `is_data_invalid = False`. Untuk data latih kedua kolom kebetulan bernilai sama (25.462) sehingga selisihnya tidak terlihat — inilah sebabnya cacat ini lolos. Penguji yang menjumlahkan sendiri kolom Tabel 2.1 akan menemukannya dalam dua menit.

Perbaikan: ubah kalimat di baris 23 menjadi "…sampel dengan penanda pertanyaan tanpa jawaban bernilai salah **dan jawaban yang dapat dilacak pada konteks**", atau tambahkan satu baris di tabel: "Baris bertanda data tidak valid **dan** jawaban tidak ditemukan".

### T2. Tiga angka efisiensi saling bertabrakan (12,5% / 25% / ±48%)

| Lokasi | Klaim |
|---|---|
| `:192` (2.5.1) | "ukuran teoretis model 4-bit adalah **12,5%**" |
| `:316` (2.5.7) | "ukuran berkas aktual mendekati **25%** dari FP32, bukan 12,5% … selisih tersebut dibahas pada Subbab 2.6.2" |
| `:344` (2.6.2) | "ukuran berkas aktual dapat berbeda … karena faktor skala disimpan … dan tidak seluruh parameter ikut dikuantisasi" |

Dua masalah:

**(a) Rujukan silang 2.5.7 → 2.6.2 tidak ditepati.** 2.5.7 menjanjikan bahwa selisih 12,5% vs 25% dibahas di 2.6.2, tetapi 2.6.2 hanya menyebut faktor skala dan "tidak seluruh parameter ikut dikuantisasi" — **tidak menyebut bit-packing sama sekali**. Pembaca yang mengikuti rujukan itu tidak menemukan penjelasannya.

**(b) Angka 25% hanya sah bila seluruh parameter dikuantisasi.** Model 124,5 juta parameter terdiri atas ±38,8 juta parameter embedding (50.000 × 768 + posisi + tipe token) dan ±84,9 juta parameter lapisan linear (12 × (4 × 768² + 2 × 768 × 3072)). Bila yang dikuantisasi hanya lapisan linear — praktik lazim pada weight-only PTQ — maka:

- embedding tetap FP32: 38,8 jt × 4 B = 155 MB
- linear INT4 dalam wadah 1 byte (tanpa bit-packing): 84,9 jt × 1 B = 85 MB
- total ≈ **240 MB = 48% dari 498 MB**, bukan 25%
- dengan bit-packing: 85 MB → 42 MB, total ≈ **198 MB = 40%**

Berkas rencana Anda sendiri (`bab2/03_sub6-8.md:17`) sudah menyebut "sebagian parameter tidak dikuantisasi (embedding/klasifier)" — tetapi kalimat itu tidak pernah masuk ke `chapter-2.tex`. Akibatnya Bab II sekarang menjanjikan efisiensi yang mungkin tidak akan terbukti di Bab IV, dan itu pertanyaan penguji yang paling mudah diprediksi: *"Anda mengecilkan model jadi 62 MB. Embedding-nya ikut dikuantisasi?"*

Perbaikan: di 2.5.4 (cakupan) atau 2.5.1, nyatakan **lapisan mana** yang dikuantisasi dan lapisan mana yang tetap FP32, lalu tulis ketiga angka dengan label eksplisit: 12,5% = batas teoretis bila semua parameter 4-bit **dan** dipadatkan; 25% = semua parameter 4-bit dalam wadah 1 byte; ±48% = hanya lapisan linear yang dikuantisasi tanpa bit-packing. Pilih satu sebagai angka yang akan Anda klaim di Bab IV dan sebut yang lain sebagai pembanding.

### T3. Sumbu "channel" tidak didefinisikan

`chapter-2.tex:280–285` mendefinisikan $s_j = \max(|W_j|)/(2^{b-1}-1)$ dengan "satu faktor skala untuk setiap channel $j$ dari tensor bobot", tanpa menyebut **sumbu mana** yang menjadi $j$. Ini bukan detail sepele: pada `nn.Linear` sumbu itu adalah baris (output channel), sedangkan proyeksi atensi BERT di HuggingFace memakai `Conv1D` dengan bobot berbentuk (in, out) sehingga sumbunya adalah kolom. Salah sumbu = per-channel berubah menjadi per-input-channel, hasilnya berbeda, dan penguji yang pernah mengimplementasikan kuantisasi akan menanyakannya. Tambahkan satu klausa: "yaitu sumbu keluaran lapisan (baris pada `nn.Linear`)".

### T4. Klaim "124,5 juta parameter" disitasi ke Wilie dkk. (2020)

`chapter-2.tex:67` mencantumkan 12 lapisan, hidden 768, 12 head, FFN 3072, kosakata 50.000, dan 124,5 juta parameter dengan satu sitasi `\parencite{wilie2020indonlu}`. Konfigurasi arsitektur memang dari paper itu, tetapi **angka 124,5 juta adalah hasil hitung dari checkpoint**, bukan angka yang dinyatakan Wilie dkk. Perbaiki dengan "…sehingga jumlah parameternya sekitar 124,5 juta berdasarkan penghitungan pada *checkpoint* model". Ini jenis kesalahan sitasi yang paling mudah ditembak karena bisa diperiksa langsung di model card.

### T5. Dua klaim tanpa sitasi di 2.4

`chapter-2.tex:120` ("model hasil pemangkasan umumnya perlu dilatih ulang untuk memulihkan akurasi") dan `:122` ("memerlukan proses pelatihan penuh") tidak diakhiri sitasi, padahal keduanya pernyataan empiris yang jadi dasar argumen memilih kuantisasi di `:126`. Tempelkan `\parencite{han2016deep}` dan `\parencite{hinton2015distilling}` di ujung kalimatnya.

### T6. Konsep "kuantisasi tersimulasi" hanya muncul di subbab metrik

Dekuantisasi-sebelum-komputasi (simulated quantization) adalah alasan mengapa latensi Anda tidak boleh diklaim membaik (`:342`). Konsep ini mestinya ada di 2.5 sebagai teori, bukan pertama kali muncul di 2.6.2 sebagai catatan kaki metodologis. Pindahkan/ perluas satu paragraf di 2.5.7: bit-packing → penyimpanan, dekuantisasi → komputasi, dan konsekuensinya pada latensi.

---

## 4. Tinjauan penelitian terdahulu (2.7.1) — yang kuat dan yang perlu dibenahi

Kuat: 8 studi, semua angka hasil verifikasi (Crossref/OpenAlex, tercatat di `bahan_justifikasi/verifikasi_penelitian_terdahulu.md`), tanda † dipakai jujur untuk 2 studi yang belum mencapai 5 sitasi, dan ada peringatan eksplisit bahwa angka antarbaris tidak dapat dibandingkan langsung (`:407`). Ini kualitas di atas rata-rata.

Yang perlu dibenahi:

1. **Urutan terbalik dari panduan** (`:393–400`). Panduan butir 7: "Urutan penulisan tinjauan penelitian dimulai dari yang paling relevan sampai ke penelitian yang kurang relevan." Baris 1–6 adalah studi GLUE/SQuAD berbahasa Inggris; dua studi paling relevan bagi Anda (IndoBERT, SQuAD-id) justru di baris 7–8. Balik urutannya: Ramaputra (SQuAD-id) → Abdurrahman (IndoBERT) → Zadeh (weight-only pada SQuAD) → Bai → Guo → Wei → Bondarenko → Kim.
2. **Tidak ada kolom tujuan/masalah.** Panduan menyarankan kolom nama–tahun–masalah–metode–hasil. Tabel Anda punya model, dataset, teknik, metrik, hasil — tetapi tidak apa masalah yang dipecahkan tiap studi, sehingga pembaca tidak bisa menilai apakah kekurangannya relevan.
3. **Baris 4 ambigu.** "pada SQuAD v1.1 unggul 4,73% (BERT) dan 15,55% (RoBERTa)" — unggul terhadap apa? Sebutkan pembandingnya (PTQ sebelumnya? baseline 8-bit?).
4. **Syarat (iii) dilanggar oleh dua baris yang tetap dipakai.** Anda menulis syarat "telah disitasi minimal lima penelitian lain", lalu mempertahankan Abdurrahman (1 sitasi) dan Ramaputra (0 sitasi) dengan tanda †. Secara jujur sudah dijelaskan di catatan tabel, tetapi syaratnya sendiri jadi tidak konsisten. Perbaiki redaksinya: "…telah disitasi minimal lima penelitian lain, **kecuali studi berbahasa Indonesia yang belum memiliki padanan dan ditandai †**". Angka "paling sedikit sembilan kali" yang Anda pakai sudah benar (batas bawah aktual keenam baris yang lolos adalah 9, yaitu Bai dkk. 2022) — jangan diubah.
5. **Celah ketiga bergantung pada satu studi.** "Uji signifikansi … belum dilaporkan" disandarkan pada Suhendra dkk. (2026) yang memakai bootstrap untuk dua model pralatih. Rumusannya sudah dipersempit dengan benar (kuantisasi vs baseline + koreksi perbandingan berganda), tetapi kalimatnya panjang dan mudah dipotong penguji. Pecah jadi dua kalimat pendek.

---

## 5. Kebahasaan khusus Bab II

Koreksi terhadap laporan umum sebelumnya: dua hal yang saya tandai di sana ternyata **tidak** melanggar setelah diperiksa ulang.
- `sebagai berikut` di `:47` dan `:209` keduanya memperkenalkan **rumus**, bukan merujuk posisi tabel/gambar — tidak melanggar butir 6 Daftar Pengecekan. (Yang melanggar justru `chapter-1.tex:34` dan `:52`.)
- `Selain itu` di `:120` dan `:126` adalah konjungsi antarkalimat yang sah menurut PUEBI; tidak ada di daftar terlarang Daftar Pengecekan. Biarkan.

Yang benar-benar tersisa di Bab II:

| Temuan | Lokasi | Perbaikan |
|---|---|---|
| Kalimat diawali `Karena` | `:38, 75, 240, 289, 342, 348` | `:75, 240, 289, 342` hilang sendiri setelah keputusan metode dipindah ke Bab III (T1/§2). `:38` → "Attention tidak memiliki urutan bawaan, sehingga …". `:348` → "Kedua model dievaluasi pada sampel uji yang sama, sehingga digunakan pengujian berpasangan." |
| Istilah asing tegak | `dataset` 22×, `token` 17×, `tensor` 13×, `baseline` 1× | Pilih satu kebijakan. `encoder` (7×) dan `span` (9×) sudah miring, jadi ketidakmiringan empat kata ini terbaca sebagai kelalaian, bukan pilihan. `bit` tegak sudah benar (ada di KBBI). |
| Judul subbab campur bahasa | 2.5 "Kuantisasi pada Neural Network", 2.5.2 "Konsep Dasar Quantization", 2.5.6 "Granularitas Quantization", 2.5.7 "…Representasi Bit-Width Rendah" | "Kuantisasi pada Jaringan Saraf Tiruan", "Konsep Dasar Kuantisasi", "Granularitas Kuantisasi", "…pada Representasi Lebar Bit Rendah". Daftar Pengecekan butir 3: utamakan padanan Indonesia. |
| `pra-latih` vs `pralatih` | `abstract-id.tex:24` vs 9× di Bab I–II | Seragamkan ke `pralatih` (bentuk gabung, seperti prasejarah). |
| `antar-\textit{channel}` | `:304` | `antar-channel`. |
| `di mana` sebagai penghubung | `:45` | Satu-satunya di seluruh naskah. Ganti dengan titik: "…adalah matriks proyeksi keluaran. Di sini $W_i^Q$ …" atau pakai "dengan". |
| Tiga `% TODO` terbuka | `:75` (fitur dataset), `:114` (lisensi), `:287` (opsi pustaka kuantisasi) | Selesaikan sebelum bab diserahkan; `:287` bergantung pada T3. |

---

## 6. Yang jangan diubah

- **Tiga belas persamaan, dan hampir semuanya diikuti kalimat yang menjelaskan untuk apa persamaan itu dipakai** (`:38, 45, 54, 63, 205, 223, 287`). Ini praktik yang justru diminta panduan dan sering tidak dilakukan mahasiswa lain. Pertahankan polanya saat menambah rumus baru.
- **Tabel 2.1** (karakteristik dataset) — satu-satunya tabel di Bab II yang datanya milik Anda sendiri dan diberi keterangan sumber; setelah T1 diperbaiki, tabel ini menjadi bukti kerja yang kuat.
- **2.7.2** — celah penelitian dipersempit dengan tepat (bukan "belum ada yang meneliti", tetapi "belum ada yang menguji signifikansi kuantisasi vs baseline dengan koreksi berganda"). Ini kalimat novelty terbaik di seluruh naskah.
- **Pemetaan istilah** coarse-grained = per-tensor, fine-grained = per-channel di `:287` — eksplisit, jadi tidak ada ambiguitas istilah antara Bab I dan Bab II.
- **Tabel 2.5 dengan `longtable` + header berulang** — kerjanya benar (halaman 23–24).

---

## 7. Prioritas perbaikan Bab II

| Prioritas | Pekerjaan | Estimasi |
|---|---|---|
| **P0** | T1: perbaiki definisi penyaringan data di `:23` agar cocok dengan Tabel 2.1 (atau tambah baris tabel) | 20 menit |
| **P0** | T2: nyatakan cakupan bobot yang dikuantisasi + rekonsiliasi 12,5% / 25% / ±48% di 2.5.1, 2.5.7, 2.6.2 | 1,5 jam |
| **P1** | §2: pindahkan 7 kalimat keputusan metode ke kerangka Bab III, sisakan kalimat bermodus teori | 1 jam |
| **P1** | T3: definisikan sumbu channel; T4: perbaiki sitasi 124,5 juta; T5: tempel 2 sitasi | 30 menit |
| **P1** | Tambah 1 paragraf tahapan kuantisasi end-to-end (kalibrasi → skala → kuantisasi → simpan → dekuantisasi) | 45 menit |
| **P2** | Urutkan ulang Tabel 2.5 (paling relevan di atas) + kolom tujuan/masalah | 45 menit |
| **P2** | Kebahasaan: `Karena` sisa, huruf miring, judul subbab, `antar-channel`, `di mana`, 3 TODO | 45 menit |
| **P2** | T6: pindahkan konsep kuantisasi tersimulasi ke 2.5.7 | 30 menit |

Total ± 6 jam. Setelah P0+P1 selesai, panjang Bab II naik dari 4.167 ke ± 4.600–4.800 kata prosa — tepat di dalam rentang target 4.500–5.000 yang Anda tetapkan sendiri, tanpa menambah subbab baru.

---

## 8. Enam pertanyaan yang paling mungkin muncul khusus Bab II

1. **"Embedding-nya ikut dikuantisasi?"** → T2. Jawabannya harus ada di 2.5.4, bukan di kepala Anda saat sidang.
2. **"Kenapa Tabel 2.1 data uji 4.225, bukan 4.857?"** → T1. Ini pertanyaan yang lahir dari tabel Anda sendiri.
3. **"Per-channel itu sepanjang sumbu apa?"** → T3.
4. **"Kalau bit-packing tidak dipakai, kenapa menyebut 12,5%?"** → T2; 12,5% adalah batas teoretis, bukan klaim hasil.
5. **"Kenapa tinjauan penelitian terdahulu diletakkan di akhir, bukan di awal seperti panduan?"** → §1; siapkan satu kalimat, atau pindahkan.
6. **"Bab II Anda berisi keputusan penelitian — bukankah itu tempatnya di metodologi?"** → §2; setelah dipindah, pertanyaan ini hilang.

---

Tidak ada berkas `.tex` yang saya ubah dalam penilaian ini.
