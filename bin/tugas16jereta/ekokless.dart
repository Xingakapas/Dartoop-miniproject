import 'penumpang.dart';
import 'tiket.dart';

class Ekokless extends Penumpang implements Tiket {
  Ekokless(String nama) : super(nama);
  
  @override
  double hargaTiket() {
    return 100000;
  }
  
  @override
  void cetakTiket() {
    print('berekonomi tiketnya');
    super.infoTiket();
    print('tipe : penumpangberekonomi');
    print('Harga: ${formatRupiah(hargaTiket())}');
    print('fasilitas: standar2 aja lah,welocme drink boleh');
    print('----------------------');
  }
}