# Report — Yang Butuh Verifikasi & Perhatian Khusus

Dibuat 23 Oktober 2026. Cakupan: skripsi *Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia* (IndoBERT + SQuAD-id).

Legenda: **P0** = harus beres sebelum eksperimen dilanjutkan · **P1** = sebelum Bab II/III difinalkan · **P2** = sebelum sidang.

---

## A. Data & dataset — paling kritis

| # | Yang perlu diverifikasi | Kenapa penting | Bukti / kondisi sekarang | Aksi | Prioritas |
|---|---|---|---|---|---|
| A1 | **Asal-usul `squad_id_train.jsonl` (130.319) dan `squad_id_testt.jsonl` (11.873)** | Angka itu **persis** jumlah SQuAD v2.0 resmi (train 130.319, validation 11.873 menurut dataset card Hugging Face). Artinya file ini terjemahan **penuh** SQuAD v2.0, termasuk pertanyaan tanpa jawaban | Dua angka cocok persis dengan SQuAD v2.0; belum jelas ini rilis Muis dkk. (2020), versi SEACrowd, atau versi lain yang sudah diperbaiki | Cek `origin_id` satu baris terhadap `train-v2.0.json` resmi; catat sumber + tanggal unduh + lisensi di Bab III | **P0** |
| A2 | **Status "test"** | `squad_id_testt.jsonl` = split **dev** SQuAD v2.0, bukan test held-out | Nama file "testt", jumlah 11.873 = dev resmi | Sebut sebagai *split uji turunan dev SQuAD v2.0* di Bab II/III, atau pakai sebagai validation dan bentuk test lain — pilih satu, jangan campur | **P0** |
| A3 | **Jumlah baris yang benar-benar dipakai** | Bab I membatasi evaluasi pada sampel berjawaban; 130.319 ≠ data efektif | Butuh hitungan `is_impossible == False` dan `is_data_invalid == False` dari EDA-mu | Ambil angkanya, laporkan di Bab III (tabel split), dan bandingkan dengan 85.776 (Matrik) / 102.657 (Muis) | **P0** |
| A4 | **Validitas span jawaban** | Kalau `context[start:start+len(answer)] != answer`, model dilatih dengan label yang salah → F1 turun bukan karena kuantisasi | Datasetmu punya field `answer_start_original`, `answer_start_recomputed`, `answer_start_recompute_note` → **sudah pernah diperbaiki oleh pembuatnya**, tapi belum kamu verifikasi | Hitung persentase span valid (`span_valid_%` di notebook). Target: >99%. Kalau di bawah, jalankan perbaikan Levenshtein (resep di `reports.md` §6) | **P0** |
| A5 | **Arti `is_answer_missing` dan `is_data_invalid`** | Dua flag ini menentukan filter; kalau salah tafsir, jumlah data di Bab III salah | Notebook hanya mendefinisikan secara umum ("ditandai tidak valid oleh proses pembersihan") | Buka dokumentasi pembuat dataset; tulis definisi operasionalnya di Bab III | **P1** |
| A6 | **Duplikat & kebocoran antar split** | Konteks yang sama muncul di train dan test akan menggelembungkan skor | Notebook sudah menyiapkan pemeriksaannya, hasil belum ada | Laporkan `%` konteks/pertanyaan test yang ada di train | **P1** |
| A7 | **Proporsi konteks > 512 token** | Menentukan kebutuhan sliding window dan berapa jawaban yang terpotong | Belum diukur | Ukur dengan tokenizer IndoBERT; laporkan p95 panjang konteks dalam token | **P1** |
| A8 | **Lisensi dataset** | Bab II sendiri mencatat lisensi belum jelas | Belum ada | Tentukan dari sumber (SEACrowd punya lisensi per-dataset) | **P2** |

---

## B. Angka yang harus masuk akal (sanity check)

| # | Patokan | Nilai pembanding | Kalau hasilmu jauh di bawah | Prioritas |
|---|---|---|---|---|
| B1 | **Baseline FP32 fine-tuning** | Matrik (2026) pada dataset yang sama: `indobert-base-p1` **F1 63,59 / EM 51,02**; `indolem/indobert-base-uncased` **F1 71,58 / EM 60,58** | Berarti ada bug di pipeline (span mapping, tokenizer, atau label), **bukan** efek kuantisasi. Jangan lanjut ke kuantisasi sebelum baseline wajar | **P0** |
| B2 | Jumlah data vs literatur | Muis: 114.604 pasangan → 102.657 train / 11.407 val / 10.536 test. Matrik: 85.812→85.776 train, 8.170→7.587 val | Selisih harus bisa dijelaskan (unanswerable dibuang? alignment dibersihkan?) | **P1** |
| B3 | **Klaim ukuran model 12,5%** | Teoretis 4-bit vs FP32 = 12,5%, tapi bobot INT4 umumnya disimpan sebagai int8 → nyatanya ~25%, ditambah faktor skala | Kalau klaim 12,5% dipakai tanpa penjelasan, mudah dipatahkan | **P1** |
| B4 | Klaim latensi | Kuantisasi tersimulasi (dequant → FP32 → hitung) tidak mempercepat inferensi | Jangan klaim speedup; tulis sebagai batasan (sudah ada di Batasan Masalah) | **P1** |

---

## C. Sitasi & klaim di Bab I–II

| # | Masalah | Lokasi | Status | Prioritas |
|---|---|---|---|---|
| C1 | `wu2023understanding` dipakai untuk klaim **granularitas** | `chapter-1.tex:28`, `chapter-2.tex:117` | Paper itu tidak membahas granularitas (0 kemunculan "granular") → **ganti** ke `gholami2021survey` (Bagian E) atau `bondarenko2021understanding` | **P1** |
| C2 | Tiga klaim lebih luas daripada kutipannya | `chapter-1.tex:20` (Transformer "representasi kontekstual"), `chapter-1.tex:20` (model bahasa multibahasa), `chapter-2.tex:56` (IndoBERT "memahami pertanyaan dan konteks") | Persempit kalimat atau tambah sumber | **P1** |
| C3 | **Tabel penelitian terdahulu: 4 dari 5 baris gugur syarat** (≥5 sitasi, ≤5 tahun) | Tabel 2.1 | Hu 2022 = 0 sitasi; Abdurrahman = 1; Sanjaya = 0; Ramaputra = 0. Hanya Han 2026 yang tidak bisa dicek (PDF tidak ada) | Susun ulang per `PROPOSAL_PENELITIAN_TERDAHULU.md` | **P1** |
| C4 | Angka tabel baris 1 & 3 belum terverifikasi | Tabel 2.1 | Baris 2, 4, 5 sudah cocok semua dengan PDF; baris 1 (Hu) & 3 (Han) belum | Unduh `hu2022` (arXiv 2210.16621) dan `han2026breaking` | **P1** |
| C5 | Sitasí dataset kurang satu | `chapter-2.tex:69` | Versi yang dipakai (ditata ulang + penanda kualitas) berciri **SEACrowd**, bukan hanya Muis dkk. | Tambah sitasi SEACrowd (EMNLP 2024) | **P1** |
| C6 | Judul bib `wu2023understanding` | `references.bib` | **Bukan kesalahan**: itu judul versi arXiv v1 (2301.12017). Versi terbit memakai "…for Language Models" | Samakan dengan PDF yang kamu pegang | **P2** |
| C7 | 14 klaim bertumpu pada PDF yang tidak ada di lokal | — | Daftar lengkap di `bahan_justifikasi/README.md` | Unduh 6 prioritas (Han, hu2022, Rajpurkar, Muis, Dror, Holm) | **P2** |

---

## D. Struktur & administrasi dokumen

| # | Yang kurang | Lokasi | Dampak | Prioritas |
|---|---|---|---|---|
| D1 | Judul, penulis, NIM, pembimbing, kata kunci masih placeholder | `src/config/informations.tex:7-25` | PDF skripsi tercetak dengan judul template | **P0** |
| D2 | **Ringkasan (abstract-id) masih topik lama**: PTQ INT4 untuk sentimen/topik finansial, IndoFinSent, Macro F1 | `src/chapters/abstract-id.tex` | Bertentangan langsung dengan judul; kalau ikut dicetak, terbaca sebagai skripsi lain | **P0** |
| D3 | Summary (abstract-en) masih `\blindtext` | `src/chapters/abstract-en.tex` | Sama | **P1** |
| D4 | Bab I belum punya **Manfaat Penelitian** | `chapter-1.tex` | Banyak pedoman mewajibkan; proposal temanmu punya | **P1** |
| D5 | Bab I belum punya **Metodologi** & **Sistematika Pembahasan** | `chapter-1.tex` | Alur penelitian tidak terbaca dari Bab I | **P1** |
| D6 | Bab II belum punya **Kerangka Berpikir** | akhir `chapter-2.tex` | Penutup bab yang lazim diminta | **P2** |
| D7 | 5 TODO menunggu data | `chapter-2.tex:71,73,75,115` | Wajar; jangan tertinggal | **P1** |
| D8 | Bab III masih placeholder penuh | `chapter-3.tex` | Belum ada metodologi eksperimen yang bisa dinilai | **P1** |

---

## E. Keputusan metodologis yang harus kamu ambil (dan tulis di Bab III)

| # | Keputusan | Kenapa perlu diputuskan sekarang | Rekomendasi |
|---|---|---|---|
| E1 | `max_length` dan `stride` untuk tokenisasi QA | Tanpa ini, hasil tidak bisa direproduksi dan jawaban panjang bisa terpotong | 384 / 128 (umum untuk SQuAD); laporkan p95 panjang konteks untuk mendukung pilihan |
| E2 | Perlakuan pertanyaan tanpa jawaban | Bab I sudah membatasi (dibuang), tapi angkanya belum ada | Buang, laporkan jumlahnya, dan sebutkan bahwa kemampuan "tidak bisa dijawab" tidak diuji |
| E3 | Uji signifikansi | Bab II sudah menulis paired bootstrap + Holm (m=3) | Pertahankan; opsi tambahan: **McNemar untuk EM** (EM biner per sampel) — preseden: proposal Tafftadia |
| E4 | Definisi operasional coarse vs fine | Pustaka seperti `torch.ao.quantization` memakai **per-channel untuk bobot sebagai bawaan** | Pastikan "coarse" benar-benar dipaksa per-tensor (bukan sekadar tidak mengubah default) |
| E5 | Jumlah run / seed | Matrik memakai 1 run + bootstrap; Tafftadia memakai 3 seed | Pilih satu dan nyatakan; kalau 1 run, jangan klaim variabilitas antar-run |

---

## F. Sudah beres — jangan dikerjakan ulang

- 62 klaim bersitasi Bab I–II dipetakan + kutipan verbatim + lokasi → `bahan_justifikasi/`
- Angka Tabel 2.1 baris 2, 4, 5 terverifikasi ke PDF (Abdurrahman, Sanjaya, Ramaputra)
- Angka Bondarenko (83,06 / 71,03 / 70,25 / 83,23) terverifikasi ke Tabel 1 papernya
- Angka Mokey terverifikasi ke PDF aslinya (SQuAD F1 93,15 → 93,17 weight-only → 92,22 weight+activation)
- Pemilahan 32 dokumen `bahan/` + alasan tiap keputusan → `Pemilahan_Dokumen.md`

---

## G. Ringkasan prioritas

**P0 (sebelum lanjut eksperimen):** A1, A2, A3, A4, B1, D1, D2
**P1 (sebelum Bab II/III final):** A5–A7, B2–B4, C1–C5, D3–D5, D7, D8, E1–E5
**P2 (sebelum sidang):** A8, C6, C7, D6
