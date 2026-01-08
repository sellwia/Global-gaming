import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Anggota Tim'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade900,
              Colors.deepPurple.shade600,
              Colors.purple.shade500,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 2, // 2 kolom
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 0.78,
            children: const [
              TeamBox(
                nama: 'Andi Pratama',
                nim: '22123456',
                jabatan: 'Admin',
                image: '../assets/images/sp1.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeamBox extends StatelessWidget {
  final String nama;
  final String nim;
  final String jabatan;
  final String image;

  const TeamBox({
    super.key,
    required this.nama,
    required this.nim,
    required this.jabatan,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 38),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 20),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
    );
  }
}
