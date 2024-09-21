class Produk {
  String namaProduk;
  int harga;
  int jumlah;
  int diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  int hitungTotalHargaTanpaDiskon() {
    return harga * jumlah;
  }

  int hitungTotalHargaSetelahDiskon() {
    int totalHarga = hitungTotalHargaTanpaDiskon();
    int jumlahDiskon = (totalHarga * diskon / 100).round();
    return totalHarga - jumlahDiskon;
  }

  void tampilkanInformasiProduk() {
    print('');
    print('Informasi Produk:');
    print('Nama Produk: $namaProduk');
    print('Harga Satuan: Rp. $harga');
    print('Jumlah: $jumlah');
    print('Diskon: $diskon%');
    print('Total Harga Tanpa Diskon: Rp. ${hitungTotalHargaTanpaDiskon()}');
    print('Total Harga Setelah Diskon: Rp. ${hitungTotalHargaSetelahDiskon()}');
  }
}

void main() {
  // Contoh penggunaan class Produk
  Produk laptop = Produk('Kamera', 1500000, 2, 10);
  laptop.tampilkanInformasiProduk();
}
