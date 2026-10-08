void main() {

  // Implementasi 0
  // String username = "Teguh";
  // dynamic password = "teguhkun223";

  // if (username == "Teguh" && password == "teguhkun223") {
  //   print("Berhasil masuk ke sistem");
  // } else {
  //print("Usename atau passoword salah");
  // }

  // implementasi 1
  String nama = "Teguh";
  int umur = 19;
  num npm = 07352411019;
  double tinggiBadan = 160;
  bool aktif = true;

  // output implementasi 1
  print("== BIODATA MAHASISWA ==");
  print("Nama diriku : $nama");
  print("Umur diriku : $umur");
  print("NPM diriku  : " + npm.toString());
  print("Tinggi badan: " + tinggiBadan.toString());
  print("Masih aktif?: " + aktif.toString());

  // implementasi 2
  void perkalian(int x, int y) {
    print(x + y);
  }

  void pembagian(int r, int w) {
    print(r / w);
  }

  // output implementasi 2
  perkalian(2, 7);
  pembagian(12, 3);

  // implementasi 3
  int nilai = 100;

  if(nilai > 90) {
    print("Predikat A");
  } else if(nilai > 80) {
    print("Predikat B");
  } else {
    print("Tidak lulus");
  }

  // implementasi 4
  for (int i =1; i <= 10; i++) {
    print(i);
  }
}