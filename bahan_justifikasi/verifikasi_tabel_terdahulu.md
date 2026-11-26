# Verifikasi Tabel Penelitian Terdahulu (Tabel 2.1 di Bab II)

Lima baris tabel di Bab II dicek ulang ke PDF sumber yang tersedia di lokal. Tiga baris bisa diverifikasi penuh; dua baris tidak bisa karena PDF-nya tidak ada.

## Ringkasan

| No | Referensi | Status | Angka cocok? |
|---|---|---|---|
| 1 | Hu dkk. (2022) | BELUM TERVERIFIKASI — PDF tidak ada di lokal | tidak bisa dicek |
| 2 | Abdurrahman dkk. (2023) | TERVERIFIKASI penuh | ya, 5/5 |
| 3 | Han (2026) | BELUM TERVERIFIKASI — PDF tidak ada di lokal | tidak bisa dicek |
| 4 | Sanjaya dkk. (2026) | TERVERIFIKASI penuh | ya, 4/4 + teknik |
| 5 | Ramaputra & Joddy (2026) | TERVERIFIKASI penuh | ya, 5/5 |

## Rincian bukti

### Baris 2 — Abdurrahman dkk. (2023) — `Implementing_Quantization_to_Indonesian_BERT_Language_Model.pdf`

| Klaim di tabel | Kutipan/angka di PDF | Status |
|---|---|---|
| 7 tugas IndoNLU: SmSA, WReTE, FacQA, BaPOS, CASA, KEPS, NERGrit | “SMSA WRETE FACQA BAPOS CASA KEPS NERGRIT” (Tabel VI/VII) | cocok |
| PTQ 4-bit F1 72,78 | baris “W4A32 … 72.78” (kolom Average) | cocok |
| FP32 F1 77,35 | baris “W32A32 … 77.35” | cocok |
| QAT 4-bit 74,94 | baris “W4A32 … 74.94” (tabel QAT) | cocok |
| ukuran 59,75 MB vs 474,72 MB | “Size (MB) 474.72 237.59 119 89.39 59.75” (Tabel VII) | cocok |
| granularitas tidak disebutkan | kata “granular” tidak muncul sama sekali di teks | cocok |

### Baris 4 — Sanjaya dkk. (2026) — `quantization effectson explainability in indonesian transformer based sentiment analysis.pdf`

| Klaim di tabel | Kutipan/angka di PDF | Status |
|---|---|---|
| Akurasi 92,9% vs 93,1% | Tabel 1: “PTQ-INT4 92.9±0.3 … FP32 93.1±0.4” | cocok |
| F1 92,7% vs 93,0% | Tabel 1: “PTQ-INT4 … 92.7±0.4” vs “FP32 … 93.0±0.4” | cocok |
| berkas 230 MB vs 475 MB | Tabel 1: “230” vs “475” | cocok |
| latensi 32,7 ms vs 25,1 ms | Tabel 1: “32.7” vs “25.1” | cocok |
| teknik: PTQ INT4 weight-only, simetris, per-tensor | “PTQ-INT4 uses symmetric, per-tensor, weight-only quantization” (Bagian 3.1) | cocok |

### Baris 5 — Ramaputra & Joddy (2026) — `Evaluating the Impact of Quantization on Indonesian Question Answering.pdf`

| Klaim di tabel | Kutipan/angka di PDF | Status |
|---|---|---|
| Qwen2.5-14B EM 48,61 → 44,73 (AWQ), 43,80 (GPTQ) | baris tabel: “48.61 44.73 48.97 43.80 48.61” | cocok |
| Qwen2.5-7B EM 42,05 → 42,15 (AWQ), 42,34 (GPTQ) | baris tabel: “42.05 42.15 40.87 42.34 41.68” | cocok |
| SQuAD-id, subset validasi, tanpa sampel tak terjawab | “we only use the validation subset of the dataset and we filtered all unanswerable questions” | cocok |

## Konsekuensi

- Tanda † pada baris **2, 4, dan 5** sudah bisa dihapus — angkanya cocok semua dengan tabel di PDF.
- Tanda † pada baris **1 dan 3** harus tetap ada sampai PDF-nya diunduh.
- Baris 4 bisa diperkaya: paper itu juga melaporkan PTQ-INT8 (230 MB, 9,4 ms) yang lebih cepat dari FP32 (25,1 ms) tetapi PTQ-INT4 justru lebih lambat (32,7 ms) — ini contoh bagus bahwa kompresi belum tentu mempercepat, dan relevan untuk pembahasan Bab IV.
- Tabel 1 Sanjaya memakai rumus skala yang sama dengan Persamaan 2.2 di Bab II: “s = max(|w|)/(2b−1 − 1)” — bisa dipakai sebagai justifikasi bahwa implementasi rencanamu konsisten dengan literatur.