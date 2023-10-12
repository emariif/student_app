import 'package:flutter/material.dart';

class Menu {
  Icon icon;
  String label;

  Menu({
    required this.icon,
    required this.label,
  });
}

var menuList = [
  Menu(
      icon: Icon(Icons.payments_rounded, color: Colors.green.shade300),
      label: 'Keuangan'
  ),
  Menu(
      icon: const Icon(Icons.watch_later, color: Colors.red),
      label: 'Presensi'
  ),
  Menu(
      icon: Icon(Icons.menu_book_rounded, color: Colors.blue.shade700),
      label: 'KRS'
  ),
  Menu(
      icon: const Icon(Icons.library_books_rounded, color: Colors.lightBlue),
      label: 'KHS'
  ),
  Menu(
      icon: Icon(Icons.calendar_month_rounded, color: Colors.orange.shade600),
      label: 'Jadwal'
  ),
  Menu(
      icon: Icon(Icons.file_upload, color: Colors.green.shade800),
      label: 'Yudisium'
  ),
  Menu(
      icon: Icon(Icons.playlist_add_check_circle_sharp, color: Colors.purple.shade600),
      label: 'Wisuda'
  ),
  Menu(
      icon: Icon(Icons.dashboard, color: Colors.grey.shade600),
      label: 'Lainnya'
  ),
];
