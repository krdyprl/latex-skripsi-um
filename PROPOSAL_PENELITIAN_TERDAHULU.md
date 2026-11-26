# Proposal Penelitian Terdahulu

Untuk Bab II §2.6 (Penelitian Terdahulu dan Celah Penelitian) — skripsi **Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia**.

Syarat yang kamu tetapkan: **dataset/metode/konteks tugas sama**, **disitasi minimal 5 paper lain**, **terbit maksimal 5 tahun terakhir** (jendela 2021–2026).

---

## 1. Ringkasan: aturan itu menggugurkan 4 dari 5 baris tabelmu sekarang

| Baris di `chapter-2.tex` sekarang | Tahun | Sitasi (OpenAlex) | Lolos? | Sebab |
|---|---|---|---|---|
| Hu dkk. (2022) | 2022 | **0** | ✘ | Hanya arXiv 2210.16621, nyaris tidak disitasi |
| Abdurrahman dkk. (2023) | 2023 | **1** | ✘ | Terlalu baru untuk terkumpul sitasinya |
| Han (2026) | 2026 | tidak terverifikasi | ✘ | PDF tidak ada, sitasi tidak bisa dicek |
| Sanjaya dkk. (2026) | 2026 | **0** | ✘ | Terbit 2026 |
| Ramaputra & Joddy (2026) | 2026 | **0** | ✘ | Terbit 2026 |

Kalau aturan pembimbing dijalankan apa adanya, tabel harus dibangun ulang dari paper 2021–2024 yang sudah mapan. Tapi ada konsekuensi yang perlu kamu sadari dan sampaikan ke pembimbing: **paper yang paling mirip konteksmu (kuantisasi × QA Indonesia) justru semuanya terbit 2023–2026 dan belum punya sitasi.** Kalau keempatnya dibuang, tabel kehilangan konteks Indonesia sama sekali dan klaim celah penelitian jadi tanpa dasar.

Solusi yang saya usulkan: **dua blok**. Blok A = pembanding utama yang lolos semua syarat (internasional, 2021–2024, ≥5 sitasi). Blok B = penelitian konteks Indonesia/terbaru, diberi keterangan eksplisit bahwa syarat sitasi belum terpenuhi karena kebaruan — bukan karena kualitas.

---

## 2. Blok A — lolos semua syarat (usulan 7 baris)

| No | Referensi | Tahun | Sitasi | Model | Dataset & tugas | Teknik | Kenapa masuk |
|---|---|---|---|---|---|---|---|
| 1 | Zadeh dkk., *Mokey: Enabling Narrow Fixed-Point Inference for Out-of-the-Box Floating-Point Transformer Models*, ISCA | 2022 | **36** | BERT-Base/Large, RoBERTa-Large, DeBERTa-XL | MNLI, STS-B, **SQuAD v1.1** (extractive QA) | **PTQ weight-only 4-bit** (indeks 4-bit ke dictionary centroid 16-bit), **tanpa fine-tuning** | **Paling dekat dengan skripsimu**: weight-only, 4-bit, BERT, SQuAD, tanpa retraining. Beda hanya bahasa & granularitas |
| 2 | *Towards Efficient Post-Training Quantization of Pre-Trained Language Models* (MREM), NeurIPS | 2022 | **28** | PLM (BERT-family) | GLUE, **SQuAD** | PTQ per-modul (module-wise reconstruction error minimization) | PTQ pada PLM dengan evaluasi SQuAD; pembanding "PTQ mendekati QAT" |
| 3 | Guo dkk., *OliVe: Accelerating Large Language Models via Hardware-friendly Outlier-Victim Pair Quantization*, ISCA | 2023 | **158** | BERT-Base/Large, BART-Base | GLUE (8 task), **SQuAD v1.1 & v2.0** | PTQ 4-bit **bobot + aktivasi** (W4A4), outlier-victim pair | PTQ 4-bit pada BERT dengan SQuAD; menunjukkan aktivasi adalah sumber utama penurunan → mendukung pilihanmu weight-only |
| 4 | Wei dkk., *Outlier Suppression: Pushing the Limit of Low-bit Transformer Language Models*, NeurIPS | 2022 | **46** | BERT, RoBERTa, BART | GLUE, **SQuAD v1.1 & v2.0**, summarization | PTQ 6-bit (Gamma Migration + Token-Wise Clipping) | Pertama yang mendorong PTQ BERT 6-bit ke level full-precision; baseline "seberapa jauh PTQ bisa tanpa QAT" |
| 5 | Kim dkk., *I-BERT: Integer-only BERT Quantization*, ICML | 2021 | **186** | BERT, RoBERTa | GLUE | Kuantisasi integer-only INT8 (W8A8) + aproksimasi GELU/Softmax/LayerNorm | Acuan kuantisasi BERT end-to-end; batas atas presisi 8-bit — kontras dengan 4-bit yang kamu uji |
| 6 | Bondarenko dkk., *Understanding and Overcoming the Challenges of Efficient Transformer Quantization*, EMNLP | 2021 | **85** | BERT-Base | GLUE | PTQ + QAT; **memperkenalkan per-embedding-group quantization** | **Satu-satunya di daftar ini yang menyentuh granularitas** pada encoder; dasar argumen coarse vs fine |
| 7 | Wu dkk., *Understanding INT4 Quantization for Transformer Models: Latency Speedup, Composability, and Failure Cases* | 2023 | **6** | BERT (encoder), encoder-decoder, decoder-only | GLUE-type task per arsitektur | INT4 W4A4 + pipeline inferensi | Bukti bahwa **encoder jauh lebih toleran INT4 daripada decoder** — justifikasi kenapa penelitianmu pada encoder masuk akal |

Catatan 2021: I-BERT dan Bondarenko terbit 2021, jadi **pas di batas** 5 tahun. Kalau pembimbing menghitung mundur dari 2026 secara ketat (2022–2026), keduanya gugur dan tersisa 5 baris (No. 1, 2, 3, 4, 7) — masih cukup untuk tabel.

Kandidat cadangan kalau butuh baris tambahan:
- **BinaryBERT** (ACL 2021, 106 sitasi) — binarisasi bobot BERT + aktivasi 8-bit, GLUE. Di luar jendela kalau batasnya 2022.
- **VS-Quant** (2021, 32 sitasi) — per-vector scale (granularitas), tapi domain visi.
- **4.6-Bit Quantization for Fast and Accurate Neural Network Inference on CPUs** (Trusov dkk., 2024, 6 sitasi) — per-channel & per-group, tapi CNN/CPU, bukan NLP.

---

## 3. Blok B — konteks Indonesia & terbaru (belum memenuhi syarat sitasi)

| No | Referensi | Tahun | Sitasi | Model | Dataset & tugas | Teknik | Kenapa tetap dipakai |
|---|---|---|---|---|---|---|---|
| 8 | Abdurrahman dkk., *Implementing Quantization to Indonesian BERT Language Model*, ICAICTA | 2023 | 1 | IndoBERT | 7 tugas IndoNLU, **termasuk FacQA (span extraction)** | PTQ & QAT; bobot 16/8/6/4-bit, aktivasi FP32 | Satu-satunya kuantisasi encoder **Indonesia** yang menyertakan tugas QA; PTQ 4-bit F1 72,78 vs 77,35 |
| 9 | Sanjaya dkk., *Quantization Effects on Explainability in Indonesian Transformer-Based Sentiment Analysis*, Procedia CS | 2026 | 0 | IndoBERT-base-p2 | SmSA (sentimen 3 kelas) | PTQ INT4 weight-only, **simetris, per-tensor** | Preseden langsung konfigurasi yang kamu pakai (per-tensor INT4 pada IndoBERT) |
| 10 | Ramaputra & Joddy, *Evaluating the Impact of Quantization on Indonesian Question Answering Performance in LLMs*, Procedia CS | 2026 | 0 | Qwen2.5, Gemma-3 | **SQuAD-id** (validasi, tanpa sampel tak terjawab) | W4A16 / W8A16 (AWQ, GPTQ) | **Satu-satunya kuantisasi × QA Indonesia**; temuannya (generative lebih robust dari extractive) adalah celah yang kamu isi |
| 11 | Han, *Where Post-Training Quantization Breaks Text Embedders* | 2026 | tidak terverifikasi | 5 checkpoint embedder | SciFact, NFCorpus, SkillRet (retrieval) | PTQ weight-only group-wise, variasi bit-width & group size | Satu-satunya yang membandingkan **granularitas** pada encoder — tapi PDF tidak ada, jadi belum bisa dipakai |

Kalau baris 11 tetap dipertahankan, dua dari tiga celah di §2.6-mu bergantung pada paper yang belum kamu pegang. Saran: unduh dulu, atau ganti sandaran celah ke-2 ke Bondarenko (No. 6) + Han hanya sebagai pelengkap.

---

## 4. Usulan susunan tabel final (8 baris)

Komposisi yang saya sarankan: **6 baris Blok A + 2 baris Blok B**, dengan catatan kaki untuk Blok B.

1. Mokey (2022) — weight-only 4-bit, BERT, SQuAD ← **pembanding utama**
2. PTQ4PLM/MREM (2022) — PTQ PLM, SQuAD
3. OliVe (2023) — PTQ 4-bit W+A, BERT, SQuAD
4. Outlier Suppression (2022) — PTQ 6-bit, BERT/RoBERTa, SQuAD
5. I-BERT (2021) — INT8 integer-only, GLUE
6. Bondarenko (2021) — PTQ + granularitas per-embedding-group, GLUE
7. Abdurrahman (2023) — IndoBERT, 7 tugas IndoNLU (FacQA) ← **konteks Indonesia**
8. Ramaputra & Joddy (2026) — SQuAD-id, W4A16 AWQ/GPTQ ← **konteks Indonesia + QA**

Wu dkk. (2023) dan Sanjaya (2026) saya sarankan **tidak masuk tabel** tetapi dipakai di narasi: Wu untuk kalimat "encoder lebih toleran INT4", Sanjaya untuk kalimat "PTQ INT4 per-tensor pada IndoBERT sudah ada di tugas sentimen".

Kalimat pengantar tabel yang bisa dipakai:
> Penelitian terdahulu dipilih dengan tiga syarat: (i) menerapkan post-training quantization tanpa pelatihan ulang, (ii) dievaluasi pada model encoder Transformer atau tugas question answering, dan (iii) terbit dalam lima tahun terakhir serta telah disitasi minimal lima penelitian lain. Penelitian bertanda † terbit pada 2023–2026 sehingga belum mengumpulkan sitasi; penelitian tersebut dipertahankan karena merupakan satu-satunya studi pada konteks bahasa Indonesia.

---

## 5. Yang ada di folder `bahan/` — dan kenapa tidak masuk tabel

Folder `bahan/` berisi 32 dokumen. Setelah disaring dengan ketiga syarat, hasilnya:

**Masuk (3 dokumen):** `I BERT Integer only BERT Quantization.pdf` (No. 5), `Understanding and Overcoming the Challenges of Efficient Transformer Quantization.pdf` (No. 6), `Understanding INT4 Quantization for Language Models…pdf` (No. 7 di blok A). Untuk Blok B: `Implementing_Quantization_to_Indonesian_BERT…pdf`, `quantization effectson explainability…pdf`, `Evaluating the Impact of Quantization on Indonesian Question Answering.pdf`.

**Gugur karena di luar jendela 5 tahun (6 dokumen)** — semua ini tetap dipakai sebagai sitasi teori, hanya tidak bisa jadi baris tabel:
BERT (2019), Q8BERT (2019), TernaryBERT (2020), IndoNLU (2020), Jacob dkk. integer-arithmetic-only (2018), FinBERT-QA (2020).

**Gugur karena bukan studi pembanding (18 dokumen):**
- Survei: `A Survey of Quantization Methods…` (Gholami) — dipakai sebagai teori, bukan pembanding eksperimen.
- LLM decoder / bukan encoder: CAT-Q, FPTQ, Sherry, Tequila, BitNet b.158, Binary and Ternary NLG, How Quantization Shapes Bias.
- Domain lain: CLIP, DAQuant (ViT), neural receiver (komunikasi).
- Fokus kalibrasi/analisis internal, bukan pembanding QA: AdaRound/small calibration sets, calibration data (Williams), outliers (Paglieri), CL-Calib (Shang), StablePTQ, flat minima, QAT-tradeoff (biomedis).
- Bukan artikel penelitian: `Deep Research…` (catatan riset), `Proposal Skripsi…Tafftadia` (proposal).

**Gugur karena sitasi belum cukup (3 dokumen):** Abdurrahman (1), Sanjaya (0), Ramaputra (0) — dipakai di Blok B dengan tanda †.

**Kesimpulan praktis:** folder `bahan/` hanya menyumbang **3 baris tabel** yang lolos syarat. Delapan baris sisanya harus diunduh dari luar.

---

## 6. Yang perlu diunduh (prioritas)

| Prioritas | Paper | Akses |
|---|---|---|
| 1 | Mokey (ISCA 2022) | PDF terbuka: `https://people.ece.ubc.ca/ameer/publications/Mokey-ISCA22-Paper.pdf` — **sudah saya baca, angka SQuAD-nya terverifikasi** |
| 2 | PTQ4PLM / MREM (NeurIPS 2022) | `https://doi.org/10.52202/068431-0103` (NeurIPS proceedings terbuka) |
| 3 | OliVe (ISCA 2023) | `https://arxiv.org/abs/2304.07493` |
| 4 | Outlier Suppression (NeurIPS 2022) | `https://arxiv.org/pdf/2209.13325` |
| 5 | Bondarenko (EMNLP 2021) | sudah ada di `bahan/` |
| 6 | I-BERT (ICML 2021) | sudah ada di `bahan/` |
| 7 | Wu dkk. INT4 (2023) | sudah ada di `bahan/` |
| 8 | Han (2026) | belum ditemukan aksesnya — perlu dari jurnal/kampus |

---

## 7. Angka yang sudah terverifikasi vs yang masih perlu diisi

**Terverifikasi langsung dari PDF:**
- Mokey, Tabel I: BERT-Large SQuAD **F1 93,15 (FP) → 93,17 (weight-only 4-bit) → 92,22 (weight+activation)**; RoBERTa-Large SQuAD **93,56 → 93,25 → 92,58**; BERT-Base MNLI **84,44 → 84,80 → 84,22**.
- OliVe: 4-bit PTQ **bobot + aktivasi** untuk BERT dan BART dengan penurunan akurasi **<1%**, mengungguli hasil 6-bit Outlier Suppression.
- Outlier Suppression: mendorong **PTQ 6-bit BERT ke level full-precision**; pada SQuAD v1.1 mengungguli metode lain **4,73% (BERT) dan 15,55% (RoBERTa)** pada 6-bit.
- Bondarenko, Tabel 1 (BERT-base GLUE): **83,06 (FP32) · 71,03 (W8A8) · 70,25 (W32A8) · 83,23 (W8A32)**.
- I-BERT: akurasi **setara atau sedikit lebih tinggi** dari full-precision pada GLUE; **speedup 2,4–4,0×** untuk INT8 di GPU T4.
- Wu dkk.: W4A4 **nyaris tanpa degradasi pada encoder**, turun signifikan pada decoder-only; pipeline **8,5× lebih cepat** (latency).

**Belum bisa diisi (PDF belum dipegang):** angka GLUE/SQuAD per task untuk PTQ4PLM, dan angka tabel Han (2026). Kalau baris itu dipakai, kolom "Hasil Utama" harus diisi setelah PDF-nya diunduh — jangan dikira-kira.

---

## 8. Catatan metode

- **Sumber angka sitasi:** OpenAlex API, dicek 23 Oktober 2026. OpenAlex **menghitung lebih rendah** daripada Google Scholar (mis. I-BERT 186 di OpenAlex vs ratusan di Scholar; GPTQ 196 vs ribuan). Kalau pembimbing mengecek di Google Scholar, angka di tabel akan terlihat lebih besar — sebutkan sumbernya di catatan kaki.
- **Syarat "dataset/metode/konteks sama"** saya terjemahkan jadi tiga tingkat: (i) weight-only PTQ pada encoder + tugas QA (paling dekat), (ii) PTQ pada encoder + tugas QA dengan cakupan bobot+aktivasi, (iii) PTQ pada encoder tanpa tugas QA. Baris 1–4 berada di tingkat (i)/(ii), baris 5–6 di tingkat (iii) dengan alasan masing-masing.
- **Dalam pencarian ini (korpus `bahan/` + indeks sitasi OpenAlex) tidak ditemukan paper 2021–2024 yang membandingkan per-tensor vs per-channel pada tugas QA.** Ini justru menguatkan celah ke-2 di §2.6-mu — dan sekarang bisa dinyatakan dengan aman karena pencariannya sudah dilakukan pada korpus + indeks sitasi, bukan hanya pada folder `bahan/`.
