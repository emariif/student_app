class Jadwal {
  String waktu;
  String gedung;
  String kelas;
  String matkul;
  bool isNow;

  Jadwal({
    required this.waktu,
    required this.gedung,
    required this.kelas,
    required this.matkul,
    required this.isNow,
  });
}

var jadwalList = [
  Jadwal(
      waktu: '08.40 - 10.20',
      gedung: 'GKB3 - 310',
      kelas: '5F',
      matkul: 'Kecerdasan Buatan',
      isNow: true,
  ),
  Jadwal(
      waktu: '09.20 - 11.20',
      gedung: 'GKB2 - 255',
      kelas: '5G',
      matkul: 'Pemrograman Mobile',
      isNow: false,
  ),
  Jadwal(
      waktu: '19.40 - 21.20',
      gedung: 'GKB1 - 410',
      kelas: '5C',
      matkul: 'Struktur Data',
      isNow: false,
  ),
  Jadwal(
      waktu: '21.40 - 22.20',
      gedung: 'GKB3 - 520',
      kelas: '5D',
      matkul: 'Kalkulus',
      isNow: false,
  ),
];
