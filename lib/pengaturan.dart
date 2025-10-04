import 'package:flutter/material.dart';

class PengaturanPage extends StatelessWidget {
  const PengaturanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pengaturan")),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.palette),
            title: Text("Tema Aplikasi"),
            subtitle: Text("Pilih tema terang atau gelap"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifikasi"),
            subtitle: Text("Atur preferensi notifikasi"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Privasi"),
            subtitle: Text("Pengaturan keamanan dan privasi"),
          ),
        ],
      ),
    );
  }
}

