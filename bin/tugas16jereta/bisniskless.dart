import 'penumpang.dart';
import 'tiket.dart';

class Bisniskless extends Penumpang implements Tiket {
  Bisniskless(String nama) : super(nama);
  
  @override
  double hargaTiket() {
    return 250000;
  }
  
  @override
  void cetakTiket() {
    print('yg bisnis nih tiketnya');
    super.infoTiket();
    print('Tipe: penumpangbisnis');
    print('Harga: ${formatRupiah(hargaTiket())}');
    print('dapet: kursi yg gede + snek yg berkelas + minuman berkelas');
    print('--------------');
  }
}