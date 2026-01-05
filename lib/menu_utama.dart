import 'package:flutter/material.dart';

class MenuSewaPS extends StatefulWidget {
  const MenuSewaPS({super.key});

  @override
  State<MenuSewaPS> createState() => _MenuSewaPSState();
}

class _MenuSewaPSState extends State<MenuSewaPS> {
  String namaUser = "Krisno";
  String psDipilih = "PS 3";
  int jam = 1;

  final Map<String, int> hargaPS = {"PS 3": 5000, "PS 4": 10000, "PS 5": 15000};

  @override
  Widget build(BuildContext context) {
    int hargaPerJam = hargaPS[psDipilih]!;
    int total = hargaPerJam * jam;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          /// HEADER
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
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

          /// CARD SEWA
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Sewa PlayStation",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 20),

                      /// PILIH PS
                      const Text("Pilih PS"),
                      DropdownButtonFormField<String>(
                        initialValue: psDipilih,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        items: hargaPS.keys.map((ps) {
                          return DropdownMenuItem(value: ps, child: Text(ps));
                        }).toList(),
                        onChanged: (value) {
                          setState(() => psDipilih = value!);
                        },
                      ),

                      const SizedBox(height: 20),

                      /// PILIH JAM
                      const Text("Durasi (Jam)"),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove_circle_outline),
                            onPressed: jam > 1
                                ? () => setState(() => jam--)
                                : null,
                          ),
                          Text(
                            "$jam Jam",
                            style: const TextStyle(fontSize: 16),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add_circle_outline),
                            onPressed: () => setState(() => jam++),
                          ),
                        ],
                      ),

                      const Divider(),

                      const SizedBox(height: 5),

                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
