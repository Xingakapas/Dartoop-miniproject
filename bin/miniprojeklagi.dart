//buat class inhheritance 1 parent(kenderaan) 2 choild
//parent punya field nama dan generasi
//parent punya contructor untuk mengsi field
//parent punya method info() untuk mencetak ketrangan (nama dan generasi)
////child punya field warna
/////child punya method overriding
/////child mengakses method parent dan mencetak filed warna
///child main fuction mainnya difile yg berbeda ,cetak 2 child tersebut


// class Kendaraan {
//   String nama;
//   String generasi;
  
//   Kendaraan(this.nama, this.generasi);
  
//   void info() {
//     print('nama: $nama  keturunan: $generasi');
//   }
// }


// class Mobil extends Kendaraan {
//   String warna;
  
//   Mobil(String nama, String generasi, this.warna) 
//     : super(nama, generasi);
  
//   @override
//   void info() {
//     super.info();
//     print('warna: $warna');
//   }
// }


// class Motor extends Kendaraan {
//   String warna;
  
//   Motor(String nama, String generasi, this.warna) 
//     : super(nama, generasi);
  
//   @override
//   void info() {
//     super.info();
//     print('warna: $warna');
//   }
// }


// void main() {
//   print('mbil');
//   Mobil('cevrolet', '2023', 'meaah')..info();
  
//   print('mtro');
//   Motor('Bit', '2024', 'nigga')..info();
// }

//buat 3 class inhertate,salah satunya jadikan parent(transportasi)
//class parent pakai abstarct
//class parent memiliki min 1 filed,1 contructor,1 method abstract
//class turunan deklarsai absract mehtod
//cetak object nya difile yg berbeda
//cetak object method abstacrt