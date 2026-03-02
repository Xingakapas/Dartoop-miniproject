import 'kelasekonomi.dart';
import 'kelasbisnis.dart';
import 'kelassatu.dart';
import 'penumpang.dart';


void main() {
 
  List<Penumpang> passengers = [
    penumpangekonomi('Budi'),
    PenumpangBisnis('Andi'),
    FirstClass('Sinta'),
  ];
  
  
  for (var passenger in passengers) {
    if (passenger is penumpangekonomi) {
      passenger.printTicketInfo();
    } else if (passenger is PenumpangBisnis) {
      passenger.printTicketInfo();
    } else if (passenger is FirstClass) {
      passenger.printTicketInfo();
    }
    print('----------------------');
  }
  

  print('seeter');
  penumpangekonomi budi = passengers[0] as penumpangekonomi;
  print('Nama awal: ${budi.name}');
  budi.name = 'sahakek';
  print('Nama setelah diubah: ${budi.name}');
 
  print('diskon');
  FirstClass sinta = passengers[2] as FirstClass;
  double hargaAwal = sinta.getHargaTiket();
  double hargaDiskon = sinta.getDiscountedPrice(20); 
  print('harga tiket kelas satu: ${sinta.formatRupiah(hargaAwal)}');
  print('harga setelah diskon 20%: ${sinta.formatRupiah(hargaDiskon)}');
}