import 'package:flutter/material.dart';
import '../widgets/drawer_menu.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        backgroundColor: const Color(0xFF0B1C2C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/150?img=3'), // contoh gambar avatar
            ),
            const SizedBox(height: 20),
            const Text(
              'Khoirin Nisa Amalia',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Email: khoirin.nisa@example.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            const Text(
              'No. Telepon: +62 812-3456-7890',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.location_on, color: Colors.grey),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Alamat: Jalan Merdeka No. 123, Tasikmalaya',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Bisa diisi dengan fungsi logout atau edit profil
              },
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profil'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0B1C2C),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
