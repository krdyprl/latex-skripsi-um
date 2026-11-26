# Daftar Tugas Perbaikan Bab II

Berkas sasaran: `src/chapters/chapter-2.tex`
Dasar: `PENILAIAN_BAB2.md` (skor 82/100) · Panduan AC-RIG UM 2021 §BAB 2 · Daftar Pengecekan v2.0
Dibuat: 24 Oktober 2026 · Status: semua ⬜ belum dikerjakan

| ID | Prioritas | Tugas | Estimasi | Status |
|---|---|---|---|---|
| B2-01 | P0 | Samakan aturan penyaringan data dengan angka Tabel 2.1 | 20 mnt | ⬜ |
| B2-02 | P0 | Rekonsiliasi 12,5% / 25% / ±48% + nyatakan cakupan bobot | 1,5 jam | ⬜ |
| B2-03 | P0 | Definisikan sumbu *channel* pada per-channel | 15 mnt | ⬜ |
| B2-04 | P1 | Pindahkan 7 kalimat keputusan metode ke kerangka Bab III | 1 jam | ⬜ |
| B2-05 | P1 | Tambah paragraf tahapan kuantisasi end-to-end | 45 mnt | ⬜ |
| B2-06 | P1 | Perbaiki sitasi angka 124,5 juta | 5 mnt | ⬜ |
| B2-07 | P1 | Tempel 2 sitasi yang hilang di 2.4 | 10 mnt | ⬜ |
| B2-08 | P1 | Pindahkan konsep kuantisasi tersimulasi ke 2.5.7 | 30 mnt | ⬜ |
| B2-09 | P2 | Urutkan ulang Tabel 2.5 + kolom tujuan/masalah | 45 mnt | ⬜ |
| B2-10 | P2 | Perjelas pembanding baris 4 & redaksi syarat † | 15 mnt | ⬜ |
| B2-11 | P2 | Kebahasaan: `Karena`, huruf miring, judul subbab, dll. | 45 mnt | ⬜ |
| B2-12 | P2 | Tutup 3 penanda `% TODO` | 30 mnt + riset | ⬜ |

Total ± 7 jam. P0 saja ± 2 jam 5 menit.

---

## P0 — naskah salah secara faktual

### B2-01 · Aturan penyaringan data tidak cocok dengan Tabel 2.1

**Apa.** Baris 23 menyatakan sampel yang dipakai adalah yang "penanda pertanyaan tanpa jawaban **dan** penanda data tidak valid bernilai salah". Tabel 2.1 tidak konsisten dengan aturan itu untuk data uji: 11.873 − 5.945 − 1.071 = **4.857**, sedangkan tabel menulis **4.225**. Angka 4.225 hanya keluar bila saringan keduanya adalah kolom "jawaban tidak ditemukan pada konteks" (1.703), bukan `is_data_invalid` (1.071).

**Kenapa.** Ini satu-satunya tempat di Bab II yang bisa dibantah dengan aritmetika dasar dari tabel Anda sendiri. Data latih tidak menunjukkan selisih karena kedua kolomnya kebetulan bernilai sama (25.462) — cacat ini lolos justru karena kebetulan itu.

**Di mana.** `chapter-2.tex:23` (kalimat aturan) dan `:96–104` (Tabel 2.1).

**Cara.** Ubah kalimat aturan menjadi "…sampel dengan penanda pertanyaan tanpa jawaban bernilai salah **dan jawaban yang dapat dilacak pada konteks**", **atau** tambahkan satu baris tabel "Baris bertanda data tidak valid **dan** jawaban tidak ditemukan". Jangan dua-duanya.

**Butuh keputusan Anda.** Konfirmasi: apakah 4.225 memang dihitung dengan saringan "jawaban tidak ditemukan"? Kalau ya, teksnya yang salah. Kalau tidak, angka tabelnya yang salah dan harus dihitung ulang.

**Kalau tidak dikerjakan.** Pertanyaan pertama saat sidang: "kenapa data uji Anda 4.225, bukan 4.857?"

---

### B2-02 · Tiga angka ukuran model bertabrakan; cakupan bobot tidak dinyatakan

**Apa.** 2.5.1 menulis "ukuran teoretis 4-bit = 12,5%" (baris 192), 2.5.7 menulis "ukuran berkas aktual mendekati 25%" (baris 316), dan 2.6.2 (baris 344) menyebut "tidak seluruh parameter ikut dikuantisasi" tanpa menyebut parameter mana. Ketiganya benar dalam asumsi masing-masing, tetapi tidak ada satu kalimat pun yang menyatakan **lapisan apa yang dikuantisasi**.

Hitungannya: 124,5 juta parameter = ±38,8 jt embedding (50.000 × 768 + posisi + tipe token) + ±84,9 jt lapisan linear (12 × (4 × 768² + 2 × 768 × 3072)). Bila hanya linear yang dikuantisasi dan embedding tetap FP32: 155 MB + 85 MB = **±240 MB = 48% dari 498 MB**. Dengan bit-packing: ±198 MB = **40%**. Angka 25% hanya berlaku bila **semua** parameter dikuantisasi dan masing-masing menempati 1 byte.

**Kenapa.** Ini klaim utama skripsi Anda (efisiensi penyimpanan). Kalau angka 12,5%/25% di Bab II tidak akan tercapai di Bab IV, seluruh argumen trade-off runtuh. Berkas rencana Anda sendiri (`bab2/03_sub6-8.md:17`) sudah menyebut embedding/klasifier tidak dikuantisasi — kalimat itu belum pernah masuk ke `chapter-2.tex`.

**Di mana.** `:192` (2.5.1), `:316` (2.5.7), `:344` (2.6.2), dan tambahan di `:242–244` (2.5.4 cakupan).

**Cara.**
1. Di 2.5.4, tambahkan 2–3 kalimat: lapisan mana yang dikuantisasi, lapisan mana yang tetap FP32, dan berapa proporsi parameter masing-masing.
2. Di 2.5.1, beri label pada angka 12,5%: "batas teoretis bila seluruh parameter 4-bit dan dipadatkan dua nilai per byte".
3. Di 2.5.7, tulis rantainya utuh: 12,5% (teoretis, semua parameter, bit-packed) → 25% (semua parameter, wadah 1 byte) → ±48% (hanya linear, wadah 1 byte).
4. Di 2.6.2, tepati janji 2.5.7: sebut bit-packing, bukan hanya faktor skala.

**Butuh keputusan Anda.** Apakah embedding dan klasifier ikut dikuantisasi? Ini keputusan rancangan, bukan pilihan kata. Jawabannya menentukan angka mana yang Anda klaim di Bab IV.

**Kalau tidak dikerjakan.** "Anda mengecilkan model jadi 62 MB — embedding-nya ikut dikuantisasi?" Tidak ada satu kalimat pun di Bab II yang bisa Anda tunjuk.

---

### B2-03 · Sumbu *channel* tidak didefinisikan

**Apa.** Baris 280–285 mendefinisikan $s_j = \max(|W_j|)/(2^{b-1}-1)$ sebagai "satu faktor skala untuk setiap *channel* $j$", tanpa menyebut sumbu mana yang menjadi $j$.

**Kenapa.** Pada `nn.Linear` sumbu keluaran adalah baris; pada `Conv1D` HuggingFace (yang dipakai proyeksi Q/K/V BERT) bobot berbentuk (in, out) sehingga sumbunya kolom. Salah sumbu berarti "per-channel" berubah arti menjadi per-input-channel — hasil kuantisasinya berbeda, dan ini tidak akan terlihat dari teks.

**Di mana.** `:280–285`, sebaiknya juga Tabel 2.4 `:303`.

**Cara.** Tambah satu klausa: "yaitu sumbu keluaran lapisan (baris pada `nn.Linear`, kolom pada `Conv1D`)".

**Butuh keputusan Anda.** Tidak ada — ini fakta teknis, cukup ditulis.

---

## P1 — pelanggaran panduan & risiko sidang

### B2-04 · Tujuh kalimat keputusan metode ada di Bab II

**Apa.** Panduan §BAB 2 butir 7: *"Segala informasi pada Bab 2 hanya dasar teori. Hal-hal yang menjadi usulan peneliti tidak disampaikan di Bab 2, tetapi di Bab 3."* Naskah melanggar di 7 tempat: `:77` (pembentukan data validasi), `:126` (memilih kuantisasi), `:192` (batas 4-bit), `:240` (skema simetris dipilih), `:287` (pemetaan per-tensor/per-channel), `:316` (tidak memakai bit-packing), `:364–366` (B=10.000, Holm m=3).

**Kenapa.** Dua alasan sekaligus. Pertama, panduan pembimbing melarangnya secara eksplisit — ini butir yang paling mudah dicoret beliau. Kedua, memindahkannya **menghapus 4 dari 6 kalimat yang diawali "Karena"** (`:75, 240, 289, 342`), jadi satu pekerjaan menyelesaikan dua temuan.

**Di mana.** Tujuh baris di atas; tujuannya berkas kerangka Bab III.

**Cara.** Di Bab II, ubah setiap kalimat menjadi bermodus teori tanpa membuang informasinya. Contoh pola: "Pada presisi rendah, bit-packing diperlukan agar dua nilai INT4 menempati satu byte; tanpa bit-packing ukuran berkas menjadi dua kali ukuran teoretis." Kalimat keputusan ("penelitian ini tidak memakainya") dipindahkan ke berkas penampung `bab3/00_KEPUTUSAN_DARI_BAB2.md` supaya tidak hilang dan siap dipakai saat Bab III ditulis.

**Butuh keputusan Anda.** Setuju keputusan-keputusan itu ditampung di berkas `bab3/00_KEPUTUSAN_DARI_BAB2.md` (belum menyentuh Bab III), atau Anda ingin langsung menulis kerangka Bab III?

**Kalau tidak dikerjakan.** "Bab II Anda berisi keputusan penelitian — bukankah itu tempatnya di metodologi?"

---

### B2-05 · Tidak ada paragraf tahapan kuantisasi dari awal sampai akhir

**Apa.** Panduan §BAB 2 butir 2: "Algoritma pada dasar teori harus berisi definisi, **tahapan**, dan formula." Definisi dan formula lengkap (13 persamaan), tetapi tahapan kuantisasi — kalibrasi → hitung skala → kuantisasi → simpan → dekuantisasi → inferensi — tidak pernah dirangkai sebagai satu urutan. Gambar 2.1 mengklaim "tujuh tahapan", tetapi teks tidak pernah menjelaskannya sebagai urutan kerja.

**Kenapa.** Tanpa paragraf ini, Gambar 2.1 hanya ilustrasi, dan pembaca harus menyusun sendiri urutan kerja dari tujuh subbab terpisah. Ini juga jembatan alami ke Bab III.

**Di mana.** Awal 2.5 (`:133`, setelah Gambar 2.1) atau akhir 2.5.2 (`:205`).

**Cara.** Satu paragraf 120–150 kata, 6 langkah bernomor dalam satu kalimat panjang atau daftar pendek, tanpa formula baru (formulanya sudah ada di subbab berikutnya). Setiap langkah menunjuk subbab tempat detailnya dibahas.

**Butuh keputusan Anda.** Tidak ada.

---

### B2-06 · Angka 124,5 juta parameter disitasi ke sumber yang salah

**Apa.** Baris 67 mencantumkan konfigurasi arsitektur **dan** "sekitar 124,5 juta parameter" dengan satu sitasi `\parencite{wilie2020indonlu}`. Konfigurasi memang dari paper itu; angka 124,5 juta adalah hasil hitung dari *checkpoint*, bukan angka yang dinyatakan Wilie dkk.

**Kenapa.** Kesalahan sitasi paling mudah ditembak karena bisa diperiksa langsung di model card. Jenis kesalahan yang sama sudah pernah Anda perbaiki di tempat lain (B5/B6 di `TUGAS_STATUS.md`), jadi konsisten.

**Di mana.** `:67`.

**Cara.** Ubah ekor kalimat: "…sehingga jumlah parameternya sekitar 124,5 juta **berdasarkan penghitungan pada checkpoint model**".

**Butuh keputusan Anda.** Tidak ada.

---

### B2-07 · Dua klaim empiris tanpa sitasi di 2.4

**Apa.** `:120` ("model hasil pemangkasan umumnya perlu dilatih ulang untuk memulihkan akurasi") dan `:122` ("memerlukan proses pelatihan penuh") tidak diakhiri sitasi, padahal keduanya dasar argumen memilih kuantisasi di `:126`.

**Kenapa.** Panduan: "Sitasi-sitasi perlu disertakan pada dasar teori di mana pernyataan tersebut diambil." Dua klaim ini justru yang menopang seluruh pilihan metode Anda.

**Di mana.** `:120`, `:122`.

**Cara.** Tempelkan `\parencite{han2016deep}` dan `\parencite{hinton2015distilling}` — keduanya sudah ada di `references.bib` dan sudah disitasi di paragraf pembuka 2.4, jadi tidak ada entri baru.

**Butuh keputusan Anda.** Tidak ada.

---

### B2-08 · Konsep kuantisasi tersimulasi muncul pertama kali di subbab metrik

**Apa.** "Kuantisasi diterapkan secara tersimulasi, yaitu bobot didekuantisasi sebelum komputasi" hanya muncul di 2.6.2 (`:342`). Padahal konsep ini yang menjelaskan mengapa latensi tidak boleh diklaim membaik.

**Kenapa.** Konsep teori yang menentukan interpretasi hasil tidak boleh lahir di subbab metrik. Penguji yang membaca 2.5 sampai habis akan mengira Anda mengklaim inferensi INT4 sungguhan.

**Di mana.** Pindah/ perluas ke 2.5.7 (`:312–316`), sisakan satu rujukan singkat di 2.6.2.

**Cara.** Di 2.5.7, setelah paragraf bit-packing, tambah 3–4 kalimat: bobot INT4 disimpan → didekuantisasi ke FP32 → komputasi tetap FP32 → tidak ada percepatan latensi, hanya penghematan penyimpanan. Ini juga yang membuat klaim Bab IV aman.

**Butuh keputusan Anda.** Tidak ada.

---

## P2 — mutu & konsistensi

### B2-09 · Tabel 2.5: urutan terbalik dan kolom tujuan hilang

**Apa.** (a) Panduan butir 7: tinjauan diurutkan "dari yang paling relevan sampai ke penelitian yang kurang relevan". Baris 1–6 adalah studi GLUE/SQuAD berbahasa Inggris, sedangkan dua studi paling relevan (IndoBERT, SQuAD-id) justru di baris 7–8. (b) Tabel tidak punya kolom masalah/tujuan penelitian.

**Kenapa.** Urutan terbalik membuat pembaca menilai relevansi dari studi yang paling jauh. Kolom tujuan yang hilang membuat tabel jadi daftar hasil, bukan tinjauan — padahal panduan minta tujuan–metode–hasil.

**Di mana.** `:393–400` (baris tabel), `:378–382` (definisi kolom).

**Cara.** Balik urutan menjadi: Ramaputra → Abdurrahman → Zadeh → Bai → Guo → Wei → Bondarenko → Kim. Tambah kolom "Tujuan/Masalah" (p{2.2cm}) dan kurangi lebar kolom "Model" untuk menjaga `\textwidth`.

**Butuh keputusan Anda.** Tetap 8 baris, atau pangkas ke 6 (buang dua baris GLUE yang konteksnya paling jauh)? Saya sarankan tetap 8 — dua baris itu yang menopang argumen granularitas.

---

### B2-10 · Baris 4 ambigu & redaksi syarat † tidak konsisten

**Apa.** (a) Baris 4: "pada SQuAD v1.1 unggul 4,73% (BERT) dan 15,55% (RoBERTa)" — unggul terhadap apa tidak disebut. (b) Syarat pemilihan tertulis "disitasi minimal lima penelitian lain", tetapi Abdurrahman (1 sitasi) dan Ramaputra (0 sitasi) tetap dipakai dengan tanda †.

**Kenapa.** (a) Angka tanpa pembanding tidak bermakna. (b) Syarat yang dilanggar oleh tabelnya sendiri melemahkan seluruh kriteria pemilihan — padahal pengecualiannya sudah jujur ditulis di catatan, tinggal dipindahkan ke redaksi syarat.

**Di mana.** `:372` (syarat), `:396` (baris 4), `:405` (catatan).

**Cara.** (a) Sebutkan pembandingnya. (b) Ubah syarat: "…telah disitasi minimal lima penelitian lain, **kecuali studi berbahasa Indonesia yang belum memiliki padanan dan ditandai †**". Angka "paling sedikit sembilan kali" **jangan diubah** — itu batas bawah aktual keenam baris yang lolos (Bai dkk. 2022 = 9).

**Butuh keputusan Anda.** Tidak ada, kecuali Anda ingin memastikan angka pembanding baris 4 dari PDF Wei dkk.

---

### B2-11 · Kebahasaan sisa

**Apa.**
- Kalimat diawali `Karena`: `:38` dan `:348` (empat lainnya hilang sendiri setelah B2-04).
- Istilah asing tegak: `dataset` 22×, `token` 17×, `tensor` 13×, `baseline` 1× — sementara `encoder` dan `span` sudah miring.
- Judul subbab campur bahasa: 2.5 "Kuantisasi pada Neural Network", 2.5.2 "Konsep Dasar Quantization", 2.5.6 "Granularitas Quantization", 2.5.7 "…Representasi Bit-Width Rendah".
- `di mana` sebagai penghubung: `:45` (satu-satunya di naskah).
- `antar-\textit{channel}`: `:304`.
- `pra-latih` (ringkasan) vs `pralatih` (9× di bab).

**Kenapa.** Butir 3, 4, 5, dan 6 Daftar Pengecekan. Semuanya akan dicoret beliau di kertas, dan itu memindahkan fokus bimbingan dari substansi ke bahasa — hal yang justru ingin dihindari lembar pengecekan itu sendiri.

**Di mana.** Lihat daftar di atas.

**Cara.** Satu kali kerja dengan `replace all` berformat untuk huruf miring; sisanya sunting manual. `bit` biarkan tegak (ada di KBBI).

**Butuh keputusan Anda.** Kebijakan huruf miring: miringkan semua istilah asing non-KBBI, atau ganti dengan padanan (`himpunan data` untuk dataset)? Saya sarankan miringkan — lebih cepat dan tidak mengubah istilah yang sudah dipahami penguji.

---

### B2-12 · Tiga penanda `% TODO` masih terbuka

**Apa.** `:75` (pastikan daftar fitur dataset yang benar-benar dimuat), `:114` (verifikasi lisensi & redistribusi), `:287` (samakan dengan opsi pustaka kuantisasi di Bab III, termasuk perilaku bawaannya).

**Kenapa.** TODO yang lolos ke PDF terbaca sebagai pekerjaan yang belum selesai. `:287` khususnya bergantung pada B2-03 dan pada keputusan pustaka kuantisasi.

**Di mana.** Tiga baris di atas.

**Cara.** `:75` — cek `load_dataset` sekali, tulis daftar fiturnya. `:114` — cek kartu dataset SEACrowd; kalau tidak ada lisensi, tulis "tidak mencantumkan lisensi" sebagai pernyataan, bukan TODO. `:287` — tunggu keputusan pustaka (setelah B2-02).

**Butuh keputusan Anda.** Pustaka kuantisasi mana yang akan dipakai (PyTorch murni, `torch.ao.quantization`, `optimum-quanto`, atau `bitsandbytes`)? Ini menentukan perilaku bawaan per-channel yang harus Anda tulis.

---

## Yang sengaja TIDAK masuk daftar

| Hal | Alasan |
|---|---|
| Memindahkan 2.7 (tinjauan) ke depan sebagai 2.1 | Panduan sendiri kontradiktif; biayanya menomori ulang 2.1–2.6 plus seluruh `\ref` silang. Risiko akademik kecil, risiko salah tunjuk besar. Simpan sebagai jawaban lisan bila ditanya. |
| Memangkas jumlah subbab 2.5 | 7 anak subbab semuanya dipakai dan tidak ada yang menganggur. Panduan tidak membatasi jumlah. |
| Menambah subbab "kuantisasi pada BERT" | Sudah tercakup di 2.4 dan 2.5.4. Subbab baru akan menduplikasi. |
| Mengubah gaya sitasi APA → Harvard | Konflik antar dua dokumen acuan; harus diputuskan pembimbing, bukan saya. |

---

## Empat keputusan yang saya butuhkan sebelum menyentuh `.tex`

1. **Embedding/klasifier ikut dikuantisasi?** (menentukan B2-02, B2-12, dan angka yang diklaim di Bab IV)
2. **Angka 4.225 dihitung dengan saringan apa?** (menentukan apakah yang salah teksnya atau tabelnya — B2-01)
3. **Keputusan metode ditampung di `bab3/00_KEPUTUSAN_DARI_BAB2.md`, atau langsung menulis kerangka Bab III?** (B2-04)
4. **Pustaka kuantisasi mana?** (B2-12, dan sumbu channel di B2-03)
