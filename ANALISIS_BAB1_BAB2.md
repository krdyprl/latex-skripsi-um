# Analisis Bab I dan Bab II

Judul yang dianalisis: **Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia**

Berkas yang diperiksa: `src/chapters/chapter-1.tex` (62 baris), `src/chapters/chapter-2.tex` (183 baris), `src/chapters/abstract-id.tex`, `src/chapters/abstract-en.tex`, `src/config/informations.tex`, `src/references.bib`.

**Tidak ada satu pun berkas .tex yang saya ubah.** Dokumen ini murni analisis; semua rekomendasi menunggu persetujuanmu.

---

## 1. Ringkasan

Isi Bab I dan Bab II sudah **konsisten dengan judul**: weight-only PTQ 4-bit pada IndoBERT untuk extractive QA, dataset SQuAD-id, dua granularitas (per-tensor vs per-channel), metrik EM/F1 + ukuran model, dan uji signifikansi. Semua sitasi juga punya entri di `references.bib` (tidak ada key menggantung).

Yang belum beres ada dua jenis: **yang belum ada isinya** (metadata, ringkasan, dua subbab Bab I, beberapa baris tabel) dan **yang bukti sitasinya bermasalah** (2 sitasi tidak mendukung klaim, 3 klaim lebih luas dari kutipan, 14 klaim belum bisa dicek karena PDF-nya tidak ada).

Hasil verifikasi 62 klaim bersitasi (Bab I: 17, Bab II: 45) ke PDF aslinya:

| Status | Jumlah |
|---|---|
| Terverifikasi penuh | 39 |
| Terverifikasi lewat sumber sekunder | 2 |
| Sebagian | 2 |
| Klaim lebih luas dari kutipan | 3 |
| Sitasi tidak mendukung klaim | 2 |
| Belum bisa dicek (PDF tidak ada) | 14 |

Rincian per klaim ada di `bahan_justifikasi/justifikasi_bab1.md` dan `justifikasi_bab2.md`.

---

## 2. Yang belum ada

| # | Item | Lokasi | Dampak | Usul |
|---|---|---|---|---|
| 1 | Judul, penulis, NIM, pembimbing, kata kunci masih placeholder | `informations.tex` baris 7–25 | PDF skripsi tercetak dengan judul template — tidak bisa dipakai sebagai identitas | Isi manual; saya butuh nama, NIM, pembimbing I/II, bulan sidang dari kamu |
| 2 | Ringkasan (abstract-id) masih topik **lama**: PTQ INT4 untuk sentimen/topik finansial, 3 dataset (IndoFinSent dll), Macro F1 | `abstract-id.tex` | Bertentangan langsung dengan judul; kalau ikut dicetak, terbaca sebagai skripsi orang lain | Kamu isi sendiri (sudah kamu putuskan) |
| 3 | Summary (abstract-en) masih `\blindtext` + "English Translation of the Thesis Title" | `abstract-en.tex` | Sama seperti di atas | Menyusul setelah Ringkasan |
| 4 | **Subbab Metodologi dan Sistematika Pembahasan belum ada** | `chapter-1.tex` (hanya 4 section: Latar Belakang, Rumusan, Tujuan, Batasan) | Template ini sendiri menyebut Bab I memuat metodologi + sistematika pembahasan (`docs/TUTORIAL.md` baris 439). Tanpa itu, alur penelitian tidak terbaca dari Bab I, dan penguji biasanya menanyakan "langkah penelitiannya bagaimana?" | Usul: tambah 2 subbab (isi ringkas, tidak menduplikasi Bab III) — **menunggu persetujuanmu** |
| 5 | 5 TODO yang menunggu data eksperimen | `chapter-2.tex` baris 71, 73, 75, 115 | Wajar ditunda, tapi jangan sampai tertinggal saat Bab III jadi | Isi setelah dataset dimuat |
| 6 | 2 baris Tabel Penelitian Terdahulu tanpa PDF | Tabel 2.1 baris 1 (Hu dkk. 2022) dan 3 (Han 2026) | **Celah ke-2 dan ke-3 Bab II bertumpu pada Han 2026.** Tanpa PDF, dua dari tiga celah tidak bisa dipertahankan | Unduh `han2026breaking` dan `hu2022empirical` |
| 7 | Alasan memilih 4-bit belum dinyatakan | `chapter-1.tex` baris 26 ("perhatian difokuskan pada weight-only PTQ pada presisi 4-bit") | Penguji wajar bertanya "kenapa 4-bit, bukan 8-bit?" — saat ini jawabannya hanya tersirat di Bab II (ukuran teoretis 12,5%) | Usul: satu kalimat di Bab I yang menyebut 8-bit sudah banyak dievaluasi (Q8BERT, Abdurrahman) sementara 4-bit paling menantang |

---

## 3. Yang perlu diperbaiki (masalah bukti)

### 3.1 Sitasi tidak mendukung klaim — harus diganti

**`wu2023understanding` dipakai untuk klaim granularitas di dua tempat:**
- `chapter-1.tex` baris 28: "Perbedaan konfigurasi tersebut dapat menghasilkan pertukaran antara efisiensi penyimpanan dan kemampuan model dalam mempertahankan representasi bobot aslinya \parencite{wu2023understanding}"
- `chapter-2.tex` baris 117: kalimat pembuka paragraf yang sama

Paper Wu dkk. itu tentang kelayakan INT4 W4A4 — **kata "granular" tidak muncul satu kali pun di seluruh teksnya**. Jadi klaim granularitas tidak punya sandaran di situ. Pengganti yang benar dan sudah ada di korpus:
- `gholami2021survey` Bagian E "Quantization Granularity" — membahas layerwise vs channelwise vs groupwise, termasuk catatan bahwa channelwise menambah overhead penyimpanan skala. Ini paling pas untuk klaim trade-off-nya.
- `bondarenko2021understanding` — untuk per-embedding-group quantization.

### 3.2 Klaim lebih luas daripada kutipan — perlu dipersempit

| Klaim | Lokasi | Kutipan yang ada | Masalah |
|---|---|---|---|
| Transformer "mampu mempelajari representasi kontekstual dari teks" | `chapter-1.tex` baris 20 | "We propose a new simple network architecture, the Transformer, based solely on attention mechanisms…" | Kutipan membuktikan arsitekturnya, bukan klaim representasi kontekstual. Sumber yang tepat: Devlin (p14) atau Rogers dkk. (BERTology — ada di korpus tapi belum masuk `bahan/`) |
| "model bahasa tidak hanya dikembangkan untuk bahasa Inggris, tetapi juga … bahasa Indonesia" | `chapter-1.tex` baris 20 | "we introduce the first-ever vast resource … Indonesian natural language understanding (IndoNLU) tasks" | Kutipan soal resource/benchmark, bukan pernyataan umum tentang pengembangan multibahasa |
| IndoBERT "dapat dimanfaatkan untuk memahami pertanyaan dan konteks berbahasa Indonesia" | `chapter-2.tex` baris 56 | kutipan IndoBERT di IndoNLU | Ini inferensi, bukan kalimat penulis. Bisa disandarkan ke hasil FacQA (span extraction) di Tabel 22 IndoNLU |

### 3.3 14 klaim belum bisa dicek (PDF tidak ada di lokal)

`jurafsky2025speech` (buku), `rahali2023end`, `muis2020sequence`, `rajpurkar2016squad`, `dror2018hitchhiker`, `bergkirkpatrick2012`, `efron1993`, `holm1979`, `hu2022empirical`, `han2026breaking`.

Yang paling mendesak: **`han2026breaking`** (sandaran dua celah penelitian) dan **`muis2020sequence` + SEACrowd** (dataset utama).

### 3.4 Provenance dataset belum lengkap

Bab II baris 71 menyebut "versi SQuAD-id yang telah ditata ulang dan dikoreksi … penanda pertanyaan tanpa jawaban, penanda jawaban yang tidak ditemukan pada konteks, penanda data tidak valid, penanda saran pengecualian". Penanda seperti itu adalah ciri **kartu dataset SQuAD-id dari SEACrowd**, bukan paper Muis dkk. (2020) yang saat ini satu-satunya sitasi. Bukti pendukung ada di korpus: Ramaputra dkk. menulis "we use the SQuAD-id [12] dataset from SEACrowd [22]". Jadi sitasinya perlu ditambah SEACrowd.

Catatan tambahan: judul entri bib `muis2020sequence` adalah "Sequence-to-Sequence Learning for Indonesian Automatic Question Generator" — judul itu tidak menyiratkan SQuAD-id. Perlu dipastikan memang paper itu yang memperkenalkan SQuAD-id, atau ganti ke sumber yang benar.

### 3.5 Detail kecil di bib — sudah dicek, TIDAK ada masalah

Catatan awal saya keliru: judul `wu2023understanding` di `references.bib` ("…for **Transformer** Models") **memang judul versi arXiv v1** (arXiv:2301.12017). Versi terbitnya memakai "…for **Language** Models". Jadi entri bib tidak salah — cukup pastikan saja mana yang kamu kutip (v1 arXiv atau versi terbit) dan samakan dengan PDF yang kamu pakai.

---

## 4. Yang sudah kuat — jangan diutak-atik

- **Angka Tabel 2.1 baris 2, 4, 5 cocok semua** dengan tabel di PDF aslinya (Abdurrahman: F1 72,78 / 77,35 / 74,94, ukuran 59,75 vs 474,72 MB; Sanjaya: 92,9/93,1%, 92,7/93,0, 230/475 MB, 32,7/25,1 ms; Ramaputra: EM 48,61→44,73/43,80 dan 42,05→42,15/42,34). Tanda † di tiga baris itu **sudah bisa dihapus**. Rincian di `bahan_justifikasi/verifikasi_tabel_terdahulu.md`.
- **Angka Bondarenko di `chapter-2.tex` baris 99** (83,06 / 71,03 / 70,25 / 83,23) cocok persis dengan Tabel 1 papernya, dan tabel itu memang hasil PTQ — jadi klaim "kuantisasi bobot saja hampir sama dengan FP32" punya dasar kuat.
- **Rumus skala dan granularitas** (Persamaan 2.1–2.4) konsisten dengan literatur; rumus yang sama dipakai Sanjaya dkk. (`s = max(|w|)/(2^{b-1} − 1)`), jadi implementasimu bisa dipertanggungjawabkan.
- **Batasan masalah** sudah tajam: 8 butir, termasuk "tidak menerapkan QAT" dan "tidak mengembangkan kernel presisi rendah". Ini yang biasanya menyelamatkan dari pertanyaan "kenapa tidak sekalian QAT?".
- **Struktur analisis celah** (3 celah, masing-masing menunjuk paper tertentu) sudah bagus dan jarang ada di skripsi S1.

---

## 5. Risiko saat sidang (pertanyaan yang mungkin muncul)

1. **"Kenapa 4-bit, bukan 8-bit?"** — belum dijawab eksplisit di Bab I (lihat item 2.7).
2. **"Kalau weight-only, kenapa ukuran model tidak 12,5%?"** — sudah kamu jawab di Bab II baris 117 & 137 (faktor skala + parameter yang tidak dikuantisasi). Ini justru kekuatan; pastikan angka aktualnya nanti dilaporkan berdampingan dengan 12,5% teoretis.
3. **"Apa bedanya dengan Sanjaya dkk. yang juga INT4 di IndoBERT?"** — jawaban siap: beda tugas (sentimen vs extractive QA), beda granularitas (mereka hanya per-tensor; kamu membandingkan per-tensor vs per-channel), dan mereka tidak menguji signifikansi.
4. **"Dasar klaim 'belum ditemukan' itu apa?"** — dua dari tiga celah bertumpu pada Han (2026) yang PDF-nya belum kamu pegang. Siapkan bukti penelusuran (tanggal pencarian, basis data, kata kunci) supaya klaim "dalam penelusuran penulis" bisa dipertanggungjawabkan.
5. **"Per-channel itu default di pustaka, jadi apa yang kamu sebut coarse?"** — `chapter-2.tex` baris 115 sudah punya TODO untuk menyamakan dengan opsi pustaka. Ini harus benar-benar dicek: di `torch.ao.quantization`, bobot default-nya per-channel. Kalau kamu memakai default, "coarse" harus dipaksa eksplisit per-tensor.
6. **"Kenapa sampel tanpa jawaban dibuang?"** — sudah dibatasi di Bab I dan dijelaskan di Bab II baris 27. Aman.

---

## 6. Rekomendasi, urut prioritas

**P1 — perlu keputusanmu dulu (saya tidak mengerjakan tanpa izin):**
1. Isi `informations.tex` (judul sudah ada; saya butuh nama/NIM/pembimbing/bulan).
2. Tambah subbab Metodologi + Sistematika Pembahasan di Bab I.
3. Perbaiki 2 sitasi `wu2023understanding` → `gholami2021survey` (atau `bondarenko2021understanding`).
4. Persempit 3 klaim di 3.2, atau tambah sumbernya.

**P2 — perlu bahan yang belum ada:**
5. Unduh: `han2026breaking`, `hu2022empirical`, `rajpurkar2016squad`, `muis2020sequence` (+ SEACrowd), `dror2018hitchhiker`, `holm1979`. Setelah masuk, saya bisa verifikasi 14 klaim yang masih menggantung.
6. Tambah sitasi SEACrowd untuk dataset.

**P3 — penguatan (opsional):**
7. Satu kalimat di Bab I yang menjelaskan alasan pemilihan 4-bit.

Untuk penyusunan ulang Tabel Penelitian Terdahulu, lihat dokumen terpisah: `PROPOSAL_PENELITIAN_TERDAHULU.md`.

---

## 7. Lampiran

- Peta 62 klaim: `bahan_justifikasi/justifikasi_bab1.md`, `bahan_justifikasi/justifikasi_bab2.md`
- Verifikasi angka Tabel 2.1: `bahan_justifikasi/verifikasi_tabel_terdahulu.md`
- Salinan beku catatan korpus: `bahan_justifikasi/sumber/`
- Tabel review 32 dokumen (versi hidup): `D:\KEJARCEPATTTT\quantization\paper\sudah dipilih\Tabel_Review_Bahan.md`
