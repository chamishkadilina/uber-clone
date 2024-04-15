import 'package:flutter/material.dart';

class PetPage extends StatelessWidget {
  const PetPage({super.key});

  static String id = 'pet_page';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Pet Page',
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
