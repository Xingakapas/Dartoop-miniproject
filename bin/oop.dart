// void contohLain() {

  
//   var phone1 = Smartphone("Pixel7", "Gugel", 12000000, 128, "Black");
  

//   Smartphone phone2 = Smartphone("aosis hp", "osas", 18000000, 512, "Black");
  
//   var daftarHp = [
//     Smartphone("piko4", "siomay", 5000000, 256, "Blue"),
//     Smartphone("merek3", "Nothing", 9000000, 256, "White"),
//     Smartphone("merek2", "merek1", 14000000, 512, "Green"),
//   ];
  

//   print("hp di toko:");
//   for (var hp in daftarHp) {
//     print("- ${hp.merek} ${hp.model}: Rp ${hp.harga}");
//   }
  

//   var myPhone = Smartphone("Custom Phone", "BrandX", 1000000, 64, "Red");
 
//   myPhone.warna = "Gold";          
//   myPhone.setVolume(75);          
//   myPhone.installApp("WhatsApp");
//   myPhone.installApp("Facebook");
  
 
//   myPhone.lihatInfo();
// }

class Smartphone {
  String merk;
  String model;
  int baterai;
  
  Smartphone(this.merk, this.model, this.baterai);
  
  void nyalakan() {
    print("$merk $model nyalakkan");
  }
  
  void matikan() {
    print("$merk $model matikan");
  }
  
  void cekbatre() {
    print("batre $merk $model: $baterai%");
  }
  
  void installapp(String namaApp) {
    print("Menginstall $namaApp di $merk $model");
  }
  
  void telepon(String nomor) {
    print("$merk $model menelepon $nomor...");
  }
}

void main() {
  var hpSaya = Smartphone("lamsung", "ayamsemesta", 85);
  
  hpSaya.nyalakan();
  hpSaya.cekBaterai();
  hpSaya.installApp("WhatsApp");
  hpSaya.telepon("08123456789");
  hpSaya.matikan();
}

//bgaian dua //////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
//////////////////////////

class Mahasiswa {
  
  String nama;
  int umur;
  String jurusan;

  Mahasiswa(String nama, int umur, String jurusan) {
   
    this.nama = nama;   
    this.umur = umur;   
    this.jurusan = jurusan;
  }
  
  
  void perkenalan() => print("hay, sayaa $nama, umur $umur tahun");
  
  
  String infoSingkat() => "$nama - $jurusan";
}

void main() {
 
  var mhs1 = Mahasiswa("wowo", 20, "sawitika");

  print("Nama: ${mhs1.nama}");
  print("Umur: ${mhs1.umur}");
  print("Jurusan: ${mhs1.jurusan}");
  
  
  mhs1.perkenalan();
  print("Info: ${mhs1.infoSingkat()}");
}

//tugas ex////////////////////////////////////////////
////////////////////////////////////////
///////////////////////////
///
/   


class Smartphone {
  
  String merk;
  String model;
  int baterai;
  bool nyala;o
  double harga;
  xxxx``
  
  Smartphone(this.merk, this.model, this.baterai, this.harga) 
    : nyala = false;  
  void nyalakan() => print("$merk $model dinyalakan!");
  
  void cekBaterai() => print("Baterai: $baterai%");
  
  String infoSingkat() => "$merk $model - Rp $harga";
}


extension SmartphoneExtension on Smartphone {
  void restart() {
    print("$merk $model direstart...");
    print("Restart selesai!");
  }
}

void main() {

  var hpSaya = Smartphone("Samsung", "A15", 85, 2500000);
  
 
  print("Merk: ${hpSaya.merk}");
  print("Model: ${hpSaya.model}");
  print("Harga: ${hpSaya.harga}");
  

  hpSaya.nyalakan();
  hpSaya.cekBaterai();
  print(hpSaya.infoSingkat());
  
 
  hpSaya.restart();
}