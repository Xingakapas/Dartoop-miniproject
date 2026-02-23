// class Siswa {

//   final String nama;    
//   final String nis;     
//   String kelas;      
//   bool aktif;          
  
 
//   Siswa(this.nama, this.nis, this.kelas, this.aktif);
  
  
//   void info() {
//     print('biodt sswa');
//     print('nma   : $nama');
//     print('NIS    : $nis');
//     print('kelas  : $kelas');
//     print('status : ${aktif ? "aktif" : "taktif"}');
//     print(''); 
//   }
// }

// void main() {
  
//   print('onjek1');
//   var siswa1 = Siswa('gawi', '12345', '13 jwa ', true);
//   siswa1.info();
  
  
//   print('ujek2');
//   var siswa2 = Siswa('dudi', '67890', '11 ngawi', false);
//   siswa2.info();
  
 
//   print('cascade ');
  
  
//   print('ujek');
//   siswa1
//     ..kelas = '12 wawi '  
//     ..aktif = false       
//     ..info();            
  
 
//   print('onjek');
//   siswa2
//     ..kelas = '11 wowo'  
//     ..aktif = true      
//     ..info();             
  

//   print('Akses');
//   print('Nama siswa1: ${siswa1.nama}');
//   print('NIS siswa1 : ${siswa1.nis}');
 
// }


// class Person {
//   String nama = "budi";
//   int umur = 18;
  
//   void info() {
//     print('nama: $nama, umur: $umur');
//   }
// }

// void main() {
  
//   Person()
//     ..nama = "Donto"
//     ..umur = 20
//     ..info();
// }

///////////////tugas 12
///
///
// class Pengawai {
//   String nama;
//   int gaji;
  
//   Pengawai(this.nama, this.gaji);
  
//   void info() {
//     print('nama: $nama');
//     print('gaji: Rp$gaji');
//   }
// }

// class Manager extends Pengawai {
//   int tunjangan;
  
//   Manager(String nama, int gaji, this.tunjangan) : super(nama, gaji);
  
//   @override
//   void info() {
//     super.info();
//     print('tunjangan: Rp$tunjangan');
//     print('total: Rp${gaji + tunjangan}');
//   }
// }

// void main() {
  
//   Manager()
//     ..nama = "P nama"
//     ..gaji = 10000000
//     ..tunjangan = 3000000
//     ..info();
// }


//buat class kendaraan
//field nama,kecepatan
//contructor utama,method jalan
//buat class mobil dan motor
//overrride jalan() panggil super.jalan() lalu tambahkan keteranagan
//buatnamed contructor mobil.cpeat() dan motor.cpeat()
//gunakan polymorphism

class Kendaraan {
  String nama;
  int kecepatan;
  
  Kendaraan(this.nama, this.kecepatan);
  
  void jalan() {
    print('$nama kecepatan jalan $kecepatan km');
  }
}

class Mobil extends Kendaraan {
  Mobil(String nama, int kecepatan) : super(nama, kecepatan);
  
  Mobil.cepat() : super('Mbil kcpatanny', 200);
  
  @override
  void jalan() {
    super.jalan();
    print('mbil nih pke 4 roda');
  }
}

class Motor extends Kendaraan {
  Motor(String nama, int kecepatan) : super(nama, kecepatan);
  
  Motor.cepat() : super('kcptn motor', 150);
  
  @override
  void jalan() {
    super.jalan();
    print('motor nih pke 2 roda');
  }
}

void main() {

  List<Kendaraan> kendaraan = [
    Mobil('apaza', 100),
    Motor('Bit', 80),
    Mobil.cepat(),
    Motor.cepat()
  ];
  
  for (var k in kendaraan) {
    k.jalan();
    print('');
  }
}

