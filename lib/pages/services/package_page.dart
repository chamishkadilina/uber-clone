import 'package:flutter/material.dart';

class PackagePage extends StatelessWidget {
  const PackagePage({super.key});

  static String id = 'package_page';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Package Page',
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
