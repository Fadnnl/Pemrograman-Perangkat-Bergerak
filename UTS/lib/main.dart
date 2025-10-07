import 'package:flutter/material.dart';
import 'form_mahasiswa.dart';
import 'tentang.dart';
import 'pengaturan.dart';
import 'form_dosen.dart';
import 'form_matkul.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu Drawer',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      home: const MainWithDrawer(),
      routes: {
        '/form': (_) => const FormMahasiswaPage(),
        '/list': (_) => const DaftarMahasiswaPage(),
        '/tentang': (_) => const TentangPage(),
        '/pengaturan': (_) => const PengaturanPage(),
        '/dosen': (_) => const FormDosenPage(),
        '/matkul': (_) => const FormMatkulPage(),
      },
    );
  }
}

class MainWithDrawer extends StatelessWidget {
  const MainWithDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Utama (Drawer)')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Demo Form Mahasiswa'),
              accountEmail: const Text('v1.0.0'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: const Icon(Icons.school),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text('Form Mahasiswa'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/form');
              },
            ),
            ListTile(
              leading: const Icon(Icons.list_alt),
              title: const Text('Daftar Mahasiswa'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/list');
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Tentang Aplikasi'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/tentang');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Pengaturan'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/pengaturan');
              },
            ),
          ],
        ),
      ),
      body: const HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Beranda")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, '/dosen'),
                child: Card(
                  margin: const EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.person, size: 48, color: Colors.indigo),
                        SizedBox(height: 12),
                        Text('Menu Dosen',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, '/matkul'),
                child: Card(
                  margin: const EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.book, size: 48, color: Colors.indigo),
                        SizedBox(height: 12),
                        Text('Menu Mata Kuliah',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class DaftarMahasiswaPage extends StatelessWidget {
  const DaftarMahasiswaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Mahasiswa")),
      body: const Center(child: Text("Halaman daftar mahasiswa masih kosong.")),
    );
  }
}