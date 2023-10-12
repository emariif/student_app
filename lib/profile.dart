import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 240,
              child: Stack(
                children: [
                  Container(
                    // color: Color.fromARGB(255, 215, 57, 46),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(255, 245, 65, 62),
                          Color.fromARGB(255, 179, 40, 30),
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(30),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/profile.png'),
                          radius: 50,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Muhammad Arif Nurhuda',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '0921873109234',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 237, 237, 237)),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Teknik Informatika',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 237, 237, 237)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    profileList('Email', 'studi12disini@gmail.com'),
                    profileList('Alamat', 'JL.Margobasuki no 31B, Dau'),
                    profileList('Tahun Masuk', '2017'),
                    profileList('Status Akademik', 'Aktif'),
                    const SizedBox(height: 28),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        padding: const EdgeInsets.all(18),
                        elevation: 4,
                        shadowColor: Colors.black,
                      ),
                      child: const Text(
                        'Lihat Profile Selengkapnya',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        padding: const EdgeInsets.all(18),
                        side: const BorderSide(color: Colors.red, width: 2),
                      ),
                      child: const Text(
                        'Logout',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Column profileList(String question, String answer) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              question,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  overflow: TextOverflow.ellipsis),
            ),
            Text(
              answer,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          height: 1,
          color: const Color.fromARGB(255, 228, 228, 228),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
