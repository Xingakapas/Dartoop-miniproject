// //membuat class memilik 5 field.memilik 3 method ,tambahkan 1 extension method
// //tambahkan construktor anti variable shadowing, 1 named constructor dengan parameter


// class Person {
 
//   String name;
//   int age;
//   String email;
//   double height;
//   bool isStudent;
  
  
//   Person({
//     required this.name,
//     required this.age,
//     required this.email,
//     required this.height,
//     required this.isStudent,
//   });
  
 
//   Person.simple(String name, int age)
//       : this.name = name,
//         this.age = age,
//         this.email = '$name@email.com',
//         this.height = 170.0,
//         this.isStudent = true;
  

//   void displayInfo() {
//     print('Nama: $name');
//     print('Umur: $age tahun');
//     print('Email: $email');
//     print('Tinggi: $height cm');
//     print('Status: ${isStudent ? "murid" : "nah murid"}');
//   }

//   void haveBirthday() {
//     age++;
//     print('$name umur skrng $age tahun!');
//   }

//   String getStudentStatus() {
//     return isStudent ? 'masih nagnggur' : 'dahlulus';
//   }
// }


// extension PersonExtension on Person {
 
//   int calculateBirthYear(int currentYear) {
//     return currentYear - age;
//   }
  
  
//   bool isValidEmail() {
//     return email.contains('@') && email.contains('.');
//   }
// }

// void main() {
//   print('contructor nig');
  
//   Person person1 = Person(
//     name: 'Budi',
//     age: 20,
//     email: 'budi@gmail.com',
//     height: 175.5,
//     isStudent: true,
//   );
  
//   person1.displayInfo();
//   print('');
  
  
//   person1.haveBirthday();
//   print('Status: ${person1.getStudentStatus()}');
  
//   print('contructor loh ya');
 
//   Person person2 = Person.simple('Ani', 18);
//   person2.displayInfo();
  
//   print('nah ni extension');

//   print('Tahun lahir: ${person1.calculateBirthYear(2024)}');
//   print('Email valid? ${person1.isValidEmail()}');
// }
// ////////yugas 9////////////////////
// ////////////////////////
// ////
// ///


// class Org {
//   String nama;
//   int umur;

  
//   Org(this.nama, this.umur);
  
  
//   void makan() => print('$nama sedang jalan');
  
//   void minum() => print('$nama sedang lari');
  
//   void perkenalan() => print('Hai, aku $nama, umur $umur tahun');
// }

// void main() {
 
//   Org orang1 = Org('Jawa', 20);
  
//   orang1.perkenalan(); 
//   orang1.makan();     
//   orang1.minum();     
  
//   print(''); 
  
  
//   Org orang2 = Org('Sari', 18);
//   orang2.perkenalan();
//   orang2.makan();
// }


////////////////////////tugas ke 10 keknya///////////////////////
//////////////////////
///////////////////////////////////////.


// class Siswa {
 
//   String nama;
//   String kelas;
//   double nilai;
  
 
//   Siswa(this.nama, this.kelas, this.nilai);
  
  
//   void Datanyamana() {
//     print('nama  : $nama');
//     print('klas : $kelas');
//     print('nilai : $nilai');
//   }
  

//   void kondisilulus() {
//     print('Status: ${nilai >= 75 ? 'llus' : 'ggl'}');
//   }
// }

// void main() {

//   print('ssw1');
//   Siswa siswa1 = Siswa('wowo', 'pljrn', 85.5);
//   siswa1.Datanyamana();
//   siswa1.kondisilulus();
  
//   print('');
  
  
//   print('sswa2');
//   Siswa siswa2 = Siswa('priasolo', 'Pljrn', 65.0);
//   siswa2.Datanyamana();
//   siswa2.kondisilulus();
  
//   print(''); 
  
  
// }
  