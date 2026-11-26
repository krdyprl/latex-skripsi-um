# Reports — Dataset, EDA, dan Metode Pengolahan Data

Dibuat 23 Oktober 2026 · untuk skripsi *Weight-Only Post-Training Quantization untuk Extractive Question Answering Bahasa Indonesia*

Isi: (1) hasil pembacaan EDA-mu, (2) rekonsiliasi angka dataset, (3) cara Muis dkk. (2020) mengolah data — termasuk fuzzy string matching Levenshtein, (4) cara Matrik (2026) mengolah data dan fine-tuning, (5) resep teknis untuk mengerjakannya, (6) implikasi untuk Bab II–III. Daftar hal yang butuh verifikasi ada di `report.md`.

---

## 1. Ringkasan

Ada tiga temuan yang mengubah gambaran:

1. **Datasetmu adalah SQuAD v2.0 terjemahan penuh, bukan versi yang sudah difilter.** `squad_id_train.jsonl` = 130.319 baris dan `squad_id_testt.jsonl` = 11.873 baris — dua angka itu **persis** jumlah train dan validation SQuAD v2.0 resmi. Artinya file ini memuat pertanyaan yang tidak bisa dijawab (`is_impossible`) juga.
2. **Pembanding paling dekat untuk baseline-mu sudah ada**: Matrik (2026) fine-tune `indobert-base-p1` dan `indolem/indobert-base-uncased` pada dataset Indonesia yang sama, dengan EM/F1 dan **bootstrap 10.000 iterasi** — persis uji yang kamu rencanakan. Angkanya: F1 **63,59** (IndoNLU/p1) dan **71,58** (IndoLEM).
3. **Perbaikan span dengan fuzzy matching Levenshtein bukan pekerjaan tambahan yang kamu rancang sendiri** — itu bagian dari pipeline pembuatan SQuAD-id (Muis dkk., 2020) dan diulang lagi oleh Matrik (2026). Datasetmu tampaknya sudah melewati proses itu (ada field `answer_start_recomputed`), tapi **belum kamu verifikasi**.

---

## 2. Yang saya baca dari EDA-mu

Dua notebook di `D:\KEJARCEPATTTT\Skripsi\`:

| Berkas | Isi | Status output |
|---|---|---|
| `eda_squad_id_jsonl.ipynb` | EDA dataset QA (`squad_id_train.jsonl`, `squad_id_testt.jsonl`), 14 bagian | **0 sel menyimpan output** (belum dieksekusi / output tidak tersimpan) |
| `eda_squad_id_nli.ipynb` | EDA dataset turunan NLI (`squad-id_nli_*.csv`, ~236,9k/23,7k/23,7k baris) | **0 sel menyimpan output** |

Karena tidak ada output tersimpan, saya **tidak menjalankan** notebook (sesuai instruksimu) dan **tidak mengarang hasil**. Yang bisa saya baca dan pakai adalah struktur data, asumsi, dan daftar pemeriksaan yang sudah kamu tulis.

### 2.1 Struktur satu baris `squad_id_train.jsonl`

```json
{
  "origin_id": "56be85543aeaaa14008c9063",
  "title": "Beyonce",
  "context": "Beyoncé Giselle Knowles-Carter ...",
  "question": "Kapan Beyonce mulai menjadi populer?",
  "answers": [{
    "text": "pada akhir 1990-an",
    "answer_start": 291,
    "answer_start_original": 269,
    "answer_start_recomputed": 291,
    "answer_start_recompute_note": "answer start is recomputed",
    "is_answer_missing": false
  }],
  "is_impossible": false,
  "is_data_invalid": false
}
```

Empat field yang penting untuk skripsimu:

- **`answer_start_original` vs `answer_start_recomputed`** → dataset ini **sudah pernah diperbaiki**: posisi awal jawaban dihitung ulang. Contoh di atas bergeser 22 karakter (269 → 291). Ini tanda khas hasil perbaikan alignment — pekerjaan yang di Muis dkk. dilakukan dengan Levenshtein.
- **`answer_start_recompute_note`** → jejak audit: baris mana yang posisinya diubah.
- **`is_answer_missing`** → jawaban tidak ditemukan di konteks (setara `indonesian_answer_start = -1` di Muis).
- **`is_data_invalid`** → baris ditolak saat validasi.

### 2.2 Angka yang kamu tulis di markdown notebook

| Split | Baris | Catatan |
|---|---:|---|
| train | 130.319 | = jumlah train SQuAD v2.0 resmi |
| test | 11.873 | = jumlah validation SQuAD v2.0 resmi; nama file `squad_id_testt.jsonl` (dua huruf t) |

### 2.3 Pemeriksaan yang sudah kamu siapkan (dan artinya)

Notebook-mu sudah mendefinisikan pemeriksaan yang tepat. Ini yang perlu dibaca hasilnya nanti:

| Sel | Yang diukur | Ambang yang wajar | Kenapa penting |
|---|---|---|---|
| §4 | `is_impossible`, `is_data_invalid` | answerable ≈ 86–87 ribu dari 130.319 | menentukan jumlah data efektif di Bab III |
| §5 `span_valid_%` | `context[start:start+len(answer)] == answer` | >99% | label salah → F1 turun bukan karena kuantisasi |
| §5 | `answer_start_original_valid_%` & selisih recomputed−original | — | membuktikan dataset sudah diperbaiki |
| §5 `recompute_note` | distribusi catatan | — | dokumentasi audit |
| §6 | panjang konteks (kata/karakter) | p95 < ~400 kata | menentukan `max_length` 384/512 |
| §7 | pertanyaan per konteks | — | SQuAD: banyak pertanyaan per paragraf (normal) |
| §11 | kebocoran test→train | 0% ideal | kalau ada, skor menggelembung |
| §12 | irisan dengan dataset NLI | — | memastikan dua dataset tidak bercampur |

---

## 3. Rekonsiliasi angka dataset

Tiga versi angka beredar. Ini penjelasannya:

| Sumber | Train | Val/Dev | Test | Isi |
|---|---:|---:|---:|---|
| **SQuAD v2.0 asli** (Rajpurkar dkk.) | 130.319 | 11.873 | — | termasuk pertanyaan tanpa jawaban |
| **Muis dkk. (2020)** — terjemahan | 102.657 | 11.407 | 10.536 | dari 161.550 pasangan; setelah 10 langkah praproses (outlier dibuang, hanya kalimat berjawaban, dll.) |
| **Matrik (2026)** — hanya yang berjawaban | 85.776 | 7.587 | — | dari 85.812/8.170; dibuang baris yang span-nya tidak sejajar |
| **Punyamu** (`squad_id_*.jsonl`) | 130.319 | — | 11.873 | terjemahan penuh SQuAD v2.0 + field perbaikan span |

Kesimpulan praktis:

- Angka 130.319/11.873 di datasetmu = **seluruh** SQuAD v2.0 terjemahan, bukan subset berjawaban. Jadi data latih efektifmu **lebih kecil** dari 130 ribu — perkiraan 86–87 ribu setelah `is_impossible` dibuang, sangat dekat dengan 85.776 milik Matrik.
- Perbedaan Muis (102.657) vs Matrik (85.776) bukan kontradiksi: Muis membentuk pasangan **kalimat–pertanyaan** untuk question generation (satu kalimat per pertanyaan, outlier >60 kata pertanyaan/20 kata jawaban dibuang), sedangkan Matrik memakai **paragraf** untuk QA dan membuang baris yang span-nya tidak sejajar.
- Untuk skripsimu, acuan yang paling relevan adalah **Matrik**, karena tugas dan format datanya sama (paragraf + span + EM/F1).

---

## 4. Muis dkk. (2020) — bagaimana data diolah

Paper: *Sequence-to-Sequence Learning for Indonesian Automatic Question Generator* (ICAICTA 2020). Ini **bukan** paper QA — tugasnya membangkitkan pertanyaan (seq2seq). Tapi bagian pengolahan datanya yang dipakai semua orang (termasuk Matrik) untuk SQuAD-id.

### 4.1 Terjemahan

- Google Translate API v2, dari SQuAD v2.0: **536 artikel, 161.550 pasangan pertanyaan–jawaban**.
- **Tidak ada koreksi terjemahan.** Hasil terjemahan dipakai apa adanya; post-processing difokuskan pada **memperbarui teks jawaban dan lokasinya**.

### 4.2 Dua masalah yang muncul

1. **Lokasi jawaban tidak cocok** — `answer_start` masih posisi di teks Inggris.
2. **Terjemahan tidak konsisten** — konteks dan jawaban diterjemahkan **terpisah**, jadi entitas bisa berbeda bentuk. Contoh di paper: "Dangerously in Love" di konteks menjadi "Berbahaya dalam Cinta" di teks jawaban. Exact match gagal.

### 4.3 Solusinya: fuzzy string matching dengan Levenshtein

Kutipan intinya:

> "This prevented us to find the location of the answer in the context paragraph text using exact matching. Thus, we conducted fuzzy string matching to repair the answer. … We used fuzzy string-matching search to enable the system to match inconsistent translation results, which usually still roughly match more than 80% using Levenshtein edit distance method."

Poin teknisnya:

- **Ukuran kemiripan**: Levenshtein edit distance (jumlah sisip/hapus/ganti karakter minimum). Dua string dianggap cocok bila kemiripannya **di atas ~80%**.
- **Keluaran per baris**: dua field baru — `indonesian_answer_start` (posisi baru, atau **−1** bila gagal) dan `indonesian_answer` (teks baru, atau string kosong).
- Baris dengan `−1` **dibuang** di langkah berikutnya (langkah 1 dari 10).

### 4.4 Sepuluh langkah praproses (yang perlu kamu tiru/modifikasi)

| # | Langkah | Relevansi untuk QA-mu |
|---|---|---|
| 1 | Buang pasangan yang jawabannya tidak ditemukan (−1) | **Wajib** — padanan `is_answer_missing` |
| 2 | Fitur POS & Named Entity (Prosa.ai) | Tidak perlu untuk BERT QA |
| 3 | Buang outlier: 1% pertanyaan/jawaban terpanjang (maks 60 kata pertanyaan, 20 kata jawaban) | Opsional; untuk QA, jawaban panjang wajar — jangan ikut membuang 20 kata |
| 4 | Normalisasi unicode→ASCII, tokenisasi per spasi & tanda baca (kecuali `.` `,` `:` yang menempel, mis. "23:00", "20,000", "Ph.D") | Berguna, tapi hati-hati: normalisasi menggeser offset |
| 5 | Konversi posisi jawaban dari karakter ke kata | Tidak perlu untuk BERT (pakai offset karakter) |
| 6 | Bentuk pasangan kalimat–pertanyaan (satu kalimat berisi kata pertama jawaban) | **Jangan ditiru** — untuk QA kamu butuh paragraf utuh sebagai konteks |
| 7–9 | Fitur linguistik (ans, case, POS, NE), penyelarasan fitur, varian cased/uncased | Tidak perlu untuk BERT QA |
| 10 | Representasi integer + embedding FastText | Tidak perlu (pakai tokenizer IndoBERT) |

Hasil akhir Muis: **114.604** pasangan (dari 161.550), dibagi 9:1 → 102.657 train / 11.407 validation, dan 10.536 test dari dev SQuAD.

**Yang perlu kamu catat di Bab II/III:** pipeline Muis dioptimalkan untuk *question generation* (kalimat tunggal, jawaban pendek), bukan untuk *extractive QA* (paragraf, span bebas). Karena itu Matrik mengulang pembersihan dengan kriteria QA — dan kamu juga perlu.

---

## 5. Matrik (2026) — bagaimana data diolah dan fine-tuning

Paper: *Comparative Analysis of Indonesian Pre-trained BERT Models for the Extractive Question Answering Task on an Indonesian-Translated SQuAD Dataset* (Suhendra dkk., Matrik Vol. 25 No. 2, Maret 2026). **Ini paper paling dekat dengan skripsimu.**

### 5.1 Data

- Dataset: SQuAD 2.0 terjemahan dari **Muis dkk. [12]**, termasuk penjelasan bahwa Muis memakai Google Translate API v2 + fuzzy matching Levenshtein untuk memperbaiki posisi jawaban.
- Dataset asli: **85.812 train / 8.170 validation**, semuanya berjawaban (unanswerable sudah tidak ada).
- **Pembersihan tambahan (penting)**: memastikan indeks awal jawaban sejajar dengan karakter pertama teks jawaban; baris yang tidak sejajar **dibuang** → **85.776 train / 7.587 validation**.
- Tokenisasi dengan BERT tokenizer, dibungkus `datasets` Hugging Face.

### 5.2 Model

- `indobenchmark/indobert-base-p1` (Indo4B, ±124,5 juta parameter) — model yang kamu pakai.
- `indolem/indobert-base-uncased` (±110 juta parameter, korpus 220 juta kata yang lebih bersih).
- Kepala QA: dua vektor (start & end) di atas BERT.

### 5.3 Fine-tuning (angka yang bisa kamu tiru)

| Hyperparameter | Nilai |
|---|---|
| Batch size | 16 dan 32 (dibandingkan) |
| Epoch | 4 |
| Learning rate | 2×10⁻⁵ |
| Optimizer | AdamW (default `Trainer`) |
| Dropout | 0,1 |
| Weight decay | 0,01 |
| Perangkat | NVIDIA A100; Docker; Python 3.12.7, transformers 4.45.0, PyTorch 2.4.0, CUDA 12.6.0, RAM 40 GB |
| Waktu | 40–45 menit per model |

### 5.4 Hasil

| Model | Batch | EM | F1 | Train loss akhir | Val loss akhir |
|---|---|---:|---:|---:|---:|
| IndoLEM (`indolem/indobert-base-uncased`) | 16 | **60,58** | **71,58** | 0,5183 | 2,7150 |
| IndoLEM | 32 | 60,11 | 71,48 | 0,6686 | 2,3911 |
| IndoNLU (`indobert-base-p1`) | 16 | 51,02 | 63,59 | 0,6036 | 2,8193 |
| IndoNLU | 32 | — | — | 0,7456 | 2,7096 |

Batch size tidak memberi perbedaan berarti.

### 5.5 Uji signifikansi — sama dengan rencanamu

> "bootstrap resampling was performed on the validation set with 10,000 iterations … resampling questions with replacement and recomputing metrics on each bootstrap sample."

Hasil: selisih F1 **7,10** poin, 95% CI **[6,32; 7,89]**, p < 0,001; selisih EM **8,46** poin, CI **[7,53; 9,40]**, p < 0,001.

Ini **persis** metode yang sudah kamu tulis di Bab II (paired bootstrap, B = 10.000, CI persentil 95%). Bedanya: kamu menambah koreksi Holm untuk tiga perbandingan. Dengan kata lain, metodologimu bukan hanya valid — ada preseden terbit di jurnal terakreditasi untuk dataset dan tugas yang sama.

### 5.6 Analisis error yang bisa kamu tiru

Mereka mengambil 15 pertanyaan dari satu passage ("Danau Toba"), menemukan 4 kasus di mana model yang lebih lemah salah, dan mengklasifikasikan polanya: **boundary mismatch** — jawaban terpotong (kehilangan kata depan), terpotong di belakang, atau kelebihan kata. Kesimpulan mereka: kualitas korpus pralatih memengaruhi ketepatan tokenisasi, yang menentukan ketepatan batas span.

Untuk skripsimu, pola ini sangat berguna: kalau kuantisasi menurunkan F1 tanpa menurunkan EM, kemungkinan besar efeknya juga **boundary mismatch**, bukan salah total. Analisis error per-kasus seperti ini akan memperkuat Bab IV.

---

## 6. Cara mengerjakannya — resep teknis

Semua di bawah ini **belum saya jalankan**; ini rancangan langkah yang bisa langsung kamu pakai di Bab III.

### 6.1 Verifikasi span (langkah pertama, sebelum apa pun)

```python
def span_ok(context, answer, start):
    return start >= 0 and context[start:start+len(answer)] == answer
```

Hitung persentase baris valid per split. Target >99%. Kalau di bawah, lanjut ke 6.2.

### 6.2 Perbaikan span dengan fuzzy matching Levenshtein

Alur yang dipakai Muis, diterjemahkan ke praktik modern:

```python
from rapidfuzz import fuzz

def repair_span(context, answer, original_start=None, threshold=80):
    # 1) exact match
    idx = context.find(answer)
    if idx >= 0:
        return idx, answer, "exact"

    # 2) fuzzy substring: cari bagian konteks yang paling mirip jawaban
    al = fuzz.partial_ratio_alignment(answer, context, score_cutoff=threshold)
    if al is None:
        return -1, "", "not_found"

    # 3) kalau ada beberapa kandidat, pilih yang paling dekat dengan posisi lama
    return al.dest_start, context[al.dest_start:al.dest_end], f"fuzzy:{al.score:.1f}"
```

Catatan penting:

- `partial_ratio_alignment` mengembalikan **posisi** (bukan hanya skor) — inilah yang dibutuhkan untuk memperbaiki `answer_start`. Fungsi ini ada di `rapidfuzz` ≥ 2.x.
- **Threshold 80** mengikuti Muis. Jangan naikkan ke 90+ tanpa alasan: terjemahan sering mengubah bentuk kata.
- **Kalau `rapidfuzz` tidak tersedia**, versi manual (lebih lambat, O(n·L)):

```python
from rapidfuzz.distance import Levenshtein
def best_window(context, answer, radius=400, original_start=None):
    L = len(answer)
    lo = max(0, (original_start or 0) - radius)
    hi = min(len(context), (original_start or 0) + L + radius)
    best = (10**9, -1)
    for i in range(lo, max(lo+1, hi - L + 1)):
        d = Levenshtein.distance(answer, context[i:i+L])
        if d < best[0]:
            best = (d, i)
    return best  # (jarak, posisi)
```

  Batasi pencarian pada jendela di sekitar `answer_start_original` (mis. ±400 karakter) — pencarian penuh pada paragraf panjang sangat lambat.

- **Normalisasi aman**: kalau perlu casefold/spasi, jangan ubah string aslinya. Buat versi ternormalisasi **beserta peta indeks** ke string asli, supaya offset yang ditemukan bisa dikembalikan.
- **Banyak kemunculan**: pilih yang paling dekat dengan `answer_start_original`, atau yang panjangnya paling mendekati panjang jawaban.
- **Kegagalan harus eksplisit**: baris dengan `-1` dibuang (dan jumlahnya dilaporkan), bukan dibiarkan berlabel salah. Datasetmu sudah punya `is_answer_missing` untuk ini.

### 6.3 Menyiapkan fitur QA (offset mapping + sliding window)

```python
enc = tokenizer(
    questions, contexts,
    max_length=384, stride=128,
    truncation="only_second",          # hanya konteks yang dipotong
    return_overflowing_tokens=True,
    return_offsets_mapping=True,
    padding="max_length",
)
```

Lalu untuk setiap window:

1. Ambil `offset_mapping` dan `sequence_ids` → tandai token yang berasal dari konteks (`sequence_ids == 1`).
2. Cari token pertama/terakhir yang offset-nya menutupi `[char_start, char_end)`.
3. Kalau jawaban **tidak sepenuhnya** di dalam window → label `(0, 0)` (posisi `[CLS]`), jangan dipaksa.
4. Token di luar konteks (pertanyaan, `[CLS]`, `[SEP]`) di-mask saat menghitung loss/argmax.

Saat inferensi:

- Ambil `start_logits`/`end_logits` per window, cari pasangan `start ≤ end` dengan `end - start + 1 ≤ 30` (panjang jawaban maksimum), skor tertinggi.
- Petakan kembali ke offset karakter, lalu `context[char_start:char_end]`.
- Gabungkan window lewat `overflow_to_sample_mapping` supaya satu pertanyaan tidak dihitung berkali-kali.

### 6.4 Fine-tuning

Ikuti Matrik supaya hasilmu bisa dibandingkan langsung:

| Parameter | Nilai |
|---|---|
| Model | `indobenchmark/indobert-base-p1` |
| Epoch | 4 |
| LR | 2e-5 |
| Batch | 16 |
| Weight decay | 0,01 |
| Dropout | 0,1 (bawaan) |
| `max_length` / `stride` | 384 / 128 |
| Metrik evaluasi | EM & F1 gaya SQuAD (`evaluate.load("squad")`) |

Simpan checkpoint FP32 sebagai baseline — inilah objek kuantisasimu.

### 6.5 Evaluasi + uji signifikansi

```python
import numpy as np
rng = np.random.default_rng(42)
N = len(f1_a)                        # skor F1 per sampel, model A dan B
diffs = np.empty(10_000)
for b in range(10_000):
    idx = rng.integers(0, N, N)
    diffs[b] = f1_a[idx].mean() - f1_b[idx].mean()
ci = np.percentile(diffs, [2.5, 97.5])
p  = 2 * min((diffs <= 0).mean(), (diffs >= 0).mean())
```

- Tiga perbandingan (FP32 vs coarse, FP32 vs fine, coarse vs fine) × dua metrik (EM, F1) → koreksi **Holm** dengan m = 3 per metrik (sesuai Bab II-mu).
- Opsional: **McNemar** untuk EM (EM biner per sampel) — preseden: proposal Tafftadia memakai McNemar untuk akurasi.

### 6.6 Kuantisasi weight-only + pengukuran

- Kuantisasi bobot `nn.Linear` (dan embedding jika ikut) ke INT4 simetris:
  - **coarse / per-tensor**: satu `s = max(|W|) / (2^{b-1} − 1)` untuk seluruh tensor.
  - **fine / per-channel**: satu `s_j` per output channel.
- **Paksa coarse secara eksplisit.** Bawaan pustaka (mis. `torch.ao.quantization`) untuk bobot adalah per-channel; kalau tidak dipaksa, "coarse" dan "fine" bisa jadi konfigurasi yang sama.
- Ukuran model: laporkan **dua angka** — teoretis (4/32 = 12,5%) dan ukuran berkas aktual. Bobot INT4 umumnya disimpan dalam wadah int8 → ~25%, ditambah metadata faktor skala.
- Latensi: karena dequantisasi dilakukan sebelum komputasi, **jangan klaim speedup**; tulis sebagai batasan.

---

## 7. Implikasi untuk skripsi

**Bab II (tambahan yang jadi kuat):**
- Sitasi Matrik (2026) sebagai penelitian terdahulu **paling dekat**: dataset sama, tugas sama, model sama, uji signifikansi sama.
- Sitasi Muis (2020) bukan hanya sebagai "sumber dataset", tapi sebagai **prosedur perbaikan span** (fuzzy matching Levenshtein >80%) — ini memperkuat bagian dataset di §2.3.
- Framing "kuantisasi adalah tiga keputusan: cakupan, waktu, granularitas" (dari proposal Tafftadia) cocok untuk membuka Subbab 2.4.

**Bab III (yang harus dilaporkan):**
- Sumber & versi dataset + tanggal unduh; jumlah baris per split **sebelum dan sesudah** filter.
- Persentase span valid sebelum perbaikan; metode perbaikan (jika dipakai) + threshold.
- `max_length`, `stride`, panjang jawaban maksimum, dan cara menangani window tanpa jawaban.
- Hyperparameter fine-tuning (tabel seperti Matrik) dan lingkungan komputasi.
- Definisi operasional coarse/fine + pustaka/versi yang dipakai.
- Prosedur uji signifikansi (B = 10.000, CI persentil, Holm m = 3).

**Bab IV (yang akan ditanya):**
- Kenapa baseline FP32-mu berbeda dari 63,59 milik Matrik? (Jawaban yang sah: pembersihan data berbeda, jumlah data berbeda, seed, `max_length`.)
- Apakah penurunan F1 akibat kuantisasi berpola *boundary mismatch* seperti temuan Matrik? Analisis 10–15 kasus akan menjawab ini.

---

## 8. Berkas terkait

| Berkas | Isi |
|---|---|
| `report.md` | Daftar hal yang butuh verifikasi & perhatian khusus (P0/P1/P2) |
| `ANALISIS_BAB1_BAB2.md` | Analisis Bab I–II: yang kurang, yang salah sitasi, rekomendasi |
| `PROPOSAL_PENELITIAN_TERDAHULU.md` | Usulan tabel penelitian terdahulu + syarat sitasi/tahun |
| `KAJIAN_PROPOSAL_TAFFTADIA.md` | Kajian proposal temanmu + apa yang layak ditiru |
| `bahan_justifikasi/` | Peta 62 klaim Bab I–II → kutipan verbatim + lokasi |
