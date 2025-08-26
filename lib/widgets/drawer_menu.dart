
import 'package:flutter/material.dart';
import 'package:pertemuanpertama/profilePage.dart';


class DrawerMenu extends StatelessWidget {
  final Function(String) onItemTap;

  const DrawerMenu({super.key, required this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF0B1C2C),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '💼 Kas Warga',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Divider(color: Colors.white38),
            ),
            _buildDrawerItem('🏠', 'Beranda', () => onItemTap('beranda')),
            _buildDrawerItem('👤', 'Profil', () {
              Navigator.pop(context); 
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            }),
            _buildDrawerItem(
                '📁', 'Kategori Iuran', () => onItemTap('kategori')),
            _buildDrawerItem('💰', 'Iuran Warga', () => onItemTap('iuran')),
            _buildDrawerItem('⚙️', 'Pengaturan', () => onItemTap('pengaturan')),
            _buildDrawerItem('➕', 'Tambah Warga', () => onItemTap('tambah')),
            _buildDrawerItem('📒', 'Keluar', () => onItemTap('keluar')),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(String icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Text(icon, style: const TextStyle(fontSize: 20)),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
