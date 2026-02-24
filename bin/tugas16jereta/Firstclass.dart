import 'penumpang.dart';
import 'tiket.dart';

class Firstclass extends Penumpang implements Tiket {
  Firstclass(String nama) : super(nama);
  
  @override
  double hargaTiket() {
    return 400000;
  }
  
  @override
  void cetakTiket() {
    print('ferst class tiketnya');
    super.infoTiket();
    print('Tipe: kelas1 penumpangnya');
    print('Harga: ${formatRupiah(hargaTiket())}');
    print('Fasilitas: kursi yg mantap,snack ,makanan mahal,welcoming drink');
    print('----------------------');
  }
}