import 'penumpang.dart';
import 'mejatiket.dart';


class KelasEkonomi extends Penumpang implements Mejatiket {

  
  KelasEkonomi(String name) : super(name);
  
 
  @override
  double getHargaTiket() { 
    return 100000; 
  }
  
  @override
  String getKelasPenumpang() {  
    return 'Ekonomi';
  }
  
  @override
  String getFasilitas() {  
    return 'Kursi biasa dan kipas angin';
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