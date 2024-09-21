class Produk {
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  //Total harga Sebelum diskon
  double hitungTotalHargaSebelumDiskon() {
    return harga * jumlah;
  }

  //Total harga setelah diskon
    double hitungTotalHargaSetelahDiskon() {
    double totalHarga = hitungTotalHargaSebelumDiskon();
    double totalDiskon = totalHarga*(diskon/100);
    return totalHarga - totalDiskon;
  }

  void InformasiProduk() {
    print("Nama Produk: $namaProduk");
    print('Harga Satuan: Rp ${harga}');
    print('Jumlah: $jumlah');
    print('Diskon: $diskon%');
    print('Total Harga Tanpa Diskon: Rp ${hitungTotalHargaSebelumDiskon()}');
    print('Total Harga Setelah Diskon: Rp ${hitungTotalHargaSetelahDiskon()}');
  }
}

void main() {
  Produk kamera = Produk('Kamera', 1500000, 2, 10);
  kamera.InformasiProduk();
}
