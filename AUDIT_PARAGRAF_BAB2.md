# Audit Paragraf Bab II

Dibuat otomatis dari `src/chapters/chapter-2.tex`. Prosa saja: judul, tabel, gambar, dan rumus tidak dihitung.

**Cara membaca.** Kolom *Ide pokok*: `D` = klaim di kalimat pertama (deduktif), `Tertunda` = kalimat pertama dibuka frasa keterangan atau rujukan mundur sehingga ide pokok muncul belakangan, `—` = lanjutan penjelasan simbol setelah rumus, `?` = perlu dibaca manual.

**Temuan penting:** tidak ada satu pun paragraf yang benar-benar induktif (ide pokok baru muncul di kalimat terakhir). Tiga paragraf ditutup konektor simpulan (No. 18, 44, 57), tetapi klaimnya sudah ada di kalimat pertama.

**Kaidah acuan:** paragraf isi 3–5 kalimat; ide pokok di awal (baku) atau di akhir (boleh, bila ditandai konektor simpulan); paragraf 1–2 kalimat hanya sah untuk pengantar tabel/gambar/rumus, catatan tabel, dan penjelasan simbol.

| No | Subbab | Kal. | Ide pokok | Kalimat pertama (dipotong) | Tindakan |
|---:|---|---:|:---:|---|---|
| 1 | Extractive Question Answering | 3 | D | Question answering adalah tugas pengolahan bahasa alami yang meminta sistem me | Pertahankan |
| 2 | Extractive Question Answering | 4 | Tertunda | Dengan formulasi tersebut, extractive question answering dapat dipandang sebag | Perbaiki pembuka (ide pokok tertunda) |
| 3 | Extractive Question Answering | 3 | D | Sebagian sampel pada dataset yang berasal dari SQuAD v2.0 tidak memiliki jawab | Pertahankan |
| 4 | Extractive Question Answering | 1 | D | Pemanfaatan tugas ini untuk bahasa Indonesia telah dilakukan pada dataset terj | Gabung dengan paragraf tetangga |
| 5 | BERT | 2 | D | Transformer adalah arsitektur yang memproses urutan token menggunakan mekanism | Gabung dengan paragraf tetangga |
| 6 | BERT | 5 | — | dengan X adalah dimensi key. | Pertahankan |
| 7 | BERT | 3 | — | dengan X, dengan X, X, X adalah matriks proyeksi head ke-X dan X adalah matrik | Pertahankan |
| 8 | BERT | 3 | D | BERT adalah model bahasa pralatih yang menggunakan encoder Transformer secara  | Pertahankan |
| 9 | BERT | 4 | — | dengan X adalah himpunan indeks token yang disembunyikan, X adalah token targe | Pertahankan |
| 10 | BERT | 2 | D | Penyesuaian model pralatih terhadap tugas extractive question answering dilaku | Gabung dengan paragraf tetangga |
| 11 | BERT | 5 | D | Persamaan menghubungkan keluaran model dengan metrik evaluasi, karena posisi a | Pertahankan |
| 12 | IndoBERT | 5 | D | IndoBERT adalah model bahasa pralatih berbahasa Indonesia berarsitektur BERT y | Pertahankan |
| 13 | IndoBERT | 4 | D | Varian yang digunakan pada penelitian ini adalah indobert-base-p2. | Pertahankan |
| 14 | Dataset SQuAD-id | 4 | D | SQuAD-id adalah dataset extractive question answering berbahasa Indonesia yang | Pertahankan |
| 15 | Dataset SQuAD-id | 6 | D | Penelitian ini menggunakan versi SQuAD-id yang telah ditata ulang dan dikoreks | Pecah |
| 16 | Dataset SQuAD-id | 3 | D | Dataset yang dipakai hanya menyediakan dua pembagian data, yaitu data latih da | Pertahankan |
| 17 | Dataset SQuAD-id | 2 | D | Sumber: hasil pemeriksaan ulang berkas dataset pada penelitian ini. | Pertahankan (pengantar/catatan float) |
| 18 | Dataset SQuAD-id | 5 | D | Dua batasan dataset perlu dicatat. | Pertahankan |
| 19 | Kompresi Model | 1 | D | Kompresi model mencakup beberapa kelompok teknik yang banyak digunakan untuk m | Gabung dengan paragraf tetangga |
| 20 | Kompresi Model | 3 | D | Pruning menghapus bobot atau koneksi yang kontribusinya kecil terhadap keluara | Pertahankan |
| 21 | Kompresi Model | 2 | D | Knowledge distillation melatih model berukuran lebih kecil (student) agar meni | Gabung dengan paragraf tetangga |
| 22 | Kompresi Model | 2 | D | Kuantisasi menurunkan presisi representasi numerik bobot atau aktivasi . | Gabung dengan paragraf tetangga |
| 23 | Kompresi Model | 4 | D | Dibandingkan dua teknik sebelumnya, kuantisasi memiliki tiga sifat yang membed | Pertahankan |
| 24 | Kompresi Model | 4 | Tertunda | Besarnya pengurangan tersebut dapat dihitung langsung dari jumlah parameter. | Perbaiki pembuka (ide pokok tertunda) |
| 25 | Kompresi Model | 4 | D | Alasan berikutnya adalah adanya bukti bahwa kuantisasi pada model encoder dapa | Pertahankan |
| 26 | Kuantisasi pada Jaringan Saraf | 4 | Tertunda | Dalam jaringan saraf, kuantisasi diterapkan pada tensor bobot dan aktivasi yan | Perbaiki pembuka (ide pokok tertunda) |
| 27 | Representasi Numerik: FP16, IN | 2 | D | Presisi numerik menunjukkan jumlah bit yang digunakan untuk merepresentasikan  | Gabung dengan paragraf tetangga |
| 28 | Representasi Numerik: FP16, IN | 2 | D | INT8 menyediakan 256 tingkat representasi, sedangkan INT4 hanya 16 tingkat seh | Gabung dengan paragraf tetangga |
| 29 | Representasi Numerik: FP16, IN | 2 | D | Susunan bit dan rentang nilai keempat format dirangkum pada Tabel, sedangkan G | Pertahankan (pengantar/catatan float) |
| 30 | Representasi Numerik: FP16, IN | 1 | Tertunda | Pada praktik kuantisasi, bilangan bulat bertanda disimpan dalam bentuk komplem | Gabung dengan paragraf tetangga |
| 31 | Representasi Numerik: FP16, IN | 2 | D | Model dengan representasi numerik berpresisi tinggi membutuhkan ruang penyimpa | Gabung dengan paragraf tetangga |
| 32 | Konsep Dasar Kuantisasi | 2 | D | Kuantisasi pada jaringan saraf diperkenalkan sebagai cara menggantikan komputa | Gabung dengan paragraf tetangga |
| 33 | Konsep Dasar Kuantisasi | 1 | D | Bentuk umum pemetaan tersebut, yang dipakai sepanjang bab ini, adalah | Pertahankan (pengantar rumus) |
| 34 | Konsep Dasar Kuantisasi | 3 | — | dengan X adalah faktor skala, X adalah zero point, serta X dan X adalah batas  | Pertahankan |
| 35 | Konsep Dasar Kuantisasi | 7 | D | Penerapan kuantisasi pada model terlatih berjalan melalui lima tahap. | Pecah |
| 36 | Skema Kuantisasi Simetris dan  | 1 | D | Kuantisasi simetris untuk bilangan bulat X-bit didefinisikan sebagai berikut : | Pertahankan (pengantar rumus) |
| 37 | Skema Kuantisasi Simetris dan  | 5 | D | Pada Persamaan dan, X adalah nilai riil masukan, X adalah nilai terkuantisasi, | Pertahankan |
| 38 | Skema Kuantisasi Simetris dan  | 5 | Tertunda | Sebagai ilustrasi, misalkan satu tensor bobot memiliki nilai terkecil X dan te | Perbaiki pembuka (ide pokok tertunda) |
| 39 | Skema Kuantisasi Simetris dan  | 2 | D | Skema simetris dipilih karena distribusi bobot model terlatih umumnya memusat  | Gabung dengan paragraf tetangga |
| 40 | Cakupan: Weight-Only dan Joint | 4 | D | Kuantisasi dapat diterapkan pada bobot saja atau pada bobot dan aktivasi sekal | Pertahankan |
| 41 | Cakupan: Weight-Only dan Joint | 2 | D | Cakupan bobot yang dikuantisasi juga menentukan hasil akhir, karena tidak semu | Gabung dengan paragraf tetangga |
| 42 | Waktu: Post-Training Quantizat | 3 | D | Post-Training Quantization (PTQ) adalah pendekatan kuantisasi yang diterapkan  | Pertahankan |
| 43 | Waktu: Post-Training Quantizat | 2 | D | Tabel merangkum perbedaan keduanya. | Pertahankan (pengantar/catatan float) |
| 44 | Granularitas Kuantisasi | 3 | D | Granularitas kuantisasi menentukan cakupan bobot yang menggunakan parameter ku | Pertahankan |
| 45 | Granularitas Kuantisasi | 1 | Tertunda | Pada granularitas fine-grained, faktor skala ditentukan untuk cakupan bobot ya | Pertahankan (pengantar rumus) |
| 46 | Granularitas Kuantisasi | 5 | D | Bobot hasil rekonstruksi untuk kedua granularitas diperoleh dengan X pada coar | Pertahankan |
| 47 | Granularitas Kuantisasi | 4 | D | Perbedaan granularitas menghasilkan pertukaran antara efisiensi penyimpanan da | Pertahankan |
| 48 | Granularitas Kuantisasi | 2 | D | Perbandingan ketiga tingkat granularitas dirangkum pada Tabel. | Pertahankan (pengantar/catatan float) |
| 49 | Teknik Bit-Packing pada Repres | 4 | D | Representasi memori pada perangkat komputasi umumnya dialamatkan per byte (8 b | Pertahankan |
| 50 | Teknik Bit-Packing pada Repres | 1 | Tertunda | Tanpa bit-packing, satu nilai INT4 menempati satu byte sehingga ukuran berkas  | Gabung dengan paragraf tetangga |
| 51 | Teknik Bit-Packing pada Repres | 2 | Tertunda | Pada kuantisasi tersimulasi, bobot didekuantisasi sebelum komputasi sehingga p | Gabung dengan paragraf tetangga |
| 52 | Exact Match dan F1 | 3 | D | Kinerja extractive question answering diukur dengan Exact Match (EM) dan F1, y | Pertahankan |
| 53 | Exact Match dan F1 | 1 | — | dengan X adalah jawaban prediksi sampel ke-X, X adalah himpunan jawaban acuan  | Pertahankan (penjelasan simbol) |
| 54 | Exact Match dan F1 | 2 | D | F1 mengukur tumpang tindih token antara jawaban prediksi dan jawaban acuan. | Gabung dengan paragraf tetangga |
| 55 | Ukuran Model dan Latensi Infer | 2 | D | Latensi inferensi adalah waktu yang diperlukan model untuk menghasilkan predik | Gabung dengan paragraf tetangga |
| 56 | Ukuran Model dan Latensi Infer | 2 | D | Latensi bergantung pada perangkat, implementasi kernel, dan cara penyimpanan b | Gabung dengan paragraf tetangga |
| 57 | Ukuran Model dan Latensi Infer | 3 | D | Efisiensi penyimpanan diukur melalui ukuran model dalam megabyte (MB), yaitu u | Pertahankan |
| 58 | Uji Signifikansi: McNemar dan  | 3 | D | Perbedaan nilai EM atau F1 antarkonfigurasi belum tentu berarti perbedaan kine | Pertahankan |
| 59 | Uji Signifikansi: McNemar dan  | 2 | Tertunda | Untuk Exact Match yang bernilai biner pada setiap sampel, perbedaan dua model  | Gabung dengan paragraf tetangga |
| 60 | Uji Signifikansi: McNemar dan  | 3 | D | dengan koreksi kontinuitas untuk sampel berukuran besar. | Pertahankan |
| 61 | Uji Signifikansi: McNemar dan  | 3 | — | dengan X dan X adalah skor sampel ke-X pada model X dan model X (EM atau F1 pe | Pertahankan |
| 62 | Uji Signifikansi: McNemar dan  | 4 | Tertunda | Apabila beberapa konfigurasi dibandingkan pada dataset yang sama, jumlah perba | Perbaiki pembuka (ide pokok tertunda) |
| 63 | Ringkasan Penelitian Terdahulu | 6 | D | Penelitian terdahulu yang relevan dirangkum pada Tabel berdasarkan kesamaan me | Pecah |
| 64 | Ringkasan Penelitian Terdahulu | 2 | D | Keterangan: X menandai penelitian yang terbit pada 2023--2026 sehingga belum m | Pertahankan (pengantar/catatan float) |
| 65 | Ringkasan Penelitian Terdahulu | 2 | D | Angka antarbaris pada Tabel tidak dapat dibandingkan secara langsung, karena m | Pertahankan (pengantar/catatan float) |
| 66 | Celah Penelitian dan Kerangka  | 5 | Tertunda | Berdasarkan Tabel, dapat diidentifikasi tiga celah. | Perbaiki pembuka (ide pokok tertunda) |
| 67 | Celah Penelitian dan Kerangka  | 3 | D | Penelitian ini mengisi celah tersebut dengan mengevaluasi weight-only PTQ pada | Pertahankan |
| 68 | Celah Penelitian dan Kerangka  | 1 | D | Alur penalaran penelitian ini dirangkum pada Gambar. | Pertahankan (pengantar/catatan float) |

## Ringkasan

- Paragraf isi: **68**
- Pola ide pokok: `D` 51, `Tertunda` 11, `—` 6
- Jumlah kalimat: 1 kal. 9, 2 kal. 21, 3 kal. 15, 4 kal. 12, 5 kal. 8, 6 kal. 2, 7 kal. 1
- Sudah 3–5 kalimat: **35** (51%)
- Di bawah 3 kalimat: **30**
- Di atas 5 kalimat: **3**

| Tindakan | Jumlah |
|---|---:|
| Pertahankan | 29 |
| Gabung dengan paragraf tetangga | 19 |
| Pertahankan (pengantar/catatan float) | 7 |
| Perbaiki pembuka (ide pokok tertunda) | 6 |
| Pecah | 3 |
| Pertahankan (pengantar rumus) | 3 |
| Pertahankan (penjelasan simbol) | 1 |

## Perlu dipecah (lebih dari 5 kalimat)

- No. 15 — 6 kalimat, Dataset SQuAD-id: Penelitian ini menggunakan versi SQuAD-id yang telah ditata ulang dan dikoreksi 
- No. 35 — 7 kalimat, Konsep Dasar Kuantisasi: Penerapan kuantisasi pada model terlatih berjalan melalui lima tahap.
- No. 63 — 6 kalimat, Ringkasan Penelitian Terdahulu: Penelitian terdahulu yang relevan dirangkum pada Tabel berdasarkan kesamaan meto

## Ide pokok tertunda (3–5 kalimat)

- No. 2 — 4 kalimat, Extractive Question Answering: Dengan formulasi tersebut, extractive question answering dapat dipandang sebagai
- No. 24 — 4 kalimat, Kompresi Model: Besarnya pengurangan tersebut dapat dihitung langsung dari jumlah parameter.
- No. 26 — 4 kalimat, Kuantisasi pada Jaringan Saraf Tiruan: Dalam jaringan saraf, kuantisasi diterapkan pada tensor bobot dan aktivasi yang 
- No. 38 — 5 kalimat, Skema Kuantisasi Simetris dan Asimetris: Sebagai ilustrasi, misalkan satu tensor bobot memiliki nilai terkecil X dan terb
- No. 62 — 4 kalimat, Uji Signifikansi: McNemar dan Bootstrap Berpasangan: Apabila beberapa konfigurasi dibandingkan pada dataset yang sama, jumlah perband
- No. 66 — 5 kalimat, Celah Penelitian dan Kerangka Berpikir: Berdasarkan Tabel, dapat diidentifikasi tiga celah.

## Paragraf 1–2 kalimat yang perlu digabung

- No. 4 — 1 kalimat, Extractive Question Answering: Pemanfaatan tugas ini untuk bahasa Indonesia telah dilakukan pada dataset terjem
- No. 5 — 2 kalimat, BERT: Transformer adalah arsitektur yang memproses urutan token menggunakan mekanisme 
- No. 10 — 2 kalimat, BERT: Penyesuaian model pralatih terhadap tugas extractive question answering dilakuka
- No. 19 — 1 kalimat, Kompresi Model: Kompresi model mencakup beberapa kelompok teknik yang banyak digunakan untuk men
- No. 21 — 2 kalimat, Kompresi Model: Knowledge distillation melatih model berukuran lebih kecil (student) agar meniru
- No. 22 — 2 kalimat, Kompresi Model: Kuantisasi menurunkan presisi representasi numerik bobot atau aktivasi .
- No. 27 — 2 kalimat, Representasi Numerik: FP16, INT8, dan INT4: Presisi numerik menunjukkan jumlah bit yang digunakan untuk merepresentasikan se
- No. 28 — 2 kalimat, Representasi Numerik: FP16, INT8, dan INT4: INT8 menyediakan 256 tingkat representasi, sedangkan INT4 hanya 16 tingkat sehin
- No. 30 — 1 kalimat, Representasi Numerik: FP16, INT8, dan INT4: Pada praktik kuantisasi, bilangan bulat bertanda disimpan dalam bentuk komplemen
- No. 31 — 2 kalimat, Representasi Numerik: FP16, INT8, dan INT4: Model dengan representasi numerik berpresisi tinggi membutuhkan ruang penyimpana
- No. 32 — 2 kalimat, Konsep Dasar Kuantisasi: Kuantisasi pada jaringan saraf diperkenalkan sebagai cara menggantikan komputasi
- No. 39 — 2 kalimat, Skema Kuantisasi Simetris dan Asimetris: Skema simetris dipilih karena distribusi bobot model terlatih umumnya memusat di
- No. 41 — 2 kalimat, Cakupan: Weight-Only dan Joint Weight-Activation: Cakupan bobot yang dikuantisasi juga menentukan hasil akhir, karena tidak semua 
- No. 50 — 1 kalimat, Teknik Bit-Packing pada Representasi Lebar Bit Rendah: Tanpa bit-packing, satu nilai INT4 menempati satu byte sehingga ukuran berkas me
- No. 51 — 2 kalimat, Teknik Bit-Packing pada Representasi Lebar Bit Rendah: Pada kuantisasi tersimulasi, bobot didekuantisasi sebelum komputasi sehingga pen
- No. 54 — 2 kalimat, Exact Match dan F1: F1 mengukur tumpang tindih token antara jawaban prediksi dan jawaban acuan.
- No. 55 — 2 kalimat, Ukuran Model dan Latensi Inferensi: Latensi inferensi adalah waktu yang diperlukan model untuk menghasilkan prediksi
- No. 56 — 2 kalimat, Ukuran Model dan Latensi Inferensi: Latensi bergantung pada perangkat, implementasi kernel, dan cara penyimpanan bob
- No. 59 — 2 kalimat, Uji Signifikansi: McNemar dan Bootstrap Berpasangan: Untuk Exact Match yang bernilai biner pada setiap sampel, perbedaan dua model di

## Status setelah perbaikan (24 Oktober 2026)

Tabel di atas adalah kondisi **sebelum** perbaikan. Berikut yang sudah dikerjakan dan hasilnya.

| Kelompok | Tindakan | Jumlah | Rincian |
|---|---|---|---|
| Ide pokok tertunda | Pembuka ditulis ulang | 6 | No. 2, 24, 26, 38, 62, 66 — subjek dipindah ke depan, frasa keterangan dan rujukan mundur dibuang |
| Paragraf panjang | Dipecah | 3 | No. 15 (setelah riwayat versi), No. 35 (setelah tahap ketiga), No. 63 (setelah tiga syarat) |
| Paragraf pendek tanpa sitasi | Diperkuat rujukan terverifikasi | 3 | No. 22 (+Jacob 2018, aritmetika bilangan bulat), No. 41 (+Bondarenko 2021, pengelompokan embedding), No. 56 (+Gholami 2021, penghematan 4–8 kali) |
| Paragraf pendek bertopik sama | Digabung | 5 | 19+20 (kompresi + pruning), 27+28 (presisi numerik + INT8/INT4), 32+33 (konsep dasar + pengantar rumus), 50+51 (bit-packing + kuantisasi tersimulasi), 55+56 (latensi + faktor perangkat) |
| Catatan tabel | Sitasi diganti | 1 | No. 30 — klaim komplemen dua tidak ada di Jacob dkk., diganti rentang nilai dari Gholami dkk. |
| Paragraf pendek yang dibiarkan | Tidak diubah | 12 | Pembuka anak subbab, jembatan sebelum rumus, dan paragraf teknik yang paralel (pruning/distilasi/kuantisasi). Digabung akan melanggar aturan satu paragraf satu topik atau melewati lima kalimat. |

**Angka sebelum dan sesudah**

| Ukuran | Sebelum | Sesudah |
|---|---:|---:|
| Paragraf isi | 68 | 66 |
| Paragraf 3–5 kalimat | 35 (51%) | **45 (68%)** |
| Paragraf di bawah 3 kalimat | 30 | 21 |
| Paragraf di atas 5 kalimat | 3 | **0** |
| Ide pokok tertunda (3–5 kalimat) | 6 | **0** |
| Paragraf induktif | 0 | 0 |

Sisa 21 paragraf pendek terdiri atas 9 pengantar/catatan float dan 12 paragraf yang sengaja dipertahankan (lihat baris terakhir tabel di atas).
