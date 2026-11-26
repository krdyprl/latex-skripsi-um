# Verifikasi Penelitian Terdahulu (Tabel 2.3)

Dicek 24 Oktober 2026. Dua syarat yang diuji: **(a) disitasi minimal 5 penelitian lain**, dan **(b) konteks metode/dataset/metrik sesuai** dengan skripsi (weight-only PTQ pada encoder/QA, metrik EM–F1).

Sumber angka sitasi: **Crossref** (`is-referenced-by-count`, diakses per DOI) dan **OpenAlex** (`cited_by_count`) sebagai pembanding. Google Scholar tidak dapat diakses otomatis dari lingkungan ini; angkanya biasanya lebih tinggi daripada kedua sumber tersebut, jadi angka di bawah adalah batas bawah.

## 1. Ringkasan

| No | Referensi | Tahun | Sitasi | Lolos (a) ≥5 | Konteks (b) | Lolos (b) |
|---|---|---:|---|---|---|---|
| 1 | Zadeh dkk. (Mokey) | 2022 | **36** (Crossref) | ✅ | BERT + SQuAD v1.1, weight-only 4-bit, F1 | ✅ |
| 2 | Bai dkk. (MREM) | 2022 | **9** (Crossref) | ✅ | PLM (BERT) + GLUE & SQuAD, PTQ, EM/F1 | ✅ |
| 3 | Guo dkk. (OliVe) | 2023 | **154** (Crossref) | ✅ | BERT/BART + GLUE & SQuAD v1.1/v2.0, PTQ 4-bit | ✅ (cakupan bobot+aktivasi) |
| 4 | Wei dkk. (Outlier Suppression) | 2022 | **14** (Crossref) | ✅ | BERT/RoBERTa/BART + GLUE & SQuAD, PTQ 6-bit | ✅ (cakupan bobot+aktivasi) |
| 5 | Kim dkk. (I-BERT) | 2021 | **186** (OpenAlex) | ✅ | BERT + GLUE, INT8 integer-only | ⚠️ encoder, tanpa QA |
| 6 | Bondarenko dkk. | 2021 | **72** (Crossref) | ✅ | BERT + GLUE, PTQ/QAT, per-embedding-group | ⚠️ encoder, tanpa QA |
| 7 | Abdurrahman dkk. | 2023 | **1** (Crossref) | ❌ | IndoBERT + 7 tugas IndoNLU (FacQA = span extraction), F1 | ✅ |
| 8 | Ramaputra & Joddy | 2026 | **0** (Crossref, DOI 10.1016/j.procs.2026.08.289) | ❌ | SQuAD-id, W4A16 AWQ/GPTQ, EM/F1 | ✅ (model decoder-only) |

**Kesimpulan:** 6 dari 8 baris lolos syarat sitasi; 2 baris (Abdurrahman, Ramaputra) tidak, dan keduanya sudah diberi tanda †. Empat baris lolos kedua syarat sekaligus (No. 1–4). Dua baris lolos sitasi tetapi konteks tugasnya hanya GLUE (No. 5–6); keduanya dipertahankan karena menjadi dasar teori encoder dan granularitas, dan kolom "Dataset dan Tugas" sudah menyebut GLUE secara eksplisit sehingga tidak menyesatkan pembaca.

## 2. Bukti konteks per baris

### No. 1 — Zadeh dkk. (2022), Mokey — ISCA
- **Sitasi:** 36 (Crossref, DOI 10.1145/3470496.3527438).
- **Teknik:** kuantisasi bobot dan embedding menjadi indeks 4-bit ke *dictionary* `centroid` 16-bit, **tanpa fine-tuning** — persis kategori *weight-only PTQ*.
- **Dataset:** MNLI, STS-B, SQuAD v1.1.
- **Hasil terverifikasi dari PDF (Tabel I):** BERT-Large SQuAD F1 **93,15 (FP) → 93,17 (weight-only) → 92,22 (weight + activation)**; RoBERTa-Large SQuAD 93,56 → 93,25 → 92,58.
- **Catatan:** ini baris paling dekat dengan skripsi — weight-only, 4-bit, BERT, SQuAD.

### No. 2 — Bai dkk. (2022), MREM — NeurIPS
- **Sitasi:** 9 (Crossref, DOI 10.52202/068431-0103).
- **Teknik:** PTQ per modul (meminimalkan galat rekonstruksi tiap modul), tanpa pelatihan ulang penuh.
- **Dataset & metrik (kutipan dari paper):** *"we report accuracies on both the matched section and mis-matched sections of MNLI, and EM (exact match) and F1 score for SQuAD"* → metrik EM/F1 untuk SQuAD, akurasi untuk GLUE. Kolom "Metrik" pada tabel sudah benar.
- **Hasil:** penulis menyatakan hasilnya mendekati QAT dengan biaya pelatihan jauh lebih rendah.

### No. 3 — Guo dkk. (2023), OliVe — ISCA
- **Sitasi:** 154 (Crossref, DOI 10.1145/3579371.3589038).
- **Teknik:** PTQ 4-bit untuk **bobot dan aktivasi** (W4A4) dengan *outlier-victim pair*. Bukan weight-only — kolom Teknik sudah menyebut "bobot dan aktivasi".
- **Dataset (kutipan):** *"We evaluate BERT-base, BERT-large, and BART-base … on eight datasets of the GLUE benchmark. In addition, we evaluate BERT-base and BART-base on the summarization tasks SQuAD v1.1 and SQuAD v2.0"*.
- **Hasil:** penurunan akurasi <1% pada 4-bit; mengungguli PTQ 6-bit Outlier Suppression (dari abstrak).

### No. 4 — Wei dkk. (2022), Outlier Suppression — NeurIPS
- **Sitasi:** 14 (Crossref, DOI 10.52202/068431-1265).
- **Teknik:** PTQ 6-bit dengan *gamma migration* dan *token-wise clipping*; mengkuantisasi bobot, embedding, dan aktivasi (notasi 4-4-8 dan sejenisnya).
- **Dataset & metrik:** GLUE, SQuAD v1.1/v2.0, XSum/CNN-DailyMail. Tabel hasil SQuAD mencantumkan pasangan angka (mis. `88.28/80.82`) yang merupakan pasangan EM/F1.
- **Hasil:** PTQ BERT 6-bit mencapai level *full-precision*; pada SQuAD v1.1 unggul 4,73% (BERT) dan 15,55% (RoBERTa) dibanding metode lain.

### No. 5 — Kim dkk. (2021), I-BERT — ICML
- **Sitasi:** 186 (OpenAlex; paper PMLR tidak punya DOI Crossref).
- **Teknik:** kuantisasi *integer-only* INT8 (W8A8) + aproksimasi GELU/Softmax/LayerNorm.
- **Dataset:** GLUE saja. **Tidak ada tugas QA** → konteks tugas tidak sama; kolom tabel sudah menulis "GLUE" apa adanya.
- **Hasil:** akurasi setara atau sedikit lebih tinggi dari FP32; *speedup* 2,4–4,0× pada T4.

### No. 6 — Bondarenko dkk. (2021) — EMNLP
- **Sitasi:** 72 (Crossref, DOI 10.18653/v1/2021.emnlp-main.627).
- **Teknik:** PTQ dan QAT, memperkenalkan ***per-embedding-group quantization*** — inilah sumber argumen granularitas pada Bab II.
- **Dataset:** GLUE (BERT-base). Tidak ada QA.
- **Hasil (Tabel 1):** GLUE 83,06 (FP32), 71,03 (W8A8), 70,25 (W32A8), 83,23 (W8A32).

### No. 7 — Abdurrahman dkk. (2023) — ICAICTA
- **Sitasi:** 1 (Crossref, DOI 10.1109/ICAICTA59291.2023.10390159) → **tidak lolos syarat**, tetap dipakai dengan tanda †.
- **Konteks:** IndoBERT pada 7 tugas IndoNLU termasuk **FacQA** (span extraction) — satu-satunya studi kuantisasi encoder Indonesia yang menyertakan tugas QA.
- **Hasil:** PTQ 4-bit F1 72,78 vs 77,35 (FP32); QAT 4-bit 74,94; ukuran 59,75 MB vs 474,72 MB.

### No. 8 — Ramaputra & Joddy (2026) — Procedia Computer Science
- **Sitasi:** 0 (Crossref, DOI 10.1016/j.procs.2026.08.289) → **tidak lolos syarat**, tetap dipakai dengan tanda †.
- **Konteks:** SQuAD-id, PTQ weight-only W4A16/W8A16 (AWQ, GPTQ), metrik EM/F1 — konteks paling dekat, tetapi modelnya LLM *decoder-only*.
- **Hasil:** Qwen2.5-14B EM 48,61 → 44,73 (AWQ) / 43,80 (GPTQ); Qwen2.5-7B 42,05 → 42,15 / 42,34.

## 3. Dua baris yang dikeluarkan dari tabel

| Referensi | Alasan keluar |
|---|---|
| Hu dkk. (2022), *Empirical Evaluation of PTQ Methods for Language Tasks* | Konteks cocok (PTQ, BERT, SQuAD), tetapi hanya arXiv (2210.16621) dengan **0 sitasi** di Crossref maupun OpenAlex. Digantikan Mokey yang lebih kuat (weight-only murni, 36 sitasi). |
| Han (2026), *Where PTQ Breaks Text Embedders* | **PDF tidak dapat diakses**; sitasi tidak dapat diverifikasi; konteks tugasnya *retrieval embedding*, bukan QA. Klaim celah yang tadinya bertumpu pada paper ini sudah dipindahkan ke Bondarenko (2021) dan Suhendra dkk. (2026). |

## 4. Konsekuensi untuk teks Bab II

- Kalimat pada 2.7.1 sudah menyatakan tiga syarat pemilihan; tambahan kalimat batas bawah sitasi ("paling sedikit sembilan kali") membuat syarat itu dapat diperiksa pembaca.
- Kolom "Dataset dan Tugas" untuk No. 5 dan 6 harus tetap menyebut **GLUE** (bukan QA) agar tidak menyesatkan.
- Kalau nanti PDF Han (2026) diperoleh dan sitasinya ≥5, baris itu bisa dimasukkan kembali — tetapi klaim celah tidak boleh bergantung padanya.
