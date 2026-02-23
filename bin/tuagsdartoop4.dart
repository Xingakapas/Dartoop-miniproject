import 'tugasdartoop123.dart';

class Mobil extends Transportasi {
  Mobil(String nama) : super(nama);
  @override void bergerak() => print('$nama berjalan');
}

class Pesawat extends Transportasi {
  Pesawat(String nama) : super(nama);
  @override void bergerak() => print('$nama terbang');
}

void main() {
  Mobil('Avanza')..bergerak();
  Pesawat('Boeing')..bergerak();
}