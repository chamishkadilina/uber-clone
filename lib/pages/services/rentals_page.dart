import 'package:flutter/material.dart';

class RentalsPage extends StatelessWidget {
  const RentalsPage({super.key});

  static String id = 'rentals_page';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Rentals Page',
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
