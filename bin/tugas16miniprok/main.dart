import 'bukuperpus.dart';

void main() {
  
  Bukuperpus buku = Bukuperpus();
  
  
  buku.setJudul('jdulcuy');
  buku.setStok(2);
  
  
  print('bukuperpus');
  buku.tampilkanInfo();
  print('===========');
  
  
  buku.pinjam();
  buku.tampilkanInfo();
  print('===============');
  
  
  buku.kembalikan();
  buku.tampilkanInfo();
  print('====');
}