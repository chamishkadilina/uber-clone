import 'package:flutter/material.dart';

class PharmacyPage extends StatelessWidget {
  const PharmacyPage({super.key});

  static String id = 'pharmacy_page';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Pharmacy Page',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
