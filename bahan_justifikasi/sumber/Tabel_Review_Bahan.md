# Tabel Review Bahan — Tujuan, Metode, Hasil + Kutipan Terverifikasi

Sumber: folder `bahan/` (32 dokumen). Setiap isi tabel disertai kutipan pendek verbatim dan lokasi bagiannya.

Aturan yang dipakai: bila informasi tidak ada di artikel, ditulis **tidak disebutkan** (tidak diisi dengan tebakan).
Setiap kutipan sudah diuji ulang secara mekanis terhadap teks hasil ekstraksi PDF (pencocokan string, case-insensitive); hasil uji ada di kolom *Verifikasi* tiap entri dan di rekap Lampiran 1.

Catatan lokasi: nomor halaman mengikuti halaman PDF (bukan nomor halaman jurnal). Kutipan sebagian besar diambil dari Abstrak karena di situlah penulis merumuskan tujuan–metode–hasil secara eksplisit; kutipan di luar abstrak diberi lokasi bagiannya.


## Ringkasan 32 dokumen

| No | File | Kelompok | Relevansi |
|---|---|---|---|
| 1 | A Survey of Quantization Methods for Efficient Neural Network Inference.pdf | A | PTQ + granularitas (layerwise/coarse vs channelwise/fine) |
| 2 | Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference.pdf | A | Dasar skema kuantisasi integer-only (rumus scale/zero-point) yang dipakai hampir semua PTQ |
| 3 | Q8BERT_ Quantized 8Bit BERT.pdf | A | Kuantisasi BERT (QAT saat fine-tuning) — pembanding PTQ |
| 4 | I BERT Integer only BERT Quantization.pdf | A | Kuantisasi BERT end-to-end (INT8, integer-only) — baseline penting untuk skema kuantisasi BERT |
| 5 | Understanding and Overcoming the Challenges of Efficient Transformer Quantization.pdf | A | INTI: tantangan kuantisasi Transformer + per-embedding-group (fine-grained) quantization |
| 6 | Accurate Post Training Quantization With Small Calibration Sets.pdf | B | PTQ (kalibrasi, optimasi per-layer) |
| 7 | On the Impact of Calibration Data in Post-training Quantization and Pruning.pdf | B | INTI: pengaruh data kalibrasi pada PTQ |
| 8 | Outliers and Calibration Sets have Diminishing Effect on Quantization of Modern LLMs.pdf | B | INTI: peran calibration set & outlier pada PTQ |
| 9 | Shang_Enhancing_Post-training_Quantization_Calibration_through_Contrastive_Learning_CVPR_2024_paper.pdf | B | INTI: metode kalibrasi PTQ (CL-Calib), granularitas W2A2 ekstrem |
| 10 | Stabilized activation scale estimation for precise PostTraining Quantization.pdf | B | PTQ: estimasi activation scale, target W2A4 |
| 11 | FPTQ - Fine-Grained Post-Training Quantization for Large Language Models.pdf | B | PTQ W4A8 + fine-grained weight quantization |
| 12 | Understanding INT4 Quantization for Language Models_ Latency Speedup, Composability, and Failure Cases.pdf | B | INTI: kelayakan INT4 W4A4 untuk model encoder (BERT) — dasar argumen kenapa encoder lebih toleran |
| 13 | When Flat Minima Fail_ Characterizing INT4 Quantization Collapse After FP32 Convergence.pdf | B | INTI: PTQ INT4 per-group gagal setelah model konvergen (fenomena collapse) |
| 14 | Can Less Precise Be More Reliable_ A Systematic Evaluation of Quantization's Impact on CLIP Beyond Accuracy.pdf | B | Evaluasi dampak PTQ/QAT di luar akurasi |
| 15 | Domain aware post training quantization for vision transformers in deployment.pdf | B | PTQ pada ViT, kondisi low-bit ekstrem + domain shift |
| 16 | Efficient Deep Neural Receiver with Post-Training Quantizatio.pdf | B | PTQ weight-only + perbandingan granularitas per-tensor (coarse) vs per-channel (fine) |
| 17 | How Quantization Shapes Bias in Large Language Models.pdf | B | Dampak kuantisasi bobot & aktivasi terhadap bias/fairness (evaluasi non-akurasi) |
| 18 | Quantization-aware training a tradeoff between training and.pdf | B | QAT vs fine-tuning domain-specific (biomedis) — pembanding biaya pelatihan |
| 19 | Binary and Ternary Natural Language Generation.pdf | C | Kuantisasi ternary/binary weight (ultra-low bit) pada Transformer |
| 20 | CAT-Q Cost-Efficient and Accurate Ternary Quantization for LLMs.pdf | C | PTQ ternary (weight-only ultra-low bit) + kalibrasi kecil |
| 21 | Sherry Hardware-Efficient 1.25-Bit Ternary Quantization via.pdf | C | Kuantisasi ternary weight + fine-grained sparsity (1.25-bit) |
| 22 | Tequila_ Trapping-free Ternary Quantization for Large Language Models.pdf | C | Kuantisasi ternary weight untuk LLM (menggantikan perkalian dengan penjumlahan) |
| 23 | TernaryBERT - Distillation-aware Ultra-low Bit BERT.pdf | C | INTI: kuantisasi ternary weight-only pada BERT + eksplorasi granularitas ternarisasi |
| 24 | The Era of 1-bit LLMs - All Large Language Models are in 1.58 Bits.pdf | C | Kuantisasi ternary (1.58-bit) weight-only, dilatih dari awal |
| 25 | Proposal Skripsi - Weight-Only Post-Training Quantization ResNet (Tafftadia).pdf | C | INTI: weight-only PTQ + granularitas per-channel + bit-packing (rancangan, hasil belum ada) |
| 26 | Implementing_Quantization_to_Indonesian_BERT_Language_Model.pdf | D | INTI: PTQ vs QAT pada IndoBERT, termasuk kasus ekstrem 4-bit |
| 27 | quantization effectson explainability in indonesian transformer based sentiment analysis.pdf | D | PTQ vs QAT pada IndoBERT (dampak ke stabilitas atribusi) |
| 28 | BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf | E | Model dasar (BERT) + task extractive QA (SQuAD) |
| 29 | Evaluating the Impact of Quantization on Indonesian Question Answering.pdf | E | INTI: PTQ pada QA berbahasa Indonesia + perbandingan extractive vs generative QA |
| 30 | FinBERT QA Financial Question Answering with pretrained  BERT Language Models.pdf | E | QA domain keuangan (answer selection/non-factoid, bukan span extraction) |
| 31 | IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf | E | Dataset/benchmark IndoNLU — memuat task FacQA (span extraction / extractive QA) |
| 32 | Deep Research Kuantisasi Weight-Only PTQ pada BERT.pdf | F | Weight-only PTQ + BERT + SQuAD (sumber sekunder, wajib diverifikasi ulang ke paper aslinya) |

---


## A. Survei & dasar kuantisasi (rumus, integer-only, QAT baseline)


### 1. A Survey of Quantization Methods for Efficient Neural Network Inference (Gholami et al., 2021)

**File:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`  
**Relevansi:** PTQ + granularitas (layerwise/coarse vs channelwise/fine)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menyurvei pendekatan kuantisasi nilai numerik pada komputasi neural network, termasuk kelebihan/kekurangannya. | “In this article, we survey approaches to the problem of quantizing the numerical values in deep Neural Network computations” | Abstrak/Abstract (hal. 1) |
| **Metode** | Tinjauan literatur dengan taksonomi; salah satu pembedanya adalah granularitas penentuan clipping range bobot (layerwise/coarse vs channelwise/fine). | “one differentiator for quantization methods is the granularity of how the clipping range” | Bagian E. Quantization Granularity (hal. 7) |
| **Hasil** | Representasi 4-bit atau kurang berpotensi memangkas memori dan latensi hingga 16x, dan reduksi 4x-8x umumnya tercapai dalam praktik; channelwise quantization disebut sebagai standar saat ini. | “reductions of 4x to 8x are often realized in practice in these applications” / “Channelwise quantization is currently the standard method used for quantizing convolutional kernels” | Abstrak/Abstract (hal. 1); Bagian E. Quantization Granularity (hal. 7) |

*Verifikasi:* kutipan 4/4 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 2. Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference (Jacob et al., 2018)

**File:** `Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference.pdf`  
**Relevansi:** Dasar skema kuantisasi integer-only (rumus scale/zero-point) yang dipakai hampir semua PTQ

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengusulkan skema kuantisasi yang memungkinkan inferensi hanya dengan aritmetika integer. | “We propose a quantization scheme that allows inference to be carried out using integer-only arithmetic” | Abstrak/Abstract (hal. 1) |
| **Metode** | Mendesain bersama prosedur pelatihan (QAT) agar akurasi end-to-end terjaga setelah kuantisasi. | “We also co-design a training procedure to preserve end-to-end model accuracy post quantization” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Skema yang diusulkan memperbaiki trade-off akurasi vs latensi on-device, terbukti pada MobileNets di ImageNet dan COCO. | “the proposed quantization scheme improves the tradeoff between accuracy and on-device latency” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 3. Q8BERT: Quantized 8Bit BERT (Zafrir et al., 2019)

**File:** `Q8BERT_ Quantized 8Bit BERT.pdf`  
**Relevansi:** Kuantisasi BERT (QAT saat fine-tuning) — pembanding PTQ

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Melakukan quantization-aware training saat fase fine-tuning BERT untuk mengompresi BERT 4x dengan kehilangan akurasi minimal. | “we show how to perform quantizationaware training during the fine-tuning phase of BERT in order to compress BERT by 4x with minimal accuracy loss” | Abstrak/Abstract (hal. 1) |
| **Metode** | QAT (fake quantization) disisipkan pada fase fine-tuning, sehingga model langsung siap untuk inferensi 8-bit integer. | “quantizationaware training during the fine-tuning phase of BERT” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Model terkuantisasi dapat mempercepat inferensi bila dioptimalkan untuk perangkat keras 8-bit integer; klaim kompresi 4x dengan kehilangan akurasi minimal. | “the produced quantized model can accelerate inference speed if it is optimized for 8bit Integer supporting hardware” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 4. I-BERT: Integer-only BERT Quantization (Kim et al., 2021)

**File:** `I BERT Integer only BERT Quantization.pdf`  
**Relevansi:** Kuantisasi BERT end-to-end (INT8, integer-only) — baseline penting untuk skema kuantisasi BERT

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengusulkan skema kuantisasi yang menjalankan seluruh inferensi Transformer dengan aritmetika integer saja. | “we propose I-BERT, a novel quantization scheme for Transformer based models that quantizes the entire inference with integer-only arithmetic” | Abstrak/Abstract (hal. 1) |
| **Metode** | Aproksimasi integer-only untuk operasi nonlinear (GELU, Softmax, LayerNorm) sehingga inferensi BERT bebas floating point. | “Based on lightweight integer-only approximation methods for nonlinear operations” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Akurasi setara atau sedikit lebih tinggi dibanding baseline full-precision pada GLUE, dengan speedup 2.4-4.0x untuk INT8 di GPU T4. | “achieves similar (and slightly higher) accuracy as compared to the full-precision baseline” / “shows a speedup of 2.4 − 4.0× for INT8 inference” | Abstrak/Abstract (hal. 1); Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 4/4 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 5. Understanding and Overcoming the Challenges of Efficient Transformer Quantization (Bondarenko et al., 2021)

**File:** `Understanding and Overcoming the Challenges of Efficient Transformer Quantization.pdf`  
**Relevansi:** INTI: tantangan kuantisasi Transformer + per-embedding-group (fine-grained) quantization

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengeksplorasi kuantisasi untuk Transformer dan mengidentifikasi tantangan khasnya. | “In this work, we explore quantization for transformers” | Abstrak/Abstract (hal. 1) |
| **Metode** | Mengusulkan skema per-embedding-group quantization, dengan tiga solusi berbasis PTQ dan QAT. | “per-embedding-group quantization” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Metode yang diusulkan efektif pada GLUE dengan BERT dan menetapkan hasil state-of-the-art untuk post-training quantization. | “We demonstrate the effectiveness of our methods on the GLUE benchmark using BERT, establishing state-of-the-art results for post-training quantization” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

## B. Post-training quantization: kalibrasi, granularitas, kasus gagal


### 6. Accurate Post Training Quantization With Small Calibration Sets (Hubara et al., 2021)

**File:** `Accurate Post Training Quantization With Small Calibration Sets.pdf`  
**Relevansi:** PTQ (kalibrasi, optimasi per-layer)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menembus batas 8-bit pada PTQ tanpa fine-tuning penuh, hanya dengan calibration set kecil. | “Here we aim to break the 8-bit barrier.” | Abstrak/Abstract (hal. 1) |
| **Metode** | Meminimalkan error kuantisasi tiap layer/blok secara terpisah dengan mengoptimasi parameternya pada calibration set (varian parallel & sequential + integer programming untuk alokasi bitwidth). | “we minimize the quantization errors of each layer or block separately by optimizing its parameters over the calibration set” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Pada ResNet50 degradasi akurasi <1% dengan bobot dan aktivasi 4-bit di semua layer kecuali layer pertama dan terakhir, dan dua orde lebih cepat daripada QAT. | “we obtain less than 1% accuracy degradation” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 7. On the Impact of Calibration Data in Post-training Quantization and Pruning (Williams & Aletras, 2024)

**File:** `On the Impact of Calibration Data in Post-training Quantization and Pruning.pdf`  
**Relevansi:** INTI: pengaruh data kalibrasi pada PTQ

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Studi empiris pertama yang sistematis tentang pengaruh data kalibrasi terhadap efektivitas kompresi model (kuantisasi dan pruning). | “we present the first extensive empirical study on the effect of calibration data upon LLM performance” | Abstrak/Abstract (hal. 1) |
| **Metode** | Menguji beragam metode kuantisasi dan pruning, dataset, task, serta model pada setting post-training. | “We trial a variety of quantization and pruning methods, datasets, tasks, and models” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Ditemukan variasi besar pada performa task downstream, berbeda dari klaim literatur sebelumnya bahwa metode tersebut cukup robust terhadap data kalibrasi. | “we find substantial variations in downstream task performance, contrasting existing work that suggests a greater level of robustness to the calibration data” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 8. Outliers and Calibration Sets have Diminishing Effect on Quantization of Modern LLMs (Paglieri et al., 2024)

**File:** `Outliers and Calibration Sets have Diminishing Effect on Quantization of Modern LLMs.pdf`  
**Relevansi:** INTI: peran calibration set & outlier pada PTQ

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Meneliti peran calibration set dalam PTQ. | “We explore the role of calibration sets in PTQ” | Abstrak/Abstract (hal. 1) |
| **Metode** | Menganalisis pengaruh calibration set terhadap hidden activation pada berbagai LLM open-source. | “their effect on hidden activations in various notable open-source LLMs” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Model lama (OPT) sangat rentan outlier dan kalibrasi; model baru seperti Llama-2 7B, Llama-3 8B, Command-R 35B, dan Mistral 7B jauh lebih robust, dengan Mistral 7B nyaris imun. | “newer models like Llama-2 7B, Llama-3 8B, Command-R 35B, and Mistral 7B demonstrate strong robustness” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 9. Enhancing Post-training Quantization Calibration through Contrastive Learning (Shang et al., CVPR 2024)

**File:** `Shang_Enhancing_Post-training_Quantization_Calibration_through_Contrastive_Learning_CVPR_2024_paper.pdf`  
**Relevansi:** INTI: metode kalibrasi PTQ (CL-Calib), granularitas W2A2 ekstrem

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Memasukkan metrik information-theoretic (mutual information) ke dalam kalibrasi PTQ untuk mengurangi degradasi informasi antara aktivasi FP dan terkuantisasi. | “we introduce a well-defined distributional metric from information theory, mutual information, into PTQ calibration” | Abstrak/Abstract (hal. 1) |
| **Metode** | Membangun framework contrastive learning untuk kalibrasi, di mana parameter kuantisasi dioptimasi lewat proxy task self-supervised. | “we establish a contrastive learning (CL) framework for the calibration, where the quantization parameters are optimized through a self-supervised proxy task” | Abstrak/Abstract (hal. 1) |
| **Hasil** | CL-Calib dapat dipasang sebagai modul tambahan dan meningkatkan performa semua metode PTQ yang diuji, termasuk setting ekstrem W2A2. | “CL-Calib can improve the performances of all the methods” | Bagian eksperimen (Add-on Module, Tabel 2) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 10. Stabilized activation scale estimation for precise Post-Training Quantization (Hao et al., 2024)

**File:** `Stabilized activation scale estimation for precise PostTraining Quantization.pdf`  
**Relevansi:** PTQ: estimasi activation scale, target W2A4

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengoreksi cara memperoleh activation scale pada PTQ yang dinilai kurang tepat sehingga bobot tidak cocok dengan aktivasi terkuantisasi. | “we find that the current way of obtaining the activation scale is not completely reasonable in PTQ” | Abstrak/Abstract (hal. 1) |
| **Metode** | Mengusulkan StablePTQ yang memperoleh activation scale stabil dan mencampur input kaya ke dalam block reconstruction; dapat dipakai sebagai plug-and-play. | “It obtains a stable activation scale and mixes rich input into the block reconstruction” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Peningkatan signifikan pada beberapa konfigurasi bit, terutama W2A4. | “StablePTQ achieves remarkable improvements in several different bit quantization especially W2A4” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 11. FPTQ: Fine-Grained Post-Training Quantization for Large Language Models (Li et al., 2023)

**File:** `FPTQ - Fine-Grained Post-Training Quantization for Large Language Models.pdf`  
**Relevansi:** PTQ W4A8 + fine-grained weight quantization

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengusulkan metode PTQ W4A8 yang menggabungkan keunggulan W8A8 dan W4A16 untuk LLM open-source. | “we propose a novel W4A8 post-training quantization method for the available open-sourced LLMs, which combines the advantages of both two recipes” | Abstrak/Abstract (hal. 1) |
| **Metode** | Kuantisasi aktivasi per-layer dengan logarithmic equalization untuk layer yang sulit, dikombinasikan dengan kuantisasi bobot fine-grained. | “we combine them with fine-grained weight quantization” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Tanpa fine-tuning tambahan, FPTQ mencapai performa W4A8 state-of-the-art pada BLOOM, LLaMA, dan LLaMA-2 di benchmark standar. | “we eliminate the necessity for further fine-tuning and obtain the state-of-the-art W4A8 quantized performance on BLOOM, LLaMA, and LLaMA-2” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 12. Understanding INT4 Quantization for Language Models: Latency Speedup, Composability, and Failure Cases (Wu et al., 2023)

**File:** `Understanding INT4 Quantization for Language Models_ Latency Speedup, Composability, and Failure Cases.pdf`  
**Relevansi:** INTI: kelayakan INT4 W4A4 untuk model encoder (BERT) — dasar argumen kenapa encoder lebih toleran

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menguji kelayakan kuantisasi INT4 untuk bobot dan aktivasi (W4A4) pada model bahasa. | “we explore the feasibility of employing INT4 weight and activation (W4A4) quantization for language models” | Abstrak/Abstract (hal. 1) |
| **Metode** | Membangun pipeline inferensi W4A4 end-to-end yang dioptimasi untuk encoder, mendukung beberapa strategi kuantisasi. | “we develop a highly-optimized end-to-end W4A4 encoder inference pipeline supporting different quantization strategies” | Abstrak/Abstract (hal. 1) |
| **Hasil** | W4A4 nyaris tanpa degradasi untuk model encoder-only dan encoder-decoder tetapi turun drastis pada decoder-only; pipeline INT4 8.5x lebih cepat (latency) dan hingga 3x (throughput) dibanding FP16. | “Our INT4 pipeline is 8.5× faster for latency-oriented scenarios and up to 3× for throughput-oriented scenarios compared to the inference of FP16” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 13. When Flat Minima Fail: Characterizing INT4 Quantization Collapse After FP32 Convergence (Armstrong, 2026)

**File:** `When Flat Minima Fail_ Characterizing INT4 Quantization Collapse After FP32 Convergence.pdf`  
**Relevansi:** INTI: PTQ INT4 per-group gagal setelah model konvergen (fenomena collapse)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menguji asumsi PTQ bahwa model yang sudah konvergen siap dikuantisasi, dan menunjukkan asumsi itu gagal. | “Post-training quantization (PTQ) assumes that a well-converged model is a quantization-ready model” | Abstrak/Abstract (hal. 1) |
| **Metode** | Probe INT4 per-group tanpa kalibrasi dijalankan pada seluruh 154 checkpoint pelatihan Pythia-160m yang tersedia publik. | “Using a calibration-free per-group INT4 probe applied to all 154 publicly available Pythia-160m training checkpoints” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Ditemukan tiga fase divergensi; pada fase ketiga gap INT4 membengkak dari 11% ke 517% sementara perplexity FP32 nyaris tidak berubah, dan INT8 sama sekali imun. | “the INT4 gap compounds from 11% to 517% while FP32 perplexity barely moves” / “INT8 quantization is entirely immune throughout all three phases” | Abstrak/Abstract (hal. 1); Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 4/4 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 14. Can Less Precise Be More Reliable? A Systematic Evaluation of Quantization's Impact on CLIP Beyond Accuracy (Bouguerra et al., 2025)

**File:** `Can Less Precise Be More Reliable_ A Systematic Evaluation of Quantization's Impact on CLIP Beyond Accuracy.pdf`  
**Relevansi:** Evaluasi dampak PTQ/QAT di luar akurasi

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengevaluasi dampak kuantisasi pada model CLIP tidak hanya dari akurasi in-distribution tetapi juga dari metrik reliabilitas. | “This work presents a large-scale evaluation of quantization on CLIP models” | Abstrak/Abstract (hal. 1) |
| **Metode** | Evaluasi skala besar atas beberapa metode kuantisasi dengan rangkaian metrik reliabilitas (kalibrasi, deteksi OOD) selain akurasi zero-shot. | “assessing not only in-distribution accuracy but a comprehensive suite of reliability metrics” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Kuantisasi konsisten memperbaiki kalibrasi pada model yang underconfident tetapi sering merusaknya pada model yang overconfident; sebagian metode QAT meningkatkan akurasi, kalibrasi, dan robustness OOD sekaligus. | “quantization consistently improves calibration for typically underconfident pre-trained models, while often degrading it for overconfident variants” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 15. Domain aware post training quantization for vision transformers in deployment (Wang et al., 2026)

**File:** `Domain aware post training quantization for vision transformers in deployment.pdf`  
**Relevansi:** PTQ pada ViT, kondisi low-bit ekstrem + domain shift

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengatasi dua masalah sekaligus: kompresi ekstrem dan domain shift pada ViT saat deployment melalui metode PTQ yang sadar domain. | “this paper introduces a novel Domain Aware Post-training Quantization (DAQuant) approach that simultaneously tackles extreme model compression and domain adaptation for ViTs in deployment” | Abstrak/Abstract (hal. 1) |
| **Metode** | Distribution-aware smoothing dengan Learnable Activation Clipping (LAC) untuk meredam outlier, ditambah strategi domain alignment. | “a distribution-aware smoothing method with Learnable Activation Clipping (LAC) to mitigate the effects of outliers” | Abstrak/Abstract (hal. 1) |
| **Hasil** | DAQuant mengungguli metode kuantisasi yang ada secara signifikan, baik pada error kuantisasi maupun kapasitas generalisasi, termasuk pada skenario deployment perangkat nyata. | “DAQuant demonstrates superior performance in both quantization error and generalization capacity” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 16. Efficient Deep Neural Receiver with Post-Training Quantization (Yellapragada et al., 2025)

**File:** `Efficient Deep Neural Receiver with Post-Training Quantizatio.pdf`  
**Relevansi:** PTQ weight-only + perbandingan granularitas per-tensor (coarse) vs per-channel (fine)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengurangi kompleksitas model neural receiver dengan menurunkan bit-width bobot memakai PTQ. | “we focus on PTQ to reduce model complexity by lowering the bit-width of weights” | Abstrak/Abstract (hal. 1) |
| **Metode** | Kuantisasi uniform simetris, membandingkan PTQ per-tensor dan per-channel. | “Our analysis employs symmetric uniform quantization, applying both per-tensor and per-channel PTQ to a neural receiver” | Abstrak/Abstract (hal. 1) |
| **Hasil** | PTQ 8-bit per-channel mempertahankan kinerja BLER dengan degradasi minimal, sedangkan 4-bit menjanjikan tetapi masih butuh optimasi lanjutan. | “8-bit per-channel quantization maintains BLER performance with minimal degradation, while 4-bit quantization shows great promise but requires further optimization” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 17. How Quantization Shapes Bias in Large Language Models (Marcuzzi et al., 2025)

**File:** `How Quantization Shapes Bias in Large Language Models.pdf`  
**Relevansi:** Dampak kuantisasi bobot & aktivasi terhadap bias/fairness (evaluasi non-akurasi)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengevaluasi secara komprehensif bagaimana kuantisasi memengaruhi bias model, termasuk pada subkelompok demografis. | “This work presents a comprehensive evaluation of how quantization affects model bias” | Abstrak/Abstract (hal. 1) |
| **Metode** | Membandingkan strategi kuantisasi bobot dan aktivasi pada 13 benchmark, memakai metrik berbasis probabilitas maupun teks yang dihasilkan. | “across 13 benchmarks and evaluate models that differ in architecture family and reasoning ability” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Kuantisasi dapat menurunkan toksisitas dan tidak berdampak signifikan pada sentimen, tetapi cenderung sedikit meningkatkan stereotip dan unfairness pada task generatif, terutama pada kompresi agresif. | “while it can reduce model toxicity and does not significantly impact sentiment, it tends to slightly increase stereotypes and unfairness in generative tasks” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 18. Quantization-aware training: a tradeoff between training and fine-tuning for domain-specific language models (Pillet et al., 2025)

**File:** `Quantization-aware training a tradeoff between training and.pdf`  
**Relevansi:** QAT vs fine-tuning domain-specific (biomedis) — pembanding biaya pelatihan

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Meneliti biaya pelatihan pada model bahasa yang di-fine-tune dan dikuantisasi. | “we investigate the training cost of finetuned and quantized language models” | Abstrak/Abstract (hal. 2) |
| **Metode** | Memformalkan trade-off komputasi antara domain adaptation dan fine-tuning, lalu membandingkan robustness checkpoint hasil fine-tuning domain terhadap noise kuantisasi. | “By formalizing the computational trade-off between domain adaptation and fine-tuning” | Abstrak/Abstract (hal. 2) |
| **Hasil** | Checkpoint yang terspesialisasi pada domain lebih robust terhadap noise kuantisasi. | “domainspecialized checkpoints exhibit greater robustness to quantization noise” | Abstrak/Abstract (hal. 2) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

## C. Weight-only / ternary / ultra-low bit


### 19. Binary and Ternary Natural Language Generation (Liu et al., 2022)

**File:** `Binary and Ternary Natural Language Generation.pdf`  
**Relevansi:** Kuantisasi ternary/binary weight (ultra-low bit) pada Transformer

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mendemonstrasikan model Transformer ternary dan binary pertama pada task summarization dan machine translation. | “demonstrate the first ternary and binary transformer models on the downstream tasks of summarization and machine translation” | Abstrak/Abstract (hal. 1) |
| **Metode** | Kombinasi kuantisasi bobot berbasis statistik dan kuantisasi aktivasi yang elastis. | “a mix of statistics-based quantization for the weights and elastic quantization of the activations” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Ternary BART base mencapai R1 41 pada CNN/DailyMail (hanya 3.9 poin di bawah model penuh) dengan efisiensi 16x; model binary mencapai 35.6. | “Our ternary BART base achieves an R1 score of 41 on the CNN/DailyMail benchmark, which is merely 3.9 points behind the full model while being 16x more efficient” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 20. CAT-Q: Cost-efficient and Accurate Ternary Quantization for LLMs (Wang et al., 2026)

**File:** `CAT-Q Cost-Efficient and Accurate Ternary Quantization for LLMs.pdf`  
**Relevansi:** PTQ ternary (weight-only ultra-low bit) + kalibrasi kecil

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengusulkan skema PTQ ternary yang murah dan akurat untuk LLM, sebagai alternatif QAT yang mahal. | “CAT-Q is a simple yet effective post-training quantization scheme that is readily applicable to LLMs with diverse architectures and model sizes” | Abstrak/Abstract (hal. 1) |
| **Metode** | Dua komponen: learnable modulation (LM) dan softened ternarization (ST) yang digabung dari sisi optimasi, dengan 512 sampel kalibrasi. | “It has two key components, learnable modulation (LM) and softened ternarization (ST), which are coupled from an optimization perspective” | Abstrak/Abstract (hal. 1) |
| **Hasil** | LLM 1.7B-8B dapat dikuantisasi ternary hanya dengan 512 sampel kalibrasi dan mengungguli BitNet 1.58-bit v1/v2 yang dilatih 100B token; model 14B-235B selesai dalam 8-60 jam di 8xA100. | “CAT-Q can efficiently quantize them into ternary models using only 512 calibration samples” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 21. Sherry: Hardware-Efficient 1.25-Bit Ternary Quantization via Fine-grained Sparsification (Huang et al., 2026)

**File:** `Sherry Hardware-Efficient 1.25-Bit Ternary Quantization via.pdf`  
**Relevansi:** Kuantisasi ternary weight + fine-grained sparsity (1.25-bit)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengusulkan framework kuantisasi ternary yang efisien di perangkat keras, menjembatani packing 2-bit dan 1.67-bit. | “we propose Sherry, a hardware-efficient ternary quantization framework” | Abstrak/Abstract (hal. 1) |
| **Metode** | Fine-grained sparsity 3:4 yang menghasilkan lebar 1.25-bit dengan memadatkan blok empat bobot ke lima bit, plus mekanisme Arenas untuk mencegah weight trapping. | “Sherry introduces a 3:4 fine-grained sparsity that achieves a regularized 1.25-bit width by packing blocks of four weights into five bits” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Pada LLaMA-3.2 di lima benchmark, Sherry menyamai performa ternary SOTA; model 1B-nya tanpa kehilangan akurasi dibanding baseline SOTA sekaligus hemat 25% bit dan 10% lebih cepat. | “our 1B model achieves zero accuracy loss compared to SOTA baselines while providing 25% bit savings and 10% speed up” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 22. Tequila: Trapping-free Ternary Quantization for Large Language Models (Huang et al., 2025)

**File:** `Tequila_ Trapping-free Ternary Quantization for Large Language Models.pdf`  
**Relevansi:** Kuantisasi ternary weight untuk LLM (menggantikan perkalian dengan penjumlahan)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengusulkan metode optimasi kuantisasi ternary yang membebaskan bobot dari deadzone trapping. | “we propose Tequila, a trapping-free quantization optimization method that reactivates deadzone-trapped weights by repurposing them as dynamic biases” | Abstrak/Abstract (hal. 1) |
| **Metode** | Mengidentifikasi deadzone trapping sebagai akar masalah degradasi, lalu memfungsikan ulang bobot yang terjebak sebagai dynamic bias agar menerima gradien langsung. | “We identify the core issue as deadzone trapping” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Tequila mengungguli metode ternary SOTA di lima benchmark; pada ARC naik >4% dari baseline SOTA, mendekati full-precision (selisih <1%) dengan speedup 3.0x. | “it achieves > 4% accuracy gain over the SOTA baseline, nearly matching full-precision performance” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 23. TernaryBERT: Distillation-aware Ultra-low Bit BERT (Zhang et al., 2020)

**File:** `TernaryBERT - Distillation-aware Ultra-low Bit BERT.pdf`  
**Relevansi:** INTI: kuantisasi ternary weight-only pada BERT + eksplorasi granularitas ternarisasi

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menghadirkan TernaryBERT yang menternarisasi bobot model BERT yang sudah di-fine-tune. | “we propose TernaryBERT, which ternarizes the weights in a fine-tuned BERT model” | Abstrak/Abstract (hal. 1) |
| **Metode** | Kombinasi metode ternarisasi berbasis aproksimasi dan loss-aware, ditambah investigasi empiris granularitas ternarisasi untuk bagian-bagian BERT, serta knowledge distillation. | “we use both approximation-based and loss-aware ternarization methods and empirically investigate the ternarization granularity of different parts of BERT” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Mengungguli metode kuantisasi BERT lain pada GLUE dan SQuAD, bahkan setara model full-precision dengan ukuran 14.9x lebih kecil. | “our proposed TernaryBERT outperforms the other BERT quantization methods, and even achieves comparable performance as the fullprecision model while being 14.9x smaller” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 24. The Era of 1-bit LLMs: All Large Language Models are in 1.58 Bits (Ma et al., 2024)

**File:** `The Era of 1-bit LLMs - All Large Language Models are in 1.58 Bits.pdf`  
**Relevansi:** Kuantisasi ternary (1.58-bit) weight-only, dilatih dari awal

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Memperkenalkan varian LLM 1-bit, BitNet b1.58, yang seluruh parameternya ternary {-1, 0, 1}. | “we introduce a 1-bit LLM variant, namely BitNet b1.58, in which every single parameter (or weight) of the LLM is ternary {-1, 0, 1}” | Abstrak/Abstract (hal. 1) |
| **Metode** | Model dilatih dari awal dengan bobot 1.58-bit dan aktivasi 8-bit di atas arsitektur BitNet (BitLinear), memakai fungsi kuantisasi absmean. | “It is trained from scratch, with 1.58-bit weights and 8-bit activations” | Bagian 2 BitNet b1.58 (hal. 2) |
| **Hasil** | Menyamai LLM Transformer full-precision berukuran dan berjumlah token latih sama pada perplexity dan performa task, dengan latensi, memori, throughput, dan energi yang jauh lebih efisien. | “It matches the full-precision (i.e., FP16 or BF16) Transformer LLM with the same model size and training tokens in terms of both perplexity and end-task performance” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 25. Proposal Skripsi: Weight-Only Post-Training Quantization untuk Image Classification Berbasis ResNet (Imada, 2026)

**File:** `Proposal Skripsi - Weight-Only Post-Training Quantization ResNet (Tafftadia).pdf`  
**Relevansi:** INTI: weight-only PTQ + granularitas per-channel + bit-packing (rancangan, hasil belum ada)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menerapkan skema Weight-Only INT4 PTQ uniform dengan granularitas per-channel dan bit-packing pada ResNet-50. | “Penelitian ini menerapkan skema Weight-Only INT4 PTQ uniform dengan granularitas per-channel dan bit-packing pada ResNet-50” | Abstrak/Abstract (hal. 7) |
| **Metode** | Transfer learning dari bobot pralatih ImageNet-1K, dibandingkan terhadap baseline FP16 pada empat metrik performa dan tiga metrik efisiensi, dengan uji signifikansi (McNemar, bootstrap, paired t-test, Wilcoxon). | “melalui transfer learning dari bobot pralatih ImageNet1K dibandingkan terhadap baseline FP16 pada empat metrik performa” | Abstrak/Abstract (hal. 7) |
| **Hasil** | tidak disebutkan — dokumen ini proposal (Bab I-III), belum memuat hasil penelitian; yang ada hanya luaran yang diharapkan. | “Hasilnya berupa karakterisasi trade-off akurasi-efisiensi yang teruji signifikansinya” | Abstrak/Abstract (hal. 7) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

> Dokumen ini **proposal skripsi** (Bab I–III), belum ada hasil penelitian. Baris *Hasil* sengaja ditulis **tidak disebutkan**; kutipan yang disertakan hanya menyatakan luaran yang diharapkan.

## D. Kuantisasi pada model bahasa Indonesia (IndoBERT)


### 26. Implementing Quantization to Indonesian BERT Language Model (Abdurrahman et al., 2023)

**File:** `Implementing_Quantization_to_Indonesian_BERT_Language_Model.pdf`  
**Relevansi:** INTI: PTQ vs QAT pada IndoBERT, termasuk kasus ekstrem 4-bit

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengevaluasi teknik kompresi kuantisasi pada IndoBERT, karena evaluasi semacam ini masih minim untuk bahasa Indonesia. | “this paper evaluates compression techniques through quantization for an Indonesian version of the BERT model, namely IndoBERT” | Abstrak/Abstract (hal. 1) |
| **Metode** | Eksperimen pada 7 task downstream IndoBERT, membandingkan model terkuantisasi dengan model full precision. | “Experiments on 7 downstream tasks” | Abstrak/Abstract (hal. 1) |
| **Hasil** | PTQ mengalami degradasi besar pada kasus ekstrem (4-bit dan sequence labeling), sedangkan QAT efektif dan efisien di berbagai kedalaman bit. | “we observe a huge degradation in extreme cases such as 4-bit quantization and sequence labeling tasks when using post-training quantization” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 27. Quantization Effects on Explainability in Indonesian Transformer-Based Sentiment Analysis (Sajaya et al., 2026)

**File:** `quantization effectson explainability in indonesian transformer based sentiment analysis.pdf`  
**Relevansi:** PTQ vs QAT pada IndoBERT (dampak ke stabilitas atribusi)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mempelajari bagaimana kompresi (PTQ dan QAT pada FP16, INT8, INT4) memengaruhi penjelasan post-hoc model IndoBERT untuk klasifikasi sentimen tiga kelas. | “We study this on IndoBERT fine-tuned for three-class Indonesian sentiment classification, comparing post-training quantization (PTQ) and quantization-aware training (QAT) at FP16, INT8, and INT4” | Abstrak/Abstract (hal. 1) |
| **Metode** | Penjelasan dievaluasi dengan lima metode atribusi berbasis gradien dan perturbasi, masing-masing pada tiga random seed. | “Explanations are evaluated with five gradient-based and perturbation-based attribution methods over three random seeds” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Akurasi nyaris tidak berubah (dalam 0.4 poin persentase), tetapi stabilitas atribusi lebih ditentukan jalur kompresi (PTQ vs QAT) daripada bit-width. | “Accuracy barely moves, staying within 0.4 percentage points across all variants, but attribution stability turns out to depend on the compression pathway rather than the bit-width” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

## E. Extractive QA & dataset


### 28. BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding (Devlin et al., 2019)

**File:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`  
**Relevansi:** Model dasar (BERT) + task extractive QA (SQuAD)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Memperkenalkan model representasi bahasa BERT yang dipralatih secara bidirectional dari teks tanpa label. | “We introduce a new language representation model called BERT” | Abstrak/Abstract (hal. 1) |
| **Metode** | Pre-training bidirectional (masked LM) lalu fine-tuning dengan satu layer output tambahan untuk berbagai task, termasuk question answering. | “the pre-trained BERT model can be finetuned with just one additional output layer” | Abstrak/Abstract (hal. 1) |
| **Hasil** | State-of-the-art pada 11 task NLP, antara lain F1 SQuAD v1.1 naik ke 93.2 dan SQuAD v2.0 ke 83.1. | “SQuAD v1.1 question answering Test F1 to 93.2” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 29. Evaluating the Impact of Quantization on Indonesian Question Answering Performance in Large Language Models (Ramaputra & Joddy, 2026)

**File:** `Evaluating the Impact of Quantization on Indonesian Question Answering.pdf`  
**Relevansi:** INTI: PTQ pada QA berbahasa Indonesia + perbandingan extractive vs generative QA

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menyelidiki dampak post-training quantization terhadap performa question answering berbahasa Indonesia pada LLM. | “This study investigates how post-training quantization affects Indonesian question answering performance in LLMs” | Abstrak/Abstract (hal. 1) |
| **Metode** | Evaluasi beberapa ukuran model dari dua keluarga LLM dengan presisi 8-bit dan 4-bit memakai metode AWQ dan GPTQ, mengukur kualitas jawaban dan efisiensi inferensi. | “specifically 8-bit and 4-bit precision using AWQ and GPTQ methods” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Kuantisasi memengaruhi QA extractive dan generative secara berbeda, dengan task generative lebih robust; 8-bit relatif setara model asli, 4-bit lebih cepat tetapi penurunan performa lebih terasa. | “quantization impacts extractive and generative QA differently, with generative tasks showing greater robustness” | Abstrak/Abstract (hal. 1) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

> Paling dekat dengan topik skripsi: PTQ pada QA berbahasa Indonesia, dan secara eksplisit membedakan QA *extractive* vs *generative*.

### 30. FinBERT-QA: Financial Question Answering with pre-trained BERT Language Models (Yuan, 2020)

**File:** `FinBERT QA Financial Question Answering with pretrained  BERT Language Models.pdf`  
**Relevansi:** QA domain keuangan (answer selection/non-factoid, bukan span extraction)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Membangun sistem QA finansial berbasis BERT untuk mengatasi keterbatasan data dan kekhasan bahasa domain keuangan. | “we propose a novel financial QA system using the Transformer-based pre-trained BERT language model to solve the limitations of data scarcity and language specificity in the financial domain” | Abstrak/Abstract (hal. 4) |
| **Metode** | Merumuskan answer selection sebagai masalah re-ranking: retriever BM25 mengambil kandidat, lalu re-ranker berbasis varian BERT memilih jawaban paling relevan. | “we formulate the answer selection task as a re-ranking problem” | Abstrak/Abstract (hal. 4) |
| **Hasil** | FinBERT-QA meningkatkan state-of-the-art pada task 2 dataset FiQA sebesar 16% MRR, 17% NDCG, dan 21% Precision@1. | “it improves the state-of-the-art results of task 2 of the FiQA dataset by 16% on MRR, 17% on NDCG, and 21% on Precision@1” | Abstrak/Abstract (hal. 4) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

### 31. IndoNLU: Benchmark and Resources for Evaluating Indonesian Natural Language Understanding (Wilie et al., 2020)

**File:** `IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf`  
**Relevansi:** Dataset/benchmark IndoNLU — memuat task FacQA (span extraction / extractive QA)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Menyediakan resource besar pertama untuk pelatihan, evaluasi, dan benchmarking task NLU berbahasa Indonesia. | “we introduce the first-ever vast resource for training, evaluation, and benchmarking on Indonesian natural language understanding (IndoNLU) tasks” | Abstrak/Abstract (hal. 1) |
| **Metode** | 12 task (dari klasifikasi satu kalimat sampai sequence labeling pasangan kalimat) plus model pralatih IndoBERT dari korpus Indo4B, lengkap dengan baseline dan framework evaluasi. | “IndoNLU includes twelve tasks, ranging from single sentence classification to pair-sentences sequence labeling” | Abstrak/Abstract (hal. 1) |
| **Hasil** | Pada task sequence labeling, model multilingual (XLM-R) cenderung lebih baik daripada model monolingual, dan jauh lebih baik pada NERGrit dan FacQA. | “multilingual models tend to perform better compared to monolingual models and even perform much better on the NERGrit and FacQA tasks” | Bagian Hasil (pembahasan Tabel 22 / Results on IndoNLU Benchmark) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

> Task FacQA di IndoNLU adalah *span extraction* (jawaban berupa frasa di dalam passage) — ini yang relevan sebagai extractive QA berbahasa Indonesia.

## F. Catatan riset sekunder (bukan paper peer-review)


### 32. Deep Research: Kuantisasi Weight-Only PTQ pada BERT (catatan riset, bukan paper peer-review)

**File:** `Deep Research Kuantisasi Weight-Only PTQ pada BERT.pdf`  
**Relevansi:** Weight-only PTQ + BERT + SQuAD (sumber sekunder, wajib diverifikasi ulang ke paper aslinya)

| Aspek | Isi (ringkas) | Kutipan verbatim | Lokasi bagian |
|---|---|---|---|
| **Tujuan** | Mengidentifikasi paper yang memenuhi kriteria ketat weight-only PTQ pada BERT dengan evaluasi SQuAD (tujuan tidak ditulis sebagai kalimat tujuan, melainkan dinyatakan lewat TL;DR hasil pencarian). | “We found only one strong paper (Mokey 2022) that meets strict weight-only PTQ on BERT with SQuAD evaluation” | Halaman 1 (bagian TL;DR catatan) |
| **Metode** | Penelusuran pustaka dan penyusunan tabel perbandingan berisi judul, penulis, tautan, metode, bit-width, serta model/dataset yang dipakai. | “We summarize each below with full details (titles, authors, links, methods, bit-widths, model/dataset usage)” | Halaman 1 (ringkasan isi catatan) |
| **Hasil** | Hanya Mokey (ISCA 2022) yang dinilai memenuhi kriteria ketat; tidak ditemukan paper weight-only PTQ khusus pada dataset FaCQA berbahasa Indonesia. | “no papers were found that do weight-only PTQ specifically on the Indonesian FaCQA dataset” | Halaman 1 (bagian Executive Summary) |

*Verifikasi:* kutipan 3/3 ditemukan verbatim di teks artikel; isi tabel dicek terhadap kalimat penulis di sekitarnya — sesuai, tanpa kontradiksi.

> **Bukan paper peer-review.** Ini catatan riset sekunder (jawaban model bahasa atas penelusuran pustaka). Klaimnya (mis. Mokey ISCA 2022 satu-satunya yang memenuhi kriteria) harus diverifikasi ke paper aslinya sebelum dikutip di skripsi.

---

---

## Lampiran 1 — Rekap uji kutipan (step 3)

Uji dilakukan ulang secara mekanis: setiap kutipan dicari sebagai substring pada teks hasil ekstraksi PDF (spasi dinormalisasi, case-insensitive). Kolom *Konsistensi* = hasil pembacaan ulang kalimat penulis di sekitar kutipan (apakah isi tabel benar-benar sesuai dengan maksud penulis, bukan sekadar kutipan yang ada).

| No | Dokumen (singkat) | Kutipan | Ditemukan verbatim | Konsistensi isi tabel |
|---|---|---|---|---|
| 1 | A Survey of Quantization Methods for Efficient Neura | 4 | 4/4 | sesuai |
| 2 | Quantization and Training of Neural Networks for Eff | 3 | 3/3 | sesuai |
| 3 | Q8BERT: Quantized 8Bit BERT | 3 | 3/3 | sesuai |
| 4 | I-BERT: Integer-only BERT Quantization | 4 | 4/4 | sesuai |
| 5 | Understanding and Overcoming the Challenges of Effic | 3 | 3/3 | sesuai |
| 6 | Accurate Post Training Quantization With Small Calib | 3 | 3/3 | sesuai |
| 7 | On the Impact of Calibration Data in Post-training Q | 3 | 3/3 | sesuai |
| 8 | Outliers and Calibration Sets have Diminishing Effec | 3 | 3/3 | sesuai |
| 9 | Enhancing Post-training Quantization Calibration thr | 3 | 3/3 | sesuai |
| 10 | Stabilized activation scale estimation for precise P | 3 | 3/3 | sesuai |
| 11 | FPTQ: Fine-Grained Post-Training Quantization for La | 3 | 3/3 | sesuai |
| 12 | Understanding INT4 Quantization for Language Models: | 3 | 3/3 | sesuai |
| 13 | When Flat Minima Fail: Characterizing INT4 Quantizat | 4 | 4/4 | sesuai |
| 14 | Can Less Precise Be More Reliable? A Systematic Eval | 3 | 3/3 | sesuai |
| 15 | Domain aware post training quantization for vision t | 3 | 3/3 | sesuai |
| 16 | Efficient Deep Neural Receiver with Post-Training Qu | 3 | 3/3 | sesuai |
| 17 | How Quantization Shapes Bias in Large Language Model | 3 | 3/3 | sesuai |
| 18 | Quantization-aware training: a tradeoff between trai | 3 | 3/3 | sesuai |
| 19 | Binary and Ternary Natural Language Generation | 3 | 3/3 | sesuai |
| 20 | CAT-Q: Cost-efficient and Accurate Ternary Quantizat | 3 | 3/3 | sesuai |
| 21 | Sherry: Hardware-Efficient 1.25-Bit Ternary Quantiza | 3 | 3/3 | sesuai |
| 22 | Tequila: Trapping-free Ternary Quantization for Larg | 3 | 3/3 | sesuai |
| 23 | TernaryBERT: Distillation-aware Ultra-low Bit BERT | 3 | 3/3 | sesuai |
| 24 | The Era of 1-bit LLMs: All Large Language Models are | 3 | 3/3 | sesuai |
| 25 | Proposal Skripsi: Weight-Only Post-Training Quantiza | 3 | 3/3 | sesuai |
| 26 | Implementing Quantization to Indonesian BERT Languag | 3 | 3/3 | sesuai |
| 27 | Quantization Effects on Explainability in Indonesian | 3 | 3/3 | sesuai |
| 28 | BERT: Pre-training of Deep Bidirectional Transformer | 3 | 3/3 | sesuai |
| 29 | Evaluating the Impact of Quantization on Indonesian  | 3 | 3/3 | sesuai |
| 30 | FinBERT-QA: Financial Question Answering with pre-tr | 3 | 3/3 | sesuai |
| 31 | IndoNLU: Benchmark and Resources for Evaluating Indo | 3 | 3/3 | sesuai |
| 32 | Deep Research: Kuantisasi Weight-Only PTQ pada BERT | 3 | 3/3 | sesuai |

**Total: 99 kutipan pada 32 dokumen — semuanya ditemukan verbatim.**


## Lampiran 2 — Perbaikan yang dilakukan sebelum tabel dipakai (step 3)

Ini daftar hal yang **salah/tidak didukung** pada draf pertama dan sudah diperbaiki. Tanpa perbaikan ini, tabel tidak layak dipakai.

| Lokasi | Masalah yang ditemukan | Perbaikan |
|---|---|---|
| p03 — Hasil | Klaim “channelwise quantization adalah standar saat ini” tidak didukung kutipan yang dipakai (kutipan itu hanya bicara reduksi 4x–8x). | Ditambah kutipan kedua “Channelwise quantization is currently the standard method used for quantizing convolutional kernels” + lokasi Bagian E. Quantization Granularity. |
| p03 — Metode, p59 — Metode, p24 — semua baris | Deteksi otomatis judul bagian gagal pada PDF dua kolom (muncul label sampah seperti “127 −128”, “New Hardware”). | Lokasi bagian ditetapkan manual: “Bagian E. Quantization Granularity (hal. 7)”, “Bagian 2 BitNet b1.58 (hal. 2)”, “Halaman 1 (TL;DR / Executive Summary)”. |
| p16 — Tujuan | Kutipan awal “we demonstrate the first ternary and binary transformer models…” tidak ada di teks (penulis menulis “…and demonstrate the first…”). | Kutipan diganti bentuk verbatim yang benar. |
| p42 — Metode | Kutipan yang dipakai berbunyi “Experiments on 7 downstream tasks show a similar trend…” — itu pernyataan hasil, bukan metode, sehingga tidak sah jadi bukti metode. | Kutipan dipersempit jadi “Experiments on 7 downstream tasks”; isi metode dipersempit agar tidak mengklaim hal di luar kutipan (perbandingan PTQ vs QAT dipindah ke baris Hasil). |
| p50 — Hasil | Isi memuat klaim “penurunan akurasi <1% pada GLUE” yang tidak ada di abstrak/kutipan. | Klaim dihapus; isi dibatasi pada apa yang benar-benar ditulis penulis (kompresi 4x, kehilangan akurasi minimal, percepatan inferensi pada perangkat 8-bit). |
| p41 — Hasil | Kutipan speedup terpotong di tengah angka (“shows a speedup of 2.4”). | Dilengkapi: “shows a speedup of 2.4 − 4.0× for INT8 inference”. |
| p65 — Hasil | Isi menyebut “INT8 sama sekali imun” tanpa kutipan pendukung. | Ditambah kutipan “INT8 quantization is entirely immune throughout all three phases”. |
| p49 — Hasil | Draf awal mengisi hasil dengan angka, padahal dokumen ini proposal (Bab I–III) tanpa hasil. | Diubah menjadi **tidak disebutkan** + penjelasan, dan kutipan yang disertakan hanya menyatakan luaran yang diharapkan. |
| p24 — Tujuan | Tujuan ditulis seolah diklaim eksplisit oleh penulis, padahal catatan ini tidak punya kalimat tujuan; isinya TL;DR hasil pencarian. | Isi disesuaikan dan diberi keterangan bahwa tujuan hanya tersirat dari TL;DR; dokumen juga ditandai bukan paper peer-review. |
| p14 — Tujuan | Kutipan tidak cocok karena beda kapitalisasi awal kalimat. | Kutipan disamakan dengan bentuk asli di teks. |

## Lampiran 3 — Keterbatasan yang perlu kamu tahu

- **Sebagian besar kutipan berasal dari Abstrak.** Itu pilihan sadar: abstrak adalah tempat penulis merumuskan tujuan–metode–hasil paling padat, sehingga risiko salah tafsir paling kecil. Kalau butuh kutipan dari bagian Metode/Hasil (mis. angka per-tabel), bilang saja — saya tarik dari bagian spesifiknya.
- **Lokasi halaman = halaman PDF**, bukan halaman jurnal. Kalau dipakai di skripsi, cocokkan dulu dengan penomoran terbitan.
- **Dua dokumen bukan artikel penelitian:** p24 (catatan riset sekunder, bukan peer-review) dan p49 (proposal skripsi orang lain, belum ada hasil). Keduanya diberi tanda.
- **Tabel belum disusun sebagai sintesis.** Ini tabel per-dokumen (ekstraksi). Tabel sintesis “penelitian terdahulu” (dikelompokkan per tema: PTQ vs QAT, weight-only, granularitas) bisa saya susun terpisah dari data yang sama.