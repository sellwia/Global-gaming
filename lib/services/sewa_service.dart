import 'package:cloud_firestore/cloud_firestore.dart';

class SewaService {
  static Future<void> simpanSewa({
    required String namaUser,
    required String ps,
    required int jam,
    required int hargaJam,
    required int total,
  }) async {
    await FirebaseFirestore.instance.collection('sewa').add({
      'namaUser': namaUser,
      'ps': ps,
      'jam': jam,
      'hargaJam': hargaJam,
      'total': total,
      'createdAt': Timestamp.now(),
    });
  }
}