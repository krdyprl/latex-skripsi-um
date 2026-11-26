# BAB II KAJIAN PUSTAKA

> Penanda kerja (hapus sebelum dikumpulkan): **[PUTUSKAN]** = keputusan di tanganmu, **[CEK]** = cocokkan ke PDF/notebook, **[ISI]** = isi dari notebook.

Bab ini menguraikan landasan teori dan penelitian terdahulu yang mendasari penelitian. Pembahasan diawali dengan pemrosesan bahasa alami dan analisis sentimen pada subbab 2.1 dan 2.2, kemudian BERT dan IndoBERT pada subbab 2.3 sebagai model yang diuji. Subbab 2.4 dan 2.5 membahas kuantisasi dan Post-Training Quantization (PTQ) sebagai teknik kompresi yang diterapkan pada model tersebut. Subbab 2.6 memaparkan dataset finansial bahasa Indonesia, subbab 2.7 menjelaskan metrik evaluasi, dan subbab 2.8 merangkum penelitian relevan beserta celah yang diisi penelitian ini.

## 2.1 Pemrosesan Bahasa Alami

Natural Language Processing (NLP) merupakan cabang kecerdasan buatan yang berfokus pada interaksi antara komputer dan bahasa manusia melalui pemahaman, penafsiran, serta penghasilan teks atau tuturan secara alami (Jurafsky & Martin, 2025). Pendekatan NLP bergeser dari penggunaan aturan linguistik manual menuju metode statistik dan pembelajaran mesin yang memungkinkan komputer mempelajari pola bahasa dari data. Pergeseran ini berlanjut ke deep learning atau pembelajaran mendalam, yaitu pembelajaran menggunakan jaringan saraf berlapis yang mempelajari representasi bahasa secara otomatis dari data, sehingga ketergantungan pada rekayasa fitur manual berkurang (Jurafsky & Martin, 2025).

Perkembangan deep learning pada NLP ditandai dengan hadirnya Transformer, yaitu arsitektur jaringan saraf yang memproses sekuens data secara paralel menggunakan mekanisme self-attention untuk mempelajari hubungan kontekstual antarkata (Vaswani et al., 2017). Pemrosesan paralel ini mempersingkat waktu pelatihan dibandingkan model berurutan sebelumnya (Vaswani et al., 2017). Transformer kemudian menjadi dasar bagi pengembangan model bahasa pralatih (Gardazi et al., 2025), salah satunya Bidirectional Encoder Representations from Transformers (BERT) yang dipublikasikan pada tahun 2018. BERT menggunakan bagian encoder dan dilatih secara bidirectional, sehingga mempertimbangkan konteks dari arah kiri dan kanan secara bersamaan. Prapelatihan BERT memanfaatkan dua strategi, yaitu Masked Language Model (MLM) untuk memprediksi token yang ditutupi dan Next Sentence Prediction (NSP) (Devlin et al., 2019).

Pendekatan model pralatih tersebut diadaptasi ke dalam bahasa Indonesia melalui IndoBERT, yang dievaluasi menggunakan benchmark IndoNLU melalui 12 tugas downstream (Wilie et al., 2020). Salah satu tugas downstream yang menjadi fokus penelitian ini adalah analisis sentimen, yaitu tugas klasifikasi teks yang diselesaikan melalui fine-tuning (Devlin et al., 2019; Wilie et al., 2020). Klasifikasi teks dibedakan menurut ruang labelnya, yaitu binary classification untuk dua kelas dengan satu label per teks, multi-class classification untuk lebih dari dua kelas yang saling lepas, dan multi-label classification jika satu teks dapat menerima lebih dari satu label (Galke et al., 2025).

Analisis sentimen menentukan polaritas teks ke dalam kategori positif, negatif, atau netral (Ferdous et al., 2024). Karena penelitian ini memakai tiga kelas yang saling lepas dengan satu label per teks, tugasnya dikategorikan sebagai multi-class classification. Subbab berikutnya membahas analisis sentimen pada domain keuangan beserta penerapan IndoBERT pada domain tersebut.

## 2.2 Analisis Sentimen

Analisis sentimen bertujuan mengidentifikasi orientasi afektif suatu teks ke dalam kategori positif, negatif, atau netral (Ferdous et al., 2024). Kelas netral diberikan pada teks yang tidak memuat tendensi positif maupun negatif. Analisis sentimen dapat diterapkan pada domain keuangan yang membahas kondisi atau peristiwa finansial, seperti berita ekonomi dan unggahan media sosial terkait saham. Teks keuangan memiliki karakteristik khusus karena memuat istilah teknis dan ekspresi numerik, sementara makna sentimennya bergantung pada konteks domain (Araci, 2019; Maharani et al., 2023).

Malo et al. (2014) merumuskan penilaian sentimen dari sudut pandang investor, yaitu dampak teks terhadap harga saham. Rumusan ini diadaptasi menjadi skema tiga label pada Indonesian Financial PhraseBank dengan komposisi kelas netral sebesar 61,44% (Maharani et al., 2023). Sebagai contoh, Maharani et al. (2023) memberi label netral pada kalimat yang hanya menyebutkan durasi dan nilai suatu proyek tanpa penilaian emosional, meskipun kalimat tersebut mengandung angka dan istilah teknis.

Penerapan model berbasis BERT berbahasa Indonesia untuk sentimen teks keuangan telah dilaporkan dalam empat penelitian terdahulu, yaitu Maharani et al. (2023), Jiwandono et al. (2026), Bimasena et al. (2026), dan Tanjaya et al. (2025). Tanjaya et al. (2025) melaporkan indikasi overfitting pada klasifikasi sentimen tweet saham Indonesia, dengan selisih F1 makro sebesar 0,124 antara data latih (0,971) dan data validasi (0,847). Bimasena et al. (2026) melaporkan akurasi 0,94 tetapi Macro F1 hanya 0,71 pada berita keuangan Indonesia. Kedua temuan ini menunjukkan bahwa satu angka akurasi tidak cukup menggambarkan perilaku model pada data keuangan.

Selain tantangan evaluasi tersebut, ukuran model membatasi penerapannya pada perangkat dengan sumber daya komputasi terbatas (Abdurrahman et al., 2023). IndoBERT-base memiliki 124,5 juta parameter (Wilie et al., 2020) **[CEK: tabel Wilie untuk varian p2]**. Kuantisasi menjadi salah satu teknik kompresi yang dapat mengurangi kebutuhan memori tersebut, tetapi dampaknya tidak selalu terlihat pada akurasi. Sanjaya et al. (2026) melaporkan akurasi IndoBERT pada SmSA yang berada pada rentang 92,9–93,2% di seluruh varian kompresi, dengan selisih macro F1 dalam 0,4 poin. Pada saat yang sama, kestabilan atribusi penjelasan turun pada varian QAT (ρ Spearman 0,788 pada QAT-FP32). Nilai ρ tersebut mengukur kestabilan atribusi, bukan perubahan probabilitas keluaran. Temuan ini mendasari perlunya evaluasi kuantisasi yang tidak hanya bertumpu pada akurasi label (Sanjaya et al., 2026).

## 2.3 BERT dan IndoBERT

### 2.3.1 BERT

BERT diperkenalkan oleh Devlin et al. (2019) sebagai model bahasa pralatih yang menggunakan encoder Transformer secara dua arah. BERT dilatih dengan dua tugas, yaitu Masked Language Modeling (MLM) dan Next Sentence Prediction (NSP). Pada MLM, sebagian token input disembunyikan dan model memprediksinya berdasarkan konteks kiri dan kanan, sehingga BERT menangkap konteks yang lebih kaya daripada model bahasa searah (Devlin et al., 2019). BERT-base memiliki 110 juta parameter dan BERT-large memiliki 340 juta parameter (Devlin et al., 2019).

Mekanisme inti Transformer adalah scaled dot-product attention, yang menghitung bobot perhatian dari hubungan antara query (Q), key (K), dan value (V) (Vaswani et al., 2017):

$$\mathrm{Attention}(Q,K,V)=\mathrm{softmax}\!\left(\frac{QK^{T}}{\sqrt{d_k}}\right)V \tag{2.1}$$

dengan $d_k$ adalah dimensi key. Karena attention tidak memiliki urutan bawaan, Transformer menambahkan positional encoding untuk mempertahankan informasi urutan. Multi-head attention menjalankan $h$ attention secara paralel:

$$\mathrm{MultiHead}(Q,K,V)=\mathrm{Concat}(\mathrm{head}_1,\dots,\mathrm{head}_h)W^{O} \tag{2.2}$$

dengan $\mathrm{head}_i=\mathrm{Attention}(QW_i^{Q},KW_i^{K},VW_i^{V})$, di mana $W_i^{Q}$, $W_i^{K}$, $W_i^{V}$ adalah matriks proyeksi head ke-$i$ dan $W^{O}$ adalah matriks proyeksi keluaran (Vaswani et al., 2017). Lapisan feed-forward dan layer normalization melengkapi blok encoder (Devlin et al., 2019). Objektif pelatihan MLM dirumuskan sebagai:

$$\mathcal{L}_{MLM}=-\sum_{i\in M}\log P(w_i\mid w_{\setminus M}) \tag{2.3}$$

dengan $M$ adalah himpunan indeks token yang disembunyikan, $w_i$ adalah token target, dan $w_{\setminus M}$ adalah konteks token yang tersisa (Devlin et al., 2019). Ukuran parameter BERT yang besar menyulitkan penerapannya pada perangkat dengan sumber daya terbatas, sehingga kuantisasi menjadi teknik kompresi yang relevan.

### 2.3.2 IndoBERT

IndoBERT merupakan adaptasi BERT untuk bahasa Indonesia yang dilatih pada korpus Indo4B, yaitu korpus sekitar empat miliar kata yang mencakup teks formal dan kolokial dari media sosial, blog, berita, dan situs web (Wilie et al., 2020). Arsitekturnya mirip BERT, dengan kosakata dan representasi yang disesuaikan dengan bahasa Indonesia (Maharani et al., 2023). Penelitian ini menggunakan checkpoint IndoBERT-base-p2 dengan 124,5 juta parameter, 12 lapisan, 12 head, dan hidden size 768 (Maharani et al., 2023; Wilie et al., 2020) **[CEK: samakan dengan notebook dan Sanjaya; ganti ke p1 bila notebook p1]**.

Abdurrahman et al. (2023) menguji kuantisasi pada IndoBERT dan melaporkan tiga temuan. Kuantisasi INT8 pada bobot menghasilkan degradasi minimal, kuantisasi 4-bit pada bobot masih mempertahankan performa pada tugas klasifikasi tetapi lebih merugikan tugas sequence labeling, dan kuantisasi aktivasi 4-bit menyebabkan penurunan yang besar. Angka rinci studi tersebut disajikan pada subbab 2.8.

## 2.4 Kuantisasi Model

Kuantisasi adalah teknik untuk melakukan komputasi dan menyimpan tensor pada presisi bit yang lebih rendah (Abdurrahman et al., 2023). Secara matematis, kuantisasi merupakan pemetaan nilai riil kontinu ke himpunan nilai diskret berhingga, dengan input di luar rentang yang dipilih dipotong (clipped) ke batas rentang tersebut (Gholami et al., 2021). Model terkuantisasi dapat menjalankan sebagian atau seluruh operasinya pada presisi rendah (Wu et al., 2023). Kebutuhan memori dan komputasi berkurang, tetapi besarnya degradasi performa bergantung pada presisi dan cakupan kuantisasi (Gholami et al., 2021).

Presisi yang digunakan dalam penelitian ini adalah FP32, INT8, dan INT4. Notasi WxAy menunjukkan bobot $x$-bit dan aktivasi $y$-bit; W8A8 berarti bobot dan aktivasi 8-bit, sedangkan W4A4 berarti keduanya 4-bit (Wu et al., 2023). Dalam penelitian ini, W4A32 menunjukkan bobot 4-bit dengan aktivasi 32-bit yang tidak dikuantisasi (skenario weight-only), dan W4A8 menunjukkan bobot 4-bit dengan aktivasi 8-bit. Kuantisasi dapat diterapkan pada bobot saja (weight-only) atau pada bobot dan aktivasi sekaligus (weight-activation) (Wu et al., 2023). Relatif terhadap model FP32, model 16-bit berukuran sekitar 50% dan model 8-bit sekitar 25% (Abdurrahman et al., 2023).

Kuantisasi simetris untuk bilangan bulat $b$-bit dengan pendekatan pembagi didefinisikan sebagai:

$$x_q=\mathrm{clip}\!\left(\mathrm{round}\!\left(\frac{x}{s}\right),\,-(2^{b-1}-1),\,2^{b-1}-1\right) \tag{2.4}$$

dengan faktor skala:

$$s=\frac{\alpha}{2^{b-1}-1} \tag{2.5}$$

Pada Persamaan (2.4) dan (2.5), $x$ adalah nilai riil input, $x_q$ adalah nilai terkuantisasi, $b$ adalah jumlah bit, dan $\alpha$ adalah nilai absolut maksimum dari rentang yang dipilih (Gholami et al., 2021). Skema ini simetris terhadap nol sehingga zero point bernilai nol, dan batas clip simetris sesuai dengan faktor skala pada Persamaan (2.5). Dekuantisasi dilakukan dengan mengalikan nilai terkuantisasi dengan faktor skala, yaitu $\hat{x}=x_q\cdot s$ (Gholami et al., 2021).

## 2.5 Post-Training Quantization

Post-Training Quantization (PTQ) adalah proses penentuan skala dan zero point setiap tensor dengan menjalankan model untuk memperoleh statistik tiap lapisan (Abdurrahman et al., 2023). PTQ tidak memerlukan retraining, sehingga praktis untuk deployment model yang sudah dilatih (Gholami et al., 2021). Data kalibrasi diperlukan ketika aktivasi dikuantisasi, karena digunakan untuk mengestimasi statistik aktivasi per lapisan (Williams & Aletras, 2024). Williams dan Aletras (2024) menunjukkan bahwa pemilihan data kalibrasi memengaruhi kualitas kuantisasi model bahasa, sedangkan Hubara et al. (2021) menemukan bahwa PTQ dengan set kalibrasi kecil masih mencapai akurasi kompetitif pada model vision.

Penelitian ini menggunakan skema simetris dengan bobot dikuantisasi per-channel berbasis absmax **[PUTUSKAN: notebook memakai MSE per-tensor; samakan Persamaan 2.6–2.7 dan notebook]**. Faktor skala per-channel dirumuskan sebagai:

$$s_j=\frac{\max(|W_j|)}{2^{b-1}-1} \tag{2.6}$$

dengan $W_j$ adalah bobot pada channel ke-$j$ dan $s_j$ adalah faktor skala channel tersebut (Gholami et al., 2021). Bobot hasil rekonstruksi diperoleh dengan:

$$\hat{W}_j=s_j\cdot\mathrm{round}\!\left(\frac{W_j}{s_j}\right) \tag{2.7}$$

dengan $\hat{W}_j$ adalah bobot hasil dekuantisasi (Gholami et al., 2021). Persamaan (2.7) menunjukkan bahwa bobot asli didekati kembali dari representasi bilangan bulat dengan mengalikan faktor skala.

Untuk aktivasi, penelitian ini menetapkan skema berikut: **[ISI dari notebook: jumlah batch kalibrasi (atau dinamis tanpa kalibrasi), penaksir rentang (min-max / MSE), simetris atau asimetris, per-tensor, dan daftar lapisan yang dikuantisasi (mis. Linear pada encoder; embedding, LayerNorm, softmax, dan classifier tetap FP32)]**. Perlakuan kuantisasi pada setiap kondisi percobaan, termasuk kondisi tanpa kuantisasi aktivasi, dijelaskan pada Bab III.

Cakupan kuantisasi menentukan besarnya degradasi. Abdurrahman et al. (2023) melaporkan bahwa kuantisasi aktivasi 4-bit jauh lebih merusak performa daripada kuantisasi bobot 4-bit pada IndoBERT. Bondarenko et al. (2021) memperkuat temuan tersebut pada BERT-base dengan rata-rata skor GLUE sebesar 83,06 (FP32), 71,03 (W8A8), 70,25 (W32A8), dan 83,23 (W8A32). Penurunan skor hanya muncul ketika aktivasi dikuantisasi, sedangkan kuantisasi bobot saja nyaris tidak mengubah skor. Sanjaya et al. (2026) melaporkan bahwa PTQ weight-only INT4 hampir tidak menurunkan metrik klasifikasi, tetapi kestabilan atribusi turun (ρ = 0,850).

Berbeda dengan PTQ, Quantization-Aware Training (QAT) memasukkan operasi kuantisasi ke dalam model sebelum pelatihan atau fine-tuning sehingga model beradaptasi dengan presisi rendah (Wu et al., 2023). Q8BERT mempertahankan 99% akurasi FP32 pada delapan tugas NLP dengan QAT 8-bit, dengan error relatif di bawah 1% kecuali pada tugas RTE (Zafrir et al., 2019). Wu et al. (2023) melaporkan bahwa QAT dengan knowledge distillation pada BERT-base tidak menurunkan akurasi pada QQP dan MNLI, sedangkan pada model decoder-only GPT2 perplexity meningkat setidaknya 1,5 poin. QAT memerlukan biaya komputasi lebih tinggi karena retraining tambahan, dan Sanjaya et al. (2026) menemukan bahwa QAT mengubah atribusi model bahkan pada presisi penuh (ρ = 0,788 sebelum kuantisasi). Penelitian ini memilih PTQ untuk mengevaluasi kuantisasi tanpa retraining.

## 2.6 Dataset Finansial Bahasa Indonesia

### 2.6.1 IndoFinSent

IndoFinSent adalah dataset sentimen finansial bahasa Indonesia yang dibuat dengan scraping judul artikel berita keuangan dari Liputan6, CNBC, Detik, Sindo, Jawapos, dan Metrotv News (Maharani et al., 2023). Setiap kalimat dilabeli secara manual oleh dua anotator dan diperiksa silang. Dataset berisi 2.274 entri dengan distribusi label positif 52,77%, netral 26,25%, dan negatif 20,98%. Split resmi terdiri dari 1.591 data latih, 227 data validasi, dan 456 data uji (Maharani et al., 2023) **[PUTUSKAN: notebook memakai 2.046/228 tanpa test; ditulis di sini mengikuti split resmi karena ECE dan flip membutuhkan test set]**. Karena dibuat dari teks asli bahasa Indonesia, dataset ini mempertahankan nuansa bahasa, referensi budaya, dan ekspresi idiomatik yang spesifik.

IndoFinSent berisi judul berita yang merujuk pada satu institusi keuangan (contohnya BRI), sehingga generalisasi ke institusi lain atau domain finansial yang lebih luas harus dilakukan dengan hati-hati (Maharani et al., 2023). Kelas negatif sebesar 20,98% juga merupakan kelas minoritas. Karena itu, Macro F1-Score menjadi metrik utama karena memberi bobot setara pada setiap kelas (Hinojosa Lee et al., 2024), dilengkapi evaluasi per kelas untuk melihat apakah kuantisasi lebih merugikan kelas minoritas.

### 2.6.2 Indonesian Financial PhraseBank

Indonesian Financial PhraseBank adalah terjemahan Financial PhraseBank ke bahasa Indonesia menggunakan Google Translate (Maharani et al., 2023). Dataset memakai subset "all agree" yang terdiri dari 2.264 kalimat keuangan beserta label sentimennya (Malo et al., 2014). Distribusi labelnya adalah netral 61,44%, positif 25,18%, dan negatif 13,38%, dengan split resmi 1.629 data latih, 182 data validasi, dan 453 data uji (Maharani et al., 2023). Penerjemahan memungkinkan perbandingan dengan penelitian yang memakai versi Inggris (Araci, 2019). Terjemahan berpotensi menggeser makna, tetapi subset "all agree" hanya memuat kalimat dengan kesepakatan anotator yang tinggi (Malo et al., 2014).

Kelas netral sebesar 61,44% berarti model yang memprediksi netral untuk seluruh kalimat tetap memperoleh akurasi 61,44% pada keseluruhan dataset. Karena itu, akurasi saja tidak cukup untuk menilai dampak kuantisasi pada dataset ini, dan penelitian ini melaporkan Macro F1 serta hasil per kelas. Perubahan prediksi akibat kuantisasi juga dianalisis per kelas untuk melihat apakah kelas minoritas (negatif 13,38%) lebih terdampak (subbab 2.7.2).

## 2.7 Metrik Evaluasi

Metrik yang dipilih dibatasi pada ukuran yang memiliki dukungan penelitian terdahulu. Ukuran selisih skor sentimen kontinu per sampel (misalnya MAE antara skor model FP32 dan model terkuantisasi) tidak digunakan karena belum ditemukan penelitian yang mendukung pemakaiannya untuk menilai kuantisasi. Evaluasi dikelompokkan menjadi kinerja klasifikasi dan kalibrasi (2.7.1), pergeseran perilaku keluaran (2.7.2), dan efisiensi (2.7.3).

### 2.7.1 Klasifikasi Diskret dan Kalibrasi

Macro F1-Score dihitung dari F1-score setiap kelas secara terpisah, kemudian dirata-ratakan. Metrik ini memberi bobot setara pada setiap kelas sehingga lebih peka terhadap ketidakseimbangan kelas daripada Micro F1-Score (Hinojosa Lee et al., 2024):

$$F1_{macro}=\frac{1}{N}\sum_{i=1}^{N}F1_i \tag{2.8}$$

dengan $N$ adalah jumlah kelas dan $F1_i$ adalah F1-score kelas ke-$i$. Hinojosa Lee et al. (2024) membahas metrik ini pada klasifikasi emosi multilabel, sedangkan penelitian ini memakainya pada klasifikasi multi-class. Akurasi dihitung sebagai proporsi prediksi benar terhadap seluruh data uji:

$$\mathrm{Akurasi}=\frac{\sum_{i=1}^{N}TP_i}{N_{total}} \tag{2.9}$$

dengan $TP_i$ adalah jumlah prediksi benar kelas ke-$i$ (diagonal matriks konfusi) dan $N_{total}$ adalah jumlah sampel uji. Akurasi mudah dipahami tetapi dapat menyesatkan pada data yang tidak seimbang (Sokolova & Lapalme, 2009), seperti pada Bimasena et al. (2026) yang melaporkan akurasi 0,94 bersama Macro F1 0,71. Precision dan recall dilaporkan per kelas untuk melihat apakah kuantisasi lebih merugikan kelas minoritas.

Kalibrasi diukur dengan Expected Calibration Error (ECE), yaitu selisih rata-rata tertimbang antara akurasi dan confidence model (Guo et al., 2017). Prediksi dibagi ke dalam $M=15$ bin berdasarkan confidence, yaitu probabilitas kelas tertinggi:

$$\mathrm{ECE}=\sum_{m=1}^{M}\frac{|B_m|}{n}\,\bigl|\,\mathrm{acc}(B_m)-\mathrm{conf}(B_m)\,\bigr| \tag{2.10}$$

dengan $B_m$ adalah himpunan sampel pada bin ke-$m$, $n$ adalah jumlah sampel uji, $\mathrm{acc}(B_m)$ adalah akurasi pada bin tersebut, dan $\mathrm{conf}(B_m)$ adalah rata-rata confidence-nya. Sanjaya et al. (2026) memakai ECE untuk membandingkan model FP32, PTQ, dan QAT pada IndoBERT, dengan nilai 5,4–5,6% pada FP32 dan PTQ serta 6,2–6,3% pada QAT.

### 2.7.2 Pergeseran Perilaku Keluaran

Akurasi yang sama pada model FP32 dan model terkuantisasi tidak menjamin keduanya memberi prediksi yang sama pada setiap sampel. Dutta et al. (2024) mendefinisikan flips sebagai perubahan jawaban antara model asal dan model terkompresi, yaitu dari benar menjadi salah atau sebaliknya, dan menunjukkan bahwa akurasi saja tidak cukup untuk menilai kompresi. Sanjaya et al. (2026) mengukur hal serupa melalui prediction agreement, yaitu 99,5% antara PTQ-INT8 dan FP32. Penelitian ini mendefinisikan flip rate sebagai proporsi sampel yang label prediksinya berubah:

$$\mathrm{Flip\ Rate}=\frac{1}{n}\sum_{i=1}^{n}\mathbb{1}\bigl[\hat{y}_{FP32,i}\neq\hat{y}_{q,i}\bigr] \tag{2.11}$$

dengan $\hat{y}_{FP32,i}$ adalah label prediksi model FP32 untuk sampel ke-$i$, $\hat{y}_{q,i}$ adalah label prediksi model terkuantisasi pada sampel yang sama, $q$ menunjukkan konfigurasi kuantisasi, dan $\mathbb{1}[\cdot]$ adalah fungsi indikator.

Sebagai analisis tambahan penelitian ini (bukan hasil sitasi), flip dipecah menjadi flip merugikan, yaitu prediksi benar pada FP32 menjadi salah pada model terkuantisasi, dan flip menguntungkan, yaitu kebalikannya. Flip juga dirinci dalam matriks transisi 3×3 antara label FP32 dan label model terkuantisasi, serta dilaporkan per kelas. Dengan pemecahan ini, akurasi yang tampak stabil dapat dibedakan dari kondisi ketika flip merugikan dan flip menguntungkan saling meniadakan.

Pergeseran distribusi probabilitas diukur dengan KL divergence pada distribusi tiga kelas (positif, netral, negatif), dirata-ratakan pada seluruh sampel uji:

$$D_{KL}(P_{FP32}\parallel P_q)=\frac{1}{n}\sum_{i=1}^{n}\sum_{c=1}^{3}\tilde{P}_{FP32,i}(c)\,\ln\frac{\tilde{P}_{FP32,i}(c)}{\tilde{P}_{q,i}(c)} \tag{2.12}$$

dengan $\tilde{P}(c)=(P(c)+\varepsilon)/(1+3\varepsilon)$ adalah probabilitas yang dihaluskan dengan $\varepsilon=10^{-8}$ agar tidak terjadi pembagian dengan nol, dan logaritma yang digunakan adalah logaritma natural. Dutta et al. (2024) melaporkan korelasi KL divergence dengan flips sebesar 0,981, sehingga KL divergence dapat berfungsi sebagai ukuran pelengkap flip. Ukuran jarak distribusi lain, yaitu JSD dan TVD, dipakai oleh Qamar et al. (2026) **[CEK PDF Qamar: konteks dan klaimnya]**. Prosedur pengukuran, termasuk pengujian statistik, dijelaskan pada Bab III.

### 2.7.3 Efisiensi Komputasi

Ukuran model diukur dalam megabyte (MB) dan dibandingkan antara FP32, INT8, dan INT4. Ukuran teoretis dihitung dari jumlah bit dan dapat berbeda dari ukuran berkas aktual. Sanjaya et al. (2026) melaporkan bahwa PTQ-INT8 mengurangi ukuran IndoBERT dari 475 MB menjadi 230 MB (sekitar 52%), sedangkan PTQ-INT4 weight-only tetap 230 MB karena disimpan sebagai INT8 dengan metadata tambahan.

Latensi inferensi diukur dalam milidetik per sampel. Sanjaya et al. (2026) melaporkan bahwa PTQ-INT8 menurunkan latensi dari 25,1 ms menjadi 9,4 ms pada CPU (sekitar 2,7 kali lebih cepat), sedangkan PTQ-INT4 weight-only lebih lambat (32,7 ms) karena dekuantisasi ke FP32 sebelum komputasi. Wu et al. (2023) melaporkan percepatan hingga 8,5 kali pada skenario berorientasi latensi dan hingga 3 kali pada throughput dibandingkan FP16 pada GPU A6000, dengan syarat dukungan kernel hardware tertentu. Percepatan tersebut tidak terwujud pada weight-only quantization tanpa dukungan itu (Wu et al., 2023).

Penelitian ini menggunakan simulasi kuantisasi (fake quantization), sehingga ukuran model bersifat teoretis dan latensi yang terukur tidak mencerminkan percepatan pada perangkat dengan kernel presisi rendah. Kedua angka tersebut dilaporkan sebagai informasi pelengkap dengan keterbatasan ini dicantumkan pada Bab III.

## 2.8 Penelitian Relevan

Penelitian terdahulu yang relevan dan terbit dalam lima tahun terakhir dirangkum pada Tabel 2.1. Studi-studi tersebut dikelompokkan ke dalam tiga jalur, yaitu sentimen finansial berbahasa Indonesia, kuantisasi model bahasa, dan evaluasi kompresi di luar akurasi.

Pada jalur sentimen finansial Indonesia, Maharani et al. (2023) melakukan post-training IndoBERT pada korpus finansial Indonesia sebesar 647.586 kata. Pada Financial PhraseBank terjemahan, model base mencapai F1 0,91 pada baseline dan 0,94 setelah post-training dengan 100% data latih, sedangkan pada IndoFinSent model base mencapai F1 0,79–0,81 dan model large 0,78–0,79. Tanjaya et al. (2025) melakukan fine-tuning IndoBERTweet pada 3.288 tweet saham Indonesia dan melaporkan F1 makro 0,8177 pada data uji dan 0,8106 pada data uji dengan noise sintetis, dengan indikasi overfitting yang diakui penulisnya. Bimasena et al. (2026) membandingkan IndoBERT dan mBERT pada 3.366 artikel berita keuangan Indonesia dan melaporkan IndoBERT dengan akurasi 0,94 dan Macro F1 0,71, sedangkan mBERT mencapai 0,93 dan 0,70. Data Bimasena et al. (2026) memakai pseudo-label hasil mesin, bukan ground truth manusia. Ketiga studi ini mengevaluasi model tanpa kompresi dan memakai metrik klasifikasi diskret.

Pada jalur kuantisasi, Abdurrahman et al. (2023) meneliti kuantisasi IndoBERT pada tujuh tugas downstream IndoNLU. PTQ INT8 pada bobot mencapai rata-rata F1 77,04 terhadap 77,35 pada FP32. PTQ 4-bit pada bobot menurunkan F1 sekitar 1 poin pada tugas klasifikasi (SmSA 86,30 menjadi 85,20), tetapi tugas sequence labeling turun lebih besar (FACQA 54,16 menjadi 43,90; NERGRIT 70,92 menjadi 60,31). PTQ 4-bit pada aktivasi menurunkan rata-rata F1 dari 76,98 (W16A32) menjadi 17,71 (W16A4), sedangkan QAT aktivasi 4-bit masih mencapai 47,29. Pada SmSA, PTQ W4A32 mencapai F1 85,20 dan QAT W4A32 mencapai 79,21, yang menjadi salah satu alasan penelitian ini memilih PTQ. Studi tersebut menguji bobot (WxA32) dan aktivasi (W16Ay) secara terpisah, sehingga F1 untuk kombinasi bobot dan aktivasi (WxAy) tidak dilaporkan. Bondarenko et al. (2021) menunjukkan pada BERT-base GLUE bahwa aktivasi merupakan sumber utama degradasi pada 8-bit (rata-rata 83,06 pada FP32, 71,03 pada W8A8, dan 83,23 pada W8A32).

Wu et al. (2023) meneliti W4A4 pada Transformer dengan QAT dan knowledge distillation, dan melaporkan tidak ada degradasi akurasi pada BERT-base (QQP dan MNLI) tetapi penurunan besar pada GPT2. Williams dan Aletras (2024) menunjukkan bahwa pemilihan data kalibrasi memengaruhi performa downstream pada LLaMA, Vicuna, dan OPT; SpQR paling tidak sensitif (0,6–1,0%) dan SparseGPT paling sensitif (2,4–4,8%). Sanjaya et al. (2026) mengevaluasi PTQ dan QAT pada IndoBERT untuk SmSA pada FP16, INT8, dan INT4. Akurasi bertahan pada 92,9–93,2%, sedangkan kestabilan atribusi bergantung pada jalur kompresi: PTQ-INT8 memiliki ρ = 0,967, PTQ-INT4 weight-only ρ = 0,850, dan QAT yang diekspor ke ONNX turun hingga ρ sekitar 0,55. Studi ini memakai data umum (SmSA), INT4 hanya pada bobot, dan metrik berbasis atribusi.

Pada jalur evaluasi di luar akurasi, Dutta et al. (2024) mengusulkan flips dan KL divergence sebagai pelengkap akurasi pada kompresi model, dengan korelasi KL divergence terhadap flips sebesar 0,981. Sanjaya et al. (2026) melengkapi akurasi dengan ECE, prediction agreement, dan kestabilan atribusi pada IndoBERT. Kedua studi ini menjadi dasar pemilihan flip rate, KL divergence, dan ECE pada penelitian ini.

**Tabel 2.1** Penelitian Terdahulu

| No | Referensi | Model | Dataset & Domain | Teknik | Metrik | Hasil Utama | Relevansi |
|---|---|---|---|---|---|---|---|
| 1 | Maharani dkk. (2023) | IndoBERT-base (124,5M), IndoBERT-large (335,2M) | Korpus finansial Indonesia (647.586 kata), IndoFinSent (2.274), Financial PhraseBank ID (2.264) | Post-training MLM | F1 | PhraseBank ID: F1 0,91 → 0,94; IndoFinSent: F1 0,79–0,81 (base), 0,78–0,79 (large) | Sumber kedua dataset dan split resmi |
| 2 | Abdurrahman dkk. (2023) | IndoBERT | IndoNLU (7 tugas), termasuk SmSA | PTQ dan QAT; 4-bit dan 8-bit pada bobot dan aktivasi (terpisah) | F1, FLOPs, estimasi ukuran | INT8 bobot 77,04 vs 77,35; aktivasi 4-bit 76,98 → 17,71; F1 kombinasi WxAy tidak dilaporkan | Dasar pemilihan PTQ; celah kombinasi bobot dan aktivasi |
| 3 | Wu dkk. (2023) | BERT-base, GPT2 | Inggris, GLUE (QQP, MNLI), Wikitext | QAT + KD; W4A4 | Akurasi, perplexity, latensi, throughput | Tanpa degradasi pada encoder; perplexity GPT2 naik; hingga 8,5× (latensi) dan 3× (throughput) vs FP16 | Notasi WxAy; syarat percepatan INT4 |
| 4 | Williams & Aletras (2024) | LLaMA, Vicuna, OPT (7B–33B) | Lima sumber data kalibrasi | PTQ (GPTQ, SpQR), pruning | Akurasi zero-shot, perplexity | Data kalibrasi memengaruhi performa; SpQR paling stabil, SparseGPT paling sensitif | Dasar pembahasan kalibrasi |
| 5 | Tanjaya dkk. (2025) | IndoBERTweet | 3.288 tweet saham Indonesia | Fine-tuning dengan variasi preprocessing dan hyperparameter | Macro F1 | F1 makro 0,8177 (uji), 0,8106 (uji ber-noise); selisih latih–validasi 0,124 sebelum tuning | Bukti overfitting pada sentimen saham Indonesia |
| 6 | Sanjaya dkk. (2026) | IndoBERT-base-p2, XLM-R, mBERT | SmSA, NusaX-senti | PTQ dan QAT; FP16/INT8/INT4 (INT4 hanya bobot) | Akurasi, F1, ECE, agreement, korelasi atribusi | Akurasi 92,9–93,2%; PTQ-INT8 ρ 0,967; PTQ-INT4 ρ 0,850; QAT-ONNX ρ ≈ 0,55; INT8 230 MB, 9,4 ms | Studi terdekat; dasar ECE dan agreement |
| 7 | Bimasena dkk. (2026) | IndoBERT, mBERT | 3.366 artikel berita finansial Indonesia (pseudo-label) | Fine-tuning dengan class weighting | Akurasi, Macro F1 | IndoBERT 0,94 / 0,71; mBERT 0,93 / 0,70 | Dasar Macro F1 sebagai metrik utama |
| 8 | Bondarenko dkk. (2021) | BERT-base | GLUE (Inggris) | PTQ W8A8, W32A8, W8A32 | Rata-rata skor GLUE | FP32 83,06; W8A8 71,03; W32A8 70,25; W8A32 83,23 | Aktivasi penyebab utama degradasi |
| 9 | Dutta dkk. (2024) | LLM **[CEK]** | **[CEK]** | Kompresi model **[CEK]** | Akurasi, flips, KL divergence | KL divergence berkorelasi 0,981 dengan flips | Dasar flip rate dan KL divergence |
| 10 | Penelitian ini | IndoBERT-base-p2 | IndoFinSent, Indonesian Financial PhraseBank | PTQ: FP32, INT8-W8A8, INT4-W4A32, INT4-W4A8, INT4-W4A4 | Macro F1, akurasi, ECE, flip rate, KL divergence, ukuran model, latensi | Dilaporkan pada Bab IV | Mengisi celah pada keempat dimensi |

Berdasarkan Tabel 2.1, dapat diidentifikasi empat celah. Pertama, studi pada jalur sentimen finansial Indonesia (Bimasena et al., 2026; Maharani et al., 2023; Tanjaya et al., 2025) belum mengevaluasi model terkompresi. Kedua, studi kuantisasi pada IndoBERT (Abdurrahman et al., 2023; Sanjaya et al., 2026) belum mencakup domain finansial, dan hanya menguji bobot atau aktivasi secara terpisah (Abdurrahman et al., 2023) atau INT4 hanya pada bobot (Sanjaya et al., 2026), padahal aktivasi merupakan penyebab utama degradasi pada BERT (Bondarenko et al., 2021). Ketiga, evaluasi kuantisasi di luar akurasi (Dutta et al., 2024; Sanjaya et al., 2026) belum diterapkan pada teks keuangan Indonesia, padahal akurasi dan Macro F1 dapat berselisih jauh pada data keuangan (Bimasena et al., 2026). Keempat, belum ada studi yang secara bersamaan mencakup PTQ pada kombinasi bobot dan aktivasi, sentimen, domain finansial, dan bahasa Indonesia.

Penelitian ini mengisi celah tersebut dengan mengevaluasi PTQ pada IndoBERT menggunakan dua dataset finansial Indonesia, yaitu IndoFinSent dan Indonesian Financial PhraseBank, pada lima kondisi: FP32, INT8-W8A8, INT4-W4A32, INT4-W4A8, dan INT4-W4A4. Evaluasi mencakup Macro F1, akurasi, ECE, flip rate, dan KL divergence, dilengkapi ukuran model dan latensi.

---

# DAFTAR RUJUKAN

Abdurrahman, M. A., Cahyawijaya, S., Winata, G. I., & Purwarianti, A. (2023). Implementing Quantization to Indonesian BERT Language Model. *2023 10th International Conference on Advanced Informatics: Concept, Theory and Application (ICAICTA)*. https://doi.org/10.1109/ICAICTA59291.2023.10390159 **[CEK halaman di IEEE Xplore]**

Araci, D. (2019). FinBERT: Financial Sentiment Analysis with Pre-trained Language Models. *arXiv preprint arXiv:1908.10063*.

Bimasena, M. I., Prayoga, I. K. Y., Mahendra, I. G. A. P., & Sidik, P. (2026). Benchmarking IndoBERT and Multilingual BERT for Indonesian Financial News Sentiment Classification. *Jurnal Teknologi dan Open Source, 9*(1), 164–176. https://doi.org/10.36378/jtos.v9i1.5583

Bondarenko, Y., Nagel, M., & Blankevoort, T. (2021). Understanding and Overcoming the Challenges of Efficient Transformer Quantization. *Proceedings of EMNLP 2021*. **[LENGKAPI: halaman dan DOI dari PDF]**

Devlin, J., Chang, M.-W., Lee, K., & Toutanova, K. (2019). BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding. *Proceedings of NAACL-HLT*, 4171–4186. https://doi.org/10.18653/v1/N19-1423

Dutta, A., et al. (2024). Accuracy is Not All You Need. **[LENGKAPI dari PDF: daftar penulis, venue, tahun terbit]**

Ferdous, S. M., Newaz, S. N. E., Mugdha, S. B. S., & Uddin, M. (2024). Sentiment Analysis in the Transformative Era of Machine Learning: A Comprehensive Review. *Statistics, Optimization & Information Computing, 13*(1), 331–346. https://doi.org/10.19139/soic-2310-5070-2113

Galke, L., Scherp, A., Diera, A., Karl, F., Lin, B. X., Khera, B., Meuser, T., & Singhal, T. (2025). Are We Really Making Much Progress in Text Classification? A Comparative Review. *ACM Computing Surveys, 57*(4), 1–38. https://doi.org/10.1145/3711129

Gardazi, N. M., Daud, A., Malik, M. K., Bukhari, A., Alsahfi, T., & Alshemaimri, B. (2025). BERT applications in natural language processing: a review. *Artificial Intelligence Review, 58*, 166. https://doi.org/10.1007/s10462-025-11162-5

Gholami, A., Kim, S., Dong, Z., Yao, Z., Mahoney, M. W., & Keutzer, K. (2021). A Survey of Quantization Methods for Efficient Neural Network Inference. *arXiv preprint arXiv:2103.13630*.

Guo, C., Pleiss, G., Sun, Y., & Weinberger, K. Q. (2017). On Calibration of Modern Neural Networks. *Proceedings of the 34th ICML, PMLR 70*, 1321–1330. **[TAMBAHAN BARU untuk rumus ECE; cek ke PDF/sumber]**

Hinojosa Lee, M. C., Braet, J., & Springael, J. (2024). Performance Metrics for Multilabel Emotion Classification: Comparing Micro, Macro, and Weighted F1-Scores. *Applied Sciences, 14*(21), 9863. https://doi.org/10.3390/app14219863

Hubara, I., Nahshan, Y., Hanani, Y., Banner, R., & Soudry, D. (2021). Accurate Post Training Quantization with Small Calibration Sets. *Proceedings of the 38th ICML, 139*, 4466–4475.

Jiwandono, T. A., Achmad, M. H., & Suhirman, S. (2026). Fine-tuned IndoBERT for stock market sentiment analysis: evidence from CNBC Indonesia news. *IJEECS, 42*(3), 774–785. https://doi.org/10.11591/ijeecs.v42.i3.pp774-785

Jurafsky, D., & Martin, J. H. (2025). *Speech and Language Processing* (3rd ed.) [Online manuscript released August 24, 2025]. https://web.stanford.edu/~jurafsky/slp3/

Maharani, N. P. I., Purwarianti, A., Yustiawan, Y., & Rochim, F. C. (2023). Domain-Specific Language Model Post-Training for Indonesian Financial NLP. *2023 International Conference on Electrical Engineering and Informatics (ICEEI)*, 1–6. https://doi.org/10.1109/ICEEI59426.2023.10346625

Malo, P., Sinha, A., Korhonen, P., Wallenius, J., & Takala, P. (2014). Good debt or bad debt: Detecting semantic orientations in economic texts. *Journal of the Association for Information Science and Technology, 65*(4), 782–796. https://doi.org/10.1002/asi.23062

Qamar, et al. (2026). **[LENGKAPI dari PDF: judul, penulis, venue; opsional]**

Sanjaya, H. A., Collin, M., Tjahyadi, B. G., & Suhartono, D. (2026). Quantization Effects on Explainability in Indonesian Transformer-Based Sentiment Analysis. *Procedia Computer Science, 289*, 1084–1093. https://doi.org/10.1016/j.procs.2026.08.328

Sokolova, M., & Lapalme, G. (2009). A systematic analysis of performance measures for classification tasks. *Information Processing & Management, 45*(4), 427–437. https://doi.org/10.1016/j.ipm.2009.03.002

Tanjaya, R. D., Simanjuntak, G. E., Nugroho, K. S., Isnan, M., & Pardamean, B. (2025). Optimizing Transformer-Based Models for Financial Sentiment in Indonesian Stock Tweets. *2025 IEEE 11th Information Technology International Seminar (ITIS)*, 214–219. https://doi.org/10.1109/ITIS67966.2025.11308959

Vaswani, A., Shazeer, N., Parmar, N., Uszkoreit, J., Jones, L., Gomez, A. N., Kaiser, Ł., & Polosukhin, I. (2017). Attention is All You Need. *NeurIPS, 30*, 5998–6008.

Wilie, B., Vincentio, K., Winata, G. I., Cahyawijaya, S., Li, X., Lim, Z. Y., Soleman, S., Mahendra, R., Fung, P., Bahar, S., & Purwarianti, A. (2020). IndoNLU: Benchmark and Resources for Evaluating Indonesian Natural Language Understanding. *Proceedings of AACL-IJCNLP*, 843–857. https://doi.org/10.18653/v1/2020.aacl-main.85

Williams, M., & Aletras, N. (2024). On the Impact of Calibration Data in Post-training Quantization and Pruning. *Proceedings of the 62nd ACL (Volume 1: Long Papers)*, 10100–10118. https://doi.org/10.18653/v1/2024.acl-long.544

Wu, X., Li, C., Aminabadi, R. Y., Yao, Z., & He, Y. (2023). Understanding INT4 Quantization for Language Models: Latency Speedup, Composability, and Failure Cases. *Proceedings of the 40th ICML, PMLR 202*. **[CEK halaman di proceedings.mlr.press]**

Zafrir, O., Boudoukh, G., Izsak, P., & Wasserblat, M. (2019). Q8BERT: Quantized 8Bit BERT. *arXiv preprint arXiv:1910.06188*.
