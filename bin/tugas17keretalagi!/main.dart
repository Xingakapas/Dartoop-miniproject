import 'kelasekonomi.dart';
import 'kelasbisnis.dart';
import 'kelassatu.dart';
import 'passenger.dart';

void main() {
  // Membuat list dengan tipe data Passenger (polymorphism)
  List<Passenger> passengers = [
    EconomyPassenger('budi'),
    BusinessPassenger('di'),
    FirstClassPassenger('anta'),
  ];
  

  for (var passenger in passengers) {
    if (passenger is EconomyPassenger) {
      passenger.printTicketInfo();
    } else if (passenger is BusinessPassenger) {
      passenger.printTicketInfo();
    } else if (passenger is FirstClassPassenger) {
      passenger.printTicketInfo();
    }
    print('----------------------');
  }
  

  print('seeter');
  EconomyPassenger budi = passengers[0] as EconomyPassenger;
  print('Nama awal: ${budi.name}');
  budi.name = 'sahakek';
  print('Nama setelah diubah: ${budi.name}');
 
  print('diskon');
  FirstClassPassenger sinta = passengers[2] as FirstClassPassenger;
  double hargaAwal = sinta.getTicketPrice();
  double hargaDiskon = sinta.getDiscountedPrice(20); /
  print('harga tiket kelas satu: ${sinta.formatRupiah(hargaAwal)}');
  print('harga setelah diskon 20%: ${sinta.formatRupiah(hargaDiskon)}');
}