import 'penumpang.dart';
import 'mejatiket.dart';

class PenumpangBisnis extends Penumpang implements Mejatiket {
  
  
  PenumpangBisnis(String name) : super(name);
  
 
  @override
  double getHargaTiket() {  
    return 250000; 
  }
  
  @override
  String getKelasPenumpang() { 
    return 'Bisnis';
  }
  
  @override
  String getFasilitas() { 
    return 'Kursi Bisnis, Snack, Makanan, dan Minuman';
  }
  

  @override
  String getTicketDetails() {
    return '''

Nama: $name
Kelas: ${getKelasPenumpang()}
Harga: ${formatRupiah(getHargaTiket())}
Fasilitas: ${getFasilitas()}
----------------------''';
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