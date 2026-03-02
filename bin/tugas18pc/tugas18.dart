
class Produk {
  
  String nama;
  double harga;
  int stok;
  
  Produk(this.nama, this.harga, this.stok);
  
  
  void tampilInfo() {
    print('nama peroduk: $nama');
    print('harga: Rp${harga.toStringAsFixed(0)}');
    print('Setok: $stok unit');
  }
  
  
  double hitungHargaAkhir() {
    return harga;
  }
}


abstract class Diskon {
  double hitungDiskon();
}


class Leptop extends Produk implements Diskon {
 
  String prosesor;
  int ram;
  String penyimpanan;
  double diskon = 0.1; 
  
  
  Leptop(String nama, double harga, int stok, 
         this.prosesor, this.ram, this.penyimpanan) 
         : super(nama, harga, stok);
  
  
  @override
  double hitungDiskon() {
    return harga * diskon;
  }
  
  
  @override
  double hitungHargaAkhir() {
    return harga - hitungDiskon();
  }
  
 
  @override
  void tampilInfo() {
    super.tampilInfo();
    print('tipe: Laptop');
    print('frosesor: $prosesor');
    print('rem: $ram GB');
    print('memori: $penyimpanan');
    print('Diskon: ${diskon * 100}%');
    print('Harga abis diskon: Rp${hitungHargaAkhir().toStringAsFixed(0)}');
    print('-------------------');
  }
}


class pcgeming extends Produk implements Diskon {
  
  String prosesor;
  int ram;
  String kartuGrafis;
  double diskon = 0.15; 
  
  
  pcgeming(String nama, double harga, int stok,
           this.prosesor, this.ram, this.kartuGrafis)
           : super(nama, harga, stok);
  
  
  @override
  double hitungDiskon() {
    return harga * diskon;
  }
  
  @override
  double hitungHargaAkhir() {
    return harga - hitungDiskon();
  }
  

  @override
  void tampilInfo() {
    super.tampilInfo();
    print('Tipe: PC Gaming');
    print('Prosesor: $prosesor');
    print('RAM: $ram GB');
    print('Kartu Grafis: $kartuGrafis');
    print('Diskon: ${diskon * 100}%');
    print('Harga Setelah Diskon: Rp${hitungHargaAkhir().toStringAsFixed(0)}');
    print('-------------------');
  }
}


class pckantor extends Produk {
  
  String prosesor;
  int ram;
  bool termasukMonitor;
  
  
  pckantor(String nama, double harga, int stok,
           this.prosesor, this.ram, this.termasukMonitor)
           : super(nama, harga, stok);
  

  void tambahGaransi() {
    print('Garansi standar 1 tahun untuk $nama');
  }
  
  @override
  void tampilInfo() {
    super.tampilInfo();
    print('Tipe: pckantor');
    print('Prosesor: $prosesor');
    print('raM: $ram GB');
    print('dapet montior: ${termasukMonitor ? "Ya" : "Tidak"}');
    print('last harga: Rp${hitungHargaAkhir().toStringAsFixed(0)}');
    print('-------------------');
  }
}


class Garansi {
  String jenisGaransi;
  int lamaGaransi; 
  double biayaTambahan;
  
  Garansi(this.jenisGaransi, this.lamaGaransi, this.biayaTambahan);
  
  void aktifkanGaransi(Produk produk) {
    print('Garansi $jenisGaransi selama $lamaGaransi bulan diaktifkan untuk ${produk.nama}');
    print('Biaya tambahan: Rp${biayaTambahan.toStringAsFixed(0)}');
  }
}


void main() {
  print('toko laptop cuy');
  
  
  var laptop1 = Leptop(
    'asu.s rego ', 
    15000000, 
    5,
    'intel i7-12700H',
    16,
    'esesde 512GB'
  );
  
  
  var pcgeming1 = pcgeming(
    'lazer pc geming',
    25000000,
    3,
    'amemded Raizen 7 5800X',
    32,
    'esesde RTX 3080'
  );
  
  
  var pckantor = PCOffice(
    'Dell Optiplex',
    8000000,
    10,
    'Intel i5-11400',
    8,
    true
  );
  
 
  laptop1.tampilInfo();
  pcgeming1.tampilInfo();
  pckantor.tampilInfo();
  
  
  print('pgransi');
  var garansiStandard = Garansi('Standar', 12, 500000);
  garansiStandard.aktifkanGaransi(pcOffice1);
  pcOffice1.tambahGaransi();
  
  
  print('stok');
  print('Stok ${laptop1.nama} sisa: ${laptop1.stok} unit');
  laptop1.stok -= 1; 
  print('abiskejual atu, stok jadi: ${laptop1.stok} unit');
  
  
  print('\harga setelah diskon');
  print('${laptop1.nama}: Rp${laptop1.hitungHargaAkhir().toStringAsFixed(0)}');
  print('${pcGaming1.nama}: Rp${pcGaming1.hitungHargaAkhir().toStringAsFixed(0)}');
  print('${pcOffice1.nama}: Rp${pcOffice1.hitungHargaAkhir().toStringAsFixed(0)}');
}
