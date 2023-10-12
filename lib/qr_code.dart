import 'package:flutter/material.dart';

class QrCode extends StatelessWidget {
  const QrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.share,
            color: Colors.black,
          ),
          SizedBox(
            width: 24,
          ),
        ],
        title: const Text('My QR Code',
            style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
            textAlign: TextAlign.center),
      ),
      body: Container(
        color: const Color.fromARGB(245, 245, 245, 245),
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.all(10),
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, 5),
                  blurRadius: 12,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ListTile(
                  title: Text('Muhammad Arif Nurhuda'),
                  subtitle: Text('Teknik Informatika'),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                ),
                Container(
                  height: 2,
                  color: const Color.fromARGB(255, 244, 244, 244),
                ),
                const Icon(
                  Icons.qr_code_2_rounded,
                  size: 300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
