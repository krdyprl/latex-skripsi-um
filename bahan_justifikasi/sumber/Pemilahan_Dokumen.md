# Pemilahan Dokumen — folder `sudah dipilih`

Kriteria masuk (sesuai permintaan): **post-training quantization, extractive question answering, weight-only quantization, fine-grained, coarse-grained (granularitas)**.

Hasil: **32 dokumen masuk `bahan/`**, **33 PDF tidak masuk**, **4 berkas non-PDF tidak masuk**. Total 69 berkas diperiksa (65 PDF + 2 notebook + 1 htm + 1 md).

Dasar keputusan: judul + abstrak + pencarian kata kunci pada teks lengkap setiap PDF (PTQ, weight-only, fine-grained, coarse-grained, per-channel/per-tensor/per-group, SQuAD/FacQA/question answering).


## Masuk `bahan/` (32)

| No | File | Kategori |
|---|---|---|
| 1 | A Survey of Quantization Methods for Efficient Neural Network Inference.pdf | PTQ + granularitas (layerwise/coarse vs channelwise/fine) |
| 2 | Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference.pdf | Dasar skema kuantisasi integer-only (rumus scale/zero-point) yang dipakai hampir semua PTQ |
| 3 | Q8BERT_ Quantized 8Bit BERT.pdf | Kuantisasi BERT (QAT saat fine-tuning) — pembanding PTQ |
| 4 | I BERT Integer only BERT Quantization.pdf | Kuantisasi BERT end-to-end (INT8, integer-only) — baseline penting untuk skema kuantisasi BERT |
| 5 | Understanding and Overcoming the Challenges of Efficient Transformer Quantization.pdf | INTI: tantangan kuantisasi Transformer + per-embedding-group (fine-grained) quantization |
| 6 | Accurate Post Training Quantization With Small Calibration Sets.pdf | PTQ (kalibrasi, optimasi per-layer) |
| 7 | On the Impact of Calibration Data in Post-training Quantization and Pruning.pdf | INTI: pengaruh data kalibrasi pada PTQ |
| 8 | Outliers and Calibration Sets have Diminishing Effect on Quantization of Modern LLMs.pdf | INTI: peran calibration set & outlier pada PTQ |
| 9 | Shang_Enhancing_Post-training_Quantization_Calibration_through_Contrastive_Learning_CVPR_2024_paper.pdf | INTI: metode kalibrasi PTQ (CL-Calib), granularitas W2A2 ekstrem |
| 10 | Stabilized activation scale estimation for precise PostTraining Quantization.pdf | PTQ: estimasi activation scale, target W2A4 |
| 11 | FPTQ - Fine-Grained Post-Training Quantization for Large Language Models.pdf | PTQ W4A8 + fine-grained weight quantization |
| 12 | Understanding INT4 Quantization for Language Models_ Latency Speedup, Composability, and Failure Cases.pdf | INTI: kelayakan INT4 W4A4 untuk model encoder (BERT) — dasar argumen kenapa encoder lebih toleran |
| 13 | When Flat Minima Fail_ Characterizing INT4 Quantization Collapse After FP32 Convergence.pdf | INTI: PTQ INT4 per-group gagal setelah model konvergen (fenomena collapse) |
| 14 | Can Less Precise Be More Reliable_ A Systematic Evaluation of Quantization's Impact on CLIP Beyond Accuracy.pdf | Evaluasi dampak PTQ/QAT di luar akurasi |
| 15 | Domain aware post training quantization for vision transformers in deployment.pdf | PTQ pada ViT, kondisi low-bit ekstrem + domain shift |
| 16 | Efficient Deep Neural Receiver with Post-Training Quantizatio.pdf | PTQ weight-only + perbandingan granularitas per-tensor (coarse) vs per-channel (fine) |
| 17 | How Quantization Shapes Bias in Large Language Models.pdf | Dampak kuantisasi bobot & aktivasi terhadap bias/fairness (evaluasi non-akurasi) |
| 18 | Quantization-aware training a tradeoff between training and.pdf | QAT vs fine-tuning domain-specific (biomedis) — pembanding biaya pelatihan |
| 19 | Binary and Ternary Natural Language Generation.pdf | Kuantisasi ternary/binary weight (ultra-low bit) pada Transformer |
| 20 | CAT-Q Cost-Efficient and Accurate Ternary Quantization for LLMs.pdf | PTQ ternary (weight-only ultra-low bit) + kalibrasi kecil |
| 21 | Sherry Hardware-Efficient 1.25-Bit Ternary Quantization via.pdf | Kuantisasi ternary weight + fine-grained sparsity (1.25-bit) |
| 22 | Tequila_ Trapping-free Ternary Quantization for Large Language Models.pdf | Kuantisasi ternary weight untuk LLM (menggantikan perkalian dengan penjumlahan) |
| 23 | TernaryBERT - Distillation-aware Ultra-low Bit BERT.pdf | INTI: kuantisasi ternary weight-only pada BERT + eksplorasi granularitas ternarisasi |
| 24 | The Era of 1-bit LLMs - All Large Language Models are in 1.58 Bits.pdf | Kuantisasi ternary (1.58-bit) weight-only, dilatih dari awal |
| 25 | Proposal Skripsi - Weight-Only Post-Training Quantization ResNet (Tafftadia).pdf | INTI: weight-only PTQ + granularitas per-channel + bit-packing (rancangan, hasil belum ada) |
| 26 | Implementing_Quantization_to_Indonesian_BERT_Language_Model.pdf | INTI: PTQ vs QAT pada IndoBERT, termasuk kasus ekstrem 4-bit |
| 27 | quantization effectson explainability in indonesian transformer based sentiment analysis.pdf | PTQ vs QAT pada IndoBERT (dampak ke stabilitas atribusi) |
| 28 | BERT_ Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf | Model dasar (BERT) + task extractive QA (SQuAD) |
| 29 | Evaluating the Impact of Quantization on Indonesian Question Answering.pdf | INTI: PTQ pada QA berbahasa Indonesia + perbandingan extractive vs generative QA |
| 30 | FinBERT QA Financial Question Answering with pretrained  BERT Language Models.pdf | QA domain keuangan (answer selection/non-factoid, bukan span extraction) |
| 31 | IndoNLU_ Benchmark and Resources for Evaluating Indonesian Natural Language Understanding.pdf | Dataset/benchmark IndoNLU — memuat task FacQA (span extraction / extractive QA) |
| 32 | Deep Research Kuantisasi Weight-Only PTQ pada BERT.pdf | Weight-only PTQ + BERT + SQuAD (sumber sekunder, wajib diverifikasi ulang ke paper aslinya) |

## Tidak masuk (33 PDF)

| No | File | Alasan |
|---|---|---|
| 1 | A deep learning based sentiment flow analysis model for predicting financial  risk of listed companies.pdf | Sentimen keuangan + prediksi risiko perusahaan; tidak ada kuantisasi maupun QA. |
| 2 | A Primer in BERTology What We Know About How BERTWorks.pdf | Analisis perilaku BERT (BERTology); tidak membahas kuantisasi/QA ekstraktif. |
| 3 | abstrak_telyu.pdf | PDF tanpa lapisan teks (ekstraksi 0 karakter, kemungkinan hasil pindai) → isi tidak dapat diverifikasi; juga abstrak skripsi sentimen. |
| 4 | Abstrak_UGM_Arah Pergerakan Saham.pdf | Abstrak skripsi UGM: sentimen untuk prediksi arah pergerakan saham. |
| 5 | Abstrak_UGM_Weight Average Transformer Indo.pdf | Abstrak skripsi UGM: weight averaging model Transformer (bukan kuantisasi). |
| 6 | Attention is All you Need.pdf | Arsitektur Transformer (Attention Is All You Need); tidak membahas kuantisasi/QA. |
| 7 | axioms-12-00835.pdf | FinBERT+LSTM prediksi S&P 500 (sentimen keuangan). |
| 8 | bab1_telyu_finbert.pdf | Bab 1 skripsi FinBERT (pendahuluan) — sentimen keuangan. |
| 9 | bab2_telyu_finber.pdf | Bab 2 skripsi FinBERT (tinjauan pustaka) — sentimen keuangan. |
| 10 | bab3_telyu_finbert.pdf | Bab 3 skripsi FinBERT (perancangan) — sentimen keuangan. |
| 11 | Benchmarking Large Language Models for Target Based Financial Sentiment Analysis.pdf | Benchmark LLM untuk sentimen keuangan target-based. |
| 12 | Bimasena Benchmarking IndoBERT and Multilingual BERT for Indonesian Financial News Sentiment Classification.pdf | Benchmark IndoBERT vs mBERT untuk sentimen berita keuangan. |
| 13 | BondBERT_ What we learn when assigning sentiment in the bond market.pdf | BondBERT — sentimen pasar obligasi. |
| 14 | Catatan_Penulisan_Skripsi.pdf | Catatan penulisan skripsi (panduan menulis, bukan artikel penelitian). |
| 15 | Dafisi_UGM_Arah Pergerakan Saham.pdf | Daftar isi skripsi UGM. |
| 16 | dafpus_telyuu.pdf | Daftar pustaka skripsi. |
| 17 | Dafpus_UGM_Arah Pergerakan Saham.pdf | Daftar pustaka skripsi UGM. |
| 18 | Do Words Matter Evidence from Bank Indonesia Communication, Interest Rates, Inflation, and Stock  Market Volatility.pdf | Sentimen komunikasi Bank Indonesia vs volatilitas pasar. |
| 19 | Domain-Specific Language Model Post-Training for Indonesian Financial NLP.pdf | 'Post-training' di sini berarti continued pretraining domain keuangan, bukan post-training quantization. |
| 20 | Enhancing Financial Sentiment Analysis Integrating the LoughranMcDonald Dictionary with BERT for Advanced Market Predictive Insights.pdf | Sentimen keuangan dengan kamus Loughran-McDonald + BERT. |
| 21 | Evaluation of Sentiment Analysis in Finance_ From Lexicons to Transformers.pdf | Evaluasi sentimen keuangan (leksikon vs Transformer) — duplikat dengan file 'Evaluation_of_Sentiment_Analysis...'. |
| 22 | Evaluation_of_Sentiment_Analysis_in_Finance_From_Lexicons_to_Transformers.pdf | Duplikat dari file 'Evaluation of Sentiment Analysis in Finance_ From Lexicons to Transformers.pdf'. |
| 23 | Financial Sentiment Analysis with Pretrained Language Models.pdf | FinBERT (Araci) — sentimen keuangan. |
| 24 | FinBERT A Pretrained Language Model for Financial Communications.pdf | FinBERT (Yang et al.) — sentimen komunikasi keuangan. |
| 25 | Fine-tuned IndoBERT for stock market sentiment analysis evidence from CNBC Indonesia news.pdf | IndoBERT fine-tuned untuk sentimen berita CNBC Indonesia. |
| 26 | FinLlama Financial Sentiment Classification for Algorithmic Trading Applications.pdf | FinLlama — klasifikasi sentimen untuk trading algoritmik. |
| 27 | Forecasting the S&P 500 Index Using Mathematical-Based Sentiment Analysis and Deep Learning Models A FinBERT Transformer Model and LSTM.pdf | Duplikat byte-identik dengan 'axioms-12-00835.pdf' (nama file menyesatkan: isinya paper S&P 500 yang sama). |
| 28 | Optimizing Transformer-Based Models for Financial Sentiment in Indonesian Stock Tweets.pdf | Sentimen tweet saham Indonesia berbasis Transformer. |
| 29 | Performance Metrics for Multilabel Emotion Classification Comparing Micro, Macro, and Weighted F1-Scores.pdf | Perbandingan F1 micro/macro/weighted untuk emosi multilabel — metodologi metrik, bukan kuantisasi/QA. |
| 30 | Predicting Stock Prices with FinBERT LSTM Integrating News Sentiment Analysis.pdf | FinBERT-LSTM prediksi harga saham. |
| 31 | Transformer-based sentiment modeling for identifying cross country fintech perception gaps.pdf | Sentimen fintech lintas negara. |
| 32 | Understanding and Overcoming the Challenges of Efficient Transformer Quantization v2.pdf | Duplikat byte-identik dengan file 'Understanding and Overcoming ... Quantization.pdf' (versi v2). |
| 33 | Understanding and Overcoming the Challenges of.pdf | Duplikat byte-identik (nama file terpotong: 'Understanding and Overcoming the Challenges of.pdf'). |

## Tidak masuk (berkas non-PDF)

| File | Alasan |
|---|---|
| Dynamic Quantization on BERT - Notebook Tutorial PyTorch.ipynb | Notebook tutorial praktik; tidak punya struktur tujuan–metode–hasil penelitian. Berguna untuk eksperimen, bukan untuk tabel review. |
| Introduction to Ternary Neural Networks - Notebook.ipynb | Notebook tutorial; idem. |
| Evaluating the Impact of Quantization on Indonesian Question Answering Performance.htm | Versi web dari paper yang sama dengan PDF yang sudah masuk `bahan/` (duplikat). |
| Daftar_Pustaka_Link.md | Daftar tautan pustaka, bukan dokumen penelitian. |

## Temuan duplikat & file bermasalah (perlu dibersihkan)

- `axioms-12-00835.pdf` **=** `Forecasting the S&P 500 ... LSTM.pdf` (byte-identik) — nama file kedua menyesatkan.
- `Evaluation of Sentiment Analysis in Finance_ ...` **=** `Evaluation_of_Sentiment_Analysis_in_Finance_...` (byte-identik).
- `Understanding and Overcoming ... Quantization.pdf` **=** `... v2.pdf` **=** `Understanding and Overcoming the Challenges of.pdf` (tiga file, byte-identik). Di `bahan/` hanya disimpan satu.
- `abstrak_telyu.pdf` tidak punya lapisan teks (0 karakter) — kalau memang perlu, harus di-OCR.
- Beberapa file punya ukuran ekstraksi identik tapi isi berbeda (kebetulan), sudah dicek satu per satu lewat hash teks.

## Catatan

- Nama file di `bahan/` tidak diubah agar mudah dilacak kembali ke folder asal.
- Tabel review lengkap: `Tabel_Review_Bahan.md` (satu tabel per dokumen, berisi tujuan–metode–hasil + kutipan verbatim + lokasi bagian + status verifikasi).