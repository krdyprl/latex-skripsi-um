# Justifikasi Klaim — Bab II (Kajian Pustaka)

Sama seperti Bab I, untuk seluruh klaim bersitasi di Bab II. Legenda status sama: **[OK]** terverifikasi · **[OK*]** terverifikasi lewat sumber sekunder · **[~]** sebagian · **[_]** klaim lebih luas dari kutipan · **[X]** sitasi tidak mendukung · **[--]** belum bisa dicek.

File bab: `src/chapters/chapter-2.tex`

### B2-01 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** QA adalah tugas NLP: sistem menjawab pertanyaan berdasarkan informasi yang tersedia  
**Sitasi:** `jurafsky2025speech`  ·  **PDF lokal:** tidak ada

**Catatan:** Buku Jurafsky & Martin tidak ada di lokal.

### B2-02 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Pada pendekatan extractive, jawaban dipilih sebagai span di dalam konteks  
**Sitasi:** `jurafsky2025speech`  ·  **PDF lokal:** tidak ada

**Catatan:** Bisa dialihkan ke p14 (Devlin) yang mendefinisikan span S/E, atau p30.

### B2-03 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Masukan = pasangan pertanyaan+konteks; keluaran = posisi token awal dan akhir span jawaban  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “we only introduce a start vector” — *Bagian 3.2 (Fine-tuning BERT), hal. 4*
- “The probability of word i being the start of the answer span is computed as a dot prod” — *Bagian 3.2 (Fine-tuning BERT), hal. 4*

### B2-04 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Transformer memproses urutan token dengan attention tanpa rekurensi  
**Sitasi:** `vaswani2017attention`  ·  **PDF lokal:** `Attention is All you Need.pdf`

**Kutipan verbatim dari sumber:**
- “We propose a new simple network architecture, the Transformer, based solely on attention mechanisms, dispensing with recurrence and convolutions entirely” — *Abstrak (hal. 1)*

### B2-05 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Mekanisme inti adalah scaled dot-product attention (Q, K, V)  
**Sitasi:** `vaswani2017attention`  ·  **PDF lokal:** `Attention is All you Need.pdf`

**Kutipan verbatim dari sumber:**
- “scaled dot-product attention” — *Bagian 3.2.1 Scaled Dot-Product Attention*

**Catatan:** Kutipan pendek; kalau butuh kalimat penuh, ambil definisi rumus attention di bagian yang sama.

### B2-06 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Multi-head attention menjalankan h attention secara paralel  
**Sitasi:** `vaswani2017attention`  ·  **PDF lokal:** `Attention is All you Need.pdf`

**Kutipan verbatim dari sumber:**
- “Multi-head attention allows the model to jointly attend to information from different representation subspaces at different positions” — *Bagian 3.2.2 Multi-Head Attention*

### B2-07 — [OK] TERVERIFIKASI
**Klaim di skripsi:** BERT memakai encoder Transformer dua arah (bidirectional)  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “BERT is designed to pretrain deep bidirectional representations” — *Abstrak (hal. 1)*

### B2-08 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Pada MLM sebagian token disembunyikan lalu diprediksi dari konteks kiri-kanan  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “we simply mask some percentage of the input tokens at random, and then predict those masked tokens” — *Bagian 3.1 (Pre-training BERT), hal. 4*

### B2-09 — [OK] TERVERIFIKASI
**Klaim di skripsi:** BERT-base 110 juta parameter; BERT-large 340 juta parameter  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “Total Parameters=110M” — *Bagian 3 (Model Architecture), hal. 3*

**Catatan:** Angka 340M ada di kalimat yang sama (BERTLARGE ... Total Parameters=340M).

### B2-10 — [OK] TERVERIFIKASI
**Klaim di skripsi:** IndoBERT adalah model pralatih Indonesia berarsitektur BERT dari benchmark IndoNLU  
**Sitasi:** `wilie2020indonlu`  ·  **PDF lokal:** `IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “We also provide a set of Indonesian pre-trained models (IndoBERT) trained from a large and clean Indonesian dataset (Indo4B)” — *Abstrak (hal. 1)*

### B2-11 — [OK] TERVERIFIKASI
**Klaim di skripsi:** IndoBERT dipralatih pada korpus Indo4B  
**Sitasi:** `wilie2020indonlu`  ·  **PDF lokal:** `IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “We also provide a set of Indonesian pre-trained models (IndoBERT) trained from a large and clean Indonesian dataset (Indo4B)” — *Abstrak (hal. 1)*

### B2-12 — [!] PERLU DICEK
**Klaim di skripsi:** IndoBERT dapat dimanfaatkan untuk memahami pertanyaan dan konteks berbahasa Indonesia  
**Sitasi:** `wilie2020indonlu`  ·  **PDF lokal:** `IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “IndoNLU includes twelve tasks, ranging from single sentence classification to pair-sentences sequence labeling” — *Abstrak (hal. 1)*

**Catatan:** IndoNLU tidak menyatakan klaim 'memahami pertanyaan dan konteks'. Yang bisa dipakai: hasil FacQA (span extraction) pada Tabel 22 — 'multilingual models tend to perform better ... on the NERGrit and FacQA tasks'. Kalau klaim dipertahankan, sebut sebagai inferensi, bukan fakta bersitasi.

### B2-13 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Penyesuaian model pralatih ke extractive QA dilakukan lewat fine-tuning  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “the pre-trained BERT model can be finetuned with just one additional output layer” — *Abstrak (hal. 1)*

### B2-14 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Pertanyaan+konteks digabung jadi satu urutan; vektor S dan E dikalikan representasi token  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “we only introduce a start vector” — *Bagian 3.2 (Fine-tuning BERT), hal. 4*

### B2-15 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Skor kandidat span = S·Ti + E·Tj; span skor tertinggi dipilih  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “The score of a candidate span from position i to position j is defined as” — *Bagian 3.2 (Fine-tuning BERT), hal. 4*

**Catatan:** Rumus S·Ti + E·Tj ada tepat setelah kutipan ini.

### B2-16 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Objektif fine-tuning = jumlah log-likelihood posisi awal dan akhir yang benar  
**Sitasi:** `devlin2019bert`  ·  **PDF lokal:** `BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf`

**Kutipan verbatim dari sumber:**
- “The training objective is the sum of the log-likelihoods of the correct start and end positions” — *Bagian 3.2 (Fine-tuning BERT), hal. 4*

### B2-17 — [OK*] TERVERIFIKASI (sumber sekunder)
**Klaim di skripsi:** SQuAD-id = terjemahan mesin SQuAD v2.0 ke bahasa Indonesia  
**Sitasi:** `muis2020sequence`  ·  **PDF lokal:** `Evaluating the Impact of Quantization on Indonesian Question Answering.pdf`

**Kutipan verbatim dari sumber:**
- “dataset that is translated to Indonesian using Google Translate” — *p30, Bagian 3.3 Dataset (hal. 4)*

**Catatan:** Diverifikasi lewat p30 (Ramaputra), yang menyitasi SQuAD-id [12]. PDF sumber primer (Muis dkk. 2020) tidak ada di lokal, dan judulnya di bib ('...Indonesian Automatic Question Generator') tidak menyiratkan SQuAD-id — perlu dipastikan. Catatan penting: versi yang dipakai p30 adalah SQuAD-id dari SEACrowd, sedangkan Bab II menyebut versi 'yang telah ditata ulang dan dikoreksi' dengan penanda kualitas — itu ciri kartu dataset SEACrowd, jadi sitasinya semestinya SEACrowd (Lovenia dkk.), bukan hanya Muis.

### B2-18 — [~] SEBAGIAN TERVERIFIKASI
**Klaim di skripsi:** SQuAD = benchmark QA dengan jawaban span dari paragraf Wikipedia  
**Sitasi:** `rajpurkar2016squad`  ·  **PDF lokal:** `Evaluating the Impact of Quantization on Indonesian Question Answering.pdf`

**Kutipan verbatim dari sumber:**
- “where the answer to each question is a contiguous span of text from the corresponding passage” — *p30, Bagian 3.3 Dataset (hal. 4)*

**Catatan:** Bagian 'jawaban berupa span' terverifikasi lewat p30; bagian 'berasal dari paragraf Wikipedia' belum (paper Rajpurkar tidak ada di lokal).

### B2-19 — [OK*] TERVERIFIKASI (sumber sekunder)
**Klaim di skripsi:** SQuAD v2.0 menambahkan pertanyaan tanpa jawaban pada konteks  
**Sitasi:** `rajpurkar2016squad`  ·  **PDF lokal:** `Evaluating the Impact of Quantization on Indonesian Question Answering.pdf`

**Kutipan verbatim dari sumber:**
- “SQuAD v2.0 later extended this by adding unanswerable questions” — *p30, Bagian 3.3 Dataset (hal. 4)*

**Catatan:** Terverifikasi lewat ringkasan p30; sitasi primer (Rajpurkar dkk. 2016, arXiv:1606.05250) belum diunduh.

### B2-20 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Kuantisasi = komputasi & penyimpanan tensor pada presisi bit lebih rendah  
**Sitasi:** `abdurrahman2023implementing`  ·  **PDF lokal:** `Implementing_Quantization_to_Indonesian_BERT_Language_Model.pdf`

**Kutipan verbatim dari sumber:**
- “Quantization is a technique for performing computations and storing tensors at a lower bit precision” — *Bagian II.B Quantization (hal. 2)*

### B2-21 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Kuantisasi = pemetaan nilai riil kontinu ke himpunan diskret; nilai di luar rentang dipotong (clipping)  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “quantization: in what manner should a set of continuous real-valued numbers be distributed over a fixed discrete set of numbers” — *Abstrak (hal. 1)*
- “the clipping range [α, β] should first be determined. The process of choosing the clipping range is often referred to as calibration” — *Bagian II.B Uniform Quantization (hal. 3)*

### B2-22 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Model berpresisi tinggi butuh penyimpanan lebih besar daripada presisi rendah  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “Moving from floating-point representations to low-precision fixed integer values represented in four bits or less holds the potential to reduce the memory footprint and latency by a factor of 16x” — *Abstrak (hal. 1)*

### B2-23 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Kuantisasi simetris b-bit (Pers. 2.1 dan 2.2 di Bab II)  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “Using symmetric quantization, however, simplifies the quantization function in Eq. 2 by replacing the zero point with Z = 0” — *Bagian II.C Symmetric and Asymmetric Quantization (hal. 4)*

### B2-24 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Dekuantisasi: x̂ = x_q · s  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “It is possible to recover real values r from the quantized values Q(r) through an operation that is often referred to as dequantization” — *Bagian II.B Uniform Quantization (hal. 3)*

### B2-25 — [OK] TERVERIFIKASI
**Klaim di skripsi:** PTQ = kuantisasi setelah model dilatih, skala/zero point ditentukan dari model yang ada  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “done without re-training, a process that is often referred to as Post-Training Quantization (PTQ)” — *Bagian II.E Post-Training Quantization (hal. 5)*

### B2-26 — [OK] TERVERIFIKASI
**Klaim di skripsi:** PTQ tidak butuh retraining sehingga bisa diterapkan pada model yang sudah di-fine-tune  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “done without re-training, a process that is often referred to as Post-Training Quantization (PTQ)” — *Bagian II.E Post-Training Quantization (hal. 5)*

### B2-27 — [OK] TERVERIFIKASI
**Klaim di skripsi:** QAT memasukkan operasi kuantisasi ke proses pelatihan, dengan biaya komputasi tambahan  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “This can either be performed by retraining the model, a process that is called QuantizationAware Training (QAT)” — *Bagian II.E Post-Training Quantization (hal. 5)*

### B2-28 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Kuantisasi bisa diterapkan pada bobot saja atau bobot+aktivasi  
**Sitasi:** `bondarenko2021understanding`  ·  **PDF lokal:** `Understanding and Overcoming the Challenges of Efficient Transformer Quantization.pdf`

**Kutipan verbatim dari sumber:**
- “W8A8 W32A8 W8A32” — *Tabel 1 (kolom Configuration), hal. 5*

**Catatan:** Tabel 1 memuat tiga konfigurasi: W8A8 (bobot+aktivasi), W32A8 (aktivasi saja), W8A32 (bobot saja) — persis membedakan kedua kemungkinan.

### B2-29 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Notasi WxAy = bobot x-bit, aktivasi y-bit (mis. W8A8)  
**Sitasi:** `bondarenko2021understanding`  ·  **PDF lokal:** `Understanding and Overcoming the Challenges of Efficient Transformer Quantization.pdf`

**Kutipan verbatim dari sumber:**
- “W8A8 W32A8 W8A32” — *Tabel 1 (kolom Configuration), hal. 5*

### B2-30 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Pada BERT-base: GLUE 83,06 (FP32), 71,03 (W8A8), 70,25 (W32A8), 83,23 (W8A32)  
**Sitasi:** `bondarenko2021understanding`  ·  **PDF lokal:** `Understanding and Overcoming the Challenges of Efficient Transformer Quantization.pdf`

**Kutipan verbatim dari sumber:**
- “FP32 57.27 93.12 88.36 89.09 89.72 84.91 91.58 70.40 83.06” — *Tabel 1, baris FP32 (kolom GLUE = 83.06), hal. 5*
- “W8A8 W32A8 W8A32 54.74 92.55 56.70 92.43” — *Tabel 1, baris W8A8/W32A8/W8A32, hal. 5*

**Catatan:** Empat angka di Bab II cocok dengan Tabel 1 (83.06 / 71.03 / 70.25 / 83.23). Tabel ini adalah hasil PTQ, jadi memang layak jadi acuan 'weight-only menghasilkan skor hampir sama dengan FP32'.

### B2-31 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Granularitas menentukan cakupan bobot yang memakai parameter kuantisasi bersama  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “One differentiator for quantization methods is the granularity of how the clipping range” — *Bagian E. Quantization Granularity (hal. 7)*

### B2-32 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Fine-grained = satu faktor skala untuk setiap channel j dari tensor bobot  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “One can achieve better quantization resolution using channelwise quantization” — *Gambar 3 / Bagian E. Quantization Granularity (hal. 7)*

### B2-33 — [X] TIDAK COCOK
**Klaim di skripsi:** Perbedaan granularitas = trade-off efisiensi penyimpanan vs representasi bobot  
**Sitasi:** `wu2023understanding`  ·  **PDF lokal:** `Understanding INT4 Quantization for Language Models_ Latency Speedup, Composability, and Failure Cases.pdf`

**Catatan:** Wu dkk. (p64) tidak membahas granularitas (0 kemunculan 'granular'). Ganti ke gholami2021survey (bagian E: layerwise vs channelwise vs groupwise) atau bondarenko2021understanding (per-embedding-group).

### B2-34 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Pada 4-bit, penurunan kinerja dapat terjadi setelah konvergensi  
**Sitasi:** `armstrong2026flat`  ·  **PDF lokal:** `When Flat Minima Fail_ Characterizing INT4 Quantization Collapse After FP32 Convergence.pdf`

**Kutipan verbatim dari sumber:**
- “Post-training quantization (PTQ) assumes that a well-converged model is a quantization-ready model. We show this assumption fails” — *Abstrak (hal. 1)*

### B2-35 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** EM dan F1 adalah metrik standar evaluasi SQuAD  
**Sitasi:** `rajpurkar2016squad`  ·  **PDF lokal:** tidak ada

**Catatan:** PDF Rajpurkar tidak ada di lokal.

### B2-36 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Normalisasi jawaban: huruf kecil, hapus tanda baca  
**Sitasi:** `rajpurkar2016squad`  ·  **PDF lokal:** tidak ada

**Catatan:** Sama; ini detail yang penting untuk reproduksi, jadi sebaiknya diverifikasi.

### B2-37 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Rumus F1 = harmonic mean precision/recall, diambil maksimum terhadap jawaban acuan  
**Sitasi:** `rajpurkar2016squad`  ·  **PDF lokal:** tidak ada

**Catatan:** Sama.

### B2-38 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Selisih EM/F1 belum tentu signifikan karena sampel uji terbatas  
**Sitasi:** `dror2018hitchhiker`  ·  **PDF lokal:** tidak ada

**Catatan:** PDF Dror dkk. (2018) tidak ada di lokal.

### B2-39 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Uji signifikansi statistik diperlukan untuk membedakan perbedaan nyata dari variasi acak  
**Sitasi:** `dror2018hitchhiker`  ·  **PDF lokal:** tidak ada

**Catatan:** Sama.

### B2-40 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Paired bootstrap: resampling dengan pengembalian B kali, hitung selisih rata-rata skor  
**Sitasi:** `bergkirkpatrick2012; efron1993`  ·  **PDF lokal:** tidak ada

**Catatan:** Dua sumber (Berg-Kirkpatrick 2012; Efron & Tibshirani 1993) tidak ada di lokal.

### B2-41 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Koreksi Holm untuk pengujian berganda (m=3 per metrik)  
**Sitasi:** `holm1979`  ·  **PDF lokal:** tidak ada

**Catatan:** Paper Holm (1979) tidak ada di lokal; prosedurnya sudah ditulis eksplisit di Bab II sehingga yang perlu dicek hanya rujukannya.

### B2-42 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Gholami dkk. menyusun survei metode kuantisasi (seragam, granularitas, PTQ)  
**Sitasi:** `gholami2021survey`  ·  **PDF lokal:** `A Survey of Quantization Methods for Efficient Neural Network Inference.pdf`

**Kutipan verbatim dari sumber:**
- “we survey approaches to the problem of quantizing the numerical values in deep Neural Network computations, covering the advantages/disadvantages of current methods” — *Abstrak (hal. 1)*

### B2-43 — [OK] TERVERIFIKASI
**Klaim di skripsi:** Celah 1: weight-only PTQ 4-bit pada IndoBERT baru dilaporkan untuk 7 tugas IndoNLU dan sentimen; pada extractive QA SQuAD-id baru pada LLM decoder-only  
**Sitasi:** `abdurrahman2023implementing; sanjaya2026quantization; ramaputra2026evaluating`  ·  **PDF lokal:** `Implementing_Quantization_to_Indonesian_BERT_Language_Model.pdf`

**Kutipan verbatim dari sumber:**
- “Experiments on 7 downstream tasks” — *Abstrak (hal. 1)*
- “PTQ-INT4 uses symmetric, per-tensor, weight-only quantization” — *Bagian 3.1 (hal. 3)*
- “quantization impacts extractive and generative QA differently, with generative tasks showing greater robustness” — *Abstrak (hal. 1)*

**Catatan:** Ketiga sumber ada di korpus. p42 memang 7 task termasuk FACQA; p52 weight-only per-tensor pada sentimen; p30 QA Indonesia tetapi pada LLM (Qwen/Gemma), bukan encoder.

### B2-44 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Celah 2: perbandingan granularitas weight-only PTQ encoder baru ada pada retrieval embedding, belum pada extractive QA  
**Sitasi:** `han2026breaking`  ·  **PDF lokal:** tidak ada

**Catatan:** Paper Han (2026) TIDAK ada di lokal — padahal klaim celah penelitian bertumpu pada paper ini. Wajib diunduh sebelum sidang.

### B2-45 — [--] BELUM TERVERIFIKASI
**Klaim di skripsi:** Han (2026) melaporkan paired bootstrap + koreksi Benjamini-Hochberg pada NDCG@10, bukan metrik QA  
**Sitasi:** `han2026breaking`  ·  **PDF lokal:** tidak ada

**Catatan:** Sama; ini klaim yang sangat spesifik (metode uji + metrik), jadi paling rawan salah kalau tidak dicek.
