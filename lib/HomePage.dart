import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/drawer_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1C2C),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Kas Warga",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: DrawerMenu(
        onItemTap: (item) {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Selamat Datang!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Color(0xFF0B1C2C),
              ),
            ),
            const SizedBox(height: 20),
            LayoutBuilder(
              builder: (context, constraints) {
                double cardWidth = (constraints.maxWidth / 3) - 16;

                // Kalau layar kecil, atur jadi 1 atau 2 kolom
                if (constraints.maxWidth < 600) {
                  cardWidth = (constraints.maxWidth / 2) - 12;
                }
                if (constraints.maxWidth < 400) {
                  cardWidth = constraints.maxWidth - 16;
                }

                return Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    SizedBox(
                      width: cardWidth,
                      child: InfoCard(
                        title: "Total Warga",
                        value: "2",
                        backgroundColor: Colors.lightBlue.shade50,
                      ),
                    ),
                    SizedBox(
                      width: cardWidth,
                      child: const InfoCard(
                        title: "Nominal",
                        value: "Rp 2.500.000",
                      ),
                    ),
                    SizedBox(
                      width: cardWidth,
                      child: const InfoCard(
                        title: "Transaksi Baru",
                        value: "15",
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
