import 'penumpang.dart';
import 'mejatiket.dart';


class FirstClass extends Penumpang implements Mejatiket {
  
  FirstClass(String name) : super(name);
  
  @override
  double getHargaTiket() { 
    return 400000;
  }
  
  @override
  String getKelasPenumpang() { 
    return 'First Class';
  }
  
  @override
  String getFasilitas() { 
    return 'Kursi kelas satu dlsb';
  }
  
  @override
  String getTicketDetails() {
    return '''

Nama: $name
Kelas: ${getKelasPenumpang()}
Harga: ${formatRupiah(getHargaTiket())}
Fasilitas: ${getFasilitas()}''';
  }
  
  @override
  double getDiscountedPrice(double discountPercent) {
    double price = getHargaTiket();
    return price - (price * discountPercent / 100);
  }

  void printTicketInfo() {
    print(getTicketDetails());
  }
}