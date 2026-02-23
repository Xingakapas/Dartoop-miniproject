
// class hewan {
//   String nama;
//   String warna;
//   int umur;
  
//   hewan(this.nama, this.warna, this.umur);
  
  
//   void tidur() {
//     print('$nama lagi tidur dikandang');
//   }
// }


// class kucing extends hewan {
//   String jenis;
  
  
//   kucing(String nama, String warna, int umur, this.jenis) 
//     : super(nama, warna, umur);
  
 
//   @override
//   void tidur() {
//     print('$nama ($jenis) tidur disofa');
//   }
// }

// void main() {
  
//   var hewan1 = hewan('sepi', 'nigger', 3);
//   print('classparent');
//   hewan1.tidur();  
//   print(''); // spasi
  
  
//   var hewan2 = kucing('meng', 'negro', 2, 'berbulu');
//   print('overrideng');
//   hewan2.tidur();  
// }

//class parent berkerja
//class aktif kuli/tukang/masinis/dll
//class parent punya filed 3 final dan 2 non final
//class child ada dua field
//dicetak semua field,terserah bentuk cetakannya
//object minimal

class Pekerja {
  final String nama;
  final String id;
  final String kemampuan;
  int gaji;
  int jamKerja;
  
  Pekerja(this.nama, this.id, this.kemampuan, this.gaji, this.jamKerja);
  
  void info() {
    print('pekerja: $nama  ID: $id  Kemampuan: $kemampuan');
    print('gaji: Rp$gaji  jam Kerja: $jamKerja jam');
  }
}

class Kuli extends Pekerja {
  String alat;
  String lokasi;
  
  Kuli(String nama, String id, int gaji, int jamKerja, this.alat, this.lokasi) 
    : super(nama, id, 'kontruksi', gaji, jamKerja);
  
  @override
  void info() {
    super.info();
    print('Alat: $alat  Lokasi: $lokasi');
  }
}

class Masinis extends Pekerja {
  String kudaterbang;
  String rute;
  
  Masinis(String nama, String id, int gaji, int jamKerja, this.kudaterbang, this.rute) 
    : super(nama, id, 'alat jalan', gaji, jamKerja);
  
  @override
  void info() {
    super.info();
    print('kereta: $kudaterbang  Rute: $rute');
  }
}

void main() {
  print('kuli-ah');
  var kuli = Kuli('Pakcik yunus', 'mambo', 3000000, 8, 'pe-malu', 'ngawi');
  kuli.info();
  
  print('mas-sinis');
  var masinis = Masinis('wowo', 'Kuda lumping', 1000000, 9, 'jatim', 'jakarta-ngawi');
  masinis.info();
}
