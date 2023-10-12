import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:student_app/home.dart';
import 'package:student_app/profile.dart';
import 'package:student_app/qr_code.dart';
    
class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int initIndex = 0;
  final screens = [
    const Home(),
    const QrCode(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[initIndex],
      bottomNavigationBar: ConvexAppBar(
        onTap: (index) {
          setState(() {
            initIndex = index;
          });
        },
        initialActiveIndex: initIndex,
        style: TabStyle.fixedCircle,
        backgroundColor: Colors.white,
        color: Colors.grey,
        activeColor: Colors.red,
        // showUnselectedLabels: false,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.qr_code, title: 'QR Code'),
          TabItem(icon: Icons.account_circle_rounded, title: 'Profil'),
        ],
      ),
    );
  }
}