import 'package:flutter/material.dart';

class ReservePage extends StatelessWidget {
  const ReservePage({super.key});

  static String id = 'reserve_page';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Reserve Page',
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
