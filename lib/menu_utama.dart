import 'package:flutter/material.dart';
import 'package:project_global_gaming/services/sewa_service.dart';

class MenuSewaPS extends StatefulWidget {
  const MenuSewaPS({super.key});

  @override
  State<MenuSewaPS> createState() => _MenuSewaPSState();
}

class _MenuSewaPSState extends State<MenuSewaPS> {
  String namaUser = "Krisno Gatsusan";
  String psDipilih = "PS 2";
  int jam = 1;

  final Map<String, int> hargaPS = {
    "PS 2": 3000,
    "PS 3": 5000,
    "PS 4": 10000,
    "PS 5": 15000,
  };

  @override
  void initState() {
    super.initState();
  }

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
                  "SELAMAT DATANG ",
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
                  side: const BorderSide(color: Colors.blue, width: 1.5),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Global Gamming PlayStation",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 20),

                      /// PILIH PS
                      const Text("PILIH PS"),
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
                      const Text("DURASI (JAM)"),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove_circle_outline),
                            onPressed: jam > 1
                                ? () => setState(() => jam--)
                                : null,
                          ),
                          Text(
                            "$jam JAM",
                            style: const TextStyle(fontSize: 16),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add_circle_outline),
                            onPressed: () => setState(() => jam++),
                          ),
                        ],
                      ),

                      const Divider(),

                      /// HARGA
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("HARGA / JAM"),
                          Text("Rp $hargaPerJam"),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "TOTAL BAYAR",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Rp $total",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),

                      const Spacer(),

                      /// TOMBOL
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),

                          onPressed: () async {
                            final messenger = ScaffoldMessenger.of(context);

                            await SewaService.simpanSewa(
                              namaUser: namaUser,
                              ps: psDipilih,
                              jam: jam,
                              hargaJam: hargaPS[psDipilih]!,
                              total: total,
                            );

                            messenger.showSnackBar(
                              const SnackBar(
                                content: Text("Sewa berhasil disimpan"),
                                backgroundColor: Colors.green,
                              ),
                            );
                          },

                          child: const Text("SEWA SEKARANG"),
                        ),
                      ),
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
