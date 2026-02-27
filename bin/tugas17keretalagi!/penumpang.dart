abstract class Penumpang {
  String _name;
  
  Penumpang(this._name);
  
  String get name => _name;
  
  set name(String newName) {
    _name = newName;
  }
  
  void printBasicInfo() {
    print('Nama Penumpang: $_name');
    print('Kelas: ${getKelasPenumpang()}');
  }
  
  // Abstract methods dengan nama yang konsisten
  double getHargaTiket();
  String getKelasPenumpang();
  String getFasilitas();
  
  String formatRupiah(double price) {
    return 'Rp ${price.toStringAsFixed(0).replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]}.'
    )}';
  }
}