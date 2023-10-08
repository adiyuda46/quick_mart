import 'package:flutter/material.dart';

class Benner extends StatelessWidget {
  const Benner({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
  elevation: 4,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: const SizedBox(
    height: 150,  // Tinggi Card
    width: 200,   // Lebar Card
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Judul Card',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Deskripsi card ini.',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    ),
  ),
);
  }
}
