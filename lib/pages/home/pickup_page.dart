import 'package:flutter/material.dart';

class PickupPage extends StatelessWidget {
  const PickupPage({super.key});

  static String id = 'pickup_page';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Set pickup time',
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
