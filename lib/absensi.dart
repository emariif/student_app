import 'package:flutter/material.dart';

class Absensi extends StatefulWidget {
  const Absensi({Key? key}) : super(key: key);

  @override
  State<Absensi> createState() => _AbsensiState();
}

class _AbsensiState extends State<Absensi> {
  String initAbsen = '';
  bool initAbsenBanner = false;
  bool initAbsenButton = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        shadowColor: Colors.black38,
        backgroundColor: Colors.white,
        title: const Text(
          'Absensi',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Absensi Hari Ini',
                    style: TextStyle(color: Colors.black38, fontSize: 14),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Senin, 2 Desember 2023',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          listAbsensi('Kecerdasan Buatan', 'Sudarmaji, S.Kom', '214123',
              '14.00 - 16.00 WIB', true),
          const SizedBox(
            height: 12,
          ),
          listAbsensi('Pemrograman Mobile', 'Susilo Putra, M.Kom', '5231234',
              '16.00 - 18.00 WIB', false),
          const SizedBox(
            height: 12,
          ),
          listAbsensi('Struktur Data', 'Agung Jaya, M.Si.', '62231234',
              '19.00 - 21.00 WIB', false),
        ],
      ),
    );
  }

  Card listAbsensi(
      String matkul, String dosen, String kode, String jam, bool isNow) {
    return Card(
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      matkul,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Visibility(
                      visible: isNow ? initAbsenBanner : false,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: const BoxDecoration(color: Colors.green),
                        child: Text(
                          initAbsen,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama Dosen',
                          style: TextStyle(
                              color: Colors.black54, letterSpacing: 0.3),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Kode Pertemuan',
                          style: TextStyle(
                              color: Colors.black54, letterSpacing: 0.3),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Jam Kuliah',
                          style: TextStyle(
                              color: Colors.black54, letterSpacing: 0.3),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dosen,
                          style: const TextStyle(
                              letterSpacing: 0.3,
                              overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          kode,
                          style: const TextStyle(
                              letterSpacing: 0.3,
                              overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          jam,
                          style: const TextStyle(
                              letterSpacing: 0.3,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: isNow ? initAbsenButton : true,
                  child: ElevatedButton(
                    onPressed: () {
                      if (isNow == true) {
                        setState(() {
                          initAbsen = 'Hadir';
                          initAbsenButton = false;
                          initAbsenBanner = true;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isNow ? Colors.green.shade500 : const Color(0xFFE9ECF2),
                        minimumSize: const Size.fromHeight(44),
                        elevation: 0.0),
                    child: Text(
                      'Absensi Kehadiran',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          letterSpacing: 0.3,
                          color: isNow ? Colors.white : Colors.black26),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
