class Buku {
  String _judul = '';
  int _stok = 0;
  
  void setJudul(String judul) {
    _judul = judul;
  }
  
  void setStok(int stok) {
    _stok = stok;
  }
  
 
  String getJudul() {
    return _judul;
  }
  
  int getStok() {
    return _stok;
  }
}