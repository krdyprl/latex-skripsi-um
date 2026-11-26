# Penilaian Naskah Skripsi terhadap Dua Dokumen Acuan

Tanggal penilaian: 24 Oktober 2026
Naskah yang dinilai: `D:\KEJARCEPATTTT\if-itb-latex\src` (kompilasi bersih: 51 halaman, 0 error)
Dokumen acuan:

1. `judge/Panduan Penulisan Laporan Skripsi AC-RIG UM 2021.pdf` — acuan **isi dan struktur bab** (Bab I–VII, komponen latar belakang, syarat tinjauan, dsb.)
2. `judge/Daftar Pengecekan Penulisan Skripsi v2.0.pdf` — acuan **kebahasaan dan tata tulis** (13 butir)

Catatan: Daftar Pengecekan disusun oleh Putra Pandu Adikara (UB) dan Panduan oleh Fitra A. Bachtiar (AC-RIG UM). Keduanya dipakai sebagai rubrik. Satu konflik antar keduanya dicatat di §4 butir 11.

---

## 1. Hasil penilaian

| Cakupan | Skor | Status |
|---|---|---|
| **Naskah utuh (Bab I–V + bagian awal)** | **61 / 100** | Belum layak diserahkan sebagai skripsi |
| **Bab I–II saja (bahan bimbingan substantif)** | **82 / 100** | Sudah layak dibahas dengan pembimbing |
| Kebahasaan (Daftar Pengecekan 13 butir) | 11 lulus · 2 sebagian | 85 / 100 |

Kesimpulan satu kalimat: **isi Bab I–II sudah kuat dan berbasis sitasi yang rapi, tetapi naskah belum bisa disebut skripsi karena 3 dari 5 bab masih templat, Ringkasan berisi penelitian orang lain (domain finansial), dan 5 halaman bagian awal masih teks contoh.**

Rincian per dimensi:

| Dimensi | Bobot | Skor | Alasan utama |
|---|---|---|---|
| Kesesuaian struktur bab dengan Panduan | 25% | 40 | 5 bab vs 7 bab panduan; Metodologi & Implementasi tidak ada sebagai bab |
| Kelengkapan Bab I | 15% | 75 | Tidak ada paragraf kajian & kekurangan penelitian; Sistematika Penulisan tidak ada |
| Kelengkapan Bab II | 20% | 82 | Teori tuntas & bersitasi; tetapi memuat keputusan metode (dilarang panduan), tinjauan terbalik urutannya |
| Kesiapan naskah (bagian awal, ringkasan, lampiran) | 15% | 20 | Ringkasan salah topik, Summary/Kata Pengantar/Lampiran/Riwayat Hidup masih lorem ipsum |
| Kebahasaan & PUEBI | 15% | 85 | Bersih dari kata tidak baku; tersisa kata hubung di awal kalimat & inkonsistensi huruf miring |
| Penyajian tabel/gambar/rumus & sitasi | 10% | 80 | Tabel rapi & semua dirujuk; nomor halaman DAFTAR ISI salah, nama penulis terpenggal |

---

## 2. Daftar Pengecekan v2.0 — 13 butir

| No | Butir | Status | Bukti / temuan |
|---|---|---|---|
| 1 | Spasi tanda baca | ✅ | 0 temuan spasi sebelum `, ; : .` pada Bab I, Bab II, Ringkasan. Tanda hubung & garis miring juga bersih. |
| 2 | Imbuhan *di-* vs kata depan *di* | ✅ | 0 temuan `dimana`, `di gunakan`, `di lakukan`. Bentuk berimbuhan + istilah asing sudah benar: `di-\textit{fine-tune}` (`chapter-2.tex:248`). |
| 3 | Istilah asing dicetak miring | ⚠️ **Sebagian** | `encoder` (7×) dan `span` (9×) sudah miring, tetapi `dataset` **22×**, `token` **17×**, `tensor` **13×**, `baseline` **1×** ditulis tegak di Bab II. Tidak konsisten. Juga `pra-latih` (`abstract-id.tex:24`) vs `pralatih` (9× di Bab I–II). |
| 4 | Kata baku / typo | ⚠️ **Sebagian** | Bersih dari `analisa`, `mempengaruhi`, `hipotesa`, `inputan`, `silahkan`, `syaraf`, `ranking`, `perangkingan`. Sisa: `performa` (`abstract-id.tex:24`, pada ringkasan yang isinya salah topik) dan `antar-\textit{channel}` (`chapter-2.tex:304`) yang sebaiknya `antar-channel` tanpa spasi/hyphen ganda. |
| 5 | Diksi "di mana / yang mana / di antaranya" | ⚠️ **Sebagian** | `chapter-2.tex:45` memakai `di mana` sebagai penghubung ("…, di mana $W_i^{Q}$ …"). Hanya 1 kemunculan, mudah diperbaiki. `yang mana` dan `di antaranya` tidak ditemukan. `antara lain` di `chapter-1.tex:20` sebaiknya `antara lain:`. |
| 6 | Kata hubung di awal kalimat | ❌ **Gagal** | `Karena` mengawali kalimat di `chapter-2.tex:38, 75, 240, 289, 342, 348`. Frasa rujukan posisional `sebagai berikut` di `chapter-1.tex:34, 52`. (Dua `sebagai berikut` di `chapter-2.tex:47, 209` memperkenalkan rumus, bukan merujuk posisi tabel/gambar, jadi tidak melanggar; `Selain itu` adalah konjungsi antarkalimat yang sah.) |
| 7 | Tabel, caption, rujukan silang | ✅ | 5 tabel & 7 gambar Bab II semuanya ber-`\caption` dan dirujuk lewat `\ref`; tidak ada "Tabel 2.1 berikut". Header Tabel 2.5 berulang di halaman lanjutan (hal. 24). Sumber tabel dicantumkan. |
| 8 | Angka desimal & ribuan | ✅ | Koma untuk desimal (`93,15`, `124,5`), titik untuk ribuan (`130.319`, `61.359`) konsisten. |
| 9 | Singkatan & kepanjangan | ✅ | EM, F1, PTQ, QAT, MLM, NSP, MB dikembangkan pada kemunculan pertama dengan pola "kepanjangan (singkatan)". Sisa kecil: FP32/INT8/INT4 tidak pernah dieja (masih dapat diterima karena nama format), `GPU T4` di Tabel 2.5 tanpa keterangan. |
| 10 | Ruang kosong & widow/orphan | ⚠️ **Sebagian** | Tidak ada halaman setengah kosong di Bab I–II (halaman terakhir Bab II, hal. 25, terisi Gambar 2.7). Yang ada: (a) halaman **DAFTAR GAMBAR bernomor "1"** lalu Bab I mulai di halaman 2 — cacat penomoran, lihat §5 P0-6; (b) `chapter-5.tex` melimpah 1 baris ke halaman berikutnya (akan hilang saat bab ditulis). |
| 11 | Sitasi & daftar rujukan | ✅ dengan 3 catatan | biblatex + biber gaya APA, 27 kunci disitasi, **0 kunci menggantung**, 18 entri `.bib` tidak tersitasi (tidak ikut tercetak, jadi bukan cacat PDF, tapi rapikan). Nomor halaman entri "Daftar Rujukan" di DAFTAR ISI tertulis 36 padahal sebenarnya 34 (§5 P0-7). Konflik gaya: Daftar Pengecekan meminta Harvard-Anglia Ruskin, sedangkan templat & Pedoman UM memakai APA — **konfirmasikan ke pembimbing**, jangan diubah tanpa arahan. |
| 12 | Rumusan masalah ↔ kesimpulan | ❌ **Belum dapat dinilai** | RQ berbentuk pertanyaan (benar, 3 butir), tetapi Bab V masih templat sehingga tidak ada kesimpulan yang menjawabnya. Tambahan: **RQ-1 dan RQ-2 tumpang tindih** (keduanya membandingkan tiga konfigurasi dengan EM/F1), lihat §5 P1-1. |

---

## 3. Kesesuaian isi dengan Panduan AC-RIG per bab

| Bab panduan | Isi yang disyaratkan | Kondisi naskah |
|---|---|---|
| Judul | 8–12 kata, tanpa singkatan, tanpa "berbasis", memuat metode + tujuan + objek, kata hubung huruf kecil | ⚠️ 11 kata (lolos), tetapi **"Bahas Indonesia"** seharusnya "Bahasa Indonesia" (`informations.tex:9`), `Untuk` ditulis kapital, dan unsur **tujuan/evaluasi** tidak muncul |
| Abstrak/Ringkasan | 250–400 kata; masalah + metode + hasil; 3–5 kata kunci | ❌ Isi Ringkasan adalah **penelitian lain**: analisis sentimen finansial, IndoFinSent, Twitter, FP16/INT8/INT4, Macro F1 — tidak berhubungan dengan Bab I (`abstract-id.tex:24`). Masih ada penanda `[hasil eksperimen]`. Kata kunci masih `kata kunci satu, kata kunci dua, kata kunci tiga` (`informations.tex:29`). Panjang 205 kata (< 250). |
| Bab I — Latar Belakang | 6 komponen: Ko, Ma, Ka (4–6 kajian), Ku, So, Ra | ⚠️ Ko/Ma/So/Ra ada dan runtut (7 paragraf). **Ka dan Ku tidak ada sebagai paragraf**: kajian sebelumnya hanya tersebar sebagai sitasi satu kalimat, tidak ada paragraf yang menjabarkan tujuan–metode–hasil 4–6 penelitian lalu kekurangannya. Urgensi juga belum dikuantifikasi (tidak ada angka ukuran model di Bab I, padahal tersedia di `chapter-2.tex:128`). |
| Bab I — Rumusan Masalah | Kalimat tanya, hindari "bagaimana cara", satu RQ satu eksperimen | ⚠️ Bentuk sudah benar. RQ-1 dan RQ-2 hampir sama (lihat §5 P1-1). |
| Bab I — Tujuan | Sinkron 1:1 dengan RQ | ✅ Sinkron, 3 butir berurutan sama. |
| Bab I — Manfaat | Bukan ulangan tujuan, sebut pihak penerima | ✅ Menyebut pengembang, praktisi, penelitian lanjutan. Butir 1 manfaat teoretis masih mengulang celah, bukan manfaat. |
| Bab I — Sistematika Penulisan | Wajib, spesifik per bab | ❌ **Tidak ada.** Bab I berakhir di Batasan Masalah (`chapter-1.tex:68–80`). |
| Bab II — Tinjauan penelitian sebelumnya | ≥5 kajian, memuat tujuan/metode/hasil, urut dari paling relevan, ditutup perbedaan & novelty | ⚠️ 8 baris di Tabel 2.5 + narasi celah di 2.7.2 (kuat, angka terverifikasi). Dua cacat: (a) **urutan terbalik** — studi paling relevan (IndoBERT, SQuAD-id) justru di baris 7–8, sedangkan panduan minta paling relevan di awal; (b) tabel tidak punya kolom **tujuan/masalah** penelitian, hanya model–dataset–teknik–metrik–hasil. |
| Bab II — Landasan teori | Lengkap, umum → khusus, definisi + tahapan + formula, bersitasi, **hanya teori (usulan peneliti di Bab III)** | ⚠️ Mutu teori tinggi: 7 subbab, 14 anak subbab, 8 rumus, tiap rumus diberi kalimat "untuk apa". **Pelanggaran aturan "hanya teori"**: banyak keputusan penelitian ditulis di Bab II — `chapter-2.tex:77` (pembentukan data validasi), `:126` (memilih kuantisasi), `:192` (batas 4-bit), `:240` (skema simetris dipilih), `:316` (tidak memakai bit-packing), `:364` (B=10.000, α=0,05), `:366` (Holm, m=3). |
| Bab III — Metodologi | Diagram alir, tipe penelitian, lokasi, peralatan, studi literatur, subjek, pengumpulan data, preprocessing, implementasi metode, pengujian & analisis | ❌ Bab III berjudul "Analisis dan Perancangan" dan **seluruhnya templat** (`chapter-3.tex:27,35,60,64,66` = `\blindtext`), 0 sitasi, 2 tabel contoh dari CSV (`Tabel 3.1`, `Tabel 3.2`). |
| Bab IV — Perancangan | Identifikasi masalah, flowchart algoritme, **manualisasi**, perancangan pengujian | ❌ Tidak ada. Perancangan melebur dalam judul Bab III, isinya templat. |
| Bab V — Implementasi | Cuplikan kode/pseudocode, Courier New 9 pt, dijelaskan per baris | ❌ Tidak ada sama sekali (tidak ada babnya). |
| Bab VI — Hasil dan Pembahasan | Hasil per RQ + analisis "kenapa", dikaitkan teori & penelitian sebelumnya | ❌ Bab IV "Evaluasi dan Pembahasan" masih templat (`chapter-4.tex:27,35,45,49,51,60`). |
| Bab VII — Penutup | Kesimpulan menjawab tiap RQ, saran | ❌ Bab V templat (`chapter-5.tex:26,34`). |
| Lampiran | Data/prosedur/kode, dirujuk dari teks | ❌ Lampiran 1 & 2 dan Riwayat Hidup masih lorem ipsum (`appendix-1.tex:16`, `appendix-2.tex:16`, `biography.tex`). |

**Ketidaksesuaian struktur yang paling menentukan:** panduan memisahkan **Metodologi (Bab III)**, **Perancangan (Bab IV)**, **Implementasi (Bab V)**, sedangkan templat yang dipakai hanya 5 bab (Analisis & Perancangan / Evaluasi & Pembahasan / Penutup). Untuk skripsi non-implementatif (evaluasi kuantisasi), yang paling perlu diputuskan bersama pembimbing: apakah Metodologi dijadikan bab tersendiri (panduan) dan Implementasi dilipat ke dalamnya, atau struktur 5 bab dipertahankan dengan penjelasan eksplisit.

---

## 4. Temuan berprioritas

### P0 — menghalangi penyerahan (harus beres sebelum bimbingan berikutnya)

| # | Temuan | Lokasi | Perbaikan |
|---|---|---|---|
| P0-1 | **Ringkasan berisi penelitian orang lain** (analisis sentimen finansial, 3 dataset finansial, FP16/INT8/INT4, Macro F1). Tidak satu pun istilah inti Bab I muncul. | `chapters/abstract-id.tex:24` | Tulis ulang 250–400 kata: masalah (ukuran IndoBERT 124,5 jt parameter) → metode (weight-only PTQ 4-bit per-tensor vs per-channel, SQuAD-id, EM/F1, McNemar + paired bootstrap + Holm) → hasil. |
| P0-2 | **Summary (Inggris) masih `\blindtext`** dan judulnya "English Translation of the Thesis Title". | `chapters/abstract-en.tex:17,23` | Terjemahan Ringkasan yang baru + judul Inggris yang benar. |
| P0-3 | **Judul salah ketik**: "…BAHAS INDONESIA". Juga `Untuk` kapital. | `config/informations.tex:9` | "Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia" (atau varian dengan kata "Evaluasi" agar unsur tujuan muncul). |
| P0-4 | **Kata kunci masih placeholder** di Ringkasan dan Summary. | `config/informations.tex:29–30` | 3–5 kata: kuantisasi pasca-pelatihan, granularitas, IndoBERT, extractive question answering, SQuAD-id. |
| P0-5 | **Bab III, IV, V seluruhnya templat** (`\blindtext`), termasuk 2 tabel contoh CSV yang ikut muncul di DAFTAR TABEL. | `chapter-3.tex`, `chapter-4.tex`, `chapter-5.tex` | Susun kerangka isi sesuai §3; hapus `Tabel 3.1`/`Tabel 3.2` contoh. |
| P0-6 | **Penomoran halaman romawi rusak**: halaman DAFTAR GAMBAR tercetak "1" (seharusnya xiii) sehingga Bab I mulai di halaman 2. | `thesis.tex:44–50` | Sisipkan `\clearpage` sebelum `\pagenumbering{arabic}`. |
| P0-7 | **Nomor halaman DAFTAR ISI salah**: "Daftar Rujukan … 36" padahal halaman 34; muncul entri "Lampiran … 36" tanpa isi. | `thesis.tex:60–61, 73` | Pindahkan `\addcontentsline{toc}{chapter}{Daftar Rujukan}` ke **sebelum** `\printbibliography`; hapus/benahi entri "Lampiran". |
| P0-8 | **Kata Pengantar, Lampiran 1–2, Riwayat Hidup masih teks instruksi/lorem ipsum.** | `forewords.tex:18`, `appendix-1.tex:16`, `appendix-2.tex:16`, `biography.tex` | Tulis isi sebenarnya atau keluarkan dari `thesis.tex` sampai siap. |

### P1 — cacat substantif yang akan ditanyakan penguji

| # | Temuan | Lokasi | Perbaikan |
|---|---|---|---|
| P1-1 | **RQ-1 dan RQ-2 tumpang tindih.** RQ-1 meminta perbandingan tiga konfigurasi pada EM/F1; RQ-2 meminta "perbedaan kinerja model terkuantisasi terhadap FP32 untuk setiap granularitas" — itu perbandingan yang sama. | `chapter-1.tex:36–37` | Tegaskan pembeda: RQ-1 = deskripsi tingkat kinerja (absolut), RQ-2 = selisih/penurunan relatif terhadap FP32 per granularitas. Kalau tidak bisa dibedakan, gabungkan jadi 2 RQ (kinerja + signifikansi). |
| P1-2 | **Bab I tidak punya paragraf kajian (Ka) dan paragraf kekurangan (Ku)** sesuai panduan AC-RIG. | `chapter-1.tex:18–30` | Tambah 1 paragraf 4–6 kajian (tujuan–metode–hasil) dan 1 paragraf kekurangannya, atau eksplisit menyatakan bahwa kajian dirangkum di 2.7 lalu beri satu paragraf jembatan. |
| P1-3 | **Sistematika Penulisan tidak ada.** | `chapter-1.tex` (akhir) | Tambah subbab 1.6 Sistematika Penulisan yang menyebut isi spesifik tiap bab, bukan deskripsi generik. |
| P1-4 | **Bab II memuat keputusan metode** (data validasi, pilihan skema, B=10.000, Holm m=3, "penelitian ini tidak memakai bit-packing"). Panduan: Bab II hanya teori. | `chapter-2.tex:77, 126, 192, 240, 316, 364, 366` | Pindahkan keputusan ke Bab III (Metodologi). Di Bab II sisakan satu kalimat konsekuensi, mis. "bit-packing tidak diterapkan pada penelitian ini sehingga ukuran berkas ≈25% FP32" (§P2). |
| P1-5 | **Urgensi Bab I tidak berangka.** Tidak ada satu pun angka ukuran model/kompresi di latar belakang. | `chapter-1.tex:24–26` | Sisipkan 498 MB (FP32) → 62 MB (INT4) dan konsekuensinya bila tidak diselesaikan. Angka sudah ada di `chapter-2.tex:128`. |
| P1-6 | **Kata hubung di awal kalimat** (`Karena` 6×) dan **`sebagai berikut`** (2×, di Bab I saja). | lihat §2 butir 6 | Ganti "Karena X, Y" → "X menyebabkan Y" / "Oleh karena itu"; buang "sebagai berikut" dan rujuk langsung `Tabel~\ref{}`. |
| P1-7 | **Inkonsistensi huruf miring istilah asing**: `dataset` 22×, `token` 17×, `tensor` 13× tegak; sementara `encoder`, `span`, `weight-only` miring. | `chapter-2.tex` (menyeluruh) | Pilih satu kebijakan: miringkan semua istilah asing non-KBBI, atau pakai padanan (`himpunan data`, `tanda`/`token` miring). Lakukan sekali lewat `replace all` dengan format. |
| P1-8 | **Nama penulis terpenggal hyphenation**: "Jura-fsky", "Gho-lami". | teks Bab I–II | Tambah `\hyphenation{Jurafsky Gholami Rajpurkar Vaswani}` di preamble. |

### P2 — perbaikan mutu

| # | Temuan | Lokasi |
|---|---|---|
| P2-1 | Urutan Tabel 2.5 terbalik: studi paling relevan (IndoBERT, SQuAD-id) di baris 7–8, panduan minta paling relevan di awal. | `chapter-2.tex:393–400` |
| P2-2 | Tabel 2.5 tidak punya kolom tujuan/masalah penelitian; panduan menyarankan nama–tahun–masalah–metode–hasil. | `chapter-2.tex:378–382` |
| P2-3 | 4 penanda `% TODO` masih terbuka (fitur dataset, lisensi, opsi pustaka kuantisasi). | `chapter-2.tex:75, 114, 287` |
| P2-4 | 18 entri `references.bib` tidak pernah disitasi (sisa proyek lain: `feng2020codebert`, `lu2021codexglue`, `zhou2019devign`, `waseem2025vibecodingpracticeflow`, dll.). | `references.bib` |
| P2-5 | 3 `Overfull \hbox` kecil (2,5 pt; 5,9 pt; 12 pt) + peringatan `fancyhdr` headheight. | `thesis.log` |
| P2-6 | `pra-latih` (ringkasan) vs `pralatih` (bab) — samakan. | `abstract-id.tex:24` vs `chapter-1.tex`, `chapter-2.tex` |
| P2-7 | "antara lain IndoBERT" sebaiknya "antara lain: IndoBERT". | `chapter-1.tex:20` |
| P2-8 | `antar-\textit{channel}` → `antar-channel`. | `chapter-2.tex:304` |
| P2-9 | Butir 1 Manfaat Teoritis mengulang celah penelitian, bukan manfaat. | `chapter-1.tex:56` |

---

## 5. Pertanyaan yang kemungkinan besar ditembakkan penguji

1. "RQ-1 dan RQ-2 bedanya apa?" → harus dijawab oleh rumusan masalah yang dibedakan tegas (P1-1).
2. "Kenapa 4-bit, bukan 8-bit atau 3-bit?" → Bab II sudah punya alasannya (`chapter-2.tex:146`), tetapi belum ada justifikasi eksplisit "karena 8-bit sudah banyak dilaporkan, 4-bit adalah batas praktis"; siapkan 2 kalimat.
3. "Kalau bit-packing tidak dipakai, apa artinya klaim efisiensi ukuran model?" → sudah dijawab di `chapter-2.tex:316`, tapi jawaban itu ada di Bab II (tempat yang salah menurut panduan). Pindahkan ke Metodologi.
4. "Kenapa uji signifikansi perlu, bukannya cukup melihat selisih F1?" → `chapter-2.tex:348–366` sudah siap.
5. "Kenapa McNemar untuk EM dan bootstrap untuk F1?" → sudah ada (`:350–357`), pastikan juga muncul di Metodologi.
6. "Kenapa data tanpa jawaban dibuang?" → `chapter-1.tex:77` dan `chapter-2.tex:23` sudah menjawab; pastikan konsisten dengan angka 61.359/4.225 di Tabel 2.1.
7. "Apa bedanya penelitian Anda dengan Abdurrahman (2023) yang juga PTQ IndoBERT 4-bit?" → dijawab di 2.7.2 (tugas span extraction vs 7 tugas IndoNLU, plus granularitas + signifikansi). Ini pertanyaan paling berbahaya; pertajam kalimatnya.
8. "Mengapa memilih per-tensor dan per-channel, bukan per-group?" → Tabel 2.4 menyiapkan jawabannya, tetapi belum ada kalimat pemilihan di tempat yang benar.
9. "Manualisasi perhitungannya mana?" → panduan Bab IV mewajibkan; belum ada sama sekali.
10. "Kesimpulan Anda apa?" → belum ada (Bab V templat).

---

## 6. Urutan kerja yang disarankan

1. **Hari ini (1–2 jam, tanpa mikir isi):** P0-3 judul, P0-4 kata kunci, P0-6 penomoran halaman, P0-7 DAFTAR ISI, hapus `Tabel 3.1/3.2` contoh.
2. **Setengah hari:** P0-1 Ringkasan ditulis ulang (250–400 kata) → P0-2 Summary terjemahannya.
3. **Satu hari:** P1-2, P1-3, P1-5 (Bab I: paragraf kajian + kekurangan, Sistematika, angka urgensi) dan P1-1 (bedakan RQ).
4. **Satu hari:** P1-4 pindahkan keputusan metode Bab II → kerangka Bab III, sekalian menyusun kerangka Bab III sesuai daftar 11 komponen panduan.
5. **Berikutnya:** Bab III Metodologi (diagram alir + peralatan + preprocessing + pengujian), baru setelah eksperimen berjalan Bab IV dan V.
6. **Terakhir, sekali jalan:** P1-6, P1-7, P1-8 dan P2 (kebahasaan & kerapian), lalu kompilasi ulang dan periksa 3 halaman bergambar tabel dengan mata.

Yang **tidak** saya ubah: tidak ada satu pun berkas `.tex` yang saya sunting. Semua temuan di atas berbasis pembacaan dan kompilasi ulang (`pdflatex` 3×, `biber`, 51 halaman, 0 error), bukan perkiraan.
