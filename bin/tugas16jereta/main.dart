import 'ekokless.dart';
import 'bisniskless.dart';
import 'Firstclass.dart';
import 'penumpang.dart';
import 'tiket.dart';

void main() {
  List<Penumpang> passenger = [
    Ekokless('dudi'),
    Bisniskless('dandi'),
    Firstclass('danda')
  ];
  
  for (var p in passenger) {
    if (p is Tiket) {  
      (p as Tiket).cetakTiket();
    }
  }
}