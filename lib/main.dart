import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_app/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student App',
      theme: ThemeData(primarySwatch: Colors.red, fontFamily: 'Inter'),
      home: const LoginPage(),
    );
  }
}
