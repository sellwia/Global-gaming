import 'package:flutter/material.dart';

class MenuSewaPS extends StatefulWidget {
  const MenuSewaPS({super.key});

  @override
  State<MenuSewaPS> createState() => _MenuSewaPSState();
}

class _MenuSewaPSState extends State<MenuSewaPS> {
  String namaUser = "Krisno Gatsusan";
  String psDipilih = "PS 3";
  int jam = 1;

  final Map<String, int> hargaPS = {"PS 3": 5000, "PS 4": 10000, "PS 5": 15000};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          /// HEADER
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.blueAccent],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Selamat Datang 👋",
                  style: TextStyle(color: Colors.white70),
                ),
                Text(
                  namaUser,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
