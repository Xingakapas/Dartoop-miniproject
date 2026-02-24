abstract class Penumpang {
  String _nama;
  
  Penumpang(this._nama);
  
  String getNama() => _nama;
  setNama(String nama) => _nama = nama;
  
  String formatRupiah(double harga) => 'Rp ${harga.toStringAsFixed(0)}';
  
  void infoTiket() => print('nama Penumpang: $_nama');
  
  double hargaTiket();
}