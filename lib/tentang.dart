import 'package:flutter/material.dart';

class TentangPage extends StatelessWidget {
  const TentangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tentang Aplikasi")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Tentang Aplikasi",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              "Aplikasi ini dibuat sebagai demo pemrograman perangkat bergerak "
              "dengan Flutter. Fitur utama meliputi Form Mahasiswa, Daftar Mahasiswa, "
              "dan menu navigasi dengan Drawer.",
            ),
            SizedBox(height: 24),
            Text("Versi: 1.0.0"),
            Text("Pengembang: Fadnn"),
          ],
        ),
      ),
    );
  }
}
