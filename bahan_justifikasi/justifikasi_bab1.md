# Justifikasi Klaim — Bab I (Pendahuluan)

Setiap klaim bersitasi di Bab I dipetakan ke sumbernya, dengan kutipan verbatim dan lokasi bagian. Status: **[OK]** kutipan ada dan mendukung klaim · **[_]** kutipan ada tetapi klaim lebih luas dari kutipan · **[X]** sitasi tidak mendukung klaim · **[~]** sebagian terverifikasi · **[--]** sumber belum tersedia di lokal.

File bab: `src/chapters/chapter-1.tex`

### B1-01 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** QA = sistem menjawab pertanyaan berdasarkan informasi yang tersedia  
**Sitasi:** `jurafsky2025speech`  ·  **PDF lokal:** tidak ada

**Catatan:** Buku Jurafsky & Martin tidak ada di lokal (tidak ada PDF di D:\KEJARCEPATTTT). Perlu PDF/buku atau ganti ke sumber yang bisa dicek.

### B1-02 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Extractive QA memilih bagian teks paling relevan dari konteks sebagai jawaban  
**Sitasi:** `jurafsky2025speech`  ·  **PDF lokal:** tidak ada

**Catatan:** Sama seperti B1-01. Alternatif yang bisa dicek: p14 (Devlin) atau p30 (Ramaputra) yang mendefinisikan extractive QA.

### B1-03 — [!] PERLU DICEK
**Klaim di skripsi:** Transformer dipakai karena mampu mempelajari representasi kontekstual dari teks  
**Sitasi:** `vaswani2017attention`  ·  **PDF lokal:** `Attention is All you Need.pdf`

**Kutipan verbatim dari sumber:**
- “We propose a new simple network architecture, the Transformer, based solely on attention mechanisms, dispensing with recurrence and convolutions entirely” — *Abstrak (hal. 1)*

**Catatan:** Kutipan mendukung keberadaan arsitektur berbasis attention, tetapi tidak menyatakan klaim 'representasi kontekstual'. Klaim kontekstual lebih tepat disandarkan ke Devlin (p14) atau Rogers (p02, BERTology) — p02 ada di korpus tapi belum masuk bahan.

### B1-04 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Model Transformer telah ditinjau pada berbagai tugas NLP berbasis teks  
**Sitasi:** `rahali2023end`  ·  **PDF lokal:** tidak ada

**Catatan:** PDF Rahali & Akhloufi (2023) tidak ada di lokal.

### B1-05 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Model pralatih dapat disesuaikan ke tugas tertentu melalui fine-tuning  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “the pre-trained BERT model can be finetuned with just one additional output layer” — *Abstrak (hal. 1)*

### B1-06 — [!] PERLU DICEK
**Klaim di skripsi:** Model bahasa juga dikembangkan untuk bahasa lain, termasuk bahasa Indonesia  
**Sitasi:** `wilie2020indonlu`  ·  **PDF lokal:** `IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “we introduce the first-ever vast resource for training, evaluation, and benchmarking on Indonesian natural language understanding (IndoNLU) tasks” — *Abstrak (hal. 1)*

**Catatan:** Kutipan membuktikan adanya resource/benchmark Indonesia, bukan pernyataan umum 'model bahasa juga dikembangkan untuk bahasa lain'. Kalau klaim dipertahankan, kata-katanya perlu dipersempit ke 'resource dan model pralatih berbahasa Indonesia'.

### B1-07 — [~] SEBAGIAN TERVERIFIKASI
**Klaim di skripsi:** IndoBERT dapat dipakai memahami pertanyaan dan konteks; SQuAD-id dipakai untuk melatih/mengevaluasi penemuan jawaban  
**Sitasi:** `wilie2020indonlu; muis2020sequence`  ·  **PDF lokal:** `IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “We also provide a set of Indonesian pre-trained models (IndoBERT) trained from a large and clean Indonesian dataset (Indo4B)” — *Abstrak (hal. 1)*

**Catatan:** Bagian IndoBERT terverifikasi; klaim 'memahami pertanyaan dan konteks' adalah inferensi penulis, bukan kalimat IndoNLU. Bagian SQuAD-id (muis2020sequence) BELUM TERVERIFIKASI — PDF tidak ada di lokal, padahal ini dataset utama skripsi, jadi prioritas untuk diunduh.

### B1-08 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Model berpresisi tinggi butuh ruang penyimpanan lebih besar daripada presisi rendah  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “Moving from floating-point representations to low-precision fixed integer values represented in four bits or less holds the potential to reduce the memory footprint and latency by a factor of 16x” — *Abstrak (hal. 1)*

### B1-09 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Kuantisasi = merepresentasikan nilai numerik model dengan presisi lebih rendah  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “quantization: in what manner should a set of continuous real-valued numbers be distributed over a fixed discrete set of numbers to minimize the number of bits required” — *Abstrak (hal. 1)*

### B1-10 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Kuantisasi BERT telah diterapkan dengan representasi 8-bit  
**Sitasi:** `zafrir2019q8bert`  ·  **PDF lokal:** `Q8BERT_ Quantized 8Bit BERT.pdf`

**Kutipan verbatim dari sumber:**
- “the produced quantized model can accelerate inference speed if it is optimized for 8bit Integer supporting hardware” — *Abstrak (hal. 1)*
- “we show how to perform quantizationaware training during the fine-tuning phase of BERT in order to compress BERT by 4x with minimal accuracy loss” — *Abstrak (hal. 1)*

**Catatan:** Perlu dicatat: Q8BERT adalah QAT, bukan PTQ — penting supaya tidak dibaca sebagai preseden PTQ.

### B1-11 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Kuantisasi telah diterapkan pada BERT berbahasa Indonesia  
**Sitasi:** `abdurrahman2023implementing`  ·  **PDF lokal:** `Implementing_Quantization_to_Indonesian_BERT_Language_Model.pdf`

**Kutipan verbatim dari sumber:**
- “this paper evaluates compression techniques through quantization for an Indonesian version of the BERT model, namely IndoBERT” — *Abstrak (hal. 1)*

### B1-12 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Pengaruh kuantisasi pada Transformer Indonesia telah dikaji pada tugas analisis sentimen  
**Sitasi:** `sanjaya2026quantization`  ·  **PDF lokal:** `quantization effectson explainability in indonesian transformer based sentiment analysis.pdf`

**Kutipan verbatim dari sumber:**
- “We study this on IndoBERT fine-tuned for three-class Indonesian sentiment classification, comparing post-training quantization (PTQ) and quantization-aware training (QAT) at FP16, INT8, and INT4” — *Abstrak (hal. 1)*

### B1-13 — [OK] TERVERIFIKASI
**Klaim di skripsi:** PTQ = kuantisasi yang diterapkan setelah model selesai dilatih  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “This can either be performed by retraining the model, a process that is called QuantizationAware Training (QAT), or done without re-training, a process that is often referred to as Post-Training Quantization (PTQ)” — *Bagian Post-Training Quantization (hal. 3)*

### B1-14 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Perubahan representasi bobot dapat memengaruhi hasil prediksi model  
**Sitasi:** `wu2023understanding`  ·  **PDF lokal:** `Understanding INT4 Quantization for Language Models_ Latency Speedup, Composability, and Failure Cases.pdf`

**Kutipan verbatim dari sumber:**
- “W4A4 quantization introduces no to negligible accuracy degradation for encoder-only and encoder-decoder models, but causes a significant accuracy drop for decoder-only models” — *Abstrak (hal. 1)*

**Catatan:** Kutipan menunjukkan dampak akurasi berbeda antar-arsitektur; kata 'dapat memengaruhi' aman.

### B1-15 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Granularitas menentukan cakupan bobot yang memakai parameter kuantisasi bersama  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “One differentiator for quantization methods is the granularity of how the clipping range” — *Bagian E. Quantization Granularity (hal. 7)*

### B1-16 — [X] TIDAK COCOK
**Klaim di skripsi:** Perbedaan granularitas menghasilkan pertukaran antara efisiensi penyimpanan dan kemampuan mempertahankan representasi bobot  
**Sitasi:** `wu2023understanding`  ·  **PDF lokal:** `Understanding INT4 Quantization for Language Models_ Latency Speedup, Composability, and Failure Cases.pdf`

**Catatan:** Paper Wu dkk. (p64) TIDAK membahas granularitas sama sekali (0 kemunculan kata 'granular' di seluruh teks). Ganti sitasi ke gholami2021survey (bagian E, yang memang membahas layerwise vs channelwise vs groupwise) atau ke bondarenko2021understanding (per-embedding-group).

### B1-17 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Pada presisi 4-bit, penurunan kinerja dapat terjadi setelah model konvergen  
**Sitasi:** `armstrong2026flat`  ·  **PDF lokal:** `When Flat Minima Fail_ Characterizing INT4 Quantization Collapse After FP32 Convergence.pdf`

**Kutipan verbatim dari sumber:**
- “Post-training quantization (PTQ) assumes that a well-converged model is a quantization-ready model. We show this assumption fails” — *Abstrak (hal. 1)*
