// Nama : Revana Faliha Salma
// NIM  : 2202869
// Kelas: Ilmu Komputer C2

// TUGAS PRAKTIKUM 1 PEMROGRAMAN VISUAL

import 'dart:async'; // mengimpor library async untuk mendukung operasi asynchronous

class Merchandise {
  String name = "";  // deklarasi variabel untuk menyimpan nama merchandise
  double price = 0.0; // deklarasi variabel untuk menyimpan harga merchandise

  // konstruktor untuk membuat objek Merchandise
  Merchandise(this.name, this.price);

  // setter dan getter untuk name
  set nama(String name){
    this.name = name;
  }

  String get nama{
    return name;
  }

  // setter dan getter untuk price
  set harga(double price){
    this.price = price;
  }

  double get harga{
    return price;
  }

  @override
  // metode override dari kelas induk Object untuk menghasilkan representasi string yang sesuai dari objek Merchandise
  String toString() {
    return '$name: \$${price.toStringAsFixed(2)}';  // mengembalikan string yang terdiri dari nama merchandise dan harga, dengan harga diformat menjadi dua angka desimal setelah titik
  }

}

class Customer {
  String name = "";  // deklarasi variabel untuk menyimpan nama customer
  String email = ""; // deklarasi variabel untuk menyimpan email customer

  // konstruktor untuk membuat objek Customer
  Customer({required this.name, required this.email});  

  // setter dan getter untuk name
  set nama(String name){
    this.name = name;
  }

  String get nama{
    return name;
  }

  // setter dan getter untuk email
  set eMail(String eMail){
    email = eMail;
  }

  String get eMail{
    return email;
  }

  // metode asynchronous untuk membeli merchandise
  Future<void> buyMerchandise(Map<Merchandise, int> merchandise) async {
    double totalPrice = 0.0;  // inisisalisasi total harga

    print('\nProcessing payment...'); // pesan pembayaran diproses

    await Future.delayed(Duration(seconds: 2)); // simulasi penundaan untuk memproses pembayaran

    // menggunakan loop for untuk menghitung total harga merchandise
    for (var item in merchandise.entries) {
      var merchandise = item.key;
      var quantity = item.value;
      totalPrice += merchandise.harga * quantity;
    }

    print('\nPayment successful! Total amount: \$${totalPrice.toStringAsFixed(2)}'); // pesan pembayaran berhasil
  }

  // metode untuk mencetak detail pembayaran
  void detailPayment(Map<Merchandise, int> merchandise) {
    print("\nDetail Payment");
    print("Name             : $name");    // mencetak nama customer
    print("Email            : $email");   // mencetak email customer
    print("Purchase Details :");

    double totalPrice = 0.0; // inisialisasi total harga

    // loop setiap barang dalam merchandise
    for (var item in merchandise.entries) {
      var merchandise = item.key; // mengambil barang
      var quantity = item.value;  // mengambil jumlah barang
      var itemPrice = merchandise.harga * quantity; // harga untuk satu item
      totalPrice += itemPrice; // menambahkan harga item ke total harga
      print("${merchandise.name} ($quantity) = \$${itemPrice.toStringAsFixed(2)}"); // mencetak detail pembelian satu item
    }
    print('----------------------------------------');
    print("Total Price      : \$${totalPrice.toStringAsFixed(2)}"); // mencetak total harga
  }

}

void main() async {
  // map merchandise konser Taylor Swift
  final taylorSwiftConcertMerchandise = {
    Merchandise('T-shirt', 29.99): 2,
    Merchandise('Poster', 18.79): 1,
    Merchandise('Album', 14.41): 3,
  };

  // membuat objek customer
  final customer = Customer(name: 'Revana Faliha Salma', email: 'rere@gmail.com');

  print('\nWelcome to Taylor Swift Concert Merchandise Store!');

  print('\nAvailable Merchandise:');

  // loop untuk mencetak setiap merchandise yang tersedia
  for (var item in taylorSwiftConcertMerchandise.entries) {
    var merchandise = item.key;
    var quantity = item.value;
    print('$merchandise');
    print('Quantity: $quantity');
  }

  // memilih semua merchandise yang tersedia
  await customer.buyMerchandise(taylorSwiftConcertMerchandise)  // memanggil metode untuk membeli merchandise
    .then((_) => print('\nThank you for shopping with us!'))  // pesan terima kasih jika pembelian berhasil
    .catchError((error) => print('Error occurred: $error'));  // pesan kesalahan jika pembelian gagal

  // mencetak detail pembayaran setelah pembelian berhasil
  customer.detailPayment(taylorSwiftConcertMerchandise); 

}