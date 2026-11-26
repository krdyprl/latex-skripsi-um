# Verifikasi Enam Sumber Uji dan Metrik (Tugas B3 + B4)

Diperbarui 25 Oktober 2026. Berkas ini menutup dua tugas yang sebelumnya tertunda: **B3** (14 klaim yang belum bisa dicek karena PDF-nya tidak ada di lokal) dan **B4** (mengunduh enam PDF prioritas).

Nomor halaman di bawah adalah **halaman PDF**, bukan halaman jurnal. Kutipan ditulis persis seperti hasil ekstraksi teks, termasuk ligatur `ﬁ` dan `ﬂ` yang muncul pada beberapa PDF.

---

## 1. Berkas yang berhasil diunduh

| Sumber | Berkas | Halaman | Status akses |
|---|---|---|---|
| Rajpurkar dkk. 2016 (SQuAD) | `sumber/rajpurkar2016.pdf` | 10 | arXiv 1606.05250, terbuka |
| Rajpurkar dkk. 2018 (SQuAD 2.0) | `sumber/rajpurkar2018.pdf` | 9 | arXiv 1806.03822, terbuka |
| Dror dkk. 2018 | `sumber/dror2018.pdf` | 10 | ACL Anthology P18-1128, terbuka |
| Berg-Kirkpatrick dkk. 2012 | `sumber/bergkirkpatrick2012.pdf` | 11 | ACL Anthology D12-1091, terbuka |
| Muis & Purwarianti 2020 | tidak diunduh | 6 | IEEE Xplore berbayar |
| Holm 1979 | tidak diunduh | 6 | JSTOR berbayar |

Dua sumber terakhir tidak dapat diunduh. Untuk keduanya, verifikasi dilakukan pada sumber sekunder yang otoritatif, dan hasilnya dicatat pada bagian 3.

---

## 2. Verifikasi klaim per klaim

### 2.1 Rajpurkar dkk. 2016 — definisi SQuAD, EM, F1, dan normalisasi

| # | Klaim di naskah | Halaman | Kutipan verbatim | Putusan |
|---|---|---|---|---|
| 1 | SQuAD adalah *benchmark* QA dengan jawaban berupa *span* teks dari paragraf Wikipedia | 1 (abstrak) | "a new reading comprehension dataset consisting of 100,000+ questions posed by crowdworkers on a set of Wikipedia articles, where the answer to each question is a segment of text from the corresponding reading passage" | Sesuai |
| 2 | EM adalah proporsi jawaban yang persis sama dengan jawaban acuan | 7 | "Exact match. This metric measures the percentage of predictions that match any one of the ground truth answers exactly." | Sesuai |
| 3 | F1 adalah tumpang tindih *token* antara prediksi dan jawaban acuan | 7 | "F1 score. This metric measures the average overlap between the prediction and ground truth answer. We treat the prediction and ground truth as bags of tokens, and compute their F1." | Sesuai |
| 4 | EM dan F1 adalah metrik standar evaluasi SQuAD | 7 | "We use two different metrics to evaluate model accuracy." | Sesuai |
| 5 | Normalisasi membuang tanda baca | 7 | "Both metrics ignore punctuations and articles (a, an, the)." | Sesuai |
| 6 | Normalisasi mengubah huruf menjadi huruf kecil | 7 | tidak ada pernyataan tentang kapitalisasi di seluruh artikel | **Tidak sesuai, kalimat dikoreksi** |
| 7 | Skor diambil dari jawaban acuan terbaik | 7 | "We take the maximum F1 over all of the ground truth answers for a given question, and then average over all of the questions." | Sesuai |

Catatan butir 6: artikel hanya menyebut tanda baca dan kata sandang. Pengubahan huruf menjadi huruf kecil memang dilakukan skrip evaluasi resmi SQuAD, tetapi bukan pernyataan artikel. Kalimat di `chapter-2.tex` (2.6.1) diubah menjadi:

> Sebelum dibandingkan, jawaban prediksi dan jawaban acuan dinormalisasi dengan menghapus tanda baca dan kata sandang (Rajpurkar dkk., 2016). Skrip evaluasi resmi SQuAD menambahkan pengubahan huruf menjadi huruf kecil dan penyeragaman spasi, dan prosedur itulah yang dipakai penelitian ini.

Kalimat padanannya di `chapter-3.tex` (3.2.7) diselaraskan dengan redaksi yang sama.

### 2.2 Rajpurkar dkk. 2018 — pertanyaan tanpa jawaban

| # | Klaim di naskah | Halaman | Kutipan verbatim | Putusan |
|---|---|---|---|---|
| 8 | SQuAD v2.0 menambahkan pertanyaan yang tidak memiliki jawaban pada konteks | 1 (abstrak) | "systems must not only answer questions when possible, but also determine when no answer is supported by the paragraph and abstain from answering" | Sesuai |
| 9 | Sebagian sampel SQuAD v2.0 tidak memiliki jawaban pada konteks | 1 | "forces models to understand when a question cannot be answered given the context" | Sesuai |

### 2.3 Dror dkk. 2018 — perlunya uji signifikansi dan uji McNemar

| # | Klaim di naskah | Halaman | Kutipan verbatim | Putusan |
|---|---|---|---|---|
| 10 | Perbedaan teramati belum tentu perbedaan yang sesungguhnya | 1 | "Yet, the experimental differences might be coincidental. Here comes statistical signiﬁcance testing into the picture: we have to make sure that the probability of falsely concluding that one algorithm is better than the other is very small." | Sesuai |
| 11 | Uji signifikansi diperlukan agar perbedaan teramati dapat dibedakan dari variasi acak | 1 | sama dengan butir 10 | Sesuai |
| 12 | McNemar dipakai untuk nilai biner berpasangan | 5 | "McNemar's test (McNemar, 1947) This test is designed for paired nominal observations (binary labels). The test is applied to a 2 × 2 contingency table, which tabulates the outcomes of two algorithms on a sample of n examples." | Sesuai |

### 2.4 Berg-Kirkpatrick dkk. 2012 — *paired bootstrap*

| # | Klaim di naskah | Halaman | Kutipan verbatim | Putusan |
|---|---|---|---|---|
| 13 | *Paired bootstrap* mengambil sampel ulang berpasangan untuk menguji selisih skor | 2 | "We use the paired bootstrap1 (Efron and Tibshirani, 1993) because it is one …" | Sesuai |
| 14 | Prosedur *bootstrap* bersumber pada Efron & Tibshirani 1993 | 2 | sama dengan butir 13, catatan kaki 1 merujuk "Efron and Tibshirani, 1993" | Sesuai |

Kutipan butir 13 juga menjelaskan alasan pemilihan uji, yaitu bahwa penulis memilih *paired bootstrap* alih-alih *approximate randomization* karena metode terakhir tidak cocok untuk hipotesis yang diuji.

### 2.5 McNemar 1947 — rujukan prosedur

| # | Klaim | Verifikasi | Putusan |
|---|---|---|---|
| 15 | McNemar, Q. (1947). *Note on the Sampling Error of the Difference Between Correlated Proportions or Percentages*. Psychometrika 12(2), 153–157 | Crossref: DOI `10.1007/BF02295996`, volume 12, nomor 2, halaman 153–157, tahun 1947 | Sesuai, DOI ditambahkan ke `references.bib` |

---

## 3. Dua sumber yang diverifikasi lewat sumber sekunder

### 3.1 Muis & Purwarianti 2020 — asal *dataset* SQuAD-id

PDF IEEE tidak dapat diakses, sehingga verifikasi memakai kartu *dataset* SEACrowd untuk `squad_id`, yaitu sumber yang mendistribusikan data yang dipakai penelitian ini.

Kutipan dari kartu *dataset* (`huggingface.co/datasets/SEACrowd/squad_id`):

> "This dataset contains Indonesian SQuAD v2.0 dataset (Google-translated). The dataset can be used for automatic question generation (AQG), or machine reading comphrehension(MRC) task."

> "If you are using the **Squad Id** dataloader in your work, please cite the following: @inproceedings{muis2020sequence, title={Sequence-to-sequence learning for indonesian automatic question generator}, author={Muis, Ferdiant Joshua and Purwarianti, Ayu}, booktitle={2020 7th International Conference on Advance Informatics: Concepts, Theory and Applications (ICAICTA)}, pages={1--6}, year={2020}, organization={IEEE}}"

Putusan: klaim "SQuAD-id dibentuk dari terjemahan mesin SQuAD v2.0" **sesuai**, dan sitasi ke `muis2020sequence` **sah** karena kartu *dataset* resmi menunjuk artikel itu sebagai sumber. Perlu dicatat bahwa artikel tersebut berjudul tentang *automatic question generator*, bukan tentang pembuatan *dataset*. Bila penguji menanyakan hal ini, jawabannya: data yang sama dipakai penulis untuk tugas *question generation* dan *machine reading comprehension*, dan artikel itulah yang ditunjuk sebagai sumber resmi data.

### 3.2 Holm 1979 — koreksi perbandingan berganda

Teks penuh berbayar dan tidak ditemukan salinan terbuka. Yang dapat diverifikasi:

- Catatan bibliografi: *Scandinavian Journal of Statistics* 6(2), 65–70, 1979. Rujukan ini tidak memiliki DOI karena terbit sebelum penomoran DOI berlaku untuk jurnal tersebut.
- Prosedur yang dipakai naskah, yaitu pengurutan nilai $p$ lalu pembandingan berurutan dengan ambang $\alpha/(m-i+1)$, adalah prosedur Holm yang baku dan juga dijelaskan pada literatur uji signifikansi NLP yang terbuka.

Putusan: **sitasi dipertahankan**, tetapi statusnya "terverifikasi bibliografis, teks penuh belum dibaca". Bila penguji meminta, siapkan salinan dari perpustakaan.

---

## 4. Tiga kesalahan yang ditemukan dan diperbaiki

| # | Kesalahan | Akibat bila dibiarkan | Perbaikan |
|---|---|---|---|
| 1 | Entri `bergkirkpatrick2012` memuat catatan `% TODO: verifikasi nomor halaman di ACL Anthology (D12-1082)`, dan ID itu ternyata milik artikel lain ("No Noun Phrase Left Behind", Lin dkk.) | PDF yang diunduh dari ID tersebut bukan artikel yang disitasi, sehingga kutipan tidak akan ditemukan | ID dikoreksi menjadi **D12-1091**, ditambah alamat terbit dan URL Anthology. Halaman 995–1005 sudah benar sejak awal |
| 2 | Klaim normalisasi menyebut "mengubah huruf menjadi huruf kecil" dengan sitasi Rajpurkar dkk. 2016 | Artikel tidak memuat pernyataan itu, sehingga kutipan tidak akan ditemukan penguji | Kalimat dipecah: tanda baca dan kata sandang disitasi ke artikel, pengubahan huruf kecil dinyatakan sebagai prosedur skrip evaluasi resmi |
| 3 | Entri `rajpurkar2018squad` mencantumkan `booktitle` prosiding ACL utama | SQuAD 2.0 terbit pada volume *System Demonstrations*, bukan *long papers* | `booktitle` dikoreksi dan DOI `10.18653/v1/P18-2124` ditambahkan |

Perbaikan tambahan: DOI ditambahkan pada `mcnemar1947`, `dror2018hitchhiker`, dan `lovenia2024seacrowd`, serta URL pada `rajpurkar2016squad`. Satu koma yang hilang sebelum medan `url` pada entri `rajpurkar2016squad` juga diperbaiki karena membuat biber berhenti dengan kesalahan sintaksis.

---

## 5. Hasil compile setelah perbaikan

- `pdflatex` + `biber`: **0 error**, **0 sitasi undefined**, **0 rujukan undefined**.
- Daftar pustaka menampilkan Berg-Kirkpatrick dkk. (2012) dengan halaman 995–1005 dan URL Anthology yang benar.

---

## 6. Sisa pekerjaan

| Hal | Status |
|---|---|
| 15 klaim di atas | Terverifikasi dengan kutipan dan halaman |
| Holm 1979 teks penuh | Belum, berbayar. Sitasi dipertahankan dengan status "terverifikasi bibliografis" |
| Muis 2020 teks penuh | Belum, berbayar. Klaim *dataset* terverifikasi lewat kartu SEACrowd |
| `han2026breaking` dan `hu2022empirical` | Tidak lagi disitasi di Bab I–III, sehingga klaim yang bergantung padanya sudah tidak ada. Kedua entri masih ada di `references.bib` dan tidak akan muncul di daftar pustaka selama tidak disitasi |
