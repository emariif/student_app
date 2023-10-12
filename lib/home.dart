import 'package:flutter/material.dart';
import 'package:student_app/absensi.dart';
import 'package:student_app/model/menu.dart';
import './model/jadwal.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 185,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      height: 155,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(255, 245, 65, 62),
                            Color.fromARGB(255, 194, 45, 34),
                          ],
                        ),
                      ),
                      child: const ListTile(
                        leading: CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/profile.png'),
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            'Muhammad Arif Nurhuda',
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        subtitle: Text(
                          'Teknik Informatika',
                          maxLines: 1,
                          style: TextStyle(color: Colors.white54),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      right: 30,
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(0, 5),
                                  blurRadius: 12)
                            ]),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '96',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'SKS',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black45),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '24',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'KRS',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black45),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '3,67',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'IPK',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black45),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(26, 24, 26, 12),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jadwal Hari Ini',
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Senin, 2 Desember 2023',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.only(left: 26),
                child: Column(
                  children: [
                    SizedBox(
                      height: 130,
                      child: ListView.builder(
                        itemCount: jadwalList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final Jadwal jadwal = jadwalList[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Absensi();
                              }));
                            },
                            child: Container(
                              height: 130.0,
                              // width: 265,
                              margin: const EdgeInsets.only(right: 16),
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color.fromARGB(227, 205, 205, 205),
                                      width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: const Offset(0, 0),
                                        blurRadius: 4),
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.timer_outlined,
                                        color: Colors.black38,
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        jadwal.waktu,
                                        style: const TextStyle(color: Colors.black38),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Icon(
                                        Icons.meeting_room_outlined,
                                        color: Colors.black38,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        jadwal.gedung,
                                        style: const TextStyle(color: Colors.black38),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '${jadwal.kelas} - ${jadwal.matkul}',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color: jadwal.isNow
                                            ? Colors.green
                                            : Colors.grey,
                                        size: 12,
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        jadwal.isNow
                                            ? 'Sedang Berlangsung'
                                            : 'Akan Datang',
                                        style: const TextStyle(
                                            color: Colors.black45),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(245, 245, 245, 245),
              ),
              // GridView.count(
              //   crossAxisCount: 4,
              //   shrinkWrap: true,
              //   children: [
              //     Column(
              //       children: [
              //         CircleAvatar(backgroundColor: Colors.grey, child: Icon(Icons.abc),)
              //       ],
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 12,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth <= 600) {
                    return const MenuGridView(gridCount: 4);
                  } else if(constraints.maxWidth <= 1200) {
                    return const MenuGridView(gridCount: 6);
                  } else {
                    return const MenuGridView(gridCount: 8);
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuGridView extends StatelessWidget {
  final int gridCount;
  const MenuGridView({super.key, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridCount,
          mainAxisSpacing: 8,
          childAspectRatio: 1.0,
          crossAxisSpacing: 8),
      itemCount: menuList.length,
      shrinkWrap: true,
      // physics: ScrollPhysics(),
      itemBuilder: (context, index) {
        final Menu menu = menuList[index];
        return InkWell(
          onTap: () {},
          child: Column(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: const Color.fromARGB(255, 242, 239, 239),
                child: menu.icon,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(menu.label),
            ],
          ),
        );
      },
    );
  }
}
