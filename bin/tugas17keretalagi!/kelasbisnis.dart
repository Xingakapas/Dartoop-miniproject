import 'penumpang.dart';
import 'mejatiket.dart';

class PenumpangBisnis extends Penumpang implements Mejatiket {
  
  // PERBAIKAN 1: Constructor name should match class name
  PenumpangBisnis(String name) : super(name);
  
  // PERBAIKAN 2: Override methods from Penumpang abstract class
  @override
  double getHargaTiket() {  // Changed from getTicketPrice()
    return 250000; 
  }
  
  @override
  String getKelasPenumpang() {  // Changed from getPassengerClass()
    return 'Bisnis';
  }
  
  @override
  String getFasilitas() {  // Changed from getFacilities()
    return 'Kursi Bisnis, Snack, Makanan, dan Minuman';
  }
  
  // PERBAIKAN 3: Override methods from Mejatiket interface
  @override
  String getTicketDetails() {
    return '''
=== Tiket Kereta Bisnis ===
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
  
  // Method untuk mencetak info tiket
  void printTicketInfo() {
    print(getTicketDetails());
  }
}