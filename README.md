## Tugas Praktikum 1 Pemrograman Visual

Dalam kode tersebut, saya mendesain sebuah toko merchandise konser Taylor Swift yang diwakili oleh kelas Merchandise dan Customer.

Kelas Merchandise digunakan untuk merepresentasikan setiap item yang tersedia untuk dibeli di toko merchandise. Setiap objek Merchandise memiliki dua properti utama: name (nama merchandise) dan price (harga merchandise). Konstruktor Merchandise digunakan untuk membuat objek Merchandise baru dengan memberikan nilai awal untuk properti name dan price. Metode toString() di-override untuk menghasilkan representasi string yang sesuai dari objek Merchandise, menampilkan nama dan harga barang.

Kelas Customer digunakan untuk merepresentasikan pelanggan yang melakukan pembelian di toko merchandise. Setiap objek Customer memiliki dua properti: name (nama pelanggan) dan email (alamat email pelanggan). Konstruktor Customer digunakan untuk membuat objek Customer baru dengan memberikan nilai awal untuk properti name dan email.

Metode buyMerchandise dalam kelas Customer adalah metode asynchronous yang digunakan untuk memproses pembelian merchandise. Metode ini menerima sebuah map yang berisi pasangan Merchandise dan jumlahnya yang akan dibeli. Proses pembelian ini dijalankan secara asinkron menggunakan Future dan await. Dalam contoh ini, metode Future.delayed digunakan untuk mensimulasikan penundaan dalam proses pembayaran.

Setelah pembelian berhasil, metode detailPayment dipanggil untuk mencetak detail pembayaran. Metode ini mencetak informasi seperti nama pelanggan, alamat email pelanggan, dan daftar merchandise yang dibeli beserta jumlahnya, serta total harga pembelian.
