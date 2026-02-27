//2 parent class
//2 mixxinn
//1 mixxin pakai on
//2 turunan guru dan murid
// dikantin ada siswa dan guru
//semua punya nama saldo bisa beli makanan
//siswa dapat diskon kalo guru gk dapet diskon

// Parent class 1
class Manusia {
  String nama;
  int saldo;
  
  Manusia(this.nama, this.saldo);
  
  void beliMakanan(int harga) {
    if (saldo >= harga) {
      saldo -= harga;
      print('$nama berhasil beli makanan. Sisa saldo: $saldo');
    } else {
      print('$nama gagal beli makanan. Saldo tidak cukup!');
    }
  }
}

// Parent class 2
class WargaSekolah {
  String id;
  
  WargaSekolah(this.id);
  
  void absen() {
    print('Absen dengan ID: $id');
  }
}

// Mixin untuk diskon
mixin DiskonSiswa {
  int hitungDiskon(int harga) {
    return (harga * 0.9).toInt(); // Diskon 10%
  }
}

// Mixin dengan ON (hanya bisa dipakai oleh Manusia)
mixin Kantin on Manusia {
  void pesanMakanan(String makanan, int harga) {
    print('$nama memesan $makanan');
    beliMakanan(harga);
  }
}

// Class Guru (extends Manusia, mixin Kantin)
class Guru extends Manusia with Kantin {
  String mapel;
  
  Guru(String nama, int saldo, this.mapel, String id) 
    : super(nama, saldo);
  
  void mengajar() {
    print('$nama mengajar mapel $mapel');
  }
}

// Class Murid (extends Manusia, mixin Kantin dan DiskonSiswa)
class Murid extends Manusia with Kantin, DiskonSiswa {
  String kelas;
  
  Murid(String nama, int saldo, this.kelas, String id) 
    : super(nama, saldo);
  
  @override
  void beliMakanan(int harga) {
    int hargaSetelahDiskon = hitungDiskon(harga);
    print('$nama dapat diskon! Harga: $harga jadi $hargaSetelahDiskon');
    super.beliMakanan(hargaSetelahDiskon);
  }
  
  void belajar() {
    print('$nama belajar di kelas $kelas');
  }
}

void main() {
  print('=== DI KANTIN SEKOLAH ===');
  
  // Buat guru
  var guru = Guru('Pak Budi', 50000, 'Matematika', 'G001');
  guru.pesanMakanan('Nasi Goreng', 15000);
  
  print('');
  
  // Buat murid
  var murid = Murid('Andi', 30000, '12 IPA 1', 'M001');
  murid.pesanMakanan('Bakso', 15000);
  
  print('');
  
  // Coba beli lagi
  murid.pesanMakanan('Es Teh', 5000);
}