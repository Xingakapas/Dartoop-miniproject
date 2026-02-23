import 'buku.dart';
import 'minjem.dart';

class Bukuperpus extends Buku implements Peminjaman {
  @override
  void pinjam() {
    if (getStok() > 0) {
      setStok(getStok() - 1);
      print('buku dipinjam');
    } else {
      print('stokhabis');
    }
  }
  
  @override
  void kembalikan() {
    setStok(getStok() + 1);
    print('bukukembaliin');
  }
  
  void tampilkanInfo() {
    print('Judul : ${getJudul()}');
    print('Stok : ${getStok()}');
  }
}